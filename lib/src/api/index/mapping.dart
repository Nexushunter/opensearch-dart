import 'enums.dart';

class IndexMapping {
  final Map<String, FieldType> mappings;

  const IndexMapping({this.mappings = const <String, FieldType>{}});

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      for (var entry in mappings.entries)
        entry.key: {
          'type': entry.value.lowercase(),
        },
    };
  }
}
