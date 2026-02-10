//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class PreviewPersonaResponse {
  /// Returns a new [PreviewPersonaResponse] instance.
  PreviewPersonaResponse({
    this.personaId,
    this.title,
    this.previewAccounts = const [],
    this.active,
    this.date,
    this.age,
    this.gender,
    this.gameExperienceLevel,
    this.latitude,
    this.longitude,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? personaId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? title;

  List<AccountMiniResponse> previewAccounts;

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
  int? date;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? age;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? gender;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? gameExperienceLevel;

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

  @override
  bool operator ==(Object other) => identical(this, other) || other is PreviewPersonaResponse &&
    other.personaId == personaId &&
    other.title == title &&
    _deepEquality.equals(other.previewAccounts, previewAccounts) &&
    other.active == active &&
    other.date == date &&
    other.age == age &&
    other.gender == gender &&
    other.gameExperienceLevel == gameExperienceLevel &&
    other.latitude == latitude &&
    other.longitude == longitude;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (personaId == null ? 0 : personaId!.hashCode) +
    (title == null ? 0 : title!.hashCode) +
    (previewAccounts.hashCode) +
    (active == null ? 0 : active!.hashCode) +
    (date == null ? 0 : date!.hashCode) +
    (age == null ? 0 : age!.hashCode) +
    (gender == null ? 0 : gender!.hashCode) +
    (gameExperienceLevel == null ? 0 : gameExperienceLevel!.hashCode) +
    (latitude == null ? 0 : latitude!.hashCode) +
    (longitude == null ? 0 : longitude!.hashCode);

  @override
  String toString() => 'PreviewPersonaResponse[personaId=$personaId, title=$title, previewAccounts=$previewAccounts, active=$active, date=$date, age=$age, gender=$gender, gameExperienceLevel=$gameExperienceLevel, latitude=$latitude, longitude=$longitude]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.personaId != null) {
      json[r'personaId'] = this.personaId;
    } else {
      json[r'personaId'] = null;
    }
    if (this.title != null) {
      json[r'title'] = this.title;
    } else {
      json[r'title'] = null;
    }
      json[r'previewAccounts'] = this.previewAccounts;
    if (this.active != null) {
      json[r'active'] = this.active;
    } else {
      json[r'active'] = null;
    }
    if (this.date != null) {
      json[r'date'] = this.date;
    } else {
      json[r'date'] = null;
    }
    if (this.age != null) {
      json[r'age'] = this.age;
    } else {
      json[r'age'] = null;
    }
    if (this.gender != null) {
      json[r'gender'] = this.gender;
    } else {
      json[r'gender'] = null;
    }
    if (this.gameExperienceLevel != null) {
      json[r'gameExperienceLevel'] = this.gameExperienceLevel;
    } else {
      json[r'gameExperienceLevel'] = null;
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
    return json;
  }

  /// Returns a new [PreviewPersonaResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PreviewPersonaResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "PreviewPersonaResponse[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "PreviewPersonaResponse[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return PreviewPersonaResponse(
        personaId: mapValueOfType<int>(json, r'personaId'),
        title: mapValueOfType<String>(json, r'title'),
        previewAccounts: AccountMiniResponse.listFromJson(json[r'previewAccounts']),
        active: mapValueOfType<bool>(json, r'active'),
        date: mapValueOfType<int>(json, r'date'),
        age: mapValueOfType<int>(json, r'age'),
        gender: mapValueOfType<String>(json, r'gender'),
        gameExperienceLevel: mapValueOfType<String>(json, r'gameExperienceLevel'),
        latitude: mapValueOfType<double>(json, r'latitude'),
        longitude: mapValueOfType<double>(json, r'longitude'),
      );
    }
    return null;
  }

  static List<PreviewPersonaResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PreviewPersonaResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PreviewPersonaResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PreviewPersonaResponse> mapFromJson(dynamic json) {
    final map = <String, PreviewPersonaResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PreviewPersonaResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PreviewPersonaResponse-objects as value to a dart map
  static Map<String, List<PreviewPersonaResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<PreviewPersonaResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PreviewPersonaResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

