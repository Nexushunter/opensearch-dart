import 'package:aws_signature_v4/aws_signature_v4.dart';
import 'package:dio/dio.dart';
import 'package:opensearch_dart/src/api/signer/aws_signer.dart';
import 'package:test/test.dart';

void main() {
  group('AWSSigner', () {
    group('Fails to sign request', () {
      // TODO: Add fail cases
    });
    test('Successfully signs', () async {
      final expected = RequestOptions(path: 'testing', baseUrl: 'complex');
      final actual = await AWSSigner(
              credentialsProvider: StaticCredentialsProvider(
                  AWSCredentials('accessKeyId', 'secretAccessKey')))
          .sign(expected, Dio());
      expect(actual, expected);
    }, skip: true);
  });
}
