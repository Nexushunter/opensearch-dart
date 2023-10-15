//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ClusterRerouteMetricMember {
  /// Instantiate a new enum with the provided [value].
  const ClusterRerouteMetricMember._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const all = ClusterRerouteMetricMember._(r'_all');
  static const blocks = ClusterRerouteMetricMember._(r'blocks');
  static const metadata = ClusterRerouteMetricMember._(r'metadata');
  static const nodes = ClusterRerouteMetricMember._(r'nodes');
  static const routingTable = ClusterRerouteMetricMember._(r'routing_table');
  static const masterNode = ClusterRerouteMetricMember._(r'master_node');
  static const clusterManagerNode =
      ClusterRerouteMetricMember._(r'cluster_manager_node');
  static const version = ClusterRerouteMetricMember._(r'version');

  /// List of all possible values in this [enum][ClusterRerouteMetricMember].
  static const values = <ClusterRerouteMetricMember>[
    all,
    blocks,
    metadata,
    nodes,
    routingTable,
    masterNode,
    clusterManagerNode,
    version,
  ];

  static ClusterRerouteMetricMember? fromJson(dynamic value) =>
      ClusterRerouteMetricMemberTypeTransformer().decode(value);

  static List<ClusterRerouteMetricMember> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <ClusterRerouteMetricMember>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ClusterRerouteMetricMember.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [ClusterRerouteMetricMember] to String,
/// and [decode] dynamic data back to [ClusterRerouteMetricMember].
class ClusterRerouteMetricMemberTypeTransformer {
  factory ClusterRerouteMetricMemberTypeTransformer() =>
      _instance ??= const ClusterRerouteMetricMemberTypeTransformer._();

  const ClusterRerouteMetricMemberTypeTransformer._();

  String encode(ClusterRerouteMetricMember data) => data.value;

  /// Decodes a [dynamic value][data] to a ClusterRerouteMetricMember.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ClusterRerouteMetricMember? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'_all':
          return ClusterRerouteMetricMember.all;
        case r'blocks':
          return ClusterRerouteMetricMember.blocks;
        case r'metadata':
          return ClusterRerouteMetricMember.metadata;
        case r'nodes':
          return ClusterRerouteMetricMember.nodes;
        case r'routing_table':
          return ClusterRerouteMetricMember.routingTable;
        case r'master_node':
          return ClusterRerouteMetricMember.masterNode;
        case r'cluster_manager_node':
          return ClusterRerouteMetricMember.clusterManagerNode;
        case r'version':
          return ClusterRerouteMetricMember.version;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [ClusterRerouteMetricMemberTypeTransformer] instance.
  static ClusterRerouteMetricMemberTypeTransformer? _instance;
}
