import 'package:dio/dio.dart';
import 'package:opensearch_dart/src/api/index/client.dart';
import 'package:test/test.dart';

void main() {
  group('A group of tests', () {
    test('IndexClient', () async {
      Dio httpClient = Dio(BaseOptions(
        baseUrl: 'http://localhost:9200/',
      ));

      var iClient = IndexClient(client: httpClient);
      var resp = await iClient.createIndex(name: 'test-4', alias: 'testing');
      expect(resp.acknowledged, isTrue);
    });
  });
}
