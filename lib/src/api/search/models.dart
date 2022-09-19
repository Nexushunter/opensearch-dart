class SearchHit {
  final int took;
  final bool timedOut;
  final ShardInfo shards;
  final HitsResult hits;
  const SearchHit(this.hits, this.shards, this.took, this.timedOut);

  factory SearchHit.fromMap(Map<String, dynamic> map) => SearchHit(
        HitsResult.fromMap(map['hits']),
        ShardInfo.fromMap(map['_shards']),
        map['took'],
        map['timed_out'],
      );

  @override
  String toString() {
    return '{ took: $took timed_out: $timedOut shards: $shards hits: $hits }';
  }
}

// TODO Provide better support / class casting
class Document {
  final Map<String, dynamic> _mapping;
  Document({Map<String, dynamic> mapping = const {}}) : _mapping = mapping;
  factory Document.fromMap(Map<String, dynamic> map) => Document(mapping: map);
  Map<String, dynamic> toJson() => _mapping;

  @override
  String toString() {
    return _mapping.toString();
  }
}

class HitsResult {
  final TotalResult total;
  final int? maxScore;
  final List<Document> hits;
  const HitsResult(this.total, this.maxScore, this.hits);

  factory HitsResult.fromMap(Map<String, dynamic> map) => HitsResult(
        TotalResult.fromMap(map['total']),
        map['max_Score'],
        map['hits'].map((m) => Document.fromMap(m)).toList().cast<Document>(),
      );

  @override
  String toString() {
    return '{ total: $total max_score: $maxScore hits: [${hits.join(',')}] }';
  }
}

class TotalResult {
  final int value;
  final String relation;
  const TotalResult._(this.value, this.relation);
  factory TotalResult.fromMap(Map<String, dynamic> map) =>
      TotalResult._(map['value'], map['relation']);

  @override
  String toString() {
    // TODO: implement toString
    return '{ value: $value relation: $relation }';
  }
}

class ShardInfo {
  final int total;
  final int successful;
  final int skipped;
  final int failed;
  const ShardInfo._(this.failed, this.total, this.skipped, this.successful);
  factory ShardInfo.fromMap(Map<String, dynamic> map) => ShardInfo._(
        map['failed'],
        map['total'],
        map['skipped'],
        map['successful'],
      );

  @override
  String toString() {
    return '{ total: $total successful: $successful failed: $failed skipped: $skipped }';
  }
}
