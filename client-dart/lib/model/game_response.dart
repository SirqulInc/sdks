//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class GameResponse {
  /// Returns a new [GameResponse] instance.
  GameResponse({
    this.action,
    this.highestAppVersion,
    this.gameId,
    this.gameType,
    this.packs,
    this.scores,
    this.owner,
    this.userPermissionsList,
    this.rules,
    this.results = const [],
    this.ticketsEarned,
    this.title,
    this.description,
    this.authorOverride,
    this.icon,
    this.image,
    this.sequenceType,
    this.updatedDate,
    this.startDate,
    this.endDate,
    this.appKey,
  });

  GameResponseActionEnum? action;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? highestAppVersion;

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
  String? gameType;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  PackListResponse? packs;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  ScoreListResponse? scores;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  AccountShortResponse? owner;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  UserPermissionsListResponse? userPermissionsList;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  RuleListResponse? rules;

  List<NameStringValueResponse> results;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? ticketsEarned;

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
  String? authorOverride;

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
  AssetShortResponse? image;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? sequenceType;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? updatedDate;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? startDate;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? endDate;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? appKey;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GameResponse &&
    other.action == action &&
    other.highestAppVersion == highestAppVersion &&
    other.gameId == gameId &&
    other.gameType == gameType &&
    other.packs == packs &&
    other.scores == scores &&
    other.owner == owner &&
    other.userPermissionsList == userPermissionsList &&
    other.rules == rules &&
    _deepEquality.equals(other.results, results) &&
    other.ticketsEarned == ticketsEarned &&
    other.title == title &&
    other.description == description &&
    other.authorOverride == authorOverride &&
    other.icon == icon &&
    other.image == image &&
    other.sequenceType == sequenceType &&
    other.updatedDate == updatedDate &&
    other.startDate == startDate &&
    other.endDate == endDate &&
    other.appKey == appKey;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (action == null ? 0 : action!.hashCode) +
    (highestAppVersion == null ? 0 : highestAppVersion!.hashCode) +
    (gameId == null ? 0 : gameId!.hashCode) +
    (gameType == null ? 0 : gameType!.hashCode) +
    (packs == null ? 0 : packs!.hashCode) +
    (scores == null ? 0 : scores!.hashCode) +
    (owner == null ? 0 : owner!.hashCode) +
    (userPermissionsList == null ? 0 : userPermissionsList!.hashCode) +
    (rules == null ? 0 : rules!.hashCode) +
    (results.hashCode) +
    (ticketsEarned == null ? 0 : ticketsEarned!.hashCode) +
    (title == null ? 0 : title!.hashCode) +
    (description == null ? 0 : description!.hashCode) +
    (authorOverride == null ? 0 : authorOverride!.hashCode) +
    (icon == null ? 0 : icon!.hashCode) +
    (image == null ? 0 : image!.hashCode) +
    (sequenceType == null ? 0 : sequenceType!.hashCode) +
    (updatedDate == null ? 0 : updatedDate!.hashCode) +
    (startDate == null ? 0 : startDate!.hashCode) +
    (endDate == null ? 0 : endDate!.hashCode) +
    (appKey == null ? 0 : appKey!.hashCode);

  @override
  String toString() => 'GameResponse[action=$action, highestAppVersion=$highestAppVersion, gameId=$gameId, gameType=$gameType, packs=$packs, scores=$scores, owner=$owner, userPermissionsList=$userPermissionsList, rules=$rules, results=$results, ticketsEarned=$ticketsEarned, title=$title, description=$description, authorOverride=$authorOverride, icon=$icon, image=$image, sequenceType=$sequenceType, updatedDate=$updatedDate, startDate=$startDate, endDate=$endDate, appKey=$appKey]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.action != null) {
      json[r'action'] = this.action;
    } else {
      json[r'action'] = null;
    }
    if (this.highestAppVersion != null) {
      json[r'highestAppVersion'] = this.highestAppVersion;
    } else {
      json[r'highestAppVersion'] = null;
    }
    if (this.gameId != null) {
      json[r'gameId'] = this.gameId;
    } else {
      json[r'gameId'] = null;
    }
    if (this.gameType != null) {
      json[r'gameType'] = this.gameType;
    } else {
      json[r'gameType'] = null;
    }
    if (this.packs != null) {
      json[r'packs'] = this.packs;
    } else {
      json[r'packs'] = null;
    }
    if (this.scores != null) {
      json[r'scores'] = this.scores;
    } else {
      json[r'scores'] = null;
    }
    if (this.owner != null) {
      json[r'owner'] = this.owner;
    } else {
      json[r'owner'] = null;
    }
    if (this.userPermissionsList != null) {
      json[r'userPermissionsList'] = this.userPermissionsList;
    } else {
      json[r'userPermissionsList'] = null;
    }
    if (this.rules != null) {
      json[r'rules'] = this.rules;
    } else {
      json[r'rules'] = null;
    }
      json[r'results'] = this.results;
    if (this.ticketsEarned != null) {
      json[r'ticketsEarned'] = this.ticketsEarned;
    } else {
      json[r'ticketsEarned'] = null;
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
    if (this.authorOverride != null) {
      json[r'authorOverride'] = this.authorOverride;
    } else {
      json[r'authorOverride'] = null;
    }
    if (this.icon != null) {
      json[r'icon'] = this.icon;
    } else {
      json[r'icon'] = null;
    }
    if (this.image != null) {
      json[r'image'] = this.image;
    } else {
      json[r'image'] = null;
    }
    if (this.sequenceType != null) {
      json[r'sequenceType'] = this.sequenceType;
    } else {
      json[r'sequenceType'] = null;
    }
    if (this.updatedDate != null) {
      json[r'updatedDate'] = this.updatedDate;
    } else {
      json[r'updatedDate'] = null;
    }
    if (this.startDate != null) {
      json[r'startDate'] = this.startDate;
    } else {
      json[r'startDate'] = null;
    }
    if (this.endDate != null) {
      json[r'endDate'] = this.endDate;
    } else {
      json[r'endDate'] = null;
    }
    if (this.appKey != null) {
      json[r'appKey'] = this.appKey;
    } else {
      json[r'appKey'] = null;
    }
    return json;
  }

  /// Returns a new [GameResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GameResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "GameResponse[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "GameResponse[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return GameResponse(
        action: GameResponseActionEnum.fromJson(json[r'action']),
        highestAppVersion: mapValueOfType<String>(json, r'highestAppVersion'),
        gameId: mapValueOfType<int>(json, r'gameId'),
        gameType: mapValueOfType<String>(json, r'gameType'),
        packs: PackListResponse.fromJson(json[r'packs']),
        scores: ScoreListResponse.fromJson(json[r'scores']),
        owner: AccountShortResponse.fromJson(json[r'owner']),
        userPermissionsList: UserPermissionsListResponse.fromJson(json[r'userPermissionsList']),
        rules: RuleListResponse.fromJson(json[r'rules']),
        results: NameStringValueResponse.listFromJson(json[r'results']),
        ticketsEarned: mapValueOfType<int>(json, r'ticketsEarned'),
        title: mapValueOfType<String>(json, r'title'),
        description: mapValueOfType<String>(json, r'description'),
        authorOverride: mapValueOfType<String>(json, r'authorOverride'),
        icon: AssetShortResponse.fromJson(json[r'icon']),
        image: AssetShortResponse.fromJson(json[r'image']),
        sequenceType: mapValueOfType<String>(json, r'sequenceType'),
        updatedDate: mapValueOfType<int>(json, r'updatedDate'),
        startDate: mapValueOfType<int>(json, r'startDate'),
        endDate: mapValueOfType<int>(json, r'endDate'),
        appKey: mapValueOfType<String>(json, r'appKey'),
      );
    }
    return null;
  }

  static List<GameResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GameResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GameResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, GameResponse> mapFromJson(dynamic json) {
    final map = <String, GameResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GameResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of GameResponse-objects as value to a dart map
  static Map<String, List<GameResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<GameResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = GameResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}


class GameResponseActionEnum {
  /// Instantiate a new enum with the provided [value].
  const GameResponseActionEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const DATA = GameResponseActionEnum._(r'DATA');
  static const SAVE = GameResponseActionEnum._(r'SAVE');
  static const DELETE = GameResponseActionEnum._(r'DELETE');
  static const GET = GameResponseActionEnum._(r'GET');

  /// List of all possible values in this [enum][GameResponseActionEnum].
  static const values = <GameResponseActionEnum>[
    DATA,
    SAVE,
    DELETE,
    GET,
  ];

  static GameResponseActionEnum? fromJson(dynamic value) => GameResponseActionEnumTypeTransformer().decode(value);

  static List<GameResponseActionEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GameResponseActionEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GameResponseActionEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [GameResponseActionEnum] to String,
/// and [decode] dynamic data back to [GameResponseActionEnum].
class GameResponseActionEnumTypeTransformer {
  factory GameResponseActionEnumTypeTransformer() => _instance ??= const GameResponseActionEnumTypeTransformer._();

  const GameResponseActionEnumTypeTransformer._();

  String encode(GameResponseActionEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a GameResponseActionEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  GameResponseActionEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'DATA': return GameResponseActionEnum.DATA;
        case r'SAVE': return GameResponseActionEnum.SAVE;
        case r'DELETE': return GameResponseActionEnum.DELETE;
        case r'GET': return GameResponseActionEnum.GET;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [GameResponseActionEnumTypeTransformer] instance.
  static GameResponseActionEnumTypeTransformer? _instance;
}


