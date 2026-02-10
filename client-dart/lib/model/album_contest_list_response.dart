//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class AlbumContestListResponse {
  /// Returns a new [AlbumContestListResponse] instance.
  AlbumContestListResponse({
    this.valid,
    this.message,
    this.version,
    this.serializeNulls,
    this.startTimeLog,
    this.errorCode,
    this.request = const [],
    this.items = const [],
    this.hasMoreResults,
    this.count,
    this.countTotal,
    this.returning,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? valid;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? message;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? version;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? serializeNulls;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? startTimeLog;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? errorCode;

  List<NameStringValueResponse> request;

  List<AlbumContestResponse> items;

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

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? countTotal;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? returning;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AlbumContestListResponse &&
    other.valid == valid &&
    other.message == message &&
    other.version == version &&
    other.serializeNulls == serializeNulls &&
    other.startTimeLog == startTimeLog &&
    other.errorCode == errorCode &&
    _deepEquality.equals(other.request, request) &&
    _deepEquality.equals(other.items, items) &&
    other.hasMoreResults == hasMoreResults &&
    other.count == count &&
    other.countTotal == countTotal &&
    other.returning == returning;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (valid == null ? 0 : valid!.hashCode) +
    (message == null ? 0 : message!.hashCode) +
    (version == null ? 0 : version!.hashCode) +
    (serializeNulls == null ? 0 : serializeNulls!.hashCode) +
    (startTimeLog == null ? 0 : startTimeLog!.hashCode) +
    (errorCode == null ? 0 : errorCode!.hashCode) +
    (request.hashCode) +
    (items.hashCode) +
    (hasMoreResults == null ? 0 : hasMoreResults!.hashCode) +
    (count == null ? 0 : count!.hashCode) +
    (countTotal == null ? 0 : countTotal!.hashCode) +
    (returning == null ? 0 : returning!.hashCode);

  @override
  String toString() => 'AlbumContestListResponse[valid=$valid, message=$message, version=$version, serializeNulls=$serializeNulls, startTimeLog=$startTimeLog, errorCode=$errorCode, request=$request, items=$items, hasMoreResults=$hasMoreResults, count=$count, countTotal=$countTotal, returning=$returning]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.valid != null) {
      json[r'valid'] = this.valid;
    } else {
      json[r'valid'] = null;
    }
    if (this.message != null) {
      json[r'message'] = this.message;
    } else {
      json[r'message'] = null;
    }
    if (this.version != null) {
      json[r'version'] = this.version;
    } else {
      json[r'version'] = null;
    }
    if (this.serializeNulls != null) {
      json[r'serializeNulls'] = this.serializeNulls;
    } else {
      json[r'serializeNulls'] = null;
    }
    if (this.startTimeLog != null) {
      json[r'startTimeLog'] = this.startTimeLog;
    } else {
      json[r'startTimeLog'] = null;
    }
    if (this.errorCode != null) {
      json[r'errorCode'] = this.errorCode;
    } else {
      json[r'errorCode'] = null;
    }
      json[r'request'] = this.request;
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
    if (this.countTotal != null) {
      json[r'countTotal'] = this.countTotal;
    } else {
      json[r'countTotal'] = null;
    }
    if (this.returning != null) {
      json[r'returning'] = this.returning;
    } else {
      json[r'returning'] = null;
    }
    return json;
  }

  /// Returns a new [AlbumContestListResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AlbumContestListResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "AlbumContestListResponse[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "AlbumContestListResponse[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AlbumContestListResponse(
        valid: mapValueOfType<bool>(json, r'valid'),
        message: mapValueOfType<String>(json, r'message'),
        version: mapValueOfType<double>(json, r'version'),
        serializeNulls: mapValueOfType<bool>(json, r'serializeNulls'),
        startTimeLog: mapValueOfType<int>(json, r'startTimeLog'),
        errorCode: mapValueOfType<String>(json, r'errorCode'),
        request: NameStringValueResponse.listFromJson(json[r'request']),
        items: AlbumContestResponse.listFromJson(json[r'items']),
        hasMoreResults: mapValueOfType<bool>(json, r'hasMoreResults'),
        count: mapValueOfType<int>(json, r'count'),
        countTotal: mapValueOfType<int>(json, r'countTotal'),
        returning: mapValueOfType<String>(json, r'returning'),
      );
    }
    return null;
  }

  static List<AlbumContestListResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AlbumContestListResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AlbumContestListResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AlbumContestListResponse> mapFromJson(dynamic json) {
    final map = <String, AlbumContestListResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AlbumContestListResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AlbumContestListResponse-objects as value to a dart map
  static Map<String, List<AlbumContestListResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AlbumContestListResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AlbumContestListResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

