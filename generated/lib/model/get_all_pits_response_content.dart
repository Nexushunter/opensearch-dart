//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class GetAllPitsResponseContent {
  /// Returns a new [GetAllPitsResponseContent] instance.
  GetAllPitsResponseContent({
    this.pits = const [],
  });

  List<PitDetail> pits;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is GetAllPitsResponseContent && other.pits == pits;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (pits.hashCode);

  @override
  String toString() => 'GetAllPitsResponseContent[pits=$pits]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'pits'] = this.pits;
    return json;
  }

  /// Returns a new [GetAllPitsResponseContent] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GetAllPitsResponseContent? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "GetAllPitsResponseContent[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "GetAllPitsResponseContent[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return GetAllPitsResponseContent(
        pits: PitDetail.listFromJson(json[r'pits']),
      );
    }
    return null;
  }

  static List<GetAllPitsResponseContent> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <GetAllPitsResponseContent>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GetAllPitsResponseContent.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, GetAllPitsResponseContent> mapFromJson(dynamic json) {
    final map = <String, GetAllPitsResponseContent>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GetAllPitsResponseContent.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of GetAllPitsResponseContent-objects as value to a dart map
  static Map<String, List<GetAllPitsResponseContent>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<GetAllPitsResponseContent>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = GetAllPitsResponseContent.listFromJson(
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
