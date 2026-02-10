//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Permissions {
  /// Returns a new [Permissions] instance.
  Permissions({
    this.read,
    this.write,
    this.delete,
    this.add,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? read;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? write;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? delete;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? add;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Permissions &&
    other.read == read &&
    other.write == write &&
    other.delete == delete &&
    other.add == add;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (read == null ? 0 : read!.hashCode) +
    (write == null ? 0 : write!.hashCode) +
    (delete == null ? 0 : delete!.hashCode) +
    (add == null ? 0 : add!.hashCode);

  @override
  String toString() => 'Permissions[read=$read, write=$write, delete=$delete, add=$add]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.read != null) {
      json[r'read'] = this.read;
    } else {
      json[r'read'] = null;
    }
    if (this.write != null) {
      json[r'write'] = this.write;
    } else {
      json[r'write'] = null;
    }
    if (this.delete != null) {
      json[r'delete'] = this.delete;
    } else {
      json[r'delete'] = null;
    }
    if (this.add != null) {
      json[r'add'] = this.add;
    } else {
      json[r'add'] = null;
    }
    return json;
  }

  /// Returns a new [Permissions] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Permissions? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Permissions[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Permissions[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Permissions(
        read: mapValueOfType<bool>(json, r'read'),
        write: mapValueOfType<bool>(json, r'write'),
        delete: mapValueOfType<bool>(json, r'delete'),
        add: mapValueOfType<bool>(json, r'add'),
      );
    }
    return null;
  }

  static List<Permissions> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Permissions>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Permissions.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Permissions> mapFromJson(dynamic json) {
    final map = <String, Permissions>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Permissions.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Permissions-objects as value to a dart map
  static Map<String, List<Permissions>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Permissions>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Permissions.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

