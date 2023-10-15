//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

/// Specific version type.
class VersionType {
  /// Instantiate a new enum with the provided [value].
  const VersionType._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const internal = VersionType._(r'internal');
  static const external_ = VersionType._(r'external');
  static const externalGte = VersionType._(r'external_gte');
  static const force = VersionType._(r'force');

  /// List of all possible values in this [enum][VersionType].
  static const values = <VersionType>[
    internal,
    external_,
    externalGte,
    force,
  ];

  static VersionType? fromJson(dynamic value) =>
      VersionTypeTypeTransformer().decode(value);

  static List<VersionType> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <VersionType>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = VersionType.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [VersionType] to String,
/// and [decode] dynamic data back to [VersionType].
class VersionTypeTypeTransformer {
  factory VersionTypeTypeTransformer() =>
      _instance ??= const VersionTypeTypeTransformer._();

  const VersionTypeTypeTransformer._();

  String encode(VersionType data) => data.value;

  /// Decodes a [dynamic value][data] to a VersionType.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  VersionType? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'internal':
          return VersionType.internal;
        case r'external':
          return VersionType.external_;
        case r'external_gte':
          return VersionType.externalGte;
        case r'force':
          return VersionType.force;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [VersionTypeTypeTransformer] instance.
  static VersionTypeTypeTransformer? _instance;
}
