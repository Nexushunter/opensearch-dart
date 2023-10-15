//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class DataStream {
  /// Returns a new [DataStream] instance.
  DataStream({
    this.name,
    this.timestampField,
    this.indices = const [],
    this.generation,
    this.status,
    this.template,
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
  DataStreamTimestampField? timestampField;

  List<DataStreamIndex> indices;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? generation;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DataStreamStatus? status;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? template;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is DataStream &&
          other.name == name &&
          other.timestampField == timestampField &&
          other.indices == indices &&
          other.generation == generation &&
          other.status == status &&
          other.template == template;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (name == null ? 0 : name!.hashCode) +
      (timestampField == null ? 0 : timestampField!.hashCode) +
      (indices.hashCode) +
      (generation == null ? 0 : generation!.hashCode) +
      (status == null ? 0 : status!.hashCode) +
      (template == null ? 0 : template!.hashCode);

  @override
  String toString() =>
      'DataStream[name=$name, timestampField=$timestampField, indices=$indices, generation=$generation, status=$status, template=$template]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.timestampField != null) {
      json[r'timestamp_field'] = this.timestampField;
    } else {
      json[r'timestamp_field'] = null;
    }
    json[r'indices'] = this.indices;
    if (this.generation != null) {
      json[r'generation'] = this.generation;
    } else {
      json[r'generation'] = null;
    }
    if (this.status != null) {
      json[r'status'] = this.status;
    } else {
      json[r'status'] = null;
    }
    if (this.template != null) {
      json[r'template'] = this.template;
    } else {
      json[r'template'] = null;
    }
    return json;
  }

  /// Returns a new [DataStream] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DataStream? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "DataStream[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "DataStream[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return DataStream(
        name: mapValueOfType<String>(json, r'name'),
        timestampField:
            DataStreamTimestampField.fromJson(json[r'timestamp_field']),
        indices: DataStreamIndex.listFromJson(json[r'indices']),
        generation: mapValueOfType<int>(json, r'generation'),
        status: DataStreamStatus.fromJson(json[r'status']),
        template: mapValueOfType<String>(json, r'template'),
      );
    }
    return null;
  }

  static List<DataStream> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <DataStream>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DataStream.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DataStream> mapFromJson(dynamic json) {
    final map = <String, DataStream>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DataStream.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DataStream-objects as value to a dart map
  static Map<String, List<DataStream>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<DataStream>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = DataStream.listFromJson(
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
