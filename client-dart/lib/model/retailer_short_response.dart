//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class RetailerShortResponse {
  /// Returns a new [RetailerShortResponse] instance.
  RetailerShortResponse({
    this.retailerId,
    this.name,
    this.facebookUrl,
    this.twitterUrl,
    this.active,
    this.contact,
    this.logo,
    this.picture1,
    this.picture2,
    this.latitude,
    this.longitude,
    this.visibility,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? retailerId;

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
  String? facebookUrl;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? twitterUrl;

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
  ContactInfoResponse? contact;

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
  String? visibility;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RetailerShortResponse &&
    other.retailerId == retailerId &&
    other.name == name &&
    other.facebookUrl == facebookUrl &&
    other.twitterUrl == twitterUrl &&
    other.active == active &&
    other.contact == contact &&
    other.logo == logo &&
    other.picture1 == picture1 &&
    other.picture2 == picture2 &&
    other.latitude == latitude &&
    other.longitude == longitude &&
    other.visibility == visibility;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (retailerId == null ? 0 : retailerId!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (facebookUrl == null ? 0 : facebookUrl!.hashCode) +
    (twitterUrl == null ? 0 : twitterUrl!.hashCode) +
    (active == null ? 0 : active!.hashCode) +
    (contact == null ? 0 : contact!.hashCode) +
    (logo == null ? 0 : logo!.hashCode) +
    (picture1 == null ? 0 : picture1!.hashCode) +
    (picture2 == null ? 0 : picture2!.hashCode) +
    (latitude == null ? 0 : latitude!.hashCode) +
    (longitude == null ? 0 : longitude!.hashCode) +
    (visibility == null ? 0 : visibility!.hashCode);

  @override
  String toString() => 'RetailerShortResponse[retailerId=$retailerId, name=$name, facebookUrl=$facebookUrl, twitterUrl=$twitterUrl, active=$active, contact=$contact, logo=$logo, picture1=$picture1, picture2=$picture2, latitude=$latitude, longitude=$longitude, visibility=$visibility]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.retailerId != null) {
      json[r'retailerId'] = this.retailerId;
    } else {
      json[r'retailerId'] = null;
    }
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.facebookUrl != null) {
      json[r'facebookUrl'] = this.facebookUrl;
    } else {
      json[r'facebookUrl'] = null;
    }
    if (this.twitterUrl != null) {
      json[r'twitterUrl'] = this.twitterUrl;
    } else {
      json[r'twitterUrl'] = null;
    }
    if (this.active != null) {
      json[r'active'] = this.active;
    } else {
      json[r'active'] = null;
    }
    if (this.contact != null) {
      json[r'contact'] = this.contact;
    } else {
      json[r'contact'] = null;
    }
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
    if (this.visibility != null) {
      json[r'visibility'] = this.visibility;
    } else {
      json[r'visibility'] = null;
    }
    return json;
  }

  /// Returns a new [RetailerShortResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RetailerShortResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "RetailerShortResponse[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "RetailerShortResponse[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return RetailerShortResponse(
        retailerId: mapValueOfType<int>(json, r'retailerId'),
        name: mapValueOfType<String>(json, r'name'),
        facebookUrl: mapValueOfType<String>(json, r'facebookUrl'),
        twitterUrl: mapValueOfType<String>(json, r'twitterUrl'),
        active: mapValueOfType<bool>(json, r'active'),
        contact: ContactInfoResponse.fromJson(json[r'contact']),
        logo: AssetShortResponse.fromJson(json[r'logo']),
        picture1: AssetShortResponse.fromJson(json[r'picture1']),
        picture2: AssetShortResponse.fromJson(json[r'picture2']),
        latitude: mapValueOfType<double>(json, r'latitude'),
        longitude: mapValueOfType<double>(json, r'longitude'),
        visibility: mapValueOfType<String>(json, r'visibility'),
      );
    }
    return null;
  }

  static List<RetailerShortResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <RetailerShortResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RetailerShortResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, RetailerShortResponse> mapFromJson(dynamic json) {
    final map = <String, RetailerShortResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RetailerShortResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of RetailerShortResponse-objects as value to a dart map
  static Map<String, List<RetailerShortResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<RetailerShortResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = RetailerShortResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

