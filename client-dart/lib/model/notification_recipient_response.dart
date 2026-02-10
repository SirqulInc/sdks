//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class NotificationRecipientResponse {
  /// Returns a new [NotificationRecipientResponse] instance.
  NotificationRecipientResponse({
    this.accountId,
    this.locationDisplay,
    this.display,
    this.username,
    this.accountType,
    this.profileImage,
    this.gender,
    this.contactEmail,
    this.applicationId,
    this.appName,
    this.hasApns,
    this.hasGcm,
    this.hasEmail,
    this.hasSms,
  });

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
  String? accountType;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? profileImage;

  NotificationRecipientResponseGenderEnum? gender;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? contactEmail;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? applicationId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? appName;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? hasApns;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? hasGcm;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? hasEmail;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? hasSms;

  @override
  bool operator ==(Object other) => identical(this, other) || other is NotificationRecipientResponse &&
    other.accountId == accountId &&
    other.locationDisplay == locationDisplay &&
    other.display == display &&
    other.username == username &&
    other.accountType == accountType &&
    other.profileImage == profileImage &&
    other.gender == gender &&
    other.contactEmail == contactEmail &&
    other.applicationId == applicationId &&
    other.appName == appName &&
    other.hasApns == hasApns &&
    other.hasGcm == hasGcm &&
    other.hasEmail == hasEmail &&
    other.hasSms == hasSms;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (accountId == null ? 0 : accountId!.hashCode) +
    (locationDisplay == null ? 0 : locationDisplay!.hashCode) +
    (display == null ? 0 : display!.hashCode) +
    (username == null ? 0 : username!.hashCode) +
    (accountType == null ? 0 : accountType!.hashCode) +
    (profileImage == null ? 0 : profileImage!.hashCode) +
    (gender == null ? 0 : gender!.hashCode) +
    (contactEmail == null ? 0 : contactEmail!.hashCode) +
    (applicationId == null ? 0 : applicationId!.hashCode) +
    (appName == null ? 0 : appName!.hashCode) +
    (hasApns == null ? 0 : hasApns!.hashCode) +
    (hasGcm == null ? 0 : hasGcm!.hashCode) +
    (hasEmail == null ? 0 : hasEmail!.hashCode) +
    (hasSms == null ? 0 : hasSms!.hashCode);

  @override
  String toString() => 'NotificationRecipientResponse[accountId=$accountId, locationDisplay=$locationDisplay, display=$display, username=$username, accountType=$accountType, profileImage=$profileImage, gender=$gender, contactEmail=$contactEmail, applicationId=$applicationId, appName=$appName, hasApns=$hasApns, hasGcm=$hasGcm, hasEmail=$hasEmail, hasSms=$hasSms]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
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
    if (this.accountType != null) {
      json[r'accountType'] = this.accountType;
    } else {
      json[r'accountType'] = null;
    }
    if (this.profileImage != null) {
      json[r'profileImage'] = this.profileImage;
    } else {
      json[r'profileImage'] = null;
    }
    if (this.gender != null) {
      json[r'gender'] = this.gender;
    } else {
      json[r'gender'] = null;
    }
    if (this.contactEmail != null) {
      json[r'contactEmail'] = this.contactEmail;
    } else {
      json[r'contactEmail'] = null;
    }
    if (this.applicationId != null) {
      json[r'applicationId'] = this.applicationId;
    } else {
      json[r'applicationId'] = null;
    }
    if (this.appName != null) {
      json[r'appName'] = this.appName;
    } else {
      json[r'appName'] = null;
    }
    if (this.hasApns != null) {
      json[r'hasApns'] = this.hasApns;
    } else {
      json[r'hasApns'] = null;
    }
    if (this.hasGcm != null) {
      json[r'hasGcm'] = this.hasGcm;
    } else {
      json[r'hasGcm'] = null;
    }
    if (this.hasEmail != null) {
      json[r'hasEmail'] = this.hasEmail;
    } else {
      json[r'hasEmail'] = null;
    }
    if (this.hasSms != null) {
      json[r'hasSms'] = this.hasSms;
    } else {
      json[r'hasSms'] = null;
    }
    return json;
  }

  /// Returns a new [NotificationRecipientResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static NotificationRecipientResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "NotificationRecipientResponse[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "NotificationRecipientResponse[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return NotificationRecipientResponse(
        accountId: mapValueOfType<int>(json, r'accountId'),
        locationDisplay: mapValueOfType<String>(json, r'locationDisplay'),
        display: mapValueOfType<String>(json, r'display'),
        username: mapValueOfType<String>(json, r'username'),
        accountType: mapValueOfType<String>(json, r'accountType'),
        profileImage: mapValueOfType<String>(json, r'profileImage'),
        gender: NotificationRecipientResponseGenderEnum.fromJson(json[r'gender']),
        contactEmail: mapValueOfType<String>(json, r'contactEmail'),
        applicationId: mapValueOfType<int>(json, r'applicationId'),
        appName: mapValueOfType<String>(json, r'appName'),
        hasApns: mapValueOfType<bool>(json, r'hasApns'),
        hasGcm: mapValueOfType<bool>(json, r'hasGcm'),
        hasEmail: mapValueOfType<bool>(json, r'hasEmail'),
        hasSms: mapValueOfType<bool>(json, r'hasSms'),
      );
    }
    return null;
  }

  static List<NotificationRecipientResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <NotificationRecipientResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = NotificationRecipientResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, NotificationRecipientResponse> mapFromJson(dynamic json) {
    final map = <String, NotificationRecipientResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = NotificationRecipientResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of NotificationRecipientResponse-objects as value to a dart map
  static Map<String, List<NotificationRecipientResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<NotificationRecipientResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = NotificationRecipientResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}


class NotificationRecipientResponseGenderEnum {
  /// Instantiate a new enum with the provided [value].
  const NotificationRecipientResponseGenderEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const MALE = NotificationRecipientResponseGenderEnum._(r'MALE');
  static const FEMALE = NotificationRecipientResponseGenderEnum._(r'FEMALE');
  static const ANY = NotificationRecipientResponseGenderEnum._(r'ANY');

  /// List of all possible values in this [enum][NotificationRecipientResponseGenderEnum].
  static const values = <NotificationRecipientResponseGenderEnum>[
    MALE,
    FEMALE,
    ANY,
  ];

  static NotificationRecipientResponseGenderEnum? fromJson(dynamic value) => NotificationRecipientResponseGenderEnumTypeTransformer().decode(value);

  static List<NotificationRecipientResponseGenderEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <NotificationRecipientResponseGenderEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = NotificationRecipientResponseGenderEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [NotificationRecipientResponseGenderEnum] to String,
/// and [decode] dynamic data back to [NotificationRecipientResponseGenderEnum].
class NotificationRecipientResponseGenderEnumTypeTransformer {
  factory NotificationRecipientResponseGenderEnumTypeTransformer() => _instance ??= const NotificationRecipientResponseGenderEnumTypeTransformer._();

  const NotificationRecipientResponseGenderEnumTypeTransformer._();

  String encode(NotificationRecipientResponseGenderEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a NotificationRecipientResponseGenderEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  NotificationRecipientResponseGenderEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'MALE': return NotificationRecipientResponseGenderEnum.MALE;
        case r'FEMALE': return NotificationRecipientResponseGenderEnum.FEMALE;
        case r'ANY': return NotificationRecipientResponseGenderEnum.ANY;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [NotificationRecipientResponseGenderEnumTypeTransformer] instance.
  static NotificationRecipientResponseGenderEnumTypeTransformer? _instance;
}


