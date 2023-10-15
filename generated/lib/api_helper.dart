//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class QueryParam {
  const QueryParam(this.name, this.value);

  final String name;
  final String value;

  @override
  String toString() =>
      '${Uri.encodeQueryComponent(name)}=${Uri.encodeQueryComponent(value)}';
}

// Ported from the Java version.
Iterable<QueryParam> _queryParams(
  String collectionFormat,
  String name,
  dynamic value,
) {
  // Assertions to run in debug mode only.
  assert(name.isNotEmpty, 'Parameter cannot be an empty string.');

  final params = <QueryParam>[];

  if (value is List) {
    if (collectionFormat == 'multi') {
      return value.map(
        (dynamic v) => QueryParam(name, parameterToString(v)),
      );
    }

    // Default collection format is 'csv'.
    if (collectionFormat.isEmpty) {
      collectionFormat = 'csv'; // ignore: parameter_assignments
    }

    final delimiter = _delimiters[collectionFormat] ?? ',';

    params.add(QueryParam(
      name,
      value.map<dynamic>(parameterToString).join(delimiter),
    ));
  } else if (value != null) {
    params.add(QueryParam(name, parameterToString(value)));
  }

  return params;
}

/// Format the given parameter object into a [String].
String parameterToString(dynamic value) {
  if (value == null) {
    return '';
  }
  if (value is DateTime) {
    return value.toUtc().toIso8601String();
  }
  if (value is Bytes) {
    return BytesTypeTransformer().encode(value).toString();
  }
  if (value is ClusterHealthLevel) {
    return ClusterHealthLevelTypeTransformer().encode(value).toString();
  }
  if (value is ClusterRerouteMetricMember) {
    return ClusterRerouteMetricMemberTypeTransformer().encode(value).toString();
  }
  if (value is Conflicts) {
    return ConflictsTypeTransformer().encode(value).toString();
  }
  if (value is DataStreamStatus) {
    return DataStreamStatusTypeTransformer().encode(value).toString();
  }
  if (value is DefaultOperator) {
    return DefaultOperatorTypeTransformer().encode(value).toString();
  }
  if (value is ExpandWildcards) {
    return ExpandWildcardsTypeTransformer().encode(value).toString();
  }
  if (value is GroupBy) {
    return GroupByTypeTransformer().encode(value).toString();
  }
  if (value is Health) {
    return HealthTypeTransformer().encode(value).toString();
  }
  if (value is IndiciesStatLevel) {
    return IndiciesStatLevelTypeTransformer().encode(value).toString();
  }
  if (value is NodesStatLevel) {
    return NodesStatLevelTypeTransformer().encode(value).toString();
  }
  if (value is OpType) {
    return OpTypeTypeTransformer().encode(value).toString();
  }
  if (value is RefreshEnum) {
    return RefreshEnumTypeTransformer().encode(value).toString();
  }
  if (value is Relation) {
    return RelationTypeTransformer().encode(value).toString();
  }
  if (value is SampleType) {
    return SampleTypeTypeTransformer().encode(value).toString();
  }
  if (value is SearchType) {
    return SearchTypeTypeTransformer().encode(value).toString();
  }
  if (value is SearchTypeMulti) {
    return SearchTypeMultiTypeTransformer().encode(value).toString();
  }
  if (value is StatusMember) {
    return StatusMemberTypeTransformer().encode(value).toString();
  }
  if (value is SuggestMode) {
    return SuggestModeTypeTransformer().encode(value).toString();
  }
  if (value is Time) {
    return TimeTypeTransformer().encode(value).toString();
  }
  if (value is VersionType) {
    return VersionTypeTypeTransformer().encode(value).toString();
  }
  if (value is WaitForEvents) {
    return WaitForEventsTypeTransformer().encode(value).toString();
  }
  if (value is WaitForStatus) {
    return WaitForStatusTypeTransformer().encode(value).toString();
  }
  return value.toString();
}

/// Returns the decoded body as UTF-8 if the given headers indicate an 'application/json'
/// content type. Otherwise, returns the decoded body as decoded by dart:http package.
Future<String> _decodeBodyBytes(Response response) async {
  final contentType = response.headers['content-type'];
  return contentType != null &&
          contentType.toLowerCase().startsWith('application/json')
      ? response.bodyBytes.isEmpty
          ? ''
          : utf8.decode(response.bodyBytes)
      : response.body;
}

/// Returns a valid [T] value found at the specified Map [key], null otherwise.
T? mapValueOfType<T>(dynamic map, String key) {
  final dynamic value = map is Map ? map[key] : null;
  return value is T ? value : null;
}

/// Returns a valid Map<K, V> found at the specified Map [key], null otherwise.
Map<K, V>? mapCastOfType<K, V>(dynamic map, String key) {
  final dynamic value = map is Map ? map[key] : null;
  return value is Map ? value.cast<K, V>() : null;
}

/// Returns a valid [DateTime] found at the specified Map [key], null otherwise.
DateTime? mapDateTime(dynamic map, String key, [String? pattern]) {
  final dynamic value = map is Map ? map[key] : null;
  if (value != null) {
    int? millis;
    if (value is int) {
      millis = value;
    } else if (value is String) {
      if (pattern == _dateEpochMarker) {
        millis = int.tryParse(value);
      } else {
        return DateTime.tryParse(value);
      }
    }
    if (millis != null) {
      return DateTime.fromMillisecondsSinceEpoch(millis, isUtc: true);
    }
  }
  return null;
}
