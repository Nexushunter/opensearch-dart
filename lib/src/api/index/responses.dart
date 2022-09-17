import 'package:opensearch_dart/src/api/index/enums.dart';

import '../common/responses.dart';

class GetIndexResponse {
  final String indexName;

  /// Any aliases associated with the index.
  final Map<String, dynamic> aliasMapping;

  /// Any [mappings] in the index.
  final Map<String, FieldType> mappings;

  /// The index's [settings].
  ///
  /// Contains the fields:
  /// - creation_date
  /// - uuid
  /// - version.created
  /// - provided_name
  /// - number_of_shards
  /// - number_of_replicas
  final Map<String, dynamic> settings;

  const GetIndexResponse({
    required this.indexName,
    this.aliasMapping = const {},
    this.mappings = const {},
    this.settings = const {},
  });
}

class CloseIndexResponse {
  final ShardsAcknowledgedResponse shardsAcknowledged;
  final List<String> indicesClosed;
  const CloseIndexResponse({
    required this.shardsAcknowledged,
    required this.indicesClosed,
  });
}

class ShardsAcknowledgedResponse {
  final AcknowledgeResponse acknowledged;
  final bool shardsAcknowledged;
  const ShardsAcknowledgedResponse(
      {this.acknowledged = const AcknowledgeResponse(),
      required this.shardsAcknowledged});
}
