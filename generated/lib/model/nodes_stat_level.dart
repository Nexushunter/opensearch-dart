//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

/// Return indices stats aggregated at index, node or shard level.
class NodesStatLevel {
  /// Instantiate a new enum with the provided [value].
  const NodesStatLevel._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const indices = NodesStatLevel._(r'indices');
  static const node = NodesStatLevel._(r'node');
  static const shards = NodesStatLevel._(r'shards');

  /// List of all possible values in this [enum][NodesStatLevel].
  static const values = <NodesStatLevel>[
    indices,
    node,
    shards,
  ];

  static NodesStatLevel? fromJson(dynamic value) =>
      NodesStatLevelTypeTransformer().decode(value);

  static List<NodesStatLevel> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <NodesStatLevel>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = NodesStatLevel.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [NodesStatLevel] to String,
/// and [decode] dynamic data back to [NodesStatLevel].
class NodesStatLevelTypeTransformer {
  factory NodesStatLevelTypeTransformer() =>
      _instance ??= const NodesStatLevelTypeTransformer._();

  const NodesStatLevelTypeTransformer._();

  String encode(NodesStatLevel data) => data.value;

  /// Decodes a [dynamic value][data] to a NodesStatLevel.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  NodesStatLevel? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'indices':
          return NodesStatLevel.indices;
        case r'node':
          return NodesStatLevel.node;
        case r'shards':
          return NodesStatLevel.shards;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [NodesStatLevelTypeTransformer] instance.
  static NodesStatLevelTypeTransformer? _instance;
}
