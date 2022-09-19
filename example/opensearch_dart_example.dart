import 'package:logging/logging.dart';
import 'package:opensearch_dart/opensearch_dart.dart';

void main() async {
  Logger.root.level = Level.FINE;
  Logger.root.onRecord.listen(
    (event) => print(
      '[${event.level}] ${event.loggerName} - ${event.message} ${event.object != null ? '\n-${event.object}' : ''}${event.error != null ? '\n-${event.error}' : ''}${event.stackTrace != null ? '\n-${event.stackTrace}' : ''}',
    ),
  );

  OpenSearchClient baseClient =
      OpenSearchClient(connectionConfig: ConnectionConfig(), enableAWS: false);
  var iClient = baseClient.indexClient;
  final ack = await iClient.create(index: 'testing-3', alias: 'testing');
  print(ack.acknowledged);
  final ack3 = await iClient.get(index: 'testing');
  print(ack3.aliasMapping);
  print(ack3.settings);
  print(ack3.mappings);
  final ack4 =
      await baseClient.aliasClient.remove(index: 'testing-3', alias: 'testing');
  print(ack4.acknowledged);
  final ack6 = await baseClient.indexClient.getSettings(index: 'testing-3');
  print(ack6.dynamicSettings);

  final hits = await baseClient.searchClient.all('testing-3');
  print(hits);
  final hits2 = await baseClient.searchClient.allCluster();
  print(hits2);

  final ack5 = await iClient.delete(index: 'testing-3');

  print(ack5.acknowledged);
}
