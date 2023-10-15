//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ComplianceConfig {
  /// Returns a new [ComplianceConfig] instance.
  ComplianceConfig({
    this.enabled,
    this.writeLogDiffs,
    this.readWatchedFields,
    this.readIgnoreUsers = const [],
    this.writeWatchedIndices = const [],
    this.writeIgnoreUsers = const [],
    this.readMetadataOnly,
    this.writeMetadataOnly,
    this.externalConfig,
    this.internalConfig,
  });

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
  bool? writeLogDiffs;

  Object? readWatchedFields;

  List<String> readIgnoreUsers;

  List<String> writeWatchedIndices;

  List<String> writeIgnoreUsers;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? readMetadataOnly;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? writeMetadataOnly;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? externalConfig;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? internalConfig;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ComplianceConfig &&
          other.enabled == enabled &&
          other.writeLogDiffs == writeLogDiffs &&
          other.readWatchedFields == readWatchedFields &&
          other.readIgnoreUsers == readIgnoreUsers &&
          other.writeWatchedIndices == writeWatchedIndices &&
          other.writeIgnoreUsers == writeIgnoreUsers &&
          other.readMetadataOnly == readMetadataOnly &&
          other.writeMetadataOnly == writeMetadataOnly &&
          other.externalConfig == externalConfig &&
          other.internalConfig == internalConfig;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (enabled == null ? 0 : enabled!.hashCode) +
      (writeLogDiffs == null ? 0 : writeLogDiffs!.hashCode) +
      (readWatchedFields == null ? 0 : readWatchedFields!.hashCode) +
      (readIgnoreUsers.hashCode) +
      (writeWatchedIndices.hashCode) +
      (writeIgnoreUsers.hashCode) +
      (readMetadataOnly == null ? 0 : readMetadataOnly!.hashCode) +
      (writeMetadataOnly == null ? 0 : writeMetadataOnly!.hashCode) +
      (externalConfig == null ? 0 : externalConfig!.hashCode) +
      (internalConfig == null ? 0 : internalConfig!.hashCode);

  @override
  String toString() =>
      'ComplianceConfig[enabled=$enabled, writeLogDiffs=$writeLogDiffs, readWatchedFields=$readWatchedFields, readIgnoreUsers=$readIgnoreUsers, writeWatchedIndices=$writeWatchedIndices, writeIgnoreUsers=$writeIgnoreUsers, readMetadataOnly=$readMetadataOnly, writeMetadataOnly=$writeMetadataOnly, externalConfig=$externalConfig, internalConfig=$internalConfig]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.enabled != null) {
      json[r'enabled'] = this.enabled;
    } else {
      json[r'enabled'] = null;
    }
    if (this.writeLogDiffs != null) {
      json[r'write_log_diffs'] = this.writeLogDiffs;
    } else {
      json[r'write_log_diffs'] = null;
    }
    if (this.readWatchedFields != null) {
      json[r'read_watched_fields'] = this.readWatchedFields;
    } else {
      json[r'read_watched_fields'] = null;
    }
    json[r'read_ignore_users'] = this.readIgnoreUsers;
    json[r'write_watched_indices'] = this.writeWatchedIndices;
    json[r'write_ignore_users'] = this.writeIgnoreUsers;
    if (this.readMetadataOnly != null) {
      json[r'read_metadata_only'] = this.readMetadataOnly;
    } else {
      json[r'read_metadata_only'] = null;
    }
    if (this.writeMetadataOnly != null) {
      json[r'write_metadata_only'] = this.writeMetadataOnly;
    } else {
      json[r'write_metadata_only'] = null;
    }
    if (this.externalConfig != null) {
      json[r'external_config'] = this.externalConfig;
    } else {
      json[r'external_config'] = null;
    }
    if (this.internalConfig != null) {
      json[r'internal_config'] = this.internalConfig;
    } else {
      json[r'internal_config'] = null;
    }
    return json;
  }

  /// Returns a new [ComplianceConfig] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ComplianceConfig? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "ComplianceConfig[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "ComplianceConfig[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ComplianceConfig(
        enabled: mapValueOfType<bool>(json, r'enabled'),
        writeLogDiffs: mapValueOfType<bool>(json, r'write_log_diffs'),
        readWatchedFields: mapValueOfType<Object>(json, r'read_watched_fields'),
        readIgnoreUsers: json[r'read_ignore_users'] is List
            ? (json[r'read_ignore_users'] as List).cast<String>()
            : const [],
        writeWatchedIndices: json[r'write_watched_indices'] is List
            ? (json[r'write_watched_indices'] as List).cast<String>()
            : const [],
        writeIgnoreUsers: json[r'write_ignore_users'] is List
            ? (json[r'write_ignore_users'] as List).cast<String>()
            : const [],
        readMetadataOnly: mapValueOfType<bool>(json, r'read_metadata_only'),
        writeMetadataOnly: mapValueOfType<bool>(json, r'write_metadata_only'),
        externalConfig: mapValueOfType<bool>(json, r'external_config'),
        internalConfig: mapValueOfType<bool>(json, r'internal_config'),
      );
    }
    return null;
  }

  static List<ComplianceConfig> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <ComplianceConfig>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ComplianceConfig.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ComplianceConfig> mapFromJson(dynamic json) {
    final map = <String, ComplianceConfig>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ComplianceConfig.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ComplianceConfig-objects as value to a dart map
  static Map<String, List<ComplianceConfig>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<ComplianceConfig>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ComplianceConfig.listFromJson(
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
