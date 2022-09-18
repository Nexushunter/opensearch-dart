import 'package:opensearch_dart/src/api/common/api_client.dart';

class CatClient extends ApiClient {
  CatClient({required super.client, super.signer});
  aliases() {}
  allocation() {}
  count() {}
  fieldData() {}
  health() {}
  indices() {}
  clusterManager() {}
  nodeAttrs() {}
  pendingTasks() {}
  plugins() {}
  recovery() {}
  repositories() {}
  segments() {}
  shards() {}
  snapshots() {}
  tasks() {}
  templates() {}
  poolThread() {}
}
