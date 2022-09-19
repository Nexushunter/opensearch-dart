import 'dart:async';

import 'package:opensearch_dart/src/api/common/responses.dart';

import '../common/api_client.dart';

class AliasClient extends ApiClient {
  AliasClient({required super.client, super.signer});

  FutureOr<AcknowledgeResponse> _makeRequest({
    required Map<String, dynamic> actions,
    String? filter,
    bool isHidden = false,
    bool mustExist = true,
    String? routing,
    String? indexRouting,
    String? searchRouting,
    Duration masterTimeout = const Duration(seconds: 30),
    Duration timeout = const Duration(seconds: 30),
  }) async {
    return await client
        .post('_aliases', data: <String, List<Map<String, dynamic>>>{
          'actions': [
            if (actions.containsKey('add')) {'add': actions['add']},
            if (actions.containsKey('remove')) {'remove': actions['remove']},
            // for (var action in actions.entries) {action.key: action.value},
          ],
        })
        .onError(onErrorResponse(endpoint: 'alias.aliases'))
        .then(
          (value) => AcknowledgeResponse(acknowledged: value.statusCode == 200),
        );
  }

  FutureOr<AcknowledgeResponse> add({
    required String alias,
    required String index,
    String? filter,
    bool isHidden = false,
    bool mustExist = true,
    String? routing,
    String? indexRouting,
    String? searchRouting,
    Duration masterTimeout = const Duration(seconds: 30),
    Duration timeout = const Duration(seconds: 30),
  }) async {
    var addMap = <String, String>{
      'index': index,
      'alias': alias,
    };

    return await _makeRequest(
      actions: <String, Map<String, String>>{
        'add': addMap,
      },
      filter: filter,
      isHidden: isHidden,
      mustExist: mustExist,
      routing: routing,
      searchRouting: searchRouting,
      indexRouting: indexRouting,
      masterTimeout: masterTimeout,
      timeout: timeout,
    );
  }

  /// Removes an alias from the specified index.
  FutureOr<AcknowledgeResponse> remove({
    required String index,
    required String alias,
    String? filter,
    bool isHidden = false,
    bool mustExist = true,
    String? routing,
    String? indexRouting,
    String? searchRouting,
    Duration masterTimeout = const Duration(seconds: 30),
    Duration timeout = const Duration(seconds: 30),
  }) async {
    var removeMap = <String, String>{
      'index': index,
      'alias': alias,
    };

    return await _makeRequest(
      actions: <String, Map<String, String>>{
        'remove': removeMap,
      },
      filter: filter,
      isHidden: isHidden,
      mustExist: mustExist,
      routing: routing,
      searchRouting: searchRouting,
      indexRouting: indexRouting,
      masterTimeout: masterTimeout,
      timeout: timeout,
    );
  }

  /// Deletes an index.
  FutureOr<AcknowledgeResponse> removeIndex(String index) async {
    return await _makeRequest(
      actions: <String, String>{
        'remove': index,
      },
      // filter: filter,
      // isHidden: isHidden,
      // mustExist: mustExist,
      // routing: routing,
      // searchRouting: searchRouting,
      // indexRouting: indexRouting,
      // masterTimeout: masterTimeout,
      // timeout: timeout,
    );
  }
}
