//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class MissionListResponse {
  /// Returns a new [MissionListResponse] instance.
  MissionListResponse({
    this.start,
    this.limit,
    this.countTotal,
    this.items = const [],
    this.hasMoreResults,
    this.count,
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

  List<MissionResponse> items;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? hasMoreResults;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? count;

  @override
  bool operator ==(Object other) => identical(this, other) || other is MissionListResponse &&
    other.start == start &&
    other.limit == limit &&
    other.countTotal == countTotal &&
    _deepEquality.equals(other.items, items) &&
    other.hasMoreResults == hasMoreResults &&
    other.count == count;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (start == null ? 0 : start!.hashCode) +
    (limit == null ? 0 : limit!.hashCode) +
    (countTotal == null ? 0 : countTotal!.hashCode) +
    (items.hashCode) +
    (hasMoreResults == null ? 0 : hasMoreResults!.hashCode) +
    (count == null ? 0 : count!.hashCode);

  @override
  String toString() => 'MissionListResponse[start=$start, limit=$limit, countTotal=$countTotal, items=$items, hasMoreResults=$hasMoreResults, count=$count]';

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
    if (this.hasMoreResults != null) {
      json[r'hasMoreResults'] = this.hasMoreResults;
    } else {
      json[r'hasMoreResults'] = null;
    }
    if (this.count != null) {
      json[r'count'] = this.count;
    } else {
      json[r'count'] = null;
    }
    return json;
  }

  /// Returns a new [MissionListResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MissionListResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "MissionListResponse[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "MissionListResponse[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MissionListResponse(
        start: mapValueOfType<int>(json, r'start'),
        limit: mapValueOfType<int>(json, r'limit'),
        countTotal: mapValueOfType<int>(json, r'countTotal'),
        items: MissionResponse.listFromJson(json[r'items']),
        hasMoreResults: mapValueOfType<bool>(json, r'hasMoreResults'),
        count: mapValueOfType<int>(json, r'count'),
      );
    }
    return null;
  }

  static List<MissionListResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <MissionListResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MissionListResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MissionListResponse> mapFromJson(dynamic json) {
    final map = <String, MissionListResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MissionListResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MissionListResponse-objects as value to a dart map
  static Map<String, List<MissionListResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<MissionListResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = MissionListResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

