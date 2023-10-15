//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ChangePasswordRequestContent {
  /// Returns a new [ChangePasswordRequestContent] instance.
  ChangePasswordRequestContent({
    required this.currentPassword,
    required this.password,
  });

  /// The current password
  String currentPassword;

  /// The new password to set
  String password;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ChangePasswordRequestContent &&
          other.currentPassword == currentPassword &&
          other.password == password;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (currentPassword.hashCode) + (password.hashCode);

  @override
  String toString() =>
      'ChangePasswordRequestContent[currentPassword=$currentPassword, password=$password]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'current_password'] = this.currentPassword;
    json[r'password'] = this.password;
    return json;
  }

  /// Returns a new [ChangePasswordRequestContent] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ChangePasswordRequestContent? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "ChangePasswordRequestContent[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "ChangePasswordRequestContent[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ChangePasswordRequestContent(
        currentPassword: mapValueOfType<String>(json, r'current_password')!,
        password: mapValueOfType<String>(json, r'password')!,
      );
    }
    return null;
  }

  static List<ChangePasswordRequestContent> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <ChangePasswordRequestContent>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ChangePasswordRequestContent.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ChangePasswordRequestContent> mapFromJson(dynamic json) {
    final map = <String, ChangePasswordRequestContent>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ChangePasswordRequestContent.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ChangePasswordRequestContent-objects as value to a dart map
  static Map<String, List<ChangePasswordRequestContent>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<ChangePasswordRequestContent>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ChangePasswordRequestContent.listFromJson(
          entry.value,
          growable: growable,
        );
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'current_password',
    'password',
  };
}
