//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EmployeeResponse {
  /// Returns a new [EmployeeResponse] instance.
  EmployeeResponse({
    this.accountId,
    this.locationDisplay,
    this.display,
    this.username,
    this.accountType,
    this.profileImage,
    this.gender,
    this.contactEmail,
    this.contact,
    this.manager,
    this.active,
    this.locations = const [],
    this.hasDelegateAccess,
    this.latitude,
    this.longitude,
    this.locationLastUpdated,
    this.locationCount,
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

  EmployeeResponseGenderEnum? gender;

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
  ContactResponse? contact;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  AccountMiniResponse? manager;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? active;

  List<RetailerLocationShortResponse> locations;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? hasDelegateAccess;

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
  int? locationLastUpdated;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? locationCount;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EmployeeResponse &&
    other.accountId == accountId &&
    other.locationDisplay == locationDisplay &&
    other.display == display &&
    other.username == username &&
    other.accountType == accountType &&
    other.profileImage == profileImage &&
    other.gender == gender &&
    other.contactEmail == contactEmail &&
    other.contact == contact &&
    other.manager == manager &&
    other.active == active &&
    _deepEquality.equals(other.locations, locations) &&
    other.hasDelegateAccess == hasDelegateAccess &&
    other.latitude == latitude &&
    other.longitude == longitude &&
    other.locationLastUpdated == locationLastUpdated &&
    other.locationCount == locationCount;

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
    (contact == null ? 0 : contact!.hashCode) +
    (manager == null ? 0 : manager!.hashCode) +
    (active == null ? 0 : active!.hashCode) +
    (locations.hashCode) +
    (hasDelegateAccess == null ? 0 : hasDelegateAccess!.hashCode) +
    (latitude == null ? 0 : latitude!.hashCode) +
    (longitude == null ? 0 : longitude!.hashCode) +
    (locationLastUpdated == null ? 0 : locationLastUpdated!.hashCode) +
    (locationCount == null ? 0 : locationCount!.hashCode);

  @override
  String toString() => 'EmployeeResponse[accountId=$accountId, locationDisplay=$locationDisplay, display=$display, username=$username, accountType=$accountType, profileImage=$profileImage, gender=$gender, contactEmail=$contactEmail, contact=$contact, manager=$manager, active=$active, locations=$locations, hasDelegateAccess=$hasDelegateAccess, latitude=$latitude, longitude=$longitude, locationLastUpdated=$locationLastUpdated, locationCount=$locationCount]';

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
    if (this.contact != null) {
      json[r'contact'] = this.contact;
    } else {
      json[r'contact'] = null;
    }
    if (this.manager != null) {
      json[r'manager'] = this.manager;
    } else {
      json[r'manager'] = null;
    }
    if (this.active != null) {
      json[r'active'] = this.active;
    } else {
      json[r'active'] = null;
    }
      json[r'locations'] = this.locations;
    if (this.hasDelegateAccess != null) {
      json[r'hasDelegateAccess'] = this.hasDelegateAccess;
    } else {
      json[r'hasDelegateAccess'] = null;
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
    if (this.locationLastUpdated != null) {
      json[r'locationLastUpdated'] = this.locationLastUpdated;
    } else {
      json[r'locationLastUpdated'] = null;
    }
    if (this.locationCount != null) {
      json[r'locationCount'] = this.locationCount;
    } else {
      json[r'locationCount'] = null;
    }
    return json;
  }

  /// Returns a new [EmployeeResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EmployeeResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EmployeeResponse[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EmployeeResponse[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EmployeeResponse(
        accountId: mapValueOfType<int>(json, r'accountId'),
        locationDisplay: mapValueOfType<String>(json, r'locationDisplay'),
        display: mapValueOfType<String>(json, r'display'),
        username: mapValueOfType<String>(json, r'username'),
        accountType: mapValueOfType<String>(json, r'accountType'),
        profileImage: mapValueOfType<String>(json, r'profileImage'),
        gender: EmployeeResponseGenderEnum.fromJson(json[r'gender']),
        contactEmail: mapValueOfType<String>(json, r'contactEmail'),
        contact: ContactResponse.fromJson(json[r'contact']),
        manager: AccountMiniResponse.fromJson(json[r'manager']),
        active: mapValueOfType<bool>(json, r'active'),
        locations: RetailerLocationShortResponse.listFromJson(json[r'locations']),
        hasDelegateAccess: mapValueOfType<bool>(json, r'hasDelegateAccess'),
        latitude: mapValueOfType<double>(json, r'latitude'),
        longitude: mapValueOfType<double>(json, r'longitude'),
        locationLastUpdated: mapValueOfType<int>(json, r'locationLastUpdated'),
        locationCount: mapValueOfType<int>(json, r'locationCount'),
      );
    }
    return null;
  }

  static List<EmployeeResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EmployeeResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EmployeeResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EmployeeResponse> mapFromJson(dynamic json) {
    final map = <String, EmployeeResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EmployeeResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EmployeeResponse-objects as value to a dart map
  static Map<String, List<EmployeeResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EmployeeResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EmployeeResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}


class EmployeeResponseGenderEnum {
  /// Instantiate a new enum with the provided [value].
  const EmployeeResponseGenderEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const MALE = EmployeeResponseGenderEnum._(r'MALE');
  static const FEMALE = EmployeeResponseGenderEnum._(r'FEMALE');
  static const ANY = EmployeeResponseGenderEnum._(r'ANY');

  /// List of all possible values in this [enum][EmployeeResponseGenderEnum].
  static const values = <EmployeeResponseGenderEnum>[
    MALE,
    FEMALE,
    ANY,
  ];

  static EmployeeResponseGenderEnum? fromJson(dynamic value) => EmployeeResponseGenderEnumTypeTransformer().decode(value);

  static List<EmployeeResponseGenderEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EmployeeResponseGenderEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EmployeeResponseGenderEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [EmployeeResponseGenderEnum] to String,
/// and [decode] dynamic data back to [EmployeeResponseGenderEnum].
class EmployeeResponseGenderEnumTypeTransformer {
  factory EmployeeResponseGenderEnumTypeTransformer() => _instance ??= const EmployeeResponseGenderEnumTypeTransformer._();

  const EmployeeResponseGenderEnumTypeTransformer._();

  String encode(EmployeeResponseGenderEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a EmployeeResponseGenderEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  EmployeeResponseGenderEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'MALE': return EmployeeResponseGenderEnum.MALE;
        case r'FEMALE': return EmployeeResponseGenderEnum.FEMALE;
        case r'ANY': return EmployeeResponseGenderEnum.ANY;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [EmployeeResponseGenderEnumTypeTransformer] instance.
  static EmployeeResponseGenderEnumTypeTransformer? _instance;
}


