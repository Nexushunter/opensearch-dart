//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

library openapi.api;

import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart';
import 'package:intl/intl.dart';
import 'package:meta/meta.dart';

part 'api_client.dart';
part 'api_helper.dart';
part 'api_exception.dart';
part 'auth/authentication.dart';
part 'auth/api_key_auth.dart';
part 'auth/oauth.dart';
part 'auth/http_basic_auth.dart';
part 'auth/http_bearer_auth.dart';

part 'api/default_api.dart';

part 'model/account_details.dart';
part 'model/action_group.dart';
part 'model/action_object_structure.dart';
part 'model/audit_config.dart';
part 'model/audit_config_with_read_only.dart';
part 'model/audit_logs_config.dart';
part 'model/bytes.dart';
part 'model/cat_all_pit_segments_response_content.dart';
part 'model/cat_pit_segment.dart';
part 'model/cat_pit_segments_body_params.dart';
part 'model/cat_pit_segments_response_content.dart';
part 'model/certificates_detail.dart';
part 'model/change_password_request_content.dart';
part 'model/change_password_response_content.dart';
part 'model/cluster_get_settings_response_content.dart';
part 'model/cluster_health_level.dart';
part 'model/cluster_put_settings_body_params.dart';
part 'model/cluster_put_settings_response_content.dart';
part 'model/cluster_reroute_metric_member.dart';
part 'model/compliance_config.dart';
part 'model/conflicts.dart';
part 'model/create_action_group_response_content.dart';
part 'model/create_pit_response_content.dart';
part 'model/create_role_mapping_response_content.dart';
part 'model/create_role_response_content.dart';
part 'model/create_tenant_params.dart';
part 'model/create_tenant_response_content.dart';
part 'model/create_user_response_content.dart';
part 'model/data_stream.dart';
part 'model/data_stream_index.dart';
part 'model/data_stream_status.dart';
part 'model/data_stream_timestamp_field.dart';
part 'model/default_operator.dart';
part 'model/delete_action_group_response_content.dart';
part 'model/delete_all_pits_response_content.dart';
part 'model/delete_distinguished_names_response_content.dart';
part 'model/delete_pit_body_params.dart';
part 'model/delete_pit_response_content.dart';
part 'model/delete_role_mapping_response_content.dart';
part 'model/delete_role_response_content.dart';
part 'model/delete_tenant_response_content.dart';
part 'model/delete_user_response_content.dart';
part 'model/deleted_pit.dart';
part 'model/distinguished_names.dart';
part 'model/dynamic_config.dart';
part 'model/dynamic_options.dart';
part 'model/expand_wildcards.dart';
part 'model/flush_cache_response_content.dart';
part 'model/get_all_pits_response_content.dart';
part 'model/get_certificates_response_content.dart';
part 'model/get_response_content.dart';
part 'model/group_by.dart';
part 'model/health.dart';
part 'model/hits.dart';
part 'model/hits_metadata.dart';
part 'model/index_permission.dart';
part 'model/indices_create_body_params.dart';
part 'model/indices_create_data_stream_response_content.dart';
part 'model/indices_create_response_content.dart';
part 'model/indices_delete_data_stream_response_content.dart';
part 'model/indices_delete_response_content.dart';
part 'model/indices_get_data_stream_response_content.dart';
part 'model/indices_get_data_stream_with_name_response_content.dart';
part 'model/indices_put_mapping_post_response_content.dart';
part 'model/indices_put_mapping_put_response_content.dart';
part 'model/indices_update_aliases_body_params.dart';
part 'model/indices_update_aliases_response_content.dart';
part 'model/indicies_stat_level.dart';
part 'model/info_response_content.dart';
part 'model/info_version.dart';
part 'model/nodes_stat_level.dart';
part 'model/op_type.dart';
part 'model/patch_action_group_response_content.dart';
part 'model/patch_action_groups_response_content.dart';
part 'model/patch_configuration_response_content.dart';
part 'model/patch_distinguished_names_response_content.dart';
part 'model/patch_operation.dart';
part 'model/patch_role_mapping_response_content.dart';
part 'model/patch_role_mappings_response_content.dart';
part 'model/patch_role_response_content.dart';
part 'model/patch_roles_response_content.dart';
part 'model/patch_tenant_response_content.dart';
part 'model/patch_tenants_response_content.dart';
part 'model/patch_user_response_content.dart';
part 'model/patch_users_response_content.dart';
part 'model/pit_detail.dart';
part 'model/pits_details_delete_all.dart';
part 'model/refresh_enum.dart';
part 'model/relation.dart';
part 'model/reload_http_certificates_response_content.dart';
part 'model/reload_transport_certificates_response_content.dart';
part 'model/remote_store_restore_body_params.dart';
part 'model/remote_store_restore_info.dart';
part 'model/remote_store_restore_response_content.dart';
part 'model/remote_store_restore_shards_info.dart';
part 'model/role.dart';
part 'model/role_mapping.dart';
part 'model/sample_type.dart';
part 'model/search_body_params.dart';
part 'model/search_get_response_content.dart';
part 'model/search_get_with_index_response_content.dart';
part 'model/search_post_response_content.dart';
part 'model/search_post_with_index_response_content.dart';
part 'model/search_type.dart';
part 'model/search_type_multi.dart';
part 'model/security_health_response_content.dart';
part 'model/shard_statistics.dart';
part 'model/status_member.dart';
part 'model/suggest_mode.dart';
part 'model/tenant.dart';
part 'model/tenant_permission.dart';
part 'model/time.dart';
part 'model/total.dart';
part 'model/update_audit_configuration_response_content.dart';
part 'model/update_configuration_response_content.dart';
part 'model/update_distinguished_names_response_content.dart';
part 'model/user.dart';
part 'model/user_defined_object_structure.dart';
part 'model/user_defined_structure.dart';
part 'model/user_tenants.dart';
part 'model/version_type.dart';
part 'model/wait_for_events.dart';
part 'model/wait_for_status.dart';

const _delimiters = {'csv': ',', 'ssv': ' ', 'tsv': '\t', 'pipes': '|'};
const _dateEpochMarker = 'epoch';
final _dateFormatter = DateFormat('yyyy-MM-dd');
final _regList = RegExp(r'^List<(.*)>$');
final _regSet = RegExp(r'^Set<(.*)>$');
final _regMap = RegExp(r'^Map<String,(.*)>$');

ApiClient defaultApiClient = ApiClient();
