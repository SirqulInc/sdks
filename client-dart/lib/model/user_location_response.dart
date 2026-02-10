//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class UserLocationResponse {
  /// Returns a new [UserLocationResponse] instance.
  UserLocationResponse({
    this.valid,
    this.message,
    this.version,
    this.serializeNulls,
    this.startTimeLog,
    this.errorCode,
    this.request = const [],
    this.accountId,
    this.locationDisplay,
    this.display,
    this.username,
    this.profileImage,
    this.profileAvatar,
    this.aboutUs,
    this.locale,
    this.summaryTitle,
    this.gender,
    this.age,
    this.gameExperience,
    this.contact,
    this.categories = const [],
    this.personalProfile,
    this.userSettings,
    this.latitude,
    this.longitude,
    this.currentPostalCode,
    this.accountType,
    this.premiumExpiration,
    this.matchIndex,
    this.tags,
    this.locationLastUpdated,
    this.distanceFromMe,
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
  int? accountId;

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
  String? display;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? username;

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
  AssetShortResponse? profileAvatar;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? aboutUs;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? locale;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? summaryTitle;

  UserLocationResponseGenderEnum? gender;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? age;

  UserLocationResponseGameExperienceEnum? gameExperience;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  ContactResponse? contact;

  List<CategoryResponse> categories;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  PersonalProfileResponse? personalProfile;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  UserSettingsResponse? userSettings;

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
  PostalCodeResponse? currentPostalCode;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? accountType;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? premiumExpiration;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? matchIndex;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? tags;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? locationLastUpdated;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? distanceFromMe;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? returning;

  @override
  bool operator ==(Object other) => identical(this, other) || other is UserLocationResponse &&
    other.valid == valid &&
    other.message == message &&
    other.version == version &&
    other.serializeNulls == serializeNulls &&
    other.startTimeLog == startTimeLog &&
    other.errorCode == errorCode &&
    _deepEquality.equals(other.request, request) &&
    other.accountId == accountId &&
    other.locationDisplay == locationDisplay &&
    other.display == display &&
    other.username == username &&
    other.profileImage == profileImage &&
    other.profileAvatar == profileAvatar &&
    other.aboutUs == aboutUs &&
    other.locale == locale &&
    other.summaryTitle == summaryTitle &&
    other.gender == gender &&
    other.age == age &&
    other.gameExperience == gameExperience &&
    other.contact == contact &&
    _deepEquality.equals(other.categories, categories) &&
    other.personalProfile == personalProfile &&
    other.userSettings == userSettings &&
    other.latitude == latitude &&
    other.longitude == longitude &&
    other.currentPostalCode == currentPostalCode &&
    other.accountType == accountType &&
    other.premiumExpiration == premiumExpiration &&
    other.matchIndex == matchIndex &&
    other.tags == tags &&
    other.locationLastUpdated == locationLastUpdated &&
    other.distanceFromMe == distanceFromMe &&
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
    (accountId == null ? 0 : accountId!.hashCode) +
    (locationDisplay == null ? 0 : locationDisplay!.hashCode) +
    (display == null ? 0 : display!.hashCode) +
    (username == null ? 0 : username!.hashCode) +
    (profileImage == null ? 0 : profileImage!.hashCode) +
    (profileAvatar == null ? 0 : profileAvatar!.hashCode) +
    (aboutUs == null ? 0 : aboutUs!.hashCode) +
    (locale == null ? 0 : locale!.hashCode) +
    (summaryTitle == null ? 0 : summaryTitle!.hashCode) +
    (gender == null ? 0 : gender!.hashCode) +
    (age == null ? 0 : age!.hashCode) +
    (gameExperience == null ? 0 : gameExperience!.hashCode) +
    (contact == null ? 0 : contact!.hashCode) +
    (categories.hashCode) +
    (personalProfile == null ? 0 : personalProfile!.hashCode) +
    (userSettings == null ? 0 : userSettings!.hashCode) +
    (latitude == null ? 0 : latitude!.hashCode) +
    (longitude == null ? 0 : longitude!.hashCode) +
    (currentPostalCode == null ? 0 : currentPostalCode!.hashCode) +
    (accountType == null ? 0 : accountType!.hashCode) +
    (premiumExpiration == null ? 0 : premiumExpiration!.hashCode) +
    (matchIndex == null ? 0 : matchIndex!.hashCode) +
    (tags == null ? 0 : tags!.hashCode) +
    (locationLastUpdated == null ? 0 : locationLastUpdated!.hashCode) +
    (distanceFromMe == null ? 0 : distanceFromMe!.hashCode) +
    (returning == null ? 0 : returning!.hashCode);

  @override
  String toString() => 'UserLocationResponse[valid=$valid, message=$message, version=$version, serializeNulls=$serializeNulls, startTimeLog=$startTimeLog, errorCode=$errorCode, request=$request, accountId=$accountId, locationDisplay=$locationDisplay, display=$display, username=$username, profileImage=$profileImage, profileAvatar=$profileAvatar, aboutUs=$aboutUs, locale=$locale, summaryTitle=$summaryTitle, gender=$gender, age=$age, gameExperience=$gameExperience, contact=$contact, categories=$categories, personalProfile=$personalProfile, userSettings=$userSettings, latitude=$latitude, longitude=$longitude, currentPostalCode=$currentPostalCode, accountType=$accountType, premiumExpiration=$premiumExpiration, matchIndex=$matchIndex, tags=$tags, locationLastUpdated=$locationLastUpdated, distanceFromMe=$distanceFromMe, returning=$returning]';

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
    if (this.accountId != null) {
      json[r'accountId'] = this.accountId;
    } else {
      json[r'accountId'] = null;
    }
    if (this.locationDisplay != null) {
      json[r'locationDisplay'] = this.locationDisplay;
    } else {
      json[r'locationDisplay'] = null;
    }
    if (this.display != null) {
      json[r'display'] = this.display;
    } else {
      json[r'display'] = null;
    }
    if (this.username != null) {
      json[r'username'] = this.username;
    } else {
      json[r'username'] = null;
    }
    if (this.profileImage != null) {
      json[r'profileImage'] = this.profileImage;
    } else {
      json[r'profileImage'] = null;
    }
    if (this.profileAvatar != null) {
      json[r'profileAvatar'] = this.profileAvatar;
    } else {
      json[r'profileAvatar'] = null;
    }
    if (this.aboutUs != null) {
      json[r'aboutUs'] = this.aboutUs;
    } else {
      json[r'aboutUs'] = null;
    }
    if (this.locale != null) {
      json[r'locale'] = this.locale;
    } else {
      json[r'locale'] = null;
    }
    if (this.summaryTitle != null) {
      json[r'summaryTitle'] = this.summaryTitle;
    } else {
      json[r'summaryTitle'] = null;
    }
    if (this.gender != null) {
      json[r'gender'] = this.gender;
    } else {
      json[r'gender'] = null;
    }
    if (this.age != null) {
      json[r'age'] = this.age;
    } else {
      json[r'age'] = null;
    }
    if (this.gameExperience != null) {
      json[r'gameExperience'] = this.gameExperience;
    } else {
      json[r'gameExperience'] = null;
    }
    if (this.contact != null) {
      json[r'contact'] = this.contact;
    } else {
      json[r'contact'] = null;
    }
      json[r'categories'] = this.categories;
    if (this.personalProfile != null) {
      json[r'personalProfile'] = this.personalProfile;
    } else {
      json[r'personalProfile'] = null;
    }
    if (this.userSettings != null) {
      json[r'userSettings'] = this.userSettings;
    } else {
      json[r'userSettings'] = null;
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
    if (this.currentPostalCode != null) {
      json[r'currentPostalCode'] = this.currentPostalCode;
    } else {
      json[r'currentPostalCode'] = null;
    }
    if (this.accountType != null) {
      json[r'accountType'] = this.accountType;
    } else {
      json[r'accountType'] = null;
    }
    if (this.premiumExpiration != null) {
      json[r'premiumExpiration'] = this.premiumExpiration;
    } else {
      json[r'premiumExpiration'] = null;
    }
    if (this.matchIndex != null) {
      json[r'matchIndex'] = this.matchIndex;
    } else {
      json[r'matchIndex'] = null;
    }
    if (this.tags != null) {
      json[r'tags'] = this.tags;
    } else {
      json[r'tags'] = null;
    }
    if (this.locationLastUpdated != null) {
      json[r'locationLastUpdated'] = this.locationLastUpdated;
    } else {
      json[r'locationLastUpdated'] = null;
    }
    if (this.distanceFromMe != null) {
      json[r'distanceFromMe'] = this.distanceFromMe;
    } else {
      json[r'distanceFromMe'] = null;
    }
    if (this.returning != null) {
      json[r'returning'] = this.returning;
    } else {
      json[r'returning'] = null;
    }
    return json;
  }

  /// Returns a new [UserLocationResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static UserLocationResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "UserLocationResponse[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "UserLocationResponse[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return UserLocationResponse(
        valid: mapValueOfType<bool>(json, r'valid'),
        message: mapValueOfType<String>(json, r'message'),
        version: mapValueOfType<double>(json, r'version'),
        serializeNulls: mapValueOfType<bool>(json, r'serializeNulls'),
        startTimeLog: mapValueOfType<int>(json, r'startTimeLog'),
        errorCode: mapValueOfType<String>(json, r'errorCode'),
        request: NameStringValueResponse.listFromJson(json[r'request']),
        accountId: mapValueOfType<int>(json, r'accountId'),
        locationDisplay: mapValueOfType<String>(json, r'locationDisplay'),
        display: mapValueOfType<String>(json, r'display'),
        username: mapValueOfType<String>(json, r'username'),
        profileImage: mapValueOfType<String>(json, r'profileImage'),
        profileAvatar: AssetShortResponse.fromJson(json[r'profileAvatar']),
        aboutUs: mapValueOfType<String>(json, r'aboutUs'),
        locale: mapValueOfType<String>(json, r'locale'),
        summaryTitle: mapValueOfType<String>(json, r'summaryTitle'),
        gender: UserLocationResponseGenderEnum.fromJson(json[r'gender']),
        age: mapValueOfType<String>(json, r'age'),
        gameExperience: UserLocationResponseGameExperienceEnum.fromJson(json[r'gameExperience']),
        contact: ContactResponse.fromJson(json[r'contact']),
        categories: CategoryResponse.listFromJson(json[r'categories']),
        personalProfile: PersonalProfileResponse.fromJson(json[r'personalProfile']),
        userSettings: UserSettingsResponse.fromJson(json[r'userSettings']),
        latitude: mapValueOfType<double>(json, r'latitude'),
        longitude: mapValueOfType<double>(json, r'longitude'),
        currentPostalCode: PostalCodeResponse.fromJson(json[r'currentPostalCode']),
        accountType: mapValueOfType<String>(json, r'accountType'),
        premiumExpiration: mapValueOfType<int>(json, r'premiumExpiration'),
        matchIndex: mapValueOfType<int>(json, r'matchIndex'),
        tags: mapValueOfType<String>(json, r'tags'),
        locationLastUpdated: mapValueOfType<int>(json, r'locationLastUpdated'),
        distanceFromMe: mapValueOfType<String>(json, r'distanceFromMe'),
        returning: mapValueOfType<String>(json, r'returning'),
      );
    }
    return null;
  }

  static List<UserLocationResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UserLocationResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UserLocationResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, UserLocationResponse> mapFromJson(dynamic json) {
    final map = <String, UserLocationResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = UserLocationResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of UserLocationResponse-objects as value to a dart map
  static Map<String, List<UserLocationResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<UserLocationResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = UserLocationResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}


class UserLocationResponseGenderEnum {
  /// Instantiate a new enum with the provided [value].
  const UserLocationResponseGenderEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const MALE = UserLocationResponseGenderEnum._(r'MALE');
  static const FEMALE = UserLocationResponseGenderEnum._(r'FEMALE');
  static const ANY = UserLocationResponseGenderEnum._(r'ANY');

  /// List of all possible values in this [enum][UserLocationResponseGenderEnum].
  static const values = <UserLocationResponseGenderEnum>[
    MALE,
    FEMALE,
    ANY,
  ];

  static UserLocationResponseGenderEnum? fromJson(dynamic value) => UserLocationResponseGenderEnumTypeTransformer().decode(value);

  static List<UserLocationResponseGenderEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UserLocationResponseGenderEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UserLocationResponseGenderEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [UserLocationResponseGenderEnum] to String,
/// and [decode] dynamic data back to [UserLocationResponseGenderEnum].
class UserLocationResponseGenderEnumTypeTransformer {
  factory UserLocationResponseGenderEnumTypeTransformer() => _instance ??= const UserLocationResponseGenderEnumTypeTransformer._();

  const UserLocationResponseGenderEnumTypeTransformer._();

  String encode(UserLocationResponseGenderEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a UserLocationResponseGenderEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  UserLocationResponseGenderEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'MALE': return UserLocationResponseGenderEnum.MALE;
        case r'FEMALE': return UserLocationResponseGenderEnum.FEMALE;
        case r'ANY': return UserLocationResponseGenderEnum.ANY;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [UserLocationResponseGenderEnumTypeTransformer] instance.
  static UserLocationResponseGenderEnumTypeTransformer? _instance;
}



class UserLocationResponseGameExperienceEnum {
  /// Instantiate a new enum with the provided [value].
  const UserLocationResponseGameExperienceEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const ANY = UserLocationResponseGameExperienceEnum._(r'ANY');
  static const NEW = UserLocationResponseGameExperienceEnum._(r'NEW');
  static const BEGINNER = UserLocationResponseGameExperienceEnum._(r'BEGINNER');
  static const INTERMEDIATE = UserLocationResponseGameExperienceEnum._(r'INTERMEDIATE');
  static const EXPERT = UserLocationResponseGameExperienceEnum._(r'EXPERT');

  /// List of all possible values in this [enum][UserLocationResponseGameExperienceEnum].
  static const values = <UserLocationResponseGameExperienceEnum>[
    ANY,
    NEW,
    BEGINNER,
    INTERMEDIATE,
    EXPERT,
  ];

  static UserLocationResponseGameExperienceEnum? fromJson(dynamic value) => UserLocationResponseGameExperienceEnumTypeTransformer().decode(value);

  static List<UserLocationResponseGameExperienceEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UserLocationResponseGameExperienceEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UserLocationResponseGameExperienceEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [UserLocationResponseGameExperienceEnum] to String,
/// and [decode] dynamic data back to [UserLocationResponseGameExperienceEnum].
class UserLocationResponseGameExperienceEnumTypeTransformer {
  factory UserLocationResponseGameExperienceEnumTypeTransformer() => _instance ??= const UserLocationResponseGameExperienceEnumTypeTransformer._();

  const UserLocationResponseGameExperienceEnumTypeTransformer._();

  String encode(UserLocationResponseGameExperienceEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a UserLocationResponseGameExperienceEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  UserLocationResponseGameExperienceEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'ANY': return UserLocationResponseGameExperienceEnum.ANY;
        case r'NEW': return UserLocationResponseGameExperienceEnum.NEW;
        case r'BEGINNER': return UserLocationResponseGameExperienceEnum.BEGINNER;
        case r'INTERMEDIATE': return UserLocationResponseGameExperienceEnum.INTERMEDIATE;
        case r'EXPERT': return UserLocationResponseGameExperienceEnum.EXPERT;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [UserLocationResponseGameExperienceEnumTypeTransformer] instance.
  static UserLocationResponseGameExperienceEnumTypeTransformer? _instance;
}


