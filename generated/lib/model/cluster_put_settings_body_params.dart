//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ClusterPutSettingsBodyParams {
  /// Returns a new [ClusterPutSettingsBodyParams] instance.
  ClusterPutSettingsBodyParams({
    this.persistent = const {},
    this.transient = const {},
  });

  Map<String, Object> persistent;

  Map<String, Object> transient;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ClusterPutSettingsBodyParams &&
          other.persistent == persistent &&
          other.transient == transient;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (persistent.hashCode) + (transient.hashCode);

  @override
  String toString() =>
      'ClusterPutSettingsBodyParams[persistent=$persistent, transient=$transient]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'persistent'] = this.persistent;
    json[r'transient'] = this.transient;
    return json;
  }

  /// Returns a new [ClusterPutSettingsBodyParams] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ClusterPutSettingsBodyParams? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "ClusterPutSettingsBodyParams[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "ClusterPutSettingsBodyParams[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ClusterPutSettingsBodyParams(
        persistent:
            mapCastOfType<String, Object>(json, r'persistent') ?? const {},
        transient:
            mapCastOfType<String, Object>(json, r'transient') ?? const {},
      );
    }
    return null;
  }

  static List<ClusterPutSettingsBodyParams> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <ClusterPutSettingsBodyParams>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ClusterPutSettingsBodyParams.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ClusterPutSettingsBodyParams> mapFromJson(dynamic json) {
    final map = <String, ClusterPutSettingsBodyParams>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ClusterPutSettingsBodyParams.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ClusterPutSettingsBodyParams-objects as value to a dart map
  static Map<String, List<ClusterPutSettingsBodyParams>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<ClusterPutSettingsBodyParams>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ClusterPutSettingsBodyParams.listFromJson(
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
