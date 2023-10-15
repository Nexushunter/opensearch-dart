//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class IndexPermission {
  /// Returns a new [IndexPermission] instance.
  IndexPermission({
    this.indexPatterns = const [],
    this.dls,
    this.fls = const [],
    this.maskedFields = const [],
    this.allowedActions = const [],
  });

  List<String> indexPatterns;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? dls;

  List<String> fls;

  List<String> maskedFields;

  List<String> allowedActions;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is IndexPermission &&
          other.indexPatterns == indexPatterns &&
          other.dls == dls &&
          other.fls == fls &&
          other.maskedFields == maskedFields &&
          other.allowedActions == allowedActions;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (indexPatterns.hashCode) +
      (dls == null ? 0 : dls!.hashCode) +
      (fls.hashCode) +
      (maskedFields.hashCode) +
      (allowedActions.hashCode);

  @override
  String toString() =>
      'IndexPermission[indexPatterns=$indexPatterns, dls=$dls, fls=$fls, maskedFields=$maskedFields, allowedActions=$allowedActions]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'index_patterns'] = this.indexPatterns;
    if (this.dls != null) {
      json[r'dls'] = this.dls;
    } else {
      json[r'dls'] = null;
    }
    json[r'fls'] = this.fls;
    json[r'masked_fields'] = this.maskedFields;
    json[r'allowed_actions'] = this.allowedActions;
    return json;
  }

  /// Returns a new [IndexPermission] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static IndexPermission? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "IndexPermission[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "IndexPermission[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return IndexPermission(
        indexPatterns: json[r'index_patterns'] is List
            ? (json[r'index_patterns'] as List).cast<String>()
            : const [],
        dls: mapValueOfType<String>(json, r'dls'),
        fls: json[r'fls'] is List
            ? (json[r'fls'] as List).cast<String>()
            : const [],
        maskedFields: json[r'masked_fields'] is List
            ? (json[r'masked_fields'] as List).cast<String>()
            : const [],
        allowedActions: json[r'allowed_actions'] is List
            ? (json[r'allowed_actions'] as List).cast<String>()
            : const [],
      );
    }
    return null;
  }

  static List<IndexPermission> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <IndexPermission>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = IndexPermission.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, IndexPermission> mapFromJson(dynamic json) {
    final map = <String, IndexPermission>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = IndexPermission.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of IndexPermission-objects as value to a dart map
  static Map<String, List<IndexPermission>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<IndexPermission>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = IndexPermission.listFromJson(
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
