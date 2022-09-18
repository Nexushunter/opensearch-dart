import 'package:opensearch_dart/src/api/index/enums.dart';

import '../common/api_client.dart';

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
}

enum SearchType { query_then_fetch, dfs_query_then_fetch }
