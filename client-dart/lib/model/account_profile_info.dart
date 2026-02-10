//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class AccountProfileInfo {
  /// Returns a new [AccountProfileInfo] instance.
  AccountProfileInfo({
    this.id,
    this.created,
    this.updated,
    this.active,
    this.valid,
    this.account,
    this.gender,
    this.birthday,
    this.ageGroup,
    this.preferredMinAge,
    this.preferredMaxAge,
    this.preferredMinHeight,
    this.preferredMaxHeight,
    this.preferredGender,
    this.preferredEducation,
    this.preferredEducationIndex,
    this.preferredBodyType,
    this.preferredEthnicity,
    this.preferredLocation,
    this.preferredLocationRange,
    this.height,
    this.heightIndex,
    this.ethnicity,
    this.bodyType,
    this.maritalStatus,
    this.children,
    this.religion,
    this.education,
    this.educationIndex,
    this.smoke,
    this.drink,
    this.companionship,
    this.companionshipIndex,
    this.developmentPlatforms = const [],
    this.matchToken,
    this.matchString,
    this.noneZeroMatchToken,
    this.preferredMaxBirthday,
    this.preferredMinBirthday,
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
  DateTime? created;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? updated;

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
  Account? account;

  AccountProfileInfoGenderEnum? gender;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? birthday;

  AccountProfileInfoAgeGroupEnum? ageGroup;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? preferredMinAge;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? preferredMaxAge;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? preferredMinHeight;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? preferredMaxHeight;

  AccountProfileInfoPreferredGenderEnum? preferredGender;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? preferredEducation;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? preferredEducationIndex;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? preferredBodyType;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? preferredEthnicity;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? preferredLocation;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? preferredLocationRange;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? height;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? heightIndex;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? ethnicity;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? bodyType;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? maritalStatus;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? children;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? religion;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? education;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? educationIndex;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? smoke;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? drink;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? companionship;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? companionshipIndex;

  List<AccountProfileInfoDevelopmentPlatformsEnum> developmentPlatforms;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? matchToken;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? matchString;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? noneZeroMatchToken;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? preferredMaxBirthday;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? preferredMinBirthday;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AccountProfileInfo &&
    other.id == id &&
    other.created == created &&
    other.updated == updated &&
    other.active == active &&
    other.valid == valid &&
    other.account == account &&
    other.gender == gender &&
    other.birthday == birthday &&
    other.ageGroup == ageGroup &&
    other.preferredMinAge == preferredMinAge &&
    other.preferredMaxAge == preferredMaxAge &&
    other.preferredMinHeight == preferredMinHeight &&
    other.preferredMaxHeight == preferredMaxHeight &&
    other.preferredGender == preferredGender &&
    other.preferredEducation == preferredEducation &&
    other.preferredEducationIndex == preferredEducationIndex &&
    other.preferredBodyType == preferredBodyType &&
    other.preferredEthnicity == preferredEthnicity &&
    other.preferredLocation == preferredLocation &&
    other.preferredLocationRange == preferredLocationRange &&
    other.height == height &&
    other.heightIndex == heightIndex &&
    other.ethnicity == ethnicity &&
    other.bodyType == bodyType &&
    other.maritalStatus == maritalStatus &&
    other.children == children &&
    other.religion == religion &&
    other.education == education &&
    other.educationIndex == educationIndex &&
    other.smoke == smoke &&
    other.drink == drink &&
    other.companionship == companionship &&
    other.companionshipIndex == companionshipIndex &&
    _deepEquality.equals(other.developmentPlatforms, developmentPlatforms) &&
    other.matchToken == matchToken &&
    other.matchString == matchString &&
    other.noneZeroMatchToken == noneZeroMatchToken &&
    other.preferredMaxBirthday == preferredMaxBirthday &&
    other.preferredMinBirthday == preferredMinBirthday;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (created == null ? 0 : created!.hashCode) +
    (updated == null ? 0 : updated!.hashCode) +
    (active == null ? 0 : active!.hashCode) +
    (valid == null ? 0 : valid!.hashCode) +
    (account == null ? 0 : account!.hashCode) +
    (gender == null ? 0 : gender!.hashCode) +
    (birthday == null ? 0 : birthday!.hashCode) +
    (ageGroup == null ? 0 : ageGroup!.hashCode) +
    (preferredMinAge == null ? 0 : preferredMinAge!.hashCode) +
    (preferredMaxAge == null ? 0 : preferredMaxAge!.hashCode) +
    (preferredMinHeight == null ? 0 : preferredMinHeight!.hashCode) +
    (preferredMaxHeight == null ? 0 : preferredMaxHeight!.hashCode) +
    (preferredGender == null ? 0 : preferredGender!.hashCode) +
    (preferredEducation == null ? 0 : preferredEducation!.hashCode) +
    (preferredEducationIndex == null ? 0 : preferredEducationIndex!.hashCode) +
    (preferredBodyType == null ? 0 : preferredBodyType!.hashCode) +
    (preferredEthnicity == null ? 0 : preferredEthnicity!.hashCode) +
    (preferredLocation == null ? 0 : preferredLocation!.hashCode) +
    (preferredLocationRange == null ? 0 : preferredLocationRange!.hashCode) +
    (height == null ? 0 : height!.hashCode) +
    (heightIndex == null ? 0 : heightIndex!.hashCode) +
    (ethnicity == null ? 0 : ethnicity!.hashCode) +
    (bodyType == null ? 0 : bodyType!.hashCode) +
    (maritalStatus == null ? 0 : maritalStatus!.hashCode) +
    (children == null ? 0 : children!.hashCode) +
    (religion == null ? 0 : religion!.hashCode) +
    (education == null ? 0 : education!.hashCode) +
    (educationIndex == null ? 0 : educationIndex!.hashCode) +
    (smoke == null ? 0 : smoke!.hashCode) +
    (drink == null ? 0 : drink!.hashCode) +
    (companionship == null ? 0 : companionship!.hashCode) +
    (companionshipIndex == null ? 0 : companionshipIndex!.hashCode) +
    (developmentPlatforms.hashCode) +
    (matchToken == null ? 0 : matchToken!.hashCode) +
    (matchString == null ? 0 : matchString!.hashCode) +
    (noneZeroMatchToken == null ? 0 : noneZeroMatchToken!.hashCode) +
    (preferredMaxBirthday == null ? 0 : preferredMaxBirthday!.hashCode) +
    (preferredMinBirthday == null ? 0 : preferredMinBirthday!.hashCode);

  @override
  String toString() => 'AccountProfileInfo[id=$id, created=$created, updated=$updated, active=$active, valid=$valid, account=$account, gender=$gender, birthday=$birthday, ageGroup=$ageGroup, preferredMinAge=$preferredMinAge, preferredMaxAge=$preferredMaxAge, preferredMinHeight=$preferredMinHeight, preferredMaxHeight=$preferredMaxHeight, preferredGender=$preferredGender, preferredEducation=$preferredEducation, preferredEducationIndex=$preferredEducationIndex, preferredBodyType=$preferredBodyType, preferredEthnicity=$preferredEthnicity, preferredLocation=$preferredLocation, preferredLocationRange=$preferredLocationRange, height=$height, heightIndex=$heightIndex, ethnicity=$ethnicity, bodyType=$bodyType, maritalStatus=$maritalStatus, children=$children, religion=$religion, education=$education, educationIndex=$educationIndex, smoke=$smoke, drink=$drink, companionship=$companionship, companionshipIndex=$companionshipIndex, developmentPlatforms=$developmentPlatforms, matchToken=$matchToken, matchString=$matchString, noneZeroMatchToken=$noneZeroMatchToken, preferredMaxBirthday=$preferredMaxBirthday, preferredMinBirthday=$preferredMinBirthday]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.created != null) {
      json[r'created'] = this.created!.toUtc().toIso8601String();
    } else {
      json[r'created'] = null;
    }
    if (this.updated != null) {
      json[r'updated'] = this.updated!.toUtc().toIso8601String();
    } else {
      json[r'updated'] = null;
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
    if (this.account != null) {
      json[r'account'] = this.account;
    } else {
      json[r'account'] = null;
    }
    if (this.gender != null) {
      json[r'gender'] = this.gender;
    } else {
      json[r'gender'] = null;
    }
    if (this.birthday != null) {
      json[r'birthday'] = this.birthday!.toUtc().toIso8601String();
    } else {
      json[r'birthday'] = null;
    }
    if (this.ageGroup != null) {
      json[r'ageGroup'] = this.ageGroup;
    } else {
      json[r'ageGroup'] = null;
    }
    if (this.preferredMinAge != null) {
      json[r'preferredMinAge'] = this.preferredMinAge;
    } else {
      json[r'preferredMinAge'] = null;
    }
    if (this.preferredMaxAge != null) {
      json[r'preferredMaxAge'] = this.preferredMaxAge;
    } else {
      json[r'preferredMaxAge'] = null;
    }
    if (this.preferredMinHeight != null) {
      json[r'preferredMinHeight'] = this.preferredMinHeight;
    } else {
      json[r'preferredMinHeight'] = null;
    }
    if (this.preferredMaxHeight != null) {
      json[r'preferredMaxHeight'] = this.preferredMaxHeight;
    } else {
      json[r'preferredMaxHeight'] = null;
    }
    if (this.preferredGender != null) {
      json[r'preferredGender'] = this.preferredGender;
    } else {
      json[r'preferredGender'] = null;
    }
    if (this.preferredEducation != null) {
      json[r'preferredEducation'] = this.preferredEducation;
    } else {
      json[r'preferredEducation'] = null;
    }
    if (this.preferredEducationIndex != null) {
      json[r'preferredEducationIndex'] = this.preferredEducationIndex;
    } else {
      json[r'preferredEducationIndex'] = null;
    }
    if (this.preferredBodyType != null) {
      json[r'preferredBodyType'] = this.preferredBodyType;
    } else {
      json[r'preferredBodyType'] = null;
    }
    if (this.preferredEthnicity != null) {
      json[r'preferredEthnicity'] = this.preferredEthnicity;
    } else {
      json[r'preferredEthnicity'] = null;
    }
    if (this.preferredLocation != null) {
      json[r'preferredLocation'] = this.preferredLocation;
    } else {
      json[r'preferredLocation'] = null;
    }
    if (this.preferredLocationRange != null) {
      json[r'preferredLocationRange'] = this.preferredLocationRange;
    } else {
      json[r'preferredLocationRange'] = null;
    }
    if (this.height != null) {
      json[r'height'] = this.height;
    } else {
      json[r'height'] = null;
    }
    if (this.heightIndex != null) {
      json[r'heightIndex'] = this.heightIndex;
    } else {
      json[r'heightIndex'] = null;
    }
    if (this.ethnicity != null) {
      json[r'ethnicity'] = this.ethnicity;
    } else {
      json[r'ethnicity'] = null;
    }
    if (this.bodyType != null) {
      json[r'bodyType'] = this.bodyType;
    } else {
      json[r'bodyType'] = null;
    }
    if (this.maritalStatus != null) {
      json[r'maritalStatus'] = this.maritalStatus;
    } else {
      json[r'maritalStatus'] = null;
    }
    if (this.children != null) {
      json[r'children'] = this.children;
    } else {
      json[r'children'] = null;
    }
    if (this.religion != null) {
      json[r'religion'] = this.religion;
    } else {
      json[r'religion'] = null;
    }
    if (this.education != null) {
      json[r'education'] = this.education;
    } else {
      json[r'education'] = null;
    }
    if (this.educationIndex != null) {
      json[r'educationIndex'] = this.educationIndex;
    } else {
      json[r'educationIndex'] = null;
    }
    if (this.smoke != null) {
      json[r'smoke'] = this.smoke;
    } else {
      json[r'smoke'] = null;
    }
    if (this.drink != null) {
      json[r'drink'] = this.drink;
    } else {
      json[r'drink'] = null;
    }
    if (this.companionship != null) {
      json[r'companionship'] = this.companionship;
    } else {
      json[r'companionship'] = null;
    }
    if (this.companionshipIndex != null) {
      json[r'companionshipIndex'] = this.companionshipIndex;
    } else {
      json[r'companionshipIndex'] = null;
    }
      json[r'developmentPlatforms'] = this.developmentPlatforms;
    if (this.matchToken != null) {
      json[r'matchToken'] = this.matchToken;
    } else {
      json[r'matchToken'] = null;
    }
    if (this.matchString != null) {
      json[r'matchString'] = this.matchString;
    } else {
      json[r'matchString'] = null;
    }
    if (this.noneZeroMatchToken != null) {
      json[r'noneZeroMatchToken'] = this.noneZeroMatchToken;
    } else {
      json[r'noneZeroMatchToken'] = null;
    }
    if (this.preferredMaxBirthday != null) {
      json[r'preferredMaxBirthday'] = this.preferredMaxBirthday!.toUtc().toIso8601String();
    } else {
      json[r'preferredMaxBirthday'] = null;
    }
    if (this.preferredMinBirthday != null) {
      json[r'preferredMinBirthday'] = this.preferredMinBirthday!.toUtc().toIso8601String();
    } else {
      json[r'preferredMinBirthday'] = null;
    }
    return json;
  }

  /// Returns a new [AccountProfileInfo] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AccountProfileInfo? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "AccountProfileInfo[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "AccountProfileInfo[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AccountProfileInfo(
        id: mapValueOfType<int>(json, r'id'),
        created: mapDateTime(json, r'created', r''),
        updated: mapDateTime(json, r'updated', r''),
        active: mapValueOfType<bool>(json, r'active'),
        valid: mapValueOfType<bool>(json, r'valid'),
        account: Account.fromJson(json[r'account']),
        gender: AccountProfileInfoGenderEnum.fromJson(json[r'gender']),
        birthday: mapDateTime(json, r'birthday', r''),
        ageGroup: AccountProfileInfoAgeGroupEnum.fromJson(json[r'ageGroup']),
        preferredMinAge: mapValueOfType<int>(json, r'preferredMinAge'),
        preferredMaxAge: mapValueOfType<int>(json, r'preferredMaxAge'),
        preferredMinHeight: mapValueOfType<int>(json, r'preferredMinHeight'),
        preferredMaxHeight: mapValueOfType<int>(json, r'preferredMaxHeight'),
        preferredGender: AccountProfileInfoPreferredGenderEnum.fromJson(json[r'preferredGender']),
        preferredEducation: mapValueOfType<String>(json, r'preferredEducation'),
        preferredEducationIndex: mapValueOfType<int>(json, r'preferredEducationIndex'),
        preferredBodyType: mapValueOfType<String>(json, r'preferredBodyType'),
        preferredEthnicity: mapValueOfType<String>(json, r'preferredEthnicity'),
        preferredLocation: mapValueOfType<String>(json, r'preferredLocation'),
        preferredLocationRange: mapValueOfType<double>(json, r'preferredLocationRange'),
        height: mapValueOfType<String>(json, r'height'),
        heightIndex: mapValueOfType<int>(json, r'heightIndex'),
        ethnicity: mapValueOfType<String>(json, r'ethnicity'),
        bodyType: mapValueOfType<String>(json, r'bodyType'),
        maritalStatus: mapValueOfType<String>(json, r'maritalStatus'),
        children: mapValueOfType<String>(json, r'children'),
        religion: mapValueOfType<String>(json, r'religion'),
        education: mapValueOfType<String>(json, r'education'),
        educationIndex: mapValueOfType<int>(json, r'educationIndex'),
        smoke: mapValueOfType<String>(json, r'smoke'),
        drink: mapValueOfType<String>(json, r'drink'),
        companionship: mapValueOfType<String>(json, r'companionship'),
        companionshipIndex: mapValueOfType<int>(json, r'companionshipIndex'),
        developmentPlatforms: AccountProfileInfoDevelopmentPlatformsEnum.listFromJson(json[r'developmentPlatforms']),
        matchToken: mapValueOfType<int>(json, r'matchToken'),
        matchString: mapValueOfType<String>(json, r'matchString'),
        noneZeroMatchToken: mapValueOfType<int>(json, r'noneZeroMatchToken'),
        preferredMaxBirthday: mapDateTime(json, r'preferredMaxBirthday', r''),
        preferredMinBirthday: mapDateTime(json, r'preferredMinBirthday', r''),
      );
    }
    return null;
  }

  static List<AccountProfileInfo> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AccountProfileInfo>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AccountProfileInfo.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AccountProfileInfo> mapFromJson(dynamic json) {
    final map = <String, AccountProfileInfo>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AccountProfileInfo.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AccountProfileInfo-objects as value to a dart map
  static Map<String, List<AccountProfileInfo>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AccountProfileInfo>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AccountProfileInfo.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}


class AccountProfileInfoGenderEnum {
  /// Instantiate a new enum with the provided [value].
  const AccountProfileInfoGenderEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const MALE = AccountProfileInfoGenderEnum._(r'MALE');
  static const FEMALE = AccountProfileInfoGenderEnum._(r'FEMALE');
  static const ANY = AccountProfileInfoGenderEnum._(r'ANY');

  /// List of all possible values in this [enum][AccountProfileInfoGenderEnum].
  static const values = <AccountProfileInfoGenderEnum>[
    MALE,
    FEMALE,
    ANY,
  ];

  static AccountProfileInfoGenderEnum? fromJson(dynamic value) => AccountProfileInfoGenderEnumTypeTransformer().decode(value);

  static List<AccountProfileInfoGenderEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AccountProfileInfoGenderEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AccountProfileInfoGenderEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [AccountProfileInfoGenderEnum] to String,
/// and [decode] dynamic data back to [AccountProfileInfoGenderEnum].
class AccountProfileInfoGenderEnumTypeTransformer {
  factory AccountProfileInfoGenderEnumTypeTransformer() => _instance ??= const AccountProfileInfoGenderEnumTypeTransformer._();

  const AccountProfileInfoGenderEnumTypeTransformer._();

  String encode(AccountProfileInfoGenderEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a AccountProfileInfoGenderEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  AccountProfileInfoGenderEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'MALE': return AccountProfileInfoGenderEnum.MALE;
        case r'FEMALE': return AccountProfileInfoGenderEnum.FEMALE;
        case r'ANY': return AccountProfileInfoGenderEnum.ANY;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [AccountProfileInfoGenderEnumTypeTransformer] instance.
  static AccountProfileInfoGenderEnumTypeTransformer? _instance;
}



class AccountProfileInfoAgeGroupEnum {
  /// Instantiate a new enum with the provided [value].
  const AccountProfileInfoAgeGroupEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const aGE013 = AccountProfileInfoAgeGroupEnum._(r'AGE_0_13');
  static const aGE1417 = AccountProfileInfoAgeGroupEnum._(r'AGE_14_17');
  static const aGE1822 = AccountProfileInfoAgeGroupEnum._(r'AGE_18_22');
  static const aGE2330 = AccountProfileInfoAgeGroupEnum._(r'AGE_23_30');
  static const aGE3154 = AccountProfileInfoAgeGroupEnum._(r'AGE_31_54');
  static const aGE55PLUS = AccountProfileInfoAgeGroupEnum._(r'AGE_55_PLUS');

  /// List of all possible values in this [enum][AccountProfileInfoAgeGroupEnum].
  static const values = <AccountProfileInfoAgeGroupEnum>[
    aGE013,
    aGE1417,
    aGE1822,
    aGE2330,
    aGE3154,
    aGE55PLUS,
  ];

  static AccountProfileInfoAgeGroupEnum? fromJson(dynamic value) => AccountProfileInfoAgeGroupEnumTypeTransformer().decode(value);

  static List<AccountProfileInfoAgeGroupEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AccountProfileInfoAgeGroupEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AccountProfileInfoAgeGroupEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [AccountProfileInfoAgeGroupEnum] to String,
/// and [decode] dynamic data back to [AccountProfileInfoAgeGroupEnum].
class AccountProfileInfoAgeGroupEnumTypeTransformer {
  factory AccountProfileInfoAgeGroupEnumTypeTransformer() => _instance ??= const AccountProfileInfoAgeGroupEnumTypeTransformer._();

  const AccountProfileInfoAgeGroupEnumTypeTransformer._();

  String encode(AccountProfileInfoAgeGroupEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a AccountProfileInfoAgeGroupEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  AccountProfileInfoAgeGroupEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'AGE_0_13': return AccountProfileInfoAgeGroupEnum.aGE013;
        case r'AGE_14_17': return AccountProfileInfoAgeGroupEnum.aGE1417;
        case r'AGE_18_22': return AccountProfileInfoAgeGroupEnum.aGE1822;
        case r'AGE_23_30': return AccountProfileInfoAgeGroupEnum.aGE2330;
        case r'AGE_31_54': return AccountProfileInfoAgeGroupEnum.aGE3154;
        case r'AGE_55_PLUS': return AccountProfileInfoAgeGroupEnum.aGE55PLUS;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [AccountProfileInfoAgeGroupEnumTypeTransformer] instance.
  static AccountProfileInfoAgeGroupEnumTypeTransformer? _instance;
}



class AccountProfileInfoPreferredGenderEnum {
  /// Instantiate a new enum with the provided [value].
  const AccountProfileInfoPreferredGenderEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const MALE = AccountProfileInfoPreferredGenderEnum._(r'MALE');
  static const FEMALE = AccountProfileInfoPreferredGenderEnum._(r'FEMALE');
  static const ANY = AccountProfileInfoPreferredGenderEnum._(r'ANY');

  /// List of all possible values in this [enum][AccountProfileInfoPreferredGenderEnum].
  static const values = <AccountProfileInfoPreferredGenderEnum>[
    MALE,
    FEMALE,
    ANY,
  ];

  static AccountProfileInfoPreferredGenderEnum? fromJson(dynamic value) => AccountProfileInfoPreferredGenderEnumTypeTransformer().decode(value);

  static List<AccountProfileInfoPreferredGenderEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AccountProfileInfoPreferredGenderEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AccountProfileInfoPreferredGenderEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [AccountProfileInfoPreferredGenderEnum] to String,
/// and [decode] dynamic data back to [AccountProfileInfoPreferredGenderEnum].
class AccountProfileInfoPreferredGenderEnumTypeTransformer {
  factory AccountProfileInfoPreferredGenderEnumTypeTransformer() => _instance ??= const AccountProfileInfoPreferredGenderEnumTypeTransformer._();

  const AccountProfileInfoPreferredGenderEnumTypeTransformer._();

  String encode(AccountProfileInfoPreferredGenderEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a AccountProfileInfoPreferredGenderEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  AccountProfileInfoPreferredGenderEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'MALE': return AccountProfileInfoPreferredGenderEnum.MALE;
        case r'FEMALE': return AccountProfileInfoPreferredGenderEnum.FEMALE;
        case r'ANY': return AccountProfileInfoPreferredGenderEnum.ANY;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [AccountProfileInfoPreferredGenderEnumTypeTransformer] instance.
  static AccountProfileInfoPreferredGenderEnumTypeTransformer? _instance;
}



class AccountProfileInfoDevelopmentPlatformsEnum {
  /// Instantiate a new enum with the provided [value].
  const AccountProfileInfoDevelopmentPlatformsEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const MAC = AccountProfileInfoDevelopmentPlatformsEnum._(r'MAC');
  static const WINDOWS = AccountProfileInfoDevelopmentPlatformsEnum._(r'WINDOWS');
  static const IOS = AccountProfileInfoDevelopmentPlatformsEnum._(r'IOS');
  static const ANDROID = AccountProfileInfoDevelopmentPlatformsEnum._(r'ANDROID');
  static const WINDOWSPHONE = AccountProfileInfoDevelopmentPlatformsEnum._(r'WINDOWSPHONE');
  static const KINDLE = AccountProfileInfoDevelopmentPlatformsEnum._(r'KINDLE');
  static const uNITY3D = AccountProfileInfoDevelopmentPlatformsEnum._(r'UNITY3D');
  static const cOCOS2D = AccountProfileInfoDevelopmentPlatformsEnum._(r'COCOS2D');
  static const hTML5 = AccountProfileInfoDevelopmentPlatformsEnum._(r'HTML5');
  static const FACEBOOK = AccountProfileInfoDevelopmentPlatformsEnum._(r'FACEBOOK');

  /// List of all possible values in this [enum][AccountProfileInfoDevelopmentPlatformsEnum].
  static const values = <AccountProfileInfoDevelopmentPlatformsEnum>[
    MAC,
    WINDOWS,
    IOS,
    ANDROID,
    WINDOWSPHONE,
    KINDLE,
    uNITY3D,
    cOCOS2D,
    hTML5,
    FACEBOOK,
  ];

  static AccountProfileInfoDevelopmentPlatformsEnum? fromJson(dynamic value) => AccountProfileInfoDevelopmentPlatformsEnumTypeTransformer().decode(value);

  static List<AccountProfileInfoDevelopmentPlatformsEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AccountProfileInfoDevelopmentPlatformsEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AccountProfileInfoDevelopmentPlatformsEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [AccountProfileInfoDevelopmentPlatformsEnum] to String,
/// and [decode] dynamic data back to [AccountProfileInfoDevelopmentPlatformsEnum].
class AccountProfileInfoDevelopmentPlatformsEnumTypeTransformer {
  factory AccountProfileInfoDevelopmentPlatformsEnumTypeTransformer() => _instance ??= const AccountProfileInfoDevelopmentPlatformsEnumTypeTransformer._();

  const AccountProfileInfoDevelopmentPlatformsEnumTypeTransformer._();

  String encode(AccountProfileInfoDevelopmentPlatformsEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a AccountProfileInfoDevelopmentPlatformsEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  AccountProfileInfoDevelopmentPlatformsEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'MAC': return AccountProfileInfoDevelopmentPlatformsEnum.MAC;
        case r'WINDOWS': return AccountProfileInfoDevelopmentPlatformsEnum.WINDOWS;
        case r'IOS': return AccountProfileInfoDevelopmentPlatformsEnum.IOS;
        case r'ANDROID': return AccountProfileInfoDevelopmentPlatformsEnum.ANDROID;
        case r'WINDOWSPHONE': return AccountProfileInfoDevelopmentPlatformsEnum.WINDOWSPHONE;
        case r'KINDLE': return AccountProfileInfoDevelopmentPlatformsEnum.KINDLE;
        case r'UNITY3D': return AccountProfileInfoDevelopmentPlatformsEnum.uNITY3D;
        case r'COCOS2D': return AccountProfileInfoDevelopmentPlatformsEnum.cOCOS2D;
        case r'HTML5': return AccountProfileInfoDevelopmentPlatformsEnum.hTML5;
        case r'FACEBOOK': return AccountProfileInfoDevelopmentPlatformsEnum.FACEBOOK;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [AccountProfileInfoDevelopmentPlatformsEnumTypeTransformer] instance.
  static AccountProfileInfoDevelopmentPlatformsEnumTypeTransformer? _instance;
}


