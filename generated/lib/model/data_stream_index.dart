//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class DataStreamIndex {
  /// Returns a new [DataStreamIndex] instance.
  DataStreamIndex({
    this.indexName,
    this.indexUuid,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? indexName;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? indexUuid;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is DataStreamIndex &&
          other.indexName == indexName &&
          other.indexUuid == indexUuid;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (indexName == null ? 0 : indexName!.hashCode) +
      (indexUuid == null ? 0 : indexUuid!.hashCode);

  @override
  String toString() =>
      'DataStreamIndex[indexName=$indexName, indexUuid=$indexUuid]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.indexName != null) {
      json[r'index_name'] = this.indexName;
    } else {
      json[r'index_name'] = null;
    }
    if (this.indexUuid != null) {
      json[r'index_uuid'] = this.indexUuid;
    } else {
      json[r'index_uuid'] = null;
    }
    return json;
  }

  /// Returns a new [DataStreamIndex] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DataStreamIndex? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "DataStreamIndex[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "DataStreamIndex[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return DataStreamIndex(
        indexName: mapValueOfType<String>(json, r'index_name'),
        indexUuid: mapValueOfType<String>(json, r'index_uuid'),
      );
    }
    return null;
  }

  static List<DataStreamIndex> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <DataStreamIndex>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DataStreamIndex.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DataStreamIndex> mapFromJson(dynamic json) {
    final map = <String, DataStreamIndex>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DataStreamIndex.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DataStreamIndex-objects as value to a dart map
  static Map<String, List<DataStreamIndex>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<DataStreamIndex>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = DataStreamIndex.listFromJson(
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
