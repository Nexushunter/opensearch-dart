//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class DistinguishedNames {
  /// Returns a new [DistinguishedNames] instance.
  DistinguishedNames({
    this.nodesDn = const [],
  });

  List<String> nodesDn;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is DistinguishedNames && other.nodesDn == nodesDn;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (nodesDn.hashCode);

  @override
  String toString() => 'DistinguishedNames[nodesDn=$nodesDn]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'nodes_dn'] = this.nodesDn;
    return json;
  }

  /// Returns a new [DistinguishedNames] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DistinguishedNames? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "DistinguishedNames[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "DistinguishedNames[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return DistinguishedNames(
        nodesDn: json[r'nodes_dn'] is List
            ? (json[r'nodes_dn'] as List).cast<String>()
            : const [],
      );
    }
    return null;
  }

  static List<DistinguishedNames> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <DistinguishedNames>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DistinguishedNames.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DistinguishedNames> mapFromJson(dynamic json) {
    final map = <String, DistinguishedNames>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DistinguishedNames.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DistinguishedNames-objects as value to a dart map
  static Map<String, List<DistinguishedNames>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<DistinguishedNames>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = DistinguishedNames.listFromJson(
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
