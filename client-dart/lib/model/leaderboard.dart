//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Leaderboard {
  /// Returns a new [Leaderboard] instance.
  Leaderboard({
    this.id,
    this.rankType,
    this.rankMode,
    this.sortType,
    this.limitation,
    this.title,
    this.description,
    this.iconAsset,
    this.bannerAsset,
    this.application,
    this.metaData,
    this.active,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? id;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? rankType;

  /// One of GLOBAL, FRIENDS, LOCAL, SEARCH, CUSTOM
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? rankMode;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? sortType;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? limitation;

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
  AssetResponse? iconAsset;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  AssetResponse? bannerAsset;

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
  String? metaData;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? active;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Leaderboard &&
    other.id == id &&
    other.rankType == rankType &&
    other.rankMode == rankMode &&
    other.sortType == sortType &&
    other.limitation == limitation &&
    other.title == title &&
    other.description == description &&
    other.iconAsset == iconAsset &&
    other.bannerAsset == bannerAsset &&
    other.application == application &&
    other.metaData == metaData &&
    other.active == active;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (rankType == null ? 0 : rankType!.hashCode) +
    (rankMode == null ? 0 : rankMode!.hashCode) +
    (sortType == null ? 0 : sortType!.hashCode) +
    (limitation == null ? 0 : limitation!.hashCode) +
    (title == null ? 0 : title!.hashCode) +
    (description == null ? 0 : description!.hashCode) +
    (iconAsset == null ? 0 : iconAsset!.hashCode) +
    (bannerAsset == null ? 0 : bannerAsset!.hashCode) +
    (application == null ? 0 : application!.hashCode) +
    (metaData == null ? 0 : metaData!.hashCode) +
    (active == null ? 0 : active!.hashCode);

  @override
  String toString() => 'Leaderboard[id=$id, rankType=$rankType, rankMode=$rankMode, sortType=$sortType, limitation=$limitation, title=$title, description=$description, iconAsset=$iconAsset, bannerAsset=$bannerAsset, application=$application, metaData=$metaData, active=$active]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.rankType != null) {
      json[r'rankType'] = this.rankType;
    } else {
      json[r'rankType'] = null;
    }
    if (this.rankMode != null) {
      json[r'rankMode'] = this.rankMode;
    } else {
      json[r'rankMode'] = null;
    }
    if (this.sortType != null) {
      json[r'sortType'] = this.sortType;
    } else {
      json[r'sortType'] = null;
    }
    if (this.limitation != null) {
      json[r'limitation'] = this.limitation;
    } else {
      json[r'limitation'] = null;
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
    if (this.iconAsset != null) {
      json[r'iconAsset'] = this.iconAsset;
    } else {
      json[r'iconAsset'] = null;
    }
    if (this.bannerAsset != null) {
      json[r'bannerAsset'] = this.bannerAsset;
    } else {
      json[r'bannerAsset'] = null;
    }
    if (this.application != null) {
      json[r'application'] = this.application;
    } else {
      json[r'application'] = null;
    }
    if (this.metaData != null) {
      json[r'metaData'] = this.metaData;
    } else {
      json[r'metaData'] = null;
    }
    if (this.active != null) {
      json[r'active'] = this.active;
    } else {
      json[r'active'] = null;
    }
    return json;
  }

  /// Returns a new [Leaderboard] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Leaderboard? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Leaderboard[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Leaderboard[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Leaderboard(
        id: mapValueOfType<int>(json, r'id'),
        rankType: mapValueOfType<String>(json, r'rankType'),
        rankMode: mapValueOfType<String>(json, r'rankMode'),
        sortType: mapValueOfType<String>(json, r'sortType'),
        limitation: mapValueOfType<int>(json, r'limitation'),
        title: mapValueOfType<String>(json, r'title'),
        description: mapValueOfType<String>(json, r'description'),
        iconAsset: AssetResponse.fromJson(json[r'iconAsset']),
        bannerAsset: AssetResponse.fromJson(json[r'bannerAsset']),
        application: ApplicationMiniResponse.fromJson(json[r'application']),
        metaData: mapValueOfType<String>(json, r'metaData'),
        active: mapValueOfType<bool>(json, r'active'),
      );
    }
    return null;
  }

  static List<Leaderboard> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Leaderboard>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Leaderboard.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Leaderboard> mapFromJson(dynamic json) {
    final map = <String, Leaderboard>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Leaderboard.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Leaderboard-objects as value to a dart map
  static Map<String, List<Leaderboard>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Leaderboard>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Leaderboard.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

