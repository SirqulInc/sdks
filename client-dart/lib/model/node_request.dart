//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class NodeRequest {
  /// Returns a new [NodeRequest] instance.
  NodeRequest({
    this.x,
    this.y,
    this.z,
    this.latitude,
    this.longitude,
    this.altitude,
    this.date,
    this.isWaypoint,
    this.accountId,
    this.node,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? x;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? y;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? z;

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
  int? date;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isWaypoint;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? accountId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Node? node;

  @override
  bool operator ==(Object other) => identical(this, other) || other is NodeRequest &&
    other.x == x &&
    other.y == y &&
    other.z == z &&
    other.latitude == latitude &&
    other.longitude == longitude &&
    other.altitude == altitude &&
    other.date == date &&
    other.isWaypoint == isWaypoint &&
    other.accountId == accountId &&
    other.node == node;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (x == null ? 0 : x!.hashCode) +
    (y == null ? 0 : y!.hashCode) +
    (z == null ? 0 : z!.hashCode) +
    (latitude == null ? 0 : latitude!.hashCode) +
    (longitude == null ? 0 : longitude!.hashCode) +
    (altitude == null ? 0 : altitude!.hashCode) +
    (date == null ? 0 : date!.hashCode) +
    (isWaypoint == null ? 0 : isWaypoint!.hashCode) +
    (accountId == null ? 0 : accountId!.hashCode) +
    (node == null ? 0 : node!.hashCode);

  @override
  String toString() => 'NodeRequest[x=$x, y=$y, z=$z, latitude=$latitude, longitude=$longitude, altitude=$altitude, date=$date, isWaypoint=$isWaypoint, accountId=$accountId, node=$node]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.x != null) {
      json[r'x'] = this.x;
    } else {
      json[r'x'] = null;
    }
    if (this.y != null) {
      json[r'y'] = this.y;
    } else {
      json[r'y'] = null;
    }
    if (this.z != null) {
      json[r'z'] = this.z;
    } else {
      json[r'z'] = null;
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
    if (this.date != null) {
      json[r'date'] = this.date;
    } else {
      json[r'date'] = null;
    }
    if (this.isWaypoint != null) {
      json[r'isWaypoint'] = this.isWaypoint;
    } else {
      json[r'isWaypoint'] = null;
    }
    if (this.accountId != null) {
      json[r'accountId'] = this.accountId;
    } else {
      json[r'accountId'] = null;
    }
    if (this.node != null) {
      json[r'node'] = this.node;
    } else {
      json[r'node'] = null;
    }
    return json;
  }

  /// Returns a new [NodeRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static NodeRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "NodeRequest[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "NodeRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return NodeRequest(
        x: mapValueOfType<int>(json, r'x'),
        y: mapValueOfType<int>(json, r'y'),
        z: mapValueOfType<int>(json, r'z'),
        latitude: mapValueOfType<double>(json, r'latitude'),
        longitude: mapValueOfType<double>(json, r'longitude'),
        altitude: mapValueOfType<double>(json, r'altitude'),
        date: mapValueOfType<int>(json, r'date'),
        isWaypoint: mapValueOfType<bool>(json, r'isWaypoint'),
        accountId: mapValueOfType<int>(json, r'accountId'),
        node: Node.fromJson(json[r'node']),
      );
    }
    return null;
  }

  static List<NodeRequest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <NodeRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = NodeRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, NodeRequest> mapFromJson(dynamic json) {
    final map = <String, NodeRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = NodeRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of NodeRequest-objects as value to a dart map
  static Map<String, List<NodeRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<NodeRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = NodeRequest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

