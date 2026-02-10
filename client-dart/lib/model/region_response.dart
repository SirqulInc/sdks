//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class RegionResponse {
  /// Returns a new [RegionResponse] instance.
  RegionResponse({
    this.id,
    this.shortName,
    this.fullName,
    this.parent,
    this.children = const [],
    this.postalCodes = const [],
    this.latitude,
    this.longitude,
    this.active,
    this.root,
    this.regionClass,
    this.start,
    this.end,
    this.polygon,
    this.metaData,
    this.distance,
    this.versionCode,
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
  String? shortName;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? fullName;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  RegionResponse? parent;

  List<RegionResponse> children;

  List<PostalCodeResponse> postalCodes;

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
  bool? active;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? root;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? regionClass;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? start;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? end;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? polygon;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? metaData;

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
  int? versionCode;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RegionResponse &&
    other.id == id &&
    other.shortName == shortName &&
    other.fullName == fullName &&
    other.parent == parent &&
    _deepEquality.equals(other.children, children) &&
    _deepEquality.equals(other.postalCodes, postalCodes) &&
    other.latitude == latitude &&
    other.longitude == longitude &&
    other.active == active &&
    other.root == root &&
    other.regionClass == regionClass &&
    other.start == start &&
    other.end == end &&
    other.polygon == polygon &&
    other.metaData == metaData &&
    other.distance == distance &&
    other.versionCode == versionCode;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (shortName == null ? 0 : shortName!.hashCode) +
    (fullName == null ? 0 : fullName!.hashCode) +
    (parent == null ? 0 : parent!.hashCode) +
    (children.hashCode) +
    (postalCodes.hashCode) +
    (latitude == null ? 0 : latitude!.hashCode) +
    (longitude == null ? 0 : longitude!.hashCode) +
    (active == null ? 0 : active!.hashCode) +
    (root == null ? 0 : root!.hashCode) +
    (regionClass == null ? 0 : regionClass!.hashCode) +
    (start == null ? 0 : start!.hashCode) +
    (end == null ? 0 : end!.hashCode) +
    (polygon == null ? 0 : polygon!.hashCode) +
    (metaData == null ? 0 : metaData!.hashCode) +
    (distance == null ? 0 : distance!.hashCode) +
    (versionCode == null ? 0 : versionCode!.hashCode);

  @override
  String toString() => 'RegionResponse[id=$id, shortName=$shortName, fullName=$fullName, parent=$parent, children=$children, postalCodes=$postalCodes, latitude=$latitude, longitude=$longitude, active=$active, root=$root, regionClass=$regionClass, start=$start, end=$end, polygon=$polygon, metaData=$metaData, distance=$distance, versionCode=$versionCode]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.shortName != null) {
      json[r'shortName'] = this.shortName;
    } else {
      json[r'shortName'] = null;
    }
    if (this.fullName != null) {
      json[r'fullName'] = this.fullName;
    } else {
      json[r'fullName'] = null;
    }
    if (this.parent != null) {
      json[r'parent'] = this.parent;
    } else {
      json[r'parent'] = null;
    }
      json[r'children'] = this.children;
      json[r'postalCodes'] = this.postalCodes;
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
    if (this.active != null) {
      json[r'active'] = this.active;
    } else {
      json[r'active'] = null;
    }
    if (this.root != null) {
      json[r'root'] = this.root;
    } else {
      json[r'root'] = null;
    }
    if (this.regionClass != null) {
      json[r'regionClass'] = this.regionClass;
    } else {
      json[r'regionClass'] = null;
    }
    if (this.start != null) {
      json[r'start'] = this.start;
    } else {
      json[r'start'] = null;
    }
    if (this.end != null) {
      json[r'end'] = this.end;
    } else {
      json[r'end'] = null;
    }
    if (this.polygon != null) {
      json[r'polygon'] = this.polygon;
    } else {
      json[r'polygon'] = null;
    }
    if (this.metaData != null) {
      json[r'metaData'] = this.metaData;
    } else {
      json[r'metaData'] = null;
    }
    if (this.distance != null) {
      json[r'distance'] = this.distance;
    } else {
      json[r'distance'] = null;
    }
    if (this.versionCode != null) {
      json[r'versionCode'] = this.versionCode;
    } else {
      json[r'versionCode'] = null;
    }
    return json;
  }

  /// Returns a new [RegionResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RegionResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "RegionResponse[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "RegionResponse[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return RegionResponse(
        id: mapValueOfType<int>(json, r'id'),
        shortName: mapValueOfType<String>(json, r'shortName'),
        fullName: mapValueOfType<String>(json, r'fullName'),
        parent: RegionResponse.fromJson(json[r'parent']),
        children: RegionResponse.listFromJson(json[r'children']),
        postalCodes: PostalCodeResponse.listFromJson(json[r'postalCodes']),
        latitude: mapValueOfType<double>(json, r'latitude'),
        longitude: mapValueOfType<double>(json, r'longitude'),
        active: mapValueOfType<bool>(json, r'active'),
        root: mapValueOfType<bool>(json, r'root'),
        regionClass: mapValueOfType<String>(json, r'regionClass'),
        start: mapValueOfType<int>(json, r'start'),
        end: mapValueOfType<int>(json, r'end'),
        polygon: mapValueOfType<String>(json, r'polygon'),
        metaData: mapValueOfType<String>(json, r'metaData'),
        distance: mapValueOfType<double>(json, r'distance'),
        versionCode: mapValueOfType<int>(json, r'versionCode'),
      );
    }
    return null;
  }

  static List<RegionResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <RegionResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RegionResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, RegionResponse> mapFromJson(dynamic json) {
    final map = <String, RegionResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RegionResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of RegionResponse-objects as value to a dart map
  static Map<String, List<RegionResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<RegionResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = RegionResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

