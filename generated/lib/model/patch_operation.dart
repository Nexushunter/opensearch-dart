//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class PatchOperation {
  /// Returns a new [PatchOperation] instance.
  PatchOperation({
    required this.op,
    required this.path,
    this.value,
  });

  /// The operation to perform. Possible values: remove,add, replace, move, copy, test.
  String op;

  /// The path to the resource.
  String path;

  /// The new values used for the update.
  Object? value;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PatchOperation &&
          other.op == op &&
          other.path == path &&
          other.value == value;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (op.hashCode) + (path.hashCode) + (value == null ? 0 : value!.hashCode);

  @override
  String toString() => 'PatchOperation[op=$op, path=$path, value=$value]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'op'] = this.op;
    json[r'path'] = this.path;
    if (this.value != null) {
      json[r'value'] = this.value;
    } else {
      json[r'value'] = null;
    }
    return json;
  }

  /// Returns a new [PatchOperation] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PatchOperation? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "PatchOperation[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "PatchOperation[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return PatchOperation(
        op: mapValueOfType<String>(json, r'op')!,
        path: mapValueOfType<String>(json, r'path')!,
        value: mapValueOfType<Object>(json, r'value'),
      );
    }
    return null;
  }

  static List<PatchOperation> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <PatchOperation>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PatchOperation.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PatchOperation> mapFromJson(dynamic json) {
    final map = <String, PatchOperation>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PatchOperation.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PatchOperation-objects as value to a dart map
  static Map<String, List<PatchOperation>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<PatchOperation>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PatchOperation.listFromJson(
          entry.value,
          growable: growable,
        );
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'op',
    'path',
  };
}
