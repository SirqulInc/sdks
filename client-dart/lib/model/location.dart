//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Location {
  /// Returns a new [Location] instance.
  Location({
    this.id,
    this.active,
    this.valid,
    this.latitude,
    this.longitude,
    this.locationDescription,
    this.name,
    this.territory,
    this.hub,
    this.picture,
    this.notes = const [],
    this.noteCount,
    this.homePhone,
    this.cellPhone,
    this.cellCarrier,
    this.businessPhone,
    this.businessPhoneExt,
    this.faxNumber,
    this.timeZone,
    this.utcOffset,
    this.code501c3,
    this.emailAddress,
    this.address,
    this.web,
    this.program,
    this.visibility,
    this.groupingId,
    this.destination,
    this.dockingTime,
    this.usageCount,
    this.timeFramesAllowed,
    this.likes = const [],
    this.likeCount,
    this.dislikeCount,
    this.ownerDisplay,
    this.contentName,
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
  Territory? territory;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  ServiceHub? hub;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Asset? picture;

  List<Note> notes;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? noteCount;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? homePhone;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? cellPhone;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  CellCarrier? cellCarrier;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? businessPhone;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? businessPhoneExt;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? faxNumber;

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
  String? utcOffset;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? code501c3;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? emailAddress;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Address? address;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? web;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Program? program;

  LocationVisibilityEnum? visibility;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? groupingId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? destination;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? dockingTime;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? usageCount;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? timeFramesAllowed;

  List<YayOrNay> likes;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? likeCount;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? dislikeCount;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? ownerDisplay;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? contentName;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Location &&
    other.id == id &&
    other.active == active &&
    other.valid == valid &&
    other.latitude == latitude &&
    other.longitude == longitude &&
    other.locationDescription == locationDescription &&
    other.name == name &&
    other.territory == territory &&
    other.hub == hub &&
    other.picture == picture &&
    _deepEquality.equals(other.notes, notes) &&
    other.noteCount == noteCount &&
    other.homePhone == homePhone &&
    other.cellPhone == cellPhone &&
    other.cellCarrier == cellCarrier &&
    other.businessPhone == businessPhone &&
    other.businessPhoneExt == businessPhoneExt &&
    other.faxNumber == faxNumber &&
    other.timeZone == timeZone &&
    other.utcOffset == utcOffset &&
    other.code501c3 == code501c3 &&
    other.emailAddress == emailAddress &&
    other.address == address &&
    other.web == web &&
    other.program == program &&
    other.visibility == visibility &&
    other.groupingId == groupingId &&
    other.destination == destination &&
    other.dockingTime == dockingTime &&
    other.usageCount == usageCount &&
    other.timeFramesAllowed == timeFramesAllowed &&
    _deepEquality.equals(other.likes, likes) &&
    other.likeCount == likeCount &&
    other.dislikeCount == dislikeCount &&
    other.ownerDisplay == ownerDisplay &&
    other.contentName == contentName;

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
    (territory == null ? 0 : territory!.hashCode) +
    (hub == null ? 0 : hub!.hashCode) +
    (picture == null ? 0 : picture!.hashCode) +
    (notes.hashCode) +
    (noteCount == null ? 0 : noteCount!.hashCode) +
    (homePhone == null ? 0 : homePhone!.hashCode) +
    (cellPhone == null ? 0 : cellPhone!.hashCode) +
    (cellCarrier == null ? 0 : cellCarrier!.hashCode) +
    (businessPhone == null ? 0 : businessPhone!.hashCode) +
    (businessPhoneExt == null ? 0 : businessPhoneExt!.hashCode) +
    (faxNumber == null ? 0 : faxNumber!.hashCode) +
    (timeZone == null ? 0 : timeZone!.hashCode) +
    (utcOffset == null ? 0 : utcOffset!.hashCode) +
    (code501c3 == null ? 0 : code501c3!.hashCode) +
    (emailAddress == null ? 0 : emailAddress!.hashCode) +
    (address == null ? 0 : address!.hashCode) +
    (web == null ? 0 : web!.hashCode) +
    (program == null ? 0 : program!.hashCode) +
    (visibility == null ? 0 : visibility!.hashCode) +
    (groupingId == null ? 0 : groupingId!.hashCode) +
    (destination == null ? 0 : destination!.hashCode) +
    (dockingTime == null ? 0 : dockingTime!.hashCode) +
    (usageCount == null ? 0 : usageCount!.hashCode) +
    (timeFramesAllowed == null ? 0 : timeFramesAllowed!.hashCode) +
    (likes.hashCode) +
    (likeCount == null ? 0 : likeCount!.hashCode) +
    (dislikeCount == null ? 0 : dislikeCount!.hashCode) +
    (ownerDisplay == null ? 0 : ownerDisplay!.hashCode) +
    (contentName == null ? 0 : contentName!.hashCode);

  @override
  String toString() => 'Location[id=$id, active=$active, valid=$valid, latitude=$latitude, longitude=$longitude, locationDescription=$locationDescription, name=$name, territory=$territory, hub=$hub, picture=$picture, notes=$notes, noteCount=$noteCount, homePhone=$homePhone, cellPhone=$cellPhone, cellCarrier=$cellCarrier, businessPhone=$businessPhone, businessPhoneExt=$businessPhoneExt, faxNumber=$faxNumber, timeZone=$timeZone, utcOffset=$utcOffset, code501c3=$code501c3, emailAddress=$emailAddress, address=$address, web=$web, program=$program, visibility=$visibility, groupingId=$groupingId, destination=$destination, dockingTime=$dockingTime, usageCount=$usageCount, timeFramesAllowed=$timeFramesAllowed, likes=$likes, likeCount=$likeCount, dislikeCount=$dislikeCount, ownerDisplay=$ownerDisplay, contentName=$contentName]';

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
    if (this.territory != null) {
      json[r'territory'] = this.territory;
    } else {
      json[r'territory'] = null;
    }
    if (this.hub != null) {
      json[r'hub'] = this.hub;
    } else {
      json[r'hub'] = null;
    }
    if (this.picture != null) {
      json[r'picture'] = this.picture;
    } else {
      json[r'picture'] = null;
    }
      json[r'notes'] = this.notes;
    if (this.noteCount != null) {
      json[r'noteCount'] = this.noteCount;
    } else {
      json[r'noteCount'] = null;
    }
    if (this.homePhone != null) {
      json[r'homePhone'] = this.homePhone;
    } else {
      json[r'homePhone'] = null;
    }
    if (this.cellPhone != null) {
      json[r'cellPhone'] = this.cellPhone;
    } else {
      json[r'cellPhone'] = null;
    }
    if (this.cellCarrier != null) {
      json[r'cellCarrier'] = this.cellCarrier;
    } else {
      json[r'cellCarrier'] = null;
    }
    if (this.businessPhone != null) {
      json[r'businessPhone'] = this.businessPhone;
    } else {
      json[r'businessPhone'] = null;
    }
    if (this.businessPhoneExt != null) {
      json[r'businessPhoneExt'] = this.businessPhoneExt;
    } else {
      json[r'businessPhoneExt'] = null;
    }
    if (this.faxNumber != null) {
      json[r'faxNumber'] = this.faxNumber;
    } else {
      json[r'faxNumber'] = null;
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
    if (this.code501c3 != null) {
      json[r'code501c3'] = this.code501c3;
    } else {
      json[r'code501c3'] = null;
    }
    if (this.emailAddress != null) {
      json[r'emailAddress'] = this.emailAddress;
    } else {
      json[r'emailAddress'] = null;
    }
    if (this.address != null) {
      json[r'address'] = this.address;
    } else {
      json[r'address'] = null;
    }
    if (this.web != null) {
      json[r'web'] = this.web;
    } else {
      json[r'web'] = null;
    }
    if (this.program != null) {
      json[r'program'] = this.program;
    } else {
      json[r'program'] = null;
    }
    if (this.visibility != null) {
      json[r'visibility'] = this.visibility;
    } else {
      json[r'visibility'] = null;
    }
    if (this.groupingId != null) {
      json[r'groupingId'] = this.groupingId;
    } else {
      json[r'groupingId'] = null;
    }
    if (this.destination != null) {
      json[r'destination'] = this.destination;
    } else {
      json[r'destination'] = null;
    }
    if (this.dockingTime != null) {
      json[r'dockingTime'] = this.dockingTime;
    } else {
      json[r'dockingTime'] = null;
    }
    if (this.usageCount != null) {
      json[r'usageCount'] = this.usageCount;
    } else {
      json[r'usageCount'] = null;
    }
    if (this.timeFramesAllowed != null) {
      json[r'timeFramesAllowed'] = this.timeFramesAllowed;
    } else {
      json[r'timeFramesAllowed'] = null;
    }
      json[r'likes'] = this.likes;
    if (this.likeCount != null) {
      json[r'likeCount'] = this.likeCount;
    } else {
      json[r'likeCount'] = null;
    }
    if (this.dislikeCount != null) {
      json[r'dislikeCount'] = this.dislikeCount;
    } else {
      json[r'dislikeCount'] = null;
    }
    if (this.ownerDisplay != null) {
      json[r'ownerDisplay'] = this.ownerDisplay;
    } else {
      json[r'ownerDisplay'] = null;
    }
    if (this.contentName != null) {
      json[r'contentName'] = this.contentName;
    } else {
      json[r'contentName'] = null;
    }
    return json;
  }

  /// Returns a new [Location] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Location? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Location[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Location[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Location(
        id: mapValueOfType<int>(json, r'id'),
        active: mapValueOfType<bool>(json, r'active'),
        valid: mapValueOfType<bool>(json, r'valid'),
        latitude: mapValueOfType<double>(json, r'latitude'),
        longitude: mapValueOfType<double>(json, r'longitude'),
        locationDescription: mapValueOfType<String>(json, r'locationDescription'),
        name: mapValueOfType<String>(json, r'name'),
        territory: Territory.fromJson(json[r'territory']),
        hub: ServiceHub.fromJson(json[r'hub']),
        picture: Asset.fromJson(json[r'picture']),
        notes: Note.listFromJson(json[r'notes']),
        noteCount: mapValueOfType<int>(json, r'noteCount'),
        homePhone: mapValueOfType<String>(json, r'homePhone'),
        cellPhone: mapValueOfType<String>(json, r'cellPhone'),
        cellCarrier: CellCarrier.fromJson(json[r'cellCarrier']),
        businessPhone: mapValueOfType<String>(json, r'businessPhone'),
        businessPhoneExt: mapValueOfType<String>(json, r'businessPhoneExt'),
        faxNumber: mapValueOfType<String>(json, r'faxNumber'),
        timeZone: mapValueOfType<String>(json, r'timeZone'),
        utcOffset: mapValueOfType<String>(json, r'utcOffset'),
        code501c3: mapValueOfType<String>(json, r'code501c3'),
        emailAddress: mapValueOfType<String>(json, r'emailAddress'),
        address: Address.fromJson(json[r'address']),
        web: mapValueOfType<String>(json, r'web'),
        program: Program.fromJson(json[r'program']),
        visibility: LocationVisibilityEnum.fromJson(json[r'visibility']),
        groupingId: mapValueOfType<String>(json, r'groupingId'),
        destination: mapValueOfType<bool>(json, r'destination'),
        dockingTime: mapValueOfType<int>(json, r'dockingTime'),
        usageCount: mapValueOfType<int>(json, r'usageCount'),
        timeFramesAllowed: mapValueOfType<String>(json, r'timeFramesAllowed'),
        likes: YayOrNay.listFromJson(json[r'likes']),
        likeCount: mapValueOfType<int>(json, r'likeCount'),
        dislikeCount: mapValueOfType<int>(json, r'dislikeCount'),
        ownerDisplay: mapValueOfType<String>(json, r'ownerDisplay'),
        contentName: mapValueOfType<String>(json, r'contentName'),
      );
    }
    return null;
  }

  static List<Location> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Location>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Location.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Location> mapFromJson(dynamic json) {
    final map = <String, Location>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Location.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Location-objects as value to a dart map
  static Map<String, List<Location>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Location>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Location.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}


class LocationVisibilityEnum {
  /// Instantiate a new enum with the provided [value].
  const LocationVisibilityEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const PUBLIC = LocationVisibilityEnum._(r'PUBLIC');
  static const PRIVATE = LocationVisibilityEnum._(r'PRIVATE');
  static const FRIENDS = LocationVisibilityEnum._(r'FRIENDS');

  /// List of all possible values in this [enum][LocationVisibilityEnum].
  static const values = <LocationVisibilityEnum>[
    PUBLIC,
    PRIVATE,
    FRIENDS,
  ];

  static LocationVisibilityEnum? fromJson(dynamic value) => LocationVisibilityEnumTypeTransformer().decode(value);

  static List<LocationVisibilityEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <LocationVisibilityEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = LocationVisibilityEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [LocationVisibilityEnum] to String,
/// and [decode] dynamic data back to [LocationVisibilityEnum].
class LocationVisibilityEnumTypeTransformer {
  factory LocationVisibilityEnumTypeTransformer() => _instance ??= const LocationVisibilityEnumTypeTransformer._();

  const LocationVisibilityEnumTypeTransformer._();

  String encode(LocationVisibilityEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a LocationVisibilityEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  LocationVisibilityEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'PUBLIC': return LocationVisibilityEnum.PUBLIC;
        case r'PRIVATE': return LocationVisibilityEnum.PRIVATE;
        case r'FRIENDS': return LocationVisibilityEnum.FRIENDS;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [LocationVisibilityEnumTypeTransformer] instance.
  static LocationVisibilityEnumTypeTransformer? _instance;
}


