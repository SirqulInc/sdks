//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class OfferLocation {
  /// Returns a new [OfferLocation] instance.
  OfferLocation({
    this.id,
    this.active,
    this.valid,
    this.latitude,
    this.longitude,
    this.locationDescription,
    this.offer,
    this.location,
    this.distance,
    this.altitude,
    this.customValue,
    this.locationDetail,
    this.audiences = const [],
    this.qrInviteCode,
    this.notes = const [],
    this.noteCount,
    this.searchIndexUpdated,
    this.inSearchIndex,
    this.favoriteCount,
    this.addedCount,
    this.display,
    this.appKey,
    this.devicePower,
    this.powerLoss,
    this.udid,
    this.billableId,
    this.subType,
    this.contentName,
    this.contentAsset,
    this.owner,
    this.secondaryType,
    this.categoryIds = const [],
    this.filterIds = const [],
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
  Offer? offer;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  RetailerLocation? location;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? distance;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? altitude;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? customValue;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? locationDetail;

  List<Audience> audiences;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Asset? qrInviteCode;

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
  DateTime? searchIndexUpdated;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? inSearchIndex;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? favoriteCount;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? addedCount;

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
  String? appKey;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? devicePower;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? powerLoss;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? udid;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? billableId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? subType;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? contentName;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Asset? contentAsset;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Account? owner;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? secondaryType;

  List<int> categoryIds;

  List<int> filterIds;

  @override
  bool operator ==(Object other) => identical(this, other) || other is OfferLocation &&
    other.id == id &&
    other.active == active &&
    other.valid == valid &&
    other.latitude == latitude &&
    other.longitude == longitude &&
    other.locationDescription == locationDescription &&
    other.offer == offer &&
    other.location == location &&
    other.distance == distance &&
    other.altitude == altitude &&
    other.customValue == customValue &&
    other.locationDetail == locationDetail &&
    _deepEquality.equals(other.audiences, audiences) &&
    other.qrInviteCode == qrInviteCode &&
    _deepEquality.equals(other.notes, notes) &&
    other.noteCount == noteCount &&
    other.searchIndexUpdated == searchIndexUpdated &&
    other.inSearchIndex == inSearchIndex &&
    other.favoriteCount == favoriteCount &&
    other.addedCount == addedCount &&
    other.display == display &&
    other.appKey == appKey &&
    other.devicePower == devicePower &&
    other.powerLoss == powerLoss &&
    other.udid == udid &&
    other.billableId == billableId &&
    other.subType == subType &&
    other.contentName == contentName &&
    other.contentAsset == contentAsset &&
    other.owner == owner &&
    other.secondaryType == secondaryType &&
    _deepEquality.equals(other.categoryIds, categoryIds) &&
    _deepEquality.equals(other.filterIds, filterIds);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (active == null ? 0 : active!.hashCode) +
    (valid == null ? 0 : valid!.hashCode) +
    (latitude == null ? 0 : latitude!.hashCode) +
    (longitude == null ? 0 : longitude!.hashCode) +
    (locationDescription == null ? 0 : locationDescription!.hashCode) +
    (offer == null ? 0 : offer!.hashCode) +
    (location == null ? 0 : location!.hashCode) +
    (distance == null ? 0 : distance!.hashCode) +
    (altitude == null ? 0 : altitude!.hashCode) +
    (customValue == null ? 0 : customValue!.hashCode) +
    (locationDetail == null ? 0 : locationDetail!.hashCode) +
    (audiences.hashCode) +
    (qrInviteCode == null ? 0 : qrInviteCode!.hashCode) +
    (notes.hashCode) +
    (noteCount == null ? 0 : noteCount!.hashCode) +
    (searchIndexUpdated == null ? 0 : searchIndexUpdated!.hashCode) +
    (inSearchIndex == null ? 0 : inSearchIndex!.hashCode) +
    (favoriteCount == null ? 0 : favoriteCount!.hashCode) +
    (addedCount == null ? 0 : addedCount!.hashCode) +
    (display == null ? 0 : display!.hashCode) +
    (appKey == null ? 0 : appKey!.hashCode) +
    (devicePower == null ? 0 : devicePower!.hashCode) +
    (powerLoss == null ? 0 : powerLoss!.hashCode) +
    (udid == null ? 0 : udid!.hashCode) +
    (billableId == null ? 0 : billableId!.hashCode) +
    (subType == null ? 0 : subType!.hashCode) +
    (contentName == null ? 0 : contentName!.hashCode) +
    (contentAsset == null ? 0 : contentAsset!.hashCode) +
    (owner == null ? 0 : owner!.hashCode) +
    (secondaryType == null ? 0 : secondaryType!.hashCode) +
    (categoryIds.hashCode) +
    (filterIds.hashCode);

  @override
  String toString() => 'OfferLocation[id=$id, active=$active, valid=$valid, latitude=$latitude, longitude=$longitude, locationDescription=$locationDescription, offer=$offer, location=$location, distance=$distance, altitude=$altitude, customValue=$customValue, locationDetail=$locationDetail, audiences=$audiences, qrInviteCode=$qrInviteCode, notes=$notes, noteCount=$noteCount, searchIndexUpdated=$searchIndexUpdated, inSearchIndex=$inSearchIndex, favoriteCount=$favoriteCount, addedCount=$addedCount, display=$display, appKey=$appKey, devicePower=$devicePower, powerLoss=$powerLoss, udid=$udid, billableId=$billableId, subType=$subType, contentName=$contentName, contentAsset=$contentAsset, owner=$owner, secondaryType=$secondaryType, categoryIds=$categoryIds, filterIds=$filterIds]';

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
    if (this.offer != null) {
      json[r'offer'] = this.offer;
    } else {
      json[r'offer'] = null;
    }
    if (this.location != null) {
      json[r'location'] = this.location;
    } else {
      json[r'location'] = null;
    }
    if (this.distance != null) {
      json[r'distance'] = this.distance;
    } else {
      json[r'distance'] = null;
    }
    if (this.altitude != null) {
      json[r'altitude'] = this.altitude;
    } else {
      json[r'altitude'] = null;
    }
    if (this.customValue != null) {
      json[r'customValue'] = this.customValue;
    } else {
      json[r'customValue'] = null;
    }
    if (this.locationDetail != null) {
      json[r'locationDetail'] = this.locationDetail;
    } else {
      json[r'locationDetail'] = null;
    }
      json[r'audiences'] = this.audiences;
    if (this.qrInviteCode != null) {
      json[r'qrInviteCode'] = this.qrInviteCode;
    } else {
      json[r'qrInviteCode'] = null;
    }
      json[r'notes'] = this.notes;
    if (this.noteCount != null) {
      json[r'noteCount'] = this.noteCount;
    } else {
      json[r'noteCount'] = null;
    }
    if (this.searchIndexUpdated != null) {
      json[r'searchIndexUpdated'] = this.searchIndexUpdated!.toUtc().toIso8601String();
    } else {
      json[r'searchIndexUpdated'] = null;
    }
    if (this.inSearchIndex != null) {
      json[r'inSearchIndex'] = this.inSearchIndex;
    } else {
      json[r'inSearchIndex'] = null;
    }
    if (this.favoriteCount != null) {
      json[r'favoriteCount'] = this.favoriteCount;
    } else {
      json[r'favoriteCount'] = null;
    }
    if (this.addedCount != null) {
      json[r'addedCount'] = this.addedCount;
    } else {
      json[r'addedCount'] = null;
    }
    if (this.display != null) {
      json[r'display'] = this.display;
    } else {
      json[r'display'] = null;
    }
    if (this.appKey != null) {
      json[r'appKey'] = this.appKey;
    } else {
      json[r'appKey'] = null;
    }
    if (this.devicePower != null) {
      json[r'devicePower'] = this.devicePower;
    } else {
      json[r'devicePower'] = null;
    }
    if (this.powerLoss != null) {
      json[r'powerLoss'] = this.powerLoss;
    } else {
      json[r'powerLoss'] = null;
    }
    if (this.udid != null) {
      json[r'udid'] = this.udid;
    } else {
      json[r'udid'] = null;
    }
    if (this.billableId != null) {
      json[r'billableId'] = this.billableId;
    } else {
      json[r'billableId'] = null;
    }
    if (this.subType != null) {
      json[r'subType'] = this.subType;
    } else {
      json[r'subType'] = null;
    }
    if (this.contentName != null) {
      json[r'contentName'] = this.contentName;
    } else {
      json[r'contentName'] = null;
    }
    if (this.contentAsset != null) {
      json[r'contentAsset'] = this.contentAsset;
    } else {
      json[r'contentAsset'] = null;
    }
    if (this.owner != null) {
      json[r'owner'] = this.owner;
    } else {
      json[r'owner'] = null;
    }
    if (this.secondaryType != null) {
      json[r'secondaryType'] = this.secondaryType;
    } else {
      json[r'secondaryType'] = null;
    }
      json[r'categoryIds'] = this.categoryIds;
      json[r'filterIds'] = this.filterIds;
    return json;
  }

  /// Returns a new [OfferLocation] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static OfferLocation? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "OfferLocation[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "OfferLocation[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return OfferLocation(
        id: mapValueOfType<int>(json, r'id'),
        active: mapValueOfType<bool>(json, r'active'),
        valid: mapValueOfType<bool>(json, r'valid'),
        latitude: mapValueOfType<double>(json, r'latitude'),
        longitude: mapValueOfType<double>(json, r'longitude'),
        locationDescription: mapValueOfType<String>(json, r'locationDescription'),
        offer: Offer.fromJson(json[r'offer']),
        location: RetailerLocation.fromJson(json[r'location']),
        distance: mapValueOfType<double>(json, r'distance'),
        altitude: mapValueOfType<double>(json, r'altitude'),
        customValue: mapValueOfType<double>(json, r'customValue'),
        locationDetail: mapValueOfType<String>(json, r'locationDetail'),
        audiences: Audience.listFromJson(json[r'audiences']),
        qrInviteCode: Asset.fromJson(json[r'qrInviteCode']),
        notes: Note.listFromJson(json[r'notes']),
        noteCount: mapValueOfType<int>(json, r'noteCount'),
        searchIndexUpdated: mapDateTime(json, r'searchIndexUpdated', r''),
        inSearchIndex: mapValueOfType<bool>(json, r'inSearchIndex'),
        favoriteCount: mapValueOfType<int>(json, r'favoriteCount'),
        addedCount: mapValueOfType<int>(json, r'addedCount'),
        display: mapValueOfType<String>(json, r'display'),
        appKey: mapValueOfType<String>(json, r'appKey'),
        devicePower: mapValueOfType<double>(json, r'devicePower'),
        powerLoss: mapValueOfType<double>(json, r'powerLoss'),
        udid: mapValueOfType<String>(json, r'udid'),
        billableId: mapValueOfType<int>(json, r'billableId'),
        subType: mapValueOfType<String>(json, r'subType'),
        contentName: mapValueOfType<String>(json, r'contentName'),
        contentAsset: Asset.fromJson(json[r'contentAsset']),
        owner: Account.fromJson(json[r'owner']),
        secondaryType: mapValueOfType<String>(json, r'secondaryType'),
        categoryIds: json[r'categoryIds'] is Iterable
            ? (json[r'categoryIds'] as Iterable).cast<int>().toList(growable: false)
            : const [],
        filterIds: json[r'filterIds'] is Iterable
            ? (json[r'filterIds'] as Iterable).cast<int>().toList(growable: false)
            : const [],
      );
    }
    return null;
  }

  static List<OfferLocation> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <OfferLocation>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = OfferLocation.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, OfferLocation> mapFromJson(dynamic json) {
    final map = <String, OfferLocation>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = OfferLocation.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of OfferLocation-objects as value to a dart map
  static Map<String, List<OfferLocation>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<OfferLocation>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = OfferLocation.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

