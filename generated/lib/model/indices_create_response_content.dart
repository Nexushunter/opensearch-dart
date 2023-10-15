//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class IndicesCreateResponseContent {
  /// Returns a new [IndicesCreateResponseContent] instance.
  IndicesCreateResponseContent({
    required this.index,
    required this.shardsAcknowledged,
    required this.acknowledged,
  });

  String index;

  bool shardsAcknowledged;

  bool acknowledged;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is IndicesCreateResponseContent &&
          other.index == index &&
          other.shardsAcknowledged == shardsAcknowledged &&
          other.acknowledged == acknowledged;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (index.hashCode) +
      (shardsAcknowledged.hashCode) +
      (acknowledged.hashCode);

  @override
  String toString() =>
      'IndicesCreateResponseContent[index=$index, shardsAcknowledged=$shardsAcknowledged, acknowledged=$acknowledged]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'index'] = this.index;
    json[r'shards_acknowledged'] = this.shardsAcknowledged;
    json[r'acknowledged'] = this.acknowledged;
    return json;
  }

  /// Returns a new [IndicesCreateResponseContent] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static IndicesCreateResponseContent? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "IndicesCreateResponseContent[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "IndicesCreateResponseContent[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return IndicesCreateResponseContent(
        index: mapValueOfType<String>(json, r'index')!,
        shardsAcknowledged: mapValueOfType<bool>(json, r'shards_acknowledged')!,
        acknowledged: mapValueOfType<bool>(json, r'acknowledged')!,
      );
    }
    return null;
  }

  static List<IndicesCreateResponseContent> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <IndicesCreateResponseContent>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = IndicesCreateResponseContent.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, IndicesCreateResponseContent> mapFromJson(dynamic json) {
    final map = <String, IndicesCreateResponseContent>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = IndicesCreateResponseContent.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of IndicesCreateResponseContent-objects as value to a dart map
  static Map<String, List<IndicesCreateResponseContent>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<IndicesCreateResponseContent>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = IndicesCreateResponseContent.listFromJson(
          entry.value,
          growable: growable,
        );
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'index',
    'shards_acknowledged',
    'acknowledged',
  };
}
