//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class StepResponse {
  /// Returns a new [StepResponse] instance.
  StepResponse({
    this.leg,
    this.distance,
    this.duration,
    this.startLat,
    this.startLng,
    this.startAlt,
    this.startDate,
    this.endLat,
    this.endLng,
    this.endAlt,
    this.endDate,
    this.accuracy,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  LegResponse? leg;

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
  double? startLat;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? startLng;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? startAlt;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? startDate;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? endLat;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? endLng;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? endAlt;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? endDate;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? accuracy;

  @override
  bool operator ==(Object other) => identical(this, other) || other is StepResponse &&
    other.leg == leg &&
    other.distance == distance &&
    other.duration == duration &&
    other.startLat == startLat &&
    other.startLng == startLng &&
    other.startAlt == startAlt &&
    other.startDate == startDate &&
    other.endLat == endLat &&
    other.endLng == endLng &&
    other.endAlt == endAlt &&
    other.endDate == endDate &&
    other.accuracy == accuracy;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (leg == null ? 0 : leg!.hashCode) +
    (distance == null ? 0 : distance!.hashCode) +
    (duration == null ? 0 : duration!.hashCode) +
    (startLat == null ? 0 : startLat!.hashCode) +
    (startLng == null ? 0 : startLng!.hashCode) +
    (startAlt == null ? 0 : startAlt!.hashCode) +
    (startDate == null ? 0 : startDate!.hashCode) +
    (endLat == null ? 0 : endLat!.hashCode) +
    (endLng == null ? 0 : endLng!.hashCode) +
    (endAlt == null ? 0 : endAlt!.hashCode) +
    (endDate == null ? 0 : endDate!.hashCode) +
    (accuracy == null ? 0 : accuracy!.hashCode);

  @override
  String toString() => 'StepResponse[leg=$leg, distance=$distance, duration=$duration, startLat=$startLat, startLng=$startLng, startAlt=$startAlt, startDate=$startDate, endLat=$endLat, endLng=$endLng, endAlt=$endAlt, endDate=$endDate, accuracy=$accuracy]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.leg != null) {
      json[r'leg'] = this.leg;
    } else {
      json[r'leg'] = null;
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
    if (this.startLat != null) {
      json[r'startLat'] = this.startLat;
    } else {
      json[r'startLat'] = null;
    }
    if (this.startLng != null) {
      json[r'startLng'] = this.startLng;
    } else {
      json[r'startLng'] = null;
    }
    if (this.startAlt != null) {
      json[r'startAlt'] = this.startAlt;
    } else {
      json[r'startAlt'] = null;
    }
    if (this.startDate != null) {
      json[r'startDate'] = this.startDate;
    } else {
      json[r'startDate'] = null;
    }
    if (this.endLat != null) {
      json[r'endLat'] = this.endLat;
    } else {
      json[r'endLat'] = null;
    }
    if (this.endLng != null) {
      json[r'endLng'] = this.endLng;
    } else {
      json[r'endLng'] = null;
    }
    if (this.endAlt != null) {
      json[r'endAlt'] = this.endAlt;
    } else {
      json[r'endAlt'] = null;
    }
    if (this.endDate != null) {
      json[r'endDate'] = this.endDate;
    } else {
      json[r'endDate'] = null;
    }
    if (this.accuracy != null) {
      json[r'accuracy'] = this.accuracy;
    } else {
      json[r'accuracy'] = null;
    }
    return json;
  }

  /// Returns a new [StepResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static StepResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "StepResponse[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "StepResponse[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return StepResponse(
        leg: LegResponse.fromJson(json[r'leg']),
        distance: mapValueOfType<double>(json, r'distance'),
        duration: mapValueOfType<int>(json, r'duration'),
        startLat: mapValueOfType<double>(json, r'startLat'),
        startLng: mapValueOfType<double>(json, r'startLng'),
        startAlt: mapValueOfType<double>(json, r'startAlt'),
        startDate: mapValueOfType<int>(json, r'startDate'),
        endLat: mapValueOfType<double>(json, r'endLat'),
        endLng: mapValueOfType<double>(json, r'endLng'),
        endAlt: mapValueOfType<double>(json, r'endAlt'),
        endDate: mapValueOfType<int>(json, r'endDate'),
        accuracy: mapValueOfType<int>(json, r'accuracy'),
      );
    }
    return null;
  }

  static List<StepResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <StepResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = StepResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, StepResponse> mapFromJson(dynamic json) {
    final map = <String, StepResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = StepResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of StepResponse-objects as value to a dart map
  static Map<String, List<StepResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<StepResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = StepResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

