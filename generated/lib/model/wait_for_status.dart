//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

/// Wait until cluster is in a specific state.
class WaitForStatus {
  /// Instantiate a new enum with the provided [value].
  const WaitForStatus._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const green = WaitForStatus._(r'green');
  static const yellow = WaitForStatus._(r'yellow');
  static const red = WaitForStatus._(r'red');

  /// List of all possible values in this [enum][WaitForStatus].
  static const values = <WaitForStatus>[
    green,
    yellow,
    red,
  ];

  static WaitForStatus? fromJson(dynamic value) =>
      WaitForStatusTypeTransformer().decode(value);

  static List<WaitForStatus> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <WaitForStatus>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = WaitForStatus.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [WaitForStatus] to String,
/// and [decode] dynamic data back to [WaitForStatus].
class WaitForStatusTypeTransformer {
  factory WaitForStatusTypeTransformer() =>
      _instance ??= const WaitForStatusTypeTransformer._();

  const WaitForStatusTypeTransformer._();

  String encode(WaitForStatus data) => data.value;

  /// Decodes a [dynamic value][data] to a WaitForStatus.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  WaitForStatus? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'green':
          return WaitForStatus.green;
        case r'yellow':
          return WaitForStatus.yellow;
        case r'red':
          return WaitForStatus.red;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [WaitForStatusTypeTransformer] instance.
  static WaitForStatusTypeTransformer? _instance;
}
