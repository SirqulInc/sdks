//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class RoutingResponse {
  /// Returns a new [RoutingResponse] instance.
  RoutingResponse({
    this.valid,
    this.message,
    this.version,
    this.serializeNulls,
    this.startTimeLog,
    this.errorCode,
    this.request = const [],
    this.items = const [],
    this.vehicles = const [],
    this.drivers = const [],
    this.config,
    this.error,
    this.debug = const [],
    this.startTime,
    this.endTime,
    this.responses = const [],
    this.orignalRequest,
    this.generated,
    this.itineraries = const [],
    this.score,
    this.loadSize,
    this.runtime,
    this.earliestPickupWindow,
    this.latestPickupWindow,
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

  List<LoadResponse> items;

  List<VehicleResponse> vehicles;

  List<DriverResponse> drivers;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  ConfigRoutingRequest? config;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? error;

  List<String> debug;

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

  List<RoutingResponse> responses;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? orignalRequest;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? generated;

  List<ItineraryResponse> itineraries;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? score;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? loadSize;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? runtime;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? earliestPickupWindow;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? latestPickupWindow;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? returning;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RoutingResponse &&
    other.valid == valid &&
    other.message == message &&
    other.version == version &&
    other.serializeNulls == serializeNulls &&
    other.startTimeLog == startTimeLog &&
    other.errorCode == errorCode &&
    _deepEquality.equals(other.request, request) &&
    _deepEquality.equals(other.items, items) &&
    _deepEquality.equals(other.vehicles, vehicles) &&
    _deepEquality.equals(other.drivers, drivers) &&
    other.config == config &&
    other.error == error &&
    _deepEquality.equals(other.debug, debug) &&
    other.startTime == startTime &&
    other.endTime == endTime &&
    _deepEquality.equals(other.responses, responses) &&
    other.orignalRequest == orignalRequest &&
    other.generated == generated &&
    _deepEquality.equals(other.itineraries, itineraries) &&
    other.score == score &&
    other.loadSize == loadSize &&
    other.runtime == runtime &&
    other.earliestPickupWindow == earliestPickupWindow &&
    other.latestPickupWindow == latestPickupWindow &&
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
    (vehicles.hashCode) +
    (drivers.hashCode) +
    (config == null ? 0 : config!.hashCode) +
    (error == null ? 0 : error!.hashCode) +
    (debug.hashCode) +
    (startTime == null ? 0 : startTime!.hashCode) +
    (endTime == null ? 0 : endTime!.hashCode) +
    (responses.hashCode) +
    (orignalRequest == null ? 0 : orignalRequest!.hashCode) +
    (generated == null ? 0 : generated!.hashCode) +
    (itineraries.hashCode) +
    (score == null ? 0 : score!.hashCode) +
    (loadSize == null ? 0 : loadSize!.hashCode) +
    (runtime == null ? 0 : runtime!.hashCode) +
    (earliestPickupWindow == null ? 0 : earliestPickupWindow!.hashCode) +
    (latestPickupWindow == null ? 0 : latestPickupWindow!.hashCode) +
    (returning == null ? 0 : returning!.hashCode);

  @override
  String toString() => 'RoutingResponse[valid=$valid, message=$message, version=$version, serializeNulls=$serializeNulls, startTimeLog=$startTimeLog, errorCode=$errorCode, request=$request, items=$items, vehicles=$vehicles, drivers=$drivers, config=$config, error=$error, debug=$debug, startTime=$startTime, endTime=$endTime, responses=$responses, orignalRequest=$orignalRequest, generated=$generated, itineraries=$itineraries, score=$score, loadSize=$loadSize, runtime=$runtime, earliestPickupWindow=$earliestPickupWindow, latestPickupWindow=$latestPickupWindow, returning=$returning]';

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
      json[r'vehicles'] = this.vehicles;
      json[r'drivers'] = this.drivers;
    if (this.config != null) {
      json[r'config'] = this.config;
    } else {
      json[r'config'] = null;
    }
    if (this.error != null) {
      json[r'error'] = this.error;
    } else {
      json[r'error'] = null;
    }
      json[r'debug'] = this.debug;
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
      json[r'responses'] = this.responses;
    if (this.orignalRequest != null) {
      json[r'orignalRequest'] = this.orignalRequest;
    } else {
      json[r'orignalRequest'] = null;
    }
    if (this.generated != null) {
      json[r'generated'] = this.generated;
    } else {
      json[r'generated'] = null;
    }
      json[r'itineraries'] = this.itineraries;
    if (this.score != null) {
      json[r'score'] = this.score;
    } else {
      json[r'score'] = null;
    }
    if (this.loadSize != null) {
      json[r'loadSize'] = this.loadSize;
    } else {
      json[r'loadSize'] = null;
    }
    if (this.runtime != null) {
      json[r'runtime'] = this.runtime;
    } else {
      json[r'runtime'] = null;
    }
    if (this.earliestPickupWindow != null) {
      json[r'earliestPickupWindow'] = this.earliestPickupWindow;
    } else {
      json[r'earliestPickupWindow'] = null;
    }
    if (this.latestPickupWindow != null) {
      json[r'latestPickupWindow'] = this.latestPickupWindow;
    } else {
      json[r'latestPickupWindow'] = null;
    }
    if (this.returning != null) {
      json[r'returning'] = this.returning;
    } else {
      json[r'returning'] = null;
    }
    return json;
  }

  /// Returns a new [RoutingResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RoutingResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "RoutingResponse[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "RoutingResponse[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return RoutingResponse(
        valid: mapValueOfType<bool>(json, r'valid'),
        message: mapValueOfType<String>(json, r'message'),
        version: mapValueOfType<double>(json, r'version'),
        serializeNulls: mapValueOfType<bool>(json, r'serializeNulls'),
        startTimeLog: mapValueOfType<int>(json, r'startTimeLog'),
        errorCode: mapValueOfType<String>(json, r'errorCode'),
        request: NameStringValueResponse.listFromJson(json[r'request']),
        items: LoadResponse.listFromJson(json[r'items']),
        vehicles: VehicleResponse.listFromJson(json[r'vehicles']),
        drivers: DriverResponse.listFromJson(json[r'drivers']),
        config: ConfigRoutingRequest.fromJson(json[r'config']),
        error: mapValueOfType<String>(json, r'error'),
        debug: json[r'debug'] is Iterable
            ? (json[r'debug'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        startTime: mapDateTime(json, r'startTime', r''),
        endTime: mapDateTime(json, r'endTime', r''),
        responses: RoutingResponse.listFromJson(json[r'responses']),
        orignalRequest: mapValueOfType<String>(json, r'orignalRequest'),
        generated: mapValueOfType<bool>(json, r'generated'),
        itineraries: ItineraryResponse.listFromJson(json[r'itineraries']),
        score: mapValueOfType<int>(json, r'score'),
        loadSize: mapValueOfType<int>(json, r'loadSize'),
        runtime: mapValueOfType<int>(json, r'runtime'),
        earliestPickupWindow: mapValueOfType<int>(json, r'earliestPickupWindow'),
        latestPickupWindow: mapValueOfType<int>(json, r'latestPickupWindow'),
        returning: mapValueOfType<String>(json, r'returning'),
      );
    }
    return null;
  }

  static List<RoutingResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <RoutingResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RoutingResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, RoutingResponse> mapFromJson(dynamic json) {
    final map = <String, RoutingResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RoutingResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of RoutingResponse-objects as value to a dart map
  static Map<String, List<RoutingResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<RoutingResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = RoutingResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

