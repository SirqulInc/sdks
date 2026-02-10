//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class GeocodeLatLngResponse {
  /// Returns a new [GeocodeLatLngResponse] instance.
  GeocodeLatLngResponse({
    this.lat,
    this.lng,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? lat;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? lng;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GeocodeLatLngResponse &&
    other.lat == lat &&
    other.lng == lng;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (lat == null ? 0 : lat!.hashCode) +
    (lng == null ? 0 : lng!.hashCode);

  @override
  String toString() => 'GeocodeLatLngResponse[lat=$lat, lng=$lng]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.lat != null) {
      json[r'lat'] = this.lat;
    } else {
      json[r'lat'] = null;
    }
    if (this.lng != null) {
      json[r'lng'] = this.lng;
    } else {
      json[r'lng'] = null;
    }
    return json;
  }

  /// Returns a new [GeocodeLatLngResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GeocodeLatLngResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "GeocodeLatLngResponse[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "GeocodeLatLngResponse[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return GeocodeLatLngResponse(
        lat: mapValueOfType<double>(json, r'lat'),
        lng: mapValueOfType<double>(json, r'lng'),
      );
    }
    return null;
  }

  static List<GeocodeLatLngResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GeocodeLatLngResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GeocodeLatLngResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, GeocodeLatLngResponse> mapFromJson(dynamic json) {
    final map = <String, GeocodeLatLngResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GeocodeLatLngResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of GeocodeLatLngResponse-objects as value to a dart map
  static Map<String, List<GeocodeLatLngResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<GeocodeLatLngResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = GeocodeLatLngResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

