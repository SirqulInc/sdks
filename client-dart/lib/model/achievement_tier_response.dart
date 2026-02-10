//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class AchievementTierResponse {
  /// Returns a new [AchievementTierResponse] instance.
  AchievementTierResponse({
    this.achievementTierId,
    this.title,
    this.description,
    this.goalCount,
    this.icon,
    this.missionId,
    this.gameId,
    this.packId,
    this.gameLevelId,
    this.gameObjectId,
  });

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
  int? goalCount;

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
  int? missionId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? gameId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? packId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? gameLevelId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? gameObjectId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AchievementTierResponse &&
    other.achievementTierId == achievementTierId &&
    other.title == title &&
    other.description == description &&
    other.goalCount == goalCount &&
    other.icon == icon &&
    other.missionId == missionId &&
    other.gameId == gameId &&
    other.packId == packId &&
    other.gameLevelId == gameLevelId &&
    other.gameObjectId == gameObjectId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (achievementTierId == null ? 0 : achievementTierId!.hashCode) +
    (title == null ? 0 : title!.hashCode) +
    (description == null ? 0 : description!.hashCode) +
    (goalCount == null ? 0 : goalCount!.hashCode) +
    (icon == null ? 0 : icon!.hashCode) +
    (missionId == null ? 0 : missionId!.hashCode) +
    (gameId == null ? 0 : gameId!.hashCode) +
    (packId == null ? 0 : packId!.hashCode) +
    (gameLevelId == null ? 0 : gameLevelId!.hashCode) +
    (gameObjectId == null ? 0 : gameObjectId!.hashCode);

  @override
  String toString() => 'AchievementTierResponse[achievementTierId=$achievementTierId, title=$title, description=$description, goalCount=$goalCount, icon=$icon, missionId=$missionId, gameId=$gameId, packId=$packId, gameLevelId=$gameLevelId, gameObjectId=$gameObjectId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
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
    if (this.goalCount != null) {
      json[r'goalCount'] = this.goalCount;
    } else {
      json[r'goalCount'] = null;
    }
    if (this.icon != null) {
      json[r'icon'] = this.icon;
    } else {
      json[r'icon'] = null;
    }
    if (this.missionId != null) {
      json[r'missionId'] = this.missionId;
    } else {
      json[r'missionId'] = null;
    }
    if (this.gameId != null) {
      json[r'gameId'] = this.gameId;
    } else {
      json[r'gameId'] = null;
    }
    if (this.packId != null) {
      json[r'packId'] = this.packId;
    } else {
      json[r'packId'] = null;
    }
    if (this.gameLevelId != null) {
      json[r'gameLevelId'] = this.gameLevelId;
    } else {
      json[r'gameLevelId'] = null;
    }
    if (this.gameObjectId != null) {
      json[r'gameObjectId'] = this.gameObjectId;
    } else {
      json[r'gameObjectId'] = null;
    }
    return json;
  }

  /// Returns a new [AchievementTierResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AchievementTierResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "AchievementTierResponse[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "AchievementTierResponse[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AchievementTierResponse(
        achievementTierId: mapValueOfType<int>(json, r'achievementTierId'),
        title: mapValueOfType<String>(json, r'title'),
        description: mapValueOfType<String>(json, r'description'),
        goalCount: mapValueOfType<int>(json, r'goalCount'),
        icon: AssetShortResponse.fromJson(json[r'icon']),
        missionId: mapValueOfType<int>(json, r'missionId'),
        gameId: mapValueOfType<int>(json, r'gameId'),
        packId: mapValueOfType<int>(json, r'packId'),
        gameLevelId: mapValueOfType<int>(json, r'gameLevelId'),
        gameObjectId: mapValueOfType<int>(json, r'gameObjectId'),
      );
    }
    return null;
  }

  static List<AchievementTierResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AchievementTierResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AchievementTierResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AchievementTierResponse> mapFromJson(dynamic json) {
    final map = <String, AchievementTierResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AchievementTierResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AchievementTierResponse-objects as value to a dart map
  static Map<String, List<AchievementTierResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AchievementTierResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AchievementTierResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

