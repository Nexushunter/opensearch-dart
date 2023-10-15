//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class HitsMetadata {
  /// Returns a new [HitsMetadata] instance.
  HitsMetadata({
    this.total,
    this.maxScore,
    this.hits = const [],
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Total? total;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? maxScore;

  List<Hits> hits;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is HitsMetadata &&
          other.total == total &&
          other.maxScore == maxScore &&
          other.hits == hits;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (total == null ? 0 : total!.hashCode) +
      (maxScore == null ? 0 : maxScore!.hashCode) +
      (hits.hashCode);

  @override
  String toString() =>
      'HitsMetadata[total=$total, maxScore=$maxScore, hits=$hits]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.total != null) {
      json[r'total'] = this.total;
    } else {
      json[r'total'] = null;
    }
    if (this.maxScore != null) {
      json[r'max_score'] = this.maxScore;
    } else {
      json[r'max_score'] = null;
    }
    json[r'hits'] = this.hits;
    return json;
  }

  /// Returns a new [HitsMetadata] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static HitsMetadata? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "HitsMetadata[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "HitsMetadata[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return HitsMetadata(
        total: Total.fromJson(json[r'total']),
        maxScore: mapValueOfType<double>(json, r'max_score'),
        hits: Hits.listFromJson(json[r'hits']),
      );
    }
    return null;
  }

  static List<HitsMetadata> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <HitsMetadata>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = HitsMetadata.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, HitsMetadata> mapFromJson(dynamic json) {
    final map = <String, HitsMetadata>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = HitsMetadata.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of HitsMetadata-objects as value to a dart map
  static Map<String, List<HitsMetadata>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<HitsMetadata>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = HitsMetadata.listFromJson(
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
