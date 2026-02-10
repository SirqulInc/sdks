//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class MissionFormatResponse {
  /// Returns a new [MissionFormatResponse] instance.
  MissionFormatResponse({
    this.missionFormatId,
    this.formatType,
    this.active,
    this.name,
    this.description,
    this.format,
    this.suffix,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? missionFormatId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? formatType;

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
  String? name;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? description;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? format;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? suffix;

  @override
  bool operator ==(Object other) => identical(this, other) || other is MissionFormatResponse &&
    other.missionFormatId == missionFormatId &&
    other.formatType == formatType &&
    other.active == active &&
    other.name == name &&
    other.description == description &&
    other.format == format &&
    other.suffix == suffix;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (missionFormatId == null ? 0 : missionFormatId!.hashCode) +
    (formatType == null ? 0 : formatType!.hashCode) +
    (active == null ? 0 : active!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (description == null ? 0 : description!.hashCode) +
    (format == null ? 0 : format!.hashCode) +
    (suffix == null ? 0 : suffix!.hashCode);

  @override
  String toString() => 'MissionFormatResponse[missionFormatId=$missionFormatId, formatType=$formatType, active=$active, name=$name, description=$description, format=$format, suffix=$suffix]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.missionFormatId != null) {
      json[r'missionFormatId'] = this.missionFormatId;
    } else {
      json[r'missionFormatId'] = null;
    }
    if (this.formatType != null) {
      json[r'formatType'] = this.formatType;
    } else {
      json[r'formatType'] = null;
    }
    if (this.active != null) {
      json[r'active'] = this.active;
    } else {
      json[r'active'] = null;
    }
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.description != null) {
      json[r'description'] = this.description;
    } else {
      json[r'description'] = null;
    }
    if (this.format != null) {
      json[r'format'] = this.format;
    } else {
      json[r'format'] = null;
    }
    if (this.suffix != null) {
      json[r'suffix'] = this.suffix;
    } else {
      json[r'suffix'] = null;
    }
    return json;
  }

  /// Returns a new [MissionFormatResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MissionFormatResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "MissionFormatResponse[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "MissionFormatResponse[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MissionFormatResponse(
        missionFormatId: mapValueOfType<int>(json, r'missionFormatId'),
        formatType: mapValueOfType<String>(json, r'formatType'),
        active: mapValueOfType<bool>(json, r'active'),
        name: mapValueOfType<String>(json, r'name'),
        description: mapValueOfType<String>(json, r'description'),
        format: mapValueOfType<String>(json, r'format'),
        suffix: mapValueOfType<String>(json, r'suffix'),
      );
    }
    return null;
  }

  static List<MissionFormatResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <MissionFormatResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MissionFormatResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MissionFormatResponse> mapFromJson(dynamic json) {
    final map = <String, MissionFormatResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MissionFormatResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MissionFormatResponse-objects as value to a dart map
  static Map<String, List<MissionFormatResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<MissionFormatResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = MissionFormatResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

