//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

/// What to do when the operation encounters version conflicts?.
class Conflicts {
  /// Instantiate a new enum with the provided [value].
  const Conflicts._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const abort = Conflicts._(r'abort');
  static const proceed = Conflicts._(r'proceed');

  /// List of all possible values in this [enum][Conflicts].
  static const values = <Conflicts>[
    abort,
    proceed,
  ];

  static Conflicts? fromJson(dynamic value) =>
      ConflictsTypeTransformer().decode(value);

  static List<Conflicts> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <Conflicts>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Conflicts.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [Conflicts] to String,
/// and [decode] dynamic data back to [Conflicts].
class ConflictsTypeTransformer {
  factory ConflictsTypeTransformer() =>
      _instance ??= const ConflictsTypeTransformer._();

  const ConflictsTypeTransformer._();

  String encode(Conflicts data) => data.value;

  /// Decodes a [dynamic value][data] to a Conflicts.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  Conflicts? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'abort':
          return Conflicts.abort;
        case r'proceed':
          return Conflicts.proceed;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [ConflictsTypeTransformer] instance.
  static ConflictsTypeTransformer? _instance;
}
