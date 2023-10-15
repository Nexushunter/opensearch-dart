# opensearch.model.Role

## Load the model package
```dart
import 'package:opensearch/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**reserved** | **bool** |  | [optional] 
**hidden** | **bool** |  | [optional] 
**description** | **String** |  | [optional] 
**clusterPermissions** | **List<String>** |  | [optional] [default to const []]
**indexPermissions** | [**List<IndexPermission>**](IndexPermission.md) |  | [optional] [default to const []]
**tenantPermissions** | [**List<TenantPermission>**](TenantPermission.md) |  | [optional] [default to const []]
**static_** | **bool** |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


