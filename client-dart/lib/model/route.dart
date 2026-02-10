//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Route {
  /// Returns a new [Route] instance.
  Route({
    this.id,
    this.active,
    this.valid,
    this.name,
    this.externalId,
    this.hub,
    this.program,
    this.zone,
    this.vehicle,
    this.driver,
    this.concierge,
    this.scheduled,
    this.approved,
    this.started,
    this.completed,
    this.totalDistance,
    this.totalTime,
    this.estimatedDistance,
    this.estimatedTime,
    this.startStop,
    this.endStop,
    this.stops = const [],
    this.shipments = const [],
    this.allShipmentsConfirmed,
    this.shipmentOrderCount,
    this.polyline,
    this.notes = const [],
    this.noteCount,
    this.glympseToken,
    this.enableOptimization,
    this.optimizedDate,
    this.optimizationStarted,
    this.optimizationCompleted,
    this.featured,
    this.image,
    this.parent,
    this.contentName,
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
  String? name;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? externalId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  ServiceHub? hub;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Program? program;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Region? zone;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Vehicle? vehicle;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Account? driver;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Account? concierge;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? scheduled;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? approved;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? started;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? completed;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? totalDistance;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? totalTime;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? estimatedDistance;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? estimatedTime;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Stop? startStop;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Stop? endStop;

  List<Stop> stops;

  List<Shipment> shipments;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? allShipmentsConfirmed;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? shipmentOrderCount;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? polyline;

  List<Note> notes;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? noteCount;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? glympseToken;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? enableOptimization;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? optimizedDate;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? optimizationStarted;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? optimizationCompleted;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? featured;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Asset? image;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Route? parent;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? contentName;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Route &&
    other.id == id &&
    other.active == active &&
    other.valid == valid &&
    other.name == name &&
    other.externalId == externalId &&
    other.hub == hub &&
    other.program == program &&
    other.zone == zone &&
    other.vehicle == vehicle &&
    other.driver == driver &&
    other.concierge == concierge &&
    other.scheduled == scheduled &&
    other.approved == approved &&
    other.started == started &&
    other.completed == completed &&
    other.totalDistance == totalDistance &&
    other.totalTime == totalTime &&
    other.estimatedDistance == estimatedDistance &&
    other.estimatedTime == estimatedTime &&
    other.startStop == startStop &&
    other.endStop == endStop &&
    _deepEquality.equals(other.stops, stops) &&
    _deepEquality.equals(other.shipments, shipments) &&
    other.allShipmentsConfirmed == allShipmentsConfirmed &&
    other.shipmentOrderCount == shipmentOrderCount &&
    other.polyline == polyline &&
    _deepEquality.equals(other.notes, notes) &&
    other.noteCount == noteCount &&
    other.glympseToken == glympseToken &&
    other.enableOptimization == enableOptimization &&
    other.optimizedDate == optimizedDate &&
    other.optimizationStarted == optimizationStarted &&
    other.optimizationCompleted == optimizationCompleted &&
    other.featured == featured &&
    other.image == image &&
    other.parent == parent &&
    other.contentName == contentName;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (active == null ? 0 : active!.hashCode) +
    (valid == null ? 0 : valid!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (externalId == null ? 0 : externalId!.hashCode) +
    (hub == null ? 0 : hub!.hashCode) +
    (program == null ? 0 : program!.hashCode) +
    (zone == null ? 0 : zone!.hashCode) +
    (vehicle == null ? 0 : vehicle!.hashCode) +
    (driver == null ? 0 : driver!.hashCode) +
    (concierge == null ? 0 : concierge!.hashCode) +
    (scheduled == null ? 0 : scheduled!.hashCode) +
    (approved == null ? 0 : approved!.hashCode) +
    (started == null ? 0 : started!.hashCode) +
    (completed == null ? 0 : completed!.hashCode) +
    (totalDistance == null ? 0 : totalDistance!.hashCode) +
    (totalTime == null ? 0 : totalTime!.hashCode) +
    (estimatedDistance == null ? 0 : estimatedDistance!.hashCode) +
    (estimatedTime == null ? 0 : estimatedTime!.hashCode) +
    (startStop == null ? 0 : startStop!.hashCode) +
    (endStop == null ? 0 : endStop!.hashCode) +
    (stops.hashCode) +
    (shipments.hashCode) +
    (allShipmentsConfirmed == null ? 0 : allShipmentsConfirmed!.hashCode) +
    (shipmentOrderCount == null ? 0 : shipmentOrderCount!.hashCode) +
    (polyline == null ? 0 : polyline!.hashCode) +
    (notes.hashCode) +
    (noteCount == null ? 0 : noteCount!.hashCode) +
    (glympseToken == null ? 0 : glympseToken!.hashCode) +
    (enableOptimization == null ? 0 : enableOptimization!.hashCode) +
    (optimizedDate == null ? 0 : optimizedDate!.hashCode) +
    (optimizationStarted == null ? 0 : optimizationStarted!.hashCode) +
    (optimizationCompleted == null ? 0 : optimizationCompleted!.hashCode) +
    (featured == null ? 0 : featured!.hashCode) +
    (image == null ? 0 : image!.hashCode) +
    (parent == null ? 0 : parent!.hashCode) +
    (contentName == null ? 0 : contentName!.hashCode);

  @override
  String toString() => 'Route[id=$id, active=$active, valid=$valid, name=$name, externalId=$externalId, hub=$hub, program=$program, zone=$zone, vehicle=$vehicle, driver=$driver, concierge=$concierge, scheduled=$scheduled, approved=$approved, started=$started, completed=$completed, totalDistance=$totalDistance, totalTime=$totalTime, estimatedDistance=$estimatedDistance, estimatedTime=$estimatedTime, startStop=$startStop, endStop=$endStop, stops=$stops, shipments=$shipments, allShipmentsConfirmed=$allShipmentsConfirmed, shipmentOrderCount=$shipmentOrderCount, polyline=$polyline, notes=$notes, noteCount=$noteCount, glympseToken=$glympseToken, enableOptimization=$enableOptimization, optimizedDate=$optimizedDate, optimizationStarted=$optimizationStarted, optimizationCompleted=$optimizationCompleted, featured=$featured, image=$image, parent=$parent, contentName=$contentName]';

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
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.externalId != null) {
      json[r'externalId'] = this.externalId;
    } else {
      json[r'externalId'] = null;
    }
    if (this.hub != null) {
      json[r'hub'] = this.hub;
    } else {
      json[r'hub'] = null;
    }
    if (this.program != null) {
      json[r'program'] = this.program;
    } else {
      json[r'program'] = null;
    }
    if (this.zone != null) {
      json[r'zone'] = this.zone;
    } else {
      json[r'zone'] = null;
    }
    if (this.vehicle != null) {
      json[r'vehicle'] = this.vehicle;
    } else {
      json[r'vehicle'] = null;
    }
    if (this.driver != null) {
      json[r'driver'] = this.driver;
    } else {
      json[r'driver'] = null;
    }
    if (this.concierge != null) {
      json[r'concierge'] = this.concierge;
    } else {
      json[r'concierge'] = null;
    }
    if (this.scheduled != null) {
      json[r'scheduled'] = this.scheduled!.toUtc().toIso8601String();
    } else {
      json[r'scheduled'] = null;
    }
    if (this.approved != null) {
      json[r'approved'] = this.approved!.toUtc().toIso8601String();
    } else {
      json[r'approved'] = null;
    }
    if (this.started != null) {
      json[r'started'] = this.started!.toUtc().toIso8601String();
    } else {
      json[r'started'] = null;
    }
    if (this.completed != null) {
      json[r'completed'] = this.completed!.toUtc().toIso8601String();
    } else {
      json[r'completed'] = null;
    }
    if (this.totalDistance != null) {
      json[r'totalDistance'] = this.totalDistance;
    } else {
      json[r'totalDistance'] = null;
    }
    if (this.totalTime != null) {
      json[r'totalTime'] = this.totalTime;
    } else {
      json[r'totalTime'] = null;
    }
    if (this.estimatedDistance != null) {
      json[r'estimatedDistance'] = this.estimatedDistance;
    } else {
      json[r'estimatedDistance'] = null;
    }
    if (this.estimatedTime != null) {
      json[r'estimatedTime'] = this.estimatedTime;
    } else {
      json[r'estimatedTime'] = null;
    }
    if (this.startStop != null) {
      json[r'startStop'] = this.startStop;
    } else {
      json[r'startStop'] = null;
    }
    if (this.endStop != null) {
      json[r'endStop'] = this.endStop;
    } else {
      json[r'endStop'] = null;
    }
      json[r'stops'] = this.stops;
      json[r'shipments'] = this.shipments;
    if (this.allShipmentsConfirmed != null) {
      json[r'allShipmentsConfirmed'] = this.allShipmentsConfirmed;
    } else {
      json[r'allShipmentsConfirmed'] = null;
    }
    if (this.shipmentOrderCount != null) {
      json[r'shipmentOrderCount'] = this.shipmentOrderCount;
    } else {
      json[r'shipmentOrderCount'] = null;
    }
    if (this.polyline != null) {
      json[r'polyline'] = this.polyline;
    } else {
      json[r'polyline'] = null;
    }
      json[r'notes'] = this.notes;
    if (this.noteCount != null) {
      json[r'noteCount'] = this.noteCount;
    } else {
      json[r'noteCount'] = null;
    }
    if (this.glympseToken != null) {
      json[r'glympseToken'] = this.glympseToken;
    } else {
      json[r'glympseToken'] = null;
    }
    if (this.enableOptimization != null) {
      json[r'enableOptimization'] = this.enableOptimization;
    } else {
      json[r'enableOptimization'] = null;
    }
    if (this.optimizedDate != null) {
      json[r'optimizedDate'] = this.optimizedDate!.toUtc().toIso8601String();
    } else {
      json[r'optimizedDate'] = null;
    }
    if (this.optimizationStarted != null) {
      json[r'optimizationStarted'] = this.optimizationStarted!.toUtc().toIso8601String();
    } else {
      json[r'optimizationStarted'] = null;
    }
    if (this.optimizationCompleted != null) {
      json[r'optimizationCompleted'] = this.optimizationCompleted!.toUtc().toIso8601String();
    } else {
      json[r'optimizationCompleted'] = null;
    }
    if (this.featured != null) {
      json[r'featured'] = this.featured;
    } else {
      json[r'featured'] = null;
    }
    if (this.image != null) {
      json[r'image'] = this.image;
    } else {
      json[r'image'] = null;
    }
    if (this.parent != null) {
      json[r'parent'] = this.parent;
    } else {
      json[r'parent'] = null;
    }
    if (this.contentName != null) {
      json[r'contentName'] = this.contentName;
    } else {
      json[r'contentName'] = null;
    }
    return json;
  }

  /// Returns a new [Route] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Route? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Route[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Route[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Route(
        id: mapValueOfType<int>(json, r'id'),
        active: mapValueOfType<bool>(json, r'active'),
        valid: mapValueOfType<bool>(json, r'valid'),
        name: mapValueOfType<String>(json, r'name'),
        externalId: mapValueOfType<String>(json, r'externalId'),
        hub: ServiceHub.fromJson(json[r'hub']),
        program: Program.fromJson(json[r'program']),
        zone: Region.fromJson(json[r'zone']),
        vehicle: Vehicle.fromJson(json[r'vehicle']),
        driver: Account.fromJson(json[r'driver']),
        concierge: Account.fromJson(json[r'concierge']),
        scheduled: mapDateTime(json, r'scheduled', r''),
        approved: mapDateTime(json, r'approved', r''),
        started: mapDateTime(json, r'started', r''),
        completed: mapDateTime(json, r'completed', r''),
        totalDistance: mapValueOfType<double>(json, r'totalDistance'),
        totalTime: mapValueOfType<int>(json, r'totalTime'),
        estimatedDistance: mapValueOfType<double>(json, r'estimatedDistance'),
        estimatedTime: mapValueOfType<int>(json, r'estimatedTime'),
        startStop: Stop.fromJson(json[r'startStop']),
        endStop: Stop.fromJson(json[r'endStop']),
        stops: Stop.listFromJson(json[r'stops']),
        shipments: Shipment.listFromJson(json[r'shipments']),
        allShipmentsConfirmed: mapValueOfType<bool>(json, r'allShipmentsConfirmed'),
        shipmentOrderCount: mapValueOfType<int>(json, r'shipmentOrderCount'),
        polyline: mapValueOfType<String>(json, r'polyline'),
        notes: Note.listFromJson(json[r'notes']),
        noteCount: mapValueOfType<int>(json, r'noteCount'),
        glympseToken: mapValueOfType<String>(json, r'glympseToken'),
        enableOptimization: mapValueOfType<bool>(json, r'enableOptimization'),
        optimizedDate: mapDateTime(json, r'optimizedDate', r''),
        optimizationStarted: mapDateTime(json, r'optimizationStarted', r''),
        optimizationCompleted: mapDateTime(json, r'optimizationCompleted', r''),
        featured: mapValueOfType<bool>(json, r'featured'),
        image: Asset.fromJson(json[r'image']),
        parent: Route.fromJson(json[r'parent']),
        contentName: mapValueOfType<String>(json, r'contentName'),
      );
    }
    return null;
  }

  static List<Route> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Route>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Route.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Route> mapFromJson(dynamic json) {
    final map = <String, Route>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Route.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Route-objects as value to a dart map
  static Map<String, List<Route>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Route>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Route.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

