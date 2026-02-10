//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class RetailerLocation {
  /// Returns a new [RetailerLocation] instance.
  RetailerLocation({
    this.id,
    this.active,
    this.valid,
    this.latitude,
    this.longitude,
    this.locationDescription,
    this.categories = const [],
    this.filters = const [],
    this.offerLocations = const [],
    this.logo,
    this.picture1,
    this.picture2,
    this.qrCode,
    this.name,
    this.locationId,
    this.code,
    this.retailer,
    this.assignments = const [],
    this.currentAssignment,
    this.profile,
    this.regions = const [],
    this.offerPrintKeyPrefix,
    this.administrators = const [],
    this.sqootId,
    this.yipitId,
    this.locationToken,
    this.building,
    this.notes = const [],
    this.noteCount,
    this.searchIndexUpdated,
    this.inSearchIndex,
    this.favoriteCount,
    this.hasRatings,
    this.googlePlaceId,
    this.yelpId,
    this.display,
    this.appKey,
    this.categoryTree,
    this.filterTree,
    this.addressDisplay,
    this.mapQuery,
    this.sortName,
    this.fullDisplay,
    this.hasOffers,
    this.billableId,
    this.subType,
    this.contentName,
    this.owner,
    this.secondaryType,
    this.locationAddress,
    this.validOfferLocationIds = const [],
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

  List<Category> categories;

  List<Filter> filters;

  List<OfferLocation> offerLocations;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Asset? logo;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Asset? picture1;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Asset? picture2;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Asset? qrCode;

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
  String? locationId;

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
  Retailer? retailer;

  List<Assignment> assignments;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Assignment? currentAssignment;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  RetailerProfile? profile;

  List<Region> regions;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? offerPrintKeyPrefix;

  List<Account> administrators;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? sqootId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? yipitId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? locationToken;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Building? building;

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
  bool? hasRatings;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? googlePlaceId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? yelpId;

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
  String? categoryTree;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? filterTree;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? addressDisplay;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? mapQuery;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? sortName;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? fullDisplay;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? hasOffers;

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
  Account? owner;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? secondaryType;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? locationAddress;

  List<int> validOfferLocationIds;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RetailerLocation &&
    other.id == id &&
    other.active == active &&
    other.valid == valid &&
    other.latitude == latitude &&
    other.longitude == longitude &&
    other.locationDescription == locationDescription &&
    _deepEquality.equals(other.categories, categories) &&
    _deepEquality.equals(other.filters, filters) &&
    _deepEquality.equals(other.offerLocations, offerLocations) &&
    other.logo == logo &&
    other.picture1 == picture1 &&
    other.picture2 == picture2 &&
    other.qrCode == qrCode &&
    other.name == name &&
    other.locationId == locationId &&
    other.code == code &&
    other.retailer == retailer &&
    _deepEquality.equals(other.assignments, assignments) &&
    other.currentAssignment == currentAssignment &&
    other.profile == profile &&
    _deepEquality.equals(other.regions, regions) &&
    other.offerPrintKeyPrefix == offerPrintKeyPrefix &&
    _deepEquality.equals(other.administrators, administrators) &&
    other.sqootId == sqootId &&
    other.yipitId == yipitId &&
    other.locationToken == locationToken &&
    other.building == building &&
    _deepEquality.equals(other.notes, notes) &&
    other.noteCount == noteCount &&
    other.searchIndexUpdated == searchIndexUpdated &&
    other.inSearchIndex == inSearchIndex &&
    other.favoriteCount == favoriteCount &&
    other.hasRatings == hasRatings &&
    other.googlePlaceId == googlePlaceId &&
    other.yelpId == yelpId &&
    other.display == display &&
    other.appKey == appKey &&
    other.categoryTree == categoryTree &&
    other.filterTree == filterTree &&
    other.addressDisplay == addressDisplay &&
    other.mapQuery == mapQuery &&
    other.sortName == sortName &&
    other.fullDisplay == fullDisplay &&
    other.hasOffers == hasOffers &&
    other.billableId == billableId &&
    other.subType == subType &&
    other.contentName == contentName &&
    other.owner == owner &&
    other.secondaryType == secondaryType &&
    other.locationAddress == locationAddress &&
    _deepEquality.equals(other.validOfferLocationIds, validOfferLocationIds);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (active == null ? 0 : active!.hashCode) +
    (valid == null ? 0 : valid!.hashCode) +
    (latitude == null ? 0 : latitude!.hashCode) +
    (longitude == null ? 0 : longitude!.hashCode) +
    (locationDescription == null ? 0 : locationDescription!.hashCode) +
    (categories.hashCode) +
    (filters.hashCode) +
    (offerLocations.hashCode) +
    (logo == null ? 0 : logo!.hashCode) +
    (picture1 == null ? 0 : picture1!.hashCode) +
    (picture2 == null ? 0 : picture2!.hashCode) +
    (qrCode == null ? 0 : qrCode!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (locationId == null ? 0 : locationId!.hashCode) +
    (code == null ? 0 : code!.hashCode) +
    (retailer == null ? 0 : retailer!.hashCode) +
    (assignments.hashCode) +
    (currentAssignment == null ? 0 : currentAssignment!.hashCode) +
    (profile == null ? 0 : profile!.hashCode) +
    (regions.hashCode) +
    (offerPrintKeyPrefix == null ? 0 : offerPrintKeyPrefix!.hashCode) +
    (administrators.hashCode) +
    (sqootId == null ? 0 : sqootId!.hashCode) +
    (yipitId == null ? 0 : yipitId!.hashCode) +
    (locationToken == null ? 0 : locationToken!.hashCode) +
    (building == null ? 0 : building!.hashCode) +
    (notes.hashCode) +
    (noteCount == null ? 0 : noteCount!.hashCode) +
    (searchIndexUpdated == null ? 0 : searchIndexUpdated!.hashCode) +
    (inSearchIndex == null ? 0 : inSearchIndex!.hashCode) +
    (favoriteCount == null ? 0 : favoriteCount!.hashCode) +
    (hasRatings == null ? 0 : hasRatings!.hashCode) +
    (googlePlaceId == null ? 0 : googlePlaceId!.hashCode) +
    (yelpId == null ? 0 : yelpId!.hashCode) +
    (display == null ? 0 : display!.hashCode) +
    (appKey == null ? 0 : appKey!.hashCode) +
    (categoryTree == null ? 0 : categoryTree!.hashCode) +
    (filterTree == null ? 0 : filterTree!.hashCode) +
    (addressDisplay == null ? 0 : addressDisplay!.hashCode) +
    (mapQuery == null ? 0 : mapQuery!.hashCode) +
    (sortName == null ? 0 : sortName!.hashCode) +
    (fullDisplay == null ? 0 : fullDisplay!.hashCode) +
    (hasOffers == null ? 0 : hasOffers!.hashCode) +
    (billableId == null ? 0 : billableId!.hashCode) +
    (subType == null ? 0 : subType!.hashCode) +
    (contentName == null ? 0 : contentName!.hashCode) +
    (owner == null ? 0 : owner!.hashCode) +
    (secondaryType == null ? 0 : secondaryType!.hashCode) +
    (locationAddress == null ? 0 : locationAddress!.hashCode) +
    (validOfferLocationIds.hashCode);

  @override
  String toString() => 'RetailerLocation[id=$id, active=$active, valid=$valid, latitude=$latitude, longitude=$longitude, locationDescription=$locationDescription, categories=$categories, filters=$filters, offerLocations=$offerLocations, logo=$logo, picture1=$picture1, picture2=$picture2, qrCode=$qrCode, name=$name, locationId=$locationId, code=$code, retailer=$retailer, assignments=$assignments, currentAssignment=$currentAssignment, profile=$profile, regions=$regions, offerPrintKeyPrefix=$offerPrintKeyPrefix, administrators=$administrators, sqootId=$sqootId, yipitId=$yipitId, locationToken=$locationToken, building=$building, notes=$notes, noteCount=$noteCount, searchIndexUpdated=$searchIndexUpdated, inSearchIndex=$inSearchIndex, favoriteCount=$favoriteCount, hasRatings=$hasRatings, googlePlaceId=$googlePlaceId, yelpId=$yelpId, display=$display, appKey=$appKey, categoryTree=$categoryTree, filterTree=$filterTree, addressDisplay=$addressDisplay, mapQuery=$mapQuery, sortName=$sortName, fullDisplay=$fullDisplay, hasOffers=$hasOffers, billableId=$billableId, subType=$subType, contentName=$contentName, owner=$owner, secondaryType=$secondaryType, locationAddress=$locationAddress, validOfferLocationIds=$validOfferLocationIds]';

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
      json[r'categories'] = this.categories;
      json[r'filters'] = this.filters;
      json[r'offerLocations'] = this.offerLocations;
    if (this.logo != null) {
      json[r'logo'] = this.logo;
    } else {
      json[r'logo'] = null;
    }
    if (this.picture1 != null) {
      json[r'picture1'] = this.picture1;
    } else {
      json[r'picture1'] = null;
    }
    if (this.picture2 != null) {
      json[r'picture2'] = this.picture2;
    } else {
      json[r'picture2'] = null;
    }
    if (this.qrCode != null) {
      json[r'qrCode'] = this.qrCode;
    } else {
      json[r'qrCode'] = null;
    }
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.locationId != null) {
      json[r'locationId'] = this.locationId;
    } else {
      json[r'locationId'] = null;
    }
    if (this.code != null) {
      json[r'code'] = this.code;
    } else {
      json[r'code'] = null;
    }
    if (this.retailer != null) {
      json[r'retailer'] = this.retailer;
    } else {
      json[r'retailer'] = null;
    }
      json[r'assignments'] = this.assignments;
    if (this.currentAssignment != null) {
      json[r'currentAssignment'] = this.currentAssignment;
    } else {
      json[r'currentAssignment'] = null;
    }
    if (this.profile != null) {
      json[r'profile'] = this.profile;
    } else {
      json[r'profile'] = null;
    }
      json[r'regions'] = this.regions;
    if (this.offerPrintKeyPrefix != null) {
      json[r'offerPrintKeyPrefix'] = this.offerPrintKeyPrefix;
    } else {
      json[r'offerPrintKeyPrefix'] = null;
    }
      json[r'administrators'] = this.administrators;
    if (this.sqootId != null) {
      json[r'sqootId'] = this.sqootId;
    } else {
      json[r'sqootId'] = null;
    }
    if (this.yipitId != null) {
      json[r'yipitId'] = this.yipitId;
    } else {
      json[r'yipitId'] = null;
    }
    if (this.locationToken != null) {
      json[r'locationToken'] = this.locationToken;
    } else {
      json[r'locationToken'] = null;
    }
    if (this.building != null) {
      json[r'building'] = this.building;
    } else {
      json[r'building'] = null;
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
    if (this.hasRatings != null) {
      json[r'hasRatings'] = this.hasRatings;
    } else {
      json[r'hasRatings'] = null;
    }
    if (this.googlePlaceId != null) {
      json[r'googlePlaceId'] = this.googlePlaceId;
    } else {
      json[r'googlePlaceId'] = null;
    }
    if (this.yelpId != null) {
      json[r'yelpId'] = this.yelpId;
    } else {
      json[r'yelpId'] = null;
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
    if (this.categoryTree != null) {
      json[r'categoryTree'] = this.categoryTree;
    } else {
      json[r'categoryTree'] = null;
    }
    if (this.filterTree != null) {
      json[r'filterTree'] = this.filterTree;
    } else {
      json[r'filterTree'] = null;
    }
    if (this.addressDisplay != null) {
      json[r'addressDisplay'] = this.addressDisplay;
    } else {
      json[r'addressDisplay'] = null;
    }
    if (this.mapQuery != null) {
      json[r'mapQuery'] = this.mapQuery;
    } else {
      json[r'mapQuery'] = null;
    }
    if (this.sortName != null) {
      json[r'sortName'] = this.sortName;
    } else {
      json[r'sortName'] = null;
    }
    if (this.fullDisplay != null) {
      json[r'fullDisplay'] = this.fullDisplay;
    } else {
      json[r'fullDisplay'] = null;
    }
    if (this.hasOffers != null) {
      json[r'hasOffers'] = this.hasOffers;
    } else {
      json[r'hasOffers'] = null;
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
    if (this.locationAddress != null) {
      json[r'locationAddress'] = this.locationAddress;
    } else {
      json[r'locationAddress'] = null;
    }
      json[r'validOfferLocationIds'] = this.validOfferLocationIds;
    return json;
  }

  /// Returns a new [RetailerLocation] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RetailerLocation? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "RetailerLocation[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "RetailerLocation[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return RetailerLocation(
        id: mapValueOfType<int>(json, r'id'),
        active: mapValueOfType<bool>(json, r'active'),
        valid: mapValueOfType<bool>(json, r'valid'),
        latitude: mapValueOfType<double>(json, r'latitude'),
        longitude: mapValueOfType<double>(json, r'longitude'),
        locationDescription: mapValueOfType<String>(json, r'locationDescription'),
        categories: Category.listFromJson(json[r'categories']),
        filters: Filter.listFromJson(json[r'filters']),
        offerLocations: OfferLocation.listFromJson(json[r'offerLocations']),
        logo: Asset.fromJson(json[r'logo']),
        picture1: Asset.fromJson(json[r'picture1']),
        picture2: Asset.fromJson(json[r'picture2']),
        qrCode: Asset.fromJson(json[r'qrCode']),
        name: mapValueOfType<String>(json, r'name'),
        locationId: mapValueOfType<String>(json, r'locationId'),
        code: mapValueOfType<String>(json, r'code'),
        retailer: Retailer.fromJson(json[r'retailer']),
        assignments: Assignment.listFromJson(json[r'assignments']),
        currentAssignment: Assignment.fromJson(json[r'currentAssignment']),
        profile: RetailerProfile.fromJson(json[r'profile']),
        regions: Region.listFromJson(json[r'regions']),
        offerPrintKeyPrefix: mapValueOfType<String>(json, r'offerPrintKeyPrefix'),
        administrators: Account.listFromJson(json[r'administrators']),
        sqootId: mapValueOfType<int>(json, r'sqootId'),
        yipitId: mapValueOfType<int>(json, r'yipitId'),
        locationToken: mapValueOfType<String>(json, r'locationToken'),
        building: Building.fromJson(json[r'building']),
        notes: Note.listFromJson(json[r'notes']),
        noteCount: mapValueOfType<int>(json, r'noteCount'),
        searchIndexUpdated: mapDateTime(json, r'searchIndexUpdated', r''),
        inSearchIndex: mapValueOfType<bool>(json, r'inSearchIndex'),
        favoriteCount: mapValueOfType<int>(json, r'favoriteCount'),
        hasRatings: mapValueOfType<bool>(json, r'hasRatings'),
        googlePlaceId: mapValueOfType<String>(json, r'googlePlaceId'),
        yelpId: mapValueOfType<String>(json, r'yelpId'),
        display: mapValueOfType<String>(json, r'display'),
        appKey: mapValueOfType<String>(json, r'appKey'),
        categoryTree: mapValueOfType<String>(json, r'categoryTree'),
        filterTree: mapValueOfType<String>(json, r'filterTree'),
        addressDisplay: mapValueOfType<String>(json, r'addressDisplay'),
        mapQuery: mapValueOfType<String>(json, r'mapQuery'),
        sortName: mapValueOfType<String>(json, r'sortName'),
        fullDisplay: mapValueOfType<String>(json, r'fullDisplay'),
        hasOffers: mapValueOfType<bool>(json, r'hasOffers'),
        billableId: mapValueOfType<int>(json, r'billableId'),
        subType: mapValueOfType<String>(json, r'subType'),
        contentName: mapValueOfType<String>(json, r'contentName'),
        owner: Account.fromJson(json[r'owner']),
        secondaryType: mapValueOfType<String>(json, r'secondaryType'),
        locationAddress: mapValueOfType<String>(json, r'locationAddress'),
        validOfferLocationIds: json[r'validOfferLocationIds'] is Iterable
            ? (json[r'validOfferLocationIds'] as Iterable).cast<int>().toList(growable: false)
            : const [],
      );
    }
    return null;
  }

  static List<RetailerLocation> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <RetailerLocation>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RetailerLocation.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, RetailerLocation> mapFromJson(dynamic json) {
    final map = <String, RetailerLocation>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RetailerLocation.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of RetailerLocation-objects as value to a dart map
  static Map<String, List<RetailerLocation>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<RetailerLocation>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = RetailerLocation.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

