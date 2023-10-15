//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

/// The type to sample.
class SampleType {
  /// Instantiate a new enum with the provided [value].
  const SampleType._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const cpu = SampleType._(r'cpu');
  static const wait = SampleType._(r'wait');
  static const block = SampleType._(r'block');

  /// List of all possible values in this [enum][SampleType].
  static const values = <SampleType>[
    cpu,
    wait,
    block,
  ];

  static SampleType? fromJson(dynamic value) =>
      SampleTypeTypeTransformer().decode(value);

  static List<SampleType> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <SampleType>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SampleType.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [SampleType] to String,
/// and [decode] dynamic data back to [SampleType].
class SampleTypeTypeTransformer {
  factory SampleTypeTypeTransformer() =>
      _instance ??= const SampleTypeTypeTransformer._();

  const SampleTypeTypeTransformer._();

  String encode(SampleType data) => data.value;

  /// Decodes a [dynamic value][data] to a SampleType.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  SampleType? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'cpu':
          return SampleType.cpu;
        case r'wait':
          return SampleType.wait;
        case r'block':
          return SampleType.block;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [SampleTypeTypeTransformer] instance.
  static SampleTypeTypeTransformer? _instance;
}
