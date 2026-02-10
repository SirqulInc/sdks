//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class UserPermissions {
  /// Returns a new [UserPermissions] instance.
  UserPermissions({
    this.id,
    this.active,
    this.valid,
    this.permissionableType,
    this.permissionableId,
    this.connectionGroup,
    this.friendGroup,
    this.connection,
    this.permissions,
    this.exclude,
    this.blocked,
    this.owner,
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
  String? permissionableType;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? permissionableId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  ConnectionGroup? connectionGroup;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? friendGroup;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Connection? connection;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Permissions? permissions;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? exclude;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? blocked;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Account? owner;

  @override
  bool operator ==(Object other) => identical(this, other) || other is UserPermissions &&
    other.id == id &&
    other.active == active &&
    other.valid == valid &&
    other.permissionableType == permissionableType &&
    other.permissionableId == permissionableId &&
    other.connectionGroup == connectionGroup &&
    other.friendGroup == friendGroup &&
    other.connection == connection &&
    other.permissions == permissions &&
    other.exclude == exclude &&
    other.blocked == blocked &&
    other.owner == owner;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (active == null ? 0 : active!.hashCode) +
    (valid == null ? 0 : valid!.hashCode) +
    (permissionableType == null ? 0 : permissionableType!.hashCode) +
    (permissionableId == null ? 0 : permissionableId!.hashCode) +
    (connectionGroup == null ? 0 : connectionGroup!.hashCode) +
    (friendGroup == null ? 0 : friendGroup!.hashCode) +
    (connection == null ? 0 : connection!.hashCode) +
    (permissions == null ? 0 : permissions!.hashCode) +
    (exclude == null ? 0 : exclude!.hashCode) +
    (blocked == null ? 0 : blocked!.hashCode) +
    (owner == null ? 0 : owner!.hashCode);

  @override
  String toString() => 'UserPermissions[id=$id, active=$active, valid=$valid, permissionableType=$permissionableType, permissionableId=$permissionableId, connectionGroup=$connectionGroup, friendGroup=$friendGroup, connection=$connection, permissions=$permissions, exclude=$exclude, blocked=$blocked, owner=$owner]';

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
    if (this.permissionableType != null) {
      json[r'permissionableType'] = this.permissionableType;
    } else {
      json[r'permissionableType'] = null;
    }
    if (this.permissionableId != null) {
      json[r'permissionableId'] = this.permissionableId;
    } else {
      json[r'permissionableId'] = null;
    }
    if (this.connectionGroup != null) {
      json[r'connectionGroup'] = this.connectionGroup;
    } else {
      json[r'connectionGroup'] = null;
    }
    if (this.friendGroup != null) {
      json[r'friendGroup'] = this.friendGroup;
    } else {
      json[r'friendGroup'] = null;
    }
    if (this.connection != null) {
      json[r'connection'] = this.connection;
    } else {
      json[r'connection'] = null;
    }
    if (this.permissions != null) {
      json[r'permissions'] = this.permissions;
    } else {
      json[r'permissions'] = null;
    }
    if (this.exclude != null) {
      json[r'exclude'] = this.exclude;
    } else {
      json[r'exclude'] = null;
    }
    if (this.blocked != null) {
      json[r'blocked'] = this.blocked;
    } else {
      json[r'blocked'] = null;
    }
    if (this.owner != null) {
      json[r'owner'] = this.owner;
    } else {
      json[r'owner'] = null;
    }
    return json;
  }

  /// Returns a new [UserPermissions] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static UserPermissions? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "UserPermissions[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "UserPermissions[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return UserPermissions(
        id: mapValueOfType<int>(json, r'id'),
        active: mapValueOfType<bool>(json, r'active'),
        valid: mapValueOfType<bool>(json, r'valid'),
        permissionableType: mapValueOfType<String>(json, r'permissionableType'),
        permissionableId: mapValueOfType<int>(json, r'permissionableId'),
        connectionGroup: ConnectionGroup.fromJson(json[r'connectionGroup']),
        friendGroup: mapValueOfType<bool>(json, r'friendGroup'),
        connection: Connection.fromJson(json[r'connection']),
        permissions: Permissions.fromJson(json[r'permissions']),
        exclude: mapValueOfType<bool>(json, r'exclude'),
        blocked: mapValueOfType<bool>(json, r'blocked'),
        owner: Account.fromJson(json[r'owner']),
      );
    }
    return null;
  }

  static List<UserPermissions> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UserPermissions>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UserPermissions.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, UserPermissions> mapFromJson(dynamic json) {
    final map = <String, UserPermissions>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = UserPermissions.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of UserPermissions-objects as value to a dart map
  static Map<String, List<UserPermissions>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<UserPermissions>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = UserPermissions.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

