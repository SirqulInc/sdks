//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Audience {
  /// Returns a new [Audience] instance.
  Audience({
    this.id,
    this.active,
    this.valid,
    this.latitude,
    this.longitude,
    this.locationDescription,
    this.name,
    this.display,
    this.description,
    this.owner,
    this.gender,
    this.ageGroups = const [],
    this.gameExperienceLevel,
    this.deviceVersionRanges = const [],
    this.categories = const [],
    this.applications = const [],
    this.radius,
    this.locations = const [],
    this.sendSuggestion,
    this.startTimeOffset,
    this.endTimeOffset,
    this.target,
    this.associateContentName,
    this.polygon,
    this.associateType,
    this.associateId,
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
  String? locationDescription;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? display;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? description;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Account? owner;

  AudienceGenderEnum? gender;

  List<AudienceAgeGroupsEnum> ageGroups;

  AudienceGameExperienceLevelEnum? gameExperienceLevel;

  List<AudienceDeviceVersionRange> deviceVersionRanges;

  List<Category> categories;

  List<Application> applications;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? radius;

  List<AudienceLocation> locations;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? sendSuggestion;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? startTimeOffset;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? endTimeOffset;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  AudienceTargetType? target;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? associateContentName;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? polygon;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? associateType;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? associateId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Audience &&
    other.id == id &&
    other.active == active &&
    other.valid == valid &&
    other.latitude == latitude &&
    other.longitude == longitude &&
    other.locationDescription == locationDescription &&
    other.name == name &&
    other.display == display &&
    other.description == description &&
    other.owner == owner &&
    other.gender == gender &&
    _deepEquality.equals(other.ageGroups, ageGroups) &&
    other.gameExperienceLevel == gameExperienceLevel &&
    _deepEquality.equals(other.deviceVersionRanges, deviceVersionRanges) &&
    _deepEquality.equals(other.categories, categories) &&
    _deepEquality.equals(other.applications, applications) &&
    other.radius == radius &&
    _deepEquality.equals(other.locations, locations) &&
    other.sendSuggestion == sendSuggestion &&
    other.startTimeOffset == startTimeOffset &&
    other.endTimeOffset == endTimeOffset &&
    other.target == target &&
    other.associateContentName == associateContentName &&
    other.polygon == polygon &&
    other.associateType == associateType &&
    other.associateId == associateId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (active == null ? 0 : active!.hashCode) +
    (valid == null ? 0 : valid!.hashCode) +
    (latitude == null ? 0 : latitude!.hashCode) +
    (longitude == null ? 0 : longitude!.hashCode) +
    (locationDescription == null ? 0 : locationDescription!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (display == null ? 0 : display!.hashCode) +
    (description == null ? 0 : description!.hashCode) +
    (owner == null ? 0 : owner!.hashCode) +
    (gender == null ? 0 : gender!.hashCode) +
    (ageGroups.hashCode) +
    (gameExperienceLevel == null ? 0 : gameExperienceLevel!.hashCode) +
    (deviceVersionRanges.hashCode) +
    (categories.hashCode) +
    (applications.hashCode) +
    (radius == null ? 0 : radius!.hashCode) +
    (locations.hashCode) +
    (sendSuggestion == null ? 0 : sendSuggestion!.hashCode) +
    (startTimeOffset == null ? 0 : startTimeOffset!.hashCode) +
    (endTimeOffset == null ? 0 : endTimeOffset!.hashCode) +
    (target == null ? 0 : target!.hashCode) +
    (associateContentName == null ? 0 : associateContentName!.hashCode) +
    (polygon == null ? 0 : polygon!.hashCode) +
    (associateType == null ? 0 : associateType!.hashCode) +
    (associateId == null ? 0 : associateId!.hashCode);

  @override
  String toString() => 'Audience[id=$id, active=$active, valid=$valid, latitude=$latitude, longitude=$longitude, locationDescription=$locationDescription, name=$name, display=$display, description=$description, owner=$owner, gender=$gender, ageGroups=$ageGroups, gameExperienceLevel=$gameExperienceLevel, deviceVersionRanges=$deviceVersionRanges, categories=$categories, applications=$applications, radius=$radius, locations=$locations, sendSuggestion=$sendSuggestion, startTimeOffset=$startTimeOffset, endTimeOffset=$endTimeOffset, target=$target, associateContentName=$associateContentName, polygon=$polygon, associateType=$associateType, associateId=$associateId]';

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
    if (this.locationDescription != null) {
      json[r'locationDescription'] = this.locationDescription;
    } else {
      json[r'locationDescription'] = null;
    }
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.display != null) {
      json[r'display'] = this.display;
    } else {
      json[r'display'] = null;
    }
    if (this.description != null) {
      json[r'description'] = this.description;
    } else {
      json[r'description'] = null;
    }
    if (this.owner != null) {
      json[r'owner'] = this.owner;
    } else {
      json[r'owner'] = null;
    }
    if (this.gender != null) {
      json[r'gender'] = this.gender;
    } else {
      json[r'gender'] = null;
    }
      json[r'ageGroups'] = this.ageGroups;
    if (this.gameExperienceLevel != null) {
      json[r'gameExperienceLevel'] = this.gameExperienceLevel;
    } else {
      json[r'gameExperienceLevel'] = null;
    }
      json[r'deviceVersionRanges'] = this.deviceVersionRanges;
      json[r'categories'] = this.categories;
      json[r'applications'] = this.applications;
    if (this.radius != null) {
      json[r'radius'] = this.radius;
    } else {
      json[r'radius'] = null;
    }
      json[r'locations'] = this.locations;
    if (this.sendSuggestion != null) {
      json[r'sendSuggestion'] = this.sendSuggestion;
    } else {
      json[r'sendSuggestion'] = null;
    }
    if (this.startTimeOffset != null) {
      json[r'startTimeOffset'] = this.startTimeOffset;
    } else {
      json[r'startTimeOffset'] = null;
    }
    if (this.endTimeOffset != null) {
      json[r'endTimeOffset'] = this.endTimeOffset;
    } else {
      json[r'endTimeOffset'] = null;
    }
    if (this.target != null) {
      json[r'target'] = this.target;
    } else {
      json[r'target'] = null;
    }
    if (this.associateContentName != null) {
      json[r'associateContentName'] = this.associateContentName;
    } else {
      json[r'associateContentName'] = null;
    }
    if (this.polygon != null) {
      json[r'polygon'] = this.polygon;
    } else {
      json[r'polygon'] = null;
    }
    if (this.associateType != null) {
      json[r'associateType'] = this.associateType;
    } else {
      json[r'associateType'] = null;
    }
    if (this.associateId != null) {
      json[r'associateId'] = this.associateId;
    } else {
      json[r'associateId'] = null;
    }
    return json;
  }

  /// Returns a new [Audience] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Audience? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Audience[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Audience[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Audience(
        id: mapValueOfType<int>(json, r'id'),
        active: mapValueOfType<bool>(json, r'active'),
        valid: mapValueOfType<bool>(json, r'valid'),
        latitude: mapValueOfType<double>(json, r'latitude'),
        longitude: mapValueOfType<double>(json, r'longitude'),
        locationDescription: mapValueOfType<String>(json, r'locationDescription'),
        name: mapValueOfType<String>(json, r'name'),
        display: mapValueOfType<bool>(json, r'display'),
        description: mapValueOfType<String>(json, r'description'),
        owner: Account.fromJson(json[r'owner']),
        gender: AudienceGenderEnum.fromJson(json[r'gender']),
        ageGroups: AudienceAgeGroupsEnum.listFromJson(json[r'ageGroups']),
        gameExperienceLevel: AudienceGameExperienceLevelEnum.fromJson(json[r'gameExperienceLevel']),
        deviceVersionRanges: AudienceDeviceVersionRange.listFromJson(json[r'deviceVersionRanges']),
        categories: Category.listFromJson(json[r'categories']),
        applications: Application.listFromJson(json[r'applications']),
        radius: mapValueOfType<double>(json, r'radius'),
        locations: AudienceLocation.listFromJson(json[r'locations']),
        sendSuggestion: mapValueOfType<bool>(json, r'sendSuggestion'),
        startTimeOffset: mapValueOfType<int>(json, r'startTimeOffset'),
        endTimeOffset: mapValueOfType<int>(json, r'endTimeOffset'),
        target: AudienceTargetType.fromJson(json[r'target']),
        associateContentName: mapValueOfType<String>(json, r'associateContentName'),
        polygon: mapValueOfType<String>(json, r'polygon'),
        associateType: mapValueOfType<String>(json, r'associateType'),
        associateId: mapValueOfType<int>(json, r'associateId'),
      );
    }
    return null;
  }

  static List<Audience> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Audience>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Audience.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Audience> mapFromJson(dynamic json) {
    final map = <String, Audience>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Audience.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Audience-objects as value to a dart map
  static Map<String, List<Audience>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Audience>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Audience.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}


class AudienceGenderEnum {
  /// Instantiate a new enum with the provided [value].
  const AudienceGenderEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const MALE = AudienceGenderEnum._(r'MALE');
  static const FEMALE = AudienceGenderEnum._(r'FEMALE');
  static const ANY = AudienceGenderEnum._(r'ANY');

  /// List of all possible values in this [enum][AudienceGenderEnum].
  static const values = <AudienceGenderEnum>[
    MALE,
    FEMALE,
    ANY,
  ];

  static AudienceGenderEnum? fromJson(dynamic value) => AudienceGenderEnumTypeTransformer().decode(value);

  static List<AudienceGenderEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AudienceGenderEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AudienceGenderEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [AudienceGenderEnum] to String,
/// and [decode] dynamic data back to [AudienceGenderEnum].
class AudienceGenderEnumTypeTransformer {
  factory AudienceGenderEnumTypeTransformer() => _instance ??= const AudienceGenderEnumTypeTransformer._();

  const AudienceGenderEnumTypeTransformer._();

  String encode(AudienceGenderEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a AudienceGenderEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  AudienceGenderEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'MALE': return AudienceGenderEnum.MALE;
        case r'FEMALE': return AudienceGenderEnum.FEMALE;
        case r'ANY': return AudienceGenderEnum.ANY;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [AudienceGenderEnumTypeTransformer] instance.
  static AudienceGenderEnumTypeTransformer? _instance;
}



class AudienceAgeGroupsEnum {
  /// Instantiate a new enum with the provided [value].
  const AudienceAgeGroupsEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const aGE013 = AudienceAgeGroupsEnum._(r'AGE_0_13');
  static const aGE1417 = AudienceAgeGroupsEnum._(r'AGE_14_17');
  static const aGE1822 = AudienceAgeGroupsEnum._(r'AGE_18_22');
  static const aGE2330 = AudienceAgeGroupsEnum._(r'AGE_23_30');
  static const aGE3154 = AudienceAgeGroupsEnum._(r'AGE_31_54');
  static const aGE55PLUS = AudienceAgeGroupsEnum._(r'AGE_55_PLUS');

  /// List of all possible values in this [enum][AudienceAgeGroupsEnum].
  static const values = <AudienceAgeGroupsEnum>[
    aGE013,
    aGE1417,
    aGE1822,
    aGE2330,
    aGE3154,
    aGE55PLUS,
  ];

  static AudienceAgeGroupsEnum? fromJson(dynamic value) => AudienceAgeGroupsEnumTypeTransformer().decode(value);

  static List<AudienceAgeGroupsEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AudienceAgeGroupsEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AudienceAgeGroupsEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [AudienceAgeGroupsEnum] to String,
/// and [decode] dynamic data back to [AudienceAgeGroupsEnum].
class AudienceAgeGroupsEnumTypeTransformer {
  factory AudienceAgeGroupsEnumTypeTransformer() => _instance ??= const AudienceAgeGroupsEnumTypeTransformer._();

  const AudienceAgeGroupsEnumTypeTransformer._();

  String encode(AudienceAgeGroupsEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a AudienceAgeGroupsEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  AudienceAgeGroupsEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'AGE_0_13': return AudienceAgeGroupsEnum.aGE013;
        case r'AGE_14_17': return AudienceAgeGroupsEnum.aGE1417;
        case r'AGE_18_22': return AudienceAgeGroupsEnum.aGE1822;
        case r'AGE_23_30': return AudienceAgeGroupsEnum.aGE2330;
        case r'AGE_31_54': return AudienceAgeGroupsEnum.aGE3154;
        case r'AGE_55_PLUS': return AudienceAgeGroupsEnum.aGE55PLUS;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [AudienceAgeGroupsEnumTypeTransformer] instance.
  static AudienceAgeGroupsEnumTypeTransformer? _instance;
}



class AudienceGameExperienceLevelEnum {
  /// Instantiate a new enum with the provided [value].
  const AudienceGameExperienceLevelEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const ANY = AudienceGameExperienceLevelEnum._(r'ANY');
  static const NEW = AudienceGameExperienceLevelEnum._(r'NEW');
  static const BEGINNER = AudienceGameExperienceLevelEnum._(r'BEGINNER');
  static const INTERMEDIATE = AudienceGameExperienceLevelEnum._(r'INTERMEDIATE');
  static const EXPERT = AudienceGameExperienceLevelEnum._(r'EXPERT');

  /// List of all possible values in this [enum][AudienceGameExperienceLevelEnum].
  static const values = <AudienceGameExperienceLevelEnum>[
    ANY,
    NEW,
    BEGINNER,
    INTERMEDIATE,
    EXPERT,
  ];

  static AudienceGameExperienceLevelEnum? fromJson(dynamic value) => AudienceGameExperienceLevelEnumTypeTransformer().decode(value);

  static List<AudienceGameExperienceLevelEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AudienceGameExperienceLevelEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AudienceGameExperienceLevelEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [AudienceGameExperienceLevelEnum] to String,
/// and [decode] dynamic data back to [AudienceGameExperienceLevelEnum].
class AudienceGameExperienceLevelEnumTypeTransformer {
  factory AudienceGameExperienceLevelEnumTypeTransformer() => _instance ??= const AudienceGameExperienceLevelEnumTypeTransformer._();

  const AudienceGameExperienceLevelEnumTypeTransformer._();

  String encode(AudienceGameExperienceLevelEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a AudienceGameExperienceLevelEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  AudienceGameExperienceLevelEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'ANY': return AudienceGameExperienceLevelEnum.ANY;
        case r'NEW': return AudienceGameExperienceLevelEnum.NEW;
        case r'BEGINNER': return AudienceGameExperienceLevelEnum.BEGINNER;
        case r'INTERMEDIATE': return AudienceGameExperienceLevelEnum.INTERMEDIATE;
        case r'EXPERT': return AudienceGameExperienceLevelEnum.EXPERT;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [AudienceGameExperienceLevelEnumTypeTransformer] instance.
  static AudienceGameExperienceLevelEnumTypeTransformer? _instance;
}


