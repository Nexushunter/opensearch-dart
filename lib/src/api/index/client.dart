import 'dart:async';
import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:logging/logging.dart';
import 'package:opensearch_dart/src/api/index/index_settings.dart';
import 'package:opensearch_dart/src/api/index/responses.dart';

import '../common/responses.dart';
import 'enums.dart';
import 'exceptions.dart';
import 'mapping.dart';

class IndexClient {
  // TODO: Create OpenSearchClient
  late Dio client;
  static final _log = Logger('IndexClient');
  IndexClient({required this.client});

  /// Verify the given [name] follow expected naming conventions.
  void verifyNaming(String name) {
    if (name.startsWith(RegExp('^[-_]'))) {
      throw IndexException.invalidIndexPrefix();
    } else if (!name.contains(RegExp(r'^[^A-Z]*$'))) {
      throw IndexException.indexNameContainsCapitals();
    } else if (name.contains(RegExp(r'[\s\\/|?,+#<>"*]'))) {
      throw IndexException.invalidNameFormat();
    }
  }

  /// Creates an [Index] in the cluster.
  ///
  /// [name] The name of the index to be created.
  /// [waitForActiveShards]
  /// [alias]
  FutureOr<AcknowledgeResponse> createIndex({
    required String name,
    int waitForActiveShards = 1,
    Duration masterNodeTimeout = const Duration(seconds: 30),
    Duration timeout = const Duration(seconds: 30),
    String? alias,
    StaticIndexSettings staticSettings = const StaticIndexSettings(),
    DynamicIndexSettings dynamicSettings = const DynamicIndexSettings(),
    IndexMapping mappings = const IndexMapping(mappings: <String, FieldType>{}),
  }) async {
    verifyNaming(name);
    if ((await exists(index: name)).acknowledged) {
      throw IndexException.conflict();
    }

    if (waitForActiveShards < 1) {
      waitForActiveShards = 1;
    }

    // TODO: This mapping is causing things to break. The settings more than
    //  likely need to be expanded instead of being flattened.
    var encoded = jsonEncode(<String, dynamic>{
      'mappings': {
        "properties": <String, dynamic>{}..addAll(mappings.toJson()),
      },
      "settings": <String, dynamic>{}
        ..addAll(staticSettings.toJson())
        ..addAll(dynamicSettings.toJson()),
      'aliases': {
        if (alias != null) alias: {},
      },
    });

    return await client
        .put(
          name,
          // data: encoded,
          queryParameters: <String, dynamic>{
            'wait_for_active_shards': '$waitForActiveShards',
          },
        )
        .timeout(timeout)
        .onError(onErrorResponse(endpoint: 'create'))
        .then(
          (resp) {
            return AcknowledgeResponse(
              acknowledged: resp.statusCode! >= 200 && resp.statusCode! < 300,
            );
          },
        );
  }

  /// Verify whether or not an index already exists.
  ///
  /// [allowNoIndices] Whether to ignore wildcards that don’t match any indices.
  /// [expandWildCardOptions] Expands wildcard expressions to different indices.
  /// [flatSettings] Whether to return settings in the flat form, which can
  ///   improve readability, especially for heavily nested settings. For example,
  ///   the flat form of “index”: { “creation_date”: “123456789” } is
  ///   “index.creation_date”: “123456789”
  /// [includeDefaults] Whether to include default settings as part of the response.
  ///   This parameter is useful for identifying the names and current values of
  ///   settings you want to update.
  /// [ignoreUnavailable] If true, OpenSearch does not search for missing or
  ///   closed indices.
  /// [local] Whether to return information from only the local node instead of
  ///   from the master node.
  FutureOr<AcknowledgeResponse> exists({
    required String index,
    bool allowNoIndices = true,
    List<ExpandWildCardOption> expandWildCardOptions = const [
      ExpandWildCardOption.open
    ],
    bool flatSettings = false,
    bool includeDefaults = false,
    bool ignoreUnavailable = false,
    bool local = false,
  }) async {
    // TODO: Handle query params
    return await client
        .head(index)
        .onError(onErrorResponse(endpoint: 'exists'))
        .then((value) {
      return AcknowledgeResponse(
        acknowledged: value.statusCode == 200,
      );
    });
  }

  /// Delete an [index] from the cluster.
  ///
  /// [allowNoIndices] Whether to ignore wildcards that don’t match any indices.
  /// [expandWildCardOptions] Expands wildcard expressions to different indices.
  /// [ignoreUnavailable] If true, OpenSearch does not search for missing or
  ///   closed indices.
  /// [masterTimeout] How long to wait for a connection to the master node.
  /// [timeout] How long to wait for the response to return.
  FutureOr<AcknowledgeResponse> delete({
    required String index,
    bool allowNoIndices = true,
    List<ExpandWildCardOption> expandWildCardOptions = const [
      ExpandWildCardOption.open
    ],
    bool ignoreUnavailable = false,
    Duration masterTimeout = const Duration(seconds: 30),
    Duration timeout = const Duration(seconds: 30),
  }) async {
    // TODO: Handle query Params
    return await client
        .delete(index)
        .timeout(timeout)
        .onError(onErrorResponse(endpoint: 'delete'))
        .then(
          (value) => AcknowledgeResponse(acknowledged: value.statusCode == 200),
        );
  }

  /// Fetches information about an index.
  FutureOr<GetIndexResponse> getIndex({
    required String index,
    bool allowNoIndices = true,
    List<ExpandWildCardOption> expandWildCardOption = const [
      ExpandWildCardOption.open
    ],
    bool flatSettings = false,
    bool includeDefaults = false,
    bool ignoreUnavailable = false,
    bool local = false,
    Duration masterTimeout = const Duration(seconds: 30),
  }) async {
    if (!(await exists(index: index)).acknowledged) {
      throw IndexException.invalidIndex();
    }

    return await client
        .get(index)
        .timeout(masterTimeout)
        .onError(onErrorResponse(endpoint: 'getIndex'))
        .then((resp) {
      var decoded = jsonDecode(resp.data) as Map<String, dynamic>;

      decoded = decoded[index] as Map<String, dynamic>;

      var mappings = <String, FieldType>{};
      // TODO: Loop through and pull out the mapping information.

      return GetIndexResponse(
        indexName: index,
        aliasMapping: decoded['aliases'],
        settings: decoded['settings'],
        mappings: mappings,
      );
    });
  }

  FutureOr<CloseIndexResponse> close({
    List<String> indexNames = const ['*'],
    bool allowNoIndices = true,
    int waitForActiveShards = 1,
    bool ignoreUnavailable = false,
    Duration masterTimeout = const Duration(seconds: 30),
    Duration timeout = const Duration(seconds: 30),
  }) async {
    // TODO: Handle Query Params

    return await client
        .post('${indexNames.reduce((a, b) => '$a,$b')}/_close')
        .onError(onErrorResponse(endpoint: 'close'))
        .then((value) {
      var decoded = jsonDecode(value.data);
      var indexMapping = decoded['indices'] as Map<String, dynamic>;
      var closedIndices = <String>[];
      indexMapping.forEach((key, value) {
        value as Map<String, dynamic>;
        if (value['closed']) {
          closedIndices.add(key);
        }
      });

      return CloseIndexResponse(
        shardsAcknowledged: ShardsAcknowledgedResponse(
          shardsAcknowledged: decoded['shards_acknowledged'],
          acknowledged: AcknowledgeResponse(
            acknowledged: decoded['acknowledged'],
          ),
        ),
        indicesClosed: closedIndices,
      );
    });
  }

  FutureOr<ShardsAcknowledgedResponse> open({
    List<String> indexNames = const ['*'],
    bool allowNoIndices = true,
    int waitForActiveShards = 1,
    bool ignoreUnavailable = false,
    Duration masterTimeout = const Duration(seconds: 30),
    Duration timeout = const Duration(seconds: 30),
  }) async {
    // TODO: Handle query Params

    return await client
        .post('${indexNames.reduce((a, b) => '$a,$b')}/_open')
        .onError(onErrorResponse(endpoint: 'open'))
        .then((value) {
      var decoded = jsonDecode(value.data);
      var indexMapping = decoded['indices'] as Map<String, dynamic>;
      var closedIndices = <String>[];
      indexMapping.forEach((key, value) {
        value as Map<String, dynamic>;
        if (value['closed']) {
          closedIndices.add(key);
        }
      });

      return ShardsAcknowledgedResponse(
        shardsAcknowledged: decoded['shards_acknowledged'],
        acknowledged: AcknowledgeResponse(
          acknowledged: decoded['acknowledged'],
        ),
      );
    });
  }

  FutureOr<AcknowledgeResponse> shrinkIndex({
    required String index,
    required String target,
    int waitForActiveShards = 1,
    Duration masterTimeout = const Duration(seconds: 30),
    Duration timeout = const Duration(seconds: 30),
    StaticIndexSettings staticIndexSettings = const StaticIndexSettings(),
    DynamicIndexSettings dynamicIndexSettings = const DynamicIndexSettings(),
    int maxPrimaryShardSizeBytes = 10240,
  }) async {
    verifyNaming(index);
    verifyNaming(target);

    // TODO: Parse body for request
    // TODO: handle query params

    return await client
        .post('$index/_shrink/$target')
        .timeout(masterTimeout)
        .onError(onErrorResponse(endpoint: 'shrink'))
        .then((value) => AcknowledgeResponse());
  }

  FutureOr<Response> Function(DioError, StackTrace) onErrorResponse({
    required String endpoint,
  }) {
    return (error, stack) {
      _log.finest('Failed to make index request: ${error.message}\n$stack');

      return Response(
        requestOptions: error.requestOptions,
        statusCode: error.response?.statusCode ?? 500,
        statusMessage: error.response?.statusMessage ??
            '${error.message}\n $stack', //'Unable make index request',
      );
    };
  }
}
