//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ScoreListResponse {
  /// Returns a new [ScoreListResponse] instance.
  ScoreListResponse({
    this.start,
    this.limit,
    this.countTotal,
    this.items = const [],
    this.count,
    this.hasMoreResults,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? start;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? limit;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? countTotal;

  List<ScoreResponse> items;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? count;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? hasMoreResults;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ScoreListResponse &&
    other.start == start &&
    other.limit == limit &&
    other.countTotal == countTotal &&
    _deepEquality.equals(other.items, items) &&
    other.count == count &&
    other.hasMoreResults == hasMoreResults;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (start == null ? 0 : start!.hashCode) +
    (limit == null ? 0 : limit!.hashCode) +
    (countTotal == null ? 0 : countTotal!.hashCode) +
    (items.hashCode) +
    (count == null ? 0 : count!.hashCode) +
    (hasMoreResults == null ? 0 : hasMoreResults!.hashCode);

  @override
  String toString() => 'ScoreListResponse[start=$start, limit=$limit, countTotal=$countTotal, items=$items, count=$count, hasMoreResults=$hasMoreResults]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.start != null) {
      json[r'start'] = this.start;
    } else {
      json[r'start'] = null;
    }
    if (this.limit != null) {
      json[r'limit'] = this.limit;
    } else {
      json[r'limit'] = null;
    }
    if (this.countTotal != null) {
      json[r'countTotal'] = this.countTotal;
    } else {
      json[r'countTotal'] = null;
    }
      json[r'items'] = this.items;
    if (this.count != null) {
      json[r'count'] = this.count;
    } else {
      json[r'count'] = null;
    }
    if (this.hasMoreResults != null) {
      json[r'hasMoreResults'] = this.hasMoreResults;
    } else {
      json[r'hasMoreResults'] = null;
    }
    return json;
  }

  /// Returns a new [ScoreListResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ScoreListResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ScoreListResponse[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ScoreListResponse[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ScoreListResponse(
        start: mapValueOfType<int>(json, r'start'),
        limit: mapValueOfType<int>(json, r'limit'),
        countTotal: mapValueOfType<int>(json, r'countTotal'),
        items: ScoreResponse.listFromJson(json[r'items']),
        count: mapValueOfType<int>(json, r'count'),
        hasMoreResults: mapValueOfType<bool>(json, r'hasMoreResults'),
      );
    }
    return null;
  }

  static List<ScoreListResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ScoreListResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ScoreListResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ScoreListResponse> mapFromJson(dynamic json) {
    final map = <String, ScoreListResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ScoreListResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ScoreListResponse-objects as value to a dart map
  static Map<String, List<ScoreListResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ScoreListResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ScoreListResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

