//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class PostalCode {
  /// Returns a new [PostalCode] instance.
  PostalCode({
    this.id,
    this.active,
    this.valid,
    this.latitude,
    this.longitude,
    this.locationDescription,
    this.code,
    this.plus4,
    this.stateCode,
    this.city,
    this.timeZone,
    this.utcOffset,
    this.regions = const {},
    this.eliminated,
    this.searchPoint,
    this.lastOfferImport,
    this.truncatedLatitude,
    this.truncatedLongitude,
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
  String? code;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? plus4;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? stateCode;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? city;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? timeZone;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? utcOffset;

  Set<Region> regions;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? eliminated;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? searchPoint;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? lastOfferImport;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? truncatedLatitude;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? truncatedLongitude;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PostalCode &&
    other.id == id &&
    other.active == active &&
    other.valid == valid &&
    other.latitude == latitude &&
    other.longitude == longitude &&
    other.locationDescription == locationDescription &&
    other.code == code &&
    other.plus4 == plus4 &&
    other.stateCode == stateCode &&
    other.city == city &&
    other.timeZone == timeZone &&
    other.utcOffset == utcOffset &&
    _deepEquality.equals(other.regions, regions) &&
    other.eliminated == eliminated &&
    other.searchPoint == searchPoint &&
    other.lastOfferImport == lastOfferImport &&
    other.truncatedLatitude == truncatedLatitude &&
    other.truncatedLongitude == truncatedLongitude;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (active == null ? 0 : active!.hashCode) +
    (valid == null ? 0 : valid!.hashCode) +
    (latitude == null ? 0 : latitude!.hashCode) +
    (longitude == null ? 0 : longitude!.hashCode) +
    (locationDescription == null ? 0 : locationDescription!.hashCode) +
    (code == null ? 0 : code!.hashCode) +
    (plus4 == null ? 0 : plus4!.hashCode) +
    (stateCode == null ? 0 : stateCode!.hashCode) +
    (city == null ? 0 : city!.hashCode) +
    (timeZone == null ? 0 : timeZone!.hashCode) +
    (utcOffset == null ? 0 : utcOffset!.hashCode) +
    (regions.hashCode) +
    (eliminated == null ? 0 : eliminated!.hashCode) +
    (searchPoint == null ? 0 : searchPoint!.hashCode) +
    (lastOfferImport == null ? 0 : lastOfferImport!.hashCode) +
    (truncatedLatitude == null ? 0 : truncatedLatitude!.hashCode) +
    (truncatedLongitude == null ? 0 : truncatedLongitude!.hashCode);

  @override
  String toString() => 'PostalCode[id=$id, active=$active, valid=$valid, latitude=$latitude, longitude=$longitude, locationDescription=$locationDescription, code=$code, plus4=$plus4, stateCode=$stateCode, city=$city, timeZone=$timeZone, utcOffset=$utcOffset, regions=$regions, eliminated=$eliminated, searchPoint=$searchPoint, lastOfferImport=$lastOfferImport, truncatedLatitude=$truncatedLatitude, truncatedLongitude=$truncatedLongitude]';

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
    if (this.code != null) {
      json[r'code'] = this.code;
    } else {
      json[r'code'] = null;
    }
    if (this.plus4 != null) {
      json[r'plus4'] = this.plus4;
    } else {
      json[r'plus4'] = null;
    }
    if (this.stateCode != null) {
      json[r'stateCode'] = this.stateCode;
    } else {
      json[r'stateCode'] = null;
    }
    if (this.city != null) {
      json[r'city'] = this.city;
    } else {
      json[r'city'] = null;
    }
    if (this.timeZone != null) {
      json[r'timeZone'] = this.timeZone;
    } else {
      json[r'timeZone'] = null;
    }
    if (this.utcOffset != null) {
      json[r'utcOffset'] = this.utcOffset;
    } else {
      json[r'utcOffset'] = null;
    }
      json[r'regions'] = this.regions.toList(growable: false);
    if (this.eliminated != null) {
      json[r'eliminated'] = this.eliminated;
    } else {
      json[r'eliminated'] = null;
    }
    if (this.searchPoint != null) {
      json[r'searchPoint'] = this.searchPoint;
    } else {
      json[r'searchPoint'] = null;
    }
    if (this.lastOfferImport != null) {
      json[r'lastOfferImport'] = this.lastOfferImport!.toUtc().toIso8601String();
    } else {
      json[r'lastOfferImport'] = null;
    }
    if (this.truncatedLatitude != null) {
      json[r'truncatedLatitude'] = this.truncatedLatitude;
    } else {
      json[r'truncatedLatitude'] = null;
    }
    if (this.truncatedLongitude != null) {
      json[r'truncatedLongitude'] = this.truncatedLongitude;
    } else {
      json[r'truncatedLongitude'] = null;
    }
    return json;
  }

  /// Returns a new [PostalCode] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PostalCode? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "PostalCode[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "PostalCode[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return PostalCode(
        id: mapValueOfType<int>(json, r'id'),
        active: mapValueOfType<bool>(json, r'active'),
        valid: mapValueOfType<bool>(json, r'valid'),
        latitude: mapValueOfType<double>(json, r'latitude'),
        longitude: mapValueOfType<double>(json, r'longitude'),
        locationDescription: mapValueOfType<String>(json, r'locationDescription'),
        code: mapValueOfType<String>(json, r'code'),
        plus4: mapValueOfType<String>(json, r'plus4'),
        stateCode: mapValueOfType<String>(json, r'stateCode'),
        city: mapValueOfType<String>(json, r'city'),
        timeZone: mapValueOfType<String>(json, r'timeZone'),
        utcOffset: mapValueOfType<int>(json, r'utcOffset'),
        regions: Region.listFromJson(json[r'regions']).toSet(),
        eliminated: mapValueOfType<bool>(json, r'eliminated'),
        searchPoint: mapValueOfType<bool>(json, r'searchPoint'),
        lastOfferImport: mapDateTime(json, r'lastOfferImport', r''),
        truncatedLatitude: mapValueOfType<double>(json, r'truncatedLatitude'),
        truncatedLongitude: mapValueOfType<double>(json, r'truncatedLongitude'),
      );
    }
    return null;
  }

  static List<PostalCode> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PostalCode>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PostalCode.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PostalCode> mapFromJson(dynamic json) {
    final map = <String, PostalCode>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PostalCode.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PostalCode-objects as value to a dart map
  static Map<String, List<PostalCode>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<PostalCode>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PostalCode.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

