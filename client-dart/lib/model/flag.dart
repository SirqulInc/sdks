//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Flag {
  /// Returns a new [Flag] instance.
  Flag({
    this.id,
    this.active,
    this.valid,
    this.owner,
    this.flagableObjectType,
    this.flagableObjectId,
    this.flagDescription,
    this.app,
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
  bool? active;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? valid;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Account? owner;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? flagableObjectType;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? flagableObjectId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? flagDescription;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? app;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Flag &&
    other.id == id &&
    other.active == active &&
    other.valid == valid &&
    other.owner == owner &&
    other.flagableObjectType == flagableObjectType &&
    other.flagableObjectId == flagableObjectId &&
    other.flagDescription == flagDescription &&
    other.app == app;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (active == null ? 0 : active!.hashCode) +
    (valid == null ? 0 : valid!.hashCode) +
    (owner == null ? 0 : owner!.hashCode) +
    (flagableObjectType == null ? 0 : flagableObjectType!.hashCode) +
    (flagableObjectId == null ? 0 : flagableObjectId!.hashCode) +
    (flagDescription == null ? 0 : flagDescription!.hashCode) +
    (app == null ? 0 : app!.hashCode);

  @override
  String toString() => 'Flag[id=$id, active=$active, valid=$valid, owner=$owner, flagableObjectType=$flagableObjectType, flagableObjectId=$flagableObjectId, flagDescription=$flagDescription, app=$app]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.active != null) {
      json[r'active'] = this.active;
    } else {
      json[r'active'] = null;
    }
    if (this.valid != null) {
      json[r'valid'] = this.valid;
    } else {
      json[r'valid'] = null;
    }
    if (this.owner != null) {
      json[r'owner'] = this.owner;
    } else {
      json[r'owner'] = null;
    }
    if (this.flagableObjectType != null) {
      json[r'flagableObjectType'] = this.flagableObjectType;
    } else {
      json[r'flagableObjectType'] = null;
    }
    if (this.flagableObjectId != null) {
      json[r'flagableObjectId'] = this.flagableObjectId;
    } else {
      json[r'flagableObjectId'] = null;
    }
    if (this.flagDescription != null) {
      json[r'flagDescription'] = this.flagDescription;
    } else {
      json[r'flagDescription'] = null;
    }
    if (this.app != null) {
      json[r'app'] = this.app;
    } else {
      json[r'app'] = null;
    }
    return json;
  }

  /// Returns a new [Flag] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Flag? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Flag[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Flag[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Flag(
        id: mapValueOfType<int>(json, r'id'),
        active: mapValueOfType<bool>(json, r'active'),
        valid: mapValueOfType<bool>(json, r'valid'),
        owner: Account.fromJson(json[r'owner']),
        flagableObjectType: mapValueOfType<String>(json, r'flagableObjectType'),
        flagableObjectId: mapValueOfType<int>(json, r'flagableObjectId'),
        flagDescription: mapValueOfType<String>(json, r'flagDescription'),
        app: mapValueOfType<String>(json, r'app'),
      );
    }
    return null;
  }

  static List<Flag> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Flag>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Flag.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Flag> mapFromJson(dynamic json) {
    final map = <String, Flag>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Flag.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Flag-objects as value to a dart map
  static Map<String, List<Flag>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Flag>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Flag.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

