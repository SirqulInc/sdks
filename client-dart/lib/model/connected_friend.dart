//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ConnectedFriend {
  /// Returns a new [ConnectedFriend] instance.
  ConnectedFriend({
    this.id,
    this.active,
    this.valid,
    this.display,
    this.avatar,
    this.avatarURL,
    this.platform,
    this.platformId,
    this.invited,
    this.locationDescription,
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
  String? display;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Asset? avatar;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? avatarURL;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? platform;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? platformId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? invited;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? locationDescription;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ConnectedFriend &&
    other.id == id &&
    other.active == active &&
    other.valid == valid &&
    other.display == display &&
    other.avatar == avatar &&
    other.avatarURL == avatarURL &&
    other.platform == platform &&
    other.platformId == platformId &&
    other.invited == invited &&
    other.locationDescription == locationDescription;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (active == null ? 0 : active!.hashCode) +
    (valid == null ? 0 : valid!.hashCode) +
    (display == null ? 0 : display!.hashCode) +
    (avatar == null ? 0 : avatar!.hashCode) +
    (avatarURL == null ? 0 : avatarURL!.hashCode) +
    (platform == null ? 0 : platform!.hashCode) +
    (platformId == null ? 0 : platformId!.hashCode) +
    (invited == null ? 0 : invited!.hashCode) +
    (locationDescription == null ? 0 : locationDescription!.hashCode);

  @override
  String toString() => 'ConnectedFriend[id=$id, active=$active, valid=$valid, display=$display, avatar=$avatar, avatarURL=$avatarURL, platform=$platform, platformId=$platformId, invited=$invited, locationDescription=$locationDescription]';

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
    if (this.display != null) {
      json[r'display'] = this.display;
    } else {
      json[r'display'] = null;
    }
    if (this.avatar != null) {
      json[r'avatar'] = this.avatar;
    } else {
      json[r'avatar'] = null;
    }
    if (this.avatarURL != null) {
      json[r'avatarURL'] = this.avatarURL;
    } else {
      json[r'avatarURL'] = null;
    }
    if (this.platform != null) {
      json[r'platform'] = this.platform;
    } else {
      json[r'platform'] = null;
    }
    if (this.platformId != null) {
      json[r'platformId'] = this.platformId;
    } else {
      json[r'platformId'] = null;
    }
    if (this.invited != null) {
      json[r'invited'] = this.invited;
    } else {
      json[r'invited'] = null;
    }
    if (this.locationDescription != null) {
      json[r'locationDescription'] = this.locationDescription;
    } else {
      json[r'locationDescription'] = null;
    }
    return json;
  }

  /// Returns a new [ConnectedFriend] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ConnectedFriend? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ConnectedFriend[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ConnectedFriend[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ConnectedFriend(
        id: mapValueOfType<int>(json, r'id'),
        active: mapValueOfType<bool>(json, r'active'),
        valid: mapValueOfType<bool>(json, r'valid'),
        display: mapValueOfType<String>(json, r'display'),
        avatar: Asset.fromJson(json[r'avatar']),
        avatarURL: mapValueOfType<String>(json, r'avatarURL'),
        platform: mapValueOfType<String>(json, r'platform'),
        platformId: mapValueOfType<String>(json, r'platformId'),
        invited: mapValueOfType<bool>(json, r'invited'),
        locationDescription: mapValueOfType<String>(json, r'locationDescription'),
      );
    }
    return null;
  }

  static List<ConnectedFriend> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ConnectedFriend>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ConnectedFriend.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ConnectedFriend> mapFromJson(dynamic json) {
    final map = <String, ConnectedFriend>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ConnectedFriend.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ConnectedFriend-objects as value to a dart map
  static Map<String, List<ConnectedFriend>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ConnectedFriend>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ConnectedFriend.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

