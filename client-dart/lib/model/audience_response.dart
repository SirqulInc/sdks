//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class AudienceResponse {
  /// Returns a new [AudienceResponse] instance.
  AudienceResponse({
    this.id,
    this.name,
    this.latitude,
    this.longitude,
    this.radius,
    this.sendSuggestion,
    this.description,
    this.active,
    this.searchTags,
    this.ownerId,
    this.gender,
    this.ageGroups = const [],
    this.categories = const [],
    this.applications = const [],
    this.devices = const [],
    this.gameExperienceLevel,
    this.locations = const [],
    this.associateType,
    this.associateId,
    this.associateDescription,
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
  String? name;

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
  double? radius;

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
  String? description;

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
  String? searchTags;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? ownerId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? gender;

  List<AgeGroupResponse> ageGroups;

  List<CategoryResponse> categories;

  List<ApplicationShortResponse> applications;

  List<AudienceDeviceResponse> devices;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? gameExperienceLevel;

  List<GeocodeLatLngResponse> locations;

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

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? associateDescription;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AudienceResponse &&
    other.id == id &&
    other.name == name &&
    other.latitude == latitude &&
    other.longitude == longitude &&
    other.radius == radius &&
    other.sendSuggestion == sendSuggestion &&
    other.description == description &&
    other.active == active &&
    other.searchTags == searchTags &&
    other.ownerId == ownerId &&
    other.gender == gender &&
    _deepEquality.equals(other.ageGroups, ageGroups) &&
    _deepEquality.equals(other.categories, categories) &&
    _deepEquality.equals(other.applications, applications) &&
    _deepEquality.equals(other.devices, devices) &&
    other.gameExperienceLevel == gameExperienceLevel &&
    _deepEquality.equals(other.locations, locations) &&
    other.associateType == associateType &&
    other.associateId == associateId &&
    other.associateDescription == associateDescription;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (latitude == null ? 0 : latitude!.hashCode) +
    (longitude == null ? 0 : longitude!.hashCode) +
    (radius == null ? 0 : radius!.hashCode) +
    (sendSuggestion == null ? 0 : sendSuggestion!.hashCode) +
    (description == null ? 0 : description!.hashCode) +
    (active == null ? 0 : active!.hashCode) +
    (searchTags == null ? 0 : searchTags!.hashCode) +
    (ownerId == null ? 0 : ownerId!.hashCode) +
    (gender == null ? 0 : gender!.hashCode) +
    (ageGroups.hashCode) +
    (categories.hashCode) +
    (applications.hashCode) +
    (devices.hashCode) +
    (gameExperienceLevel == null ? 0 : gameExperienceLevel!.hashCode) +
    (locations.hashCode) +
    (associateType == null ? 0 : associateType!.hashCode) +
    (associateId == null ? 0 : associateId!.hashCode) +
    (associateDescription == null ? 0 : associateDescription!.hashCode);

  @override
  String toString() => 'AudienceResponse[id=$id, name=$name, latitude=$latitude, longitude=$longitude, radius=$radius, sendSuggestion=$sendSuggestion, description=$description, active=$active, searchTags=$searchTags, ownerId=$ownerId, gender=$gender, ageGroups=$ageGroups, categories=$categories, applications=$applications, devices=$devices, gameExperienceLevel=$gameExperienceLevel, locations=$locations, associateType=$associateType, associateId=$associateId, associateDescription=$associateDescription]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
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
    if (this.radius != null) {
      json[r'radius'] = this.radius;
    } else {
      json[r'radius'] = null;
    }
    if (this.sendSuggestion != null) {
      json[r'sendSuggestion'] = this.sendSuggestion;
    } else {
      json[r'sendSuggestion'] = null;
    }
    if (this.description != null) {
      json[r'description'] = this.description;
    } else {
      json[r'description'] = null;
    }
    if (this.active != null) {
      json[r'active'] = this.active;
    } else {
      json[r'active'] = null;
    }
    if (this.searchTags != null) {
      json[r'searchTags'] = this.searchTags;
    } else {
      json[r'searchTags'] = null;
    }
    if (this.ownerId != null) {
      json[r'ownerId'] = this.ownerId;
    } else {
      json[r'ownerId'] = null;
    }
    if (this.gender != null) {
      json[r'gender'] = this.gender;
    } else {
      json[r'gender'] = null;
    }
      json[r'ageGroups'] = this.ageGroups;
      json[r'categories'] = this.categories;
      json[r'applications'] = this.applications;
      json[r'devices'] = this.devices;
    if (this.gameExperienceLevel != null) {
      json[r'gameExperienceLevel'] = this.gameExperienceLevel;
    } else {
      json[r'gameExperienceLevel'] = null;
    }
      json[r'locations'] = this.locations;
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
    if (this.associateDescription != null) {
      json[r'associateDescription'] = this.associateDescription;
    } else {
      json[r'associateDescription'] = null;
    }
    return json;
  }

  /// Returns a new [AudienceResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AudienceResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "AudienceResponse[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "AudienceResponse[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AudienceResponse(
        id: mapValueOfType<int>(json, r'id'),
        name: mapValueOfType<String>(json, r'name'),
        latitude: mapValueOfType<double>(json, r'latitude'),
        longitude: mapValueOfType<double>(json, r'longitude'),
        radius: mapValueOfType<double>(json, r'radius'),
        sendSuggestion: mapValueOfType<bool>(json, r'sendSuggestion'),
        description: mapValueOfType<String>(json, r'description'),
        active: mapValueOfType<bool>(json, r'active'),
        searchTags: mapValueOfType<String>(json, r'searchTags'),
        ownerId: mapValueOfType<int>(json, r'ownerId'),
        gender: mapValueOfType<String>(json, r'gender'),
        ageGroups: AgeGroupResponse.listFromJson(json[r'ageGroups']),
        categories: CategoryResponse.listFromJson(json[r'categories']),
        applications: ApplicationShortResponse.listFromJson(json[r'applications']),
        devices: AudienceDeviceResponse.listFromJson(json[r'devices']),
        gameExperienceLevel: mapValueOfType<String>(json, r'gameExperienceLevel'),
        locations: GeocodeLatLngResponse.listFromJson(json[r'locations']),
        associateType: mapValueOfType<String>(json, r'associateType'),
        associateId: mapValueOfType<int>(json, r'associateId'),
        associateDescription: mapValueOfType<String>(json, r'associateDescription'),
      );
    }
    return null;
  }

  static List<AudienceResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AudienceResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AudienceResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AudienceResponse> mapFromJson(dynamic json) {
    final map = <String, AudienceResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AudienceResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AudienceResponse-objects as value to a dart map
  static Map<String, List<AudienceResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AudienceResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AudienceResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

