//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class GetCertificatesResponseContent {
  /// Returns a new [GetCertificatesResponseContent] instance.
  GetCertificatesResponseContent({
    this.httpCertificatesList = const [],
    this.transportCertificatesList = const [],
  });

  List<CertificatesDetail> httpCertificatesList;

  List<CertificatesDetail> transportCertificatesList;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is GetCertificatesResponseContent &&
          other.httpCertificatesList == httpCertificatesList &&
          other.transportCertificatesList == transportCertificatesList;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (httpCertificatesList.hashCode) + (transportCertificatesList.hashCode);

  @override
  String toString() =>
      'GetCertificatesResponseContent[httpCertificatesList=$httpCertificatesList, transportCertificatesList=$transportCertificatesList]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'http_certificates_list'] = this.httpCertificatesList;
    json[r'transport_certificates_list'] = this.transportCertificatesList;
    return json;
  }

  /// Returns a new [GetCertificatesResponseContent] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GetCertificatesResponseContent? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "GetCertificatesResponseContent[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "GetCertificatesResponseContent[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return GetCertificatesResponseContent(
        httpCertificatesList:
            CertificatesDetail.listFromJson(json[r'http_certificates_list']),
        transportCertificatesList: CertificatesDetail.listFromJson(
            json[r'transport_certificates_list']),
      );
    }
    return null;
  }

  static List<GetCertificatesResponseContent> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <GetCertificatesResponseContent>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GetCertificatesResponseContent.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, GetCertificatesResponseContent> mapFromJson(dynamic json) {
    final map = <String, GetCertificatesResponseContent>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GetCertificatesResponseContent.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of GetCertificatesResponseContent-objects as value to a dart map
  static Map<String, List<GetCertificatesResponseContent>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<GetCertificatesResponseContent>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = GetCertificatesResponseContent.listFromJson(
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
