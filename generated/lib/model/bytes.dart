//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

/// The unit in which to display byte values.
class Bytes {
  /// Instantiate a new enum with the provided [value].
  const Bytes._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const b = Bytes._(r'b');
  static const k = Bytes._(r'k');
  static const kb = Bytes._(r'kb');
  static const m = Bytes._(r'm');
  static const mb = Bytes._(r'mb');
  static const g = Bytes._(r'g');
  static const gb = Bytes._(r'gb');
  static const t = Bytes._(r't');
  static const tb = Bytes._(r'tb');
  static const p = Bytes._(r'p');
  static const pb = Bytes._(r'pb');

  /// List of all possible values in this [enum][Bytes].
  static const values = <Bytes>[
    b,
    k,
    kb,
    m,
    mb,
    g,
    gb,
    t,
    tb,
    p,
    pb,
  ];

  static Bytes? fromJson(dynamic value) => BytesTypeTransformer().decode(value);

  static List<Bytes> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <Bytes>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Bytes.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [Bytes] to String,
/// and [decode] dynamic data back to [Bytes].
class BytesTypeTransformer {
  factory BytesTypeTransformer() =>
      _instance ??= const BytesTypeTransformer._();

  const BytesTypeTransformer._();

  String encode(Bytes data) => data.value;

  /// Decodes a [dynamic value][data] to a Bytes.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  Bytes? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'b':
          return Bytes.b;
        case r'k':
          return Bytes.k;
        case r'kb':
          return Bytes.kb;
        case r'm':
          return Bytes.m;
        case r'mb':
          return Bytes.mb;
        case r'g':
          return Bytes.g;
        case r'gb':
          return Bytes.gb;
        case r't':
          return Bytes.t;
        case r'tb':
          return Bytes.tb;
        case r'p':
          return Bytes.p;
        case r'pb':
          return Bytes.pb;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [BytesTypeTransformer] instance.
  static BytesTypeTransformer? _instance;
}
