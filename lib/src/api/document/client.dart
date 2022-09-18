import 'package:opensearch_dart/src/api/common/api_client.dart';

class DocumentClient extends ApiClient {
  DocumentClient({required super.client, super.signer});

  index() {}
  get() {}
  update() {}
  delete() {}
  bulk() {}
  multiGet() {}
  reindex() {}
  deleteByQuery() {}
  updateByQuery() {}
}
