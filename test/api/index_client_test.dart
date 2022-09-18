import 'package:dio/dio.dart';
import 'package:opensearch_dart/src/api/index/client.dart';
import 'package:opensearch_dart/src/api/index/enums.dart';
import 'package:opensearch_dart/src/api/index/exceptions.dart';
import 'package:test/test.dart';

void main() async {
  // TODO: Stop using the dio client directly
  group('Index Client', () {
    Dio baseClient = Dio(BaseOptions(baseUrl: 'http://localhost:9200/'));
    var iClient = IndexClient(client: baseClient);
    group('Create Index', () {
      // Clean up previous indices
      setUp(() async => await iClient.delete(index: '*'));

      test('Successfully', () async {
        expect((await iClient.create(index: 'name')).acknowledged, isTrue);
      });
      group('Fails', () {
        test('Exists', () async {
          expect((await iClient.create(index: 'fails-exists')).acknowledged,
              isTrue);

          try {
            await iClient.create(index: 'fails-exists');
          } on IndexException catch (ex, s) {
            expect(ex, IndexException.conflict());
          }
        });
        test('Starts with _', () async {
          try {
            await iClient.create(index: '_name');
          } on IndexException catch (e, s) {
            expect(e, IndexException.invalidIndexPrefix());
          }
        });
        test('Starts with -', () async {
          try {
            await iClient.create(index: '-name');
          } on IndexException catch (e, s) {
            expect(e, IndexException.invalidIndexPrefix());
          }
        });
        test('Contains space', () async {
          try {
            await iClient.create(index: 'name test');
          } on IndexException catch (e, s) {
            expect(e, IndexException.invalidNameFormat());
          }
        });
        test('Contains comma', () async {
          try {
            await iClient.create(index: 'name,test');
          } on IndexException catch (e, s) {
            expect(e, IndexException.invalidNameFormat());
          }
        });
        test('Contains |', () async {
          try {
            await iClient.create(index: 'name|test');
          } on IndexException catch (e, s) {
            expect(e, IndexException.invalidNameFormat());
          }
        });
        test('Contains /', () async {
          try {
            await iClient.create(index: 'name/test');
          } on IndexException catch (e, s) {
            expect(e, IndexException.invalidNameFormat());
          }
        });
        test('Contains \\', () async {
          try {
            await iClient.create(index: 'name\\test');
          } on IndexException catch (e, s) {
            expect(e, IndexException.invalidNameFormat());
          }
        });
        test('Contains >', () async {
          try {
            await iClient.create(index: 'name>test');
          } on IndexException catch (e, s) {
            expect(e, IndexException.invalidNameFormat());
          }
        });
        test('Contains <', () async {
          try {
            await iClient.create(index: 'name<test');
          } on IndexException catch (e, s) {
            expect(e, IndexException.invalidNameFormat());
          }
        });
        test('Contains #', () async {
          try {
            await iClient.create(index: 'name#test');
          } on IndexException catch (e, s) {
            expect(e, IndexException.invalidNameFormat());
          }
        });
        test('Contains +', () async {
          try {
            await iClient.create(index: 'name+test');
          } on IndexException catch (e, s) {
            expect(e, IndexException.invalidNameFormat());
          }
        });
        test('Contains *', () async {
          try {
            await iClient.create(index: 'name*test');
          } on IndexException catch (e, s) {
            expect(e, IndexException.invalidNameFormat());
          }
        });
      });
    });
    group('Delete Index', () {
      test('Successfully', () async {
        final cResp = await iClient.create(index: 'delete-successfully');
        expect(cResp.acknowledged, isTrue);
        final dResp = await iClient.delete(index: 'delete-successfully');
        expect(dResp.acknowledged, isTrue);
      });
      test('Fails', () async {
        final dResp = await iClient.delete(index: 'delete-fails');
        expect(dResp.acknowledged, isFalse);
      });
    });
    group('Get Index', () {
      tearDown(() => iClient.delete(
          index: 'get-*', expandWildCardOptions: [ExpandWildCardOption.all]));
      test('Fails', () async {
        try {
          await iClient.get(index: 'get-fails');
        } on IndexException catch (ex, s) {
          expect(ex, IndexException.invalidIndex());
        }
      });
      test('Succeeds', () async {
        final cResp = await iClient.create(index: 'get-succeeds');
        expect(cResp.acknowledged, isTrue);
        final gResp = await iClient.get(index: 'get-succeeds');
        expect(gResp.indexName, 'get-succeeds');
        expect(gResp.mappings, const {});
        // Todo: Handle settings
        // expect(
        //     gResp.settings.keys.
        //     mergeStaticAndDynamicSettings(
        //         StaticIndexSettings(), DynamicIndexSettings()));
        expect(gResp.aliasMapping, const {});
      });
    });
    group('Index exists', () {});
    group('Open Index', () {});
    group('Close Index', () {});
    group('Split Index', () {});
    group('Clone Index', () {});
    group('Get Settings', () {});
    group('Update Settings', () {});
    group('Create / Update Mappings', () {});
    group('Clear', () {
      group('Index', () {});
      group('Datastream cache', () {});
    });
  });
}
