//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

/// Whether to expand wildcard expression to concrete indices that are open, closed or both.
class ExpandWildcards {
  /// Instantiate a new enum with the provided [value].
  const ExpandWildcards._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const all = ExpandWildcards._(r'all');
  static const open = ExpandWildcards._(r'open');
  static const closed = ExpandWildcards._(r'closed');
  static const hidden = ExpandWildcards._(r'hidden');
  static const none = ExpandWildcards._(r'none');

  /// List of all possible values in this [enum][ExpandWildcards].
  static const values = <ExpandWildcards>[
    all,
    open,
    closed,
    hidden,
    none,
  ];

  static ExpandWildcards? fromJson(dynamic value) =>
      ExpandWildcardsTypeTransformer().decode(value);

  static List<ExpandWildcards> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <ExpandWildcards>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ExpandWildcards.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [ExpandWildcards] to String,
/// and [decode] dynamic data back to [ExpandWildcards].
class ExpandWildcardsTypeTransformer {
  factory ExpandWildcardsTypeTransformer() =>
      _instance ??= const ExpandWildcardsTypeTransformer._();

  const ExpandWildcardsTypeTransformer._();

  String encode(ExpandWildcards data) => data.value;

  /// Decodes a [dynamic value][data] to a ExpandWildcards.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ExpandWildcards? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'all':
          return ExpandWildcards.all;
        case r'open':
          return ExpandWildcards.open;
        case r'closed':
          return ExpandWildcards.closed;
        case r'hidden':
          return ExpandWildcards.hidden;
        case r'none':
          return ExpandWildcards.none;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [ExpandWildcardsTypeTransformer] instance.
  static ExpandWildcardsTypeTransformer? _instance;
}
