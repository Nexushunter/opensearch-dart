//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

/// If `true` then refresh the affected shards to make this operation visible to search, if `wait_for` then wait for a refresh to make this operation visible to search, if `false` (the default) then do nothing with refreshes.
class RefreshEnum {
  /// Instantiate a new enum with the provided [value].
  const RefreshEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const true_ = RefreshEnum._(r'true');
  static const false_ = RefreshEnum._(r'false');
  static const waitFor = RefreshEnum._(r'wait_for');

  /// List of all possible values in this [enum][RefreshEnum].
  static const values = <RefreshEnum>[
    true_,
    false_,
    waitFor,
  ];

  static RefreshEnum? fromJson(dynamic value) =>
      RefreshEnumTypeTransformer().decode(value);

  static List<RefreshEnum> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <RefreshEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RefreshEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [RefreshEnum] to String,
/// and [decode] dynamic data back to [RefreshEnum].
class RefreshEnumTypeTransformer {
  factory RefreshEnumTypeTransformer() =>
      _instance ??= const RefreshEnumTypeTransformer._();

  const RefreshEnumTypeTransformer._();

  String encode(RefreshEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a RefreshEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  RefreshEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'true':
          return RefreshEnum.true_;
        case r'false':
          return RefreshEnum.false_;
        case r'wait_for':
          return RefreshEnum.waitFor;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [RefreshEnumTypeTransformer] instance.
  static RefreshEnumTypeTransformer? _instance;
}
