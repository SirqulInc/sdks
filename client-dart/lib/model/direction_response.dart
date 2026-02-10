//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class DirectionResponse {
  /// Returns a new [DirectionResponse] instance.
  DirectionResponse({
    this.action,
    this.bearing,
    this.bearingDifference,
    this.heading,
    this.distance,
    this.distanceUnits,
    this.distanceString,
    this.startLatitude,
    this.startLongitude,
    this.endLatitude,
    this.endLongitude,
    this.instruction,
    this.progressStatus,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? action;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? bearing;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? bearingDifference;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? heading;

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
  String? distanceUnits;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? distanceString;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? startLatitude;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? startLongitude;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? endLatitude;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? endLongitude;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? instruction;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? progressStatus;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DirectionResponse &&
    other.action == action &&
    other.bearing == bearing &&
    other.bearingDifference == bearingDifference &&
    other.heading == heading &&
    other.distance == distance &&
    other.distanceUnits == distanceUnits &&
    other.distanceString == distanceString &&
    other.startLatitude == startLatitude &&
    other.startLongitude == startLongitude &&
    other.endLatitude == endLatitude &&
    other.endLongitude == endLongitude &&
    other.instruction == instruction &&
    other.progressStatus == progressStatus;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (action == null ? 0 : action!.hashCode) +
    (bearing == null ? 0 : bearing!.hashCode) +
    (bearingDifference == null ? 0 : bearingDifference!.hashCode) +
    (heading == null ? 0 : heading!.hashCode) +
    (distance == null ? 0 : distance!.hashCode) +
    (distanceUnits == null ? 0 : distanceUnits!.hashCode) +
    (distanceString == null ? 0 : distanceString!.hashCode) +
    (startLatitude == null ? 0 : startLatitude!.hashCode) +
    (startLongitude == null ? 0 : startLongitude!.hashCode) +
    (endLatitude == null ? 0 : endLatitude!.hashCode) +
    (endLongitude == null ? 0 : endLongitude!.hashCode) +
    (instruction == null ? 0 : instruction!.hashCode) +
    (progressStatus == null ? 0 : progressStatus!.hashCode);

  @override
  String toString() => 'DirectionResponse[action=$action, bearing=$bearing, bearingDifference=$bearingDifference, heading=$heading, distance=$distance, distanceUnits=$distanceUnits, distanceString=$distanceString, startLatitude=$startLatitude, startLongitude=$startLongitude, endLatitude=$endLatitude, endLongitude=$endLongitude, instruction=$instruction, progressStatus=$progressStatus]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.action != null) {
      json[r'action'] = this.action;
    } else {
      json[r'action'] = null;
    }
    if (this.bearing != null) {
      json[r'bearing'] = this.bearing;
    } else {
      json[r'bearing'] = null;
    }
    if (this.bearingDifference != null) {
      json[r'bearingDifference'] = this.bearingDifference;
    } else {
      json[r'bearingDifference'] = null;
    }
    if (this.heading != null) {
      json[r'heading'] = this.heading;
    } else {
      json[r'heading'] = null;
    }
    if (this.distance != null) {
      json[r'distance'] = this.distance;
    } else {
      json[r'distance'] = null;
    }
    if (this.distanceUnits != null) {
      json[r'distanceUnits'] = this.distanceUnits;
    } else {
      json[r'distanceUnits'] = null;
    }
    if (this.distanceString != null) {
      json[r'distanceString'] = this.distanceString;
    } else {
      json[r'distanceString'] = null;
    }
    if (this.startLatitude != null) {
      json[r'startLatitude'] = this.startLatitude;
    } else {
      json[r'startLatitude'] = null;
    }
    if (this.startLongitude != null) {
      json[r'startLongitude'] = this.startLongitude;
    } else {
      json[r'startLongitude'] = null;
    }
    if (this.endLatitude != null) {
      json[r'endLatitude'] = this.endLatitude;
    } else {
      json[r'endLatitude'] = null;
    }
    if (this.endLongitude != null) {
      json[r'endLongitude'] = this.endLongitude;
    } else {
      json[r'endLongitude'] = null;
    }
    if (this.instruction != null) {
      json[r'instruction'] = this.instruction;
    } else {
      json[r'instruction'] = null;
    }
    if (this.progressStatus != null) {
      json[r'progressStatus'] = this.progressStatus;
    } else {
      json[r'progressStatus'] = null;
    }
    return json;
  }

  /// Returns a new [DirectionResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DirectionResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "DirectionResponse[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "DirectionResponse[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return DirectionResponse(
        action: mapValueOfType<String>(json, r'action'),
        bearing: mapValueOfType<double>(json, r'bearing'),
        bearingDifference: mapValueOfType<double>(json, r'bearingDifference'),
        heading: mapValueOfType<String>(json, r'heading'),
        distance: mapValueOfType<double>(json, r'distance'),
        distanceUnits: mapValueOfType<String>(json, r'distanceUnits'),
        distanceString: mapValueOfType<String>(json, r'distanceString'),
        startLatitude: mapValueOfType<double>(json, r'startLatitude'),
        startLongitude: mapValueOfType<double>(json, r'startLongitude'),
        endLatitude: mapValueOfType<double>(json, r'endLatitude'),
        endLongitude: mapValueOfType<double>(json, r'endLongitude'),
        instruction: mapValueOfType<String>(json, r'instruction'),
        progressStatus: mapValueOfType<String>(json, r'progressStatus'),
      );
    }
    return null;
  }

  static List<DirectionResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DirectionResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DirectionResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DirectionResponse> mapFromJson(dynamic json) {
    final map = <String, DirectionResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DirectionResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DirectionResponse-objects as value to a dart map
  static Map<String, List<DirectionResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<DirectionResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = DirectionResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

