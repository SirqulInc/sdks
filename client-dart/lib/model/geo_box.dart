//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class GeoBox {
  /// Returns a new [GeoBox] instance.
  GeoBox({
    this.north,
    this.east,
    this.south,
    this.west,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? north;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? east;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? south;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? west;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GeoBox &&
    other.north == north &&
    other.east == east &&
    other.south == south &&
    other.west == west;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (north == null ? 0 : north!.hashCode) +
    (east == null ? 0 : east!.hashCode) +
    (south == null ? 0 : south!.hashCode) +
    (west == null ? 0 : west!.hashCode);

  @override
  String toString() => 'GeoBox[north=$north, east=$east, south=$south, west=$west]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.north != null) {
      json[r'north'] = this.north;
    } else {
      json[r'north'] = null;
    }
    if (this.east != null) {
      json[r'east'] = this.east;
    } else {
      json[r'east'] = null;
    }
    if (this.south != null) {
      json[r'south'] = this.south;
    } else {
      json[r'south'] = null;
    }
    if (this.west != null) {
      json[r'west'] = this.west;
    } else {
      json[r'west'] = null;
    }
    return json;
  }

  /// Returns a new [GeoBox] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GeoBox? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "GeoBox[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "GeoBox[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return GeoBox(
        north: mapValueOfType<double>(json, r'north'),
        east: mapValueOfType<double>(json, r'east'),
        south: mapValueOfType<double>(json, r'south'),
        west: mapValueOfType<double>(json, r'west'),
      );
    }
    return null;
  }

  static List<GeoBox> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GeoBox>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GeoBox.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, GeoBox> mapFromJson(dynamic json) {
    final map = <String, GeoBox>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GeoBox.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of GeoBox-objects as value to a dart map
  static Map<String, List<GeoBox>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<GeoBox>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = GeoBox.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

