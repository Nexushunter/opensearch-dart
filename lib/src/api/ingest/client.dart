import 'package:opensearch_dart/src/api/common/api_client.dart';

class IngestClient extends ApiClient {
  IngestClient({required super.client, super.signer});
  get() {}
  delete() {}
  upsertPipeline() {}
  simulatePipeline() {}
}
