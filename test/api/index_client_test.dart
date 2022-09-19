import 'package:dio/dio.dart';
import 'package:opensearch_dart/src/api/index/client.dart';
import 'package:opensearch_dart/src/api/index/exceptions.dart';
import 'package:opensearch_dart/src/api/index/index_settings.dart';
import 'package:test/test.dart';
import 'package:uuid/uuid.dart';

void main() async {
  // TODO: Stop using the dio client directly
  group('Index Client', () {
    Dio baseClient = Dio(BaseOptions(baseUrl: 'http://localhost:9200/'));
    var iClient = IndexClient(client: baseClient);
    group('Create Index', () {
      test('Successfully', () async {
        expect((await iClient.create(index: 'name')).acknowledged, isTrue);
      });
      group('Fails', () {
        test('Exists', () async {
          expect((await iClient.create(index: 'fails-exists')).acknowledged,
              isTrue);

          try {
            await iClient.create(index: 'fails-exists');
          } on IndexException catch (e) {
            expect(e, IndexException.conflict());
          }
        });
        test('Starts with _', () async {
          try {
            await iClient.create(index: '_name');
          } on IndexException catch (e) {
            expect(e, IndexException.invalidIndexPrefix());
          }
        });
        test('Starts with -', () async {
          try {
            await iClient.create(index: '-name');
          } on IndexException catch (e) {
            expect(e, IndexException.invalidIndexPrefix());
          }
        });
        test('Contains space', () async {
          try {
            await iClient.create(index: 'name test');
          } on IndexException catch (e) {
            expect(e, IndexException.invalidNameFormat());
          }
        });
        test('Contains comma', () async {
          try {
            await iClient.create(index: 'name,test');
          } on IndexException catch (e) {
            expect(e, IndexException.invalidNameFormat());
          }
        });
        test('Contains |', () async {
          try {
            await iClient.create(index: 'name|test');
          } on IndexException catch (e) {
            expect(e, IndexException.invalidNameFormat());
          }
        });
        test('Contains /', () async {
          try {
            await iClient.create(index: 'name/test');
          } on IndexException catch (e) {
            expect(e, IndexException.invalidNameFormat());
          }
        });
        test('Contains \\', () async {
          try {
            await iClient.create(index: 'name\\test');
          } on IndexException catch (e) {
            expect(e, IndexException.invalidNameFormat());
          }
        });
        test('Contains >', () async {
          try {
            await iClient.create(index: 'name>test');
          } on IndexException catch (e) {
            expect(e, IndexException.invalidNameFormat());
          }
        });
        test('Contains <', () async {
          try {
            await iClient.create(index: 'name<test');
          } on IndexException catch (e) {
            expect(e, IndexException.invalidNameFormat());
          }
        });
        test('Contains #', () async {
          try {
            await iClient.create(index: 'name#test');
          } on IndexException catch (e) {
            expect(e, IndexException.invalidNameFormat());
          }
        });
        test('Contains +', () async {
          try {
            await iClient.create(index: 'name+test');
          } on IndexException catch (e) {
            expect(e, IndexException.invalidNameFormat());
          }
        });
        test('Contains *', () async {
          try {
            await iClient.create(index: 'name*test');
          } on IndexException catch (e) {
            expect(e, IndexException.invalidNameFormat());
          }
        });
      });
    }, skip: true);
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
    }, skip: true);
    group('Get Index', () {
      test('Fails', () async {
        try {
          await iClient.get(index: 'get-fails');
        } on IndexException catch (ex) {
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
    }, skip: true);
    group('Index exists', () {
      test('fails', () async {
        final eResp = await iClient.exists(index: 'exists-fails');
        expect(eResp.acknowledged, isFalse);
      });
      test('Successfully', () async {
        final cResp = await iClient.create(index: 'exists-successfully');
        expect(cResp.acknowledged, isTrue);
        final eResp = await iClient.exists(index: 'exists-successfully');
        expect(eResp.acknowledged, isTrue);
      });
    }, skip: true);
    group('Open & Close Index', () {
      late String id;
      setUpAll(() async {
        id = Uuid().v4();
        await iClient.create(index: id);
      });

      tearDownAll(() async => await iClient.delete(index: id));

      test('Close', () async {
        final ack = await iClient.close(indexNames: [id]);
        expect(ack.shardsAcknowledged.acknowledged.acknowledged, isTrue);
        expect(ack.indicesClosed, [id]);
      });

      test('Open', () async {
        final shardAck = await iClient.open(indexNames: [id]);
        expect(shardAck.shardsAcknowledged, isTrue);
        expect(shardAck.acknowledged.acknowledged, isTrue);
      });
    });
    group('Shrink index', () {
      test('Successfully', () async {
        final id = Uuid().v4();
        final created = await iClient.create(
            index: id,
            staticSettings: StaticIndexSettings(
              numberOfShards: 2,
              numberOfRoutingShards: 2,
            ));
        expect(created.acknowledged, isTrue);

        final target = Uuid().v4();
        final ack = await iClient.shrink(
            index: id,
            target: target,
            staticIndexSettings: StaticIndexSettings());
        expect(ack.acknowledged, isTrue);

        try {
          final gResp = await iClient.get(index: target);
          expect(gResp.indexName, target);
        } on IndexException catch (ex) {
          fail(ex.message);
        }
      });
    });
    group('Split Index', () {});
    group('Clone Index', () {});
    group('Get Settings', () {
      late String id;
      setUpAll(() async {
        id = Uuid().v4();
        await iClient.create(index: id);
      });

      tearDownAll(() async => await iClient.delete(index: id));
      test('Successfully', () async {
        final settings = await iClient.getSettings(index: id);
        expect(settings.creationDate, isNotNull);
        expect(settings.versionCreated, isNotNull);
        expect(settings.uuid, isNotEmpty);
      });

      test('Fails: missing index', () async {
        try {
          await iClient.getSettings(index: Uuid().v4());
          fail('Index found when shouldn\'t have been');
        } on IndexException catch (ex) {
          expect(ex, IndexException.invalidIndex());
        }
      });
    });
    group('Update Settings', () {});
    group('Create / Update Mappings', () {});
    group('Clear', () {
      group('Index', () {});
      group('Datastream cache', () {});
    });
  });
}
