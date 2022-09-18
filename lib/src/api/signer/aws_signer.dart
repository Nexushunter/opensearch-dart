import 'dart:async';

import 'package:aws_common/aws_common.dart';
import 'package:aws_signature_v4/aws_signature_v4.dart';
import 'package:dio/dio.dart';
import 'package:logging/logging.dart';

import '../common/request_signer.dart';

/// Creates a [RequestSigner] designed to target AWS OpenSearch resources.
class AWSSigner implements RequestSigner {
  static final _log = Logger('AWSSigner');
  final AWSSigV4Signer _signer;
  final String region;
  final AWSCredentialsProvider credentialsProvider;
  AWSSigner({
    this.region = 'us-east-1',
    AWSSigV4Signer? signer,
    this.credentialsProvider = const AWSCredentialsProvider.environment(),
  }) : _signer = signer ??
            AWSSigV4Signer(
              credentialsProvider: credentialsProvider,
            );

  AWSCredentialScope get _credentialsScope =>
      AWSCredentialScope(region: region, service: AWSService.openSearch);

  @override
  FutureOr<RequestOptions> sign(RequestOptions options, Dio client) async {
    // Copy over the encoded headers
    var headers = <String, String>{};
    options.headers.forEach((key, value) {
      headers.putIfAbsent(key, () => '$value');
    });

    var request = AWSHttpRequest(
      method: AWSHttpMethodHelper.fromString(options.method),
      // Copy URI and add port?
      uri: Uri.parse('${client.options.baseUrl}/${options.path}'),
      headers: headers,
      body: options.data.toString().codeUnits,
    );

    var signed = await _signer
        .sign(
      request,
      credentialScope: _credentialsScope,
      serviceConfiguration: BaseServiceConfiguration(omitSessionToken: true),
    )
        .catchError((err, stack) {
      _log.shout('Failed to sign: $err');
      return _signer.sign(request, credentialScope: _credentialsScope);
    });
    _log.finer('Signed', signed.headers);

    var body = await signed.body.toList();
    var signedOptions = RequestOptions(
      path: signed.path,
      method: signed.method.value,
      baseUrl: '${client.options.baseUrl}/',
      headers: signed.headers,
      queryParameters: signed.queryParameters,
      data: body,
    );

    _log.finer(signedOptions.uri);

    return signedOptions;
  }
}
