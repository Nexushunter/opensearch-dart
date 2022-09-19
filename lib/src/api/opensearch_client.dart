import 'package:dio/dio.dart';
import 'package:opensearch_dart/src/api/alias/client.dart';
import 'package:opensearch_dart/src/api/search/client.dart';

import 'cat/client.dart';
import 'common/request_signer.dart';
import 'config.dart';
import 'document/client.dart';
import 'index/client.dart';
import 'ingest/client.dart';
import 'nodes/client.dart';
import 'script/client.dart';
import 'signer/aws_signer.dart';
import 'signer/noop_signer.dart';
import 'snapshots/client.dart';

class OpenSearchClient {
  late final Dio _client;
  late final RequestSigner _signer;
  late final ConnectionConfig _connectionConfig;
  OpenSearchClient(
      {bool enableAWS = false, required ConnectionConfig connectionConfig}) {
    _connectionConfig = connectionConfig;
    _signer = enableAWS
        ? AWSSigner(
            region: _connectionConfig.awsRegion,
            credentialsProvider: _connectionConfig.awsCredentialsProvider!,
          )
        : NoOpSigner();
    _client = Dio(
      BaseOptions(
        baseUrl: _connectionConfig.fullEndpoint,
      ),
    );
  }

  IndexClient get indexClient => IndexClient(client: _client, signer: _signer);
  CatClient get catClient => CatClient(client: _client, signer: _signer);
  DocumentClient get documentClient =>
      DocumentClient(client: _client, signer: _signer);
  IngestClient get ingestClient =>
      IngestClient(client: _client, signer: _signer);
  NodesClient get nodesClient => NodesClient(client: _client, signer: _signer);
  ScriptClient get scriptClient =>
      ScriptClient(client: _client, signer: _signer);
  SnapshotClient get snapshotClient =>
      SnapshotClient(client: _client, signer: _signer);
  AliasClient get aliasClient => AliasClient(client: _client, signer: _signer);
  SearchClient get searchClient =>
      SearchClient(client: _client, signer: _signer);
}
