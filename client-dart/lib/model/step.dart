//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Step {
  /// Returns a new [Step] instance.
  Step({
    this.id,
    this.active,
    this.valid,
    this.owner,
    this.deviceId,
    this.leg,
    this.distance,
    this.duration,
    this.startLatitude,
    this.startLongitude,
    this.startAltitude,
    this.startDate,
    this.endLatitude,
    this.endLongitude,
    this.endAltitude,
    this.endDate,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? id;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? active;

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
  Account? owner;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? deviceId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Leg? leg;

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
  double? startAltitude;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? startDate;

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
  double? endAltitude;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? endDate;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Step &&
    other.id == id &&
    other.active == active &&
    other.valid == valid &&
    other.owner == owner &&
    other.deviceId == deviceId &&
    other.leg == leg &&
    other.distance == distance &&
    other.duration == duration &&
    other.startLatitude == startLatitude &&
    other.startLongitude == startLongitude &&
    other.startAltitude == startAltitude &&
    other.startDate == startDate &&
    other.endLatitude == endLatitude &&
    other.endLongitude == endLongitude &&
    other.endAltitude == endAltitude &&
    other.endDate == endDate;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (active == null ? 0 : active!.hashCode) +
    (valid == null ? 0 : valid!.hashCode) +
    (owner == null ? 0 : owner!.hashCode) +
    (deviceId == null ? 0 : deviceId!.hashCode) +
    (leg == null ? 0 : leg!.hashCode) +
    (distance == null ? 0 : distance!.hashCode) +
    (duration == null ? 0 : duration!.hashCode) +
    (startLatitude == null ? 0 : startLatitude!.hashCode) +
    (startLongitude == null ? 0 : startLongitude!.hashCode) +
    (startAltitude == null ? 0 : startAltitude!.hashCode) +
    (startDate == null ? 0 : startDate!.hashCode) +
    (endLatitude == null ? 0 : endLatitude!.hashCode) +
    (endLongitude == null ? 0 : endLongitude!.hashCode) +
    (endAltitude == null ? 0 : endAltitude!.hashCode) +
    (endDate == null ? 0 : endDate!.hashCode);

  @override
  String toString() => 'Step[id=$id, active=$active, valid=$valid, owner=$owner, deviceId=$deviceId, leg=$leg, distance=$distance, duration=$duration, startLatitude=$startLatitude, startLongitude=$startLongitude, startAltitude=$startAltitude, startDate=$startDate, endLatitude=$endLatitude, endLongitude=$endLongitude, endAltitude=$endAltitude, endDate=$endDate]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.active != null) {
      json[r'active'] = this.active;
    } else {
      json[r'active'] = null;
    }
    if (this.valid != null) {
      json[r'valid'] = this.valid;
    } else {
      json[r'valid'] = null;
    }
    if (this.owner != null) {
      json[r'owner'] = this.owner;
    } else {
      json[r'owner'] = null;
    }
    if (this.deviceId != null) {
      json[r'deviceId'] = this.deviceId;
    } else {
      json[r'deviceId'] = null;
    }
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
    if (this.startAltitude != null) {
      json[r'startAltitude'] = this.startAltitude;
    } else {
      json[r'startAltitude'] = null;
    }
    if (this.startDate != null) {
      json[r'startDate'] = this.startDate!.toUtc().toIso8601String();
    } else {
      json[r'startDate'] = null;
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
    if (this.endAltitude != null) {
      json[r'endAltitude'] = this.endAltitude;
    } else {
      json[r'endAltitude'] = null;
    }
    if (this.endDate != null) {
      json[r'endDate'] = this.endDate!.toUtc().toIso8601String();
    } else {
      json[r'endDate'] = null;
    }
    return json;
  }

  /// Returns a new [Step] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Step? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Step[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Step[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Step(
        id: mapValueOfType<int>(json, r'id'),
        active: mapValueOfType<bool>(json, r'active'),
        valid: mapValueOfType<bool>(json, r'valid'),
        owner: Account.fromJson(json[r'owner']),
        deviceId: mapValueOfType<String>(json, r'deviceId'),
        leg: Leg.fromJson(json[r'leg']),
        distance: mapValueOfType<double>(json, r'distance'),
        duration: mapValueOfType<int>(json, r'duration'),
        startLatitude: mapValueOfType<double>(json, r'startLatitude'),
        startLongitude: mapValueOfType<double>(json, r'startLongitude'),
        startAltitude: mapValueOfType<double>(json, r'startAltitude'),
        startDate: mapDateTime(json, r'startDate', r''),
        endLatitude: mapValueOfType<double>(json, r'endLatitude'),
        endLongitude: mapValueOfType<double>(json, r'endLongitude'),
        endAltitude: mapValueOfType<double>(json, r'endAltitude'),
        endDate: mapDateTime(json, r'endDate', r''),
      );
    }
    return null;
  }

  static List<Step> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Step>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Step.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Step> mapFromJson(dynamic json) {
    final map = <String, Step>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Step.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Step-objects as value to a dart map
  static Map<String, List<Step>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Step>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Step.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

