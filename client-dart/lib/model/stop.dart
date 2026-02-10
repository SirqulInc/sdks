//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Stop {
  /// Returns a new [Stop] instance.
  Stop({
    this.id,
    this.active,
    this.valid,
    this.latitude,
    this.longitude,
    this.locationDescription,
    this.name,
    this.owner,
    this.location,
    this.notes = const [],
    this.noteCount,
    this.stopType,
    this.orderIndex,
    this.startTime,
    this.endTime,
    this.estimatedTime,
    this.estimatedArrivalTime,
    this.estimatedDepartureTime,
    this.actualTime,
    this.desiredTime,
    this.timePadding,
    this.route,
    this.shipment,
    this.progressStatus,
    this.compareEstimatedTime,
    this.compareEstimatedArrivalTime,
    this.compareEstimiatedDepartureTime,
    this.polyline,
    this.parent,
    this.locationDisplay,
    this.complete,
    this.contentName,
    this.locationAddress,
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
  String? locationDescription;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

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
  Location? location;

  List<Note> notes;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? noteCount;

  StopStopTypeEnum? stopType;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? orderIndex;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? startTime;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? endTime;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? estimatedTime;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? estimatedArrivalTime;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? estimatedDepartureTime;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? actualTime;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? desiredTime;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? timePadding;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Route? route;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Shipment? shipment;

  StopProgressStatusEnum? progressStatus;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? compareEstimatedTime;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? compareEstimatedArrivalTime;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? compareEstimiatedDepartureTime;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? polyline;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Stop? parent;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? locationDisplay;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? complete;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? contentName;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? locationAddress;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Stop &&
    other.id == id &&
    other.active == active &&
    other.valid == valid &&
    other.latitude == latitude &&
    other.longitude == longitude &&
    other.locationDescription == locationDescription &&
    other.name == name &&
    other.owner == owner &&
    other.location == location &&
    _deepEquality.equals(other.notes, notes) &&
    other.noteCount == noteCount &&
    other.stopType == stopType &&
    other.orderIndex == orderIndex &&
    other.startTime == startTime &&
    other.endTime == endTime &&
    other.estimatedTime == estimatedTime &&
    other.estimatedArrivalTime == estimatedArrivalTime &&
    other.estimatedDepartureTime == estimatedDepartureTime &&
    other.actualTime == actualTime &&
    other.desiredTime == desiredTime &&
    other.timePadding == timePadding &&
    other.route == route &&
    other.shipment == shipment &&
    other.progressStatus == progressStatus &&
    other.compareEstimatedTime == compareEstimatedTime &&
    other.compareEstimatedArrivalTime == compareEstimatedArrivalTime &&
    other.compareEstimiatedDepartureTime == compareEstimiatedDepartureTime &&
    other.polyline == polyline &&
    other.parent == parent &&
    other.locationDisplay == locationDisplay &&
    other.complete == complete &&
    other.contentName == contentName &&
    other.locationAddress == locationAddress;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (active == null ? 0 : active!.hashCode) +
    (valid == null ? 0 : valid!.hashCode) +
    (latitude == null ? 0 : latitude!.hashCode) +
    (longitude == null ? 0 : longitude!.hashCode) +
    (locationDescription == null ? 0 : locationDescription!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (owner == null ? 0 : owner!.hashCode) +
    (location == null ? 0 : location!.hashCode) +
    (notes.hashCode) +
    (noteCount == null ? 0 : noteCount!.hashCode) +
    (stopType == null ? 0 : stopType!.hashCode) +
    (orderIndex == null ? 0 : orderIndex!.hashCode) +
    (startTime == null ? 0 : startTime!.hashCode) +
    (endTime == null ? 0 : endTime!.hashCode) +
    (estimatedTime == null ? 0 : estimatedTime!.hashCode) +
    (estimatedArrivalTime == null ? 0 : estimatedArrivalTime!.hashCode) +
    (estimatedDepartureTime == null ? 0 : estimatedDepartureTime!.hashCode) +
    (actualTime == null ? 0 : actualTime!.hashCode) +
    (desiredTime == null ? 0 : desiredTime!.hashCode) +
    (timePadding == null ? 0 : timePadding!.hashCode) +
    (route == null ? 0 : route!.hashCode) +
    (shipment == null ? 0 : shipment!.hashCode) +
    (progressStatus == null ? 0 : progressStatus!.hashCode) +
    (compareEstimatedTime == null ? 0 : compareEstimatedTime!.hashCode) +
    (compareEstimatedArrivalTime == null ? 0 : compareEstimatedArrivalTime!.hashCode) +
    (compareEstimiatedDepartureTime == null ? 0 : compareEstimiatedDepartureTime!.hashCode) +
    (polyline == null ? 0 : polyline!.hashCode) +
    (parent == null ? 0 : parent!.hashCode) +
    (locationDisplay == null ? 0 : locationDisplay!.hashCode) +
    (complete == null ? 0 : complete!.hashCode) +
    (contentName == null ? 0 : contentName!.hashCode) +
    (locationAddress == null ? 0 : locationAddress!.hashCode);

  @override
  String toString() => 'Stop[id=$id, active=$active, valid=$valid, latitude=$latitude, longitude=$longitude, locationDescription=$locationDescription, name=$name, owner=$owner, location=$location, notes=$notes, noteCount=$noteCount, stopType=$stopType, orderIndex=$orderIndex, startTime=$startTime, endTime=$endTime, estimatedTime=$estimatedTime, estimatedArrivalTime=$estimatedArrivalTime, estimatedDepartureTime=$estimatedDepartureTime, actualTime=$actualTime, desiredTime=$desiredTime, timePadding=$timePadding, route=$route, shipment=$shipment, progressStatus=$progressStatus, compareEstimatedTime=$compareEstimatedTime, compareEstimatedArrivalTime=$compareEstimatedArrivalTime, compareEstimiatedDepartureTime=$compareEstimiatedDepartureTime, polyline=$polyline, parent=$parent, locationDisplay=$locationDisplay, complete=$complete, contentName=$contentName, locationAddress=$locationAddress]';

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
    if (this.locationDescription != null) {
      json[r'locationDescription'] = this.locationDescription;
    } else {
      json[r'locationDescription'] = null;
    }
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.owner != null) {
      json[r'owner'] = this.owner;
    } else {
      json[r'owner'] = null;
    }
    if (this.location != null) {
      json[r'location'] = this.location;
    } else {
      json[r'location'] = null;
    }
      json[r'notes'] = this.notes;
    if (this.noteCount != null) {
      json[r'noteCount'] = this.noteCount;
    } else {
      json[r'noteCount'] = null;
    }
    if (this.stopType != null) {
      json[r'stopType'] = this.stopType;
    } else {
      json[r'stopType'] = null;
    }
    if (this.orderIndex != null) {
      json[r'orderIndex'] = this.orderIndex;
    } else {
      json[r'orderIndex'] = null;
    }
    if (this.startTime != null) {
      json[r'startTime'] = this.startTime!.toUtc().toIso8601String();
    } else {
      json[r'startTime'] = null;
    }
    if (this.endTime != null) {
      json[r'endTime'] = this.endTime!.toUtc().toIso8601String();
    } else {
      json[r'endTime'] = null;
    }
    if (this.estimatedTime != null) {
      json[r'estimatedTime'] = this.estimatedTime!.toUtc().toIso8601String();
    } else {
      json[r'estimatedTime'] = null;
    }
    if (this.estimatedArrivalTime != null) {
      json[r'estimatedArrivalTime'] = this.estimatedArrivalTime!.toUtc().toIso8601String();
    } else {
      json[r'estimatedArrivalTime'] = null;
    }
    if (this.estimatedDepartureTime != null) {
      json[r'estimatedDepartureTime'] = this.estimatedDepartureTime!.toUtc().toIso8601String();
    } else {
      json[r'estimatedDepartureTime'] = null;
    }
    if (this.actualTime != null) {
      json[r'actualTime'] = this.actualTime!.toUtc().toIso8601String();
    } else {
      json[r'actualTime'] = null;
    }
    if (this.desiredTime != null) {
      json[r'desiredTime'] = this.desiredTime!.toUtc().toIso8601String();
    } else {
      json[r'desiredTime'] = null;
    }
    if (this.timePadding != null) {
      json[r'timePadding'] = this.timePadding;
    } else {
      json[r'timePadding'] = null;
    }
    if (this.route != null) {
      json[r'route'] = this.route;
    } else {
      json[r'route'] = null;
    }
    if (this.shipment != null) {
      json[r'shipment'] = this.shipment;
    } else {
      json[r'shipment'] = null;
    }
    if (this.progressStatus != null) {
      json[r'progressStatus'] = this.progressStatus;
    } else {
      json[r'progressStatus'] = null;
    }
    if (this.compareEstimatedTime != null) {
      json[r'compareEstimatedTime'] = this.compareEstimatedTime!.toUtc().toIso8601String();
    } else {
      json[r'compareEstimatedTime'] = null;
    }
    if (this.compareEstimatedArrivalTime != null) {
      json[r'compareEstimatedArrivalTime'] = this.compareEstimatedArrivalTime!.toUtc().toIso8601String();
    } else {
      json[r'compareEstimatedArrivalTime'] = null;
    }
    if (this.compareEstimiatedDepartureTime != null) {
      json[r'compareEstimiatedDepartureTime'] = this.compareEstimiatedDepartureTime!.toUtc().toIso8601String();
    } else {
      json[r'compareEstimiatedDepartureTime'] = null;
    }
    if (this.polyline != null) {
      json[r'polyline'] = this.polyline;
    } else {
      json[r'polyline'] = null;
    }
    if (this.parent != null) {
      json[r'parent'] = this.parent;
    } else {
      json[r'parent'] = null;
    }
    if (this.locationDisplay != null) {
      json[r'locationDisplay'] = this.locationDisplay;
    } else {
      json[r'locationDisplay'] = null;
    }
    if (this.complete != null) {
      json[r'complete'] = this.complete;
    } else {
      json[r'complete'] = null;
    }
    if (this.contentName != null) {
      json[r'contentName'] = this.contentName;
    } else {
      json[r'contentName'] = null;
    }
    if (this.locationAddress != null) {
      json[r'locationAddress'] = this.locationAddress;
    } else {
      json[r'locationAddress'] = null;
    }
    return json;
  }

  /// Returns a new [Stop] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Stop? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Stop[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Stop[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Stop(
        id: mapValueOfType<int>(json, r'id'),
        active: mapValueOfType<bool>(json, r'active'),
        valid: mapValueOfType<bool>(json, r'valid'),
        latitude: mapValueOfType<double>(json, r'latitude'),
        longitude: mapValueOfType<double>(json, r'longitude'),
        locationDescription: mapValueOfType<String>(json, r'locationDescription'),
        name: mapValueOfType<String>(json, r'name'),
        owner: Account.fromJson(json[r'owner']),
        location: Location.fromJson(json[r'location']),
        notes: Note.listFromJson(json[r'notes']),
        noteCount: mapValueOfType<int>(json, r'noteCount'),
        stopType: StopStopTypeEnum.fromJson(json[r'stopType']),
        orderIndex: mapValueOfType<int>(json, r'orderIndex'),
        startTime: mapDateTime(json, r'startTime', r''),
        endTime: mapDateTime(json, r'endTime', r''),
        estimatedTime: mapDateTime(json, r'estimatedTime', r''),
        estimatedArrivalTime: mapDateTime(json, r'estimatedArrivalTime', r''),
        estimatedDepartureTime: mapDateTime(json, r'estimatedDepartureTime', r''),
        actualTime: mapDateTime(json, r'actualTime', r''),
        desiredTime: mapDateTime(json, r'desiredTime', r''),
        timePadding: mapValueOfType<int>(json, r'timePadding'),
        route: Route.fromJson(json[r'route']),
        shipment: Shipment.fromJson(json[r'shipment']),
        progressStatus: StopProgressStatusEnum.fromJson(json[r'progressStatus']),
        compareEstimatedTime: mapDateTime(json, r'compareEstimatedTime', r''),
        compareEstimatedArrivalTime: mapDateTime(json, r'compareEstimatedArrivalTime', r''),
        compareEstimiatedDepartureTime: mapDateTime(json, r'compareEstimiatedDepartureTime', r''),
        polyline: mapValueOfType<String>(json, r'polyline'),
        parent: Stop.fromJson(json[r'parent']),
        locationDisplay: mapValueOfType<String>(json, r'locationDisplay'),
        complete: mapValueOfType<bool>(json, r'complete'),
        contentName: mapValueOfType<String>(json, r'contentName'),
        locationAddress: mapValueOfType<String>(json, r'locationAddress'),
      );
    }
    return null;
  }

  static List<Stop> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Stop>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Stop.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Stop> mapFromJson(dynamic json) {
    final map = <String, Stop>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Stop.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Stop-objects as value to a dart map
  static Map<String, List<Stop>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Stop>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Stop.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}


class StopStopTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const StopStopTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const PICKUP = StopStopTypeEnum._(r'PICKUP');
  static const DROPOFF = StopStopTypeEnum._(r'DROPOFF');
  static const START = StopStopTypeEnum._(r'START');
  static const END = StopStopTypeEnum._(r'END');
  static const ROUTING = StopStopTypeEnum._(r'ROUTING');

  /// List of all possible values in this [enum][StopStopTypeEnum].
  static const values = <StopStopTypeEnum>[
    PICKUP,
    DROPOFF,
    START,
    END,
    ROUTING,
  ];

  static StopStopTypeEnum? fromJson(dynamic value) => StopStopTypeEnumTypeTransformer().decode(value);

  static List<StopStopTypeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <StopStopTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = StopStopTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [StopStopTypeEnum] to String,
/// and [decode] dynamic data back to [StopStopTypeEnum].
class StopStopTypeEnumTypeTransformer {
  factory StopStopTypeEnumTypeTransformer() => _instance ??= const StopStopTypeEnumTypeTransformer._();

  const StopStopTypeEnumTypeTransformer._();

  String encode(StopStopTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a StopStopTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  StopStopTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'PICKUP': return StopStopTypeEnum.PICKUP;
        case r'DROPOFF': return StopStopTypeEnum.DROPOFF;
        case r'START': return StopStopTypeEnum.START;
        case r'END': return StopStopTypeEnum.END;
        case r'ROUTING': return StopStopTypeEnum.ROUTING;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [StopStopTypeEnumTypeTransformer] instance.
  static StopStopTypeEnumTypeTransformer? _instance;
}



class StopProgressStatusEnum {
  /// Instantiate a new enum with the provided [value].
  const StopProgressStatusEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const PENDING = StopProgressStatusEnum._(r'PENDING');
  static const COMPLETE = StopProgressStatusEnum._(r'COMPLETE');
  static const INVALID = StopProgressStatusEnum._(r'INVALID');

  /// List of all possible values in this [enum][StopProgressStatusEnum].
  static const values = <StopProgressStatusEnum>[
    PENDING,
    COMPLETE,
    INVALID,
  ];

  static StopProgressStatusEnum? fromJson(dynamic value) => StopProgressStatusEnumTypeTransformer().decode(value);

  static List<StopProgressStatusEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <StopProgressStatusEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = StopProgressStatusEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [StopProgressStatusEnum] to String,
/// and [decode] dynamic data back to [StopProgressStatusEnum].
class StopProgressStatusEnumTypeTransformer {
  factory StopProgressStatusEnumTypeTransformer() => _instance ??= const StopProgressStatusEnumTypeTransformer._();

  const StopProgressStatusEnumTypeTransformer._();

  String encode(StopProgressStatusEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a StopProgressStatusEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  StopProgressStatusEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'PENDING': return StopProgressStatusEnum.PENDING;
        case r'COMPLETE': return StopProgressStatusEnum.COMPLETE;
        case r'INVALID': return StopProgressStatusEnum.INVALID;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [StopProgressStatusEnumTypeTransformer] instance.
  static StopProgressStatusEnumTypeTransformer? _instance;
}


