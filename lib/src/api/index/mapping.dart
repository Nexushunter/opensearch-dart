import 'enums.dart';

class IndexMapping {
  final Map<String, FieldType> mappings;

  const IndexMapping({required this.mappings});

  factory IndexMapping.empty() =>
      IndexMapping(mappings: const <String, FieldType>{});

  Map<String, dynamic> toJson() {
    return <String, dynamic>{};
  }
}
