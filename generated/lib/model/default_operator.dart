//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

/// The default operator for query string query (AND or OR).
class DefaultOperator {
  /// Instantiate a new enum with the provided [value].
  const DefaultOperator._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const AND = DefaultOperator._(r'AND');
  static const OR = DefaultOperator._(r'OR');

  /// List of all possible values in this [enum][DefaultOperator].
  static const values = <DefaultOperator>[
    AND,
    OR,
  ];

  static DefaultOperator? fromJson(dynamic value) =>
      DefaultOperatorTypeTransformer().decode(value);

  static List<DefaultOperator> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <DefaultOperator>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DefaultOperator.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [DefaultOperator] to String,
/// and [decode] dynamic data back to [DefaultOperator].
class DefaultOperatorTypeTransformer {
  factory DefaultOperatorTypeTransformer() =>
      _instance ??= const DefaultOperatorTypeTransformer._();

  const DefaultOperatorTypeTransformer._();

  String encode(DefaultOperator data) => data.value;

  /// Decodes a [dynamic value][data] to a DefaultOperator.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  DefaultOperator? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'AND':
          return DefaultOperator.AND;
        case r'OR':
          return DefaultOperator.OR;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [DefaultOperatorTypeTransformer] instance.
  static DefaultOperatorTypeTransformer? _instance;
}
