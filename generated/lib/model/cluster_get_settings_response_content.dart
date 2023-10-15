//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ClusterGetSettingsResponseContent {
  /// Returns a new [ClusterGetSettingsResponseContent] instance.
  ClusterGetSettingsResponseContent({
    this.persistent = const {},
    this.transient = const {},
    this.defaults = const {},
  });

  Map<String, Object> persistent;

  Map<String, Object> transient;

  Map<String, Object> defaults;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ClusterGetSettingsResponseContent &&
          other.persistent == persistent &&
          other.transient == transient &&
          other.defaults == defaults;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (persistent.hashCode) + (transient.hashCode) + (defaults.hashCode);

  @override
  String toString() =>
      'ClusterGetSettingsResponseContent[persistent=$persistent, transient=$transient, defaults=$defaults]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'persistent'] = this.persistent;
    json[r'transient'] = this.transient;
    json[r'defaults'] = this.defaults;
    return json;
  }

  /// Returns a new [ClusterGetSettingsResponseContent] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ClusterGetSettingsResponseContent? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "ClusterGetSettingsResponseContent[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "ClusterGetSettingsResponseContent[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ClusterGetSettingsResponseContent(
        persistent:
            mapCastOfType<String, Object>(json, r'persistent') ?? const {},
        transient:
            mapCastOfType<String, Object>(json, r'transient') ?? const {},
        defaults: mapCastOfType<String, Object>(json, r'defaults') ?? const {},
      );
    }
    return null;
  }

  static List<ClusterGetSettingsResponseContent> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <ClusterGetSettingsResponseContent>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ClusterGetSettingsResponseContent.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ClusterGetSettingsResponseContent> mapFromJson(
      dynamic json) {
    final map = <String, ClusterGetSettingsResponseContent>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ClusterGetSettingsResponseContent.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ClusterGetSettingsResponseContent-objects as value to a dart map
  static Map<String, List<ClusterGetSettingsResponseContent>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<ClusterGetSettingsResponseContent>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ClusterGetSettingsResponseContent.listFromJson(
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
