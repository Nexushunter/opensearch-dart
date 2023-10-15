//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class InfoResponseContent {
  /// Returns a new [InfoResponseContent] instance.
  InfoResponseContent({
    this.name,
    this.clusterName,
    this.clusterUuid,
    this.version,
    this.tagline,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? clusterName;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? clusterUuid;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  InfoVersion? version;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? tagline;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is InfoResponseContent &&
          other.name == name &&
          other.clusterName == clusterName &&
          other.clusterUuid == clusterUuid &&
          other.version == version &&
          other.tagline == tagline;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (name == null ? 0 : name!.hashCode) +
      (clusterName == null ? 0 : clusterName!.hashCode) +
      (clusterUuid == null ? 0 : clusterUuid!.hashCode) +
      (version == null ? 0 : version!.hashCode) +
      (tagline == null ? 0 : tagline!.hashCode);

  @override
  String toString() =>
      'InfoResponseContent[name=$name, clusterName=$clusterName, clusterUuid=$clusterUuid, version=$version, tagline=$tagline]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.clusterName != null) {
      json[r'cluster_name'] = this.clusterName;
    } else {
      json[r'cluster_name'] = null;
    }
    if (this.clusterUuid != null) {
      json[r'cluster_uuid'] = this.clusterUuid;
    } else {
      json[r'cluster_uuid'] = null;
    }
    if (this.version != null) {
      json[r'version'] = this.version;
    } else {
      json[r'version'] = null;
    }
    if (this.tagline != null) {
      json[r'tagline'] = this.tagline;
    } else {
      json[r'tagline'] = null;
    }
    return json;
  }

  /// Returns a new [InfoResponseContent] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static InfoResponseContent? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "InfoResponseContent[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "InfoResponseContent[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return InfoResponseContent(
        name: mapValueOfType<String>(json, r'name'),
        clusterName: mapValueOfType<String>(json, r'cluster_name'),
        clusterUuid: mapValueOfType<String>(json, r'cluster_uuid'),
        version: InfoVersion.fromJson(json[r'version']),
        tagline: mapValueOfType<String>(json, r'tagline'),
      );
    }
    return null;
  }

  static List<InfoResponseContent> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <InfoResponseContent>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = InfoResponseContent.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, InfoResponseContent> mapFromJson(dynamic json) {
    final map = <String, InfoResponseContent>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = InfoResponseContent.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of InfoResponseContent-objects as value to a dart map
  static Map<String, List<InfoResponseContent>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<InfoResponseContent>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = InfoResponseContent.listFromJson(
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
