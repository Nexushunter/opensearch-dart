//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Total {
  /// Returns a new [Total] instance.
  Total({
    this.value,
    this.relation,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? value;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Relation? relation;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Total && other.value == value && other.relation == relation;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (value == null ? 0 : value!.hashCode) +
      (relation == null ? 0 : relation!.hashCode);

  @override
  String toString() => 'Total[value=$value, relation=$relation]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.value != null) {
      json[r'value'] = this.value;
    } else {
      json[r'value'] = null;
    }
    if (this.relation != null) {
      json[r'relation'] = this.relation;
    } else {
      json[r'relation'] = null;
    }
    return json;
  }

  /// Returns a new [Total] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Total? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "Total[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "Total[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Total(
        value: mapValueOfType<int>(json, r'value'),
        relation: Relation.fromJson(json[r'relation']),
      );
    }
    return null;
  }

  static List<Total> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <Total>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Total.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Total> mapFromJson(dynamic json) {
    final map = <String, Total>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Total.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Total-objects as value to a dart map
  static Map<String, List<Total>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<Total>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Total.listFromJson(
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
