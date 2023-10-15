//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class IndicesDeleteResponseContent {
  /// Returns a new [IndicesDeleteResponseContent] instance.
  IndicesDeleteResponseContent({
    this.acknowledged,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? acknowledged;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is IndicesDeleteResponseContent &&
          other.acknowledged == acknowledged;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (acknowledged == null ? 0 : acknowledged!.hashCode);

  @override
  String toString() =>
      'IndicesDeleteResponseContent[acknowledged=$acknowledged]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.acknowledged != null) {
      json[r'acknowledged'] = this.acknowledged;
    } else {
      json[r'acknowledged'] = null;
    }
    return json;
  }

  /// Returns a new [IndicesDeleteResponseContent] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static IndicesDeleteResponseContent? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "IndicesDeleteResponseContent[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "IndicesDeleteResponseContent[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return IndicesDeleteResponseContent(
        acknowledged: mapValueOfType<bool>(json, r'acknowledged'),
      );
    }
    return null;
  }

  static List<IndicesDeleteResponseContent> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <IndicesDeleteResponseContent>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = IndicesDeleteResponseContent.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, IndicesDeleteResponseContent> mapFromJson(dynamic json) {
    final map = <String, IndicesDeleteResponseContent>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = IndicesDeleteResponseContent.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of IndicesDeleteResponseContent-objects as value to a dart map
  static Map<String, List<IndicesDeleteResponseContent>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<IndicesDeleteResponseContent>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = IndicesDeleteResponseContent.listFromJson(
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
