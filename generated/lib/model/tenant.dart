//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Tenant {
  /// Returns a new [Tenant] instance.
  Tenant({
    this.reserved,
    this.hidden,
    this.description,
    this.static_,
  });

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

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? description;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? static_;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Tenant &&
          other.reserved == reserved &&
          other.hidden == hidden &&
          other.description == description &&
          other.static_ == static_;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (reserved == null ? 0 : reserved!.hashCode) +
      (hidden == null ? 0 : hidden!.hashCode) +
      (description == null ? 0 : description!.hashCode) +
      (static_ == null ? 0 : static_!.hashCode);

  @override
  String toString() =>
      'Tenant[reserved=$reserved, hidden=$hidden, description=$description, static_=$static_]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
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
    if (this.description != null) {
      json[r'description'] = this.description;
    } else {
      json[r'description'] = null;
    }
    if (this.static_ != null) {
      json[r'static'] = this.static_;
    } else {
      json[r'static'] = null;
    }
    return json;
  }

  /// Returns a new [Tenant] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Tenant? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "Tenant[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "Tenant[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Tenant(
        reserved: mapValueOfType<bool>(json, r'reserved'),
        hidden: mapValueOfType<bool>(json, r'hidden'),
        description: mapValueOfType<String>(json, r'description'),
        static_: mapValueOfType<bool>(json, r'static'),
      );
    }
    return null;
  }

  static List<Tenant> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <Tenant>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Tenant.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Tenant> mapFromJson(dynamic json) {
    final map = <String, Tenant>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Tenant.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Tenant-objects as value to a dart map
  static Map<String, List<Tenant>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<Tenant>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Tenant.listFromJson(
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
