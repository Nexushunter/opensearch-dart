//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class SearchBodyParams {
  /// Returns a new [SearchBodyParams] instance.
  SearchBodyParams({
    this.docvalueFields,
    this.explain,
    this.from,
    this.seqNoPrimaryTerm,
    this.size,
    this.source_,
    this.stats,
    this.terminateAfter,
    this.timeout,
    this.version,
    this.fields = const [],
    this.minScore,
    this.indicesBoost = const [],
    this.query,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? docvalueFields;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? explain;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? from;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? seqNoPrimaryTerm;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? size;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? source_;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? stats;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? terminateAfter;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Time? timeout;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? version;

  List<String> fields;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? minScore;

  List<Object> indicesBoost;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  UserDefinedObjectStructure? query;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SearchBodyParams &&
          other.docvalueFields == docvalueFields &&
          other.explain == explain &&
          other.from == from &&
          other.seqNoPrimaryTerm == seqNoPrimaryTerm &&
          other.size == size &&
          other.source_ == source_ &&
          other.stats == stats &&
          other.terminateAfter == terminateAfter &&
          other.timeout == timeout &&
          other.version == version &&
          other.fields == fields &&
          other.minScore == minScore &&
          other.indicesBoost == indicesBoost &&
          other.query == query;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (docvalueFields == null ? 0 : docvalueFields!.hashCode) +
      (explain == null ? 0 : explain!.hashCode) +
      (from == null ? 0 : from!.hashCode) +
      (seqNoPrimaryTerm == null ? 0 : seqNoPrimaryTerm!.hashCode) +
      (size == null ? 0 : size!.hashCode) +
      (source_ == null ? 0 : source_!.hashCode) +
      (stats == null ? 0 : stats!.hashCode) +
      (terminateAfter == null ? 0 : terminateAfter!.hashCode) +
      (timeout == null ? 0 : timeout!.hashCode) +
      (version == null ? 0 : version!.hashCode) +
      (fields.hashCode) +
      (minScore == null ? 0 : minScore!.hashCode) +
      (indicesBoost.hashCode) +
      (query == null ? 0 : query!.hashCode);

  @override
  String toString() =>
      'SearchBodyParams[docvalueFields=$docvalueFields, explain=$explain, from=$from, seqNoPrimaryTerm=$seqNoPrimaryTerm, size=$size, source_=$source_, stats=$stats, terminateAfter=$terminateAfter, timeout=$timeout, version=$version, fields=$fields, minScore=$minScore, indicesBoost=$indicesBoost, query=$query]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.docvalueFields != null) {
      json[r'docvalue_fields'] = this.docvalueFields;
    } else {
      json[r'docvalue_fields'] = null;
    }
    if (this.explain != null) {
      json[r'explain'] = this.explain;
    } else {
      json[r'explain'] = null;
    }
    if (this.from != null) {
      json[r'from'] = this.from;
    } else {
      json[r'from'] = null;
    }
    if (this.seqNoPrimaryTerm != null) {
      json[r'seq_no_primary_term'] = this.seqNoPrimaryTerm;
    } else {
      json[r'seq_no_primary_term'] = null;
    }
    if (this.size != null) {
      json[r'size'] = this.size;
    } else {
      json[r'size'] = null;
    }
    if (this.source_ != null) {
      json[r'source'] = this.source_;
    } else {
      json[r'source'] = null;
    }
    if (this.stats != null) {
      json[r'stats'] = this.stats;
    } else {
      json[r'stats'] = null;
    }
    if (this.terminateAfter != null) {
      json[r'terminate_after'] = this.terminateAfter;
    } else {
      json[r'terminate_after'] = null;
    }
    if (this.timeout != null) {
      json[r'timeout'] = this.timeout;
    } else {
      json[r'timeout'] = null;
    }
    if (this.version != null) {
      json[r'version'] = this.version;
    } else {
      json[r'version'] = null;
    }
    json[r'fields'] = this.fields;
    if (this.minScore != null) {
      json[r'min_score'] = this.minScore;
    } else {
      json[r'min_score'] = null;
    }
    json[r'indices_boost'] = this.indicesBoost;
    if (this.query != null) {
      json[r'query'] = this.query;
    } else {
      json[r'query'] = null;
    }
    return json;
  }

  /// Returns a new [SearchBodyParams] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SearchBodyParams? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "SearchBodyParams[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "SearchBodyParams[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SearchBodyParams(
        docvalueFields: mapValueOfType<String>(json, r'docvalue_fields'),
        explain: mapValueOfType<bool>(json, r'explain'),
        from: mapValueOfType<int>(json, r'from'),
        seqNoPrimaryTerm: mapValueOfType<bool>(json, r'seq_no_primary_term'),
        size: mapValueOfType<int>(json, r'size'),
        source_: mapValueOfType<String>(json, r'source'),
        stats: mapValueOfType<String>(json, r'stats'),
        terminateAfter: mapValueOfType<int>(json, r'terminate_after'),
        timeout: Time.fromJson(json[r'timeout']),
        version: mapValueOfType<bool>(json, r'version'),
        fields: json[r'fields'] is List
            ? (json[r'fields'] as List).cast<String>()
            : const [],
        minScore: mapValueOfType<int>(json, r'min_score'),
        indicesBoost: Object.listFromJson(json[r'indices_boost']),
        query: UserDefinedObjectStructure.fromJson(json[r'query']),
      );
    }
    return null;
  }

  static List<SearchBodyParams> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <SearchBodyParams>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SearchBodyParams.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SearchBodyParams> mapFromJson(dynamic json) {
    final map = <String, SearchBodyParams>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SearchBodyParams.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SearchBodyParams-objects as value to a dart map
  static Map<String, List<SearchBodyParams>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<SearchBodyParams>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SearchBodyParams.listFromJson(
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
