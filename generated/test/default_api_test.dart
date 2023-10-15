//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

import 'package:opensearch/api.dart';
import 'package:test/test.dart';

/// tests for DefaultApi
void main() {
  // final instance = DefaultApi();

  group('tests for DefaultApi', () {
    // Allows to perform multiple index/update/delete operations in a single request.
    //
    //Future bulkPost(Object body, { String waitForActiveShards, RefreshEnum refresh, String routing, String timeout, String type, List<String> source_, List<String> sourceExcludes, List<String> sourceIncludes, String pipeline, bool requireAlias }) async
    test('test bulkPost', () async {
      // TODO
    });

    // Allows to perform multiple index/update/delete operations in a single request.
    //
    //Future bulkPostWithIndex(String index, Object body, { String waitForActiveShards, RefreshEnum refresh, String routing, String timeout, String type, List<String> source_, List<String> sourceExcludes, List<String> sourceIncludes, String pipeline, bool requireAlias }) async
    test('test bulkPostWithIndex', () async {
      // TODO
    });

    // Allows to perform multiple index/update/delete operations in a single request.
    //
    //Future bulkPut(Object body, { String waitForActiveShards, RefreshEnum refresh, String routing, String timeout, String type, List<String> source_, List<String> sourceExcludes, List<String> sourceIncludes, String pipeline, bool requireAlias }) async
    test('test bulkPut', () async {
      // TODO
    });

    // Allows to perform multiple index/update/delete operations in a single request.
    //
    //Future bulkPutWithIndex(String index, Object body, { String waitForActiveShards, RefreshEnum refresh, String routing, String timeout, String type, List<String> source_, List<String> sourceExcludes, List<String> sourceIncludes, String pipeline, bool requireAlias }) async
    test('test bulkPutWithIndex', () async {
      // TODO
    });

    // Returns a document.
    //
    //Future<GetResponseContent> callGet(String id, String index, { List<String> storedFields, String preference, bool realtime, bool refresh, String routing, List<String> source_, List<String> sourceExcludes, List<String> sourceIncludes, int version, VersionType versionType }) async
    test('test callGet', () async {
      // TODO
    });

    // Shows information about currently configured aliases to indices including filter and routing infos.
    //
    //Future catAliases({ String format, bool local, List<String> h, bool help, List<String> s, bool v, ExpandWildcards expandWildcards }) async
    test('test catAliases', () async {
      // TODO
    });

    // Shows information about currently configured aliases to indices including filter and routing infos.
    //
    //Future catAliasesWithName(String name, { String format, bool local, List<String> h, bool help, List<String> s, bool v, ExpandWildcards expandWildcards }) async
    test('test catAliasesWithName', () async {
      // TODO
    });

    // Lists all active point-in-time segments.
    //
    //Future<CatAllPitSegmentsResponseContent> catAllPitSegments() async
    test('test catAllPitSegments', () async {
      // TODO
    });

    // Provides a snapshot of how many shards are allocated to each data node and how much disk space they are using.
    //
    //Future catAllocation({ String format, Bytes bytes, bool local, String masterTimeout, String clusterManagerTimeout, List<String> h, bool help, List<String> s, bool v }) async
    test('test catAllocation', () async {
      // TODO
    });

    // Provides a snapshot of how many shards are allocated to each data node and how much disk space they are using.
    //
    //Future catAllocationWithNodeId(String nodeId, { String format, Bytes bytes, bool local, String masterTimeout, String clusterManagerTimeout, List<String> h, bool help, List<String> s, bool v }) async
    test('test catAllocationWithNodeId', () async {
      // TODO
    });

    // Returns information about the cluster-manager node.
    //
    //Future catClusterManager({ String format, bool local, String masterTimeout, String clusterManagerTimeout, List<String> h, bool help, List<String> s, bool v }) async
    test('test catClusterManager', () async {
      // TODO
    });

    // Provides quick access to the document count of the entire cluster, or individual indices.
    //
    //Future catCount({ String format, List<String> h, bool help, List<String> s, bool v }) async
    test('test catCount', () async {
      // TODO
    });

    // Provides quick access to the document count of the entire cluster, or individual indices.
    //
    //Future catCountWithIndex(String index, { String format, List<String> h, bool help, List<String> s, bool v }) async
    test('test catCountWithIndex', () async {
      // TODO
    });

    // Shows how much heap memory is currently being used by fielddata on every data node in the cluster.
    //
    //Future catFielddata({ String format, Bytes bytes, List<String> h, bool help, List<String> s, bool v, List<String> fields }) async
    test('test catFielddata', () async {
      // TODO
    });

    // Shows how much heap memory is currently being used by fielddata on every data node in the cluster.
    //
    //Future catFielddataWithFields(String fields, { String format, Bytes bytes, List<String> h, bool help, List<String> s, bool v, List<String> fields2 }) async
    test('test catFielddataWithFields', () async {
      // TODO
    });

    // Returns a concise representation of the cluster health.
    //
    //Future catHealth({ String format, List<String> h, bool help, List<String> s, Time time, bool ts, bool v }) async
    test('test catHealth', () async {
      // TODO
    });

    // Returns help for the Cat APIs.
    //
    //Future catHelp({ bool help, List<String> s }) async
    test('test catHelp', () async {
      // TODO
    });

    // Returns information about indices: number of primaries and replicas, document counts, disk size, ...
    //
    //Future catIndices({ String format, Bytes bytes, bool local, String masterTimeout, String clusterManagerTimeout, List<String> h, Health health, bool help, bool pri, List<String> s, Time time, bool v, bool includeUnloadedSegments, ExpandWildcards expandWildcards }) async
    test('test catIndices', () async {
      // TODO
    });

    // Returns information about indices: number of primaries and replicas, document counts, disk size, ...
    //
    //Future catIndicesWithIndex(String index, { String format, Bytes bytes, bool local, String masterTimeout, String clusterManagerTimeout, List<String> h, Health health, bool help, bool pri, List<String> s, Time time, bool v, bool includeUnloadedSegments, ExpandWildcards expandWildcards }) async
    test('test catIndicesWithIndex', () async {
      // TODO
    });

    // Returns information about the cluster-manager node.
    //
    //Future catMaster({ String format, bool local, String masterTimeout, String clusterManagerTimeout, List<String> h, bool help, List<String> s, bool v }) async
    test('test catMaster', () async {
      // TODO
    });

    // Returns information about custom node attributes.
    //
    //Future catNodeattrs({ String format, bool local, String masterTimeout, String clusterManagerTimeout, List<String> h, bool help, List<String> s, bool v }) async
    test('test catNodeattrs', () async {
      // TODO
    });

    // Returns basic statistics about performance of cluster nodes.
    //
    //Future catNodes({ Bytes bytes, String format, bool fullId, bool local, String masterTimeout, String clusterManagerTimeout, List<String> h, bool help, List<String> s, Time time, bool v }) async
    test('test catNodes', () async {
      // TODO
    });

    // Returns a concise representation of the cluster pending tasks.
    //
    //Future catPendingTasks({ String format, bool local, String masterTimeout, String clusterManagerTimeout, List<String> h, bool help, List<String> s, Time time, bool v }) async
    test('test catPendingTasks', () async {
      // TODO
    });

    // List segments for one or several PITs.
    //
    //Future<CatPitSegmentsResponseContent> catPitSegments({ CatPitSegmentsBodyParams catPitSegmentsBodyParams }) async
    test('test catPitSegments', () async {
      // TODO
    });

    // Returns information about installed plugins across nodes node.
    //
    //Future catPlugins({ String format, bool local, String masterTimeout, String clusterManagerTimeout, List<String> h, bool help, List<String> s, bool v }) async
    test('test catPlugins', () async {
      // TODO
    });

    // Returns information about index shard recoveries, both on-going completed.
    //
    //Future catRecovery({ String format, bool activeOnly, Bytes bytes, bool detailed, List<String> h, bool help, List<String> index, List<String> s, Time time, bool v }) async
    test('test catRecovery', () async {
      // TODO
    });

    // Returns information about index shard recoveries, both on-going completed.
    //
    //Future catRecoveryWithIndex(String index, { String format, bool activeOnly, Bytes bytes, bool detailed, List<String> h, bool help, List<String> index2, List<String> s, Time time, bool v }) async
    test('test catRecoveryWithIndex', () async {
      // TODO
    });

    // Returns information about snapshot repositories registered in the cluster.
    //
    //Future catRepositories({ String format, bool local, String masterTimeout, String clusterManagerTimeout, List<String> h, bool help, List<String> s, bool v }) async
    test('test catRepositories', () async {
      // TODO
    });

    // Returns information about both on-going and latest completed Segment Replication events.
    //
    //Future catSegmentReplication({ String format, bool activeOnly, bool completedOnly, Bytes bytes, bool detailed, List<String> shards, List<String> h, bool help, List<String> index, List<String> s, Time time, bool v }) async
    test('test catSegmentReplication', () async {
      // TODO
    });

    // Returns information about both on-going and latest completed Segment Replication events.
    //
    //Future catSegmentReplicationWithIndex(String index, { String format, bool activeOnly, bool completedOnly, Bytes bytes, bool detailed, List<String> shards, List<String> h, bool help, List<String> index2, List<String> s, Time time, bool v }) async
    test('test catSegmentReplicationWithIndex', () async {
      // TODO
    });

    // Provides low-level information about the segments in the shards of an index.
    //
    //Future catSegments({ String format, Bytes bytes, String masterTimeout, String clusterManagerTimeout, List<String> h, bool help, List<String> s, bool v }) async
    test('test catSegments', () async {
      // TODO
    });

    // Provides low-level information about the segments in the shards of an index.
    //
    //Future catSegmentsWithIndex(String index, { String format, Bytes bytes, String masterTimeout, String clusterManagerTimeout, List<String> h, bool help, List<String> s, bool v }) async
    test('test catSegmentsWithIndex', () async {
      // TODO
    });

    // Provides a detailed view of shard allocation on nodes.
    //
    //Future catShards({ String format, Bytes bytes, bool local, String masterTimeout, String clusterManagerTimeout, List<String> h, bool help, List<String> s, Time time, bool v }) async
    test('test catShards', () async {
      // TODO
    });

    // Provides a detailed view of shard allocation on nodes.
    //
    //Future catShardsWithIndex(String index, { String format, Bytes bytes, bool local, String masterTimeout, String clusterManagerTimeout, List<String> h, bool help, List<String> s, Time time, bool v }) async
    test('test catShardsWithIndex', () async {
      // TODO
    });

    // Returns all snapshots in a specific repository.
    //
    //Future catSnapshots({ String format, bool ignoreUnavailable, String masterTimeout, String clusterManagerTimeout, List<String> h, bool help, List<String> s, Time time, bool v }) async
    test('test catSnapshots', () async {
      // TODO
    });

    // Returns all snapshots in a specific repository.
    //
    //Future catSnapshotsWithRepository(String repository, { String format, bool ignoreUnavailable, String masterTimeout, String clusterManagerTimeout, List<String> h, bool help, List<String> s, Time time, bool v }) async
    test('test catSnapshotsWithRepository', () async {
      // TODO
    });

    // Returns information about the tasks currently executing on one or more nodes in the cluster.
    //
    //Future catTasks({ String format, List<String> nodes, List<String> actions, bool detailed, String parentTaskId, List<String> h, bool help, List<String> s, Time time, bool v }) async
    test('test catTasks', () async {
      // TODO
    });

    // Returns information about existing templates.
    //
    //Future catTemplates({ String format, bool local, String masterTimeout, String clusterManagerTimeout, List<String> h, bool help, List<String> s, bool v }) async
    test('test catTemplates', () async {
      // TODO
    });

    // Returns information about existing templates.
    //
    //Future catTemplatesWithName(String name, { String format, bool local, String masterTimeout, String clusterManagerTimeout, List<String> h, bool help, List<String> s, bool v }) async
    test('test catTemplatesWithName', () async {
      // TODO
    });

    // Returns cluster-wide thread pool statistics per node. By default the active, queue and rejected statistics are returned for all thread pools.
    //
    //Future catThreadPool({ String format, int size, bool local, String masterTimeout, String clusterManagerTimeout, List<String> h, bool help, List<String> s, bool v }) async
    test('test catThreadPool', () async {
      // TODO
    });

    // Returns cluster-wide thread pool statistics per node. By default the active, queue and rejected statistics are returned for all thread pools.
    //
    //Future catThreadPoolWithThreadPoolPatterns(String threadPoolPatterns, { String format, int size, bool local, String masterTimeout, String clusterManagerTimeout, List<String> h, bool help, List<String> s, bool v }) async
    test('test catThreadPoolWithThreadPoolPatterns', () async {
      // TODO
    });

    // Changes the password for the current user.
    //
    //Future<ChangePasswordResponseContent> changePassword(ChangePasswordRequestContent changePasswordRequestContent) async
    test('test changePassword', () async {
      // TODO
    });

    // Explicitly clears the search context for a scroll.
    //
    //Future clearScroll({ Object body }) async
    test('test clearScroll', () async {
      // TODO
    });

    // Explicitly clears the search context for a scroll.
    //
    //Future clearScrollWithScrollId(String scrollId, { Object body }) async
    test('test clearScrollWithScrollId', () async {
      // TODO
    });

    // Provides explanations for shard allocations in the cluster.
    //
    //Future clusterAllocationExplainGet({ bool includeYesDecisions, bool includeDiskInfo }) async
    test('test clusterAllocationExplainGet', () async {
      // TODO
    });

    // Provides explanations for shard allocations in the cluster.
    //
    //Future clusterAllocationExplainPost({ bool includeYesDecisions, bool includeDiskInfo, Object body }) async
    test('test clusterAllocationExplainPost', () async {
      // TODO
    });

    // Deletes a component template.
    //
    //Future clusterDeleteComponentTemplate(String name, { String timeout, String masterTimeout, String clusterManagerTimeout }) async
    test('test clusterDeleteComponentTemplate', () async {
      // TODO
    });

    // Delete any existing decommission.
    //
    //Future clusterDeleteDecommissionAwareness() async
    test('test clusterDeleteDecommissionAwareness', () async {
      // TODO
    });

    // Clears cluster voting config exclusions.
    //
    //Future clusterDeleteVotingConfigExclusions({ bool waitForRemoval }) async
    test('test clusterDeleteVotingConfigExclusions', () async {
      // TODO
    });

    // Delete weighted shard routing weights.
    //
    //Future clusterDeleteWeightedRouting() async
    test('test clusterDeleteWeightedRouting', () async {
      // TODO
    });

    // Returns information about whether a particular component template exist.
    //
    //Future clusterExistsComponentTemplate(String name, { String masterTimeout, bool local }) async
    test('test clusterExistsComponentTemplate', () async {
      // TODO
    });

    // Returns one or more component templates.
    //
    //Future clusterGetComponentTemplate({ String masterTimeout, String clusterManagerTimeout, bool local }) async
    test('test clusterGetComponentTemplate', () async {
      // TODO
    });

    // Returns one or more component templates.
    //
    //Future clusterGetComponentTemplateWithName(String name, { String masterTimeout, String clusterManagerTimeout, bool local }) async
    test('test clusterGetComponentTemplateWithName', () async {
      // TODO
    });

    // Get details and status of decommissioned attribute.
    //
    //Future clusterGetDecommissionAwareness(String awarenessAttributeName) async
    test('test clusterGetDecommissionAwareness', () async {
      // TODO
    });

    // Returns cluster settings.
    //
    //Future<ClusterGetSettingsResponseContent> clusterGetSettings({ bool flatSettings, String masterTimeout, String clusterManagerTimeout, String timeout, bool includeDefaults }) async
    test('test clusterGetSettings', () async {
      // TODO
    });

    // Fetches weighted shard routing weights.
    //
    //Future clusterGetWeightedRouting(String attribute) async
    test('test clusterGetWeightedRouting', () async {
      // TODO
    });

    // Returns basic information about the health of the cluster.
    //
    //Future clusterHealth({ ExpandWildcards expandWildcards, ClusterHealthLevel level, bool local, String masterTimeout, String clusterManagerTimeout, String timeout, String waitForActiveShards, String waitForNodes, WaitForEvents waitForEvents, bool waitForNoRelocatingShards, bool waitForNoInitializingShards, WaitForStatus waitForStatus, String awarenessAttribute, bool ensureNodeCommissioned }) async
    test('test clusterHealth', () async {
      // TODO
    });

    // Returns basic information about the health of the cluster.
    //
    //Future clusterHealthWithIndex(String index, { ExpandWildcards expandWildcards, ClusterHealthLevel level, bool local, String masterTimeout, String clusterManagerTimeout, String timeout, String waitForActiveShards, String waitForNodes, WaitForEvents waitForEvents, bool waitForNoRelocatingShards, bool waitForNoInitializingShards, WaitForStatus waitForStatus, String awarenessAttribute, bool ensureNodeCommissioned }) async
    test('test clusterHealthWithIndex', () async {
      // TODO
    });

    // Returns a list of any cluster-level changes (e.g. create index, update mapping, allocate or fail shard) which have not yet been executed.
    //
    //Future clusterPendingTasks({ bool local, String masterTimeout, String clusterManagerTimeout }) async
    test('test clusterPendingTasks', () async {
      // TODO
    });

    // Updates the cluster voting config exclusions by node ids or node names.
    //
    //Future clusterPostVotingConfigExclusions({ String nodeIds, String nodeNames, String timeout }) async
    test('test clusterPostVotingConfigExclusions', () async {
      // TODO
    });

    // Creates or updates a component template.
    //
    //Future clusterPutComponentTemplatePost(String name, Object body, { bool create, String timeout, String masterTimeout, String clusterManagerTimeout }) async
    test('test clusterPutComponentTemplatePost', () async {
      // TODO
    });

    // Creates or updates a component template.
    //
    //Future clusterPutComponentTemplatePut(String name, Object body, { bool create, String timeout, String masterTimeout, String clusterManagerTimeout }) async
    test('test clusterPutComponentTemplatePut', () async {
      // TODO
    });

    // Decommissions an awareness attribute.
    //
    //Future clusterPutDecommissionAwareness(String awarenessAttributeName, String awarenessAttributeValue) async
    test('test clusterPutDecommissionAwareness', () async {
      // TODO
    });

    // Updates the cluster settings.
    //
    //Future<ClusterPutSettingsResponseContent> clusterPutSettings(ClusterPutSettingsBodyParams clusterPutSettingsBodyParams, { bool flatSettings, String masterTimeout, String clusterManagerTimeout, String timeout }) async
    test('test clusterPutSettings', () async {
      // TODO
    });

    // Updates weighted shard routing weights.
    //
    //Future clusterPutWeightedRouting(String attribute) async
    test('test clusterPutWeightedRouting', () async {
      // TODO
    });

    // Returns the information about configured remote clusters.
    //
    //Future clusterRemoteInfo() async
    test('test clusterRemoteInfo', () async {
      // TODO
    });

    // Allows to manually change the allocation of individual shards in the cluster.
    //
    //Future clusterReroute({ bool dryRun, bool explain, bool retryFailed, List<ClusterRerouteMetricMember> metric, String masterTimeout, String clusterManagerTimeout, String timeout, Object body }) async
    test('test clusterReroute', () async {
      // TODO
    });

    // Returns a comprehensive information about the state of the cluster.
    //
    //Future clusterState({ bool local, String masterTimeout, String clusterManagerTimeout, bool flatSettings, int waitForMetadataVersion, String waitForTimeout, bool ignoreUnavailable, bool allowNoIndices, ExpandWildcards expandWildcards }) async
    test('test clusterState', () async {
      // TODO
    });

    // Returns a comprehensive information about the state of the cluster.
    //
    //Future clusterStateWithIndexMetric(String index, String metric, { bool local, String masterTimeout, String clusterManagerTimeout, bool flatSettings, int waitForMetadataVersion, String waitForTimeout, bool ignoreUnavailable, bool allowNoIndices, ExpandWildcards expandWildcards }) async
    test('test clusterStateWithIndexMetric', () async {
      // TODO
    });

    // Returns a comprehensive information about the state of the cluster.
    //
    //Future clusterStateWithMetric(String metric, { bool local, String masterTimeout, String clusterManagerTimeout, bool flatSettings, int waitForMetadataVersion, String waitForTimeout, bool ignoreUnavailable, bool allowNoIndices, ExpandWildcards expandWildcards }) async
    test('test clusterStateWithMetric', () async {
      // TODO
    });

    // Returns high-level overview of cluster statistics.
    //
    //Future clusterStats({ bool flatSettings, String timeout }) async
    test('test clusterStats', () async {
      // TODO
    });

    // Returns high-level overview of cluster statistics.
    //
    //Future clusterStatsWithNodeId(String nodeId, { bool flatSettings, String timeout }) async
    test('test clusterStatsWithNodeId', () async {
      // TODO
    });

    // Returns number of documents matching a query.
    //
    //Future countGet({ bool ignoreUnavailable, bool ignoreThrottled, bool allowNoIndices, ExpandWildcards expandWildcards, int minScore, String preference, List<String> routing, String q, String analyzer, bool analyzeWildcard, DefaultOperator defaultOperator, String df, bool lenient, int terminateAfter }) async
    test('test countGet', () async {
      // TODO
    });

    // Returns number of documents matching a query.
    //
    //Future countGetWithIndex(String index, { bool ignoreUnavailable, bool ignoreThrottled, bool allowNoIndices, ExpandWildcards expandWildcards, int minScore, String preference, List<String> routing, String q, String analyzer, bool analyzeWildcard, DefaultOperator defaultOperator, String df, bool lenient, int terminateAfter }) async
    test('test countGetWithIndex', () async {
      // TODO
    });

    // Returns number of documents matching a query.
    //
    //Future countPost({ bool ignoreUnavailable, bool ignoreThrottled, bool allowNoIndices, ExpandWildcards expandWildcards, int minScore, String preference, List<String> routing, String q, String analyzer, bool analyzeWildcard, DefaultOperator defaultOperator, String df, bool lenient, int terminateAfter, Object body }) async
    test('test countPost', () async {
      // TODO
    });

    // Returns number of documents matching a query.
    //
    //Future countPostWithIndex(String index, { bool ignoreUnavailable, bool ignoreThrottled, bool allowNoIndices, ExpandWildcards expandWildcards, int minScore, String preference, List<String> routing, String q, String analyzer, bool analyzeWildcard, DefaultOperator defaultOperator, String df, bool lenient, int terminateAfter, Object body }) async
    test('test countPostWithIndex', () async {
      // TODO
    });

    // Creates or replaces the specified action group.
    //
    //Future<CreateActionGroupResponseContent> createActionGroup(String actionGroup, ActionGroup actionGroup2) async
    test('test createActionGroup', () async {
      // TODO
    });

    // Creates point in time context.
    //
    //Future<CreatePitResponseContent> createPit(String index, { bool allowPartialPitCreation, String keepAlive, String preference, List<String> routing, ExpandWildcards expandWildcards }) async
    test('test createPit', () async {
      // TODO
    });

    // Creates a new document in the index.  Returns a 409 response when a document with a same ID already exists in the index.
    //
    //Future createPost(String id, String index, Object body, { String waitForActiveShards, RefreshEnum refresh, String routing, String timeout, int version, VersionType versionType, String pipeline }) async
    test('test createPost', () async {
      // TODO
    });

    // Creates a new document in the index.  Returns a 409 response when a document with a same ID already exists in the index.
    //
    //Future createPut(String id, String index, Object body, { String waitForActiveShards, RefreshEnum refresh, String routing, String timeout, int version, VersionType versionType, String pipeline }) async
    test('test createPut', () async {
      // TODO
    });

    // Creates or replaces the specified role.
    //
    //Future<CreateRoleResponseContent> createRole(String role, Role role2) async
    test('test createRole', () async {
      // TODO
    });

    // Creates or replaces the specified role mapping.
    //
    //Future<CreateRoleMappingResponseContent> createRoleMapping(String role, RoleMapping roleMapping) async
    test('test createRoleMapping', () async {
      // TODO
    });

    // Creates or replaces the specified tenant.
    //
    //Future<CreateTenantResponseContent> createTenant(String tenant, CreateTenantParams createTenantParams) async
    test('test createTenant', () async {
      // TODO
    });

    // Creates or replaces the specified user.
    //
    //Future<CreateUserResponseContent> createUser(String username, User user) async
    test('test createUser', () async {
      // TODO
    });

    // Deletes the specified dangling index.
    //
    //Future danglingIndicesDeleteDanglingIndex(String indexUuid, { bool acceptDataLoss, String timeout, String masterTimeout, String clusterManagerTimeout }) async
    test('test danglingIndicesDeleteDanglingIndex', () async {
      // TODO
    });

    // Imports the specified dangling index.
    //
    //Future danglingIndicesImportDanglingIndex(String indexUuid, { bool acceptDataLoss, String timeout, String masterTimeout, String clusterManagerTimeout }) async
    test('test danglingIndicesImportDanglingIndex', () async {
      // TODO
    });

    // Returns all dangling indices.
    //
    //Future danglingIndicesListDanglingIndices() async
    test('test danglingIndicesListDanglingIndices', () async {
      // TODO
    });

    // Removes a document from the index.
    //
    //Future delete(String id, String index, { String waitForActiveShards, RefreshEnum refresh, String routing, String timeout, int ifSeqNo, int ifPrimaryTerm, int version, VersionType versionType }) async
    test('test delete', () async {
      // TODO
    });

    // Delete a specified action group.
    //
    //Future<DeleteActionGroupResponseContent> deleteActionGroup(String actionGroup) async
    test('test deleteActionGroup', () async {
      // TODO
    });

    // Deletes all active point in time searches.
    //
    //Future<DeleteAllPitsResponseContent> deleteAllPits() async
    test('test deleteAllPits', () async {
      // TODO
    });

    // Deletes documents matching the provided query.
    //
    //Future deleteByQuery(String index, Object body, { String analyzer, bool analyzeWildcard, DefaultOperator defaultOperator, String df, int from, bool ignoreUnavailable, bool allowNoIndices, Conflicts conflicts, ExpandWildcards expandWildcards, bool lenient, String preference, String q, List<String> routing, String scroll, SearchType searchType, String searchTimeout, int size, int maxDocs, List<String> sort, List<String> source_, List<String> sourceExcludes, List<String> sourceIncludes, int terminateAfter, List<String> stats, bool version, bool requestCache, bool refresh, String timeout, String waitForActiveShards, int scrollSize, bool waitForCompletion, int requestsPerSecond, String slices }) async
    test('test deleteByQuery', () async {
      // TODO
    });

    // Changes the number of requests per second for a particular Delete By Query operation.
    //
    //Future deleteByQueryRethrottle(String taskId, int requestsPerSecond) async
    test('test deleteByQueryRethrottle', () async {
      // TODO
    });

    // Deletes all distinguished names in the specified cluster’s or node’s allow list.
    //
    //Future<DeleteDistinguishedNamesResponseContent> deleteDistinguishedNames(String clusterName) async
    test('test deleteDistinguishedNames', () async {
      // TODO
    });

    // Deletes one or more point in time searches based on the IDs passed.
    //
    //Future<DeletePitResponseContent> deletePit({ DeletePitBodyParams deletePitBodyParams }) async
    test('test deletePit', () async {
      // TODO
    });

    // Delete the specified role.
    //
    //Future<DeleteRoleResponseContent> deleteRole(String role) async
    test('test deleteRole', () async {
      // TODO
    });

    // Deletes the specified role mapping.
    //
    //Future<DeleteRoleMappingResponseContent> deleteRoleMapping(String role) async
    test('test deleteRoleMapping', () async {
      // TODO
    });

    // Deletes a script.
    //
    //Future deleteScript(String id, { String timeout, String masterTimeout, String clusterManagerTimeout }) async
    test('test deleteScript', () async {
      // TODO
    });

    // Delete the specified tenant.
    //
    //Future<DeleteTenantResponseContent> deleteTenant(String tenant) async
    test('test deleteTenant', () async {
      // TODO
    });

    // Delete the specified user.
    //
    //Future<DeleteUserResponseContent> deleteUser(String username) async
    test('test deleteUser', () async {
      // TODO
    });

    // Returns information about whether a document exists in an index.
    //
    //Future exists(String id, String index, { List<String> storedFields, String preference, bool realtime, bool refresh, String routing, List<String> source_, List<String> sourceExcludes, List<String> sourceIncludes, int version, VersionType versionType }) async
    test('test exists', () async {
      // TODO
    });

    // Returns information about whether a document source exists in an index.
    //
    //Future existsSource(String id, String index, { String preference, bool realtime, bool refresh, String routing, List<String> source_, List<String> sourceExcludes, List<String> sourceIncludes, int version, VersionType versionType }) async
    test('test existsSource', () async {
      // TODO
    });

    // Returns information about why a specific matches (or doesn't match) a query.
    //
    //Future explainGet(String id, String index, { bool analyzeWildcard, String analyzer, DefaultOperator defaultOperator, String df, List<String> storedFields, bool lenient, String preference, String q, String routing, List<String> source_, List<String> sourceExcludes, List<String> sourceIncludes }) async
    test('test explainGet', () async {
      // TODO
    });

    // Returns information about why a specific matches (or doesn't match) a query.
    //
    //Future explainPost(String id, String index, { bool analyzeWildcard, String analyzer, DefaultOperator defaultOperator, String df, List<String> storedFields, bool lenient, String preference, String q, String routing, List<String> source_, List<String> sourceExcludes, List<String> sourceIncludes, Object body }) async
    test('test explainPost', () async {
      // TODO
    });

    // Returns the information about the capabilities of fields among multiple indices.
    //
    //Future fieldCapsGet({ List<String> fields, bool ignoreUnavailable, bool allowNoIndices, ExpandWildcards expandWildcards, bool includeUnmapped }) async
    test('test fieldCapsGet', () async {
      // TODO
    });

    // Returns the information about the capabilities of fields among multiple indices.
    //
    //Future fieldCapsGetWithIndex(String index, { List<String> fields, bool ignoreUnavailable, bool allowNoIndices, ExpandWildcards expandWildcards, bool includeUnmapped }) async
    test('test fieldCapsGetWithIndex', () async {
      // TODO
    });

    // Returns the information about the capabilities of fields among multiple indices.
    //
    //Future fieldCapsPost({ List<String> fields, bool ignoreUnavailable, bool allowNoIndices, ExpandWildcards expandWildcards, bool includeUnmapped, Object body }) async
    test('test fieldCapsPost', () async {
      // TODO
    });

    // Returns the information about the capabilities of fields among multiple indices.
    //
    //Future fieldCapsPostWithIndex(String index, { List<String> fields, bool ignoreUnavailable, bool allowNoIndices, ExpandWildcards expandWildcards, bool includeUnmapped, Object body }) async
    test('test fieldCapsPostWithIndex', () async {
      // TODO
    });

    // Flushes the Security plugin user, authentication, and authorization cache.
    //
    //Future<FlushCacheResponseContent> flushCache() async
    test('test flushCache', () async {
      // TODO
    });

    // Returns account details for the current user.
    //
    //Future<AccountDetails> getAccountDetails() async
    test('test getAccountDetails', () async {
      // TODO
    });

    // Retrieves one action group.
    //
    //Future<Map<String, ActionGroup>> getActionGroup(String actionGroup) async
    test('test getActionGroup', () async {
      // TODO
    });

    // Retrieves all action groups.
    //
    //Future<Map<String, ActionGroup>> getActionGroups() async
    test('test getActionGroups', () async {
      // TODO
    });

    // Lists all active point in time searches.
    //
    //Future<GetAllPitsResponseContent> getAllPits() async
    test('test getAllPits', () async {
      // TODO
    });

    // Retrieves the audit configuration.
    //
    //Future<AuditConfigWithReadOnly> getAuditConfiguration() async
    test('test getAuditConfiguration', () async {
      // TODO
    });

    // Retrieves the cluster’s security certificates.
    //
    //Future<GetCertificatesResponseContent> getCertificates() async
    test('test getCertificates', () async {
      // TODO
    });

    // Returns the current Security plugin configuration in JSON format.
    //
    //Future<DynamicConfig> getConfiguration() async
    test('test getConfiguration', () async {
      // TODO
    });

    // Retrieves all distinguished names in the allow list.
    //
    //Future<Map<String, DistinguishedNames>> getDistinguishedNames() async
    test('test getDistinguishedNames', () async {
      // TODO
    });

    // Retrieve distinguished names of a specified cluster.
    //
    //Future<Map<String, DistinguishedNames>> getDistinguishedNamesWithClusterName(String clusterName) async
    test('test getDistinguishedNamesWithClusterName', () async {
      // TODO
    });

    // Retrieves one role.
    //
    //Future<Map<String, Role>> getRole(String role) async
    test('test getRole', () async {
      // TODO
    });

    // Retrieves one role mapping.
    //
    //Future<Map<String, RoleMapping>> getRoleMapping(String role) async
    test('test getRoleMapping', () async {
      // TODO
    });

    // Retrieves all role mappings.
    //
    //Future<Map<String, RoleMapping>> getRoleMappings() async
    test('test getRoleMappings', () async {
      // TODO
    });

    // Retrieves all roles.
    //
    //Future<Map<String, Role>> getRoles() async
    test('test getRoles', () async {
      // TODO
    });

    // Returns a script.
    //
    //Future getScript(String id, { String masterTimeout, String clusterManagerTimeout }) async
    test('test getScript', () async {
      // TODO
    });

    // Returns all script contexts.
    //
    //Future getScriptContext() async
    test('test getScriptContext', () async {
      // TODO
    });

    // Returns available script types, languages and contexts.
    //
    //Future getScriptLanguages() async
    test('test getScriptLanguages', () async {
      // TODO
    });

    // Returns the source of a document.
    //
    //Future getSource(String id, String index, { String preference, bool realtime, bool refresh, String routing, List<String> source_, List<String> sourceExcludes, List<String> sourceIncludes, int version, VersionType versionType }) async
    test('test getSource', () async {
      // TODO
    });

    // Retrieves one tenant.
    //
    //Future<Map<String, Tenant>> getTenant(String tenant) async
    test('test getTenant', () async {
      // TODO
    });

    // Retrieves all tenants.
    //
    //Future<Map<String, Tenant>> getTenants() async
    test('test getTenants', () async {
      // TODO
    });

    // Retrieve one internal user.
    //
    //Future<Map<String, User>> getUser(String username) async
    test('test getUser', () async {
      // TODO
    });

    // Retrieve all internal users.
    //
    //Future<Map<String, User>> getUsers() async
    test('test getUsers', () async {
      // TODO
    });

    // Creates or updates a document in an index.
    //
    //Future indexPost(String index, Object body, { String waitForActiveShards, OpType opType, RefreshEnum refresh, String routing, String timeout, int version, VersionType versionType, int ifSeqNo, int ifPrimaryTerm, String pipeline, bool requireAlias }) async
    test('test indexPost', () async {
      // TODO
    });

    // Creates or updates a document in an index.
    //
    //Future indexPostWithId(String id, String index, Object body, { String waitForActiveShards, OpType opType, RefreshEnum refresh, String routing, String timeout, int version, VersionType versionType, int ifSeqNo, int ifPrimaryTerm, String pipeline, bool requireAlias }) async
    test('test indexPostWithId', () async {
      // TODO
    });

    // Creates or updates a document in an index.
    //
    //Future indexPutWithId(String id, String index, Object body, { String waitForActiveShards, OpType opType, RefreshEnum refresh, String routing, String timeout, int version, VersionType versionType, int ifSeqNo, int ifPrimaryTerm, String pipeline, bool requireAlias }) async
    test('test indexPutWithId', () async {
      // TODO
    });

    // Adds a block to an index.
    //
    //Future indicesAddBlock(String index, String block, { String timeout, String masterTimeout, String clusterManagerTimeout, bool ignoreUnavailable, bool allowNoIndices, ExpandWildcards expandWildcards }) async
    test('test indicesAddBlock', () async {
      // TODO
    });

    // Performs the analysis process on a text and return the tokens breakdown of the text.
    //
    //Future indicesAnalyzeGet({ String index }) async
    test('test indicesAnalyzeGet', () async {
      // TODO
    });

    // Performs the analysis process on a text and return the tokens breakdown of the text.
    //
    //Future indicesAnalyzeGetWithIndex(String index, { String index2 }) async
    test('test indicesAnalyzeGetWithIndex', () async {
      // TODO
    });

    // Performs the analysis process on a text and return the tokens breakdown of the text.
    //
    //Future indicesAnalyzePost({ String index, Object body }) async
    test('test indicesAnalyzePost', () async {
      // TODO
    });

    // Performs the analysis process on a text and return the tokens breakdown of the text.
    //
    //Future indicesAnalyzePostWithIndex(String index, { String index2, Object body }) async
    test('test indicesAnalyzePostWithIndex', () async {
      // TODO
    });

    // Clears all or specific caches for one or more indices.
    //
    //Future indicesClearCache({ bool fielddata, List<String> fields, bool query, bool ignoreUnavailable, bool allowNoIndices, ExpandWildcards expandWildcards, List<String> index, bool request }) async
    test('test indicesClearCache', () async {
      // TODO
    });

    // Clears all or specific caches for one or more indices.
    //
    //Future indicesClearCacheWithIndex(String index, { bool fielddata, List<String> fields, bool query, bool ignoreUnavailable, bool allowNoIndices, ExpandWildcards expandWildcards, List<String> index2, bool request }) async
    test('test indicesClearCacheWithIndex', () async {
      // TODO
    });

    // Clones an index.
    //
    //Future indicesClonePost(String index, String target, { String timeout, String masterTimeout, String clusterManagerTimeout, String waitForActiveShards, Object body }) async
    test('test indicesClonePost', () async {
      // TODO
    });

    // Clones an index.
    //
    //Future indicesClonePut(String index, String target, { String timeout, String masterTimeout, String clusterManagerTimeout, String waitForActiveShards, Object body }) async
    test('test indicesClonePut', () async {
      // TODO
    });

    // Closes an index.
    //
    //Future indicesClose(String index, { String timeout, String masterTimeout, String clusterManagerTimeout, bool ignoreUnavailable, bool allowNoIndices, ExpandWildcards expandWildcards, String waitForActiveShards }) async
    test('test indicesClose', () async {
      // TODO
    });

    // Creates an index with optional settings and mappings.
    //
    //Future<IndicesCreateResponseContent> indicesCreate(String index, { String waitForActiveShards, String timeout, String masterTimeout, String clusterManagerTimeout, IndicesCreateBodyParams indicesCreateBodyParams }) async
    test('test indicesCreate', () async {
      // TODO
    });

    // Creates or updates a data stream.
    //
    //Future<IndicesCreateDataStreamResponseContent> indicesCreateDataStream(String name, { Object body }) async
    test('test indicesCreateDataStream', () async {
      // TODO
    });

    // Provides statistics on operations happening in a data stream.
    //
    //Future indicesDataStreamsStats() async
    test('test indicesDataStreamsStats', () async {
      // TODO
    });

    // Provides statistics on operations happening in a data stream.
    //
    //Future indicesDataStreamsStatsWithName(String name) async
    test('test indicesDataStreamsStatsWithName', () async {
      // TODO
    });

    // Deletes an index.
    //
    //Future<IndicesDeleteResponseContent> indicesDelete(String index, { String timeout, String masterTimeout, bool ignoreUnavailable, bool allowNoIndices, ExpandWildcards expandWildcards }) async
    test('test indicesDelete', () async {
      // TODO
    });

    // Deletes an alias.
    //
    //Future indicesDeleteAlias(String index, String name, { String timeout, String masterTimeout, String clusterManagerTimeout }) async
    test('test indicesDeleteAlias', () async {
      // TODO
    });

    // Deletes an alias.
    //
    //Future indicesDeleteAliasPlural(String index, String name, { String timeout, String masterTimeout, String clusterManagerTimeout }) async
    test('test indicesDeleteAliasPlural', () async {
      // TODO
    });

    // Deletes a data stream.
    //
    //Future<IndicesDeleteDataStreamResponseContent> indicesDeleteDataStream(String name) async
    test('test indicesDeleteDataStream', () async {
      // TODO
    });

    // Deletes an index template.
    //
    //Future indicesDeleteIndexTemplate(String name, { String timeout, String masterTimeout, String clusterManagerTimeout }) async
    test('test indicesDeleteIndexTemplate', () async {
      // TODO
    });

    // Deletes an index template.
    //
    //Future indicesDeleteTemplate(String name, { String timeout, String masterTimeout, String clusterManagerTimeout }) async
    test('test indicesDeleteTemplate', () async {
      // TODO
    });

    // Returns information about whether a particular index exists.
    //
    //Future indicesExists(String index, { bool local, bool ignoreUnavailable, bool allowNoIndices, ExpandWildcards expandWildcards, bool flatSettings, bool includeDefaults }) async
    test('test indicesExists', () async {
      // TODO
    });

    // Returns information about whether a particular alias exists.
    //
    //Future indicesExistsAlias(String name, { bool ignoreUnavailable, bool allowNoIndices, ExpandWildcards expandWildcards, bool local }) async
    test('test indicesExistsAlias', () async {
      // TODO
    });

    // Returns information about whether a particular alias exists.
    //
    //Future indicesExistsAliasWithIndex(String index, String name, { bool ignoreUnavailable, bool allowNoIndices, ExpandWildcards expandWildcards, bool local }) async
    test('test indicesExistsAliasWithIndex', () async {
      // TODO
    });

    // Returns information about whether a particular index template exists.
    //
    //Future indicesExistsIndexTemplate(String name, { bool flatSettings, String masterTimeout, bool local }) async
    test('test indicesExistsIndexTemplate', () async {
      // TODO
    });

    // Returns information about whether a particular index template exists.
    //
    //Future indicesExistsTemplate(String name, { bool flatSettings, String masterTimeout, bool local }) async
    test('test indicesExistsTemplate', () async {
      // TODO
    });

    // Performs the flush operation on one or more indices.
    //
    //Future indicesFlushGet({ bool force, bool waitIfOngoing, bool ignoreUnavailable, bool allowNoIndices, ExpandWildcards expandWildcards }) async
    test('test indicesFlushGet', () async {
      // TODO
    });

    // Performs the flush operation on one or more indices.
    //
    //Future indicesFlushGetWithIndex(String index, { bool force, bool waitIfOngoing, bool ignoreUnavailable, bool allowNoIndices, ExpandWildcards expandWildcards }) async
    test('test indicesFlushGetWithIndex', () async {
      // TODO
    });

    // Performs the flush operation on one or more indices.
    //
    //Future indicesFlushPost({ bool force, bool waitIfOngoing, bool ignoreUnavailable, bool allowNoIndices, ExpandWildcards expandWildcards }) async
    test('test indicesFlushPost', () async {
      // TODO
    });

    // Performs the flush operation on one or more indices.
    //
    //Future indicesFlushPostWithIndex(String index, { bool force, bool waitIfOngoing, bool ignoreUnavailable, bool allowNoIndices, ExpandWildcards expandWildcards }) async
    test('test indicesFlushPostWithIndex', () async {
      // TODO
    });

    // Performs the force merge operation on one or more indices.
    //
    //Future indicesForcemerge({ bool flush, bool ignoreUnavailable, bool allowNoIndices, ExpandWildcards expandWildcards, int maxNumSegments, bool onlyExpungeDeletes }) async
    test('test indicesForcemerge', () async {
      // TODO
    });

    // Performs the force merge operation on one or more indices.
    //
    //Future indicesForcemergeWithIndex(String index, { bool flush, bool ignoreUnavailable, bool allowNoIndices, ExpandWildcards expandWildcards, int maxNumSegments, bool onlyExpungeDeletes }) async
    test('test indicesForcemergeWithIndex', () async {
      // TODO
    });

    // Returns information about one or more indices.
    //
    //Future indicesGet(String index, { bool local, bool ignoreUnavailable, bool allowNoIndices, ExpandWildcards expandWildcards, bool flatSettings, bool includeDefaults, String masterTimeout, String clusterManagerTimeout }) async
    test('test indicesGet', () async {
      // TODO
    });

    // Returns an alias.
    //
    //Future indicesGetAlias({ bool ignoreUnavailable, bool allowNoIndices, ExpandWildcards expandWildcards, bool local }) async
    test('test indicesGetAlias', () async {
      // TODO
    });

    // Returns an alias.
    //
    //Future indicesGetAliasWithIndex(String index, { bool ignoreUnavailable, bool allowNoIndices, ExpandWildcards expandWildcards, bool local }) async
    test('test indicesGetAliasWithIndex', () async {
      // TODO
    });

    // Returns an alias.
    //
    //Future indicesGetAliasWithIndexName(String index, String name, { bool ignoreUnavailable, bool allowNoIndices, ExpandWildcards expandWildcards, bool local }) async
    test('test indicesGetAliasWithIndexName', () async {
      // TODO
    });

    // Returns an alias.
    //
    //Future indicesGetAliasWithName(String name, { bool ignoreUnavailable, bool allowNoIndices, ExpandWildcards expandWildcards, bool local }) async
    test('test indicesGetAliasWithName', () async {
      // TODO
    });

    // Returns data streams.
    //
    //Future<IndicesGetDataStreamResponseContent> indicesGetDataStream() async
    test('test indicesGetDataStream', () async {
      // TODO
    });

    // Returns data streams.
    //
    //Future<IndicesGetDataStreamWithNameResponseContent> indicesGetDataStreamWithName(String name) async
    test('test indicesGetDataStreamWithName', () async {
      // TODO
    });

    // Returns mapping for one or more fields.
    //
    //Future indicesGetFieldMapping(String fields, { bool includeDefaults, bool ignoreUnavailable, bool allowNoIndices, ExpandWildcards expandWildcards, bool local }) async
    test('test indicesGetFieldMapping', () async {
      // TODO
    });

    // Returns mapping for one or more fields.
    //
    //Future indicesGetFieldMappingWithIndex(String index, String fields, { bool includeDefaults, bool ignoreUnavailable, bool allowNoIndices, ExpandWildcards expandWildcards, bool local }) async
    test('test indicesGetFieldMappingWithIndex', () async {
      // TODO
    });

    // Returns an index template.
    //
    //Future indicesGetIndexTemplate({ bool flatSettings, String masterTimeout, String clusterManagerTimeout, bool local }) async
    test('test indicesGetIndexTemplate', () async {
      // TODO
    });

    // Returns an index template.
    //
    //Future indicesGetIndexTemplateWithName(String name, { bool flatSettings, String masterTimeout, String clusterManagerTimeout, bool local }) async
    test('test indicesGetIndexTemplateWithName', () async {
      // TODO
    });

    // Returns mappings for one or more indices.
    //
    //Future indicesGetMapping({ bool ignoreUnavailable, bool allowNoIndices, ExpandWildcards expandWildcards, String masterTimeout, String clusterManagerTimeout, bool local }) async
    test('test indicesGetMapping', () async {
      // TODO
    });

    // Returns mappings for one or more indices.
    //
    //Future indicesGetMappingWithIndex(String index, { bool ignoreUnavailable, bool allowNoIndices, ExpandWildcards expandWildcards, String masterTimeout, String clusterManagerTimeout, bool local }) async
    test('test indicesGetMappingWithIndex', () async {
      // TODO
    });

    // Returns settings for one or more indices.
    //
    //Future indicesGetSettings({ String masterTimeout, String clusterManagerTimeout, bool ignoreUnavailable, bool allowNoIndices, ExpandWildcards expandWildcards, bool flatSettings, bool local, bool includeDefaults }) async
    test('test indicesGetSettings', () async {
      // TODO
    });

    // Returns settings for one or more indices.
    //
    //Future indicesGetSettingsWithIndex(String index, { String masterTimeout, String clusterManagerTimeout, bool ignoreUnavailable, bool allowNoIndices, ExpandWildcards expandWildcards, bool flatSettings, bool local, bool includeDefaults }) async
    test('test indicesGetSettingsWithIndex', () async {
      // TODO
    });

    // Returns settings for one or more indices.
    //
    //Future indicesGetSettingsWithIndexName(String index, String name, { String masterTimeout, String clusterManagerTimeout, bool ignoreUnavailable, bool allowNoIndices, ExpandWildcards expandWildcards, bool flatSettings, bool local, bool includeDefaults }) async
    test('test indicesGetSettingsWithIndexName', () async {
      // TODO
    });

    // Returns settings for one or more indices.
    //
    //Future indicesGetSettingsWithName(String name, { String masterTimeout, String clusterManagerTimeout, bool ignoreUnavailable, bool allowNoIndices, ExpandWildcards expandWildcards, bool flatSettings, bool local, bool includeDefaults }) async
    test('test indicesGetSettingsWithName', () async {
      // TODO
    });

    // Returns an index template.
    //
    //Future indicesGetTemplate({ bool flatSettings, String masterTimeout, String clusterManagerTimeout, bool local }) async
    test('test indicesGetTemplate', () async {
      // TODO
    });

    // Returns an index template.
    //
    //Future indicesGetTemplateWithName(String name, { bool flatSettings, String masterTimeout, String clusterManagerTimeout, bool local }) async
    test('test indicesGetTemplateWithName', () async {
      // TODO
    });

    // The _upgrade API is no longer useful and will be removed.
    //
    //Future indicesGetUpgrade({ bool ignoreUnavailable, bool allowNoIndices, ExpandWildcards expandWildcards }) async
    test('test indicesGetUpgrade', () async {
      // TODO
    });

    // The _upgrade API is no longer useful and will be removed.
    //
    //Future indicesGetUpgradeWithIndex(String index, { bool ignoreUnavailable, bool allowNoIndices, ExpandWildcards expandWildcards }) async
    test('test indicesGetUpgradeWithIndex', () async {
      // TODO
    });

    // Opens an index.
    //
    //Future indicesOpen(String index, { String timeout, String masterTimeout, bool ignoreUnavailable, bool allowNoIndices, ExpandWildcards expandWildcards, String waitForActiveShards }) async
    test('test indicesOpen', () async {
      // TODO
    });

    // Creates or updates an alias.
    //
    //Future indicesPutAliasPost(String index, String name, { String timeout, String masterTimeout, String clusterManagerTimeout, Object body }) async
    test('test indicesPutAliasPost', () async {
      // TODO
    });

    // Creates or updates an alias.
    //
    //Future indicesPutAliasPostPlural(String index, String name, { String timeout, String masterTimeout, String clusterManagerTimeout, Object body }) async
    test('test indicesPutAliasPostPlural', () async {
      // TODO
    });

    // Creates or updates an alias.
    //
    //Future indicesPutAliasPut(String index, String name, { String timeout, String masterTimeout, String clusterManagerTimeout, Object body }) async
    test('test indicesPutAliasPut', () async {
      // TODO
    });

    // Creates or updates an alias.
    //
    //Future indicesPutAliasPutPlural(String index, String name, { String timeout, String masterTimeout, String clusterManagerTimeout, Object body }) async
    test('test indicesPutAliasPutPlural', () async {
      // TODO
    });

    // Creates or updates an index template.
    //
    //Future indicesPutIndexTemplatePost(String name, Object body, { bool create, String cause, String masterTimeout, String clusterManagerTimeout }) async
    test('test indicesPutIndexTemplatePost', () async {
      // TODO
    });

    // Creates or updates an index template.
    //
    //Future indicesPutIndexTemplatePut(String name, Object body, { bool create, String cause, String masterTimeout, String clusterManagerTimeout }) async
    test('test indicesPutIndexTemplatePut', () async {
      // TODO
    });

    // Updates the index mappings.
    //
    //Future<IndicesPutMappingPostResponseContent> indicesPutMappingPost(String index, Object body, { String timeout, String masterTimeout, String clusterManagerTimeout, bool ignoreUnavailable, bool allowNoIndices, ExpandWildcards expandWildcards, bool writeIndexOnly }) async
    test('test indicesPutMappingPost', () async {
      // TODO
    });

    // Updates the index mappings.
    //
    //Future<IndicesPutMappingPutResponseContent> indicesPutMappingPut(String index, Object body, { String timeout, String masterTimeout, String clusterManagerTimeout, bool ignoreUnavailable, bool allowNoIndices, ExpandWildcards expandWildcards, bool writeIndexOnly }) async
    test('test indicesPutMappingPut', () async {
      // TODO
    });

    // Updates the index settings.
    //
    //Future indicesPutSettings(Object body, { String masterTimeout, String clusterManagerTimeout, String timeout, bool preserveExisting, bool ignoreUnavailable, bool allowNoIndices, ExpandWildcards expandWildcards, bool flatSettings }) async
    test('test indicesPutSettings', () async {
      // TODO
    });

    // Updates the index settings.
    //
    //Future indicesPutSettingsWithIndex(String index, Object body, { String masterTimeout, String clusterManagerTimeout, String timeout, bool preserveExisting, bool ignoreUnavailable, bool allowNoIndices, ExpandWildcards expandWildcards, bool flatSettings }) async
    test('test indicesPutSettingsWithIndex', () async {
      // TODO
    });

    // Creates or updates an index template.
    //
    //Future indicesPutTemplatePost(String name, Object body, { int order, bool create, String masterTimeout, String clusterManagerTimeout }) async
    test('test indicesPutTemplatePost', () async {
      // TODO
    });

    // Creates or updates an index template.
    //
    //Future indicesPutTemplatePut(String name, Object body, { int order, bool create, String masterTimeout, String clusterManagerTimeout }) async
    test('test indicesPutTemplatePut', () async {
      // TODO
    });

    // Returns information about ongoing index shard recoveries.
    //
    //Future indicesRecovery({ bool detailed, bool activeOnly }) async
    test('test indicesRecovery', () async {
      // TODO
    });

    // Returns information about ongoing index shard recoveries.
    //
    //Future indicesRecoveryWithIndex(String index, { bool detailed, bool activeOnly }) async
    test('test indicesRecoveryWithIndex', () async {
      // TODO
    });

    // Performs the refresh operation in one or more indices.
    //
    //Future indicesRefreshGet({ bool ignoreUnavailable, bool allowNoIndices, ExpandWildcards expandWildcards }) async
    test('test indicesRefreshGet', () async {
      // TODO
    });

    // Performs the refresh operation in one or more indices.
    //
    //Future indicesRefreshGetWithIndex(String index, { bool ignoreUnavailable, bool allowNoIndices, ExpandWildcards expandWildcards }) async
    test('test indicesRefreshGetWithIndex', () async {
      // TODO
    });

    // Performs the refresh operation in one or more indices.
    //
    //Future indicesRefreshPost({ bool ignoreUnavailable, bool allowNoIndices, ExpandWildcards expandWildcards }) async
    test('test indicesRefreshPost', () async {
      // TODO
    });

    // Performs the refresh operation in one or more indices.
    //
    //Future indicesRefreshPostWithIndex(String index, { bool ignoreUnavailable, bool allowNoIndices, ExpandWildcards expandWildcards }) async
    test('test indicesRefreshPostWithIndex', () async {
      // TODO
    });

    // Returns information about any matching indices, aliases, and data streams.
    //
    //Future indicesResolveIndex(String name, { ExpandWildcards expandWildcards }) async
    test('test indicesResolveIndex', () async {
      // TODO
    });

    // Updates an alias to point to a new index when the existing index is considered to be too large or too old.
    //
    //Future indicesRollover(String alias, { String timeout, bool dryRun, String masterTimeout, String clusterManagerTimeout, String waitForActiveShards, Object body }) async
    test('test indicesRollover', () async {
      // TODO
    });

    // Updates an alias to point to a new index when the existing index is considered to be too large or too old.
    //
    //Future indicesRolloverWithNewIndex(String alias, String newIndex, { String timeout, bool dryRun, String masterTimeout, String clusterManagerTimeout, String waitForActiveShards, Object body }) async
    test('test indicesRolloverWithNewIndex', () async {
      // TODO
    });

    // Provides low-level information about segments in a Lucene index.
    //
    //Future indicesSegments({ bool ignoreUnavailable, bool allowNoIndices, ExpandWildcards expandWildcards, bool verbose }) async
    test('test indicesSegments', () async {
      // TODO
    });

    // Provides low-level information about segments in a Lucene index.
    //
    //Future indicesSegmentsWithIndex(String index, { bool ignoreUnavailable, bool allowNoIndices, ExpandWildcards expandWildcards, bool verbose }) async
    test('test indicesSegmentsWithIndex', () async {
      // TODO
    });

    // Provides store information for shard copies of indices.
    //
    //Future indicesShardStores({ List<StatusMember> status, bool ignoreUnavailable, bool allowNoIndices, ExpandWildcards expandWildcards }) async
    test('test indicesShardStores', () async {
      // TODO
    });

    // Provides store information for shard copies of indices.
    //
    //Future indicesShardStoresWithIndex(String index, { List<StatusMember> status, bool ignoreUnavailable, bool allowNoIndices, ExpandWildcards expandWildcards }) async
    test('test indicesShardStoresWithIndex', () async {
      // TODO
    });

    // Allow to shrink an existing index into a new index with fewer primary shards.
    //
    //Future indicesShrinkPost(String index, String target, { bool copySettings, String timeout, String masterTimeout, String clusterManagerTimeout, String waitForActiveShards, Object body }) async
    test('test indicesShrinkPost', () async {
      // TODO
    });

    // Allow to shrink an existing index into a new index with fewer primary shards.
    //
    //Future indicesShrinkPut(String index, String target, { bool copySettings, String timeout, String masterTimeout, String clusterManagerTimeout, String waitForActiveShards, Object body }) async
    test('test indicesShrinkPut', () async {
      // TODO
    });

    // Simulate matching the given index name against the index templates in the system.
    //
    //Future indicesSimulateIndexTemplate(String name, { bool create, String cause, String masterTimeout, String clusterManagerTimeout, Object body }) async
    test('test indicesSimulateIndexTemplate', () async {
      // TODO
    });

    // Simulate resolving the given template name or body.
    //
    //Future indicesSimulateTemplate({ bool create, String cause, String masterTimeout, String clusterManagerTimeout, Object body }) async
    test('test indicesSimulateTemplate', () async {
      // TODO
    });

    // Simulate resolving the given template name or body.
    //
    //Future indicesSimulateTemplateWithName(String name, { bool create, String cause, String masterTimeout, String clusterManagerTimeout, Object body }) async
    test('test indicesSimulateTemplateWithName', () async {
      // TODO
    });

    // Allows you to split an existing index into a new index with more primary shards.
    //
    //Future indicesSplitPost(String index, String target, { bool copySettings, String timeout, String masterTimeout, String clusterManagerTimeout, String waitForActiveShards, Object body }) async
    test('test indicesSplitPost', () async {
      // TODO
    });

    // Allows you to split an existing index into a new index with more primary shards.
    //
    //Future indicesSplitPut(String index, String target, { bool copySettings, String timeout, String masterTimeout, String clusterManagerTimeout, String waitForActiveShards, Object body }) async
    test('test indicesSplitPut', () async {
      // TODO
    });

    // Provides statistics on operations happening in an index.
    //
    //Future indicesStats({ List<String> completionFields, List<String> fielddataFields, List<String> fields, List<String> groups, IndiciesStatLevel level, bool includeSegmentFileSizes, bool includeUnloadedSegments, ExpandWildcards expandWildcards, bool forbidClosedIndices }) async
    test('test indicesStats', () async {
      // TODO
    });

    // Provides statistics on operations happening in an index.
    //
    //Future indicesStatsWithIndex(String index, { List<String> completionFields, List<String> fielddataFields, List<String> fields, List<String> groups, IndiciesStatLevel level, bool includeSegmentFileSizes, bool includeUnloadedSegments, ExpandWildcards expandWildcards, bool forbidClosedIndices }) async
    test('test indicesStatsWithIndex', () async {
      // TODO
    });

    // Provides statistics on operations happening in an index.
    //
    //Future indicesStatsWithIndexMetric(String index, String metric, { List<String> completionFields, List<String> fielddataFields, List<String> fields, List<String> groups, IndiciesStatLevel level, bool includeSegmentFileSizes, bool includeUnloadedSegments, ExpandWildcards expandWildcards, bool forbidClosedIndices }) async
    test('test indicesStatsWithIndexMetric', () async {
      // TODO
    });

    // Provides statistics on operations happening in an index.
    //
    //Future indicesStatsWithMetric(String metric, { List<String> completionFields, List<String> fielddataFields, List<String> fields, List<String> groups, IndiciesStatLevel level, bool includeSegmentFileSizes, bool includeUnloadedSegments, ExpandWildcards expandWildcards, bool forbidClosedIndices }) async
    test('test indicesStatsWithMetric', () async {
      // TODO
    });

    // Updates index aliases.
    //
    //Future<IndicesUpdateAliasesResponseContent> indicesUpdateAliases(IndicesUpdateAliasesBodyParams indicesUpdateAliasesBodyParams, { String timeout, String masterTimeout, String clusterManagerTimeout }) async
    test('test indicesUpdateAliases', () async {
      // TODO
    });

    // The _upgrade API is no longer useful and will be removed.
    //
    //Future indicesUpgrade({ bool allowNoIndices, ExpandWildcards expandWildcards, bool ignoreUnavailable, bool waitForCompletion, bool onlyAncientSegments }) async
    test('test indicesUpgrade', () async {
      // TODO
    });

    // The _upgrade API is no longer useful and will be removed.
    //
    //Future indicesUpgradeWithIndex(String index, { bool allowNoIndices, ExpandWildcards expandWildcards, bool ignoreUnavailable, bool waitForCompletion, bool onlyAncientSegments }) async
    test('test indicesUpgradeWithIndex', () async {
      // TODO
    });

    // Allows a user to validate a potentially expensive query without executing it.
    //
    //Future indicesValidateQueryGet({ bool explain, bool ignoreUnavailable, bool allowNoIndices, ExpandWildcards expandWildcards, String q, String analyzer, bool analyzeWildcard, DefaultOperator defaultOperator, String df, bool lenient, bool rewrite, bool allShards }) async
    test('test indicesValidateQueryGet', () async {
      // TODO
    });

    // Allows a user to validate a potentially expensive query without executing it.
    //
    //Future indicesValidateQueryGetWithIndex(String index, { bool explain, bool ignoreUnavailable, bool allowNoIndices, ExpandWildcards expandWildcards, String q, String analyzer, bool analyzeWildcard, DefaultOperator defaultOperator, String df, bool lenient, bool rewrite, bool allShards }) async
    test('test indicesValidateQueryGetWithIndex', () async {
      // TODO
    });

    // Allows a user to validate a potentially expensive query without executing it.
    //
    //Future indicesValidateQueryPost({ bool explain, bool ignoreUnavailable, bool allowNoIndices, ExpandWildcards expandWildcards, String q, String analyzer, bool analyzeWildcard, DefaultOperator defaultOperator, String df, bool lenient, bool rewrite, bool allShards, Object body }) async
    test('test indicesValidateQueryPost', () async {
      // TODO
    });

    // Allows a user to validate a potentially expensive query without executing it.
    //
    //Future indicesValidateQueryPostWithIndex(String index, { bool explain, bool ignoreUnavailable, bool allowNoIndices, ExpandWildcards expandWildcards, String q, String analyzer, bool analyzeWildcard, DefaultOperator defaultOperator, String df, bool lenient, bool rewrite, bool allShards, Object body }) async
    test('test indicesValidateQueryPostWithIndex', () async {
      // TODO
    });

    // Returns basic information about the cluster.
    //
    //Future<InfoResponseContent> info() async
    test('test info', () async {
      // TODO
    });

    // Deletes a pipeline.
    //
    //Future ingestDeletePipeline(String id, { String masterTimeout, String clusterManagerTimeout, String timeout }) async
    test('test ingestDeletePipeline', () async {
      // TODO
    });

    // Returns a pipeline.
    //
    //Future ingestGetPipeline({ String masterTimeout, String clusterManagerTimeout }) async
    test('test ingestGetPipeline', () async {
      // TODO
    });

    // Returns a pipeline.
    //
    //Future ingestGetPipelineWithId(String id, { String masterTimeout, String clusterManagerTimeout }) async
    test('test ingestGetPipelineWithId', () async {
      // TODO
    });

    // Returns a list of the built-in patterns.
    //
    //Future ingestProcessorGrok() async
    test('test ingestProcessorGrok', () async {
      // TODO
    });

    // Creates or updates a pipeline.
    //
    //Future ingestPutPipeline(String id, Object body, { String masterTimeout, String clusterManagerTimeout, String timeout }) async
    test('test ingestPutPipeline', () async {
      // TODO
    });

    // Allows to simulate a pipeline with example documents.
    //
    //Future ingestSimulateGet({ bool verbose }) async
    test('test ingestSimulateGet', () async {
      // TODO
    });

    // Allows to simulate a pipeline with example documents.
    //
    //Future ingestSimulateGetWithId(String id, { bool verbose }) async
    test('test ingestSimulateGetWithId', () async {
      // TODO
    });

    // Allows to simulate a pipeline with example documents.
    //
    //Future ingestSimulatePost(Object body, { bool verbose }) async
    test('test ingestSimulatePost', () async {
      // TODO
    });

    // Allows to simulate a pipeline with example documents.
    //
    //Future ingestSimulatePostWithId(String id, Object body, { bool verbose }) async
    test('test ingestSimulatePostWithId', () async {
      // TODO
    });

    // Allows to get multiple documents in one request.
    //
    //Future mgetGet({ List<String> storedFields, String preference, bool realtime, bool refresh, String routing, List<String> source_, List<String> sourceExcludes, List<String> sourceIncludes }) async
    test('test mgetGet', () async {
      // TODO
    });

    // Allows to get multiple documents in one request.
    //
    //Future mgetGetWithIndex(String index, { List<String> storedFields, String preference, bool realtime, bool refresh, String routing, List<String> source_, List<String> sourceExcludes, List<String> sourceIncludes }) async
    test('test mgetGetWithIndex', () async {
      // TODO
    });

    // Allows to get multiple documents in one request.
    //
    //Future mgetPost(Object body, { List<String> storedFields, String preference, bool realtime, bool refresh, String routing, List<String> source_, List<String> sourceExcludes, List<String> sourceIncludes }) async
    test('test mgetPost', () async {
      // TODO
    });

    // Allows to get multiple documents in one request.
    //
    //Future mgetPostWithIndex(String index, Object body, { List<String> storedFields, String preference, bool realtime, bool refresh, String routing, List<String> source_, List<String> sourceExcludes, List<String> sourceIncludes }) async
    test('test mgetPostWithIndex', () async {
      // TODO
    });

    // Allows to execute several search operations in one request.
    //
    //Future msearchGet({ SearchTypeMulti searchType, int maxConcurrentSearches, bool typedKeys, int preFilterShardSize, int maxConcurrentShardRequests, bool restTotalHitsAsInt, bool ccsMinimizeRoundtrips }) async
    test('test msearchGet', () async {
      // TODO
    });

    // Allows to execute several search operations in one request.
    //
    //Future msearchGetWithIndex(String index, { SearchTypeMulti searchType, int maxConcurrentSearches, bool typedKeys, int preFilterShardSize, int maxConcurrentShardRequests, bool restTotalHitsAsInt, bool ccsMinimizeRoundtrips }) async
    test('test msearchGetWithIndex', () async {
      // TODO
    });

    // Allows to execute several search operations in one request.
    //
    //Future msearchPost(Object body, { SearchTypeMulti searchType, int maxConcurrentSearches, bool typedKeys, int preFilterShardSize, int maxConcurrentShardRequests, bool restTotalHitsAsInt, bool ccsMinimizeRoundtrips }) async
    test('test msearchPost', () async {
      // TODO
    });

    // Allows to execute several search operations in one request.
    //
    //Future msearchPostWithIndex(String index, Object body, { SearchTypeMulti searchType, int maxConcurrentSearches, bool typedKeys, int preFilterShardSize, int maxConcurrentShardRequests, bool restTotalHitsAsInt, bool ccsMinimizeRoundtrips }) async
    test('test msearchPostWithIndex', () async {
      // TODO
    });

    // Allows to execute several search template operations in one request.
    //
    //Future msearchTemplateGet({ SearchTypeMulti searchType, bool typedKeys, int maxConcurrentSearches, bool restTotalHitsAsInt, bool ccsMinimizeRoundtrips }) async
    test('test msearchTemplateGet', () async {
      // TODO
    });

    // Allows to execute several search template operations in one request.
    //
    //Future msearchTemplateGetWithIndex(String index, { SearchTypeMulti searchType, bool typedKeys, int maxConcurrentSearches, bool restTotalHitsAsInt, bool ccsMinimizeRoundtrips }) async
    test('test msearchTemplateGetWithIndex', () async {
      // TODO
    });

    // Allows to execute several search template operations in one request.
    //
    //Future msearchTemplatePost(Object body, { SearchTypeMulti searchType, bool typedKeys, int maxConcurrentSearches, bool restTotalHitsAsInt, bool ccsMinimizeRoundtrips }) async
    test('test msearchTemplatePost', () async {
      // TODO
    });

    // Allows to execute several search template operations in one request.
    //
    //Future msearchTemplatePostWithIndex(String index, Object body, { SearchTypeMulti searchType, bool typedKeys, int maxConcurrentSearches, bool restTotalHitsAsInt, bool ccsMinimizeRoundtrips }) async
    test('test msearchTemplatePostWithIndex', () async {
      // TODO
    });

    // Returns multiple termvectors in one request.
    //
    //Future mtermvectorsGet({ List<String> ids, bool termStatistics, bool fieldStatistics, List<String> fields, bool offsets, bool positions, bool payloads, String preference, String routing, bool realtime, int version, VersionType versionType }) async
    test('test mtermvectorsGet', () async {
      // TODO
    });

    // Returns multiple termvectors in one request.
    //
    //Future mtermvectorsGetWithIndex(String index, { List<String> ids, bool termStatistics, bool fieldStatistics, List<String> fields, bool offsets, bool positions, bool payloads, String preference, String routing, bool realtime, int version, VersionType versionType }) async
    test('test mtermvectorsGetWithIndex', () async {
      // TODO
    });

    // Returns multiple termvectors in one request.
    //
    //Future mtermvectorsPost({ List<String> ids, bool termStatistics, bool fieldStatistics, List<String> fields, bool offsets, bool positions, bool payloads, String preference, String routing, bool realtime, int version, VersionType versionType, Object body }) async
    test('test mtermvectorsPost', () async {
      // TODO
    });

    // Returns multiple termvectors in one request.
    //
    //Future mtermvectorsPostWithIndex(String index, { List<String> ids, bool termStatistics, bool fieldStatistics, List<String> fields, bool offsets, bool positions, bool payloads, String preference, String routing, bool realtime, int version, VersionType versionType, Object body }) async
    test('test mtermvectorsPostWithIndex', () async {
      // TODO
    });

    // Returns information about hot threads on each node in the cluster.
    //
    //Future nodesHotThreads({ String interval, int snapshots, int threads, bool ignoreIdleThreads, SampleType type, String timeout }) async
    test('test nodesHotThreads', () async {
      // TODO
    });

    // Returns information about hot threads on each node in the cluster.
    //
    //Future nodesHotThreadsDeprecated({ String interval, int snapshots, int threads, bool ignoreIdleThreads, SampleType type, String timeout }) async
    test('test nodesHotThreadsDeprecated', () async {
      // TODO
    });

    // Returns information about hot threads on each node in the cluster.
    //
    //Future nodesHotThreadsDeprecatedCluster({ String interval, int snapshots, int threads, bool ignoreIdleThreads, SampleType type, String timeout }) async
    test('test nodesHotThreadsDeprecatedCluster', () async {
      // TODO
    });

    // Returns information about hot threads on each node in the cluster.
    //
    //Future nodesHotThreadsDeprecatedDash({ String interval, int snapshots, int threads, bool ignoreIdleThreads, SampleType type, String timeout }) async
    test('test nodesHotThreadsDeprecatedDash', () async {
      // TODO
    });

    // Returns information about hot threads on each node in the cluster.
    //
    //Future nodesHotThreadsWithNodeId(String nodeId, { String interval, int snapshots, int threads, bool ignoreIdleThreads, SampleType type, String timeout }) async
    test('test nodesHotThreadsWithNodeId', () async {
      // TODO
    });

    // Returns information about hot threads on each node in the cluster.
    //
    //Future nodesHotThreadsWithNodeIdDeprecated(String nodeId, { String interval, int snapshots, int threads, bool ignoreIdleThreads, SampleType type, String timeout }) async
    test('test nodesHotThreadsWithNodeIdDeprecated', () async {
      // TODO
    });

    // Returns information about hot threads on each node in the cluster.
    //
    //Future nodesHotThreadsWithNodeIdDeprecatedCluster(String nodeId, { String interval, int snapshots, int threads, bool ignoreIdleThreads, SampleType type, String timeout }) async
    test('test nodesHotThreadsWithNodeIdDeprecatedCluster', () async {
      // TODO
    });

    // Returns information about hot threads on each node in the cluster.
    //
    //Future nodesHotThreadsWithNodeIdDeprecatedDash(String nodeId, { String interval, int snapshots, int threads, bool ignoreIdleThreads, SampleType type, String timeout }) async
    test('test nodesHotThreadsWithNodeIdDeprecatedDash', () async {
      // TODO
    });

    // Returns information about nodes in the cluster.
    //
    //Future nodesInfo({ bool flatSettings, String timeout }) async
    test('test nodesInfo', () async {
      // TODO
    });

    // Returns information about nodes in the cluster.
    //
    //Future nodesInfoWithMetricNodeId(String nodeId, String metric, { bool flatSettings, String timeout }) async
    test('test nodesInfoWithMetricNodeId', () async {
      // TODO
    });

    // Returns information about nodes in the cluster.
    //
    //Future nodesInfoWithNodeId(String nodeId, { bool flatSettings, String timeout }) async
    test('test nodesInfoWithNodeId', () async {
      // TODO
    });

    // Reloads secure settings.
    //
    //Future nodesReloadSecureSettings({ String timeout, Object body }) async
    test('test nodesReloadSecureSettings', () async {
      // TODO
    });

    // Reloads secure settings.
    //
    //Future nodesReloadSecureSettingsWithNodeId(String nodeId, { String timeout, Object body }) async
    test('test nodesReloadSecureSettingsWithNodeId', () async {
      // TODO
    });

    // Returns statistical information about nodes in the cluster.
    //
    //Future nodesStats({ List<String> completionFields, List<String> fielddataFields, List<String> fields, List<String> groups, NodesStatLevel level, List<String> types, String timeout, bool includeSegmentFileSizes }) async
    test('test nodesStats', () async {
      // TODO
    });

    // Returns statistical information about nodes in the cluster.
    //
    //Future nodesStatsWithIndexMetricMetric(String metric, String indexMetric, { List<String> completionFields, List<String> fielddataFields, List<String> fields, List<String> groups, NodesStatLevel level, List<String> types, String timeout, bool includeSegmentFileSizes }) async
    test('test nodesStatsWithIndexMetricMetric', () async {
      // TODO
    });

    // Returns statistical information about nodes in the cluster.
    //
    //Future nodesStatsWithIndexMetricMetricNodeId(String metric, String indexMetric, String nodeId, { List<String> completionFields, List<String> fielddataFields, List<String> fields, List<String> groups, NodesStatLevel level, List<String> types, String timeout, bool includeSegmentFileSizes }) async
    test('test nodesStatsWithIndexMetricMetricNodeId', () async {
      // TODO
    });

    // Returns statistical information about nodes in the cluster.
    //
    //Future nodesStatsWithMetric(String metric, { List<String> completionFields, List<String> fielddataFields, List<String> fields, List<String> groups, NodesStatLevel level, List<String> types, String timeout, bool includeSegmentFileSizes }) async
    test('test nodesStatsWithMetric', () async {
      // TODO
    });

    // Returns statistical information about nodes in the cluster.
    //
    //Future nodesStatsWithMetricNodeId(String metric, String nodeId, { List<String> completionFields, List<String> fielddataFields, List<String> fields, List<String> groups, NodesStatLevel level, List<String> types, String timeout, bool includeSegmentFileSizes }) async
    test('test nodesStatsWithMetricNodeId', () async {
      // TODO
    });

    // Returns statistical information about nodes in the cluster.
    //
    //Future nodesStatsWithNodeId(String nodeId, { List<String> completionFields, List<String> fielddataFields, List<String> fields, List<String> groups, NodesStatLevel level, List<String> types, String timeout, bool includeSegmentFileSizes }) async
    test('test nodesStatsWithNodeId', () async {
      // TODO
    });

    // Returns low-level information about REST actions usage on nodes.
    //
    //Future nodesUsage({ String timeout }) async
    test('test nodesUsage', () async {
      // TODO
    });

    // Returns low-level information about REST actions usage on nodes.
    //
    //Future nodesUsageWithMetric(String metric, { String timeout }) async
    test('test nodesUsageWithMetric', () async {
      // TODO
    });

    // Returns low-level information about REST actions usage on nodes.
    //
    //Future nodesUsageWithMetricNodeId(String metric, String nodeId, { String timeout }) async
    test('test nodesUsageWithMetricNodeId', () async {
      // TODO
    });

    // Returns low-level information about REST actions usage on nodes.
    //
    //Future nodesUsageWithNodeId(String nodeId, { String timeout }) async
    test('test nodesUsageWithNodeId', () async {
      // TODO
    });

    // Updates individual attributes of an action group.
    //
    //Future<PatchActionGroupResponseContent> patchActionGroup(String actionGroup, List<PatchOperation> patchOperation) async
    test('test patchActionGroup', () async {
      // TODO
    });

    // Creates, updates, or deletes multiple action groups in a single call.
    //
    //Future<PatchActionGroupsResponseContent> patchActionGroups(List<PatchOperation> patchOperation) async
    test('test patchActionGroups', () async {
      // TODO
    });

    // A PATCH call is used to update specified fields in the audit configuration.
    //
    //Future patchAuditConfiguration(List<PatchOperation> patchOperation) async
    test('test patchAuditConfiguration', () async {
      // TODO
    });

    // A PATCH call is used to update the existing configuration using the REST API.
    //
    //Future<PatchConfigurationResponseContent> patchConfiguration(List<PatchOperation> patchOperation) async
    test('test patchConfiguration', () async {
      // TODO
    });

    // Bulk update of distinguished names.
    //
    //Future<PatchDistinguishedNamesResponseContent> patchDistinguishedNames(List<PatchOperation> patchOperation) async
    test('test patchDistinguishedNames', () async {
      // TODO
    });

    // Updates individual attributes of a role.
    //
    //Future<PatchRoleResponseContent> patchRole(String role, List<PatchOperation> patchOperation) async
    test('test patchRole', () async {
      // TODO
    });

    // Updates individual attributes of a role mapping.
    //
    //Future<PatchRoleMappingResponseContent> patchRoleMapping(String role, List<PatchOperation> patchOperation) async
    test('test patchRoleMapping', () async {
      // TODO
    });

    // Creates or updates multiple role mappings in a single call.
    //
    //Future<PatchRoleMappingsResponseContent> patchRoleMappings(List<PatchOperation> patchOperation) async
    test('test patchRoleMappings', () async {
      // TODO
    });

    // Creates, updates, or deletes multiple roles in a single call.
    //
    //Future<PatchRolesResponseContent> patchRoles(List<PatchOperation> patchOperation) async
    test('test patchRoles', () async {
      // TODO
    });

    // Add, delete, or modify a single tenant.
    //
    //Future<PatchTenantResponseContent> patchTenant(String tenant, List<PatchOperation> patchOperation) async
    test('test patchTenant', () async {
      // TODO
    });

    // Add, delete, or modify multiple tenants in a single call.
    //
    //Future<PatchTenantsResponseContent> patchTenants(List<PatchOperation> patchOperation) async
    test('test patchTenants', () async {
      // TODO
    });

    // Updates individual attributes of an internal user.
    //
    //Future<PatchUserResponseContent> patchUser(String username, List<PatchOperation> patchOperation) async
    test('test patchUser', () async {
      // TODO
    });

    // Creates, updates, or deletes multiple internal users in a single call.
    //
    //Future<PatchUsersResponseContent> patchUsers(List<PatchOperation> patchOperation) async
    test('test patchUsers', () async {
      // TODO
    });

    // Returns whether the cluster is running.
    //
    //Future ping() async
    test('test ping', () async {
      // TODO
    });

    // Creates or updates a script.
    //
    //Future putScriptPost(String id, Object body, { String timeout, String masterTimeout, String clusterManagerTimeout }) async
    test('test putScriptPost', () async {
      // TODO
    });

    // Creates or updates a script.
    //
    //Future putScriptPostWithContext(String id, String context, Object body, { String timeout, String masterTimeout, String clusterManagerTimeout }) async
    test('test putScriptPostWithContext', () async {
      // TODO
    });

    // Creates or updates a script.
    //
    //Future putScriptPut(String id, Object body, { String timeout, String masterTimeout, String clusterManagerTimeout }) async
    test('test putScriptPut', () async {
      // TODO
    });

    // Creates or updates a script.
    //
    //Future putScriptPutWithContext(String id, String context, Object body, { String timeout, String masterTimeout, String clusterManagerTimeout }) async
    test('test putScriptPutWithContext', () async {
      // TODO
    });

    // Allows to evaluate the quality of ranked search results over a set of typical search queries.
    //
    //Future rankEvalGet({ bool ignoreUnavailable, bool allowNoIndices, ExpandWildcards expandWildcards, SearchType searchType }) async
    test('test rankEvalGet', () async {
      // TODO
    });

    // Allows to evaluate the quality of ranked search results over a set of typical search queries.
    //
    //Future rankEvalGetWithIndex(String index, { bool ignoreUnavailable, bool allowNoIndices, ExpandWildcards expandWildcards, SearchType searchType }) async
    test('test rankEvalGetWithIndex', () async {
      // TODO
    });

    // Allows to evaluate the quality of ranked search results over a set of typical search queries.
    //
    //Future rankEvalPost(Object body, { bool ignoreUnavailable, bool allowNoIndices, ExpandWildcards expandWildcards, SearchType searchType }) async
    test('test rankEvalPost', () async {
      // TODO
    });

    // Allows to evaluate the quality of ranked search results over a set of typical search queries.
    //
    //Future rankEvalPostWithIndex(String index, Object body, { bool ignoreUnavailable, bool allowNoIndices, ExpandWildcards expandWildcards, SearchType searchType }) async
    test('test rankEvalPostWithIndex', () async {
      // TODO
    });

    // Allows to copy documents from one index to another, optionally filtering the source documents by a query, changing the destination index settings, or fetching the documents from a remote cluster.
    //
    //Future reindex(Object body, { bool refresh, String timeout, String waitForActiveShards, bool waitForCompletion, int requestsPerSecond, String scroll, String slices, int maxDocs }) async
    test('test reindex', () async {
      // TODO
    });

    // Changes the number of requests per second for a particular Reindex operation.
    //
    //Future reindexRethrottle(String taskId, int requestsPerSecond) async
    test('test reindexRethrottle', () async {
      // TODO
    });

    // Reload HTTP layer communication certificates.
    //
    //Future<ReloadHttpCertificatesResponseContent> reloadHttpCertificates() async
    test('test reloadHttpCertificates', () async {
      // TODO
    });

    // Reload transport layer communication certificates.
    //
    //Future<ReloadTransportCertificatesResponseContent> reloadTransportCertificates() async
    test('test reloadTransportCertificates', () async {
      // TODO
    });

    // Restores from remote store.
    //
    //Future<RemoteStoreRestoreResponseContent> remoteStoreRestore(RemoteStoreRestoreBodyParams remoteStoreRestoreBodyParams, { String clusterManagerTimeout, bool waitForCompletion }) async
    test('test remoteStoreRestore', () async {
      // TODO
    });

    // Allows to use the Mustache language to pre-render a search definition.
    //
    //Future renderSearchTemplateGet() async
    test('test renderSearchTemplateGet', () async {
      // TODO
    });

    // Allows to use the Mustache language to pre-render a search definition.
    //
    //Future renderSearchTemplateGetWithId(String id) async
    test('test renderSearchTemplateGetWithId', () async {
      // TODO
    });

    // Allows to use the Mustache language to pre-render a search definition.
    //
    //Future renderSearchTemplatePost({ Object body }) async
    test('test renderSearchTemplatePost', () async {
      // TODO
    });

    // Allows to use the Mustache language to pre-render a search definition.
    //
    //Future renderSearchTemplatePostWithId(String id, { Object body }) async
    test('test renderSearchTemplatePostWithId', () async {
      // TODO
    });

    // Allows an arbitrary script to be executed and a result to be returned.
    //
    //Future scriptsPainlessExecuteGet() async
    test('test scriptsPainlessExecuteGet', () async {
      // TODO
    });

    // Allows an arbitrary script to be executed and a result to be returned.
    //
    //Future scriptsPainlessExecutePost({ Object body }) async
    test('test scriptsPainlessExecutePost', () async {
      // TODO
    });

    // Allows to retrieve a large numbers of results from a single search request.
    //
    //Future scrollGet({ String scroll, String scrollId, bool restTotalHitsAsInt }) async
    test('test scrollGet', () async {
      // TODO
    });

    // Allows to retrieve a large numbers of results from a single search request.
    //
    //Future scrollGetWithScrollId(String scrollId, { String scroll, String scrollId2, bool restTotalHitsAsInt }) async
    test('test scrollGetWithScrollId', () async {
      // TODO
    });

    // Allows to retrieve a large numbers of results from a single search request.
    //
    //Future scrollPost({ String scroll, String scrollId, bool restTotalHitsAsInt, Object body }) async
    test('test scrollPost', () async {
      // TODO
    });

    // Allows to retrieve a large numbers of results from a single search request.
    //
    //Future scrollPostWithScrollId(String scrollId, { String scroll, String scrollId2, bool restTotalHitsAsInt, Object body }) async
    test('test scrollPostWithScrollId', () async {
      // TODO
    });

    // Returns results matching a query.
    //
    //Future<SearchGetResponseContent> searchGet({ String analyzer, bool analyzeWildcard, bool ccsMinimizeRoundtrips, DefaultOperator defaultOperator, String df, bool explain, List<String> storedFields, List<String> docvalueFields, int from, bool ignoreUnavailable, bool ignoreThrottled, bool allowNoIndices, ExpandWildcards expandWildcards, bool lenient, String preference, String q, List<String> routing, String scroll, SearchType searchType, int size, List<String> sort, List<String> source_, List<String> sourceExcludes, List<String> sourceIncludes, int terminateAfter, List<String> stats, String suggestField, SuggestMode suggestMode, int suggestSize, String suggestText, String timeout, bool trackScores, bool trackTotalHits, bool allowPartialSearchResults, bool typedKeys, bool version, bool seqNoPrimaryTerm, bool requestCache, int batchedReduceSize, int maxConcurrentShardRequests, int preFilterShardSize, bool restTotalHitsAsInt }) async
    test('test searchGet', () async {
      // TODO
    });

    // Returns results matching a query.
    //
    //Future<SearchGetWithIndexResponseContent> searchGetWithIndex(String index, { String analyzer, bool analyzeWildcard, bool ccsMinimizeRoundtrips, DefaultOperator defaultOperator, String df, bool explain, List<String> storedFields, List<String> docvalueFields, int from, bool ignoreUnavailable, bool ignoreThrottled, bool allowNoIndices, ExpandWildcards expandWildcards, bool lenient, String preference, String q, List<String> routing, String scroll, SearchType searchType, int size, List<String> sort, List<String> source_, List<String> sourceExcludes, List<String> sourceIncludes, int terminateAfter, List<String> stats, String suggestField, SuggestMode suggestMode, int suggestSize, String suggestText, String timeout, bool trackScores, bool trackTotalHits, bool allowPartialSearchResults, bool typedKeys, bool version, bool seqNoPrimaryTerm, bool requestCache, int batchedReduceSize, int maxConcurrentShardRequests, int preFilterShardSize, bool restTotalHitsAsInt }) async
    test('test searchGetWithIndex', () async {
      // TODO
    });

    // Returns results matching a query.
    //
    //Future<SearchPostResponseContent> searchPost({ String analyzer, bool analyzeWildcard, bool ccsMinimizeRoundtrips, DefaultOperator defaultOperator, String df, bool explain, List<String> storedFields, List<String> docvalueFields, int from, bool ignoreUnavailable, bool ignoreThrottled, bool allowNoIndices, ExpandWildcards expandWildcards, bool lenient, String preference, String q, List<String> routing, String scroll, SearchType searchType, int size, List<String> sort, List<String> source_, List<String> sourceExcludes, List<String> sourceIncludes, int terminateAfter, List<String> stats, String suggestField, SuggestMode suggestMode, int suggestSize, String suggestText, String timeout, bool trackScores, bool trackTotalHits, bool allowPartialSearchResults, bool typedKeys, bool version, bool seqNoPrimaryTerm, bool requestCache, int batchedReduceSize, int maxConcurrentShardRequests, int preFilterShardSize, bool restTotalHitsAsInt, SearchBodyParams searchBodyParams }) async
    test('test searchPost', () async {
      // TODO
    });

    // Returns results matching a query.
    //
    //Future<SearchPostWithIndexResponseContent> searchPostWithIndex(String index, { String analyzer, bool analyzeWildcard, bool ccsMinimizeRoundtrips, DefaultOperator defaultOperator, String df, bool explain, List<String> storedFields, List<String> docvalueFields, int from, bool ignoreUnavailable, bool ignoreThrottled, bool allowNoIndices, ExpandWildcards expandWildcards, bool lenient, String preference, String q, List<String> routing, String scroll, SearchType searchType, int size, List<String> sort, List<String> source_, List<String> sourceExcludes, List<String> sourceIncludes, int terminateAfter, List<String> stats, String suggestField, SuggestMode suggestMode, int suggestSize, String suggestText, String timeout, bool trackScores, bool trackTotalHits, bool allowPartialSearchResults, bool typedKeys, bool version, bool seqNoPrimaryTerm, bool requestCache, int batchedReduceSize, int maxConcurrentShardRequests, int preFilterShardSize, bool restTotalHitsAsInt, SearchBodyParams searchBodyParams }) async
    test('test searchPostWithIndex', () async {
      // TODO
    });

    // Returns information about the indices and shards that a search request would be executed against.
    //
    //Future searchShardsGet({ String preference, String routing, bool local, bool ignoreUnavailable, bool allowNoIndices, ExpandWildcards expandWildcards }) async
    test('test searchShardsGet', () async {
      // TODO
    });

    // Returns information about the indices and shards that a search request would be executed against.
    //
    //Future searchShardsGetWithIndex(String index, { String preference, String routing, bool local, bool ignoreUnavailable, bool allowNoIndices, ExpandWildcards expandWildcards }) async
    test('test searchShardsGetWithIndex', () async {
      // TODO
    });

    // Returns information about the indices and shards that a search request would be executed against.
    //
    //Future searchShardsPost({ String preference, String routing, bool local, bool ignoreUnavailable, bool allowNoIndices, ExpandWildcards expandWildcards }) async
    test('test searchShardsPost', () async {
      // TODO
    });

    // Returns information about the indices and shards that a search request would be executed against.
    //
    //Future searchShardsPostWithIndex(String index, { String preference, String routing, bool local, bool ignoreUnavailable, bool allowNoIndices, ExpandWildcards expandWildcards }) async
    test('test searchShardsPostWithIndex', () async {
      // TODO
    });

    // Allows to use the Mustache language to pre-render a search definition.
    //
    //Future searchTemplateGet({ bool ignoreUnavailable, bool ignoreThrottled, bool allowNoIndices, ExpandWildcards expandWildcards, String preference, List<String> routing, String scroll, SearchTypeMulti searchType, bool explain, bool profile, bool typedKeys, bool restTotalHitsAsInt, bool ccsMinimizeRoundtrips }) async
    test('test searchTemplateGet', () async {
      // TODO
    });

    // Allows to use the Mustache language to pre-render a search definition.
    //
    //Future searchTemplateGetWithIndex(String index, { bool ignoreUnavailable, bool ignoreThrottled, bool allowNoIndices, ExpandWildcards expandWildcards, String preference, List<String> routing, String scroll, SearchTypeMulti searchType, bool explain, bool profile, bool typedKeys, bool restTotalHitsAsInt, bool ccsMinimizeRoundtrips }) async
    test('test searchTemplateGetWithIndex', () async {
      // TODO
    });

    // Allows to use the Mustache language to pre-render a search definition.
    //
    //Future searchTemplatePost(Object body, { bool ignoreUnavailable, bool ignoreThrottled, bool allowNoIndices, ExpandWildcards expandWildcards, String preference, List<String> routing, String scroll, SearchTypeMulti searchType, bool explain, bool profile, bool typedKeys, bool restTotalHitsAsInt, bool ccsMinimizeRoundtrips }) async
    test('test searchTemplatePost', () async {
      // TODO
    });

    // Allows to use the Mustache language to pre-render a search definition.
    //
    //Future searchTemplatePostWithIndex(String index, Object body, { bool ignoreUnavailable, bool ignoreThrottled, bool allowNoIndices, ExpandWildcards expandWildcards, String preference, List<String> routing, String scroll, SearchTypeMulti searchType, bool explain, bool profile, bool typedKeys, bool restTotalHitsAsInt, bool ccsMinimizeRoundtrips }) async
    test('test searchTemplatePostWithIndex', () async {
      // TODO
    });

    // Checks to see if the Security plugin is up and running.
    //
    //Future<SecurityHealthResponseContent> securityHealth() async
    test('test securityHealth', () async {
      // TODO
    });

    // Removes stale data from repository.
    //
    //Future snapshotCleanupRepository(String repository, { String masterTimeout, String clusterManagerTimeout, String timeout }) async
    test('test snapshotCleanupRepository', () async {
      // TODO
    });

    // Clones indices from one snapshot into another snapshot in the same repository.
    //
    //Future snapshotClone(String repository, String snapshot, String targetSnapshot, Object body, { String masterTimeout, String clusterManagerTimeout }) async
    test('test snapshotClone', () async {
      // TODO
    });

    // Creates a snapshot in a repository.
    //
    //Future snapshotCreatePost(String repository, String snapshot, { String masterTimeout, String clusterManagerTimeout, bool waitForCompletion, Object body }) async
    test('test snapshotCreatePost', () async {
      // TODO
    });

    // Creates a snapshot in a repository.
    //
    //Future snapshotCreatePut(String repository, String snapshot, { String masterTimeout, String clusterManagerTimeout, bool waitForCompletion, Object body }) async
    test('test snapshotCreatePut', () async {
      // TODO
    });

    // Creates a repository.
    //
    //Future snapshotCreateRepositoryPost(String repository, Object body, { String masterTimeout, String clusterManagerTimeout, String timeout, bool verify }) async
    test('test snapshotCreateRepositoryPost', () async {
      // TODO
    });

    // Creates a repository.
    //
    //Future snapshotCreateRepositoryPut(String repository, Object body, { String masterTimeout, String clusterManagerTimeout, String timeout, bool verify }) async
    test('test snapshotCreateRepositoryPut', () async {
      // TODO
    });

    // Deletes a snapshot.
    //
    //Future snapshotDelete(String repository, String snapshot, { String masterTimeout, String clusterManagerTimeout }) async
    test('test snapshotDelete', () async {
      // TODO
    });

    // Deletes a repository.
    //
    //Future snapshotDeleteRepository(String repository, { String masterTimeout, String clusterManagerTimeout, String timeout }) async
    test('test snapshotDeleteRepository', () async {
      // TODO
    });

    // Returns information about a snapshot.
    //
    //Future snapshotGet(String repository, String snapshot, { String masterTimeout, String clusterManagerTimeout, bool ignoreUnavailable, bool verbose }) async
    test('test snapshotGet', () async {
      // TODO
    });

    // Returns information about a repository.
    //
    //Future snapshotGetRepository({ String masterTimeout, String clusterManagerTimeout, bool local }) async
    test('test snapshotGetRepository', () async {
      // TODO
    });

    // Returns information about a repository.
    //
    //Future snapshotGetRepositoryWithRepository(String repository, { String masterTimeout, String clusterManagerTimeout, bool local }) async
    test('test snapshotGetRepositoryWithRepository', () async {
      // TODO
    });

    // Restores a snapshot.
    //
    //Future snapshotRestore(String repository, String snapshot, { String masterTimeout, String clusterManagerTimeout, bool waitForCompletion, Object body }) async
    test('test snapshotRestore', () async {
      // TODO
    });

    // Returns information about the status of a snapshot.
    //
    //Future snapshotStatus({ String masterTimeout, String clusterManagerTimeout, bool ignoreUnavailable }) async
    test('test snapshotStatus', () async {
      // TODO
    });

    // Returns information about the status of a snapshot.
    //
    //Future snapshotStatusWithRepository(String repository, { String masterTimeout, String clusterManagerTimeout, bool ignoreUnavailable }) async
    test('test snapshotStatusWithRepository', () async {
      // TODO
    });

    // Returns information about the status of a snapshot.
    //
    //Future snapshotStatusWithRepositorySnapshot(String repository, String snapshot, { String masterTimeout, String clusterManagerTimeout, bool ignoreUnavailable }) async
    test('test snapshotStatusWithRepositorySnapshot', () async {
      // TODO
    });

    // Verifies a repository.
    //
    //Future snapshotVerifyRepository(String repository, { String masterTimeout, String clusterManagerTimeout, String timeout }) async
    test('test snapshotVerifyRepository', () async {
      // TODO
    });

    // Cancels a task, if it can be cancelled through an API.
    //
    //Future tasksCancel({ List<String> nodes, List<String> actions, String parentTaskId, bool waitForCompletion }) async
    test('test tasksCancel', () async {
      // TODO
    });

    // Cancels a task, if it can be cancelled through an API.
    //
    //Future tasksCancelWithTaskId(String taskId, { List<String> nodes, List<String> actions, String parentTaskId, bool waitForCompletion }) async
    test('test tasksCancelWithTaskId', () async {
      // TODO
    });

    // Returns information about a task.
    //
    //Future tasksGet(String taskId, { bool waitForCompletion, String timeout }) async
    test('test tasksGet', () async {
      // TODO
    });

    // Returns a list of tasks.
    //
    //Future tasksList({ List<String> nodes, List<String> actions, bool detailed, String parentTaskId, bool waitForCompletion, GroupBy groupBy, String timeout }) async
    test('test tasksList', () async {
      // TODO
    });

    // Returns information and statistics about terms in the fields of a particular document.
    //
    //Future termvectorsGet(String index, { bool termStatistics, bool fieldStatistics, List<String> fields, bool offsets, bool positions, bool payloads, String preference, String routing, bool realtime, int version, VersionType versionType }) async
    test('test termvectorsGet', () async {
      // TODO
    });

    // Returns information and statistics about terms in the fields of a particular document.
    //
    //Future termvectorsGetWithId(String index, String id, { bool termStatistics, bool fieldStatistics, List<String> fields, bool offsets, bool positions, bool payloads, String preference, String routing, bool realtime, int version, VersionType versionType }) async
    test('test termvectorsGetWithId', () async {
      // TODO
    });

    // Returns information and statistics about terms in the fields of a particular document.
    //
    //Future termvectorsPost(String index, { bool termStatistics, bool fieldStatistics, List<String> fields, bool offsets, bool positions, bool payloads, String preference, String routing, bool realtime, int version, VersionType versionType, Object body }) async
    test('test termvectorsPost', () async {
      // TODO
    });

    // Returns information and statistics about terms in the fields of a particular document.
    //
    //Future termvectorsPostWithId(String index, String id, { bool termStatistics, bool fieldStatistics, List<String> fields, bool offsets, bool positions, bool payloads, String preference, String routing, bool realtime, int version, VersionType versionType, Object body }) async
    test('test termvectorsPostWithId', () async {
      // TODO
    });

    // Updates a document with a script or partial document.
    //
    //Future update(String id, String index, Object body, { String waitForActiveShards, List<String> source_, List<String> sourceExcludes, List<String> sourceIncludes, String lang, RefreshEnum refresh, int retryOnConflict, String routing, String timeout, int ifSeqNo, int ifPrimaryTerm, bool requireAlias }) async
    test('test update', () async {
      // TODO
    });

    // Updates the audit configuration.
    //
    //Future<UpdateAuditConfigurationResponseContent> updateAuditConfiguration(AuditConfig auditConfig) async
    test('test updateAuditConfiguration', () async {
      // TODO
    });

    // Performs an update on every document in the index without changing the source, for example to pick up a mapping change.
    //
    //Future updateByQuery(String index, { String analyzer, bool analyzeWildcard, DefaultOperator defaultOperator, String df, int from, bool ignoreUnavailable, bool allowNoIndices, Conflicts conflicts, ExpandWildcards expandWildcards, bool lenient, String pipeline, String preference, String q, List<String> routing, String scroll, SearchType searchType, String searchTimeout, int size, int maxDocs, List<String> sort, List<String> source_, List<String> sourceExcludes, List<String> sourceIncludes, int terminateAfter, List<String> stats, bool version, bool requestCache, bool refresh, String timeout, String waitForActiveShards, int scrollSize, bool waitForCompletion, int requestsPerSecond, String slices, Object body }) async
    test('test updateByQuery', () async {
      // TODO
    });

    // Changes the number of requests per second for a particular Update By Query operation.
    //
    //Future updateByQueryRethrottle(String taskId, int requestsPerSecond) async
    test('test updateByQueryRethrottle', () async {
      // TODO
    });

    // Adds or updates the existing configuration using the REST API.
    //
    //Future<UpdateConfigurationResponseContent> updateConfiguration(DynamicConfig dynamicConfig) async
    test('test updateConfiguration', () async {
      // TODO
    });

    // Adds or updates the specified distinguished names in the cluster’s or node’s allow list.
    //
    //Future<UpdateDistinguishedNamesResponseContent> updateDistinguishedNames(String clusterName, { DistinguishedNames distinguishedNames }) async
    test('test updateDistinguishedNames', () async {
      // TODO
    });
  });
}
