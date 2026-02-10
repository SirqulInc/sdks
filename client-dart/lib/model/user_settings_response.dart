//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class UserSettingsResponse {
  /// Returns a new [UserSettingsResponse] instance.
  UserSettingsResponse({
    this.showAsZipcode,
    this.showExactLocation,
    this.showOthersExactLocation,
    this.suggestionCount,
    this.suggestionTimeFrame,
    this.suggestionMethod,
    this.notifications,
    this.publicShowFriendInfo,
    this.publicShowGameInfo,
    this.publicShowProfileInfo,
    this.favoriteVisibility,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? showAsZipcode;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? showExactLocation;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? showOthersExactLocation;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? suggestionCount;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? suggestionTimeFrame;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? suggestionMethod;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  NotificationSettingsResponse? notifications;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? publicShowFriendInfo;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? publicShowGameInfo;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? publicShowProfileInfo;

  UserSettingsResponseFavoriteVisibilityEnum? favoriteVisibility;

  @override
  bool operator ==(Object other) => identical(this, other) || other is UserSettingsResponse &&
    other.showAsZipcode == showAsZipcode &&
    other.showExactLocation == showExactLocation &&
    other.showOthersExactLocation == showOthersExactLocation &&
    other.suggestionCount == suggestionCount &&
    other.suggestionTimeFrame == suggestionTimeFrame &&
    other.suggestionMethod == suggestionMethod &&
    other.notifications == notifications &&
    other.publicShowFriendInfo == publicShowFriendInfo &&
    other.publicShowGameInfo == publicShowGameInfo &&
    other.publicShowProfileInfo == publicShowProfileInfo &&
    other.favoriteVisibility == favoriteVisibility;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (showAsZipcode == null ? 0 : showAsZipcode!.hashCode) +
    (showExactLocation == null ? 0 : showExactLocation!.hashCode) +
    (showOthersExactLocation == null ? 0 : showOthersExactLocation!.hashCode) +
    (suggestionCount == null ? 0 : suggestionCount!.hashCode) +
    (suggestionTimeFrame == null ? 0 : suggestionTimeFrame!.hashCode) +
    (suggestionMethod == null ? 0 : suggestionMethod!.hashCode) +
    (notifications == null ? 0 : notifications!.hashCode) +
    (publicShowFriendInfo == null ? 0 : publicShowFriendInfo!.hashCode) +
    (publicShowGameInfo == null ? 0 : publicShowGameInfo!.hashCode) +
    (publicShowProfileInfo == null ? 0 : publicShowProfileInfo!.hashCode) +
    (favoriteVisibility == null ? 0 : favoriteVisibility!.hashCode);

  @override
  String toString() => 'UserSettingsResponse[showAsZipcode=$showAsZipcode, showExactLocation=$showExactLocation, showOthersExactLocation=$showOthersExactLocation, suggestionCount=$suggestionCount, suggestionTimeFrame=$suggestionTimeFrame, suggestionMethod=$suggestionMethod, notifications=$notifications, publicShowFriendInfo=$publicShowFriendInfo, publicShowGameInfo=$publicShowGameInfo, publicShowProfileInfo=$publicShowProfileInfo, favoriteVisibility=$favoriteVisibility]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.showAsZipcode != null) {
      json[r'showAsZipcode'] = this.showAsZipcode;
    } else {
      json[r'showAsZipcode'] = null;
    }
    if (this.showExactLocation != null) {
      json[r'showExactLocation'] = this.showExactLocation;
    } else {
      json[r'showExactLocation'] = null;
    }
    if (this.showOthersExactLocation != null) {
      json[r'showOthersExactLocation'] = this.showOthersExactLocation;
    } else {
      json[r'showOthersExactLocation'] = null;
    }
    if (this.suggestionCount != null) {
      json[r'suggestionCount'] = this.suggestionCount;
    } else {
      json[r'suggestionCount'] = null;
    }
    if (this.suggestionTimeFrame != null) {
      json[r'suggestionTimeFrame'] = this.suggestionTimeFrame;
    } else {
      json[r'suggestionTimeFrame'] = null;
    }
    if (this.suggestionMethod != null) {
      json[r'suggestionMethod'] = this.suggestionMethod;
    } else {
      json[r'suggestionMethod'] = null;
    }
    if (this.notifications != null) {
      json[r'notifications'] = this.notifications;
    } else {
      json[r'notifications'] = null;
    }
    if (this.publicShowFriendInfo != null) {
      json[r'publicShowFriendInfo'] = this.publicShowFriendInfo;
    } else {
      json[r'publicShowFriendInfo'] = null;
    }
    if (this.publicShowGameInfo != null) {
      json[r'publicShowGameInfo'] = this.publicShowGameInfo;
    } else {
      json[r'publicShowGameInfo'] = null;
    }
    if (this.publicShowProfileInfo != null) {
      json[r'publicShowProfileInfo'] = this.publicShowProfileInfo;
    } else {
      json[r'publicShowProfileInfo'] = null;
    }
    if (this.favoriteVisibility != null) {
      json[r'favoriteVisibility'] = this.favoriteVisibility;
    } else {
      json[r'favoriteVisibility'] = null;
    }
    return json;
  }

  /// Returns a new [UserSettingsResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static UserSettingsResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "UserSettingsResponse[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "UserSettingsResponse[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return UserSettingsResponse(
        showAsZipcode: mapValueOfType<bool>(json, r'showAsZipcode'),
        showExactLocation: mapValueOfType<bool>(json, r'showExactLocation'),
        showOthersExactLocation: mapValueOfType<bool>(json, r'showOthersExactLocation'),
        suggestionCount: mapValueOfType<int>(json, r'suggestionCount'),
        suggestionTimeFrame: mapValueOfType<int>(json, r'suggestionTimeFrame'),
        suggestionMethod: mapValueOfType<String>(json, r'suggestionMethod'),
        notifications: NotificationSettingsResponse.fromJson(json[r'notifications']),
        publicShowFriendInfo: mapValueOfType<bool>(json, r'publicShowFriendInfo'),
        publicShowGameInfo: mapValueOfType<bool>(json, r'publicShowGameInfo'),
        publicShowProfileInfo: mapValueOfType<bool>(json, r'publicShowProfileInfo'),
        favoriteVisibility: UserSettingsResponseFavoriteVisibilityEnum.fromJson(json[r'favoriteVisibility']),
      );
    }
    return null;
  }

  static List<UserSettingsResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UserSettingsResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UserSettingsResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, UserSettingsResponse> mapFromJson(dynamic json) {
    final map = <String, UserSettingsResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = UserSettingsResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of UserSettingsResponse-objects as value to a dart map
  static Map<String, List<UserSettingsResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<UserSettingsResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = UserSettingsResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}


class UserSettingsResponseFavoriteVisibilityEnum {
  /// Instantiate a new enum with the provided [value].
  const UserSettingsResponseFavoriteVisibilityEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const PUBLIC = UserSettingsResponseFavoriteVisibilityEnum._(r'PUBLIC');
  static const PRIVATE = UserSettingsResponseFavoriteVisibilityEnum._(r'PRIVATE');
  static const FRIENDS = UserSettingsResponseFavoriteVisibilityEnum._(r'FRIENDS');

  /// List of all possible values in this [enum][UserSettingsResponseFavoriteVisibilityEnum].
  static const values = <UserSettingsResponseFavoriteVisibilityEnum>[
    PUBLIC,
    PRIVATE,
    FRIENDS,
  ];

  static UserSettingsResponseFavoriteVisibilityEnum? fromJson(dynamic value) => UserSettingsResponseFavoriteVisibilityEnumTypeTransformer().decode(value);

  static List<UserSettingsResponseFavoriteVisibilityEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UserSettingsResponseFavoriteVisibilityEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UserSettingsResponseFavoriteVisibilityEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [UserSettingsResponseFavoriteVisibilityEnum] to String,
/// and [decode] dynamic data back to [UserSettingsResponseFavoriteVisibilityEnum].
class UserSettingsResponseFavoriteVisibilityEnumTypeTransformer {
  factory UserSettingsResponseFavoriteVisibilityEnumTypeTransformer() => _instance ??= const UserSettingsResponseFavoriteVisibilityEnumTypeTransformer._();

  const UserSettingsResponseFavoriteVisibilityEnumTypeTransformer._();

  String encode(UserSettingsResponseFavoriteVisibilityEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a UserSettingsResponseFavoriteVisibilityEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  UserSettingsResponseFavoriteVisibilityEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'PUBLIC': return UserSettingsResponseFavoriteVisibilityEnum.PUBLIC;
        case r'PRIVATE': return UserSettingsResponseFavoriteVisibilityEnum.PRIVATE;
        case r'FRIENDS': return UserSettingsResponseFavoriteVisibilityEnum.FRIENDS;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [UserSettingsResponseFavoriteVisibilityEnumTypeTransformer] instance.
  static UserSettingsResponseFavoriteVisibilityEnumTypeTransformer? _instance;
}


