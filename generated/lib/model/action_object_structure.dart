//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ActionObjectStructure {
  /// Returns a new [ActionObjectStructure] instance.
  ActionObjectStructure({
    this.add,
    this.remove,
    this.removeIndex,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  UserDefinedStructure? add;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  UserDefinedStructure? remove;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  UserDefinedStructure? removeIndex;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ActionObjectStructure &&
          other.add == add &&
          other.remove == remove &&
          other.removeIndex == removeIndex;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (add == null ? 0 : add!.hashCode) +
      (remove == null ? 0 : remove!.hashCode) +
      (removeIndex == null ? 0 : removeIndex!.hashCode);

  @override
  String toString() =>
      'ActionObjectStructure[add=$add, remove=$remove, removeIndex=$removeIndex]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.add != null) {
      json[r'add'] = this.add;
    } else {
      json[r'add'] = null;
    }
    if (this.remove != null) {
      json[r'remove'] = this.remove;
    } else {
      json[r'remove'] = null;
    }
    if (this.removeIndex != null) {
      json[r'remove_index'] = this.removeIndex;
    } else {
      json[r'remove_index'] = null;
    }
    return json;
  }

  /// Returns a new [ActionObjectStructure] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ActionObjectStructure? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "ActionObjectStructure[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "ActionObjectStructure[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ActionObjectStructure(
        add: UserDefinedStructure.fromJson(json[r'add']),
        remove: UserDefinedStructure.fromJson(json[r'remove']),
        removeIndex: UserDefinedStructure.fromJson(json[r'remove_index']),
      );
    }
    return null;
  }

  static List<ActionObjectStructure> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <ActionObjectStructure>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ActionObjectStructure.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ActionObjectStructure> mapFromJson(dynamic json) {
    final map = <String, ActionObjectStructure>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ActionObjectStructure.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ActionObjectStructure-objects as value to a dart map
  static Map<String, List<ActionObjectStructure>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<ActionObjectStructure>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ActionObjectStructure.listFromJson(
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
