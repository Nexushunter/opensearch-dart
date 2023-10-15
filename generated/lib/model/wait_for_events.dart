//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

/// Wait until all currently queued events with the given priority are processed.
class WaitForEvents {
  /// Instantiate a new enum with the provided [value].
  const WaitForEvents._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const immediate = WaitForEvents._(r'immediate');
  static const urgent = WaitForEvents._(r'urgent');
  static const high = WaitForEvents._(r'high');
  static const normal = WaitForEvents._(r'normal');
  static const low = WaitForEvents._(r'low');
  static const languid = WaitForEvents._(r'languid');

  /// List of all possible values in this [enum][WaitForEvents].
  static const values = <WaitForEvents>[
    immediate,
    urgent,
    high,
    normal,
    low,
    languid,
  ];

  static WaitForEvents? fromJson(dynamic value) =>
      WaitForEventsTypeTransformer().decode(value);

  static List<WaitForEvents> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <WaitForEvents>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = WaitForEvents.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [WaitForEvents] to String,
/// and [decode] dynamic data back to [WaitForEvents].
class WaitForEventsTypeTransformer {
  factory WaitForEventsTypeTransformer() =>
      _instance ??= const WaitForEventsTypeTransformer._();

  const WaitForEventsTypeTransformer._();

  String encode(WaitForEvents data) => data.value;

  /// Decodes a [dynamic value][data] to a WaitForEvents.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  WaitForEvents? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'immediate':
          return WaitForEvents.immediate;
        case r'urgent':
          return WaitForEvents.urgent;
        case r'high':
          return WaitForEvents.high;
        case r'normal':
          return WaitForEvents.normal;
        case r'low':
          return WaitForEvents.low;
        case r'languid':
          return WaitForEvents.languid;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [WaitForEventsTypeTransformer] instance.
  static WaitForEventsTypeTransformer? _instance;
}
