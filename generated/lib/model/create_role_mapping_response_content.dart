//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CreateRoleMappingResponseContent {
  /// Returns a new [CreateRoleMappingResponseContent] instance.
  CreateRoleMappingResponseContent({
    this.status,
    this.message,
  });

  /// Security Operation Status
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? status;

  /// Security Operation Message
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? message;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CreateRoleMappingResponseContent &&
          other.status == status &&
          other.message == message;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (status == null ? 0 : status!.hashCode) +
      (message == null ? 0 : message!.hashCode);

  @override
  String toString() =>
      'CreateRoleMappingResponseContent[status=$status, message=$message]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.status != null) {
      json[r'status'] = this.status;
    } else {
      json[r'status'] = null;
    }
    if (this.message != null) {
      json[r'message'] = this.message;
    } else {
      json[r'message'] = null;
    }
    return json;
  }

  /// Returns a new [CreateRoleMappingResponseContent] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CreateRoleMappingResponseContent? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "CreateRoleMappingResponseContent[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "CreateRoleMappingResponseContent[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CreateRoleMappingResponseContent(
        status: mapValueOfType<String>(json, r'status'),
        message: mapValueOfType<String>(json, r'message'),
      );
    }
    return null;
  }

  static List<CreateRoleMappingResponseContent> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <CreateRoleMappingResponseContent>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreateRoleMappingResponseContent.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CreateRoleMappingResponseContent> mapFromJson(
      dynamic json) {
    final map = <String, CreateRoleMappingResponseContent>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CreateRoleMappingResponseContent.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CreateRoleMappingResponseContent-objects as value to a dart map
  static Map<String, List<CreateRoleMappingResponseContent>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<CreateRoleMappingResponseContent>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CreateRoleMappingResponseContent.listFromJson(
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