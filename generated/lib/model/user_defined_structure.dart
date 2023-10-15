//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class UserDefinedStructure {
  /// Returns a new [UserDefinedStructure] instance.
  UserDefinedStructure({
    this.alias,
    this.aliases = const [],
    this.filter,
    this.index,
    this.indices = const [],
    this.indexRouting,
    this.isHidden,
    this.isWriteIndex,
    this.mustExist,
    this.routing,
    this.searchRouting,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? alias;

  List<String> aliases;

  Object? filter;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? index;

  List<String> indices;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? indexRouting;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isHidden;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isWriteIndex;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? mustExist;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? routing;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? searchRouting;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is UserDefinedStructure &&
          other.alias == alias &&
          other.aliases == aliases &&
          other.filter == filter &&
          other.index == index &&
          other.indices == indices &&
          other.indexRouting == indexRouting &&
          other.isHidden == isHidden &&
          other.isWriteIndex == isWriteIndex &&
          other.mustExist == mustExist &&
          other.routing == routing &&
          other.searchRouting == searchRouting;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (alias == null ? 0 : alias!.hashCode) +
      (aliases.hashCode) +
      (filter == null ? 0 : filter!.hashCode) +
      (index == null ? 0 : index!.hashCode) +
      (indices.hashCode) +
      (indexRouting == null ? 0 : indexRouting!.hashCode) +
      (isHidden == null ? 0 : isHidden!.hashCode) +
      (isWriteIndex == null ? 0 : isWriteIndex!.hashCode) +
      (mustExist == null ? 0 : mustExist!.hashCode) +
      (routing == null ? 0 : routing!.hashCode) +
      (searchRouting == null ? 0 : searchRouting!.hashCode);

  @override
  String toString() =>
      'UserDefinedStructure[alias=$alias, aliases=$aliases, filter=$filter, index=$index, indices=$indices, indexRouting=$indexRouting, isHidden=$isHidden, isWriteIndex=$isWriteIndex, mustExist=$mustExist, routing=$routing, searchRouting=$searchRouting]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.alias != null) {
      json[r'alias'] = this.alias;
    } else {
      json[r'alias'] = null;
    }
    json[r'aliases'] = this.aliases;
    if (this.filter != null) {
      json[r'filter'] = this.filter;
    } else {
      json[r'filter'] = null;
    }
    if (this.index != null) {
      json[r'index'] = this.index;
    } else {
      json[r'index'] = null;
    }
    json[r'indices'] = this.indices;
    if (this.indexRouting != null) {
      json[r'index_routing'] = this.indexRouting;
    } else {
      json[r'index_routing'] = null;
    }
    if (this.isHidden != null) {
      json[r'is_hidden'] = this.isHidden;
    } else {
      json[r'is_hidden'] = null;
    }
    if (this.isWriteIndex != null) {
      json[r'is_write_index'] = this.isWriteIndex;
    } else {
      json[r'is_write_index'] = null;
    }
    if (this.mustExist != null) {
      json[r'must_exist'] = this.mustExist;
    } else {
      json[r'must_exist'] = null;
    }
    if (this.routing != null) {
      json[r'routing'] = this.routing;
    } else {
      json[r'routing'] = null;
    }
    if (this.searchRouting != null) {
      json[r'search_routing'] = this.searchRouting;
    } else {
      json[r'search_routing'] = null;
    }
    return json;
  }

  /// Returns a new [UserDefinedStructure] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static UserDefinedStructure? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "UserDefinedStructure[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "UserDefinedStructure[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return UserDefinedStructure(
        alias: mapValueOfType<String>(json, r'alias'),
        aliases: json[r'aliases'] is List
            ? (json[r'aliases'] as List).cast<String>()
            : const [],
        filter: mapValueOfType<Object>(json, r'filter'),
        index: mapValueOfType<String>(json, r'index'),
        indices: json[r'indices'] is List
            ? (json[r'indices'] as List).cast<String>()
            : const [],
        indexRouting: mapValueOfType<String>(json, r'index_routing'),
        isHidden: mapValueOfType<bool>(json, r'is_hidden'),
        isWriteIndex: mapValueOfType<bool>(json, r'is_write_index'),
        mustExist: mapValueOfType<String>(json, r'must_exist'),
        routing: mapValueOfType<String>(json, r'routing'),
        searchRouting: mapValueOfType<String>(json, r'search_routing'),
      );
    }
    return null;
  }

  static List<UserDefinedStructure> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <UserDefinedStructure>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UserDefinedStructure.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, UserDefinedStructure> mapFromJson(dynamic json) {
    final map = <String, UserDefinedStructure>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = UserDefinedStructure.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of UserDefinedStructure-objects as value to a dart map
  static Map<String, List<UserDefinedStructure>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<UserDefinedStructure>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = UserDefinedStructure.listFromJson(
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
