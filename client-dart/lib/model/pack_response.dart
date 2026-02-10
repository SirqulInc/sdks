//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class PackResponse {
  /// Returns a new [PackResponse] instance.
  PackResponse({
    this.action,
    this.highestAppVersion,
    this.gameType,
    this.packId,
    this.name,
    this.description,
    this.active,
    this.downloaded,
    this.completed,
    this.icon,
    this.background,
    this.ticketsEarned,
    this.levels,
    this.sequenceType,
    this.scores,
    this.owner,
    this.costToRedeem,
    this.price,
    this.priceType,
    this.userPermissionsList,
    this.results = const [],
    this.tickets,
    this.authorOverride,
    this.updatedDate,
    this.startDate,
    this.endDate,
    this.packType,
    this.packOrder,
    this.appKey,
    this.application,
    this.inGame,
    this.highest,
    this.allocateTickets,
    this.ticketType,
    this.ticketCount,
    this.points,
  });

  PackResponseActionEnum? action;

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
  String? gameType;

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
  bool? active;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? downloaded;

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
  AssetShortResponse? icon;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  AssetShortResponse? background;

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
  GameLevelListResponse? levels;

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
  int? costToRedeem;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? price;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? priceType;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  UserPermissionsListResponse? userPermissionsList;

  List<NameStringValueResponse> results;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  TicketListResponse? tickets;

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

  PackResponsePackTypeEnum? packType;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? packOrder;

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
  ApplicationShortResponse? application;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? inGame;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? highest;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? allocateTickets;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? ticketType;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? ticketCount;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? points;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PackResponse &&
    other.action == action &&
    other.highestAppVersion == highestAppVersion &&
    other.gameType == gameType &&
    other.packId == packId &&
    other.name == name &&
    other.description == description &&
    other.active == active &&
    other.downloaded == downloaded &&
    other.completed == completed &&
    other.icon == icon &&
    other.background == background &&
    other.ticketsEarned == ticketsEarned &&
    other.levels == levels &&
    other.sequenceType == sequenceType &&
    other.scores == scores &&
    other.owner == owner &&
    other.costToRedeem == costToRedeem &&
    other.price == price &&
    other.priceType == priceType &&
    other.userPermissionsList == userPermissionsList &&
    _deepEquality.equals(other.results, results) &&
    other.tickets == tickets &&
    other.authorOverride == authorOverride &&
    other.updatedDate == updatedDate &&
    other.startDate == startDate &&
    other.endDate == endDate &&
    other.packType == packType &&
    other.packOrder == packOrder &&
    other.appKey == appKey &&
    other.application == application &&
    other.inGame == inGame &&
    other.highest == highest &&
    other.allocateTickets == allocateTickets &&
    other.ticketType == ticketType &&
    other.ticketCount == ticketCount &&
    other.points == points;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (action == null ? 0 : action!.hashCode) +
    (highestAppVersion == null ? 0 : highestAppVersion!.hashCode) +
    (gameType == null ? 0 : gameType!.hashCode) +
    (packId == null ? 0 : packId!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (description == null ? 0 : description!.hashCode) +
    (active == null ? 0 : active!.hashCode) +
    (downloaded == null ? 0 : downloaded!.hashCode) +
    (completed == null ? 0 : completed!.hashCode) +
    (icon == null ? 0 : icon!.hashCode) +
    (background == null ? 0 : background!.hashCode) +
    (ticketsEarned == null ? 0 : ticketsEarned!.hashCode) +
    (levels == null ? 0 : levels!.hashCode) +
    (sequenceType == null ? 0 : sequenceType!.hashCode) +
    (scores == null ? 0 : scores!.hashCode) +
    (owner == null ? 0 : owner!.hashCode) +
    (costToRedeem == null ? 0 : costToRedeem!.hashCode) +
    (price == null ? 0 : price!.hashCode) +
    (priceType == null ? 0 : priceType!.hashCode) +
    (userPermissionsList == null ? 0 : userPermissionsList!.hashCode) +
    (results.hashCode) +
    (tickets == null ? 0 : tickets!.hashCode) +
    (authorOverride == null ? 0 : authorOverride!.hashCode) +
    (updatedDate == null ? 0 : updatedDate!.hashCode) +
    (startDate == null ? 0 : startDate!.hashCode) +
    (endDate == null ? 0 : endDate!.hashCode) +
    (packType == null ? 0 : packType!.hashCode) +
    (packOrder == null ? 0 : packOrder!.hashCode) +
    (appKey == null ? 0 : appKey!.hashCode) +
    (application == null ? 0 : application!.hashCode) +
    (inGame == null ? 0 : inGame!.hashCode) +
    (highest == null ? 0 : highest!.hashCode) +
    (allocateTickets == null ? 0 : allocateTickets!.hashCode) +
    (ticketType == null ? 0 : ticketType!.hashCode) +
    (ticketCount == null ? 0 : ticketCount!.hashCode) +
    (points == null ? 0 : points!.hashCode);

  @override
  String toString() => 'PackResponse[action=$action, highestAppVersion=$highestAppVersion, gameType=$gameType, packId=$packId, name=$name, description=$description, active=$active, downloaded=$downloaded, completed=$completed, icon=$icon, background=$background, ticketsEarned=$ticketsEarned, levels=$levels, sequenceType=$sequenceType, scores=$scores, owner=$owner, costToRedeem=$costToRedeem, price=$price, priceType=$priceType, userPermissionsList=$userPermissionsList, results=$results, tickets=$tickets, authorOverride=$authorOverride, updatedDate=$updatedDate, startDate=$startDate, endDate=$endDate, packType=$packType, packOrder=$packOrder, appKey=$appKey, application=$application, inGame=$inGame, highest=$highest, allocateTickets=$allocateTickets, ticketType=$ticketType, ticketCount=$ticketCount, points=$points]';

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
    if (this.gameType != null) {
      json[r'gameType'] = this.gameType;
    } else {
      json[r'gameType'] = null;
    }
    if (this.packId != null) {
      json[r'packId'] = this.packId;
    } else {
      json[r'packId'] = null;
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
    if (this.active != null) {
      json[r'active'] = this.active;
    } else {
      json[r'active'] = null;
    }
    if (this.downloaded != null) {
      json[r'downloaded'] = this.downloaded;
    } else {
      json[r'downloaded'] = null;
    }
    if (this.completed != null) {
      json[r'completed'] = this.completed;
    } else {
      json[r'completed'] = null;
    }
    if (this.icon != null) {
      json[r'icon'] = this.icon;
    } else {
      json[r'icon'] = null;
    }
    if (this.background != null) {
      json[r'background'] = this.background;
    } else {
      json[r'background'] = null;
    }
    if (this.ticketsEarned != null) {
      json[r'ticketsEarned'] = this.ticketsEarned;
    } else {
      json[r'ticketsEarned'] = null;
    }
    if (this.levels != null) {
      json[r'levels'] = this.levels;
    } else {
      json[r'levels'] = null;
    }
    if (this.sequenceType != null) {
      json[r'sequenceType'] = this.sequenceType;
    } else {
      json[r'sequenceType'] = null;
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
    if (this.costToRedeem != null) {
      json[r'costToRedeem'] = this.costToRedeem;
    } else {
      json[r'costToRedeem'] = null;
    }
    if (this.price != null) {
      json[r'price'] = this.price;
    } else {
      json[r'price'] = null;
    }
    if (this.priceType != null) {
      json[r'priceType'] = this.priceType;
    } else {
      json[r'priceType'] = null;
    }
    if (this.userPermissionsList != null) {
      json[r'userPermissionsList'] = this.userPermissionsList;
    } else {
      json[r'userPermissionsList'] = null;
    }
      json[r'results'] = this.results;
    if (this.tickets != null) {
      json[r'tickets'] = this.tickets;
    } else {
      json[r'tickets'] = null;
    }
    if (this.authorOverride != null) {
      json[r'authorOverride'] = this.authorOverride;
    } else {
      json[r'authorOverride'] = null;
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
    if (this.packType != null) {
      json[r'packType'] = this.packType;
    } else {
      json[r'packType'] = null;
    }
    if (this.packOrder != null) {
      json[r'packOrder'] = this.packOrder;
    } else {
      json[r'packOrder'] = null;
    }
    if (this.appKey != null) {
      json[r'appKey'] = this.appKey;
    } else {
      json[r'appKey'] = null;
    }
    if (this.application != null) {
      json[r'application'] = this.application;
    } else {
      json[r'application'] = null;
    }
    if (this.inGame != null) {
      json[r'inGame'] = this.inGame;
    } else {
      json[r'inGame'] = null;
    }
    if (this.highest != null) {
      json[r'highest'] = this.highest;
    } else {
      json[r'highest'] = null;
    }
    if (this.allocateTickets != null) {
      json[r'allocateTickets'] = this.allocateTickets;
    } else {
      json[r'allocateTickets'] = null;
    }
    if (this.ticketType != null) {
      json[r'ticketType'] = this.ticketType;
    } else {
      json[r'ticketType'] = null;
    }
    if (this.ticketCount != null) {
      json[r'ticketCount'] = this.ticketCount;
    } else {
      json[r'ticketCount'] = null;
    }
    if (this.points != null) {
      json[r'points'] = this.points;
    } else {
      json[r'points'] = null;
    }
    return json;
  }

  /// Returns a new [PackResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PackResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "PackResponse[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "PackResponse[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return PackResponse(
        action: PackResponseActionEnum.fromJson(json[r'action']),
        highestAppVersion: mapValueOfType<String>(json, r'highestAppVersion'),
        gameType: mapValueOfType<String>(json, r'gameType'),
        packId: mapValueOfType<int>(json, r'packId'),
        name: mapValueOfType<String>(json, r'name'),
        description: mapValueOfType<String>(json, r'description'),
        active: mapValueOfType<bool>(json, r'active'),
        downloaded: mapValueOfType<bool>(json, r'downloaded'),
        completed: mapValueOfType<bool>(json, r'completed'),
        icon: AssetShortResponse.fromJson(json[r'icon']),
        background: AssetShortResponse.fromJson(json[r'background']),
        ticketsEarned: mapValueOfType<int>(json, r'ticketsEarned'),
        levels: GameLevelListResponse.fromJson(json[r'levels']),
        sequenceType: mapValueOfType<String>(json, r'sequenceType'),
        scores: ScoreListResponse.fromJson(json[r'scores']),
        owner: AccountShortResponse.fromJson(json[r'owner']),
        costToRedeem: mapValueOfType<int>(json, r'costToRedeem'),
        price: mapValueOfType<int>(json, r'price'),
        priceType: mapValueOfType<String>(json, r'priceType'),
        userPermissionsList: UserPermissionsListResponse.fromJson(json[r'userPermissionsList']),
        results: NameStringValueResponse.listFromJson(json[r'results']),
        tickets: TicketListResponse.fromJson(json[r'tickets']),
        authorOverride: mapValueOfType<String>(json, r'authorOverride'),
        updatedDate: mapValueOfType<int>(json, r'updatedDate'),
        startDate: mapValueOfType<int>(json, r'startDate'),
        endDate: mapValueOfType<int>(json, r'endDate'),
        packType: PackResponsePackTypeEnum.fromJson(json[r'packType']),
        packOrder: mapValueOfType<int>(json, r'packOrder'),
        appKey: mapValueOfType<String>(json, r'appKey'),
        application: ApplicationShortResponse.fromJson(json[r'application']),
        inGame: mapValueOfType<bool>(json, r'inGame'),
        highest: mapValueOfType<bool>(json, r'highest'),
        allocateTickets: mapValueOfType<bool>(json, r'allocateTickets'),
        ticketType: mapValueOfType<String>(json, r'ticketType'),
        ticketCount: mapValueOfType<int>(json, r'ticketCount'),
        points: mapValueOfType<int>(json, r'points'),
      );
    }
    return null;
  }

  static List<PackResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PackResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PackResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PackResponse> mapFromJson(dynamic json) {
    final map = <String, PackResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PackResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PackResponse-objects as value to a dart map
  static Map<String, List<PackResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<PackResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PackResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}


class PackResponseActionEnum {
  /// Instantiate a new enum with the provided [value].
  const PackResponseActionEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const DATA = PackResponseActionEnum._(r'DATA');
  static const SAVE = PackResponseActionEnum._(r'SAVE');
  static const DELETE = PackResponseActionEnum._(r'DELETE');
  static const GET = PackResponseActionEnum._(r'GET');

  /// List of all possible values in this [enum][PackResponseActionEnum].
  static const values = <PackResponseActionEnum>[
    DATA,
    SAVE,
    DELETE,
    GET,
  ];

  static PackResponseActionEnum? fromJson(dynamic value) => PackResponseActionEnumTypeTransformer().decode(value);

  static List<PackResponseActionEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PackResponseActionEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PackResponseActionEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [PackResponseActionEnum] to String,
/// and [decode] dynamic data back to [PackResponseActionEnum].
class PackResponseActionEnumTypeTransformer {
  factory PackResponseActionEnumTypeTransformer() => _instance ??= const PackResponseActionEnumTypeTransformer._();

  const PackResponseActionEnumTypeTransformer._();

  String encode(PackResponseActionEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a PackResponseActionEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  PackResponseActionEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'DATA': return PackResponseActionEnum.DATA;
        case r'SAVE': return PackResponseActionEnum.SAVE;
        case r'DELETE': return PackResponseActionEnum.DELETE;
        case r'GET': return PackResponseActionEnum.GET;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [PackResponseActionEnumTypeTransformer] instance.
  static PackResponseActionEnumTypeTransformer? _instance;
}



class PackResponsePackTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const PackResponsePackTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const TUTORIAL = PackResponsePackTypeEnum._(r'TUTORIAL');
  static const BUILTIN = PackResponsePackTypeEnum._(r'BUILTIN');
  static const DOWNLOAD = PackResponsePackTypeEnum._(r'DOWNLOAD');
  static const THRESHOLD = PackResponsePackTypeEnum._(r'THRESHOLD');
  static const THEME = PackResponsePackTypeEnum._(r'THEME');
  static const TOURNAMENT = PackResponsePackTypeEnum._(r'TOURNAMENT');

  /// List of all possible values in this [enum][PackResponsePackTypeEnum].
  static const values = <PackResponsePackTypeEnum>[
    TUTORIAL,
    BUILTIN,
    DOWNLOAD,
    THRESHOLD,
    THEME,
    TOURNAMENT,
  ];

  static PackResponsePackTypeEnum? fromJson(dynamic value) => PackResponsePackTypeEnumTypeTransformer().decode(value);

  static List<PackResponsePackTypeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PackResponsePackTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PackResponsePackTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [PackResponsePackTypeEnum] to String,
/// and [decode] dynamic data back to [PackResponsePackTypeEnum].
class PackResponsePackTypeEnumTypeTransformer {
  factory PackResponsePackTypeEnumTypeTransformer() => _instance ??= const PackResponsePackTypeEnumTypeTransformer._();

  const PackResponsePackTypeEnumTypeTransformer._();

  String encode(PackResponsePackTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a PackResponsePackTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  PackResponsePackTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'TUTORIAL': return PackResponsePackTypeEnum.TUTORIAL;
        case r'BUILTIN': return PackResponsePackTypeEnum.BUILTIN;
        case r'DOWNLOAD': return PackResponsePackTypeEnum.DOWNLOAD;
        case r'THRESHOLD': return PackResponsePackTypeEnum.THRESHOLD;
        case r'THEME': return PackResponsePackTypeEnum.THEME;
        case r'TOURNAMENT': return PackResponsePackTypeEnum.TOURNAMENT;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [PackResponsePackTypeEnumTypeTransformer] instance.
  static PackResponsePackTypeEnumTypeTransformer? _instance;
}


