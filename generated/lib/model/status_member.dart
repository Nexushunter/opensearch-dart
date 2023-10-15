//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class StatusMember {
  /// Instantiate a new enum with the provided [value].
  const StatusMember._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const green = StatusMember._(r'green');
  static const yellow = StatusMember._(r'yellow');
  static const red = StatusMember._(r'red');
  static const all = StatusMember._(r'all');

  /// List of all possible values in this [enum][StatusMember].
  static const values = <StatusMember>[
    green,
    yellow,
    red,
    all,
  ];

  static StatusMember? fromJson(dynamic value) =>
      StatusMemberTypeTransformer().decode(value);

  static List<StatusMember> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <StatusMember>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = StatusMember.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [StatusMember] to String,
/// and [decode] dynamic data back to [StatusMember].
class StatusMemberTypeTransformer {
  factory StatusMemberTypeTransformer() =>
      _instance ??= const StatusMemberTypeTransformer._();

  const StatusMemberTypeTransformer._();

  String encode(StatusMember data) => data.value;

  /// Decodes a [dynamic value][data] to a StatusMember.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  StatusMember? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'green':
          return StatusMember.green;
        case r'yellow':
          return StatusMember.yellow;
        case r'red':
          return StatusMember.red;
        case r'all':
          return StatusMember.all;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [StatusMemberTypeTransformer] instance.
  static StatusMemberTypeTransformer? _instance;
}
