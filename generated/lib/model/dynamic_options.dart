//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class DynamicOptions {
  /// Returns a new [DynamicOptions] instance.
  DynamicOptions({
    this.filteredAliasMode,
    this.disableRestAuth,
    this.disableIntertransportAuth,
    this.respectRequestIndicesOptions,
    this.kibana,
    this.http,
    this.authc,
    this.authz,
    this.authFailureListeners,
    this.doNotFailOnForbidden,
    this.multiRolespanEnabled,
    this.hostsResolverMode,
    this.doNotFailOnForbiddenEmpty,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? filteredAliasMode;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? disableRestAuth;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? disableIntertransportAuth;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? respectRequestIndicesOptions;

  Object? kibana;

  Object? http;

  Object? authc;

  Object? authz;

  Object? authFailureListeners;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? doNotFailOnForbidden;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? multiRolespanEnabled;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? hostsResolverMode;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? doNotFailOnForbiddenEmpty;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is DynamicOptions &&
          other.filteredAliasMode == filteredAliasMode &&
          other.disableRestAuth == disableRestAuth &&
          other.disableIntertransportAuth == disableIntertransportAuth &&
          other.respectRequestIndicesOptions == respectRequestIndicesOptions &&
          other.kibana == kibana &&
          other.http == http &&
          other.authc == authc &&
          other.authz == authz &&
          other.authFailureListeners == authFailureListeners &&
          other.doNotFailOnForbidden == doNotFailOnForbidden &&
          other.multiRolespanEnabled == multiRolespanEnabled &&
          other.hostsResolverMode == hostsResolverMode &&
          other.doNotFailOnForbiddenEmpty == doNotFailOnForbiddenEmpty;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (filteredAliasMode == null ? 0 : filteredAliasMode!.hashCode) +
      (disableRestAuth == null ? 0 : disableRestAuth!.hashCode) +
      (disableIntertransportAuth == null
          ? 0
          : disableIntertransportAuth!.hashCode) +
      (respectRequestIndicesOptions == null
          ? 0
          : respectRequestIndicesOptions!.hashCode) +
      (kibana == null ? 0 : kibana!.hashCode) +
      (http == null ? 0 : http!.hashCode) +
      (authc == null ? 0 : authc!.hashCode) +
      (authz == null ? 0 : authz!.hashCode) +
      (authFailureListeners == null ? 0 : authFailureListeners!.hashCode) +
      (doNotFailOnForbidden == null ? 0 : doNotFailOnForbidden!.hashCode) +
      (multiRolespanEnabled == null ? 0 : multiRolespanEnabled!.hashCode) +
      (hostsResolverMode == null ? 0 : hostsResolverMode!.hashCode) +
      (doNotFailOnForbiddenEmpty == null
          ? 0
          : doNotFailOnForbiddenEmpty!.hashCode);

  @override
  String toString() =>
      'DynamicOptions[filteredAliasMode=$filteredAliasMode, disableRestAuth=$disableRestAuth, disableIntertransportAuth=$disableIntertransportAuth, respectRequestIndicesOptions=$respectRequestIndicesOptions, kibana=$kibana, http=$http, authc=$authc, authz=$authz, authFailureListeners=$authFailureListeners, doNotFailOnForbidden=$doNotFailOnForbidden, multiRolespanEnabled=$multiRolespanEnabled, hostsResolverMode=$hostsResolverMode, doNotFailOnForbiddenEmpty=$doNotFailOnForbiddenEmpty]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.filteredAliasMode != null) {
      json[r'filteredAliasMode'] = this.filteredAliasMode;
    } else {
      json[r'filteredAliasMode'] = null;
    }
    if (this.disableRestAuth != null) {
      json[r'disableRestAuth'] = this.disableRestAuth;
    } else {
      json[r'disableRestAuth'] = null;
    }
    if (this.disableIntertransportAuth != null) {
      json[r'disableIntertransportAuth'] = this.disableIntertransportAuth;
    } else {
      json[r'disableIntertransportAuth'] = null;
    }
    if (this.respectRequestIndicesOptions != null) {
      json[r'respectRequestIndicesOptions'] = this.respectRequestIndicesOptions;
    } else {
      json[r'respectRequestIndicesOptions'] = null;
    }
    if (this.kibana != null) {
      json[r'kibana'] = this.kibana;
    } else {
      json[r'kibana'] = null;
    }
    if (this.http != null) {
      json[r'http'] = this.http;
    } else {
      json[r'http'] = null;
    }
    if (this.authc != null) {
      json[r'authc'] = this.authc;
    } else {
      json[r'authc'] = null;
    }
    if (this.authz != null) {
      json[r'authz'] = this.authz;
    } else {
      json[r'authz'] = null;
    }
    if (this.authFailureListeners != null) {
      json[r'authFailureListeners'] = this.authFailureListeners;
    } else {
      json[r'authFailureListeners'] = null;
    }
    if (this.doNotFailOnForbidden != null) {
      json[r'doNotFailOnForbidden'] = this.doNotFailOnForbidden;
    } else {
      json[r'doNotFailOnForbidden'] = null;
    }
    if (this.multiRolespanEnabled != null) {
      json[r'multiRolespanEnabled'] = this.multiRolespanEnabled;
    } else {
      json[r'multiRolespanEnabled'] = null;
    }
    if (this.hostsResolverMode != null) {
      json[r'hostsResolverMode'] = this.hostsResolverMode;
    } else {
      json[r'hostsResolverMode'] = null;
    }
    if (this.doNotFailOnForbiddenEmpty != null) {
      json[r'doNotFailOnForbiddenEmpty'] = this.doNotFailOnForbiddenEmpty;
    } else {
      json[r'doNotFailOnForbiddenEmpty'] = null;
    }
    return json;
  }

  /// Returns a new [DynamicOptions] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DynamicOptions? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "DynamicOptions[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "DynamicOptions[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return DynamicOptions(
        filteredAliasMode: mapValueOfType<String>(json, r'filteredAliasMode'),
        disableRestAuth: mapValueOfType<bool>(json, r'disableRestAuth'),
        disableIntertransportAuth:
            mapValueOfType<bool>(json, r'disableIntertransportAuth'),
        respectRequestIndicesOptions:
            mapValueOfType<bool>(json, r'respectRequestIndicesOptions'),
        kibana: mapValueOfType<Object>(json, r'kibana'),
        http: mapValueOfType<Object>(json, r'http'),
        authc: mapValueOfType<Object>(json, r'authc'),
        authz: mapValueOfType<Object>(json, r'authz'),
        authFailureListeners:
            mapValueOfType<Object>(json, r'authFailureListeners'),
        doNotFailOnForbidden:
            mapValueOfType<bool>(json, r'doNotFailOnForbidden'),
        multiRolespanEnabled:
            mapValueOfType<bool>(json, r'multiRolespanEnabled'),
        hostsResolverMode: mapValueOfType<String>(json, r'hostsResolverMode'),
        doNotFailOnForbiddenEmpty:
            mapValueOfType<bool>(json, r'doNotFailOnForbiddenEmpty'),
      );
    }
    return null;
  }

  static List<DynamicOptions> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <DynamicOptions>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DynamicOptions.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DynamicOptions> mapFromJson(dynamic json) {
    final map = <String, DynamicOptions>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DynamicOptions.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DynamicOptions-objects as value to a dart map
  static Map<String, List<DynamicOptions>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<DynamicOptions>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = DynamicOptions.listFromJson(
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
