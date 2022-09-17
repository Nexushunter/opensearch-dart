import 'dart:async';
import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:logging/logging.dart';
import 'package:opensearch_dart/src/api/index/index_settings.dart';

import '../common/responses.dart';
import 'enums.dart';
import 'exceptions.dart';
import 'mapping.dart';

class IndexClient {
  // TODO: Create OpenSearchClient
  late Dio client;
  static final _log = Logger('IndexClient');
  IndexClient({required this.client});

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
    if (name.startsWith(RegExp('^[-_]'))) {
      throw IndexException.invalidIndexPrefix();
    } else if (!name.contains(RegExp(r'^[^A-Z]*$'))) {
      throw IndexException.indexNameContainsCapitals();
    } else if (name.contains(RegExp(r'[\s\\/|?,+#<>"*]'))) {
      throw IndexException.invalidNameFormat();
    } else if (exists(index: name).acknowledged) {
      throw IndexException.conflict();
    }

    if (waitForActiveShards < 1) {
      waitForActiveShards = 1;
    }

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
          data: encoded,
          queryParameters: <String, dynamic>{
            'wait_for_active_shards': '$waitForActiveShards',
          },
          // options: Options(
          //   sendTimeout: masterNodeTimeout.inSeconds,
          //   receiveTimeout: timeout.inSeconds,
          // ),
        )
        .timeout(timeout)
        .onError(onErrorResponse(endpoint: 'create'))
        .then(
          (resp) {
            if (resp.statusCode! >= 200 && resp.statusCode! < 300) {
              return AcknowledgeResponse();
            }
            return AcknowledgeResponse(acknowledged: false);
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
  AcknowledgeResponse exists({
    required String index,
    bool allowNoIndices = true,
    List<ExpandWildCardOption> expandWildCardOptions = const [
      ExpandWildCardOption.open
    ],
    bool flatSettings = false,
    bool includeDefaults = false,
    bool ignoreUnavailable = false,
    bool local = false,
  }) {
    return AcknowledgeResponse(acknowledged: false);
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
    return await client
        .delete(index)
        .timeout(timeout)
        .onError(onErrorResponse(endpoint: 'delete'))
        .then(
          (value) => AcknowledgeResponse(acknowledged: value.statusCode == 200),
        );
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
