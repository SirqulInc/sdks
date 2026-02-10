//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class RetailerLocationResponse {
  /// Returns a new [RetailerLocationResponse] instance.
  RetailerLocationResponse({
    this.retailerLocationId,
    this.name,
    this.contact,
    this.latitude,
    this.longitude,
    this.active,
    this.favoriteId,
    this.favorite,
    this.responsible,
    this.manager,
    this.categories = const [],
    this.filters = const [],
    this.logo,
    this.picture1,
    this.picture2,
    this.billableEntity,
    this.counts,
    this.retailer,
    this.offers,
    this.internalId,
    this.detailsHeader,
    this.detailsBody,
    this.hours,
    this.locationToken,
    this.building,
    this.qrCodeUrl,
    this.distance,
    this.googlePlaceId,
    this.yelpId,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? retailerLocationId;

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
  ContactInfoResponse? contact;

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
  bool? active;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? favoriteId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? favorite;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  ProfileShortResponse? responsible;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  ProfileShortResponse? manager;

  List<CategoryResponse> categories;

  List<FilterResponse> filters;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  AssetShortResponse? logo;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  AssetShortResponse? picture1;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  AssetShortResponse? picture2;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  BillableEntityResponse? billableEntity;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  RetailerCountResponse? counts;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  RetailerShortResponse? retailer;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  ListResponse? offers;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? internalId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? detailsHeader;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? detailsBody;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? hours;

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
  String? building;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? qrCodeUrl;

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
  String? googlePlaceId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? yelpId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RetailerLocationResponse &&
    other.retailerLocationId == retailerLocationId &&
    other.name == name &&
    other.contact == contact &&
    other.latitude == latitude &&
    other.longitude == longitude &&
    other.active == active &&
    other.favoriteId == favoriteId &&
    other.favorite == favorite &&
    other.responsible == responsible &&
    other.manager == manager &&
    _deepEquality.equals(other.categories, categories) &&
    _deepEquality.equals(other.filters, filters) &&
    other.logo == logo &&
    other.picture1 == picture1 &&
    other.picture2 == picture2 &&
    other.billableEntity == billableEntity &&
    other.counts == counts &&
    other.retailer == retailer &&
    other.offers == offers &&
    other.internalId == internalId &&
    other.detailsHeader == detailsHeader &&
    other.detailsBody == detailsBody &&
    other.hours == hours &&
    other.locationToken == locationToken &&
    other.building == building &&
    other.qrCodeUrl == qrCodeUrl &&
    other.distance == distance &&
    other.googlePlaceId == googlePlaceId &&
    other.yelpId == yelpId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (retailerLocationId == null ? 0 : retailerLocationId!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (contact == null ? 0 : contact!.hashCode) +
    (latitude == null ? 0 : latitude!.hashCode) +
    (longitude == null ? 0 : longitude!.hashCode) +
    (active == null ? 0 : active!.hashCode) +
    (favoriteId == null ? 0 : favoriteId!.hashCode) +
    (favorite == null ? 0 : favorite!.hashCode) +
    (responsible == null ? 0 : responsible!.hashCode) +
    (manager == null ? 0 : manager!.hashCode) +
    (categories.hashCode) +
    (filters.hashCode) +
    (logo == null ? 0 : logo!.hashCode) +
    (picture1 == null ? 0 : picture1!.hashCode) +
    (picture2 == null ? 0 : picture2!.hashCode) +
    (billableEntity == null ? 0 : billableEntity!.hashCode) +
    (counts == null ? 0 : counts!.hashCode) +
    (retailer == null ? 0 : retailer!.hashCode) +
    (offers == null ? 0 : offers!.hashCode) +
    (internalId == null ? 0 : internalId!.hashCode) +
    (detailsHeader == null ? 0 : detailsHeader!.hashCode) +
    (detailsBody == null ? 0 : detailsBody!.hashCode) +
    (hours == null ? 0 : hours!.hashCode) +
    (locationToken == null ? 0 : locationToken!.hashCode) +
    (building == null ? 0 : building!.hashCode) +
    (qrCodeUrl == null ? 0 : qrCodeUrl!.hashCode) +
    (distance == null ? 0 : distance!.hashCode) +
    (googlePlaceId == null ? 0 : googlePlaceId!.hashCode) +
    (yelpId == null ? 0 : yelpId!.hashCode);

  @override
  String toString() => 'RetailerLocationResponse[retailerLocationId=$retailerLocationId, name=$name, contact=$contact, latitude=$latitude, longitude=$longitude, active=$active, favoriteId=$favoriteId, favorite=$favorite, responsible=$responsible, manager=$manager, categories=$categories, filters=$filters, logo=$logo, picture1=$picture1, picture2=$picture2, billableEntity=$billableEntity, counts=$counts, retailer=$retailer, offers=$offers, internalId=$internalId, detailsHeader=$detailsHeader, detailsBody=$detailsBody, hours=$hours, locationToken=$locationToken, building=$building, qrCodeUrl=$qrCodeUrl, distance=$distance, googlePlaceId=$googlePlaceId, yelpId=$yelpId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.retailerLocationId != null) {
      json[r'retailerLocationId'] = this.retailerLocationId;
    } else {
      json[r'retailerLocationId'] = null;
    }
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.contact != null) {
      json[r'contact'] = this.contact;
    } else {
      json[r'contact'] = null;
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
    if (this.active != null) {
      json[r'active'] = this.active;
    } else {
      json[r'active'] = null;
    }
    if (this.favoriteId != null) {
      json[r'favoriteId'] = this.favoriteId;
    } else {
      json[r'favoriteId'] = null;
    }
    if (this.favorite != null) {
      json[r'favorite'] = this.favorite;
    } else {
      json[r'favorite'] = null;
    }
    if (this.responsible != null) {
      json[r'responsible'] = this.responsible;
    } else {
      json[r'responsible'] = null;
    }
    if (this.manager != null) {
      json[r'manager'] = this.manager;
    } else {
      json[r'manager'] = null;
    }
      json[r'categories'] = this.categories;
      json[r'filters'] = this.filters;
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
    if (this.billableEntity != null) {
      json[r'billableEntity'] = this.billableEntity;
    } else {
      json[r'billableEntity'] = null;
    }
    if (this.counts != null) {
      json[r'counts'] = this.counts;
    } else {
      json[r'counts'] = null;
    }
    if (this.retailer != null) {
      json[r'retailer'] = this.retailer;
    } else {
      json[r'retailer'] = null;
    }
    if (this.offers != null) {
      json[r'offers'] = this.offers;
    } else {
      json[r'offers'] = null;
    }
    if (this.internalId != null) {
      json[r'internalId'] = this.internalId;
    } else {
      json[r'internalId'] = null;
    }
    if (this.detailsHeader != null) {
      json[r'detailsHeader'] = this.detailsHeader;
    } else {
      json[r'detailsHeader'] = null;
    }
    if (this.detailsBody != null) {
      json[r'detailsBody'] = this.detailsBody;
    } else {
      json[r'detailsBody'] = null;
    }
    if (this.hours != null) {
      json[r'hours'] = this.hours;
    } else {
      json[r'hours'] = null;
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
    if (this.qrCodeUrl != null) {
      json[r'qrCodeUrl'] = this.qrCodeUrl;
    } else {
      json[r'qrCodeUrl'] = null;
    }
    if (this.distance != null) {
      json[r'distance'] = this.distance;
    } else {
      json[r'distance'] = null;
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
    return json;
  }

  /// Returns a new [RetailerLocationResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RetailerLocationResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "RetailerLocationResponse[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "RetailerLocationResponse[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return RetailerLocationResponse(
        retailerLocationId: mapValueOfType<int>(json, r'retailerLocationId'),
        name: mapValueOfType<String>(json, r'name'),
        contact: ContactInfoResponse.fromJson(json[r'contact']),
        latitude: mapValueOfType<double>(json, r'latitude'),
        longitude: mapValueOfType<double>(json, r'longitude'),
        active: mapValueOfType<bool>(json, r'active'),
        favoriteId: mapValueOfType<int>(json, r'favoriteId'),
        favorite: mapValueOfType<bool>(json, r'favorite'),
        responsible: ProfileShortResponse.fromJson(json[r'responsible']),
        manager: ProfileShortResponse.fromJson(json[r'manager']),
        categories: CategoryResponse.listFromJson(json[r'categories']),
        filters: FilterResponse.listFromJson(json[r'filters']),
        logo: AssetShortResponse.fromJson(json[r'logo']),
        picture1: AssetShortResponse.fromJson(json[r'picture1']),
        picture2: AssetShortResponse.fromJson(json[r'picture2']),
        billableEntity: BillableEntityResponse.fromJson(json[r'billableEntity']),
        counts: RetailerCountResponse.fromJson(json[r'counts']),
        retailer: RetailerShortResponse.fromJson(json[r'retailer']),
        offers: ListResponse.fromJson(json[r'offers']),
        internalId: mapValueOfType<String>(json, r'internalId'),
        detailsHeader: mapValueOfType<String>(json, r'detailsHeader'),
        detailsBody: mapValueOfType<String>(json, r'detailsBody'),
        hours: mapValueOfType<String>(json, r'hours'),
        locationToken: mapValueOfType<String>(json, r'locationToken'),
        building: mapValueOfType<String>(json, r'building'),
        qrCodeUrl: mapValueOfType<String>(json, r'qrCodeUrl'),
        distance: mapValueOfType<double>(json, r'distance'),
        googlePlaceId: mapValueOfType<String>(json, r'googlePlaceId'),
        yelpId: mapValueOfType<String>(json, r'yelpId'),
      );
    }
    return null;
  }

  static List<RetailerLocationResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <RetailerLocationResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RetailerLocationResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, RetailerLocationResponse> mapFromJson(dynamic json) {
    final map = <String, RetailerLocationResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RetailerLocationResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of RetailerLocationResponse-objects as value to a dart map
  static Map<String, List<RetailerLocationResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<RetailerLocationResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = RetailerLocationResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

