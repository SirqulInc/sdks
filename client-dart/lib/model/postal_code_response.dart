//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class PostalCodeResponse {
  /// Returns a new [PostalCodeResponse] instance.
  PostalCodeResponse({
    this.city,
    this.stateCode,
    this.code,
    this.latitude,
    this.longitude,
    this.timezone,
    this.utcOffset,
  });

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
  String? stateCode;

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
  String? timezone;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? utcOffset;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PostalCodeResponse &&
    other.city == city &&
    other.stateCode == stateCode &&
    other.code == code &&
    other.latitude == latitude &&
    other.longitude == longitude &&
    other.timezone == timezone &&
    other.utcOffset == utcOffset;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (city == null ? 0 : city!.hashCode) +
    (stateCode == null ? 0 : stateCode!.hashCode) +
    (code == null ? 0 : code!.hashCode) +
    (latitude == null ? 0 : latitude!.hashCode) +
    (longitude == null ? 0 : longitude!.hashCode) +
    (timezone == null ? 0 : timezone!.hashCode) +
    (utcOffset == null ? 0 : utcOffset!.hashCode);

  @override
  String toString() => 'PostalCodeResponse[city=$city, stateCode=$stateCode, code=$code, latitude=$latitude, longitude=$longitude, timezone=$timezone, utcOffset=$utcOffset]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.city != null) {
      json[r'city'] = this.city;
    } else {
      json[r'city'] = null;
    }
    if (this.stateCode != null) {
      json[r'stateCode'] = this.stateCode;
    } else {
      json[r'stateCode'] = null;
    }
    if (this.code != null) {
      json[r'code'] = this.code;
    } else {
      json[r'code'] = null;
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
    if (this.timezone != null) {
      json[r'timezone'] = this.timezone;
    } else {
      json[r'timezone'] = null;
    }
    if (this.utcOffset != null) {
      json[r'utcOffset'] = this.utcOffset;
    } else {
      json[r'utcOffset'] = null;
    }
    return json;
  }

  /// Returns a new [PostalCodeResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PostalCodeResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "PostalCodeResponse[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "PostalCodeResponse[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return PostalCodeResponse(
        city: mapValueOfType<String>(json, r'city'),
        stateCode: mapValueOfType<String>(json, r'stateCode'),
        code: mapValueOfType<String>(json, r'code'),
        latitude: mapValueOfType<double>(json, r'latitude'),
        longitude: mapValueOfType<double>(json, r'longitude'),
        timezone: mapValueOfType<String>(json, r'timezone'),
        utcOffset: mapValueOfType<int>(json, r'utcOffset'),
      );
    }
    return null;
  }

  static List<PostalCodeResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PostalCodeResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PostalCodeResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PostalCodeResponse> mapFromJson(dynamic json) {
    final map = <String, PostalCodeResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PostalCodeResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PostalCodeResponse-objects as value to a dart map
  static Map<String, List<PostalCodeResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<PostalCodeResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PostalCodeResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

