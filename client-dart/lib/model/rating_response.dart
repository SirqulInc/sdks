//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class RatingResponse {
  /// Returns a new [RatingResponse] instance.
  RatingResponse({
    this.ratingId,
    this.ratingValue,
    this.latitude,
    this.longitude,
    this.locationDescription,
    this.category,
    this.owner,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? ratingId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? ratingValue;

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
  CategoryResponse? category;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  AccountShortResponse? owner;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RatingResponse &&
    other.ratingId == ratingId &&
    other.ratingValue == ratingValue &&
    other.latitude == latitude &&
    other.longitude == longitude &&
    other.locationDescription == locationDescription &&
    other.category == category &&
    other.owner == owner;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (ratingId == null ? 0 : ratingId!.hashCode) +
    (ratingValue == null ? 0 : ratingValue!.hashCode) +
    (latitude == null ? 0 : latitude!.hashCode) +
    (longitude == null ? 0 : longitude!.hashCode) +
    (locationDescription == null ? 0 : locationDescription!.hashCode) +
    (category == null ? 0 : category!.hashCode) +
    (owner == null ? 0 : owner!.hashCode);

  @override
  String toString() => 'RatingResponse[ratingId=$ratingId, ratingValue=$ratingValue, latitude=$latitude, longitude=$longitude, locationDescription=$locationDescription, category=$category, owner=$owner]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.ratingId != null) {
      json[r'ratingId'] = this.ratingId;
    } else {
      json[r'ratingId'] = null;
    }
    if (this.ratingValue != null) {
      json[r'ratingValue'] = this.ratingValue;
    } else {
      json[r'ratingValue'] = null;
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
    if (this.category != null) {
      json[r'category'] = this.category;
    } else {
      json[r'category'] = null;
    }
    if (this.owner != null) {
      json[r'owner'] = this.owner;
    } else {
      json[r'owner'] = null;
    }
    return json;
  }

  /// Returns a new [RatingResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RatingResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "RatingResponse[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "RatingResponse[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return RatingResponse(
        ratingId: mapValueOfType<int>(json, r'ratingId'),
        ratingValue: mapValueOfType<int>(json, r'ratingValue'),
        latitude: mapValueOfType<double>(json, r'latitude'),
        longitude: mapValueOfType<double>(json, r'longitude'),
        locationDescription: mapValueOfType<String>(json, r'locationDescription'),
        category: CategoryResponse.fromJson(json[r'category']),
        owner: AccountShortResponse.fromJson(json[r'owner']),
      );
    }
    return null;
  }

  static List<RatingResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <RatingResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RatingResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, RatingResponse> mapFromJson(dynamic json) {
    final map = <String, RatingResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RatingResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of RatingResponse-objects as value to a dart map
  static Map<String, List<RatingResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<RatingResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = RatingResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

