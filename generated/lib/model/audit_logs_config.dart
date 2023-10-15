//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class AuditLogsConfig {
  /// Returns a new [AuditLogsConfig] instance.
  AuditLogsConfig({
    this.ignoreUsers = const [],
    this.ignoreRequests = const [],
    this.disabledRestCategories = const [],
    this.disabledTransportCategories = const [],
    this.logRequestBody,
    this.resolveIndices,
    this.resolveBulkRequests,
    this.excludeSensitiveHeaders,
    this.enableTransport,
    this.enableRest,
  });

  List<String> ignoreUsers;

  List<String> ignoreRequests;

  List<String> disabledRestCategories;

  List<String> disabledTransportCategories;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? logRequestBody;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? resolveIndices;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? resolveBulkRequests;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? excludeSensitiveHeaders;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? enableTransport;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? enableRest;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AuditLogsConfig &&
          other.ignoreUsers == ignoreUsers &&
          other.ignoreRequests == ignoreRequests &&
          other.disabledRestCategories == disabledRestCategories &&
          other.disabledTransportCategories == disabledTransportCategories &&
          other.logRequestBody == logRequestBody &&
          other.resolveIndices == resolveIndices &&
          other.resolveBulkRequests == resolveBulkRequests &&
          other.excludeSensitiveHeaders == excludeSensitiveHeaders &&
          other.enableTransport == enableTransport &&
          other.enableRest == enableRest;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (ignoreUsers.hashCode) +
      (ignoreRequests.hashCode) +
      (disabledRestCategories.hashCode) +
      (disabledTransportCategories.hashCode) +
      (logRequestBody == null ? 0 : logRequestBody!.hashCode) +
      (resolveIndices == null ? 0 : resolveIndices!.hashCode) +
      (resolveBulkRequests == null ? 0 : resolveBulkRequests!.hashCode) +
      (excludeSensitiveHeaders == null
          ? 0
          : excludeSensitiveHeaders!.hashCode) +
      (enableTransport == null ? 0 : enableTransport!.hashCode) +
      (enableRest == null ? 0 : enableRest!.hashCode);

  @override
  String toString() =>
      'AuditLogsConfig[ignoreUsers=$ignoreUsers, ignoreRequests=$ignoreRequests, disabledRestCategories=$disabledRestCategories, disabledTransportCategories=$disabledTransportCategories, logRequestBody=$logRequestBody, resolveIndices=$resolveIndices, resolveBulkRequests=$resolveBulkRequests, excludeSensitiveHeaders=$excludeSensitiveHeaders, enableTransport=$enableTransport, enableRest=$enableRest]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'ignore_users'] = this.ignoreUsers;
    json[r'ignore_requests'] = this.ignoreRequests;
    json[r'disabled_rest_categories'] = this.disabledRestCategories;
    json[r'disabled_transport_categories'] = this.disabledTransportCategories;
    if (this.logRequestBody != null) {
      json[r'log_request_body'] = this.logRequestBody;
    } else {
      json[r'log_request_body'] = null;
    }
    if (this.resolveIndices != null) {
      json[r'resolve_indices'] = this.resolveIndices;
    } else {
      json[r'resolve_indices'] = null;
    }
    if (this.resolveBulkRequests != null) {
      json[r'resolve_bulk_requests'] = this.resolveBulkRequests;
    } else {
      json[r'resolve_bulk_requests'] = null;
    }
    if (this.excludeSensitiveHeaders != null) {
      json[r'exclude_sensitive_headers'] = this.excludeSensitiveHeaders;
    } else {
      json[r'exclude_sensitive_headers'] = null;
    }
    if (this.enableTransport != null) {
      json[r'enable_transport'] = this.enableTransport;
    } else {
      json[r'enable_transport'] = null;
    }
    if (this.enableRest != null) {
      json[r'enable_rest'] = this.enableRest;
    } else {
      json[r'enable_rest'] = null;
    }
    return json;
  }

  /// Returns a new [AuditLogsConfig] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AuditLogsConfig? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "AuditLogsConfig[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "AuditLogsConfig[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AuditLogsConfig(
        ignoreUsers: json[r'ignore_users'] is List
            ? (json[r'ignore_users'] as List).cast<String>()
            : const [],
        ignoreRequests: json[r'ignore_requests'] is List
            ? (json[r'ignore_requests'] as List).cast<String>()
            : const [],
        disabledRestCategories: json[r'disabled_rest_categories'] is List
            ? (json[r'disabled_rest_categories'] as List).cast<String>()
            : const [],
        disabledTransportCategories: json[r'disabled_transport_categories']
                is List
            ? (json[r'disabled_transport_categories'] as List).cast<String>()
            : const [],
        logRequestBody: mapValueOfType<bool>(json, r'log_request_body'),
        resolveIndices: mapValueOfType<bool>(json, r'resolve_indices'),
        resolveBulkRequests:
            mapValueOfType<bool>(json, r'resolve_bulk_requests'),
        excludeSensitiveHeaders:
            mapValueOfType<bool>(json, r'exclude_sensitive_headers'),
        enableTransport: mapValueOfType<bool>(json, r'enable_transport'),
        enableRest: mapValueOfType<bool>(json, r'enable_rest'),
      );
    }
    return null;
  }

  static List<AuditLogsConfig> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <AuditLogsConfig>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AuditLogsConfig.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AuditLogsConfig> mapFromJson(dynamic json) {
    final map = <String, AuditLogsConfig>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AuditLogsConfig.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AuditLogsConfig-objects as value to a dart map
  static Map<String, List<AuditLogsConfig>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<AuditLogsConfig>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AuditLogsConfig.listFromJson(
          entry.value,
          growable: growable,
        );
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{};
}
