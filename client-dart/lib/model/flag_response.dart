//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class FlagResponse {
  /// Returns a new [FlagResponse] instance.
  FlagResponse({
    this.flagId,
    this.flagableId,
    this.flagableType,
    this.flagDescription,
    this.createdDate,
    this.updatedDate,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? flagId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? flagableId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? flagableType;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? flagDescription;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? createdDate;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? updatedDate;

  @override
  bool operator ==(Object other) => identical(this, other) || other is FlagResponse &&
    other.flagId == flagId &&
    other.flagableId == flagableId &&
    other.flagableType == flagableType &&
    other.flagDescription == flagDescription &&
    other.createdDate == createdDate &&
    other.updatedDate == updatedDate;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (flagId == null ? 0 : flagId!.hashCode) +
    (flagableId == null ? 0 : flagableId!.hashCode) +
    (flagableType == null ? 0 : flagableType!.hashCode) +
    (flagDescription == null ? 0 : flagDescription!.hashCode) +
    (createdDate == null ? 0 : createdDate!.hashCode) +
    (updatedDate == null ? 0 : updatedDate!.hashCode);

  @override
  String toString() => 'FlagResponse[flagId=$flagId, flagableId=$flagableId, flagableType=$flagableType, flagDescription=$flagDescription, createdDate=$createdDate, updatedDate=$updatedDate]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.flagId != null) {
      json[r'flagId'] = this.flagId;
    } else {
      json[r'flagId'] = null;
    }
    if (this.flagableId != null) {
      json[r'flagableId'] = this.flagableId;
    } else {
      json[r'flagableId'] = null;
    }
    if (this.flagableType != null) {
      json[r'flagableType'] = this.flagableType;
    } else {
      json[r'flagableType'] = null;
    }
    if (this.flagDescription != null) {
      json[r'flagDescription'] = this.flagDescription;
    } else {
      json[r'flagDescription'] = null;
    }
    if (this.createdDate != null) {
      json[r'createdDate'] = this.createdDate;
    } else {
      json[r'createdDate'] = null;
    }
    if (this.updatedDate != null) {
      json[r'updatedDate'] = this.updatedDate;
    } else {
      json[r'updatedDate'] = null;
    }
    return json;
  }

  /// Returns a new [FlagResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static FlagResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "FlagResponse[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "FlagResponse[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return FlagResponse(
        flagId: mapValueOfType<int>(json, r'flagId'),
        flagableId: mapValueOfType<int>(json, r'flagableId'),
        flagableType: mapValueOfType<String>(json, r'flagableType'),
        flagDescription: mapValueOfType<String>(json, r'flagDescription'),
        createdDate: mapValueOfType<int>(json, r'createdDate'),
        updatedDate: mapValueOfType<int>(json, r'updatedDate'),
      );
    }
    return null;
  }

  static List<FlagResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <FlagResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = FlagResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, FlagResponse> mapFromJson(dynamic json) {
    final map = <String, FlagResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = FlagResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of FlagResponse-objects as value to a dart map
  static Map<String, List<FlagResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<FlagResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = FlagResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

