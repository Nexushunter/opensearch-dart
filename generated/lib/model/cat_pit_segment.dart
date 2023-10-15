//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CatPitSegment {
  /// Returns a new [CatPitSegment] instance.
  CatPitSegment({
    this.index,
    this.shard,
    this.prirep,
    this.ip,
    this.segment,
    this.generation,
    this.docsCount,
    this.docsDeleted,
    this.size,
    this.sizeMemory,
    this.committed,
    this.searchable,
    this.version,
    this.compound,
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
  int? shard;

  /// Set to true to return stats only for primary shards.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? prirep;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? ip;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? segment;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? generation;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? docsCount;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? docsDeleted;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? size;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? sizeMemory;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? committed;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? searchable;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? version;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? compound;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CatPitSegment &&
          other.index == index &&
          other.shard == shard &&
          other.prirep == prirep &&
          other.ip == ip &&
          other.segment == segment &&
          other.generation == generation &&
          other.docsCount == docsCount &&
          other.docsDeleted == docsDeleted &&
          other.size == size &&
          other.sizeMemory == sizeMemory &&
          other.committed == committed &&
          other.searchable == searchable &&
          other.version == version &&
          other.compound == compound;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (index == null ? 0 : index!.hashCode) +
      (shard == null ? 0 : shard!.hashCode) +
      (prirep == null ? 0 : prirep!.hashCode) +
      (ip == null ? 0 : ip!.hashCode) +
      (segment == null ? 0 : segment!.hashCode) +
      (generation == null ? 0 : generation!.hashCode) +
      (docsCount == null ? 0 : docsCount!.hashCode) +
      (docsDeleted == null ? 0 : docsDeleted!.hashCode) +
      (size == null ? 0 : size!.hashCode) +
      (sizeMemory == null ? 0 : sizeMemory!.hashCode) +
      (committed == null ? 0 : committed!.hashCode) +
      (searchable == null ? 0 : searchable!.hashCode) +
      (version == null ? 0 : version!.hashCode) +
      (compound == null ? 0 : compound!.hashCode);

  @override
  String toString() =>
      'CatPitSegment[index=$index, shard=$shard, prirep=$prirep, ip=$ip, segment=$segment, generation=$generation, docsCount=$docsCount, docsDeleted=$docsDeleted, size=$size, sizeMemory=$sizeMemory, committed=$committed, searchable=$searchable, version=$version, compound=$compound]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.index != null) {
      json[r'index'] = this.index;
    } else {
      json[r'index'] = null;
    }
    if (this.shard != null) {
      json[r'shard'] = this.shard;
    } else {
      json[r'shard'] = null;
    }
    if (this.prirep != null) {
      json[r'prirep'] = this.prirep;
    } else {
      json[r'prirep'] = null;
    }
    if (this.ip != null) {
      json[r'ip'] = this.ip;
    } else {
      json[r'ip'] = null;
    }
    if (this.segment != null) {
      json[r'segment'] = this.segment;
    } else {
      json[r'segment'] = null;
    }
    if (this.generation != null) {
      json[r'generation'] = this.generation;
    } else {
      json[r'generation'] = null;
    }
    if (this.docsCount != null) {
      json[r'docs_count'] = this.docsCount;
    } else {
      json[r'docs_count'] = null;
    }
    if (this.docsDeleted != null) {
      json[r'docs_deleted'] = this.docsDeleted;
    } else {
      json[r'docs_deleted'] = null;
    }
    if (this.size != null) {
      json[r'size'] = this.size;
    } else {
      json[r'size'] = null;
    }
    if (this.sizeMemory != null) {
      json[r'size_memory'] = this.sizeMemory;
    } else {
      json[r'size_memory'] = null;
    }
    if (this.committed != null) {
      json[r'committed'] = this.committed;
    } else {
      json[r'committed'] = null;
    }
    if (this.searchable != null) {
      json[r'searchable'] = this.searchable;
    } else {
      json[r'searchable'] = null;
    }
    if (this.version != null) {
      json[r'version'] = this.version;
    } else {
      json[r'version'] = null;
    }
    if (this.compound != null) {
      json[r'compound'] = this.compound;
    } else {
      json[r'compound'] = null;
    }
    return json;
  }

  /// Returns a new [CatPitSegment] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CatPitSegment? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "CatPitSegment[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "CatPitSegment[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CatPitSegment(
        index: mapValueOfType<String>(json, r'index'),
        shard: mapValueOfType<int>(json, r'shard'),
        prirep: mapValueOfType<bool>(json, r'prirep'),
        ip: mapValueOfType<String>(json, r'ip'),
        segment: mapValueOfType<String>(json, r'segment'),
        generation: mapValueOfType<int>(json, r'generation'),
        docsCount: mapValueOfType<int>(json, r'docs_count'),
        docsDeleted: mapValueOfType<int>(json, r'docs_deleted'),
        size: mapValueOfType<String>(json, r'size'),
        sizeMemory: mapValueOfType<int>(json, r'size_memory'),
        committed: mapValueOfType<bool>(json, r'committed'),
        searchable: mapValueOfType<bool>(json, r'searchable'),
        version: mapValueOfType<String>(json, r'version'),
        compound: mapValueOfType<bool>(json, r'compound'),
      );
    }
    return null;
  }

  static List<CatPitSegment> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <CatPitSegment>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CatPitSegment.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CatPitSegment> mapFromJson(dynamic json) {
    final map = <String, CatPitSegment>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CatPitSegment.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CatPitSegment-objects as value to a dart map
  static Map<String, List<CatPitSegment>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<CatPitSegment>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CatPitSegment.listFromJson(
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
