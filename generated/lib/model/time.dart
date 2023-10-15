//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

/// The unit in which to display time values.
class Time {
  /// Instantiate a new enum with the provided [value].
  const Time._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const d = Time._(r'd');
  static const h = Time._(r'h');
  static const m = Time._(r'm');
  static const s = Time._(r's');
  static const ms = Time._(r'ms');
  static const micros = Time._(r'micros');
  static const nanos = Time._(r'nanos');

  /// List of all possible values in this [enum][Time].
  static const values = <Time>[
    d,
    h,
    m,
    s,
    ms,
    micros,
    nanos,
  ];

  static Time? fromJson(dynamic value) => TimeTypeTransformer().decode(value);

  static List<Time> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <Time>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Time.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [Time] to String,
/// and [decode] dynamic data back to [Time].
class TimeTypeTransformer {
  factory TimeTypeTransformer() => _instance ??= const TimeTypeTransformer._();

  const TimeTypeTransformer._();

  String encode(Time data) => data.value;

  /// Decodes a [dynamic value][data] to a Time.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  Time? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'd':
          return Time.d;
        case r'h':
          return Time.h;
        case r'm':
          return Time.m;
        case r's':
          return Time.s;
        case r'ms':
          return Time.ms;
        case r'micros':
          return Time.micros;
        case r'nanos':
          return Time.nanos;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [TimeTypeTransformer] instance.
  static TimeTypeTransformer? _instance;
}
