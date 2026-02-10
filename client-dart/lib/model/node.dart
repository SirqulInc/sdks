//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Node {
  /// Returns a new [Node] instance.
  Node({
    this.x,
    this.y,
    this.z,
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

  @override
  bool operator ==(Object other) => identical(this, other) || other is Node &&
    other.x == x &&
    other.y == y &&
    other.z == z;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (x == null ? 0 : x!.hashCode) +
    (y == null ? 0 : y!.hashCode) +
    (z == null ? 0 : z!.hashCode);

  @override
  String toString() => 'Node[x=$x, y=$y, z=$z]';

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
    return json;
  }

  /// Returns a new [Node] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Node? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Node[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Node[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Node(
        x: mapValueOfType<int>(json, r'x'),
        y: mapValueOfType<int>(json, r'y'),
        z: mapValueOfType<int>(json, r'z'),
      );
    }
    return null;
  }

  static List<Node> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Node>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Node.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Node> mapFromJson(dynamic json) {
    final map = <String, Node>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Node.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Node-objects as value to a dart map
  static Map<String, List<Node>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Node>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Node.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

