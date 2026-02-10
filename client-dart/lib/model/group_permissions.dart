//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class GroupPermissions {
  /// Returns a new [GroupPermissions] instance.
  GroupPermissions({
    this.canViewProfileInfo,
    this.canViewGameInfo,
    this.canViewFriendInfo,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? canViewProfileInfo;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? canViewGameInfo;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? canViewFriendInfo;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GroupPermissions &&
    other.canViewProfileInfo == canViewProfileInfo &&
    other.canViewGameInfo == canViewGameInfo &&
    other.canViewFriendInfo == canViewFriendInfo;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (canViewProfileInfo == null ? 0 : canViewProfileInfo!.hashCode) +
    (canViewGameInfo == null ? 0 : canViewGameInfo!.hashCode) +
    (canViewFriendInfo == null ? 0 : canViewFriendInfo!.hashCode);

  @override
  String toString() => 'GroupPermissions[canViewProfileInfo=$canViewProfileInfo, canViewGameInfo=$canViewGameInfo, canViewFriendInfo=$canViewFriendInfo]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.canViewProfileInfo != null) {
      json[r'canViewProfileInfo'] = this.canViewProfileInfo;
    } else {
      json[r'canViewProfileInfo'] = null;
    }
    if (this.canViewGameInfo != null) {
      json[r'canViewGameInfo'] = this.canViewGameInfo;
    } else {
      json[r'canViewGameInfo'] = null;
    }
    if (this.canViewFriendInfo != null) {
      json[r'canViewFriendInfo'] = this.canViewFriendInfo;
    } else {
      json[r'canViewFriendInfo'] = null;
    }
    return json;
  }

  /// Returns a new [GroupPermissions] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GroupPermissions? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "GroupPermissions[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "GroupPermissions[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return GroupPermissions(
        canViewProfileInfo: mapValueOfType<bool>(json, r'canViewProfileInfo'),
        canViewGameInfo: mapValueOfType<bool>(json, r'canViewGameInfo'),
        canViewFriendInfo: mapValueOfType<bool>(json, r'canViewFriendInfo'),
      );
    }
    return null;
  }

  static List<GroupPermissions> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GroupPermissions>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GroupPermissions.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, GroupPermissions> mapFromJson(dynamic json) {
    final map = <String, GroupPermissions>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GroupPermissions.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of GroupPermissions-objects as value to a dart map
  static Map<String, List<GroupPermissions>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<GroupPermissions>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = GroupPermissions.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

