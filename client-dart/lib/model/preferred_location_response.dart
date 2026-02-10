//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class PreferredLocationResponse {
  /// Returns a new [PreferredLocationResponse] instance.
  PreferredLocationResponse({
    this.ownerId,
    this.onDate,
    this.onDateMilli,
    this.hour,
    this.latitude,
    this.longitude,
    this.distance,
    this.duration,
    this.startStepId,
    this.endStepId,
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
  int? duration;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? startStepId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? endStepId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PreferredLocationResponse &&
    other.ownerId == ownerId &&
    other.onDate == onDate &&
    other.onDateMilli == onDateMilli &&
    other.hour == hour &&
    other.latitude == latitude &&
    other.longitude == longitude &&
    other.distance == distance &&
    other.duration == duration &&
    other.startStepId == startStepId &&
    other.endStepId == endStepId;

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
    (duration == null ? 0 : duration!.hashCode) +
    (startStepId == null ? 0 : startStepId!.hashCode) +
    (endStepId == null ? 0 : endStepId!.hashCode);

  @override
  String toString() => 'PreferredLocationResponse[ownerId=$ownerId, onDate=$onDate, onDateMilli=$onDateMilli, hour=$hour, latitude=$latitude, longitude=$longitude, distance=$distance, duration=$duration, startStepId=$startStepId, endStepId=$endStepId]';

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
    if (this.duration != null) {
      json[r'duration'] = this.duration;
    } else {
      json[r'duration'] = null;
    }
    if (this.startStepId != null) {
      json[r'startStepId'] = this.startStepId;
    } else {
      json[r'startStepId'] = null;
    }
    if (this.endStepId != null) {
      json[r'endStepId'] = this.endStepId;
    } else {
      json[r'endStepId'] = null;
    }
    return json;
  }

  /// Returns a new [PreferredLocationResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PreferredLocationResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "PreferredLocationResponse[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "PreferredLocationResponse[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return PreferredLocationResponse(
        ownerId: mapValueOfType<int>(json, r'ownerId'),
        onDate: mapValueOfType<String>(json, r'onDate'),
        onDateMilli: mapValueOfType<int>(json, r'onDateMilli'),
        hour: mapValueOfType<int>(json, r'hour'),
        latitude: mapValueOfType<double>(json, r'latitude'),
        longitude: mapValueOfType<double>(json, r'longitude'),
        distance: mapValueOfType<double>(json, r'distance'),
        duration: mapValueOfType<int>(json, r'duration'),
        startStepId: mapValueOfType<int>(json, r'startStepId'),
        endStepId: mapValueOfType<int>(json, r'endStepId'),
      );
    }
    return null;
  }

  static List<PreferredLocationResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PreferredLocationResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PreferredLocationResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PreferredLocationResponse> mapFromJson(dynamic json) {
    final map = <String, PreferredLocationResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PreferredLocationResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PreferredLocationResponse-objects as value to a dart map
  static Map<String, List<PreferredLocationResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<PreferredLocationResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PreferredLocationResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

