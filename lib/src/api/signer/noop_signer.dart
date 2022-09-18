import 'dart:async';

import 'package:dio/dio.dart';

import '../common/request_signer.dart';

/// Creates a Noop [RequestSigner] that acts as a pass through.
class NoOpSigner implements RequestSigner {
  const NoOpSigner();
  @override
  FutureOr<RequestOptions> sign(RequestOptions options, Dio client) async =>
      options;
}
