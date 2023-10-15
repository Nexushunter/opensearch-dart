//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class RoleMapping {
  /// Returns a new [RoleMapping] instance.
  RoleMapping({
    this.hosts = const [],
    this.users = const [],
    this.reserved,
    this.hidden,
    this.backendRoles = const [],
    this.andBackendRoles = const [],
    this.description,
  });

  List<String> hosts;

  List<String> users;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? reserved;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? hidden;

  List<String> backendRoles;

  List<String> andBackendRoles;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? description;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is RoleMapping &&
          other.hosts == hosts &&
          other.users == users &&
          other.reserved == reserved &&
          other.hidden == hidden &&
          other.backendRoles == backendRoles &&
          other.andBackendRoles == andBackendRoles &&
          other.description == description;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (hosts.hashCode) +
      (users.hashCode) +
      (reserved == null ? 0 : reserved!.hashCode) +
      (hidden == null ? 0 : hidden!.hashCode) +
      (backendRoles.hashCode) +
      (andBackendRoles.hashCode) +
      (description == null ? 0 : description!.hashCode);

  @override
  String toString() =>
      'RoleMapping[hosts=$hosts, users=$users, reserved=$reserved, hidden=$hidden, backendRoles=$backendRoles, andBackendRoles=$andBackendRoles, description=$description]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'hosts'] = this.hosts;
    json[r'users'] = this.users;
    if (this.reserved != null) {
      json[r'reserved'] = this.reserved;
    } else {
      json[r'reserved'] = null;
    }
    if (this.hidden != null) {
      json[r'hidden'] = this.hidden;
    } else {
      json[r'hidden'] = null;
    }
    json[r'backend_roles'] = this.backendRoles;
    json[r'and_backend_roles'] = this.andBackendRoles;
    if (this.description != null) {
      json[r'description'] = this.description;
    } else {
      json[r'description'] = null;
    }
    return json;
  }

  /// Returns a new [RoleMapping] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RoleMapping? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "RoleMapping[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "RoleMapping[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return RoleMapping(
        hosts: json[r'hosts'] is List
            ? (json[r'hosts'] as List).cast<String>()
            : const [],
        users: json[r'users'] is List
            ? (json[r'users'] as List).cast<String>()
            : const [],
        reserved: mapValueOfType<bool>(json, r'reserved'),
        hidden: mapValueOfType<bool>(json, r'hidden'),
        backendRoles: json[r'backend_roles'] is List
            ? (json[r'backend_roles'] as List).cast<String>()
            : const [],
        andBackendRoles: json[r'and_backend_roles'] is List
            ? (json[r'and_backend_roles'] as List).cast<String>()
            : const [],
        description: mapValueOfType<String>(json, r'description'),
      );
    }
    return null;
  }

  static List<RoleMapping> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <RoleMapping>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RoleMapping.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, RoleMapping> mapFromJson(dynamic json) {
    final map = <String, RoleMapping>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RoleMapping.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of RoleMapping-objects as value to a dart map
  static Map<String, List<RoleMapping>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<RoleMapping>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = RoleMapping.listFromJson(
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
