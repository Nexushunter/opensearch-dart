//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class PitDetail {
  /// Returns a new [PitDetail] instance.
  PitDetail({
    this.pitId,
    this.creationTime,
    this.keepAlive,
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
  int? creationTime;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? keepAlive;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PitDetail &&
          other.pitId == pitId &&
          other.creationTime == creationTime &&
          other.keepAlive == keepAlive;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (pitId == null ? 0 : pitId!.hashCode) +
      (creationTime == null ? 0 : creationTime!.hashCode) +
      (keepAlive == null ? 0 : keepAlive!.hashCode);

  @override
  String toString() =>
      'PitDetail[pitId=$pitId, creationTime=$creationTime, keepAlive=$keepAlive]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.pitId != null) {
      json[r'pit_id'] = this.pitId;
    } else {
      json[r'pit_id'] = null;
    }
    if (this.creationTime != null) {
      json[r'creation_time'] = this.creationTime;
    } else {
      json[r'creation_time'] = null;
    }
    if (this.keepAlive != null) {
      json[r'keep_alive'] = this.keepAlive;
    } else {
      json[r'keep_alive'] = null;
    }
    return json;
  }

  /// Returns a new [PitDetail] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PitDetail? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "PitDetail[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "PitDetail[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return PitDetail(
        pitId: mapValueOfType<String>(json, r'pit_id'),
        creationTime: mapValueOfType<int>(json, r'creation_time'),
        keepAlive: mapValueOfType<int>(json, r'keep_alive'),
      );
    }
    return null;
  }

  static List<PitDetail> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <PitDetail>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PitDetail.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PitDetail> mapFromJson(dynamic json) {
    final map = <String, PitDetail>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PitDetail.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PitDetail-objects as value to a dart map
  static Map<String, List<PitDetail>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<PitDetail>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PitDetail.listFromJson(
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
