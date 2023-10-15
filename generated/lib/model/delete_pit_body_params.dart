//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class DeletePitBodyParams {
  /// Returns a new [DeletePitBodyParams] instance.
  DeletePitBodyParams({
    this.pitId = const [],
  });

  List<String> pitId;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is DeletePitBodyParams && other.pitId == pitId;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (pitId.hashCode);

  @override
  String toString() => 'DeletePitBodyParams[pitId=$pitId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'pit_id'] = this.pitId;
    return json;
  }

  /// Returns a new [DeletePitBodyParams] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DeletePitBodyParams? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "DeletePitBodyParams[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "DeletePitBodyParams[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return DeletePitBodyParams(
        pitId: json[r'pit_id'] is List
            ? (json[r'pit_id'] as List).cast<String>()
            : const [],
      );
    }
    return null;
  }

  static List<DeletePitBodyParams> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <DeletePitBodyParams>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DeletePitBodyParams.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DeletePitBodyParams> mapFromJson(dynamic json) {
    final map = <String, DeletePitBodyParams>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DeletePitBodyParams.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DeletePitBodyParams-objects as value to a dart map
  static Map<String, List<DeletePitBodyParams>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<DeletePitBodyParams>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = DeletePitBodyParams.listFromJson(
          entry.value,
          growable: growable,
        );
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'pit_id',
  };
}
