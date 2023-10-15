//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CreatePitResponseContent {
  /// Returns a new [CreatePitResponseContent] instance.
  CreatePitResponseContent({
    this.pitId,
    this.shard,
    this.creationTime,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? pitId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  ShardStatistics? shard;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? creationTime;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CreatePitResponseContent &&
          other.pitId == pitId &&
          other.shard == shard &&
          other.creationTime == creationTime;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (pitId == null ? 0 : pitId!.hashCode) +
      (shard == null ? 0 : shard!.hashCode) +
      (creationTime == null ? 0 : creationTime!.hashCode);

  @override
  String toString() =>
      'CreatePitResponseContent[pitId=$pitId, shard=$shard, creationTime=$creationTime]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.pitId != null) {
      json[r'pit_id'] = this.pitId;
    } else {
      json[r'pit_id'] = null;
    }
    if (this.shard != null) {
      json[r'_shard'] = this.shard;
    } else {
      json[r'_shard'] = null;
    }
    if (this.creationTime != null) {
      json[r'creation_time'] = this.creationTime;
    } else {
      json[r'creation_time'] = null;
    }
    return json;
  }

  /// Returns a new [CreatePitResponseContent] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CreatePitResponseContent? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "CreatePitResponseContent[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "CreatePitResponseContent[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CreatePitResponseContent(
        pitId: mapValueOfType<String>(json, r'pit_id'),
        shard: ShardStatistics.fromJson(json[r'_shard']),
        creationTime: mapValueOfType<int>(json, r'creation_time'),
      );
    }
    return null;
  }

  static List<CreatePitResponseContent> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <CreatePitResponseContent>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreatePitResponseContent.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CreatePitResponseContent> mapFromJson(dynamic json) {
    final map = <String, CreatePitResponseContent>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CreatePitResponseContent.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CreatePitResponseContent-objects as value to a dart map
  static Map<String, List<CreatePitResponseContent>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<CreatePitResponseContent>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CreatePitResponseContent.listFromJson(
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
