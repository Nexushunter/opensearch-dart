// Openapi Generator last run: : 2023-10-15T16:33:19.149810
import 'package:openapi_generator_annotations/openapi_generator_annotations.dart';

@Openapi(
  useNextGen: true,
  inputSpecFile: '',
  inputSpec: RemoteSpec(
    path:
        'https://raw.githubusercontent.com/opensearch-project/opensearch-api-specification/main/OpenSearch.openapi.json',
  ),
  generatorName: Generator.dio,
  outputDirectory: 'generated',
  additionalProperties: AdditionalProperties(
    pubName: 'opensearch',
    sortParamsByRequiredFlag: true,
    sortModelPropertiesByRequiredFlag: true,
    useEnumExtension: true,
  ),
)
class OpenSearchClient extends OpenapiGeneratorConfig {}
