//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class PredictedLocationResponse {
  /// Returns a new [PredictedLocationResponse] instance.
  PredictedLocationResponse({
    this.ownerId,
    this.onDate,
    this.onDateMilli,
    this.hour,
    this.latitude,
    this.longitude,
    this.distance,
    this.matches,
    this.averageDuration,
    this.weightedScore,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? ownerId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? onDate;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? onDateMilli;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? hour;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? latitude;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? longitude;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? distance;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? matches;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? averageDuration;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? weightedScore;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PredictedLocationResponse &&
    other.ownerId == ownerId &&
    other.onDate == onDate &&
    other.onDateMilli == onDateMilli &&
    other.hour == hour &&
    other.latitude == latitude &&
    other.longitude == longitude &&
    other.distance == distance &&
    other.matches == matches &&
    other.averageDuration == averageDuration &&
    other.weightedScore == weightedScore;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (ownerId == null ? 0 : ownerId!.hashCode) +
    (onDate == null ? 0 : onDate!.hashCode) +
    (onDateMilli == null ? 0 : onDateMilli!.hashCode) +
    (hour == null ? 0 : hour!.hashCode) +
    (latitude == null ? 0 : latitude!.hashCode) +
    (longitude == null ? 0 : longitude!.hashCode) +
    (distance == null ? 0 : distance!.hashCode) +
    (matches == null ? 0 : matches!.hashCode) +
    (averageDuration == null ? 0 : averageDuration!.hashCode) +
    (weightedScore == null ? 0 : weightedScore!.hashCode);

  @override
  String toString() => 'PredictedLocationResponse[ownerId=$ownerId, onDate=$onDate, onDateMilli=$onDateMilli, hour=$hour, latitude=$latitude, longitude=$longitude, distance=$distance, matches=$matches, averageDuration=$averageDuration, weightedScore=$weightedScore]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.ownerId != null) {
      json[r'ownerId'] = this.ownerId;
    } else {
      json[r'ownerId'] = null;
    }
    if (this.onDate != null) {
      json[r'onDate'] = this.onDate;
    } else {
      json[r'onDate'] = null;
    }
    if (this.onDateMilli != null) {
      json[r'onDateMilli'] = this.onDateMilli;
    } else {
      json[r'onDateMilli'] = null;
    }
    if (this.hour != null) {
      json[r'hour'] = this.hour;
    } else {
      json[r'hour'] = null;
    }
    if (this.latitude != null) {
      json[r'latitude'] = this.latitude;
    } else {
      json[r'latitude'] = null;
    }
    if (this.longitude != null) {
      json[r'longitude'] = this.longitude;
    } else {
      json[r'longitude'] = null;
    }
    if (this.distance != null) {
      json[r'distance'] = this.distance;
    } else {
      json[r'distance'] = null;
    }
    if (this.matches != null) {
      json[r'matches'] = this.matches;
    } else {
      json[r'matches'] = null;
    }
    if (this.averageDuration != null) {
      json[r'averageDuration'] = this.averageDuration;
    } else {
      json[r'averageDuration'] = null;
    }
    if (this.weightedScore != null) {
      json[r'weightedScore'] = this.weightedScore;
    } else {
      json[r'weightedScore'] = null;
    }
    return json;
  }

  /// Returns a new [PredictedLocationResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PredictedLocationResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "PredictedLocationResponse[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "PredictedLocationResponse[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return PredictedLocationResponse(
        ownerId: mapValueOfType<int>(json, r'ownerId'),
        onDate: mapValueOfType<String>(json, r'onDate'),
        onDateMilli: mapValueOfType<int>(json, r'onDateMilli'),
        hour: mapValueOfType<int>(json, r'hour'),
        latitude: mapValueOfType<double>(json, r'latitude'),
        longitude: mapValueOfType<double>(json, r'longitude'),
        distance: mapValueOfType<double>(json, r'distance'),
        matches: mapValueOfType<int>(json, r'matches'),
        averageDuration: mapValueOfType<double>(json, r'averageDuration'),
        weightedScore: mapValueOfType<double>(json, r'weightedScore'),
      );
    }
    return null;
  }

  static List<PredictedLocationResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PredictedLocationResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PredictedLocationResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PredictedLocationResponse> mapFromJson(dynamic json) {
    final map = <String, PredictedLocationResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PredictedLocationResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PredictedLocationResponse-objects as value to a dart map
  static Map<String, List<PredictedLocationResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<PredictedLocationResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PredictedLocationResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

