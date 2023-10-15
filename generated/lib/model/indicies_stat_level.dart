//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

/// Return stats aggregated at cluster, index or shard level.
class IndiciesStatLevel {
  /// Instantiate a new enum with the provided [value].
  const IndiciesStatLevel._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const cluster = IndiciesStatLevel._(r'cluster');
  static const indices = IndiciesStatLevel._(r'indices');
  static const shards = IndiciesStatLevel._(r'shards');

  /// List of all possible values in this [enum][IndiciesStatLevel].
  static const values = <IndiciesStatLevel>[
    cluster,
    indices,
    shards,
  ];

  static IndiciesStatLevel? fromJson(dynamic value) =>
      IndiciesStatLevelTypeTransformer().decode(value);

  static List<IndiciesStatLevel> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <IndiciesStatLevel>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = IndiciesStatLevel.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [IndiciesStatLevel] to String,
/// and [decode] dynamic data back to [IndiciesStatLevel].
class IndiciesStatLevelTypeTransformer {
  factory IndiciesStatLevelTypeTransformer() =>
      _instance ??= const IndiciesStatLevelTypeTransformer._();

  const IndiciesStatLevelTypeTransformer._();

  String encode(IndiciesStatLevel data) => data.value;

  /// Decodes a [dynamic value][data] to a IndiciesStatLevel.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  IndiciesStatLevel? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'cluster':
          return IndiciesStatLevel.cluster;
        case r'indices':
          return IndiciesStatLevel.indices;
        case r'shards':
          return IndiciesStatLevel.shards;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [IndiciesStatLevelTypeTransformer] instance.
  static IndiciesStatLevelTypeTransformer? _instance;
}
