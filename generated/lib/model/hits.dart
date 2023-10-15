//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Hits {
  /// Returns a new [Hits] instance.
  Hits({
    this.index,
    this.type,
    this.id,
    this.score,
    this.source_,
    this.fields,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? index;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? type;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? score;

  Object? source_;

  Object? fields;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Hits &&
          other.index == index &&
          other.type == type &&
          other.id == id &&
          other.score == score &&
          other.source_ == source_ &&
          other.fields == fields;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (index == null ? 0 : index!.hashCode) +
      (type == null ? 0 : type!.hashCode) +
      (id == null ? 0 : id!.hashCode) +
      (score == null ? 0 : score!.hashCode) +
      (source_ == null ? 0 : source_!.hashCode) +
      (fields == null ? 0 : fields!.hashCode);

  @override
  String toString() =>
      'Hits[index=$index, type=$type, id=$id, score=$score, source_=$source_, fields=$fields]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.index != null) {
      json[r'_index'] = this.index;
    } else {
      json[r'_index'] = null;
    }
    if (this.type != null) {
      json[r'_type'] = this.type;
    } else {
      json[r'_type'] = null;
    }
    if (this.id != null) {
      json[r'_id'] = this.id;
    } else {
      json[r'_id'] = null;
    }
    if (this.score != null) {
      json[r'_score'] = this.score;
    } else {
      json[r'_score'] = null;
    }
    if (this.source_ != null) {
      json[r'_source'] = this.source_;
    } else {
      json[r'_source'] = null;
    }
    if (this.fields != null) {
      json[r'fields'] = this.fields;
    } else {
      json[r'fields'] = null;
    }
    return json;
  }

  /// Returns a new [Hits] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Hits? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "Hits[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "Hits[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Hits(
        index: mapValueOfType<String>(json, r'_index'),
        type: mapValueOfType<String>(json, r'_type'),
        id: mapValueOfType<String>(json, r'_id'),
        score: mapValueOfType<double>(json, r'_score'),
        source_: mapValueOfType<Object>(json, r'_source'),
        fields: mapValueOfType<Object>(json, r'fields'),
      );
    }
    return null;
  }

  static List<Hits> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <Hits>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Hits.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Hits> mapFromJson(dynamic json) {
    final map = <String, Hits>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Hits.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Hits-objects as value to a dart map
  static Map<String, List<Hits>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<Hits>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Hits.listFromJson(
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
