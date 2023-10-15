//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

/// Specify suggest mode.
class SuggestMode {
  /// Instantiate a new enum with the provided [value].
  const SuggestMode._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const missing = SuggestMode._(r'missing');
  static const popular = SuggestMode._(r'popular');
  static const always = SuggestMode._(r'always');

  /// List of all possible values in this [enum][SuggestMode].
  static const values = <SuggestMode>[
    missing,
    popular,
    always,
  ];

  static SuggestMode? fromJson(dynamic value) =>
      SuggestModeTypeTransformer().decode(value);

  static List<SuggestMode> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <SuggestMode>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SuggestMode.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [SuggestMode] to String,
/// and [decode] dynamic data back to [SuggestMode].
class SuggestModeTypeTransformer {
  factory SuggestModeTypeTransformer() =>
      _instance ??= const SuggestModeTypeTransformer._();

  const SuggestModeTypeTransformer._();

  String encode(SuggestMode data) => data.value;

  /// Decodes a [dynamic value][data] to a SuggestMode.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  SuggestMode? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'missing':
          return SuggestMode.missing;
        case r'popular':
          return SuggestMode.popular;
        case r'always':
          return SuggestMode.always;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [SuggestModeTypeTransformer] instance.
  static SuggestModeTypeTransformer? _instance;
}
