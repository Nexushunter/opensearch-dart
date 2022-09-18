import 'package:dio/dio.dart';
import 'package:opensearch_dart/src/api/common/request_signer.dart';
import 'package:opensearch_dart/src/api/signer/noop_signer.dart';

/// Provide a basic client abstraction.
abstract class ApiClient {
  final Dio client;
  final RequestSigner signer;
  const ApiClient({
    required this.client,
    this.signer = const NoOpSigner(),
  });
}
