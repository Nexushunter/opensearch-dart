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
class SearchTypeMulti {
  /// Instantiate a new enum with the provided [value].
  const SearchTypeMulti._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const queryThenFetch = SearchTypeMulti._(r'query_then_fetch');
  static const queryAndFetch = SearchTypeMulti._(r'query_and_fetch');
  static const dfsQueryThenFetch = SearchTypeMulti._(r'dfs_query_then_fetch');
  static const dfsQueryAndFetch = SearchTypeMulti._(r'dfs_query_and_fetch');

  /// List of all possible values in this [enum][SearchTypeMulti].
  static const values = <SearchTypeMulti>[
    queryThenFetch,
    queryAndFetch,
    dfsQueryThenFetch,
    dfsQueryAndFetch,
  ];

  static SearchTypeMulti? fromJson(dynamic value) =>
      SearchTypeMultiTypeTransformer().decode(value);

  static List<SearchTypeMulti> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <SearchTypeMulti>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SearchTypeMulti.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [SearchTypeMulti] to String,
/// and [decode] dynamic data back to [SearchTypeMulti].
class SearchTypeMultiTypeTransformer {
  factory SearchTypeMultiTypeTransformer() =>
      _instance ??= const SearchTypeMultiTypeTransformer._();

  const SearchTypeMultiTypeTransformer._();

  String encode(SearchTypeMulti data) => data.value;

  /// Decodes a [dynamic value][data] to a SearchTypeMulti.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  SearchTypeMulti? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'query_then_fetch':
          return SearchTypeMulti.queryThenFetch;
        case r'query_and_fetch':
          return SearchTypeMulti.queryAndFetch;
        case r'dfs_query_then_fetch':
          return SearchTypeMulti.dfsQueryThenFetch;
        case r'dfs_query_and_fetch':
          return SearchTypeMulti.dfsQueryAndFetch;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [SearchTypeMultiTypeTransformer] instance.
  static SearchTypeMultiTypeTransformer? _instance;
}
