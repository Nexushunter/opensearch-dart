import 'dart:async';

import 'package:logging/logging.dart';

import '../common/api_client.dart';
import '../common/models.dart';
import '../common/responses.dart';

class DocumentClient extends ApiClient {
  static final _log = Logger('DocumentClient');
  DocumentClient({required super.client, super.signer});

  FutureOr<SearchDocument> index({
    required SearchDocument document,
    required String index,
  }) async {
    return await client
        .post(
          '$index/_doc/${document.id}',
          data: document.toJson(),
        )
        .onError(onErrorResponse(endpoint: 'document.index'))
        .then((value) {
      // TODO: Process response
      return document;
    });
  }

  FutureOr<SearchDocument> get({
    required String id,
    required String index,
  }) async {
    return await client
        .get('$index/_doc/$id')
        .onError(onErrorResponse(endpoint: 'document.get'))
        .then(
          (value) => SearchDocument.fromMap(value.data),
        );
  }

  void update({
    required SearchDocument document,
    required String index,
  }) async {
    return await client
        .post(
          '$index/_doc/${document.id}',
          data: document.toJson(),
        )
        .onError(onErrorResponse(endpoint: 'document.update'))
        .then((value) => _log.fine(value.data));
  }

  FutureOr<AcknowledgeResponse> delete(String id, String index) async {
    return await client
        .delete('$index/_doc/$id')
        .onError(onErrorResponse(endpoint: 'document.delete'))
        .then((value) =>
            AcknowledgeResponse(acknowledged: value.statusCode == 200));
  }

  bulk() {}
  multiGet() {}
  reindex() {}
  deleteByQuery() {}
  updateByQuery() {}
}
