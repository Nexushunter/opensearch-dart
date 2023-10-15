//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

/// Explicit operation type. Defaults to `index` for requests with an explicit document ID, and to `create`for requests without an explicit document ID.
class OpType {
  /// Instantiate a new enum with the provided [value].
  const OpType._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const index = OpType._(r'index');
  static const create = OpType._(r'create');

  /// List of all possible values in this [enum][OpType].
  static const values = <OpType>[
    index,
    create,
  ];

  static OpType? fromJson(dynamic value) =>
      OpTypeTypeTransformer().decode(value);

  static List<OpType> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <OpType>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = OpType.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [OpType] to String,
/// and [decode] dynamic data back to [OpType].
class OpTypeTypeTransformer {
  factory OpTypeTypeTransformer() =>
      _instance ??= const OpTypeTypeTransformer._();

  const OpTypeTypeTransformer._();

  String encode(OpType data) => data.value;

  /// Decodes a [dynamic value][data] to a OpType.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  OpType? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'index':
          return OpType.index;
        case r'create':
          return OpType.create;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [OpTypeTypeTransformer] instance.
  static OpTypeTypeTransformer? _instance;
}
