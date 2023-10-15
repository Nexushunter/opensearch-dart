//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class IndicesGetDataStreamResponseContent {
  /// Returns a new [IndicesGetDataStreamResponseContent] instance.
  IndicesGetDataStreamResponseContent({
    this.dataStreams = const [],
  });

  List<DataStream> dataStreams;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is IndicesGetDataStreamResponseContent &&
          other.dataStreams == dataStreams;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (dataStreams.hashCode);

  @override
  String toString() =>
      'IndicesGetDataStreamResponseContent[dataStreams=$dataStreams]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'data_streams'] = this.dataStreams;
    return json;
  }

  /// Returns a new [IndicesGetDataStreamResponseContent] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static IndicesGetDataStreamResponseContent? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "IndicesGetDataStreamResponseContent[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "IndicesGetDataStreamResponseContent[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return IndicesGetDataStreamResponseContent(
        dataStreams: DataStream.listFromJson(json[r'data_streams']),
      );
    }
    return null;
  }

  static List<IndicesGetDataStreamResponseContent> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <IndicesGetDataStreamResponseContent>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = IndicesGetDataStreamResponseContent.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, IndicesGetDataStreamResponseContent> mapFromJson(
      dynamic json) {
    final map = <String, IndicesGetDataStreamResponseContent>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = IndicesGetDataStreamResponseContent.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of IndicesGetDataStreamResponseContent-objects as value to a dart map
  static Map<String, List<IndicesGetDataStreamResponseContent>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<IndicesGetDataStreamResponseContent>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = IndicesGetDataStreamResponseContent.listFromJson(
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
