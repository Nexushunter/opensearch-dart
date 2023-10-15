//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class DeleteAllPitsResponseContent {
  /// Returns a new [DeleteAllPitsResponseContent] instance.
  DeleteAllPitsResponseContent({
    this.pits = const [],
  });

  List<PitsDetailsDeleteAll> pits;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is DeleteAllPitsResponseContent && other.pits == pits;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (pits.hashCode);

  @override
  String toString() => 'DeleteAllPitsResponseContent[pits=$pits]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'pits'] = this.pits;
    return json;
  }

  /// Returns a new [DeleteAllPitsResponseContent] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DeleteAllPitsResponseContent? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "DeleteAllPitsResponseContent[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "DeleteAllPitsResponseContent[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return DeleteAllPitsResponseContent(
        pits: PitsDetailsDeleteAll.listFromJson(json[r'pits']),
      );
    }
    return null;
  }

  static List<DeleteAllPitsResponseContent> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <DeleteAllPitsResponseContent>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DeleteAllPitsResponseContent.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DeleteAllPitsResponseContent> mapFromJson(dynamic json) {
    final map = <String, DeleteAllPitsResponseContent>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DeleteAllPitsResponseContent.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DeleteAllPitsResponseContent-objects as value to a dart map
  static Map<String, List<DeleteAllPitsResponseContent>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<DeleteAllPitsResponseContent>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = DeleteAllPitsResponseContent.listFromJson(
          entry.value,
          growable: growable,
        );
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{};
}
