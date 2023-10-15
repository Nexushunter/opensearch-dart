//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class UserTenants {
  /// Returns a new [UserTenants] instance.
  UserTenants({
    this.globalTenant,
    this.adminTenant,
    this.admin,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? globalTenant;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? adminTenant;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? admin;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is UserTenants &&
          other.globalTenant == globalTenant &&
          other.adminTenant == adminTenant &&
          other.admin == admin;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (globalTenant == null ? 0 : globalTenant!.hashCode) +
      (adminTenant == null ? 0 : adminTenant!.hashCode) +
      (admin == null ? 0 : admin!.hashCode);

  @override
  String toString() =>
      'UserTenants[globalTenant=$globalTenant, adminTenant=$adminTenant, admin=$admin]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.globalTenant != null) {
      json[r'global_tenant'] = this.globalTenant;
    } else {
      json[r'global_tenant'] = null;
    }
    if (this.adminTenant != null) {
      json[r'admin_tenant'] = this.adminTenant;
    } else {
      json[r'admin_tenant'] = null;
    }
    if (this.admin != null) {
      json[r'admin'] = this.admin;
    } else {
      json[r'admin'] = null;
    }
    return json;
  }

  /// Returns a new [UserTenants] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static UserTenants? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "UserTenants[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "UserTenants[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return UserTenants(
        globalTenant: mapValueOfType<bool>(json, r'global_tenant'),
        adminTenant: mapValueOfType<bool>(json, r'admin_tenant'),
        admin: mapValueOfType<bool>(json, r'admin'),
      );
    }
    return null;
  }

  static List<UserTenants> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <UserTenants>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UserTenants.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, UserTenants> mapFromJson(dynamic json) {
    final map = <String, UserTenants>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = UserTenants.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of UserTenants-objects as value to a dart map
  static Map<String, List<UserTenants>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<UserTenants>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = UserTenants.listFromJson(
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
