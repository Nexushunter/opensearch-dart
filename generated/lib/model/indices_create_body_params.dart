//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class IndicesCreateBodyParams {
  /// Returns a new [IndicesCreateBodyParams] instance.
  IndicesCreateBodyParams({
    this.aliases = const {},
    this.mapping = const {},
    this.settings = const {},
  });

  Map<String, Object> aliases;

  Map<String, Object> mapping;

  Map<String, Object> settings;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is IndicesCreateBodyParams &&
          other.aliases == aliases &&
          other.mapping == mapping &&
          other.settings == settings;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (aliases.hashCode) + (mapping.hashCode) + (settings.hashCode);

  @override
  String toString() =>
      'IndicesCreateBodyParams[aliases=$aliases, mapping=$mapping, settings=$settings]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'aliases'] = this.aliases;
    json[r'mapping'] = this.mapping;
    json[r'settings'] = this.settings;
    return json;
  }

  /// Returns a new [IndicesCreateBodyParams] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static IndicesCreateBodyParams? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "IndicesCreateBodyParams[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "IndicesCreateBodyParams[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return IndicesCreateBodyParams(
        aliases: mapCastOfType<String, Object>(json, r'aliases') ?? const {},
        mapping: mapCastOfType<String, Object>(json, r'mapping') ?? const {},
        settings: mapCastOfType<String, Object>(json, r'settings') ?? const {},
      );
    }
    return null;
  }

  static List<IndicesCreateBodyParams> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <IndicesCreateBodyParams>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = IndicesCreateBodyParams.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, IndicesCreateBodyParams> mapFromJson(dynamic json) {
    final map = <String, IndicesCreateBodyParams>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = IndicesCreateBodyParams.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of IndicesCreateBodyParams-objects as value to a dart map
  static Map<String, List<IndicesCreateBodyParams>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<IndicesCreateBodyParams>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = IndicesCreateBodyParams.listFromJson(
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
