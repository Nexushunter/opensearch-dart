class SearchHit {
  final int took;
  final bool timedOut;
  final ShardInfo shards;
  final HitsResult hits;
  const SearchHit(this.hits, this.shards, this.took, this.timedOut);
}

// TODO Provide better support
class Document {
  final Map<String, dynamic> _mapping;
  Document({Map<String, dynamic> mapping = const {}}) : _mapping = mapping;
  factory Document.fromMap(Map<String, dynamic> map) => Document(mapping: map);
  Map<String, dynamic> toJson() => _mapping;
}

class HitsResult {
  final int total;
  final int? maxScore;
  final List<Document> hits;
  const HitsResult(this.total, this.maxScore, this.hits);
}

class TotalResult {
  final int value;
  final String relation;
  const TotalResult._(this.value, this.relation);
  factory TotalResult.fromMap(Map<String, dynamic> map) =>
      TotalResult._(map['value'], map['relation']);
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
}
