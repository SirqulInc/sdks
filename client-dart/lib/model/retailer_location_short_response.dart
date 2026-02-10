//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class RetailerLocationShortResponse {
  /// Returns a new [RetailerLocationShortResponse] instance.
  RetailerLocationShortResponse({
    this.retailerLocationId,
    this.name,
    this.contact,
    this.latitude,
    this.longitude,
    this.active,
    this.favoriteId,
    this.favorite,
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

  @override
  bool operator ==(Object other) => identical(this, other) || other is RetailerLocationShortResponse &&
    other.retailerLocationId == retailerLocationId &&
    other.name == name &&
    other.contact == contact &&
    other.latitude == latitude &&
    other.longitude == longitude &&
    other.active == active &&
    other.favoriteId == favoriteId &&
    other.favorite == favorite;

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
    (favorite == null ? 0 : favorite!.hashCode);

  @override
  String toString() => 'RetailerLocationShortResponse[retailerLocationId=$retailerLocationId, name=$name, contact=$contact, latitude=$latitude, longitude=$longitude, active=$active, favoriteId=$favoriteId, favorite=$favorite]';

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
    return json;
  }

  /// Returns a new [RetailerLocationShortResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RetailerLocationShortResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "RetailerLocationShortResponse[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "RetailerLocationShortResponse[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return RetailerLocationShortResponse(
        retailerLocationId: mapValueOfType<int>(json, r'retailerLocationId'),
        name: mapValueOfType<String>(json, r'name'),
        contact: ContactInfoResponse.fromJson(json[r'contact']),
        latitude: mapValueOfType<double>(json, r'latitude'),
        longitude: mapValueOfType<double>(json, r'longitude'),
        active: mapValueOfType<bool>(json, r'active'),
        favoriteId: mapValueOfType<int>(json, r'favoriteId'),
        favorite: mapValueOfType<bool>(json, r'favorite'),
      );
    }
    return null;
  }

  static List<RetailerLocationShortResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <RetailerLocationShortResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RetailerLocationShortResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, RetailerLocationShortResponse> mapFromJson(dynamic json) {
    final map = <String, RetailerLocationShortResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RetailerLocationShortResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of RetailerLocationShortResponse-objects as value to a dart map
  static Map<String, List<RetailerLocationShortResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<RetailerLocationShortResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = RetailerLocationShortResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

