//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ApplicationSettingsResponse {
  /// Returns a new [ApplicationSettingsResponse] instance.
  ApplicationSettingsResponse({
    this.application,
    this.termsAcceptedDate,
    this.updated,
    this.created,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  ApplicationMiniResponse? application;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? termsAcceptedDate;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? updated;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? created;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ApplicationSettingsResponse &&
    other.application == application &&
    other.termsAcceptedDate == termsAcceptedDate &&
    other.updated == updated &&
    other.created == created;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (application == null ? 0 : application!.hashCode) +
    (termsAcceptedDate == null ? 0 : termsAcceptedDate!.hashCode) +
    (updated == null ? 0 : updated!.hashCode) +
    (created == null ? 0 : created!.hashCode);

  @override
  String toString() => 'ApplicationSettingsResponse[application=$application, termsAcceptedDate=$termsAcceptedDate, updated=$updated, created=$created]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.application != null) {
      json[r'application'] = this.application;
    } else {
      json[r'application'] = null;
    }
    if (this.termsAcceptedDate != null) {
      json[r'termsAcceptedDate'] = this.termsAcceptedDate;
    } else {
      json[r'termsAcceptedDate'] = null;
    }
    if (this.updated != null) {
      json[r'updated'] = this.updated;
    } else {
      json[r'updated'] = null;
    }
    if (this.created != null) {
      json[r'created'] = this.created;
    } else {
      json[r'created'] = null;
    }
    return json;
  }

  /// Returns a new [ApplicationSettingsResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ApplicationSettingsResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ApplicationSettingsResponse[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ApplicationSettingsResponse[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ApplicationSettingsResponse(
        application: ApplicationMiniResponse.fromJson(json[r'application']),
        termsAcceptedDate: mapValueOfType<int>(json, r'termsAcceptedDate'),
        updated: mapValueOfType<int>(json, r'updated'),
        created: mapValueOfType<int>(json, r'created'),
      );
    }
    return null;
  }

  static List<ApplicationSettingsResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ApplicationSettingsResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ApplicationSettingsResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ApplicationSettingsResponse> mapFromJson(dynamic json) {
    final map = <String, ApplicationSettingsResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ApplicationSettingsResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ApplicationSettingsResponse-objects as value to a dart map
  static Map<String, List<ApplicationSettingsResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ApplicationSettingsResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ApplicationSettingsResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

