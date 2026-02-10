//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class RuleResponse {
  /// Returns a new [RuleResponse] instance.
  RuleResponse({
    this.ruleId,
    this.title,
    this.description,
    this.ruleTypeId,
    this.ruleTypeTitle,
    this.ruleTypeDescription,
    this.ruleValueType,
    this.ruleValue,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? ruleId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? title;

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
  int? ruleTypeId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? ruleTypeTitle;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? ruleTypeDescription;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? ruleValueType;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? ruleValue;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RuleResponse &&
    other.ruleId == ruleId &&
    other.title == title &&
    other.description == description &&
    other.ruleTypeId == ruleTypeId &&
    other.ruleTypeTitle == ruleTypeTitle &&
    other.ruleTypeDescription == ruleTypeDescription &&
    other.ruleValueType == ruleValueType &&
    other.ruleValue == ruleValue;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (ruleId == null ? 0 : ruleId!.hashCode) +
    (title == null ? 0 : title!.hashCode) +
    (description == null ? 0 : description!.hashCode) +
    (ruleTypeId == null ? 0 : ruleTypeId!.hashCode) +
    (ruleTypeTitle == null ? 0 : ruleTypeTitle!.hashCode) +
    (ruleTypeDescription == null ? 0 : ruleTypeDescription!.hashCode) +
    (ruleValueType == null ? 0 : ruleValueType!.hashCode) +
    (ruleValue == null ? 0 : ruleValue!.hashCode);

  @override
  String toString() => 'RuleResponse[ruleId=$ruleId, title=$title, description=$description, ruleTypeId=$ruleTypeId, ruleTypeTitle=$ruleTypeTitle, ruleTypeDescription=$ruleTypeDescription, ruleValueType=$ruleValueType, ruleValue=$ruleValue]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.ruleId != null) {
      json[r'ruleId'] = this.ruleId;
    } else {
      json[r'ruleId'] = null;
    }
    if (this.title != null) {
      json[r'title'] = this.title;
    } else {
      json[r'title'] = null;
    }
    if (this.description != null) {
      json[r'description'] = this.description;
    } else {
      json[r'description'] = null;
    }
    if (this.ruleTypeId != null) {
      json[r'ruleTypeId'] = this.ruleTypeId;
    } else {
      json[r'ruleTypeId'] = null;
    }
    if (this.ruleTypeTitle != null) {
      json[r'ruleTypeTitle'] = this.ruleTypeTitle;
    } else {
      json[r'ruleTypeTitle'] = null;
    }
    if (this.ruleTypeDescription != null) {
      json[r'ruleTypeDescription'] = this.ruleTypeDescription;
    } else {
      json[r'ruleTypeDescription'] = null;
    }
    if (this.ruleValueType != null) {
      json[r'ruleValueType'] = this.ruleValueType;
    } else {
      json[r'ruleValueType'] = null;
    }
    if (this.ruleValue != null) {
      json[r'ruleValue'] = this.ruleValue;
    } else {
      json[r'ruleValue'] = null;
    }
    return json;
  }

  /// Returns a new [RuleResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RuleResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "RuleResponse[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "RuleResponse[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return RuleResponse(
        ruleId: mapValueOfType<int>(json, r'ruleId'),
        title: mapValueOfType<String>(json, r'title'),
        description: mapValueOfType<String>(json, r'description'),
        ruleTypeId: mapValueOfType<int>(json, r'ruleTypeId'),
        ruleTypeTitle: mapValueOfType<String>(json, r'ruleTypeTitle'),
        ruleTypeDescription: mapValueOfType<String>(json, r'ruleTypeDescription'),
        ruleValueType: mapValueOfType<String>(json, r'ruleValueType'),
        ruleValue: mapValueOfType<String>(json, r'ruleValue'),
      );
    }
    return null;
  }

  static List<RuleResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <RuleResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RuleResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, RuleResponse> mapFromJson(dynamic json) {
    final map = <String, RuleResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RuleResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of RuleResponse-objects as value to a dart map
  static Map<String, List<RuleResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<RuleResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = RuleResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

