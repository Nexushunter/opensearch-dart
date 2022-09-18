import 'dart:async';

import 'package:opensearch_dart/src/api/common/responses.dart';

import '../common/api_client.dart';

class AliasClient extends ApiClient {
  AliasClient({required super.client, super.signer});

  FutureOr<AcknowledgeResponse> add({
    List<String> indices = const [],
    List<String> aliases = const [],
    String? filter,
    bool isHidden = false,
    bool mustExist = true,
    String? routing,
    String? indexRouting,
    String? searchRouting,
    Duration masterTimeout = const Duration(seconds: 30),
    Duration timeout = const Duration(seconds: 30),
  }) {
    return AcknowledgeResponse();
  }

  /// Removes an alias from the specified index.
  FutureOr<AcknowledgeResponse> remove({
    List<String> indices = const [],
    List<String> aliases = const [],
    String? filter,
    bool isHidden = false,
    bool mustExist = true,
    String? routing,
    String? indexRouting,
    String? searchRouting,
    Duration masterTimeout = const Duration(seconds: 30),
    Duration timeout = const Duration(seconds: 30),
  }) {
    return AcknowledgeResponse();
  }

  /// Deletes an index.
  FutureOr<AcknowledgeResponse> removeIndex(String index) {
    return AcknowledgeResponse();
  }
}
