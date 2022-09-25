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
          data: <String, dynamic>{
            'actions': [
              if (actions.containsKey('add')) {'add': actions['add']},
              if (actions.containsKey('remove')) {'remove': actions['remove']},
              if (actions.containsKey('remove_index'))
                {'remove_index': actions['remove_index']}
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

  // TODO: Add AddRemove call.

  /// Adds an alias to the specified index.
  ///
  /// [index] - The name you want to associate with the [alias]. Supports
  ///   wildcard expressions. Required if you don’t supply an [indices].
  /// [indices] - Array of index names you want to associate with the alias.
  /// [alias] - The name of the alias. Required if you don’t supply an [aliases].
  /// [aliases] - Array of alias names to use.
  /// [filter] - A filter to use with the alias, so the alias points to a
  ///   filtered part of the index.
  /// [isHidden] - Specifies whether the alias should be hidden from results that
  ///   include wildcard expressions.
  /// [isWriteIndex] - Specifies whether the index should be a write index. An
  ///   alias can only have one write index at a time. If a write request is
  ///   submitted to a alias that links to multiple indexes, OpenSearch executes
  ///   the request only on the write index.
  /// [routing] - Used to assign a custom value to a shard for specific operations.
  /// [indexRouting] - Assigns a custom value to a shard only for index operations.
  /// [searchRouting] - Assigns a custom value to a shard only for search operations.
  /// [masterTimeout] - The amount of time to wait for a response from the master node.
  /// [timeout] - The amount of time to wait for a response from the cluster.
  FutureOr<AcknowledgeResponse> add({
    String? alias,
    String? index,
    List<String>? aliases,
    List<String>? indices,
    String? filter,
    bool? isHidden,
    bool? isWriteIndex,
    String? routing,
    String? indexRouting,
    String? searchRouting,
    Duration masterTimeout = const Duration(seconds: 30),
    Duration timeout = const Duration(seconds: 30),
  }) async {
    if (aliases != null) {
      assert(alias == null);
    }

    if (indices != null) {
      assert(index == null);
    }

    var addMap = <String, dynamic>{
      if (index != null) 'index': index,
      if (indices != null) 'indices': indices,
      if (alias != null) 'alias': alias,
      if (aliases != null) 'aliases': aliases,
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
  ///
  /// [index] - The name you want to associate with the [alias]. Supports
  ///   wildcard expressions.
  /// [alias] - The name of the alias. Required if you don’t supply an [aliases].
  /// [mustExist] - Specifies whether the alias to remove must exist.
  /// [masterTimeout] - The amount of time to wait for a response from the master node.
  /// [timeout] - The amount of time to wait for a response from the cluster.
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
  ///
  /// [index] - The name of the index to delete.
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
