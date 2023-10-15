//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class RemoteStoreRestoreInfo {
  /// Returns a new [RemoteStoreRestoreInfo] instance.
  RemoteStoreRestoreInfo({
    this.snapshot,
    this.indices = const [],
    this.shards,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? snapshot;

  List<String> indices;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  RemoteStoreRestoreShardsInfo? shards;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is RemoteStoreRestoreInfo &&
          other.snapshot == snapshot &&
          other.indices == indices &&
          other.shards == shards;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (snapshot == null ? 0 : snapshot!.hashCode) +
      (indices.hashCode) +
      (shards == null ? 0 : shards!.hashCode);

  @override
  String toString() =>
      'RemoteStoreRestoreInfo[snapshot=$snapshot, indices=$indices, shards=$shards]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.snapshot != null) {
      json[r'snapshot'] = this.snapshot;
    } else {
      json[r'snapshot'] = null;
    }
    json[r'indices'] = this.indices;
    if (this.shards != null) {
      json[r'shards'] = this.shards;
    } else {
      json[r'shards'] = null;
    }
    return json;
  }

  /// Returns a new [RemoteStoreRestoreInfo] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RemoteStoreRestoreInfo? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "RemoteStoreRestoreInfo[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "RemoteStoreRestoreInfo[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return RemoteStoreRestoreInfo(
        snapshot: mapValueOfType<String>(json, r'snapshot'),
        indices: json[r'indices'] is List
            ? (json[r'indices'] as List).cast<String>()
            : const [],
        shards: RemoteStoreRestoreShardsInfo.fromJson(json[r'shards']),
      );
    }
    return null;
  }

  static List<RemoteStoreRestoreInfo> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <RemoteStoreRestoreInfo>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RemoteStoreRestoreInfo.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, RemoteStoreRestoreInfo> mapFromJson(dynamic json) {
    final map = <String, RemoteStoreRestoreInfo>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RemoteStoreRestoreInfo.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of RemoteStoreRestoreInfo-objects as value to a dart map
  static Map<String, List<RemoteStoreRestoreInfo>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<RemoteStoreRestoreInfo>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = RemoteStoreRestoreInfo.listFromJson(
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
