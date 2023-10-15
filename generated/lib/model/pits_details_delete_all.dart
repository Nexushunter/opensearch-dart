//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class PitsDetailsDeleteAll {
  /// Returns a new [PitsDetailsDeleteAll] instance.
  PitsDetailsDeleteAll({
    this.successful,
    this.pitId,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? successful;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? pitId;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PitsDetailsDeleteAll &&
          other.successful == successful &&
          other.pitId == pitId;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (successful == null ? 0 : successful!.hashCode) +
      (pitId == null ? 0 : pitId!.hashCode);

  @override
  String toString() =>
      'PitsDetailsDeleteAll[successful=$successful, pitId=$pitId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.successful != null) {
      json[r'successful'] = this.successful;
    } else {
      json[r'successful'] = null;
    }
    if (this.pitId != null) {
      json[r'pit_id'] = this.pitId;
    } else {
      json[r'pit_id'] = null;
    }
    return json;
  }

  /// Returns a new [PitsDetailsDeleteAll] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PitsDetailsDeleteAll? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "PitsDetailsDeleteAll[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "PitsDetailsDeleteAll[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return PitsDetailsDeleteAll(
        successful: mapValueOfType<bool>(json, r'successful'),
        pitId: mapValueOfType<String>(json, r'pit_id'),
      );
    }
    return null;
  }

  static List<PitsDetailsDeleteAll> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <PitsDetailsDeleteAll>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PitsDetailsDeleteAll.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PitsDetailsDeleteAll> mapFromJson(dynamic json) {
    final map = <String, PitsDetailsDeleteAll>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PitsDetailsDeleteAll.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PitsDetailsDeleteAll-objects as value to a dart map
  static Map<String, List<PitsDetailsDeleteAll>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<PitsDetailsDeleteAll>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PitsDetailsDeleteAll.listFromJson(
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
