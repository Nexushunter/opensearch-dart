//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class AuditConfig {
  /// Returns a new [AuditConfig] instance.
  AuditConfig({
    this.compliance,
    this.enabled,
    this.audit,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  ComplianceConfig? compliance;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? enabled;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  AuditLogsConfig? audit;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AuditConfig &&
          other.compliance == compliance &&
          other.enabled == enabled &&
          other.audit == audit;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (compliance == null ? 0 : compliance!.hashCode) +
      (enabled == null ? 0 : enabled!.hashCode) +
      (audit == null ? 0 : audit!.hashCode);

  @override
  String toString() =>
      'AuditConfig[compliance=$compliance, enabled=$enabled, audit=$audit]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.compliance != null) {
      json[r'compliance'] = this.compliance;
    } else {
      json[r'compliance'] = null;
    }
    if (this.enabled != null) {
      json[r'enabled'] = this.enabled;
    } else {
      json[r'enabled'] = null;
    }
    if (this.audit != null) {
      json[r'audit'] = this.audit;
    } else {
      json[r'audit'] = null;
    }
    return json;
  }

  /// Returns a new [AuditConfig] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AuditConfig? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "AuditConfig[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "AuditConfig[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AuditConfig(
        compliance: ComplianceConfig.fromJson(json[r'compliance']),
        enabled: mapValueOfType<bool>(json, r'enabled'),
        audit: AuditLogsConfig.fromJson(json[r'audit']),
      );
    }
    return null;
  }

  static List<AuditConfig> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <AuditConfig>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AuditConfig.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AuditConfig> mapFromJson(dynamic json) {
    final map = <String, AuditConfig>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AuditConfig.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AuditConfig-objects as value to a dart map
  static Map<String, List<AuditConfig>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<AuditConfig>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AuditConfig.listFromJson(
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
