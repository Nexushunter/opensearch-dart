//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class DataStreamStatus {
  /// Instantiate a new enum with the provided [value].
  const DataStreamStatus._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const green = DataStreamStatus._(r'green');
  static const yellow = DataStreamStatus._(r'yellow');
  static const red = DataStreamStatus._(r'red');

  /// List of all possible values in this [enum][DataStreamStatus].
  static const values = <DataStreamStatus>[
    green,
    yellow,
    red,
  ];

  static DataStreamStatus? fromJson(dynamic value) =>
      DataStreamStatusTypeTransformer().decode(value);

  static List<DataStreamStatus> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <DataStreamStatus>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DataStreamStatus.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [DataStreamStatus] to String,
/// and [decode] dynamic data back to [DataStreamStatus].
class DataStreamStatusTypeTransformer {
  factory DataStreamStatusTypeTransformer() =>
      _instance ??= const DataStreamStatusTypeTransformer._();

  const DataStreamStatusTypeTransformer._();

  String encode(DataStreamStatus data) => data.value;

  /// Decodes a [dynamic value][data] to a DataStreamStatus.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  DataStreamStatus? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'green':
          return DataStreamStatus.green;
        case r'yellow':
          return DataStreamStatus.yellow;
        case r'red':
          return DataStreamStatus.red;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [DataStreamStatusTypeTransformer] instance.
  static DataStreamStatusTypeTransformer? _instance;
}
