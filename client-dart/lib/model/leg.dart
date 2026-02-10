//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Leg {
  /// Returns a new [Leg] instance.
  Leg({
    this.id,
    this.active,
    this.valid,
    this.owner,
    this.parentOwner,
    this.application,
    this.deviceId,
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
    this.type,
    this.retailerLocationId,
    this.floorId,
    this.steps = const [],
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
  Account? parentOwner;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Application? application;

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

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? type;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? retailerLocationId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? floorId;

  List<Step> steps;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Leg &&
    other.id == id &&
    other.active == active &&
    other.valid == valid &&
    other.owner == owner &&
    other.parentOwner == parentOwner &&
    other.application == application &&
    other.deviceId == deviceId &&
    other.distance == distance &&
    other.duration == duration &&
    other.startLatitude == startLatitude &&
    other.startLongitude == startLongitude &&
    other.startAltitude == startAltitude &&
    other.startDate == startDate &&
    other.endLatitude == endLatitude &&
    other.endLongitude == endLongitude &&
    other.endAltitude == endAltitude &&
    other.endDate == endDate &&
    other.type == type &&
    other.retailerLocationId == retailerLocationId &&
    other.floorId == floorId &&
    _deepEquality.equals(other.steps, steps);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (active == null ? 0 : active!.hashCode) +
    (valid == null ? 0 : valid!.hashCode) +
    (owner == null ? 0 : owner!.hashCode) +
    (parentOwner == null ? 0 : parentOwner!.hashCode) +
    (application == null ? 0 : application!.hashCode) +
    (deviceId == null ? 0 : deviceId!.hashCode) +
    (distance == null ? 0 : distance!.hashCode) +
    (duration == null ? 0 : duration!.hashCode) +
    (startLatitude == null ? 0 : startLatitude!.hashCode) +
    (startLongitude == null ? 0 : startLongitude!.hashCode) +
    (startAltitude == null ? 0 : startAltitude!.hashCode) +
    (startDate == null ? 0 : startDate!.hashCode) +
    (endLatitude == null ? 0 : endLatitude!.hashCode) +
    (endLongitude == null ? 0 : endLongitude!.hashCode) +
    (endAltitude == null ? 0 : endAltitude!.hashCode) +
    (endDate == null ? 0 : endDate!.hashCode) +
    (type == null ? 0 : type!.hashCode) +
    (retailerLocationId == null ? 0 : retailerLocationId!.hashCode) +
    (floorId == null ? 0 : floorId!.hashCode) +
    (steps.hashCode);

  @override
  String toString() => 'Leg[id=$id, active=$active, valid=$valid, owner=$owner, parentOwner=$parentOwner, application=$application, deviceId=$deviceId, distance=$distance, duration=$duration, startLatitude=$startLatitude, startLongitude=$startLongitude, startAltitude=$startAltitude, startDate=$startDate, endLatitude=$endLatitude, endLongitude=$endLongitude, endAltitude=$endAltitude, endDate=$endDate, type=$type, retailerLocationId=$retailerLocationId, floorId=$floorId, steps=$steps]';

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
    if (this.parentOwner != null) {
      json[r'parentOwner'] = this.parentOwner;
    } else {
      json[r'parentOwner'] = null;
    }
    if (this.application != null) {
      json[r'application'] = this.application;
    } else {
      json[r'application'] = null;
    }
    if (this.deviceId != null) {
      json[r'deviceId'] = this.deviceId;
    } else {
      json[r'deviceId'] = null;
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
    if (this.type != null) {
      json[r'type'] = this.type;
    } else {
      json[r'type'] = null;
    }
    if (this.retailerLocationId != null) {
      json[r'retailerLocationId'] = this.retailerLocationId;
    } else {
      json[r'retailerLocationId'] = null;
    }
    if (this.floorId != null) {
      json[r'floorId'] = this.floorId;
    } else {
      json[r'floorId'] = null;
    }
      json[r'steps'] = this.steps;
    return json;
  }

  /// Returns a new [Leg] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Leg? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Leg[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Leg[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Leg(
        id: mapValueOfType<int>(json, r'id'),
        active: mapValueOfType<bool>(json, r'active'),
        valid: mapValueOfType<bool>(json, r'valid'),
        owner: Account.fromJson(json[r'owner']),
        parentOwner: Account.fromJson(json[r'parentOwner']),
        application: Application.fromJson(json[r'application']),
        deviceId: mapValueOfType<String>(json, r'deviceId'),
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
        type: mapValueOfType<String>(json, r'type'),
        retailerLocationId: mapValueOfType<int>(json, r'retailerLocationId'),
        floorId: mapValueOfType<String>(json, r'floorId'),
        steps: Step.listFromJson(json[r'steps']),
      );
    }
    return null;
  }

  static List<Leg> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Leg>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Leg.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Leg> mapFromJson(dynamic json) {
    final map = <String, Leg>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Leg.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Leg-objects as value to a dart map
  static Map<String, List<Leg>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Leg>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Leg.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

