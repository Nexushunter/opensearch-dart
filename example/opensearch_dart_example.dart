import 'package:logging/logging.dart';
import 'package:uuid/uuid.dart';
import 'package:opensearch/api.dart';

void main() async {
  Logger.root.level = Level.FINE;
  Logger.root.onRecord.listen(
    (event) => print(
      '[${event.level}] ${event.loggerName} - ${event.message} ${event.object != null ? '\n-${event.object}' : ''}${event.error != null ? '\n-${event.error}' : ''}${event.stackTrace != null ? '\n-${event.stackTrace}' : ''}',
    ),
  );

  // Target opensearch-node in docker-compose
  final api = DefaultApi(ApiClient(
    // Change to location of Opensearch cluster in remote environments
    basePath: 'http://localhost:9200',
  ));

  final index = Uuid().v4();
  final alias = 'example-alias';
  // Create an index and add an alias to it
  api.indicesCreate(index);
  api.indicesPutAliasPut(index, alias);

  // Create a document in the index
  await api.indexPost(index, {"simpleKey": "simpleValue"});
  // List the contents of the index
  final contents = await api.searchGetWithIndex(index);

  print('Contents length: ${contents?.hits?.hits.length ?? -1}');
}
