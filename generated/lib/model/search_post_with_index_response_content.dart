//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class SearchPostWithIndexResponseContent {
  /// Returns a new [SearchPostWithIndexResponseContent] instance.
  SearchPostWithIndexResponseContent({
    this.scrollId,
    this.took,
    this.timedOut,
    this.shards,
    this.hits,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? scrollId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? took;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? timedOut;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  ShardStatistics? shards;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  HitsMetadata? hits;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SearchPostWithIndexResponseContent &&
          other.scrollId == scrollId &&
          other.took == took &&
          other.timedOut == timedOut &&
          other.shards == shards &&
          other.hits == hits;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (scrollId == null ? 0 : scrollId!.hashCode) +
      (took == null ? 0 : took!.hashCode) +
      (timedOut == null ? 0 : timedOut!.hashCode) +
      (shards == null ? 0 : shards!.hashCode) +
      (hits == null ? 0 : hits!.hashCode);

  @override
  String toString() =>
      'SearchPostWithIndexResponseContent[scrollId=$scrollId, took=$took, timedOut=$timedOut, shards=$shards, hits=$hits]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.scrollId != null) {
      json[r'_scroll_id'] = this.scrollId;
    } else {
      json[r'_scroll_id'] = null;
    }
    if (this.took != null) {
      json[r'took'] = this.took;
    } else {
      json[r'took'] = null;
    }
    if (this.timedOut != null) {
      json[r'timed_out'] = this.timedOut;
    } else {
      json[r'timed_out'] = null;
    }
    if (this.shards != null) {
      json[r'_shards'] = this.shards;
    } else {
      json[r'_shards'] = null;
    }
    if (this.hits != null) {
      json[r'hits'] = this.hits;
    } else {
      json[r'hits'] = null;
    }
    return json;
  }

  /// Returns a new [SearchPostWithIndexResponseContent] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SearchPostWithIndexResponseContent? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "SearchPostWithIndexResponseContent[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "SearchPostWithIndexResponseContent[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SearchPostWithIndexResponseContent(
        scrollId: mapValueOfType<String>(json, r'_scroll_id'),
        took: mapValueOfType<int>(json, r'took'),
        timedOut: mapValueOfType<bool>(json, r'timed_out'),
        shards: ShardStatistics.fromJson(json[r'_shards']),
        hits: HitsMetadata.fromJson(json[r'hits']),
      );
    }
    return null;
  }

  static List<SearchPostWithIndexResponseContent> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <SearchPostWithIndexResponseContent>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SearchPostWithIndexResponseContent.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SearchPostWithIndexResponseContent> mapFromJson(
      dynamic json) {
    final map = <String, SearchPostWithIndexResponseContent>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SearchPostWithIndexResponseContent.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SearchPostWithIndexResponseContent-objects as value to a dart map
  static Map<String, List<SearchPostWithIndexResponseContent>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<SearchPostWithIndexResponseContent>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SearchPostWithIndexResponseContent.listFromJson(
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
