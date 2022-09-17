import 'package:dio/dio.dart';
import 'package:opensearch_dart/src/api/index/client.dart';
import 'package:opensearch_dart/src/api/index/exceptions.dart';
import 'package:test/test.dart';

void main() {
  // TODO: Stop using the dio client directly
  group('Index Client', () {
    Dio baseClient = Dio(BaseOptions(baseUrl: 'http://localhost:9200/'));
    var iClient = IndexClient(client: baseClient);
    group('Create Index', () {
      // Clean up previous indices
      setUp(() async => await iClient.delete(index: '*'));

      test('Successfully', () async {
        expect((await iClient.createIndex(name: 'name')).acknowledged, isTrue);
      });
      group('Fails', () {
        test('Exists', () async {
          expect((await iClient.createIndex(name: 'fails-exists')).acknowledged,
              isTrue);

          try {
            await iClient.createIndex(name: 'fails-exists');
          } on IndexException catch (ex, s) {
            expect(ex, IndexException.conflict());
          }
        });
        test('Starts with _', () async {
          try {
            await iClient.createIndex(name: '_name');
          } on IndexException catch (e, s) {
            expect(e, IndexException.invalidIndexPrefix());
          }
        });
        test('Starts with -', () async {
          try {
            await iClient.createIndex(name: '-name');
          } on IndexException catch (e, s) {
            expect(e, IndexException.invalidIndexPrefix());
          }
        });
        test('Contains space', () async {
          try {
            await iClient.createIndex(name: 'name test');
          } on IndexException catch (e, s) {
            expect(e, IndexException.invalidNameFormat());
          }
        });
        test('Contains comma', () async {
          try {
            await iClient.createIndex(name: 'name,test');
          } on IndexException catch (e, s) {
            expect(e, IndexException.invalidNameFormat());
          }
        });
        test('Contains |', () async {
          try {
            await iClient.createIndex(name: 'name|test');
          } on IndexException catch (e, s) {
            expect(e, IndexException.invalidNameFormat());
          }
        });
        test('Contains /', () async {
          try {
            await iClient.createIndex(name: 'name/test');
          } on IndexException catch (e, s) {
            expect(e, IndexException.invalidNameFormat());
          }
        });
        test('Contains \\', () async {
          try {
            await iClient.createIndex(name: 'name\\test');
          } on IndexException catch (e, s) {
            expect(e, IndexException.invalidNameFormat());
          }
        });
        test('Contains >', () async {
          try {
            await iClient.createIndex(name: 'name>test');
          } on IndexException catch (e, s) {
            expect(e, IndexException.invalidNameFormat());
          }
        });
        test('Contains <', () async {
          try {
            await iClient.createIndex(name: 'name<test');
          } on IndexException catch (e, s) {
            expect(e, IndexException.invalidNameFormat());
          }
        });
        test('Contains #', () async {
          try {
            await iClient.createIndex(name: 'name#test');
          } on IndexException catch (e, s) {
            expect(e, IndexException.invalidNameFormat());
          }
        });
        test('Contains +', () async {
          try {
            await iClient.createIndex(name: 'name+test');
          } on IndexException catch (e, s) {
            expect(e, IndexException.invalidNameFormat());
          }
        });
        test('Contains *', () async {
          try {
            await iClient.createIndex(name: 'name*test');
          } on IndexException catch (e, s) {
            expect(e, IndexException.invalidNameFormat());
          }
        });
      });
    });
    group('Delete Index', () {});
    group('Get Index', () {});
    group('Index exists', () {});
  });
}
