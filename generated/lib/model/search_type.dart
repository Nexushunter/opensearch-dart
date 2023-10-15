//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

/// Search operation type.
class SearchType {
  /// Instantiate a new enum with the provided [value].
  const SearchType._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const queryThenFetch = SearchType._(r'query_then_fetch');
  static const dfsQueryThenFetch = SearchType._(r'dfs_query_then_fetch');

  /// List of all possible values in this [enum][SearchType].
  static const values = <SearchType>[
    queryThenFetch,
    dfsQueryThenFetch,
  ];

  static SearchType? fromJson(dynamic value) =>
      SearchTypeTypeTransformer().decode(value);

  static List<SearchType> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <SearchType>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SearchType.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [SearchType] to String,
/// and [decode] dynamic data back to [SearchType].
class SearchTypeTypeTransformer {
  factory SearchTypeTypeTransformer() =>
      _instance ??= const SearchTypeTypeTransformer._();

  const SearchTypeTypeTransformer._();

  String encode(SearchType data) => data.value;

  /// Decodes a [dynamic value][data] to a SearchType.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  SearchType? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'query_then_fetch':
          return SearchType.queryThenFetch;
        case r'dfs_query_then_fetch':
          return SearchType.dfsQueryThenFetch;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [SearchTypeTypeTransformer] instance.
  static SearchTypeTypeTransformer? _instance;
}
