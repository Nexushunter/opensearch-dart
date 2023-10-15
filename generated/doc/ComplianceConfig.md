# opensearch.model.ComplianceConfig

## Load the model package
```dart
import 'package:opensearch/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**enabled** | **bool** |  | [optional] 
**writeLogDiffs** | **bool** |  | [optional] 
**readWatchedFields** | [**Object**](.md) |  | [optional] 
**readIgnoreUsers** | **List<String>** |  | [optional] [default to const []]
**writeWatchedIndices** | **List<String>** |  | [optional] [default to const []]
**writeIgnoreUsers** | **List<String>** |  | [optional] [default to const []]
**readMetadataOnly** | **bool** |  | [optional] 
**writeMetadataOnly** | **bool** |  | [optional] 
**externalConfig** | **bool** |  | [optional] 
**internalConfig** | **bool** |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


