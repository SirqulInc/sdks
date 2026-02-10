//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class PathingResponse {
  /// Returns a new [PathingResponse] instance.
  PathingResponse({
    this.start,
    this.end,
    this.waypoints = const [],
    this.exclusions = const [],
    this.width,
    this.height,
    this.southwest,
    this.northeast,
    this.metersPerX,
    this.metersPerY,
    this.path = const [],
    this.pathCount,
    this.directions = const [],
    this.directionCount,
    this.swcalibration,
    this.calibrationBearings,
    this.necalibration,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  NodeRequest? start;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  NodeRequest? end;

  List<NodeRequest> waypoints;

  List<NodeRequest> exclusions;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? width;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? height;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  NodeRequest? southwest;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  NodeRequest? northeast;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? metersPerX;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? metersPerY;

  List<NodeRequest> path;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? pathCount;

  List<DirectionResponse> directions;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? directionCount;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  NodeRequest? swcalibration;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? calibrationBearings;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  NodeRequest? necalibration;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PathingResponse &&
    other.start == start &&
    other.end == end &&
    _deepEquality.equals(other.waypoints, waypoints) &&
    _deepEquality.equals(other.exclusions, exclusions) &&
    other.width == width &&
    other.height == height &&
    other.southwest == southwest &&
    other.northeast == northeast &&
    other.metersPerX == metersPerX &&
    other.metersPerY == metersPerY &&
    _deepEquality.equals(other.path, path) &&
    other.pathCount == pathCount &&
    _deepEquality.equals(other.directions, directions) &&
    other.directionCount == directionCount &&
    other.swcalibration == swcalibration &&
    other.calibrationBearings == calibrationBearings &&
    other.necalibration == necalibration;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (start == null ? 0 : start!.hashCode) +
    (end == null ? 0 : end!.hashCode) +
    (waypoints.hashCode) +
    (exclusions.hashCode) +
    (width == null ? 0 : width!.hashCode) +
    (height == null ? 0 : height!.hashCode) +
    (southwest == null ? 0 : southwest!.hashCode) +
    (northeast == null ? 0 : northeast!.hashCode) +
    (metersPerX == null ? 0 : metersPerX!.hashCode) +
    (metersPerY == null ? 0 : metersPerY!.hashCode) +
    (path.hashCode) +
    (pathCount == null ? 0 : pathCount!.hashCode) +
    (directions.hashCode) +
    (directionCount == null ? 0 : directionCount!.hashCode) +
    (swcalibration == null ? 0 : swcalibration!.hashCode) +
    (calibrationBearings == null ? 0 : calibrationBearings!.hashCode) +
    (necalibration == null ? 0 : necalibration!.hashCode);

  @override
  String toString() => 'PathingResponse[start=$start, end=$end, waypoints=$waypoints, exclusions=$exclusions, width=$width, height=$height, southwest=$southwest, northeast=$northeast, metersPerX=$metersPerX, metersPerY=$metersPerY, path=$path, pathCount=$pathCount, directions=$directions, directionCount=$directionCount, swcalibration=$swcalibration, calibrationBearings=$calibrationBearings, necalibration=$necalibration]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
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
      json[r'waypoints'] = this.waypoints;
      json[r'exclusions'] = this.exclusions;
    if (this.width != null) {
      json[r'width'] = this.width;
    } else {
      json[r'width'] = null;
    }
    if (this.height != null) {
      json[r'height'] = this.height;
    } else {
      json[r'height'] = null;
    }
    if (this.southwest != null) {
      json[r'southwest'] = this.southwest;
    } else {
      json[r'southwest'] = null;
    }
    if (this.northeast != null) {
      json[r'northeast'] = this.northeast;
    } else {
      json[r'northeast'] = null;
    }
    if (this.metersPerX != null) {
      json[r'metersPerX'] = this.metersPerX;
    } else {
      json[r'metersPerX'] = null;
    }
    if (this.metersPerY != null) {
      json[r'metersPerY'] = this.metersPerY;
    } else {
      json[r'metersPerY'] = null;
    }
      json[r'path'] = this.path;
    if (this.pathCount != null) {
      json[r'pathCount'] = this.pathCount;
    } else {
      json[r'pathCount'] = null;
    }
      json[r'directions'] = this.directions;
    if (this.directionCount != null) {
      json[r'directionCount'] = this.directionCount;
    } else {
      json[r'directionCount'] = null;
    }
    if (this.swcalibration != null) {
      json[r'swcalibration'] = this.swcalibration;
    } else {
      json[r'swcalibration'] = null;
    }
    if (this.calibrationBearings != null) {
      json[r'calibrationBearings'] = this.calibrationBearings;
    } else {
      json[r'calibrationBearings'] = null;
    }
    if (this.necalibration != null) {
      json[r'necalibration'] = this.necalibration;
    } else {
      json[r'necalibration'] = null;
    }
    return json;
  }

  /// Returns a new [PathingResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PathingResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "PathingResponse[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "PathingResponse[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return PathingResponse(
        start: NodeRequest.fromJson(json[r'start']),
        end: NodeRequest.fromJson(json[r'end']),
        waypoints: NodeRequest.listFromJson(json[r'waypoints']),
        exclusions: NodeRequest.listFromJson(json[r'exclusions']),
        width: mapValueOfType<int>(json, r'width'),
        height: mapValueOfType<int>(json, r'height'),
        southwest: NodeRequest.fromJson(json[r'southwest']),
        northeast: NodeRequest.fromJson(json[r'northeast']),
        metersPerX: mapValueOfType<double>(json, r'metersPerX'),
        metersPerY: mapValueOfType<double>(json, r'metersPerY'),
        path: NodeRequest.listFromJson(json[r'path']),
        pathCount: mapValueOfType<int>(json, r'pathCount'),
        directions: DirectionResponse.listFromJson(json[r'directions']),
        directionCount: mapValueOfType<int>(json, r'directionCount'),
        swcalibration: NodeRequest.fromJson(json[r'swcalibration']),
        calibrationBearings: mapValueOfType<double>(json, r'calibrationBearings'),
        necalibration: NodeRequest.fromJson(json[r'necalibration']),
      );
    }
    return null;
  }

  static List<PathingResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PathingResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PathingResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PathingResponse> mapFromJson(dynamic json) {
    final map = <String, PathingResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PathingResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PathingResponse-objects as value to a dart map
  static Map<String, List<PathingResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<PathingResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PathingResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

