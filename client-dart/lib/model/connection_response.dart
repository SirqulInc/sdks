//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ConnectionResponse {
  /// Returns a new [ConnectionResponse] instance.
  ConnectionResponse({
    this.connectionId,
    this.connectionAccountId,
    this.connectionPendingId,
    this.display,
    this.locationDisplay,
    this.connectionViewedDate,
    this.profileImage,
    this.title,
    this.connectionAccountType,
    this.trusted,
    this.following,
    this.friendRequested,
    this.friendRequestPending,
    this.blocked,
    this.friend,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? connectionId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? connectionAccountId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? connectionPendingId;

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
  String? locationDisplay;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? connectionViewedDate;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? profileImage;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? title;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? connectionAccountType;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? trusted;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? following;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? friendRequested;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? friendRequestPending;

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
  bool? friend;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ConnectionResponse &&
    other.connectionId == connectionId &&
    other.connectionAccountId == connectionAccountId &&
    other.connectionPendingId == connectionPendingId &&
    other.display == display &&
    other.locationDisplay == locationDisplay &&
    other.connectionViewedDate == connectionViewedDate &&
    other.profileImage == profileImage &&
    other.title == title &&
    other.connectionAccountType == connectionAccountType &&
    other.trusted == trusted &&
    other.following == following &&
    other.friendRequested == friendRequested &&
    other.friendRequestPending == friendRequestPending &&
    other.blocked == blocked &&
    other.friend == friend;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (connectionId == null ? 0 : connectionId!.hashCode) +
    (connectionAccountId == null ? 0 : connectionAccountId!.hashCode) +
    (connectionPendingId == null ? 0 : connectionPendingId!.hashCode) +
    (display == null ? 0 : display!.hashCode) +
    (locationDisplay == null ? 0 : locationDisplay!.hashCode) +
    (connectionViewedDate == null ? 0 : connectionViewedDate!.hashCode) +
    (profileImage == null ? 0 : profileImage!.hashCode) +
    (title == null ? 0 : title!.hashCode) +
    (connectionAccountType == null ? 0 : connectionAccountType!.hashCode) +
    (trusted == null ? 0 : trusted!.hashCode) +
    (following == null ? 0 : following!.hashCode) +
    (friendRequested == null ? 0 : friendRequested!.hashCode) +
    (friendRequestPending == null ? 0 : friendRequestPending!.hashCode) +
    (blocked == null ? 0 : blocked!.hashCode) +
    (friend == null ? 0 : friend!.hashCode);

  @override
  String toString() => 'ConnectionResponse[connectionId=$connectionId, connectionAccountId=$connectionAccountId, connectionPendingId=$connectionPendingId, display=$display, locationDisplay=$locationDisplay, connectionViewedDate=$connectionViewedDate, profileImage=$profileImage, title=$title, connectionAccountType=$connectionAccountType, trusted=$trusted, following=$following, friendRequested=$friendRequested, friendRequestPending=$friendRequestPending, blocked=$blocked, friend=$friend]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.connectionId != null) {
      json[r'connectionId'] = this.connectionId;
    } else {
      json[r'connectionId'] = null;
    }
    if (this.connectionAccountId != null) {
      json[r'connectionAccountId'] = this.connectionAccountId;
    } else {
      json[r'connectionAccountId'] = null;
    }
    if (this.connectionPendingId != null) {
      json[r'connectionPendingId'] = this.connectionPendingId;
    } else {
      json[r'connectionPendingId'] = null;
    }
    if (this.display != null) {
      json[r'display'] = this.display;
    } else {
      json[r'display'] = null;
    }
    if (this.locationDisplay != null) {
      json[r'locationDisplay'] = this.locationDisplay;
    } else {
      json[r'locationDisplay'] = null;
    }
    if (this.connectionViewedDate != null) {
      json[r'connectionViewedDate'] = this.connectionViewedDate;
    } else {
      json[r'connectionViewedDate'] = null;
    }
    if (this.profileImage != null) {
      json[r'profileImage'] = this.profileImage;
    } else {
      json[r'profileImage'] = null;
    }
    if (this.title != null) {
      json[r'title'] = this.title;
    } else {
      json[r'title'] = null;
    }
    if (this.connectionAccountType != null) {
      json[r'connectionAccountType'] = this.connectionAccountType;
    } else {
      json[r'connectionAccountType'] = null;
    }
    if (this.trusted != null) {
      json[r'trusted'] = this.trusted;
    } else {
      json[r'trusted'] = null;
    }
    if (this.following != null) {
      json[r'following'] = this.following;
    } else {
      json[r'following'] = null;
    }
    if (this.friendRequested != null) {
      json[r'friendRequested'] = this.friendRequested;
    } else {
      json[r'friendRequested'] = null;
    }
    if (this.friendRequestPending != null) {
      json[r'friendRequestPending'] = this.friendRequestPending;
    } else {
      json[r'friendRequestPending'] = null;
    }
    if (this.blocked != null) {
      json[r'blocked'] = this.blocked;
    } else {
      json[r'blocked'] = null;
    }
    if (this.friend != null) {
      json[r'friend'] = this.friend;
    } else {
      json[r'friend'] = null;
    }
    return json;
  }

  /// Returns a new [ConnectionResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ConnectionResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ConnectionResponse[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ConnectionResponse[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ConnectionResponse(
        connectionId: mapValueOfType<int>(json, r'connectionId'),
        connectionAccountId: mapValueOfType<String>(json, r'connectionAccountId'),
        connectionPendingId: mapValueOfType<String>(json, r'connectionPendingId'),
        display: mapValueOfType<String>(json, r'display'),
        locationDisplay: mapValueOfType<String>(json, r'locationDisplay'),
        connectionViewedDate: mapValueOfType<int>(json, r'connectionViewedDate'),
        profileImage: mapValueOfType<String>(json, r'profileImage'),
        title: mapValueOfType<String>(json, r'title'),
        connectionAccountType: mapValueOfType<String>(json, r'connectionAccountType'),
        trusted: mapValueOfType<bool>(json, r'trusted'),
        following: mapValueOfType<bool>(json, r'following'),
        friendRequested: mapValueOfType<bool>(json, r'friendRequested'),
        friendRequestPending: mapValueOfType<bool>(json, r'friendRequestPending'),
        blocked: mapValueOfType<bool>(json, r'blocked'),
        friend: mapValueOfType<bool>(json, r'friend'),
      );
    }
    return null;
  }

  static List<ConnectionResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ConnectionResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ConnectionResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ConnectionResponse> mapFromJson(dynamic json) {
    final map = <String, ConnectionResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ConnectionResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ConnectionResponse-objects as value to a dart map
  static Map<String, List<ConnectionResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ConnectionResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ConnectionResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

