//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ApiClient {
  ApiClient({
    this.basePath = 'http://localhost',
    this.authentication,
  });

  final String basePath;
  final Authentication? authentication;

  var _client = Client();
  final _defaultHeaderMap = <String, String>{};

  /// Returns the current HTTP [Client] instance to use in this class.
  ///
  /// The return value is guaranteed to never be null.
  Client get client => _client;

  /// Requests to use a new HTTP [Client] in this class.
  set client(Client newClient) {
    _client = newClient;
  }

  Map<String, String> get defaultHeaderMap => _defaultHeaderMap;

  void addDefaultHeader(String key, String value) {
    _defaultHeaderMap[key] = value;
  }

  // We don't use a Map<String, String> for queryParams.
  // If collectionFormat is 'multi', a key might appear multiple times.
  Future<Response> invokeAPI(
    String path,
    String method,
    List<QueryParam> queryParams,
    Object? body,
    Map<String, String> headerParams,
    Map<String, String> formParams,
    String? contentType,
  ) async {
    await authentication?.applyToParams(queryParams, headerParams);

    headerParams.addAll(_defaultHeaderMap);
    if (contentType != null) {
      headerParams['Content-Type'] = contentType;
    }

    final urlEncodedQueryParams = queryParams.map((param) => '$param');
    final queryString = urlEncodedQueryParams.isNotEmpty
        ? '?${urlEncodedQueryParams.join('&')}'
        : '';
    final uri = Uri.parse('$basePath$path$queryString');

    try {
      // Special case for uploading a single file which isn't a 'multipart/form-data'.
      if (body is MultipartFile &&
          (contentType == null ||
              !contentType.toLowerCase().startsWith('multipart/form-data'))) {
        final request = StreamedRequest(method, uri);
        request.headers.addAll(headerParams);
        request.contentLength = body.length;
        body.finalize().listen(
              request.sink.add,
              onDone: request.sink.close,
              // ignore: avoid_types_on_closure_parameters
              onError: (Object error, StackTrace trace) => request.sink.close(),
              cancelOnError: true,
            );
        final response = await _client.send(request);
        return Response.fromStream(response);
      }

      if (body is MultipartRequest) {
        final request = MultipartRequest(method, uri);
        request.fields.addAll(body.fields);
        request.files.addAll(body.files);
        request.headers.addAll(body.headers);
        request.headers.addAll(headerParams);
        final response = await _client.send(request);
        return Response.fromStream(response);
      }

      final msgBody = contentType == 'application/x-www-form-urlencoded'
          ? formParams
          : await serializeAsync(body);
      final nullableHeaderParams = headerParams.isEmpty ? null : headerParams;

      switch (method) {
        case 'POST':
          return await _client.post(
            uri,
            headers: nullableHeaderParams,
            body: msgBody,
          );
        case 'PUT':
          return await _client.put(
            uri,
            headers: nullableHeaderParams,
            body: msgBody,
          );
        case 'DELETE':
          return await _client.delete(
            uri,
            headers: nullableHeaderParams,
            body: msgBody,
          );
        case 'PATCH':
          return await _client.patch(
            uri,
            headers: nullableHeaderParams,
            body: msgBody,
          );
        case 'HEAD':
          return await _client.head(
            uri,
            headers: nullableHeaderParams,
          );
        case 'GET':
          return await _client.get(
            uri,
            headers: nullableHeaderParams,
          );
      }
    } on SocketException catch (error, trace) {
      throw ApiException.withInner(
        HttpStatus.badRequest,
        'Socket operation failed: $method $path',
        error,
        trace,
      );
    } on TlsException catch (error, trace) {
      throw ApiException.withInner(
        HttpStatus.badRequest,
        'TLS/SSL communication failed: $method $path',
        error,
        trace,
      );
    } on IOException catch (error, trace) {
      throw ApiException.withInner(
        HttpStatus.badRequest,
        'I/O operation failed: $method $path',
        error,
        trace,
      );
    } on ClientException catch (error, trace) {
      throw ApiException.withInner(
        HttpStatus.badRequest,
        'HTTP connection failed: $method $path',
        error,
        trace,
      );
    } on Exception catch (error, trace) {
      throw ApiException.withInner(
        HttpStatus.badRequest,
        'Exception occurred: $method $path',
        error,
        trace,
      );
    }

    throw ApiException(
      HttpStatus.badRequest,
      'Invalid HTTP operation: $method $path',
    );
  }

  Future<dynamic> deserializeAsync(
    String json,
    String targetType, {
    bool growable = false,
  }) async =>
      // ignore: deprecated_member_use_from_same_package
      deserialize(json, targetType, growable: growable);

  @Deprecated(
      'Scheduled for removal in OpenAPI Generator 6.x. Use deserializeAsync() instead.')
  dynamic deserialize(
    String json,
    String targetType, {
    bool growable = false,
  }) {
    // Remove all spaces. Necessary for regular expressions as well.
    targetType =
        targetType.replaceAll(' ', ''); // ignore: parameter_assignments

    // If the expected target type is String, nothing to do...
    return targetType == 'String'
        ? json
        : _deserialize(jsonDecode(json), targetType, growable: growable);
  }

  // ignore: deprecated_member_use_from_same_package
  Future<String> serializeAsync(Object? value) async => serialize(value);

  @Deprecated(
      'Scheduled for removal in OpenAPI Generator 6.x. Use serializeAsync() instead.')
  String serialize(Object? value) => value == null ? '' : json.encode(value);

  static dynamic _deserialize(dynamic value, String targetType,
      {bool growable = false}) {
    try {
      switch (targetType) {
        case 'String':
          return value is String ? value : value.toString();
        case 'int':
          return value is int ? value : int.parse('$value');
        case 'double':
          return value is double ? value : double.parse('$value');
        case 'bool':
          if (value is bool) {
            return value;
          }
          final valueString = '$value'.toLowerCase();
          return valueString == 'true' || valueString == '1';
        case 'DateTime':
          return value is DateTime ? value : DateTime.tryParse(value);
        case 'AccountDetails':
          return AccountDetails.fromJson(value);
        case 'ActionGroup':
          return ActionGroup.fromJson(value);
        case 'ActionObjectStructure':
          return ActionObjectStructure.fromJson(value);
        case 'AuditConfig':
          return AuditConfig.fromJson(value);
        case 'AuditConfigWithReadOnly':
          return AuditConfigWithReadOnly.fromJson(value);
        case 'AuditLogsConfig':
          return AuditLogsConfig.fromJson(value);
        case 'Bytes':
          return BytesTypeTransformer().decode(value);
        case 'CatAllPitSegmentsResponseContent':
          return CatAllPitSegmentsResponseContent.fromJson(value);
        case 'CatPitSegment':
          return CatPitSegment.fromJson(value);
        case 'CatPitSegmentsBodyParams':
          return CatPitSegmentsBodyParams.fromJson(value);
        case 'CatPitSegmentsResponseContent':
          return CatPitSegmentsResponseContent.fromJson(value);
        case 'CertificatesDetail':
          return CertificatesDetail.fromJson(value);
        case 'ChangePasswordRequestContent':
          return ChangePasswordRequestContent.fromJson(value);
        case 'ChangePasswordResponseContent':
          return ChangePasswordResponseContent.fromJson(value);
        case 'ClusterGetSettingsResponseContent':
          return ClusterGetSettingsResponseContent.fromJson(value);
        case 'ClusterHealthLevel':
          return ClusterHealthLevelTypeTransformer().decode(value);
        case 'ClusterPutSettingsBodyParams':
          return ClusterPutSettingsBodyParams.fromJson(value);
        case 'ClusterPutSettingsResponseContent':
          return ClusterPutSettingsResponseContent.fromJson(value);
        case 'ClusterRerouteMetricMember':
          return ClusterRerouteMetricMemberTypeTransformer().decode(value);
        case 'ComplianceConfig':
          return ComplianceConfig.fromJson(value);
        case 'Conflicts':
          return ConflictsTypeTransformer().decode(value);
        case 'CreateActionGroupResponseContent':
          return CreateActionGroupResponseContent.fromJson(value);
        case 'CreatePitResponseContent':
          return CreatePitResponseContent.fromJson(value);
        case 'CreateRoleMappingResponseContent':
          return CreateRoleMappingResponseContent.fromJson(value);
        case 'CreateRoleResponseContent':
          return CreateRoleResponseContent.fromJson(value);
        case 'CreateTenantParams':
          return CreateTenantParams.fromJson(value);
        case 'CreateTenantResponseContent':
          return CreateTenantResponseContent.fromJson(value);
        case 'CreateUserResponseContent':
          return CreateUserResponseContent.fromJson(value);
        case 'DataStream':
          return DataStream.fromJson(value);
        case 'DataStreamIndex':
          return DataStreamIndex.fromJson(value);
        case 'DataStreamStatus':
          return DataStreamStatusTypeTransformer().decode(value);
        case 'DataStreamTimestampField':
          return DataStreamTimestampField.fromJson(value);
        case 'DefaultOperator':
          return DefaultOperatorTypeTransformer().decode(value);
        case 'DeleteActionGroupResponseContent':
          return DeleteActionGroupResponseContent.fromJson(value);
        case 'DeleteAllPitsResponseContent':
          return DeleteAllPitsResponseContent.fromJson(value);
        case 'DeleteDistinguishedNamesResponseContent':
          return DeleteDistinguishedNamesResponseContent.fromJson(value);
        case 'DeletePitBodyParams':
          return DeletePitBodyParams.fromJson(value);
        case 'DeletePitResponseContent':
          return DeletePitResponseContent.fromJson(value);
        case 'DeleteRoleMappingResponseContent':
          return DeleteRoleMappingResponseContent.fromJson(value);
        case 'DeleteRoleResponseContent':
          return DeleteRoleResponseContent.fromJson(value);
        case 'DeleteTenantResponseContent':
          return DeleteTenantResponseContent.fromJson(value);
        case 'DeleteUserResponseContent':
          return DeleteUserResponseContent.fromJson(value);
        case 'DeletedPit':
          return DeletedPit.fromJson(value);
        case 'DistinguishedNames':
          return DistinguishedNames.fromJson(value);
        case 'DynamicConfig':
          return DynamicConfig.fromJson(value);
        case 'DynamicOptions':
          return DynamicOptions.fromJson(value);
        case 'ExpandWildcards':
          return ExpandWildcardsTypeTransformer().decode(value);
        case 'FlushCacheResponseContent':
          return FlushCacheResponseContent.fromJson(value);
        case 'GetAllPitsResponseContent':
          return GetAllPitsResponseContent.fromJson(value);
        case 'GetCertificatesResponseContent':
          return GetCertificatesResponseContent.fromJson(value);
        case 'GetResponseContent':
          return GetResponseContent.fromJson(value);
        case 'GroupBy':
          return GroupByTypeTransformer().decode(value);
        case 'Health':
          return HealthTypeTransformer().decode(value);
        case 'Hits':
          return Hits.fromJson(value);
        case 'HitsMetadata':
          return HitsMetadata.fromJson(value);
        case 'IndexPermission':
          return IndexPermission.fromJson(value);
        case 'IndicesCreateBodyParams':
          return IndicesCreateBodyParams.fromJson(value);
        case 'IndicesCreateDataStreamResponseContent':
          return IndicesCreateDataStreamResponseContent.fromJson(value);
        case 'IndicesCreateResponseContent':
          return IndicesCreateResponseContent.fromJson(value);
        case 'IndicesDeleteDataStreamResponseContent':
          return IndicesDeleteDataStreamResponseContent.fromJson(value);
        case 'IndicesDeleteResponseContent':
          return IndicesDeleteResponseContent.fromJson(value);
        case 'IndicesGetDataStreamResponseContent':
          return IndicesGetDataStreamResponseContent.fromJson(value);
        case 'IndicesGetDataStreamWithNameResponseContent':
          return IndicesGetDataStreamWithNameResponseContent.fromJson(value);
        case 'IndicesPutMappingPostResponseContent':
          return IndicesPutMappingPostResponseContent.fromJson(value);
        case 'IndicesPutMappingPutResponseContent':
          return IndicesPutMappingPutResponseContent.fromJson(value);
        case 'IndicesUpdateAliasesBodyParams':
          return IndicesUpdateAliasesBodyParams.fromJson(value);
        case 'IndicesUpdateAliasesResponseContent':
          return IndicesUpdateAliasesResponseContent.fromJson(value);
        case 'IndiciesStatLevel':
          return IndiciesStatLevelTypeTransformer().decode(value);
        case 'InfoResponseContent':
          return InfoResponseContent.fromJson(value);
        case 'InfoVersion':
          return InfoVersion.fromJson(value);
        case 'NodesStatLevel':
          return NodesStatLevelTypeTransformer().decode(value);
        case 'OpType':
          return OpTypeTypeTransformer().decode(value);
        case 'PatchActionGroupResponseContent':
          return PatchActionGroupResponseContent.fromJson(value);
        case 'PatchActionGroupsResponseContent':
          return PatchActionGroupsResponseContent.fromJson(value);
        case 'PatchConfigurationResponseContent':
          return PatchConfigurationResponseContent.fromJson(value);
        case 'PatchDistinguishedNamesResponseContent':
          return PatchDistinguishedNamesResponseContent.fromJson(value);
        case 'PatchOperation':
          return PatchOperation.fromJson(value);
        case 'PatchRoleMappingResponseContent':
          return PatchRoleMappingResponseContent.fromJson(value);
        case 'PatchRoleMappingsResponseContent':
          return PatchRoleMappingsResponseContent.fromJson(value);
        case 'PatchRoleResponseContent':
          return PatchRoleResponseContent.fromJson(value);
        case 'PatchRolesResponseContent':
          return PatchRolesResponseContent.fromJson(value);
        case 'PatchTenantResponseContent':
          return PatchTenantResponseContent.fromJson(value);
        case 'PatchTenantsResponseContent':
          return PatchTenantsResponseContent.fromJson(value);
        case 'PatchUserResponseContent':
          return PatchUserResponseContent.fromJson(value);
        case 'PatchUsersResponseContent':
          return PatchUsersResponseContent.fromJson(value);
        case 'PitDetail':
          return PitDetail.fromJson(value);
        case 'PitsDetailsDeleteAll':
          return PitsDetailsDeleteAll.fromJson(value);
        case 'RefreshEnum':
          return RefreshEnumTypeTransformer().decode(value);
        case 'Relation':
          return RelationTypeTransformer().decode(value);
        case 'ReloadHttpCertificatesResponseContent':
          return ReloadHttpCertificatesResponseContent.fromJson(value);
        case 'ReloadTransportCertificatesResponseContent':
          return ReloadTransportCertificatesResponseContent.fromJson(value);
        case 'RemoteStoreRestoreBodyParams':
          return RemoteStoreRestoreBodyParams.fromJson(value);
        case 'RemoteStoreRestoreInfo':
          return RemoteStoreRestoreInfo.fromJson(value);
        case 'RemoteStoreRestoreResponseContent':
          return RemoteStoreRestoreResponseContent.fromJson(value);
        case 'RemoteStoreRestoreShardsInfo':
          return RemoteStoreRestoreShardsInfo.fromJson(value);
        case 'Role':
          return Role.fromJson(value);
        case 'RoleMapping':
          return RoleMapping.fromJson(value);
        case 'SampleType':
          return SampleTypeTypeTransformer().decode(value);
        case 'SearchBodyParams':
          return SearchBodyParams.fromJson(value);
        case 'SearchGetResponseContent':
          return SearchGetResponseContent.fromJson(value);
        case 'SearchGetWithIndexResponseContent':
          return SearchGetWithIndexResponseContent.fromJson(value);
        case 'SearchPostResponseContent':
          return SearchPostResponseContent.fromJson(value);
        case 'SearchPostWithIndexResponseContent':
          return SearchPostWithIndexResponseContent.fromJson(value);
        case 'SearchType':
          return SearchTypeTypeTransformer().decode(value);
        case 'SearchTypeMulti':
          return SearchTypeMultiTypeTransformer().decode(value);
        case 'SecurityHealthResponseContent':
          return SecurityHealthResponseContent.fromJson(value);
        case 'ShardStatistics':
          return ShardStatistics.fromJson(value);
        case 'StatusMember':
          return StatusMemberTypeTransformer().decode(value);
        case 'SuggestMode':
          return SuggestModeTypeTransformer().decode(value);
        case 'Tenant':
          return Tenant.fromJson(value);
        case 'TenantPermission':
          return TenantPermission.fromJson(value);
        case 'Time':
          return TimeTypeTransformer().decode(value);
        case 'Total':
          return Total.fromJson(value);
        case 'UpdateAuditConfigurationResponseContent':
          return UpdateAuditConfigurationResponseContent.fromJson(value);
        case 'UpdateConfigurationResponseContent':
          return UpdateConfigurationResponseContent.fromJson(value);
        case 'UpdateDistinguishedNamesResponseContent':
          return UpdateDistinguishedNamesResponseContent.fromJson(value);
        case 'User':
          return User.fromJson(value);
        case 'UserDefinedObjectStructure':
          return UserDefinedObjectStructure.fromJson(value);
        case 'UserDefinedStructure':
          return UserDefinedStructure.fromJson(value);
        case 'UserTenants':
          return UserTenants.fromJson(value);
        case 'VersionType':
          return VersionTypeTypeTransformer().decode(value);
        case 'WaitForEvents':
          return WaitForEventsTypeTransformer().decode(value);
        case 'WaitForStatus':
          return WaitForStatusTypeTransformer().decode(value);
        default:
          dynamic match;
          if (value is List &&
              (match = _regList.firstMatch(targetType)?.group(1)) != null) {
            return value
                .map<dynamic>((dynamic v) => _deserialize(
                      v,
                      match,
                      growable: growable,
                    ))
                .toList(growable: growable);
          }
          if (value is Set &&
              (match = _regSet.firstMatch(targetType)?.group(1)) != null) {
            return value
                .map<dynamic>((dynamic v) => _deserialize(
                      v,
                      match,
                      growable: growable,
                    ))
                .toSet();
          }
          if (value is Map &&
              (match = _regMap.firstMatch(targetType)?.group(1)) != null) {
            return Map<String, dynamic>.fromIterables(
              value.keys.cast<String>(),
              value.values.map<dynamic>((dynamic v) => _deserialize(
                    v,
                    match,
                    growable: growable,
                  )),
            );
          }
      }
    } on Exception catch (error, trace) {
      throw ApiException.withInner(
        HttpStatus.internalServerError,
        'Exception during deserialization.',
        error,
        trace,
      );
    }
    throw ApiException(
      HttpStatus.internalServerError,
      'Could not find a suitable class for deserialization',
    );
  }
}

/// Primarily intended for use in an isolate.
class DeserializationMessage {
  const DeserializationMessage({
    required this.json,
    required this.targetType,
    this.growable = false,
  });

  /// The JSON value to deserialize.
  final String json;

  /// Target type to deserialize to.
  final String targetType;

  /// Whether to make deserialized lists or maps growable.
  final bool growable;
}

/// Primarily intended for use in an isolate.
Future<dynamic> deserializeAsync(DeserializationMessage message) async {
  // Remove all spaces. Necessary for regular expressions as well.
  final targetType = message.targetType.replaceAll(' ', '');

  // If the expected target type is String, nothing to do...
  return targetType == 'String'
      ? message.json
      : ApiClient._deserialize(
          jsonDecode(message.json),
          targetType,
          growable: message.growable,
        );
}

/// Primarily intended for use in an isolate.
Future<String> serializeAsync(Object? value) async =>
    value == null ? '' : json.encode(value);
