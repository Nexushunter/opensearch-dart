//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class AccountDetails {
  /// Returns a new [AccountDetails] instance.
  AccountDetails({
    this.userName,
    this.isReserved,
    this.isHidden,
    this.isInternalUser,
    this.userRequestedTenant,
    this.backendRoles = const [],
    this.customAttributeNames = const [],
    this.tenants,
    this.roles = const [],
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? userName;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isReserved;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isHidden;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isInternalUser;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? userRequestedTenant;

  List<String> backendRoles;

  List<String> customAttributeNames;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  UserTenants? tenants;

  List<String> roles;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AccountDetails &&
          other.userName == userName &&
          other.isReserved == isReserved &&
          other.isHidden == isHidden &&
          other.isInternalUser == isInternalUser &&
          other.userRequestedTenant == userRequestedTenant &&
          other.backendRoles == backendRoles &&
          other.customAttributeNames == customAttributeNames &&
          other.tenants == tenants &&
          other.roles == roles;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (userName == null ? 0 : userName!.hashCode) +
      (isReserved == null ? 0 : isReserved!.hashCode) +
      (isHidden == null ? 0 : isHidden!.hashCode) +
      (isInternalUser == null ? 0 : isInternalUser!.hashCode) +
      (userRequestedTenant == null ? 0 : userRequestedTenant!.hashCode) +
      (backendRoles.hashCode) +
      (customAttributeNames.hashCode) +
      (tenants == null ? 0 : tenants!.hashCode) +
      (roles.hashCode);

  @override
  String toString() =>
      'AccountDetails[userName=$userName, isReserved=$isReserved, isHidden=$isHidden, isInternalUser=$isInternalUser, userRequestedTenant=$userRequestedTenant, backendRoles=$backendRoles, customAttributeNames=$customAttributeNames, tenants=$tenants, roles=$roles]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.userName != null) {
      json[r'user_name'] = this.userName;
    } else {
      json[r'user_name'] = null;
    }
    if (this.isReserved != null) {
      json[r'is_reserved'] = this.isReserved;
    } else {
      json[r'is_reserved'] = null;
    }
    if (this.isHidden != null) {
      json[r'is_hidden'] = this.isHidden;
    } else {
      json[r'is_hidden'] = null;
    }
    if (this.isInternalUser != null) {
      json[r'is_internal_user'] = this.isInternalUser;
    } else {
      json[r'is_internal_user'] = null;
    }
    if (this.userRequestedTenant != null) {
      json[r'user_requested_tenant'] = this.userRequestedTenant;
    } else {
      json[r'user_requested_tenant'] = null;
    }
    json[r'backend_roles'] = this.backendRoles;
    json[r'custom_attribute_names'] = this.customAttributeNames;
    if (this.tenants != null) {
      json[r'tenants'] = this.tenants;
    } else {
      json[r'tenants'] = null;
    }
    json[r'roles'] = this.roles;
    return json;
  }

  /// Returns a new [AccountDetails] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AccountDetails? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "AccountDetails[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "AccountDetails[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AccountDetails(
        userName: mapValueOfType<String>(json, r'user_name'),
        isReserved: mapValueOfType<bool>(json, r'is_reserved'),
        isHidden: mapValueOfType<bool>(json, r'is_hidden'),
        isInternalUser: mapValueOfType<bool>(json, r'is_internal_user'),
        userRequestedTenant:
            mapValueOfType<String>(json, r'user_requested_tenant'),
        backendRoles: json[r'backend_roles'] is List
            ? (json[r'backend_roles'] as List).cast<String>()
            : const [],
        customAttributeNames: json[r'custom_attribute_names'] is List
            ? (json[r'custom_attribute_names'] as List).cast<String>()
            : const [],
        tenants: UserTenants.fromJson(json[r'tenants']),
        roles: json[r'roles'] is List
            ? (json[r'roles'] as List).cast<String>()
            : const [],
      );
    }
    return null;
  }

  static List<AccountDetails> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <AccountDetails>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AccountDetails.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AccountDetails> mapFromJson(dynamic json) {
    final map = <String, AccountDetails>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AccountDetails.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AccountDetails-objects as value to a dart map
  static Map<String, List<AccountDetails>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<AccountDetails>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AccountDetails.listFromJson(
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
