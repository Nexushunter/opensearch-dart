//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CertificatesDetail {
  /// Returns a new [CertificatesDetail] instance.
  CertificatesDetail({
    this.issuerDn,
    this.subjectDn,
    this.san,
    this.notBefore,
    this.notAfter,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? issuerDn;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? subjectDn;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? san;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? notBefore;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? notAfter;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CertificatesDetail &&
          other.issuerDn == issuerDn &&
          other.subjectDn == subjectDn &&
          other.san == san &&
          other.notBefore == notBefore &&
          other.notAfter == notAfter;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (issuerDn == null ? 0 : issuerDn!.hashCode) +
      (subjectDn == null ? 0 : subjectDn!.hashCode) +
      (san == null ? 0 : san!.hashCode) +
      (notBefore == null ? 0 : notBefore!.hashCode) +
      (notAfter == null ? 0 : notAfter!.hashCode);

  @override
  String toString() =>
      'CertificatesDetail[issuerDn=$issuerDn, subjectDn=$subjectDn, san=$san, notBefore=$notBefore, notAfter=$notAfter]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.issuerDn != null) {
      json[r'issuer_dn'] = this.issuerDn;
    } else {
      json[r'issuer_dn'] = null;
    }
    if (this.subjectDn != null) {
      json[r'subject_dn'] = this.subjectDn;
    } else {
      json[r'subject_dn'] = null;
    }
    if (this.san != null) {
      json[r'san'] = this.san;
    } else {
      json[r'san'] = null;
    }
    if (this.notBefore != null) {
      json[r'not_before'] = this.notBefore;
    } else {
      json[r'not_before'] = null;
    }
    if (this.notAfter != null) {
      json[r'not_after'] = this.notAfter;
    } else {
      json[r'not_after'] = null;
    }
    return json;
  }

  /// Returns a new [CertificatesDetail] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CertificatesDetail? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "CertificatesDetail[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "CertificatesDetail[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CertificatesDetail(
        issuerDn: mapValueOfType<String>(json, r'issuer_dn'),
        subjectDn: mapValueOfType<String>(json, r'subject_dn'),
        san: mapValueOfType<String>(json, r'san'),
        notBefore: mapValueOfType<String>(json, r'not_before'),
        notAfter: mapValueOfType<String>(json, r'not_after'),
      );
    }
    return null;
  }

  static List<CertificatesDetail> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <CertificatesDetail>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CertificatesDetail.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CertificatesDetail> mapFromJson(dynamic json) {
    final map = <String, CertificatesDetail>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CertificatesDetail.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CertificatesDetail-objects as value to a dart map
  static Map<String, List<CertificatesDetail>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<CertificatesDetail>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CertificatesDetail.listFromJson(
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
