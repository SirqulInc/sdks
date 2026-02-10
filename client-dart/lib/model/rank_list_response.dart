//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class RankListResponse {
  /// Returns a new [RankListResponse] instance.
  RankListResponse({
    this.items = const [],
    this.userRank,
    this.hasMoreResults,
    this.count,
    this.rankType,
    this.app,
    this.sortField,
    this.leaderboardMode,
    this.start,
    this.limit,
  });

  List<RankResponse> items;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  RankResponse? userRank;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? hasMoreResults;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? count;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? rankType;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? app;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? sortField;

  RankListResponseLeaderboardModeEnum? leaderboardMode;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? start;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? limit;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RankListResponse &&
    _deepEquality.equals(other.items, items) &&
    other.userRank == userRank &&
    other.hasMoreResults == hasMoreResults &&
    other.count == count &&
    other.rankType == rankType &&
    other.app == app &&
    other.sortField == sortField &&
    other.leaderboardMode == leaderboardMode &&
    other.start == start &&
    other.limit == limit;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (items.hashCode) +
    (userRank == null ? 0 : userRank!.hashCode) +
    (hasMoreResults == null ? 0 : hasMoreResults!.hashCode) +
    (count == null ? 0 : count!.hashCode) +
    (rankType == null ? 0 : rankType!.hashCode) +
    (app == null ? 0 : app!.hashCode) +
    (sortField == null ? 0 : sortField!.hashCode) +
    (leaderboardMode == null ? 0 : leaderboardMode!.hashCode) +
    (start == null ? 0 : start!.hashCode) +
    (limit == null ? 0 : limit!.hashCode);

  @override
  String toString() => 'RankListResponse[items=$items, userRank=$userRank, hasMoreResults=$hasMoreResults, count=$count, rankType=$rankType, app=$app, sortField=$sortField, leaderboardMode=$leaderboardMode, start=$start, limit=$limit]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'items'] = this.items;
    if (this.userRank != null) {
      json[r'userRank'] = this.userRank;
    } else {
      json[r'userRank'] = null;
    }
    if (this.hasMoreResults != null) {
      json[r'hasMoreResults'] = this.hasMoreResults;
    } else {
      json[r'hasMoreResults'] = null;
    }
    if (this.count != null) {
      json[r'count'] = this.count;
    } else {
      json[r'count'] = null;
    }
    if (this.rankType != null) {
      json[r'rankType'] = this.rankType;
    } else {
      json[r'rankType'] = null;
    }
    if (this.app != null) {
      json[r'app'] = this.app;
    } else {
      json[r'app'] = null;
    }
    if (this.sortField != null) {
      json[r'sortField'] = this.sortField;
    } else {
      json[r'sortField'] = null;
    }
    if (this.leaderboardMode != null) {
      json[r'leaderboardMode'] = this.leaderboardMode;
    } else {
      json[r'leaderboardMode'] = null;
    }
    if (this.start != null) {
      json[r'start'] = this.start;
    } else {
      json[r'start'] = null;
    }
    if (this.limit != null) {
      json[r'limit'] = this.limit;
    } else {
      json[r'limit'] = null;
    }
    return json;
  }

  /// Returns a new [RankListResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RankListResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "RankListResponse[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "RankListResponse[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return RankListResponse(
        items: RankResponse.listFromJson(json[r'items']),
        userRank: RankResponse.fromJson(json[r'userRank']),
        hasMoreResults: mapValueOfType<bool>(json, r'hasMoreResults'),
        count: mapValueOfType<int>(json, r'count'),
        rankType: mapValueOfType<String>(json, r'rankType'),
        app: mapValueOfType<String>(json, r'app'),
        sortField: mapValueOfType<String>(json, r'sortField'),
        leaderboardMode: RankListResponseLeaderboardModeEnum.fromJson(json[r'leaderboardMode']),
        start: mapValueOfType<int>(json, r'start'),
        limit: mapValueOfType<int>(json, r'limit'),
      );
    }
    return null;
  }

  static List<RankListResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <RankListResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RankListResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, RankListResponse> mapFromJson(dynamic json) {
    final map = <String, RankListResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RankListResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of RankListResponse-objects as value to a dart map
  static Map<String, List<RankListResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<RankListResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = RankListResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}


class RankListResponseLeaderboardModeEnum {
  /// Instantiate a new enum with the provided [value].
  const RankListResponseLeaderboardModeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const GLOBAL = RankListResponseLeaderboardModeEnum._(r'GLOBAL');
  static const FRIENDS = RankListResponseLeaderboardModeEnum._(r'FRIENDS');
  static const LOCAL = RankListResponseLeaderboardModeEnum._(r'LOCAL');
  static const SEARCH = RankListResponseLeaderboardModeEnum._(r'SEARCH');
  static const CUSTOM = RankListResponseLeaderboardModeEnum._(r'CUSTOM');

  /// List of all possible values in this [enum][RankListResponseLeaderboardModeEnum].
  static const values = <RankListResponseLeaderboardModeEnum>[
    GLOBAL,
    FRIENDS,
    LOCAL,
    SEARCH,
    CUSTOM,
  ];

  static RankListResponseLeaderboardModeEnum? fromJson(dynamic value) => RankListResponseLeaderboardModeEnumTypeTransformer().decode(value);

  static List<RankListResponseLeaderboardModeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <RankListResponseLeaderboardModeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RankListResponseLeaderboardModeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [RankListResponseLeaderboardModeEnum] to String,
/// and [decode] dynamic data back to [RankListResponseLeaderboardModeEnum].
class RankListResponseLeaderboardModeEnumTypeTransformer {
  factory RankListResponseLeaderboardModeEnumTypeTransformer() => _instance ??= const RankListResponseLeaderboardModeEnumTypeTransformer._();

  const RankListResponseLeaderboardModeEnumTypeTransformer._();

  String encode(RankListResponseLeaderboardModeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a RankListResponseLeaderboardModeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  RankListResponseLeaderboardModeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'GLOBAL': return RankListResponseLeaderboardModeEnum.GLOBAL;
        case r'FRIENDS': return RankListResponseLeaderboardModeEnum.FRIENDS;
        case r'LOCAL': return RankListResponseLeaderboardModeEnum.LOCAL;
        case r'SEARCH': return RankListResponseLeaderboardModeEnum.SEARCH;
        case r'CUSTOM': return RankListResponseLeaderboardModeEnum.CUSTOM;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [RankListResponseLeaderboardModeEnumTypeTransformer] instance.
  static RankListResponseLeaderboardModeEnumTypeTransformer? _instance;
}


