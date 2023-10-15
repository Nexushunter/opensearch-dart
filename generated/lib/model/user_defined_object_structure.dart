//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class UserDefinedObjectStructure {
  /// Returns a new [UserDefinedObjectStructure] instance.
  UserDefinedObjectStructure({
    this.bool_,
    this.boosting,
    this.combinedFields,
    this.constantScore,
    this.disMax,
    this.distanceFeature,
    this.exists,
    this.functionScore,
    this.fuzzy = const {},
    this.geoBoundingBox,
    this.geoDistance,
    this.geoPolygon,
    this.geoShape,
    this.hasChild,
    this.hasParent,
    this.ids,
    this.intervals = const {},
    this.knn,
    this.match = const {},
    this.matchAll,
    this.matchBoolPrefix = const {},
    this.matchNone,
    this.matchPhrase = const {},
    this.matchPhrasePrefix = const {},
    this.moreLikeThis,
    this.multiMatch,
    this.nested,
    this.parentId,
    this.percolate,
    this.pinned,
    this.prefix = const {},
    this.queryString,
    this.range = const {},
    this.rankFeature,
    this.regexp = const {},
    this.script,
    this.scriptScore,
    this.shape,
    this.simpleQueryString,
    this.spanContaining,
    this.fieldMaskingSpan,
    this.spanFirst,
    this.spanMulti,
    this.spanNear,
    this.spanNot,
    this.spanOr,
    this.spanTerm = const {},
    this.spanWithin,
    this.term = const {},
    this.terms,
    this.termsSet = const {},
    this.wildcard = const {},
    this.wrapper,
  });

  Object? bool_;

  Object? boosting;

  Object? combinedFields;

  Object? constantScore;

  Object? disMax;

  Object? distanceFeature;

  Object? exists;

  Object? functionScore;

  Map<String, Object> fuzzy;

  Object? geoBoundingBox;

  Object? geoDistance;

  Object? geoPolygon;

  Object? geoShape;

  Object? hasChild;

  Object? hasParent;

  Object? ids;

  Map<String, Object> intervals;

  Object? knn;

  Map<String, Object> match;

  Object? matchAll;

  Map<String, Object> matchBoolPrefix;

  Object? matchNone;

  Map<String, Object> matchPhrase;

  Map<String, Object> matchPhrasePrefix;

  Object? moreLikeThis;

  Object? multiMatch;

  Object? nested;

  Object? parentId;

  Object? percolate;

  Object? pinned;

  Map<String, Object> prefix;

  Object? queryString;

  Map<String, Object> range;

  Object? rankFeature;

  Map<String, Object> regexp;

  Object? script;

  Object? scriptScore;

  Object? shape;

  Object? simpleQueryString;

  Object? spanContaining;

  Object? fieldMaskingSpan;

  Object? spanFirst;

  Object? spanMulti;

  Object? spanNear;

  Object? spanNot;

  Object? spanOr;

  Map<String, Object> spanTerm;

  Object? spanWithin;

  Map<String, Object> term;

  Object? terms;

  Map<String, Object> termsSet;

  Map<String, Object> wildcard;

  Object? wrapper;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is UserDefinedObjectStructure &&
          other.bool_ == bool_ &&
          other.boosting == boosting &&
          other.combinedFields == combinedFields &&
          other.constantScore == constantScore &&
          other.disMax == disMax &&
          other.distanceFeature == distanceFeature &&
          other.exists == exists &&
          other.functionScore == functionScore &&
          other.fuzzy == fuzzy &&
          other.geoBoundingBox == geoBoundingBox &&
          other.geoDistance == geoDistance &&
          other.geoPolygon == geoPolygon &&
          other.geoShape == geoShape &&
          other.hasChild == hasChild &&
          other.hasParent == hasParent &&
          other.ids == ids &&
          other.intervals == intervals &&
          other.knn == knn &&
          other.match == match &&
          other.matchAll == matchAll &&
          other.matchBoolPrefix == matchBoolPrefix &&
          other.matchNone == matchNone &&
          other.matchPhrase == matchPhrase &&
          other.matchPhrasePrefix == matchPhrasePrefix &&
          other.moreLikeThis == moreLikeThis &&
          other.multiMatch == multiMatch &&
          other.nested == nested &&
          other.parentId == parentId &&
          other.percolate == percolate &&
          other.pinned == pinned &&
          other.prefix == prefix &&
          other.queryString == queryString &&
          other.range == range &&
          other.rankFeature == rankFeature &&
          other.regexp == regexp &&
          other.script == script &&
          other.scriptScore == scriptScore &&
          other.shape == shape &&
          other.simpleQueryString == simpleQueryString &&
          other.spanContaining == spanContaining &&
          other.fieldMaskingSpan == fieldMaskingSpan &&
          other.spanFirst == spanFirst &&
          other.spanMulti == spanMulti &&
          other.spanNear == spanNear &&
          other.spanNot == spanNot &&
          other.spanOr == spanOr &&
          other.spanTerm == spanTerm &&
          other.spanWithin == spanWithin &&
          other.term == term &&
          other.terms == terms &&
          other.termsSet == termsSet &&
          other.wildcard == wildcard &&
          other.wrapper == wrapper;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (bool_ == null ? 0 : bool_!.hashCode) +
      (boosting == null ? 0 : boosting!.hashCode) +
      (combinedFields == null ? 0 : combinedFields!.hashCode) +
      (constantScore == null ? 0 : constantScore!.hashCode) +
      (disMax == null ? 0 : disMax!.hashCode) +
      (distanceFeature == null ? 0 : distanceFeature!.hashCode) +
      (exists == null ? 0 : exists!.hashCode) +
      (functionScore == null ? 0 : functionScore!.hashCode) +
      (fuzzy.hashCode) +
      (geoBoundingBox == null ? 0 : geoBoundingBox!.hashCode) +
      (geoDistance == null ? 0 : geoDistance!.hashCode) +
      (geoPolygon == null ? 0 : geoPolygon!.hashCode) +
      (geoShape == null ? 0 : geoShape!.hashCode) +
      (hasChild == null ? 0 : hasChild!.hashCode) +
      (hasParent == null ? 0 : hasParent!.hashCode) +
      (ids == null ? 0 : ids!.hashCode) +
      (intervals.hashCode) +
      (knn == null ? 0 : knn!.hashCode) +
      (match.hashCode) +
      (matchAll == null ? 0 : matchAll!.hashCode) +
      (matchBoolPrefix.hashCode) +
      (matchNone == null ? 0 : matchNone!.hashCode) +
      (matchPhrase.hashCode) +
      (matchPhrasePrefix.hashCode) +
      (moreLikeThis == null ? 0 : moreLikeThis!.hashCode) +
      (multiMatch == null ? 0 : multiMatch!.hashCode) +
      (nested == null ? 0 : nested!.hashCode) +
      (parentId == null ? 0 : parentId!.hashCode) +
      (percolate == null ? 0 : percolate!.hashCode) +
      (pinned == null ? 0 : pinned!.hashCode) +
      (prefix.hashCode) +
      (queryString == null ? 0 : queryString!.hashCode) +
      (range.hashCode) +
      (rankFeature == null ? 0 : rankFeature!.hashCode) +
      (regexp.hashCode) +
      (script == null ? 0 : script!.hashCode) +
      (scriptScore == null ? 0 : scriptScore!.hashCode) +
      (shape == null ? 0 : shape!.hashCode) +
      (simpleQueryString == null ? 0 : simpleQueryString!.hashCode) +
      (spanContaining == null ? 0 : spanContaining!.hashCode) +
      (fieldMaskingSpan == null ? 0 : fieldMaskingSpan!.hashCode) +
      (spanFirst == null ? 0 : spanFirst!.hashCode) +
      (spanMulti == null ? 0 : spanMulti!.hashCode) +
      (spanNear == null ? 0 : spanNear!.hashCode) +
      (spanNot == null ? 0 : spanNot!.hashCode) +
      (spanOr == null ? 0 : spanOr!.hashCode) +
      (spanTerm.hashCode) +
      (spanWithin == null ? 0 : spanWithin!.hashCode) +
      (term.hashCode) +
      (terms == null ? 0 : terms!.hashCode) +
      (termsSet.hashCode) +
      (wildcard.hashCode) +
      (wrapper == null ? 0 : wrapper!.hashCode);

  @override
  String toString() =>
      'UserDefinedObjectStructure[bool_=$bool_, boosting=$boosting, combinedFields=$combinedFields, constantScore=$constantScore, disMax=$disMax, distanceFeature=$distanceFeature, exists=$exists, functionScore=$functionScore, fuzzy=$fuzzy, geoBoundingBox=$geoBoundingBox, geoDistance=$geoDistance, geoPolygon=$geoPolygon, geoShape=$geoShape, hasChild=$hasChild, hasParent=$hasParent, ids=$ids, intervals=$intervals, knn=$knn, match=$match, matchAll=$matchAll, matchBoolPrefix=$matchBoolPrefix, matchNone=$matchNone, matchPhrase=$matchPhrase, matchPhrasePrefix=$matchPhrasePrefix, moreLikeThis=$moreLikeThis, multiMatch=$multiMatch, nested=$nested, parentId=$parentId, percolate=$percolate, pinned=$pinned, prefix=$prefix, queryString=$queryString, range=$range, rankFeature=$rankFeature, regexp=$regexp, script=$script, scriptScore=$scriptScore, shape=$shape, simpleQueryString=$simpleQueryString, spanContaining=$spanContaining, fieldMaskingSpan=$fieldMaskingSpan, spanFirst=$spanFirst, spanMulti=$spanMulti, spanNear=$spanNear, spanNot=$spanNot, spanOr=$spanOr, spanTerm=$spanTerm, spanWithin=$spanWithin, term=$term, terms=$terms, termsSet=$termsSet, wildcard=$wildcard, wrapper=$wrapper]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.bool_ != null) {
      json[r'bool'] = this.bool_;
    } else {
      json[r'bool'] = null;
    }
    if (this.boosting != null) {
      json[r'boosting'] = this.boosting;
    } else {
      json[r'boosting'] = null;
    }
    if (this.combinedFields != null) {
      json[r'combined_fields'] = this.combinedFields;
    } else {
      json[r'combined_fields'] = null;
    }
    if (this.constantScore != null) {
      json[r'constant_score'] = this.constantScore;
    } else {
      json[r'constant_score'] = null;
    }
    if (this.disMax != null) {
      json[r'dis_max'] = this.disMax;
    } else {
      json[r'dis_max'] = null;
    }
    if (this.distanceFeature != null) {
      json[r'distance_feature'] = this.distanceFeature;
    } else {
      json[r'distance_feature'] = null;
    }
    if (this.exists != null) {
      json[r'exists'] = this.exists;
    } else {
      json[r'exists'] = null;
    }
    if (this.functionScore != null) {
      json[r'function_score'] = this.functionScore;
    } else {
      json[r'function_score'] = null;
    }
    json[r'fuzzy'] = this.fuzzy;
    if (this.geoBoundingBox != null) {
      json[r'geo_bounding_box'] = this.geoBoundingBox;
    } else {
      json[r'geo_bounding_box'] = null;
    }
    if (this.geoDistance != null) {
      json[r'geo_distance'] = this.geoDistance;
    } else {
      json[r'geo_distance'] = null;
    }
    if (this.geoPolygon != null) {
      json[r'geo_polygon'] = this.geoPolygon;
    } else {
      json[r'geo_polygon'] = null;
    }
    if (this.geoShape != null) {
      json[r'geo_shape'] = this.geoShape;
    } else {
      json[r'geo_shape'] = null;
    }
    if (this.hasChild != null) {
      json[r'has_child'] = this.hasChild;
    } else {
      json[r'has_child'] = null;
    }
    if (this.hasParent != null) {
      json[r'has_parent'] = this.hasParent;
    } else {
      json[r'has_parent'] = null;
    }
    if (this.ids != null) {
      json[r'ids'] = this.ids;
    } else {
      json[r'ids'] = null;
    }
    json[r'intervals'] = this.intervals;
    if (this.knn != null) {
      json[r'knn'] = this.knn;
    } else {
      json[r'knn'] = null;
    }
    json[r'match'] = this.match;
    if (this.matchAll != null) {
      json[r'match_all'] = this.matchAll;
    } else {
      json[r'match_all'] = null;
    }
    json[r'match_bool_prefix'] = this.matchBoolPrefix;
    if (this.matchNone != null) {
      json[r'match_none'] = this.matchNone;
    } else {
      json[r'match_none'] = null;
    }
    json[r'match_phrase'] = this.matchPhrase;
    json[r'match_phrase_prefix'] = this.matchPhrasePrefix;
    if (this.moreLikeThis != null) {
      json[r'more_like_this'] = this.moreLikeThis;
    } else {
      json[r'more_like_this'] = null;
    }
    if (this.multiMatch != null) {
      json[r'multi_match'] = this.multiMatch;
    } else {
      json[r'multi_match'] = null;
    }
    if (this.nested != null) {
      json[r'nested'] = this.nested;
    } else {
      json[r'nested'] = null;
    }
    if (this.parentId != null) {
      json[r'parent_id'] = this.parentId;
    } else {
      json[r'parent_id'] = null;
    }
    if (this.percolate != null) {
      json[r'percolate'] = this.percolate;
    } else {
      json[r'percolate'] = null;
    }
    if (this.pinned != null) {
      json[r'pinned'] = this.pinned;
    } else {
      json[r'pinned'] = null;
    }
    json[r'prefix'] = this.prefix;
    if (this.queryString != null) {
      json[r'query_string'] = this.queryString;
    } else {
      json[r'query_string'] = null;
    }
    json[r'range'] = this.range;
    if (this.rankFeature != null) {
      json[r'rank_feature'] = this.rankFeature;
    } else {
      json[r'rank_feature'] = null;
    }
    json[r'regexp'] = this.regexp;
    if (this.script != null) {
      json[r'script'] = this.script;
    } else {
      json[r'script'] = null;
    }
    if (this.scriptScore != null) {
      json[r'script_score'] = this.scriptScore;
    } else {
      json[r'script_score'] = null;
    }
    if (this.shape != null) {
      json[r'shape'] = this.shape;
    } else {
      json[r'shape'] = null;
    }
    if (this.simpleQueryString != null) {
      json[r'simple_query_string'] = this.simpleQueryString;
    } else {
      json[r'simple_query_string'] = null;
    }
    if (this.spanContaining != null) {
      json[r'span_containing'] = this.spanContaining;
    } else {
      json[r'span_containing'] = null;
    }
    if (this.fieldMaskingSpan != null) {
      json[r'field_masking_span'] = this.fieldMaskingSpan;
    } else {
      json[r'field_masking_span'] = null;
    }
    if (this.spanFirst != null) {
      json[r'span_first'] = this.spanFirst;
    } else {
      json[r'span_first'] = null;
    }
    if (this.spanMulti != null) {
      json[r'span_multi'] = this.spanMulti;
    } else {
      json[r'span_multi'] = null;
    }
    if (this.spanNear != null) {
      json[r'span_near'] = this.spanNear;
    } else {
      json[r'span_near'] = null;
    }
    if (this.spanNot != null) {
      json[r'span_not'] = this.spanNot;
    } else {
      json[r'span_not'] = null;
    }
    if (this.spanOr != null) {
      json[r'span_or'] = this.spanOr;
    } else {
      json[r'span_or'] = null;
    }
    json[r'span_term'] = this.spanTerm;
    if (this.spanWithin != null) {
      json[r'span_within'] = this.spanWithin;
    } else {
      json[r'span_within'] = null;
    }
    json[r'term'] = this.term;
    if (this.terms != null) {
      json[r'terms'] = this.terms;
    } else {
      json[r'terms'] = null;
    }
    json[r'terms_set'] = this.termsSet;
    json[r'wildcard'] = this.wildcard;
    if (this.wrapper != null) {
      json[r'wrapper'] = this.wrapper;
    } else {
      json[r'wrapper'] = null;
    }
    return json;
  }

  /// Returns a new [UserDefinedObjectStructure] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static UserDefinedObjectStructure? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "UserDefinedObjectStructure[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "UserDefinedObjectStructure[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return UserDefinedObjectStructure(
        bool_: mapValueOfType<Object>(json, r'bool'),
        boosting: mapValueOfType<Object>(json, r'boosting'),
        combinedFields: mapValueOfType<Object>(json, r'combined_fields'),
        constantScore: mapValueOfType<Object>(json, r'constant_score'),
        disMax: mapValueOfType<Object>(json, r'dis_max'),
        distanceFeature: mapValueOfType<Object>(json, r'distance_feature'),
        exists: mapValueOfType<Object>(json, r'exists'),
        functionScore: mapValueOfType<Object>(json, r'function_score'),
        fuzzy: mapCastOfType<String, Object>(json, r'fuzzy') ?? const {},
        geoBoundingBox: mapValueOfType<Object>(json, r'geo_bounding_box'),
        geoDistance: mapValueOfType<Object>(json, r'geo_distance'),
        geoPolygon: mapValueOfType<Object>(json, r'geo_polygon'),
        geoShape: mapValueOfType<Object>(json, r'geo_shape'),
        hasChild: mapValueOfType<Object>(json, r'has_child'),
        hasParent: mapValueOfType<Object>(json, r'has_parent'),
        ids: mapValueOfType<Object>(json, r'ids'),
        intervals:
            mapCastOfType<String, Object>(json, r'intervals') ?? const {},
        knn: mapValueOfType<Object>(json, r'knn'),
        match: mapCastOfType<String, Object>(json, r'match') ?? const {},
        matchAll: mapValueOfType<Object>(json, r'match_all'),
        matchBoolPrefix:
            mapCastOfType<String, Object>(json, r'match_bool_prefix') ??
                const {},
        matchNone: mapValueOfType<Object>(json, r'match_none'),
        matchPhrase:
            mapCastOfType<String, Object>(json, r'match_phrase') ?? const {},
        matchPhrasePrefix:
            mapCastOfType<String, Object>(json, r'match_phrase_prefix') ??
                const {},
        moreLikeThis: mapValueOfType<Object>(json, r'more_like_this'),
        multiMatch: mapValueOfType<Object>(json, r'multi_match'),
        nested: mapValueOfType<Object>(json, r'nested'),
        parentId: mapValueOfType<Object>(json, r'parent_id'),
        percolate: mapValueOfType<Object>(json, r'percolate'),
        pinned: mapValueOfType<Object>(json, r'pinned'),
        prefix: mapCastOfType<String, Object>(json, r'prefix') ?? const {},
        queryString: mapValueOfType<Object>(json, r'query_string'),
        range: mapCastOfType<String, Object>(json, r'range') ?? const {},
        rankFeature: mapValueOfType<Object>(json, r'rank_feature'),
        regexp: mapCastOfType<String, Object>(json, r'regexp') ?? const {},
        script: mapValueOfType<Object>(json, r'script'),
        scriptScore: mapValueOfType<Object>(json, r'script_score'),
        shape: mapValueOfType<Object>(json, r'shape'),
        simpleQueryString: mapValueOfType<Object>(json, r'simple_query_string'),
        spanContaining: mapValueOfType<Object>(json, r'span_containing'),
        fieldMaskingSpan: mapValueOfType<Object>(json, r'field_masking_span'),
        spanFirst: mapValueOfType<Object>(json, r'span_first'),
        spanMulti: mapValueOfType<Object>(json, r'span_multi'),
        spanNear: mapValueOfType<Object>(json, r'span_near'),
        spanNot: mapValueOfType<Object>(json, r'span_not'),
        spanOr: mapValueOfType<Object>(json, r'span_or'),
        spanTerm: mapCastOfType<String, Object>(json, r'span_term') ?? const {},
        spanWithin: mapValueOfType<Object>(json, r'span_within'),
        term: mapCastOfType<String, Object>(json, r'term') ?? const {},
        terms: mapValueOfType<Object>(json, r'terms'),
        termsSet: mapCastOfType<String, Object>(json, r'terms_set') ?? const {},
        wildcard: mapCastOfType<String, Object>(json, r'wildcard') ?? const {},
        wrapper: mapValueOfType<Object>(json, r'wrapper'),
      );
    }
    return null;
  }

  static List<UserDefinedObjectStructure> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <UserDefinedObjectStructure>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UserDefinedObjectStructure.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, UserDefinedObjectStructure> mapFromJson(dynamic json) {
    final map = <String, UserDefinedObjectStructure>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = UserDefinedObjectStructure.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of UserDefinedObjectStructure-objects as value to a dart map
  static Map<String, List<UserDefinedObjectStructure>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<UserDefinedObjectStructure>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = UserDefinedObjectStructure.listFromJson(
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
