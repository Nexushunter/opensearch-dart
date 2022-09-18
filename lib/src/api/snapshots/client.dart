import 'package:opensearch_dart/src/api/common/api_client.dart';

class SnapshotClient extends ApiClient {
  SnapshotClient({required super.client, super.signer});

  createRegistry() {}
  getRegistry() {}
  deleteRegistry() {}
  verifyRegistry() {}

  createSnapshot() {}
  getSnapshot() {}
  deleteSnapshot() {}
  restoreSnapshot() {}

  getSnapshotStatus() {}
}
