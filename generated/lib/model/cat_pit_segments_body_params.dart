//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CatPitSegmentsBodyParams {
  /// Returns a new [CatPitSegmentsBodyParams] instance.
  CatPitSegmentsBodyParams({
    this.pitId = const [],
  });

  List<String> pitId;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CatPitSegmentsBodyParams && other.pitId == pitId;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (pitId.hashCode);

  @override
  String toString() => 'CatPitSegmentsBodyParams[pitId=$pitId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'pit_id'] = this.pitId;
    return json;
  }

  /// Returns a new [CatPitSegmentsBodyParams] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CatPitSegmentsBodyParams? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "CatPitSegmentsBodyParams[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "CatPitSegmentsBodyParams[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CatPitSegmentsBodyParams(
        pitId: json[r'pit_id'] is List
            ? (json[r'pit_id'] as List).cast<String>()
            : const [],
      );
    }
    return null;
  }

  static List<CatPitSegmentsBodyParams> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <CatPitSegmentsBodyParams>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CatPitSegmentsBodyParams.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CatPitSegmentsBodyParams> mapFromJson(dynamic json) {
    final map = <String, CatPitSegmentsBodyParams>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CatPitSegmentsBodyParams.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CatPitSegmentsBodyParams-objects as value to a dart map
  static Map<String, List<CatPitSegmentsBodyParams>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<CatPitSegmentsBodyParams>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CatPitSegmentsBodyParams.listFromJson(
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
