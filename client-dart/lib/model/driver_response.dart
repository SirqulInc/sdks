//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class DriverResponse {
  /// Returns a new [DriverResponse] instance.
  DriverResponse({
    this.id,
    this.name,
    this.depot,
    this.availability = const [],
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

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
  LocationResponse? depot;

  List<AvailabilityResponse> availability;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DriverResponse &&
    other.id == id &&
    other.name == name &&
    other.depot == depot &&
    _deepEquality.equals(other.availability, availability);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (depot == null ? 0 : depot!.hashCode) +
    (availability.hashCode);

  @override
  String toString() => 'DriverResponse[id=$id, name=$name, depot=$depot, availability=$availability]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.depot != null) {
      json[r'depot'] = this.depot;
    } else {
      json[r'depot'] = null;
    }
      json[r'availability'] = this.availability;
    return json;
  }

  /// Returns a new [DriverResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DriverResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "DriverResponse[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "DriverResponse[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return DriverResponse(
        id: mapValueOfType<String>(json, r'id'),
        name: mapValueOfType<String>(json, r'name'),
        depot: LocationResponse.fromJson(json[r'depot']),
        availability: AvailabilityResponse.listFromJson(json[r'availability']),
      );
    }
    return null;
  }

  static List<DriverResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DriverResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DriverResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DriverResponse> mapFromJson(dynamic json) {
    final map = <String, DriverResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DriverResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DriverResponse-objects as value to a dart map
  static Map<String, List<DriverResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<DriverResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = DriverResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

