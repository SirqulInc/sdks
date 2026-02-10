//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ItineraryResponse {
  /// Returns a new [ItineraryResponse] instance.
  ItineraryResponse({
    this.itineraryId,
    this.waypointCount,
    this.score,
    this.errorCode,
    this.error,
    this.itemCount,
    this.vehicle,
    this.stops = const [],
    this.estimatedStartTime,
    this.estimatedEndTime,
    this.estimatedDuration,
    this.estimatedDistance,
    this.waitTime,
    this.generated,
    this.valid,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? itineraryId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? waypointCount;

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
  String? errorCode;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? error;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? itemCount;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  VehicleResponse? vehicle;

  List<StopResponse> stops;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? estimatedStartTime;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? estimatedEndTime;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? estimatedDuration;

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
  int? waitTime;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? generated;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? valid;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ItineraryResponse &&
    other.itineraryId == itineraryId &&
    other.waypointCount == waypointCount &&
    other.score == score &&
    other.errorCode == errorCode &&
    other.error == error &&
    other.itemCount == itemCount &&
    other.vehicle == vehicle &&
    _deepEquality.equals(other.stops, stops) &&
    other.estimatedStartTime == estimatedStartTime &&
    other.estimatedEndTime == estimatedEndTime &&
    other.estimatedDuration == estimatedDuration &&
    other.estimatedDistance == estimatedDistance &&
    other.waitTime == waitTime &&
    other.generated == generated &&
    other.valid == valid;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (itineraryId == null ? 0 : itineraryId!.hashCode) +
    (waypointCount == null ? 0 : waypointCount!.hashCode) +
    (score == null ? 0 : score!.hashCode) +
    (errorCode == null ? 0 : errorCode!.hashCode) +
    (error == null ? 0 : error!.hashCode) +
    (itemCount == null ? 0 : itemCount!.hashCode) +
    (vehicle == null ? 0 : vehicle!.hashCode) +
    (stops.hashCode) +
    (estimatedStartTime == null ? 0 : estimatedStartTime!.hashCode) +
    (estimatedEndTime == null ? 0 : estimatedEndTime!.hashCode) +
    (estimatedDuration == null ? 0 : estimatedDuration!.hashCode) +
    (estimatedDistance == null ? 0 : estimatedDistance!.hashCode) +
    (waitTime == null ? 0 : waitTime!.hashCode) +
    (generated == null ? 0 : generated!.hashCode) +
    (valid == null ? 0 : valid!.hashCode);

  @override
  String toString() => 'ItineraryResponse[itineraryId=$itineraryId, waypointCount=$waypointCount, score=$score, errorCode=$errorCode, error=$error, itemCount=$itemCount, vehicle=$vehicle, stops=$stops, estimatedStartTime=$estimatedStartTime, estimatedEndTime=$estimatedEndTime, estimatedDuration=$estimatedDuration, estimatedDistance=$estimatedDistance, waitTime=$waitTime, generated=$generated, valid=$valid]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.itineraryId != null) {
      json[r'itineraryId'] = this.itineraryId;
    } else {
      json[r'itineraryId'] = null;
    }
    if (this.waypointCount != null) {
      json[r'waypointCount'] = this.waypointCount;
    } else {
      json[r'waypointCount'] = null;
    }
    if (this.score != null) {
      json[r'score'] = this.score;
    } else {
      json[r'score'] = null;
    }
    if (this.errorCode != null) {
      json[r'errorCode'] = this.errorCode;
    } else {
      json[r'errorCode'] = null;
    }
    if (this.error != null) {
      json[r'error'] = this.error;
    } else {
      json[r'error'] = null;
    }
    if (this.itemCount != null) {
      json[r'itemCount'] = this.itemCount;
    } else {
      json[r'itemCount'] = null;
    }
    if (this.vehicle != null) {
      json[r'vehicle'] = this.vehicle;
    } else {
      json[r'vehicle'] = null;
    }
      json[r'stops'] = this.stops;
    if (this.estimatedStartTime != null) {
      json[r'estimatedStartTime'] = this.estimatedStartTime;
    } else {
      json[r'estimatedStartTime'] = null;
    }
    if (this.estimatedEndTime != null) {
      json[r'estimatedEndTime'] = this.estimatedEndTime;
    } else {
      json[r'estimatedEndTime'] = null;
    }
    if (this.estimatedDuration != null) {
      json[r'estimatedDuration'] = this.estimatedDuration;
    } else {
      json[r'estimatedDuration'] = null;
    }
    if (this.estimatedDistance != null) {
      json[r'estimatedDistance'] = this.estimatedDistance;
    } else {
      json[r'estimatedDistance'] = null;
    }
    if (this.waitTime != null) {
      json[r'waitTime'] = this.waitTime;
    } else {
      json[r'waitTime'] = null;
    }
    if (this.generated != null) {
      json[r'generated'] = this.generated;
    } else {
      json[r'generated'] = null;
    }
    if (this.valid != null) {
      json[r'valid'] = this.valid;
    } else {
      json[r'valid'] = null;
    }
    return json;
  }

  /// Returns a new [ItineraryResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ItineraryResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ItineraryResponse[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ItineraryResponse[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ItineraryResponse(
        itineraryId: mapValueOfType<String>(json, r'itineraryId'),
        waypointCount: mapValueOfType<int>(json, r'waypointCount'),
        score: mapValueOfType<int>(json, r'score'),
        errorCode: mapValueOfType<String>(json, r'errorCode'),
        error: mapValueOfType<String>(json, r'error'),
        itemCount: mapValueOfType<int>(json, r'itemCount'),
        vehicle: VehicleResponse.fromJson(json[r'vehicle']),
        stops: StopResponse.listFromJson(json[r'stops']),
        estimatedStartTime: mapValueOfType<int>(json, r'estimatedStartTime'),
        estimatedEndTime: mapValueOfType<int>(json, r'estimatedEndTime'),
        estimatedDuration: mapValueOfType<int>(json, r'estimatedDuration'),
        estimatedDistance: mapValueOfType<double>(json, r'estimatedDistance'),
        waitTime: mapValueOfType<int>(json, r'waitTime'),
        generated: mapValueOfType<bool>(json, r'generated'),
        valid: mapValueOfType<bool>(json, r'valid'),
      );
    }
    return null;
  }

  static List<ItineraryResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ItineraryResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ItineraryResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ItineraryResponse> mapFromJson(dynamic json) {
    final map = <String, ItineraryResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ItineraryResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ItineraryResponse-objects as value to a dart map
  static Map<String, List<ItineraryResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ItineraryResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ItineraryResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

