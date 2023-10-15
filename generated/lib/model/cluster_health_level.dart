//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

/// Specify the level of detail for returned information.
class ClusterHealthLevel {
  /// Instantiate a new enum with the provided [value].
  const ClusterHealthLevel._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const cluster = ClusterHealthLevel._(r'cluster');
  static const indices = ClusterHealthLevel._(r'indices');
  static const shards = ClusterHealthLevel._(r'shards');
  static const awarenessAttributes =
      ClusterHealthLevel._(r'awareness_attributes');

  /// List of all possible values in this [enum][ClusterHealthLevel].
  static const values = <ClusterHealthLevel>[
    cluster,
    indices,
    shards,
    awarenessAttributes,
  ];

  static ClusterHealthLevel? fromJson(dynamic value) =>
      ClusterHealthLevelTypeTransformer().decode(value);

  static List<ClusterHealthLevel> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <ClusterHealthLevel>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ClusterHealthLevel.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [ClusterHealthLevel] to String,
/// and [decode] dynamic data back to [ClusterHealthLevel].
class ClusterHealthLevelTypeTransformer {
  factory ClusterHealthLevelTypeTransformer() =>
      _instance ??= const ClusterHealthLevelTypeTransformer._();

  const ClusterHealthLevelTypeTransformer._();

  String encode(ClusterHealthLevel data) => data.value;

  /// Decodes a [dynamic value][data] to a ClusterHealthLevel.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ClusterHealthLevel? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'cluster':
          return ClusterHealthLevel.cluster;
        case r'indices':
          return ClusterHealthLevel.indices;
        case r'shards':
          return ClusterHealthLevel.shards;
        case r'awareness_attributes':
          return ClusterHealthLevel.awarenessAttributes;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [ClusterHealthLevelTypeTransformer] instance.
  static ClusterHealthLevelTypeTransformer? _instance;
}
