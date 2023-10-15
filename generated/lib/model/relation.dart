//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Relation {
  /// Instantiate a new enum with the provided [value].
  const Relation._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const eq = Relation._(r'eq');
  static const gte = Relation._(r'gte');

  /// List of all possible values in this [enum][Relation].
  static const values = <Relation>[
    eq,
    gte,
  ];

  static Relation? fromJson(dynamic value) =>
      RelationTypeTransformer().decode(value);

  static List<Relation> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <Relation>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Relation.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [Relation] to String,
/// and [decode] dynamic data back to [Relation].
class RelationTypeTransformer {
  factory RelationTypeTransformer() =>
      _instance ??= const RelationTypeTransformer._();

  const RelationTypeTransformer._();

  String encode(Relation data) => data.value;

  /// Decodes a [dynamic value][data] to a Relation.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  Relation? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'eq':
          return Relation.eq;
        case r'gte':
          return Relation.gte;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [RelationTypeTransformer] instance.
  static RelationTypeTransformer? _instance;
}
