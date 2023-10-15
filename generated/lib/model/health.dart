//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

/// Health status ('green', 'yellow', or 'red') to filter only indices matching the specified health status.
class Health {
  /// Instantiate a new enum with the provided [value].
  const Health._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const green = Health._(r'green');
  static const yellow = Health._(r'yellow');
  static const red = Health._(r'red');

  /// List of all possible values in this [enum][Health].
  static const values = <Health>[
    green,
    yellow,
    red,
  ];

  static Health? fromJson(dynamic value) =>
      HealthTypeTransformer().decode(value);

  static List<Health> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <Health>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Health.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [Health] to String,
/// and [decode] dynamic data back to [Health].
class HealthTypeTransformer {
  factory HealthTypeTransformer() =>
      _instance ??= const HealthTypeTransformer._();

  const HealthTypeTransformer._();

  String encode(Health data) => data.value;

  /// Decodes a [dynamic value][data] to a Health.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  Health? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'green':
          return Health.green;
        case r'yellow':
          return Health.yellow;
        case r'red':
          return Health.red;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [HealthTypeTransformer] instance.
  static HealthTypeTransformer? _instance;
}
