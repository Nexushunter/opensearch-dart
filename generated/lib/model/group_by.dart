//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

/// Group tasks by nodes or parent/child relationships.
class GroupBy {
  /// Instantiate a new enum with the provided [value].
  const GroupBy._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const nodes = GroupBy._(r'nodes');
  static const parents = GroupBy._(r'parents');
  static const none = GroupBy._(r'none');

  /// List of all possible values in this [enum][GroupBy].
  static const values = <GroupBy>[
    nodes,
    parents,
    none,
  ];

  static GroupBy? fromJson(dynamic value) =>
      GroupByTypeTransformer().decode(value);

  static List<GroupBy> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <GroupBy>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GroupBy.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [GroupBy] to String,
/// and [decode] dynamic data back to [GroupBy].
class GroupByTypeTransformer {
  factory GroupByTypeTransformer() =>
      _instance ??= const GroupByTypeTransformer._();

  const GroupByTypeTransformer._();

  String encode(GroupBy data) => data.value;

  /// Decodes a [dynamic value][data] to a GroupBy.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  GroupBy? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'nodes':
          return GroupBy.nodes;
        case r'parents':
          return GroupBy.parents;
        case r'none':
          return GroupBy.none;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [GroupByTypeTransformer] instance.
  static GroupByTypeTransformer? _instance;
}
