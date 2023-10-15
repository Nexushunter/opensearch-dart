//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class GetResponseContent {
  /// Returns a new [GetResponseContent] instance.
  GetResponseContent({
    required this.index,
    required this.id,
    required this.found,
    this.type,
    this.version,
    this.seqNo,
    this.primaryTerm,
    this.routing,
    this.source_ = const {},
    this.fields = const {},
  });

  String index;

  String id;

  bool found;

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
  int? version;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? seqNo;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? primaryTerm;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? routing;

  Map<String, Object> source_;

  Map<String, Object> fields;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is GetResponseContent &&
          other.index == index &&
          other.id == id &&
          other.found == found &&
          other.type == type &&
          other.version == version &&
          other.seqNo == seqNo &&
          other.primaryTerm == primaryTerm &&
          other.routing == routing &&
          other.source_ == source_ &&
          other.fields == fields;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (index.hashCode) +
      (id.hashCode) +
      (found.hashCode) +
      (type == null ? 0 : type!.hashCode) +
      (version == null ? 0 : version!.hashCode) +
      (seqNo == null ? 0 : seqNo!.hashCode) +
      (primaryTerm == null ? 0 : primaryTerm!.hashCode) +
      (routing == null ? 0 : routing!.hashCode) +
      (source_.hashCode) +
      (fields.hashCode);

  @override
  String toString() =>
      'GetResponseContent[index=$index, id=$id, found=$found, type=$type, version=$version, seqNo=$seqNo, primaryTerm=$primaryTerm, routing=$routing, source_=$source_, fields=$fields]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'_index'] = this.index;
    json[r'_id'] = this.id;
    json[r'found'] = this.found;
    if (this.type != null) {
      json[r'_type'] = this.type;
    } else {
      json[r'_type'] = null;
    }
    if (this.version != null) {
      json[r'version'] = this.version;
    } else {
      json[r'version'] = null;
    }
    if (this.seqNo != null) {
      json[r'seq_no'] = this.seqNo;
    } else {
      json[r'seq_no'] = null;
    }
    if (this.primaryTerm != null) {
      json[r'primary_term'] = this.primaryTerm;
    } else {
      json[r'primary_term'] = null;
    }
    if (this.routing != null) {
      json[r'_routing'] = this.routing;
    } else {
      json[r'_routing'] = null;
    }
    json[r'_source'] = this.source_;
    json[r'_fields'] = this.fields;
    return json;
  }

  /// Returns a new [GetResponseContent] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GetResponseContent? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "GetResponseContent[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "GetResponseContent[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return GetResponseContent(
        index: mapValueOfType<String>(json, r'_index')!,
        id: mapValueOfType<String>(json, r'_id')!,
        found: mapValueOfType<bool>(json, r'found')!,
        type: mapValueOfType<String>(json, r'_type'),
        version: mapValueOfType<int>(json, r'version'),
        seqNo: mapValueOfType<int>(json, r'seq_no'),
        primaryTerm: mapValueOfType<int>(json, r'primary_term'),
        routing: mapValueOfType<String>(json, r'_routing'),
        source_: mapCastOfType<String, Object>(json, r'_source') ?? const {},
        fields: mapCastOfType<String, Object>(json, r'_fields') ?? const {},
      );
    }
    return null;
  }

  static List<GetResponseContent> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <GetResponseContent>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GetResponseContent.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, GetResponseContent> mapFromJson(dynamic json) {
    final map = <String, GetResponseContent>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GetResponseContent.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of GetResponseContent-objects as value to a dart map
  static Map<String, List<GetResponseContent>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<GetResponseContent>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = GetResponseContent.listFromJson(
          entry.value,
          growable: growable,
        );
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    '_index',
    '_id',
    'found',
  };
}
