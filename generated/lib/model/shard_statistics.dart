//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ShardStatistics {
  /// Returns a new [ShardStatistics] instance.
  ShardStatistics({
    this.total,
    this.successful,
    this.skipped,
    this.failed,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? total;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? successful;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? skipped;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? failed;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ShardStatistics &&
          other.total == total &&
          other.successful == successful &&
          other.skipped == skipped &&
          other.failed == failed;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (total == null ? 0 : total!.hashCode) +
      (successful == null ? 0 : successful!.hashCode) +
      (skipped == null ? 0 : skipped!.hashCode) +
      (failed == null ? 0 : failed!.hashCode);

  @override
  String toString() =>
      'ShardStatistics[total=$total, successful=$successful, skipped=$skipped, failed=$failed]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.total != null) {
      json[r'total'] = this.total;
    } else {
      json[r'total'] = null;
    }
    if (this.successful != null) {
      json[r'successful'] = this.successful;
    } else {
      json[r'successful'] = null;
    }
    if (this.skipped != null) {
      json[r'skipped'] = this.skipped;
    } else {
      json[r'skipped'] = null;
    }
    if (this.failed != null) {
      json[r'failed'] = this.failed;
    } else {
      json[r'failed'] = null;
    }
    return json;
  }

  /// Returns a new [ShardStatistics] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ShardStatistics? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "ShardStatistics[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "ShardStatistics[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ShardStatistics(
        total: mapValueOfType<int>(json, r'total'),
        successful: mapValueOfType<int>(json, r'successful'),
        skipped: mapValueOfType<int>(json, r'skipped'),
        failed: mapValueOfType<int>(json, r'failed'),
      );
    }
    return null;
  }

  static List<ShardStatistics> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <ShardStatistics>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ShardStatistics.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ShardStatistics> mapFromJson(dynamic json) {
    final map = <String, ShardStatistics>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ShardStatistics.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ShardStatistics-objects as value to a dart map
  static Map<String, List<ShardStatistics>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<ShardStatistics>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ShardStatistics.listFromJson(
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
