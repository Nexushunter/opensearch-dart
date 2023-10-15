//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class AuditConfigWithReadOnly {
  /// Returns a new [AuditConfigWithReadOnly] instance.
  AuditConfigWithReadOnly({
    this.readonly = const [],
    this.config,
  });

  List<String> readonly;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  AuditConfig? config;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AuditConfigWithReadOnly &&
          other.readonly == readonly &&
          other.config == config;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (readonly.hashCode) + (config == null ? 0 : config!.hashCode);

  @override
  String toString() =>
      'AuditConfigWithReadOnly[readonly=$readonly, config=$config]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'_readonly'] = this.readonly;
    if (this.config != null) {
      json[r'config'] = this.config;
    } else {
      json[r'config'] = null;
    }
    return json;
  }

  /// Returns a new [AuditConfigWithReadOnly] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AuditConfigWithReadOnly? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "AuditConfigWithReadOnly[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "AuditConfigWithReadOnly[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AuditConfigWithReadOnly(
        readonly: json[r'_readonly'] is List
            ? (json[r'_readonly'] as List).cast<String>()
            : const [],
        config: AuditConfig.fromJson(json[r'config']),
      );
    }
    return null;
  }

  static List<AuditConfigWithReadOnly> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <AuditConfigWithReadOnly>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AuditConfigWithReadOnly.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AuditConfigWithReadOnly> mapFromJson(dynamic json) {
    final map = <String, AuditConfigWithReadOnly>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AuditConfigWithReadOnly.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AuditConfigWithReadOnly-objects as value to a dart map
  static Map<String, List<AuditConfigWithReadOnly>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<AuditConfigWithReadOnly>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AuditConfigWithReadOnly.listFromJson(
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
