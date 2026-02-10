//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class AchievementProgressResponse {
  /// Returns a new [AchievementProgressResponse] instance.
  AchievementProgressResponse({
    this.achievementId,
    this.achievementTierId,
    this.title,
    this.description,
    this.icon,
    this.completed,
    this.progressCount,
    this.goalCount,
    this.dateUpdated,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? achievementId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? achievementTierId;

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
  AssetShortResponse? icon;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? completed;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? progressCount;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? goalCount;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? dateUpdated;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AchievementProgressResponse &&
    other.achievementId == achievementId &&
    other.achievementTierId == achievementTierId &&
    other.title == title &&
    other.description == description &&
    other.icon == icon &&
    other.completed == completed &&
    other.progressCount == progressCount &&
    other.goalCount == goalCount &&
    other.dateUpdated == dateUpdated;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (achievementId == null ? 0 : achievementId!.hashCode) +
    (achievementTierId == null ? 0 : achievementTierId!.hashCode) +
    (title == null ? 0 : title!.hashCode) +
    (description == null ? 0 : description!.hashCode) +
    (icon == null ? 0 : icon!.hashCode) +
    (completed == null ? 0 : completed!.hashCode) +
    (progressCount == null ? 0 : progressCount!.hashCode) +
    (goalCount == null ? 0 : goalCount!.hashCode) +
    (dateUpdated == null ? 0 : dateUpdated!.hashCode);

  @override
  String toString() => 'AchievementProgressResponse[achievementId=$achievementId, achievementTierId=$achievementTierId, title=$title, description=$description, icon=$icon, completed=$completed, progressCount=$progressCount, goalCount=$goalCount, dateUpdated=$dateUpdated]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.achievementId != null) {
      json[r'achievementId'] = this.achievementId;
    } else {
      json[r'achievementId'] = null;
    }
    if (this.achievementTierId != null) {
      json[r'achievementTierId'] = this.achievementTierId;
    } else {
      json[r'achievementTierId'] = null;
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
    if (this.icon != null) {
      json[r'icon'] = this.icon;
    } else {
      json[r'icon'] = null;
    }
    if (this.completed != null) {
      json[r'completed'] = this.completed;
    } else {
      json[r'completed'] = null;
    }
    if (this.progressCount != null) {
      json[r'progressCount'] = this.progressCount;
    } else {
      json[r'progressCount'] = null;
    }
    if (this.goalCount != null) {
      json[r'goalCount'] = this.goalCount;
    } else {
      json[r'goalCount'] = null;
    }
    if (this.dateUpdated != null) {
      json[r'dateUpdated'] = this.dateUpdated;
    } else {
      json[r'dateUpdated'] = null;
    }
    return json;
  }

  /// Returns a new [AchievementProgressResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AchievementProgressResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "AchievementProgressResponse[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "AchievementProgressResponse[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AchievementProgressResponse(
        achievementId: mapValueOfType<int>(json, r'achievementId'),
        achievementTierId: mapValueOfType<int>(json, r'achievementTierId'),
        title: mapValueOfType<String>(json, r'title'),
        description: mapValueOfType<String>(json, r'description'),
        icon: AssetShortResponse.fromJson(json[r'icon']),
        completed: mapValueOfType<bool>(json, r'completed'),
        progressCount: mapValueOfType<int>(json, r'progressCount'),
        goalCount: mapValueOfType<int>(json, r'goalCount'),
        dateUpdated: mapValueOfType<int>(json, r'dateUpdated'),
      );
    }
    return null;
  }

  static List<AchievementProgressResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AchievementProgressResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AchievementProgressResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AchievementProgressResponse> mapFromJson(dynamic json) {
    final map = <String, AchievementProgressResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AchievementProgressResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AchievementProgressResponse-objects as value to a dart map
  static Map<String, List<AchievementProgressResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AchievementProgressResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AchievementProgressResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

