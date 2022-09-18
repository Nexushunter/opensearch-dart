import 'package:dio/dio.dart';
import 'package:opensearch_dart/src/api/signer/noop_signer.dart';
import 'package:test/test.dart';

void main() {
  test('NoopSigner passes through options', () async {
    final expected = RequestOptions(path: 'testing', baseUrl: 'complex');
    final actual = await NoOpSigner().sign(expected, Dio());
    expect(actual, expected);
  });
}
