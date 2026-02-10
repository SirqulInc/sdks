//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ProfileResponse {
  /// Returns a new [ProfileResponse] instance.
  ProfileResponse({
    this.valid,
    this.message,
    this.version,
    this.serializeNulls,
    this.startTimeLog,
    this.errorCode,
    this.request = const [],
    this.loginAccountId,
    this.validated,
    this.appInfo,
    this.canViewAppInfo,
    this.canViewFriendInfo,
    this.canViewProfileInfo,
    this.flagCount,
    this.friendInfo,
    this.isBlocked,
    this.isProfileOwner,
    this.metFlagThreshold,
    this.profileInfo,
    this.trusted,
    this.following,
    this.friendRequested,
    this.friendRequestPending,
    this.blocked,
    this.flagged,
    this.profileOwner,
    this.friend,
    this.returning,
  });

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
  String? message;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? version;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? serializeNulls;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? startTimeLog;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? errorCode;

  List<NameStringValueResponse> request;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? loginAccountId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? validated;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  AppInfoResponse? appInfo;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? canViewAppInfo;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? canViewFriendInfo;

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
  int? flagCount;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  ConnectionInfoResponse? friendInfo;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isBlocked;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isProfileOwner;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? metFlagThreshold;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  ProfileInfoResponse? profileInfo;

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
  bool? flagged;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? profileOwner;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? friend;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? returning;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ProfileResponse &&
    other.valid == valid &&
    other.message == message &&
    other.version == version &&
    other.serializeNulls == serializeNulls &&
    other.startTimeLog == startTimeLog &&
    other.errorCode == errorCode &&
    _deepEquality.equals(other.request, request) &&
    other.loginAccountId == loginAccountId &&
    other.validated == validated &&
    other.appInfo == appInfo &&
    other.canViewAppInfo == canViewAppInfo &&
    other.canViewFriendInfo == canViewFriendInfo &&
    other.canViewProfileInfo == canViewProfileInfo &&
    other.flagCount == flagCount &&
    other.friendInfo == friendInfo &&
    other.isBlocked == isBlocked &&
    other.isProfileOwner == isProfileOwner &&
    other.metFlagThreshold == metFlagThreshold &&
    other.profileInfo == profileInfo &&
    other.trusted == trusted &&
    other.following == following &&
    other.friendRequested == friendRequested &&
    other.friendRequestPending == friendRequestPending &&
    other.blocked == blocked &&
    other.flagged == flagged &&
    other.profileOwner == profileOwner &&
    other.friend == friend &&
    other.returning == returning;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (valid == null ? 0 : valid!.hashCode) +
    (message == null ? 0 : message!.hashCode) +
    (version == null ? 0 : version!.hashCode) +
    (serializeNulls == null ? 0 : serializeNulls!.hashCode) +
    (startTimeLog == null ? 0 : startTimeLog!.hashCode) +
    (errorCode == null ? 0 : errorCode!.hashCode) +
    (request.hashCode) +
    (loginAccountId == null ? 0 : loginAccountId!.hashCode) +
    (validated == null ? 0 : validated!.hashCode) +
    (appInfo == null ? 0 : appInfo!.hashCode) +
    (canViewAppInfo == null ? 0 : canViewAppInfo!.hashCode) +
    (canViewFriendInfo == null ? 0 : canViewFriendInfo!.hashCode) +
    (canViewProfileInfo == null ? 0 : canViewProfileInfo!.hashCode) +
    (flagCount == null ? 0 : flagCount!.hashCode) +
    (friendInfo == null ? 0 : friendInfo!.hashCode) +
    (isBlocked == null ? 0 : isBlocked!.hashCode) +
    (isProfileOwner == null ? 0 : isProfileOwner!.hashCode) +
    (metFlagThreshold == null ? 0 : metFlagThreshold!.hashCode) +
    (profileInfo == null ? 0 : profileInfo!.hashCode) +
    (trusted == null ? 0 : trusted!.hashCode) +
    (following == null ? 0 : following!.hashCode) +
    (friendRequested == null ? 0 : friendRequested!.hashCode) +
    (friendRequestPending == null ? 0 : friendRequestPending!.hashCode) +
    (blocked == null ? 0 : blocked!.hashCode) +
    (flagged == null ? 0 : flagged!.hashCode) +
    (profileOwner == null ? 0 : profileOwner!.hashCode) +
    (friend == null ? 0 : friend!.hashCode) +
    (returning == null ? 0 : returning!.hashCode);

  @override
  String toString() => 'ProfileResponse[valid=$valid, message=$message, version=$version, serializeNulls=$serializeNulls, startTimeLog=$startTimeLog, errorCode=$errorCode, request=$request, loginAccountId=$loginAccountId, validated=$validated, appInfo=$appInfo, canViewAppInfo=$canViewAppInfo, canViewFriendInfo=$canViewFriendInfo, canViewProfileInfo=$canViewProfileInfo, flagCount=$flagCount, friendInfo=$friendInfo, isBlocked=$isBlocked, isProfileOwner=$isProfileOwner, metFlagThreshold=$metFlagThreshold, profileInfo=$profileInfo, trusted=$trusted, following=$following, friendRequested=$friendRequested, friendRequestPending=$friendRequestPending, blocked=$blocked, flagged=$flagged, profileOwner=$profileOwner, friend=$friend, returning=$returning]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.valid != null) {
      json[r'valid'] = this.valid;
    } else {
      json[r'valid'] = null;
    }
    if (this.message != null) {
      json[r'message'] = this.message;
    } else {
      json[r'message'] = null;
    }
    if (this.version != null) {
      json[r'version'] = this.version;
    } else {
      json[r'version'] = null;
    }
    if (this.serializeNulls != null) {
      json[r'serializeNulls'] = this.serializeNulls;
    } else {
      json[r'serializeNulls'] = null;
    }
    if (this.startTimeLog != null) {
      json[r'startTimeLog'] = this.startTimeLog;
    } else {
      json[r'startTimeLog'] = null;
    }
    if (this.errorCode != null) {
      json[r'errorCode'] = this.errorCode;
    } else {
      json[r'errorCode'] = null;
    }
      json[r'request'] = this.request;
    if (this.loginAccountId != null) {
      json[r'loginAccountId'] = this.loginAccountId;
    } else {
      json[r'loginAccountId'] = null;
    }
    if (this.validated != null) {
      json[r'validated'] = this.validated;
    } else {
      json[r'validated'] = null;
    }
    if (this.appInfo != null) {
      json[r'appInfo'] = this.appInfo;
    } else {
      json[r'appInfo'] = null;
    }
    if (this.canViewAppInfo != null) {
      json[r'canViewAppInfo'] = this.canViewAppInfo;
    } else {
      json[r'canViewAppInfo'] = null;
    }
    if (this.canViewFriendInfo != null) {
      json[r'canViewFriendInfo'] = this.canViewFriendInfo;
    } else {
      json[r'canViewFriendInfo'] = null;
    }
    if (this.canViewProfileInfo != null) {
      json[r'canViewProfileInfo'] = this.canViewProfileInfo;
    } else {
      json[r'canViewProfileInfo'] = null;
    }
    if (this.flagCount != null) {
      json[r'flagCount'] = this.flagCount;
    } else {
      json[r'flagCount'] = null;
    }
    if (this.friendInfo != null) {
      json[r'friendInfo'] = this.friendInfo;
    } else {
      json[r'friendInfo'] = null;
    }
    if (this.isBlocked != null) {
      json[r'isBlocked'] = this.isBlocked;
    } else {
      json[r'isBlocked'] = null;
    }
    if (this.isProfileOwner != null) {
      json[r'isProfileOwner'] = this.isProfileOwner;
    } else {
      json[r'isProfileOwner'] = null;
    }
    if (this.metFlagThreshold != null) {
      json[r'metFlagThreshold'] = this.metFlagThreshold;
    } else {
      json[r'metFlagThreshold'] = null;
    }
    if (this.profileInfo != null) {
      json[r'profileInfo'] = this.profileInfo;
    } else {
      json[r'profileInfo'] = null;
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
    if (this.flagged != null) {
      json[r'flagged'] = this.flagged;
    } else {
      json[r'flagged'] = null;
    }
    if (this.profileOwner != null) {
      json[r'profileOwner'] = this.profileOwner;
    } else {
      json[r'profileOwner'] = null;
    }
    if (this.friend != null) {
      json[r'friend'] = this.friend;
    } else {
      json[r'friend'] = null;
    }
    if (this.returning != null) {
      json[r'returning'] = this.returning;
    } else {
      json[r'returning'] = null;
    }
    return json;
  }

  /// Returns a new [ProfileResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ProfileResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ProfileResponse[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ProfileResponse[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ProfileResponse(
        valid: mapValueOfType<bool>(json, r'valid'),
        message: mapValueOfType<String>(json, r'message'),
        version: mapValueOfType<double>(json, r'version'),
        serializeNulls: mapValueOfType<bool>(json, r'serializeNulls'),
        startTimeLog: mapValueOfType<int>(json, r'startTimeLog'),
        errorCode: mapValueOfType<String>(json, r'errorCode'),
        request: NameStringValueResponse.listFromJson(json[r'request']),
        loginAccountId: mapValueOfType<int>(json, r'loginAccountId'),
        validated: mapValueOfType<bool>(json, r'validated'),
        appInfo: AppInfoResponse.fromJson(json[r'appInfo']),
        canViewAppInfo: mapValueOfType<bool>(json, r'canViewAppInfo'),
        canViewFriendInfo: mapValueOfType<bool>(json, r'canViewFriendInfo'),
        canViewProfileInfo: mapValueOfType<bool>(json, r'canViewProfileInfo'),
        flagCount: mapValueOfType<int>(json, r'flagCount'),
        friendInfo: ConnectionInfoResponse.fromJson(json[r'friendInfo']),
        isBlocked: mapValueOfType<bool>(json, r'isBlocked'),
        isProfileOwner: mapValueOfType<bool>(json, r'isProfileOwner'),
        metFlagThreshold: mapValueOfType<bool>(json, r'metFlagThreshold'),
        profileInfo: ProfileInfoResponse.fromJson(json[r'profileInfo']),
        trusted: mapValueOfType<bool>(json, r'trusted'),
        following: mapValueOfType<bool>(json, r'following'),
        friendRequested: mapValueOfType<bool>(json, r'friendRequested'),
        friendRequestPending: mapValueOfType<bool>(json, r'friendRequestPending'),
        blocked: mapValueOfType<bool>(json, r'blocked'),
        flagged: mapValueOfType<bool>(json, r'flagged'),
        profileOwner: mapValueOfType<bool>(json, r'profileOwner'),
        friend: mapValueOfType<bool>(json, r'friend'),
        returning: mapValueOfType<String>(json, r'returning'),
      );
    }
    return null;
  }

  static List<ProfileResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ProfileResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ProfileResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ProfileResponse> mapFromJson(dynamic json) {
    final map = <String, ProfileResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ProfileResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ProfileResponse-objects as value to a dart map
  static Map<String, List<ProfileResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ProfileResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ProfileResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

