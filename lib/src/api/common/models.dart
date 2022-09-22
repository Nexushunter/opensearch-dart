// TODO Provide better support / class casting
// TODO: Choose a better name. Document is already used in dart html lib, and
//  will force consumers to namespace. That isn't something that should be
//  forced (some case excluded, alpha, beta, stable API etc).
class SearchDocument {
  final Map<String, dynamic> _mapping;
  final String id;
  SearchDocument({Map<String, dynamic> mapping = const {}, this.id = ''})
      : _mapping = mapping;

  factory SearchDocument.fromMap(Map<String, dynamic> map) =>
      SearchDocument(mapping: map, id: map['_id']);

  // TODO: Add in remaining metadata
  /// Transforms the [SearchDocument] it's respective JSON mapping.
  Map<String, dynamic> toJson() => <String, dynamic>{
        '_id': id,
      }..addAll(_mapping);

  @override
  String toString() {
    return _mapping.toString();
  }
}
