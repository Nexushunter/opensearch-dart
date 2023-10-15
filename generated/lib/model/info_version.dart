//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class InfoVersion {
  /// Returns a new [InfoVersion] instance.
  InfoVersion({
    this.distribution,
    this.number,
    this.buildType,
    this.buildHash,
    this.buildDate,
    this.buildSnapshot,
    this.luceneVersion,
    this.minimumWireCompatibilityVersion,
    this.minimumIndexCompatibilityVersion,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? distribution;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? number;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? buildType;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? buildHash;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? buildDate;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? buildSnapshot;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? luceneVersion;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? minimumWireCompatibilityVersion;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? minimumIndexCompatibilityVersion;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is InfoVersion &&
          other.distribution == distribution &&
          other.number == number &&
          other.buildType == buildType &&
          other.buildHash == buildHash &&
          other.buildDate == buildDate &&
          other.buildSnapshot == buildSnapshot &&
          other.luceneVersion == luceneVersion &&
          other.minimumWireCompatibilityVersion ==
              minimumWireCompatibilityVersion &&
          other.minimumIndexCompatibilityVersion ==
              minimumIndexCompatibilityVersion;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (distribution == null ? 0 : distribution!.hashCode) +
      (number == null ? 0 : number!.hashCode) +
      (buildType == null ? 0 : buildType!.hashCode) +
      (buildHash == null ? 0 : buildHash!.hashCode) +
      (buildDate == null ? 0 : buildDate!.hashCode) +
      (buildSnapshot == null ? 0 : buildSnapshot!.hashCode) +
      (luceneVersion == null ? 0 : luceneVersion!.hashCode) +
      (minimumWireCompatibilityVersion == null
          ? 0
          : minimumWireCompatibilityVersion!.hashCode) +
      (minimumIndexCompatibilityVersion == null
          ? 0
          : minimumIndexCompatibilityVersion!.hashCode);

  @override
  String toString() =>
      'InfoVersion[distribution=$distribution, number=$number, buildType=$buildType, buildHash=$buildHash, buildDate=$buildDate, buildSnapshot=$buildSnapshot, luceneVersion=$luceneVersion, minimumWireCompatibilityVersion=$minimumWireCompatibilityVersion, minimumIndexCompatibilityVersion=$minimumIndexCompatibilityVersion]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.distribution != null) {
      json[r'distribution'] = this.distribution;
    } else {
      json[r'distribution'] = null;
    }
    if (this.number != null) {
      json[r'number'] = this.number;
    } else {
      json[r'number'] = null;
    }
    if (this.buildType != null) {
      json[r'build_type'] = this.buildType;
    } else {
      json[r'build_type'] = null;
    }
    if (this.buildHash != null) {
      json[r'build_hash'] = this.buildHash;
    } else {
      json[r'build_hash'] = null;
    }
    if (this.buildDate != null) {
      json[r'build_date'] = this.buildDate;
    } else {
      json[r'build_date'] = null;
    }
    if (this.buildSnapshot != null) {
      json[r'build_snapshot'] = this.buildSnapshot;
    } else {
      json[r'build_snapshot'] = null;
    }
    if (this.luceneVersion != null) {
      json[r'lucene_version'] = this.luceneVersion;
    } else {
      json[r'lucene_version'] = null;
    }
    if (this.minimumWireCompatibilityVersion != null) {
      json[r'minimum_wire_compatibility_version'] =
          this.minimumWireCompatibilityVersion;
    } else {
      json[r'minimum_wire_compatibility_version'] = null;
    }
    if (this.minimumIndexCompatibilityVersion != null) {
      json[r'minimum_index_compatibility_version'] =
          this.minimumIndexCompatibilityVersion;
    } else {
      json[r'minimum_index_compatibility_version'] = null;
    }
    return json;
  }

  /// Returns a new [InfoVersion] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static InfoVersion? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "InfoVersion[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "InfoVersion[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return InfoVersion(
        distribution: mapValueOfType<String>(json, r'distribution'),
        number: mapValueOfType<String>(json, r'number'),
        buildType: mapValueOfType<String>(json, r'build_type'),
        buildHash: mapValueOfType<String>(json, r'build_hash'),
        buildDate: mapValueOfType<String>(json, r'build_date'),
        buildSnapshot: mapValueOfType<bool>(json, r'build_snapshot'),
        luceneVersion: mapValueOfType<String>(json, r'lucene_version'),
        minimumWireCompatibilityVersion:
            mapValueOfType<String>(json, r'minimum_wire_compatibility_version'),
        minimumIndexCompatibilityVersion: mapValueOfType<String>(
            json, r'minimum_index_compatibility_version'),
      );
    }
    return null;
  }

  static List<InfoVersion> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <InfoVersion>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = InfoVersion.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, InfoVersion> mapFromJson(dynamic json) {
    final map = <String, InfoVersion>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = InfoVersion.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of InfoVersion-objects as value to a dart map
  static Map<String, List<InfoVersion>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<InfoVersion>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = InfoVersion.listFromJson(
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
