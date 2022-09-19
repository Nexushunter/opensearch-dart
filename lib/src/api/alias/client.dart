import 'dart:async';

import 'package:opensearch_dart/src/api/common/responses.dart';

import '../common/api_client.dart';

/// An alias is a virtual pointer that you can use to reference one or more indices.
///
/// Creating and updating aliases are atomic operations, so you can reindex your
/// data and point an alias at it without any downtime.
class AliasClient extends ApiClient {
  AliasClient({required super.client, super.signer});

  FutureOr<AcknowledgeResponse> _makeRequest({
    required Map<String, dynamic> actions,
    Duration masterTimeout = const Duration(seconds: 30),
    Duration timeout = const Duration(seconds: 30),
  }) async {
    return await client
        .post(
          '_aliases',
          // TODO: Many of these settings aren't valid though the documentation
          //  states otherwise
          // https://opensearch.org/docs/latest/opensearch/rest-api/alias/#request-body
          data: <String, dynamic>{
            'actions': [
              if (actions.containsKey('add')) {'add': actions['add']},
              if (actions.containsKey('remove')) {'remove': actions['remove']},
              // TODO: Support for removeIndex required.
            ],
          },
          queryParameters: <String, String>{
            'master_timeout': '${masterTimeout.inSeconds}s',
            'timeout': '${timeout.inSeconds}s',
          },
        )
        .onError(onErrorResponse(endpoint: 'alias.aliases'))
        .then(
          (value) => AcknowledgeResponse(acknowledged: value.statusCode == 200),
        );
  }

  FutureOr<AcknowledgeResponse> add({
    required String alias,
    required String index,
    String? filter,
    bool? isHidden,
    bool? isWriteIndex,
    String? routing,
    String? indexRouting,
    String? searchRouting,
    Duration masterTimeout = const Duration(seconds: 30),
    Duration timeout = const Duration(seconds: 30),
  }) async {
    var addMap = <String, dynamic>{
      'index': index,
      'alias': alias,
      if (filter != null) 'filter': filter,
      if (isHidden != null) 'is_hidden': isHidden,
      if (isWriteIndex != null) 'is_write_index': isWriteIndex,
      if (routing != null) 'routing': routing,
      if (indexRouting != null) 'index_routing': indexRouting,
      if (searchRouting != null) 'search_routing': searchRouting,
    };

    return await _makeRequest(
      actions: <String, Map<String, dynamic>>{
        'add': addMap,
      },
      masterTimeout: masterTimeout,
      timeout: timeout,
    );
  }

  /// Removes an alias from the specified index.
  FutureOr<AcknowledgeResponse> remove({
    required String index,
    required String alias,
    bool? mustExist,
    Duration masterTimeout = const Duration(seconds: 30),
    Duration timeout = const Duration(seconds: 30),
  }) async {
    var removeMap = <String, dynamic>{
      'index': index,
      'alias': alias,
      if (mustExist != null) 'must_exist': mustExist,
    };

    return await _makeRequest(
      actions: <String, Map<String, dynamic>>{
        'remove': removeMap,
      },
      masterTimeout: masterTimeout,
      timeout: timeout,
    );
  }

  /// Deletes an index.
  FutureOr<AcknowledgeResponse> removeIndex(String index) async {
    return await _makeRequest(
      actions: <String, Map<String, dynamic>>{
        'remove_index': {
          'index': index,
        },
      },
    );
  }
}
