import 'dart:async';

import 'package:dio/dio.dart';
import 'package:logging/logging.dart';

import '../common/api_client.dart';
import '../common/responses.dart';
import 'enums.dart';
import 'exceptions.dart';
import 'index_settings.dart';
import 'mapping.dart';
import 'responses.dart';

/// A client for operating on Indices found within the cluster.
class IndexClient extends ApiClient {
  static final _log = Logger('IndexClient');
  IndexClient({required super.client, super.signer});

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
  /// [index] The name of the index to be created.
  /// [waitForActiveShards] The number of shards to wait for to become active
  ///   before completing the request.
  /// [alias] THe alias to use with the index.
  FutureOr<AcknowledgeResponse> create({
    required String index,
    int waitForActiveShards = 1,
    Duration masterNodeTimeout = const Duration(seconds: 30),
    Duration timeout = const Duration(seconds: 30),
    String? alias,
    StaticIndexSettings staticSettings = const StaticIndexSettings(),
    DynamicIndexSettings dynamicSettings = const DynamicIndexSettings(),
    IndexMapping mappings = const IndexMapping(),
  }) async {
    verifyNaming(index);
    var indexExists = await exists(index: index);
    if (indexExists.acknowledged) {
      throw IndexException.conflict();
    }

    if (waitForActiveShards < 1) {
      waitForActiveShards = 1;
    }

    var settings = mergeStaticAndDynamicSettings(
      staticSettings,
      dynamicSettings,
    );

    RequestOptions requestOptions = RequestOptions(
      path: index,
      method: 'PUT',
      // queryParameters: <String, dynamic>{
      //   'wait_for_active_shards': '$waitForActiveShards',
      //   'master_timeout': '${masterNodeTimeout.inSeconds}s',
      //   'timeout': '${timeout.inSeconds}s',
      // },
      baseUrl: client.options.baseUrl,
      data: <String, dynamic>{
        'mappings': {
          "properties": mappings.toJson(),
        },
        "settings": settings,
        'aliases': {
          if (alias != null) alias: {},
        },
      },
    );

    var signed = await signer.sign(requestOptions, client);
    return await client
        .fetch(signed)
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
    // var params = <String, dynamic>{
    //   'flat_settings': flatSettings,
    //   'include_defaults': includeDefaults,
    //   'local': local,
    //   'ignore_unavailable': ignoreUnavailable,
    //   'expand_wildcards':
    //       '[${expandWildCardOptions.map((e) => e.name).reduce((value, element) => '$value,$element')}',
    // };

    var signed = await signer.sign(
        RequestOptions(
          path: index,
          method: 'HEAD',
          baseUrl: client.options.baseUrl,
          headers: client.options.headers,
          // queryParameters: params,
        ),
        client);

    return await client
        .fetch(signed)
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
    // var params = <String, dynamic>{
    //   'ignore_unavailable': ignoreUnavailable,
    //   'expand_wildcards':
    //       '[${expandWildCardOptions.map((e) => e.name).reduce((value, element) => '$value,$element')}',
    //   'master_timeout': '${masterTimeout.inSeconds}s',
    //   'timeout': '${timeout.inSeconds}s',
    // };
    return await client
        .delete(
          index,
          // queryParameters: params,
        )
        .timeout(timeout)
        .onError(onErrorResponse(endpoint: 'delete'))
        .then(
          (value) => AcknowledgeResponse(acknowledged: value.statusCode == 200),
        );
  }

  /// Fetches information about an index.
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
  /// [masterTimeout] The time to wait for the master node to connect.
  FutureOr<GetIndexResponse> get({
    required String index,
    bool allowNoIndices = true,
    List<ExpandWildCardOption> expandWildCardOptions = const [
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

    // TODO: process query params map
    // var params = <String, dynamic>{
    //   'allow_no_indices': allowNoIndices,
    //   'flat_settings': flatSettings,
    //   'include_defaults': includeDefaults,
    //   'local': local,
    //   'ignore_unavailable': ignoreUnavailable,
    //   'expand_wildcards':
    //       '[${expandWildCardOptions.map((e) => e.name).reduce((value, element) => '$value,$element')}',
    //   'master_timeout': '${masterTimeout.inSeconds}s',
    // };

    return await client
        .get(
          index,
          // queryParameters: params,
        )
        .timeout(masterTimeout)
        .onError(onErrorResponse(endpoint: 'getIndex'))
        .then((resp) {
      // Grab the first entry with either the matching index name or the matching alias.
      var decoded = (resp.data as Map<String, dynamic>).entries.firstWhere(
            (element) =>
                element.key == index ||
                (element.value['aliases'] as Map<String, dynamic>)
                    .keys
                    .contains(index),
          );

      // TODO: Check if the index is an alias -> transform the response
      var mappings = <String, FieldType>{};

      return GetIndexResponse(
        indexName: decoded.key,
        aliasMapping: decoded.value['aliases'],
        settings: decoded.value['settings'],
        mappings: mappings,
      );
    });
  }

  /// Close all the given [indexNames].
  ///
  /// [indexNames] The name(s) of the indices to be closed.
  /// [waitForActiveShards] The number of shards to wait for to become active
  ///   before completing the request.
  /// [ignoreUnavailable] If true, OpenSearch does not search for missing or
  ///   closed indices.
  /// [masterTimeout] The time to wait for the master node to connect.
  /// [timeout] How long to wait for the response to return.
  FutureOr<CloseIndexResponse> close({
    List<String> indexNames = const ['*'],
    bool allowNoIndices = true,
    int waitForActiveShards = 1,
    bool ignoreUnavailable = false,
    Duration masterTimeout = const Duration(seconds: 30),
    Duration timeout = const Duration(seconds: 30),
  }) async {
    // var params = <String, dynamic>{
    //   'ignore_unavailable': ignoreUnavailable,
    //   'allow_no_indices': allowNoIndices,
    //   'wait_for_active_shards': waitForActiveShards,
    //   'master_timeout': '${masterTimeout.inSeconds}s',
    //   'timeout': '${timeout.inSeconds}s',
    // };
    return await client
        .post(
          '${indexNames.reduce((a, b) => '$a,$b')}/_close',
          // queryParameters: params,
        )
        .onError(onErrorResponse(endpoint: 'close'))
        .then((value) {
      // Get a response back let's handle it.
      if (value.data != null) {
        var decoded = value.data as Map<String, dynamic>;
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
      }

      return CloseIndexResponse(
          shardsAcknowledged: ShardsAcknowledgedResponse(
              shardsAcknowledged: value.statusCode == 200,
              acknowledged:
                  AcknowledgeResponse(acknowledged: value.statusCode == 200)),
          indicesClosed: []);
    });
  }

  /// Opens the given closed [indexNames].
  ///
  /// [indexNames] The name(s) of the indices to be opened.
  /// [waitForActiveShards] The number of shards to wait for to become active
  ///   before completing the request.
  /// [ignoreUnavailable] If true, OpenSearch does not search for missing or
  ///   closed indices.
  /// [masterTimeout] The time to wait for the master node to connect.
  /// [timeout] How long to wait for the response to return.
  FutureOr<ShardsAcknowledgedResponse> open({
    // TODO: Should this be a required param?
    List<String> indexNames = const ['*'],
    bool allowNoIndices = true,
    int waitForActiveShards = 1,
    bool ignoreUnavailable = false,
    Duration masterTimeout = const Duration(seconds: 30),
    Duration timeout = const Duration(seconds: 30),
  }) async {
    var params = <String, dynamic>{
      'ignore_unavailable': ignoreUnavailable,
      'allow_no_indices': allowNoIndices,
      'wait_for_active_shards': waitForActiveShards,
      'master_timeout': '${masterTimeout.inSeconds}s',
      'timeout': '${timeout.inSeconds}s',
    };

    return await client
        .post(
          '${indexNames.reduce((a, b) => '$a,$b')}/_open',
          queryParameters: params,
        )
        .onError(onErrorResponse(endpoint: 'open'))
        .then((value) {
      if (value.statusCode == 200) {
        var decoded = value.data;
        return ShardsAcknowledgedResponse(
          shardsAcknowledged: decoded['shards_acknowledged'],
          acknowledged: AcknowledgeResponse(
            acknowledged: decoded['acknowledged'],
          ),
        );
      }
      return ShardsAcknowledgedResponse(
          shardsAcknowledged: value.statusCode == 200,
          acknowledged: AcknowledgeResponse(
            acknowledged: value.statusCode == 200,
          ));
    });
  }

  /// Moves all data in [index] into [target] with fewer primary shards
  ///
  /// [index] The index to shrink.
  /// [targetIndex] The target index to shrink source into.
  /// [maxPrimaryShardSizeBytes] Sets the maximum size of a primary shard in the
  ///   target index. For example, if this field is set to 100 GB, and the source
  ///   index’s primary shards total to 300 GB, then the target index has 3
  ///   primary shards of 100 GB each.
  /// [alias] Sets an alias for the target index. Can have the fields:
  ///   - filter
  ///   - index_routing
  ///   - is_hidden
  ///   - is_write_index
  ///   - routing
  ///   - search_routing
  FutureOr<AcknowledgeResponse> shrink({
    required String index,
    required String target,
    String? alias, // TODO: Use alias settings class instead
    int waitForActiveShards = 1,
    Duration masterTimeout = const Duration(seconds: 30),
    Duration timeout = const Duration(seconds: 30),
    StaticIndexSettings staticIndexSettings = const StaticIndexSettings(),
    DynamicIndexSettings dynamicIndexSettings = const DynamicIndexSettings(),
    int maxPrimaryShardSizeBytes = 10240,
  }) async {
    verifyNaming(index);
    verifyNaming(target);
    // final ro = await updateSettings(index: index, readOnly: true);
    // if (!ro.acknowledged) {
    //   throw Exception('unable to update settings');
    // }
    // var params = <String, dynamic>{
    //   'wait_for_active_shards': waitForActiveShards,
    //   'master_timeout': '${masterTimeout.inSeconds}s',
    //   'timeout': '${timeout.inSeconds}s',
    // };
    //
    // // TODO: Handle settings???
    // // TODO: Alias handling
    var body = <String, dynamic>{
      //   'max_primary_shard_size': maxPrimaryShardSizeBytes,
      //   'settings': mergeStaticAndDynamicSettings(
      //       staticIndexSettings, dynamicIndexSettings),
      // TODO: This setting is being listed as invalid even though it is the
      //  given suggestion. Setting the index.block.read_only=true locks the index.
      //  A closed index is also un usable.
      // index.blocks.write: 'true'
      'settings': {
        'index': {
          'blocks': {
            'write': true,
          }
        },
      }
    };

    return await client
        .post(
          '$index/_shrink/$target',
          // queryParameters: params,
          data: body,
        )
        .timeout(masterTimeout)
        .onError(onErrorResponse(endpoint: 'shrink'))
        .then((value) {
      var body = value.data ?? <String, dynamic>{};
      print(body);
      return AcknowledgeResponse(acknowledged: value.statusCode == 200);
    });
  }

  FutureOr<AcknowledgeResponse> updateSettings({
    required String index,
    bool readOnly = false,
  }) async {
    // TODO: move settings into dynamic settings
    var body = <String, dynamic>{
      'index': {
        'blocks.read_only': readOnly,
      }
    };
    return await client
        .put(
          '$index/_settings',
          data: body,
        )
        .onError(onErrorResponse(endpoint: 'settings'))
        .then((value) {
      return AcknowledgeResponse();
    });
  }

  // TODO: Use a fully fleshed out response type
  FutureOr<IndexSettings> getSettings({required String index}) async {
    return await client
        .get('$index/_settings', queryParameters: {'flat_settings': true})
        .onError(onErrorResponse(endpoint: 'settings'))
        .then(
          (value) {
            StaticIndexSettings staticIndexSettings = StaticIndexSettings();
            DynamicIndexSettings dynamicIndexSettings = DynamicIndexSettings();
            int version = 0;
            int createDate = 0;
            String uuid = '';
            String providedName = index;
            if (value.statusCode == 200) {
              print(value.data[index]);
              var settingsPayload = value.data[index]['settings'];
              uuid = settingsPayload['index.uuid'];
              createDate =
                  int.tryParse(settingsPayload['index.creation_date']) ?? 0;
              version =
                  int.tryParse(settingsPayload['index.version.created']) ?? 0;
              providedName = settingsPayload['index.provided_name'];

              staticIndexSettings =
                  StaticIndexSettings.fromMap(settingsPayload);
              dynamicIndexSettings =
                  DynamicIndexSettings.fromMap(settingsPayload);
            }

            // TOOD: Stop defaulting
            return IndexSettings(
              indexName: index,
              staticSettings: staticIndexSettings,
              dynamicSettings: dynamicIndexSettings,
              versionCreated: version,
              uuid: uuid,
              creationDate: createDate,
            );
          },
        );
  }

  FutureOr<Response> Function(DioError, StackTrace) onErrorResponse({
    required String endpoint,
  }) {
    return (error, stack) {
      print('$endpoint Endpoint Exception: ${error.response?.data}');
      switch (error.response?.statusCode!) {
        case 401:
          throw HttpException.unauthorized();
        case 403:
          throw HttpException.forbidden();
        case 400:
          throw HttpException.badRequest();
        default:
          return Response(
            requestOptions: error.requestOptions,
            statusCode: error.response?.statusCode ?? 500,
            statusMessage: error.response?.statusMessage ??
                '${error.message}\n $stack', //'Unable make index request',
          );
      }
    };
  }
}
