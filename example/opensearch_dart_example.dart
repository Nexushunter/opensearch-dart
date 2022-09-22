import 'package:logging/logging.dart';
import 'package:opensearch_dart/opensearch_dart.dart';
import 'package:opensearch_dart/src/api/common/models.dart';
import 'package:uuid/uuid.dart';

class ExampleDoc implements SearchDocument {
  final String id;
  const ExampleDoc(this.id);

  @override
  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'id': id,
    };
  }

  @override
  bool operator ==(Object other) {
    if (other is ExampleDoc) {
      return id == other.id;
    }
    return false;
  }

  @override
  String toString() {
    return '{ id: $id }';
  }
}

void main() async {
  Logger.root.level = Level.FINE;
  Logger.root.onRecord.listen(
    (event) => print(
      '[${event.level}] ${event.loggerName} - ${event.message} ${event.object != null ? '\n-${event.object}' : ''}${event.error != null ? '\n-${event.error}' : ''}${event.stackTrace != null ? '\n-${event.stackTrace}' : ''}',
    ),
  );

  OpenSearchClient baseClient =
      OpenSearchClient(connectionConfig: ConnectionConfig(), enableAWS: false);

  final index = Uuid().v4();
  final alias = 'example-alias';

  var iClient = baseClient.indexClient;
  final ack = await iClient.create(index: index, alias: alias);
  print(ack.acknowledged);
  final ack3 = await iClient.get(index: alias);
  print(ack3.aliasMapping);
  print(ack3.settings);
  print(ack3.mappings);
  final ack4 = await baseClient.aliasClient.remove(index: index, alias: alias);
  print(ack4.acknowledged);
  final ack6 = await baseClient.indexClient.getSettings(index: index);
  print(ack6.dynamicSettings);

  final exampleDoc = ExampleDoc(Uuid().v4());
  final ack7 =
      await baseClient.documentClient.index(document: exampleDoc, index: index);
  print(ack7);

  final ack8 =
      await baseClient.documentClient.get(id: exampleDoc.id, index: index);
  print(ack8);

  final hits = await baseClient.searchClient.all(index);
  print(hits);
  final hits2 = await baseClient.searchClient.allCluster();
  print(hits2);

  final ack5 = await iClient.delete(index: index);

  print(ack5.acknowledged);
}
