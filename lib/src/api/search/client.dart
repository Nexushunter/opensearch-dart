import 'dart:async';

import 'package:opensearch_dart/src/api/index/enums.dart';

import '../common/api_client.dart';
import '../common/responses.dart';
import 'enums.dart';
import 'exceptions.dart';
import 'models.dart';

class SearchClient extends ApiClient {
  SearchClient({required super.client, super.signer});
  Set<dynamic> search({
    bool allowNoIndices = true,
    bool allowPartialSearchResults = true,
    String? analyzer,
    bool analyzerWildCard = false,
    int batchedReduceSize = 512,
    Duration cancelAfterTimeInterval = const Duration(seconds: -1),
    bool ccsMinimizeRoundTrips = true,
    String? defaultOperator,
    String? defaultField,
    String? docValueFields,
    List<ExpandWildCardOption> expandWildCardOptions = const [
      ExpandWildCardOption.open
    ],
    bool explain = false,
    int from = 0,
    bool ignoreThrottled = false,
    bool ignoreUnavailable = false,
    bool lenient = false,
    int nonConcurrentShardRequests = 5,
    int preFilterShardSize = 128,
    String? preference,
    String? q,
    bool requestCache = false,
    bool restTotalHitsAsInt = false,
    String? routing,
    Duration? scroll,
    SearchType searchType = SearchType.query_then_fetch,
    bool seqNOPrimaryTerm = false,
    int size = 1000,
    List<String> sort = const [],
    bool includeSource = true,
  }) {
    return {};
  }

  FutureOr<SearchHit> all(String index) async {
    return await client
        .get('$index/_search')
        .onError(onErrorResponse(endpoint: 'search.all'))
        .then(
          (value) => SearchHit.fromMap(value.data),
        );
  }

  FutureOr<SearchHit> allCluster() async {
    return await client.get('_search').then(
          (value) => SearchHit.fromMap(value.data),
        );
  }
}

String getSearchOperatorFormat(SearchOperators operator) {
  switch (operator) {
    case SearchOperators.StartsWIth:
      return '%s:%s*';
    case SearchOperators.EndsWith:
      return '%s:*%s';
    case SearchOperators.Contains:
      return '%s:*%s*';
    case SearchOperators.Equals:
      return '%s:%s';
    case SearchOperators.Not:
      return '-${getSearchOperatorFormat(SearchOperators.Equals)}';
    default:
      throw SearchException.invalidOperator(operator.name);
  }
}
