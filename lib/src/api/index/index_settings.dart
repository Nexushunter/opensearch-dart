import 'enums.dart';
import 'models.dart';

class IndexSettings {
  final String indexName;
  final StaticIndexSettings staticSettings;
  final DynamicIndexSettings dynamicSettings;
  final int versionCreated;
  final int creationDate;
  final String uuid;
  const IndexSettings({
    required this.indexName,
    this.versionCreated = 0,
    this.creationDate = 0,
    this.uuid = '',
    this.dynamicSettings = const DynamicIndexSettings(),
    this.staticSettings = const StaticIndexSettings(),
  });

  Map<String, dynamic> toJson() {
    return <String, dynamic>{};
  }
}

/// Settings you can change at any time, including at index creation.
class DynamicIndexSettings {
  /// The number of replica shards each primary shard should have.
  ///
  /// For example, if you have 4 primary shards and set [numberOfReplicas] to 3,
  /// the index has 12 replica shards.
  final int numberOfReplicas;

  /// Whether the cluster should automatically add replica shards based on the number of data nodes. Specify a lower bound and upper limit (for example, 0-9), or all for the upper limit. For example, if you have 5 data nodes and set index.auto_expand_replicas to 0-3, then the cluster does not autoamtically add another replica shard. However, if you set this value to 0-all and add 2 more nodes for a total of 7, the cluster will expand to now have 6 replica shards.
  final AutoExpandReplicaSetting autoExpandReplicas;

  /// Amount of time a shard should wait for a search or get request until it goes idle.
  final Duration searchIdleAfter;

  /// How often the index should refresh, which publishes its most recent changes and makes them available for searching. Can be set to -1 to disable refreshing.
  final Duration refreshInterval;

  /// The maximum value of from + size for searches to the index. from is the starting index to search from, and size is the amount of results to return.
  final int maxResultWindow;

  /// Maximum value of from + size to return nested search hits and most relevant document aggregated during the query. from is the starting index to search from, and size is the amount of top hits to return.
  final int maxInnerResultWindow;

  /// The maximum value of window_size for rescore requests to the index. Rescore requests reorder the index’s documents and return a new score, which can be more precise.
  final int maxRescoreWindow;

  /// Maximum amount of docvalue_fields allowed in a query.
  final int maxDocValueFieldsSearch;

  /// Maximum amount of script_fields allowed in a query.
  final int maxScriptFields;

  /// Maximum difference between min_gram and max_gram values for NGramTokenizer and NGramTokenFilter fields.
  final int maxNGramDiff;

  ///Maximum difference between max_shingle_size and min_shingle_size to feed into the shingle token filter.
  final int maxShingleDiff;

  /// Maximum amount of refresh listeners each shard is allowed to have.
  final int maxRefreshListeners;

  /// Maximum amount of tokens that can return from the _analyze API operation.
  final int analyzeMaxTokenCount;

  /// The amount of characters a highlight request can analyze.
  final int highlightMaxAnalyzedOffset;

  /// The maximum amount of terms a terms query can accept.
  final int maxTermsCount;

  /// The maximum character length of regex that can be in a regexp query.
  final int maxRegexLength;

  /// A field or list of fields that OpenSearch uses in queries in case a field isn’t specified in the parameters.
  final List<String> queryDefaultField;

  /// Specifies options for the index’s shard allocation. Available options are all (allow allocation for all shards), primaries (allow allocation only for primary shards), new_primaries (allow allocation only for new primary shards), and none (do not allow allocation)
  final RoutingAllocationOption routingAllocationEnable;

  /// Enables shard rebalancing for the index.
  ///
  /// Available options are:
  /// - all (allow rebalancing for all shards)
  /// - primaries (allow rebalancing only for primary shards)
  /// - replicas (allow rebalancing only for replicas)
  /// - none (do not allow rebalancing)
  final RoutingReBalanceOption routingReBalanceOption;

  /// Amount of time to retain a deleted document’s version number.
  final Duration gcDeletes;

  /// The default ingest node pipeline for the index.
  ///
  /// If the default pipeline is set and the pipeline does not exist, then index
  /// requests fail. The pipeline name _none specifies that the index does not
  /// have an ingest pipeline.
  final String defaultPipeline;

  /// The final ingest node pipeline for the index.
  ///
  /// If the final pipeline is set and the pipeline does not exist, then index
  /// requests fail. The pipeline name _none specifies that the index does not
  /// have an ingest pipeline.
  final String finalPipeline;

  const DynamicIndexSettings({
    this.numberOfReplicas = 1,
    this.autoExpandReplicas = const AutoExpandReplicaSetting(),
    this.searchIdleAfter = const Duration(seconds: 30),
    this.refreshInterval = const Duration(seconds: 1),
    this.maxResultWindow = 10000,
    this.maxInnerResultWindow = 100,
    this.maxRescoreWindow = 10000,
    this.maxDocValueFieldsSearch = 100,
    this.maxScriptFields = 32,
    this.maxNGramDiff = 1,
    this.maxShingleDiff = 3,
    this.maxRefreshListeners = 1,
    this.analyzeMaxTokenCount = 10000,
    this.highlightMaxAnalyzedOffset = 1000000000,
    this.maxTermsCount = 65536,
    this.maxRegexLength = 1000,
    this.queryDefaultField = const [],
    this.routingAllocationEnable = RoutingAllocationOption.all,
    this.routingReBalanceOption = RoutingReBalanceOption.all,
    this.gcDeletes = const Duration(seconds: 60),
    this.defaultPipeline = '',
    this.finalPipeline = '_none',
  });

  factory DynamicIndexSettings.fromMap(Map<String, dynamic> map) =>
      DynamicIndexSettings(
        numberOfReplicas: map['index.number_of_replicas'] as int,
        refreshInterval: Duration(
            seconds: ((map['index.refresh_interval'] as String).substring(
          0,
          (map['index.refresh_interval'] as String).length - 1,
        )) as int),
        maxResultWindow: map['index.max_result_window'] as int,
        maxInnerResultWindow: map['index.max_inner_result_window'] as int,
      );

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'index': {
        'number_of_replicas': numberOfReplicas,
        'refresh_interval': '${refreshInterval.inSeconds}s',
        'max_result_window': maxResultWindow,
        'max_inner_result_window': maxInnerResultWindow,
        'max_rescore_window': maxRescoreWindow,
        'max_docvalue_fields_search': maxDocValueFieldsSearch,
        'max_script_fields': maxScriptFields,
        'max_ngram_diff': maxNGramDiff,
        'max_shingle_diff': maxShingleDiff,
        'max_refresh_listeners': maxRefreshListeners,
        'max_terms_count': maxTermsCount,
        'max_regex_length': maxRegexLength,
        'gc_deletes': '${gcDeletes.inSeconds}s',
        'default_pipeline': defaultPipeline,
        'final_pipeline': finalPipeline,
        if (!autoExpandReplicas.disabled)
          'auto_expand_replicas':
              '${autoExpandReplicas.lowerLimit}-${autoExpandReplicas.upperLimit}',
        "analyze": {
          'max_token_count': analyzeMaxTokenCount,
        },
        'highlight': {
          'max_analyzed_offset': highlightMaxAnalyzedOffset,
        },
        'routing': {
          'rebalance': {
            'enable': routingReBalanceOption.lowercase(),
          },
          'allocation': {
            'enable': routingAllocationEnable.lowercase(),
          }
        },
        'query': {
          'default_field': queryDefaultField,
        },
        'search': {
          'idle': {
            'after': '${searchIdleAfter.inSeconds}s',
          }
        }
      },
    };
  }
}

/// Settings that you specify at index creation and can’t change later.
class StaticIndexSettings {
  /// The number of primary shards in the index
  final int numberOfShards;

  /// The number of routing shards used to split an index.
  final int numberOfRoutingShards;

  /// Whether the index’s shards should be checked for corruption.
  ///
  /// Available options are:
  /// - false (do not check for corruption),
  /// - checksum (check for physical corruption),
  /// - true (check for both physical and logical corruption).
  final ShardCheckOptions shardCheckOnStart;

  /// The compression type to use to compress stored data.
  final IndexCodec codec;

  /// The number of shards a custom routing value can go to.
  ///
  /// Routing helps an imbalanced cluster by relocating values to a subset of
  /// shards rather than just a single shard. To enable, set this value to
  /// greater than 1 but less than [numberOfShards].
  final int routingPartitionSize;

  /// The maximum amount of time to retain a shard’s history of operations.
  final Duration softDeleteRetentionLeasePeriod;

  /// Whether OpenSearch should pre-load cached filters.
  final bool loadFixedBitsetFiltersEagerly;

  ///Whether the index should be hidden.
  ///
  ///Hidden indices are not returned as part of queries that have wildcards.
  final bool hidden;

  const StaticIndexSettings({
    this.codec = IndexCodec.Default,
    this.hidden = false,
    this.loadFixedBitsetFiltersEagerly = true,
    this.softDeleteRetentionLeasePeriod = const Duration(hours: 12),
    this.numberOfShards = 1,
    this.shardCheckOnStart = ShardCheckOptions.False,
    this.numberOfRoutingShards = 1,
    this.routingPartitionSize = 1,
  }) : assert(numberOfShards >= 1 && routingPartitionSize <= numberOfShards);

  factory StaticIndexSettings.fromMap(Map<String, dynamic> mapping) =>
      StaticIndexSettings(
        softDeleteRetentionLeasePeriod: Duration(
          seconds:
              (mapping['index.soft_deletes.retention_lease.period'] as String)
                  .substring(
                      0,
                      (mapping['index.soft_deletes.retention_lease.period']
                                  as String)
                              .length -
                          1) as int,
        ),
        hidden: mapping['index.hidden'],
        codec: IndexCodec.values.firstWhere(
            (element) => element.lowercase() == mapping['index.codec']),
        loadFixedBitsetFiltersEagerly:
            mapping['index.load_fixed_bitset_filters_eagerly'] as bool,
        numberOfRoutingShards: mapping['index.number_of_routing_shards'] as int,
        numberOfShards: mapping['index.number_of_shards'] as int,
        shardCheckOnStart: ShardCheckOptions.values.firstWhere(
          (element) =>
              element.lowercase() == mapping['index.shard_check_on_start'],
        ),
      );

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'index': {
        'codec': codec.lowercase(),
        'hidden': hidden,
        'load_fixed_bitset_filters_eagerly': loadFixedBitsetFiltersEagerly,
        'number_of_routing_shards': numberOfRoutingShards,
        'number_of_shards': numberOfShards,
        'routing_partition_size': routingPartitionSize,
        'soft_deletes': {
          'retention_lease': {
            'period': '${softDeleteRetentionLeasePeriod.inSeconds}s',
          },
        },
        'shard': {
          'check_on_startup': shardCheckOnStart.lowercase(),
        },
      }
    };
  }
}

Map<String, dynamic> mergeStaticAndDynamicSettings(
    StaticIndexSettings staticIndexSettings,
    DynamicIndexSettings dynamicIndexSettings) {
  var dJson = dynamicIndexSettings.toJson();
  var sJson = staticIndexSettings.toJson();
  return dJson.update(
    'index',
    ifAbsent: () => sJson['index'],
    (value) {
      value as Map<String, dynamic>;
      return value..addAll(sJson['index']);
    },
  );
}
