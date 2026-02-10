//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ActivityResponse {
  /// Returns a new [ActivityResponse] instance.
  ActivityResponse({
    this.activityId,
    this.created,
    this.appKey,
    this.targetId,
    this.targetType,
    this.targetLegacyId,
    this.targetDescription,
    this.targetActive,
    this.action,
    this.slaveEntityId,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? activityId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? created;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? appKey;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? targetId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? targetType;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? targetLegacyId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? targetDescription;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? targetActive;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? action;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? slaveEntityId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ActivityResponse &&
    other.activityId == activityId &&
    other.created == created &&
    other.appKey == appKey &&
    other.targetId == targetId &&
    other.targetType == targetType &&
    other.targetLegacyId == targetLegacyId &&
    other.targetDescription == targetDescription &&
    other.targetActive == targetActive &&
    other.action == action &&
    other.slaveEntityId == slaveEntityId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (activityId == null ? 0 : activityId!.hashCode) +
    (created == null ? 0 : created!.hashCode) +
    (appKey == null ? 0 : appKey!.hashCode) +
    (targetId == null ? 0 : targetId!.hashCode) +
    (targetType == null ? 0 : targetType!.hashCode) +
    (targetLegacyId == null ? 0 : targetLegacyId!.hashCode) +
    (targetDescription == null ? 0 : targetDescription!.hashCode) +
    (targetActive == null ? 0 : targetActive!.hashCode) +
    (action == null ? 0 : action!.hashCode) +
    (slaveEntityId == null ? 0 : slaveEntityId!.hashCode);

  @override
  String toString() => 'ActivityResponse[activityId=$activityId, created=$created, appKey=$appKey, targetId=$targetId, targetType=$targetType, targetLegacyId=$targetLegacyId, targetDescription=$targetDescription, targetActive=$targetActive, action=$action, slaveEntityId=$slaveEntityId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.activityId != null) {
      json[r'activityId'] = this.activityId;
    } else {
      json[r'activityId'] = null;
    }
    if (this.created != null) {
      json[r'created'] = this.created;
    } else {
      json[r'created'] = null;
    }
    if (this.appKey != null) {
      json[r'appKey'] = this.appKey;
    } else {
      json[r'appKey'] = null;
    }
    if (this.targetId != null) {
      json[r'targetId'] = this.targetId;
    } else {
      json[r'targetId'] = null;
    }
    if (this.targetType != null) {
      json[r'targetType'] = this.targetType;
    } else {
      json[r'targetType'] = null;
    }
    if (this.targetLegacyId != null) {
      json[r'targetLegacyId'] = this.targetLegacyId;
    } else {
      json[r'targetLegacyId'] = null;
    }
    if (this.targetDescription != null) {
      json[r'targetDescription'] = this.targetDescription;
    } else {
      json[r'targetDescription'] = null;
    }
    if (this.targetActive != null) {
      json[r'targetActive'] = this.targetActive;
    } else {
      json[r'targetActive'] = null;
    }
    if (this.action != null) {
      json[r'action'] = this.action;
    } else {
      json[r'action'] = null;
    }
    if (this.slaveEntityId != null) {
      json[r'slaveEntityId'] = this.slaveEntityId;
    } else {
      json[r'slaveEntityId'] = null;
    }
    return json;
  }

  /// Returns a new [ActivityResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ActivityResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ActivityResponse[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ActivityResponse[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ActivityResponse(
        activityId: mapValueOfType<int>(json, r'activityId'),
        created: mapValueOfType<int>(json, r'created'),
        appKey: mapValueOfType<String>(json, r'appKey'),
        targetId: mapValueOfType<int>(json, r'targetId'),
        targetType: mapValueOfType<String>(json, r'targetType'),
        targetLegacyId: mapValueOfType<String>(json, r'targetLegacyId'),
        targetDescription: mapValueOfType<String>(json, r'targetDescription'),
        targetActive: mapValueOfType<bool>(json, r'targetActive'),
        action: mapValueOfType<String>(json, r'action'),
        slaveEntityId: mapValueOfType<int>(json, r'slaveEntityId'),
      );
    }
    return null;
  }

  static List<ActivityResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ActivityResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ActivityResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ActivityResponse> mapFromJson(dynamic json) {
    final map = <String, ActivityResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ActivityResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ActivityResponse-objects as value to a dart map
  static Map<String, List<ActivityResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ActivityResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ActivityResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

