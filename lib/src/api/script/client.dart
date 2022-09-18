import 'package:opensearch_dart/src/api/common/api_client.dart';

class ScriptClient extends ApiClient {
  ScriptClient({required super.client, super.signer});

  upsertScript() {}
  executeScript() {}
  get() {}
  delete() {}
  getScriptContexts() {}
}
