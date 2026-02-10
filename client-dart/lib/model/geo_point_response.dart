//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class GeoPointResponse {
  /// Returns a new [GeoPointResponse] instance.
  GeoPointResponse({
    this.objectId,
    this.latitude,
    this.longitude,
    this.altitude,
    this.locationDescription,
    this.locatableId,
    this.locatableObjectId,
    this.locatableObjectName,
    this.locatableDisplay,
    this.asset,
    this.distance,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? objectId;

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
  double? altitude;

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
  int? locatableId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? locatableObjectId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? locatableObjectName;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? locatableDisplay;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  AssetShortResponse? asset;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? distance;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GeoPointResponse &&
    other.objectId == objectId &&
    other.latitude == latitude &&
    other.longitude == longitude &&
    other.altitude == altitude &&
    other.locationDescription == locationDescription &&
    other.locatableId == locatableId &&
    other.locatableObjectId == locatableObjectId &&
    other.locatableObjectName == locatableObjectName &&
    other.locatableDisplay == locatableDisplay &&
    other.asset == asset &&
    other.distance == distance;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (objectId == null ? 0 : objectId!.hashCode) +
    (latitude == null ? 0 : latitude!.hashCode) +
    (longitude == null ? 0 : longitude!.hashCode) +
    (altitude == null ? 0 : altitude!.hashCode) +
    (locationDescription == null ? 0 : locationDescription!.hashCode) +
    (locatableId == null ? 0 : locatableId!.hashCode) +
    (locatableObjectId == null ? 0 : locatableObjectId!.hashCode) +
    (locatableObjectName == null ? 0 : locatableObjectName!.hashCode) +
    (locatableDisplay == null ? 0 : locatableDisplay!.hashCode) +
    (asset == null ? 0 : asset!.hashCode) +
    (distance == null ? 0 : distance!.hashCode);

  @override
  String toString() => 'GeoPointResponse[objectId=$objectId, latitude=$latitude, longitude=$longitude, altitude=$altitude, locationDescription=$locationDescription, locatableId=$locatableId, locatableObjectId=$locatableObjectId, locatableObjectName=$locatableObjectName, locatableDisplay=$locatableDisplay, asset=$asset, distance=$distance]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.objectId != null) {
      json[r'objectId'] = this.objectId;
    } else {
      json[r'objectId'] = null;
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
    if (this.altitude != null) {
      json[r'altitude'] = this.altitude;
    } else {
      json[r'altitude'] = null;
    }
    if (this.locationDescription != null) {
      json[r'locationDescription'] = this.locationDescription;
    } else {
      json[r'locationDescription'] = null;
    }
    if (this.locatableId != null) {
      json[r'locatableId'] = this.locatableId;
    } else {
      json[r'locatableId'] = null;
    }
    if (this.locatableObjectId != null) {
      json[r'locatableObjectId'] = this.locatableObjectId;
    } else {
      json[r'locatableObjectId'] = null;
    }
    if (this.locatableObjectName != null) {
      json[r'locatableObjectName'] = this.locatableObjectName;
    } else {
      json[r'locatableObjectName'] = null;
    }
    if (this.locatableDisplay != null) {
      json[r'locatableDisplay'] = this.locatableDisplay;
    } else {
      json[r'locatableDisplay'] = null;
    }
    if (this.asset != null) {
      json[r'asset'] = this.asset;
    } else {
      json[r'asset'] = null;
    }
    if (this.distance != null) {
      json[r'distance'] = this.distance;
    } else {
      json[r'distance'] = null;
    }
    return json;
  }

  /// Returns a new [GeoPointResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GeoPointResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "GeoPointResponse[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "GeoPointResponse[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return GeoPointResponse(
        objectId: mapValueOfType<String>(json, r'objectId'),
        latitude: mapValueOfType<double>(json, r'latitude'),
        longitude: mapValueOfType<double>(json, r'longitude'),
        altitude: mapValueOfType<double>(json, r'altitude'),
        locationDescription: mapValueOfType<String>(json, r'locationDescription'),
        locatableId: mapValueOfType<int>(json, r'locatableId'),
        locatableObjectId: mapValueOfType<String>(json, r'locatableObjectId'),
        locatableObjectName: mapValueOfType<String>(json, r'locatableObjectName'),
        locatableDisplay: mapValueOfType<String>(json, r'locatableDisplay'),
        asset: AssetShortResponse.fromJson(json[r'asset']),
        distance: mapValueOfType<double>(json, r'distance'),
      );
    }
    return null;
  }

  static List<GeoPointResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GeoPointResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GeoPointResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, GeoPointResponse> mapFromJson(dynamic json) {
    final map = <String, GeoPointResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GeoPointResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of GeoPointResponse-objects as value to a dart map
  static Map<String, List<GeoPointResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<GeoPointResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = GeoPointResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

