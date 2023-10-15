//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class DynamicConfig {
  /// Returns a new [DynamicConfig] instance.
  DynamicConfig({
    this.dynamic_,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DynamicOptions? dynamic_;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is DynamicConfig && other.dynamic_ == dynamic_;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (dynamic_ == null ? 0 : dynamic_!.hashCode);

  @override
  String toString() => 'DynamicConfig[dynamic_=$dynamic_]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.dynamic_ != null) {
      json[r'dynamic'] = this.dynamic_;
    } else {
      json[r'dynamic'] = null;
    }
    return json;
  }

  /// Returns a new [DynamicConfig] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DynamicConfig? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "DynamicConfig[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "DynamicConfig[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return DynamicConfig(
        dynamic_: DynamicOptions.fromJson(json[r'dynamic']),
      );
    }
    return null;
  }

  static List<DynamicConfig> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <DynamicConfig>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DynamicConfig.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DynamicConfig> mapFromJson(dynamic json) {
    final map = <String, DynamicConfig>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DynamicConfig.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DynamicConfig-objects as value to a dart map
  static Map<String, List<DynamicConfig>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<DynamicConfig>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = DynamicConfig.listFromJson(
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
