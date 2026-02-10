//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class GameObjectResponse {
  /// Returns a new [GameObjectResponse] instance.
  GameObjectResponse({
    this.action,
    this.gameObjectId,
    this.gameType,
    this.ticketsEarned,
    this.scores,
    this.tickets,
    this.items = const [],
    this.allocateTickets,
  });

  GameObjectResponseActionEnum? action;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? gameObjectId;

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
  int? ticketsEarned;

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
  TicketListResponse? tickets;

  List<NameStringValueResponse> items;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? allocateTickets;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GameObjectResponse &&
    other.action == action &&
    other.gameObjectId == gameObjectId &&
    other.gameType == gameType &&
    other.ticketsEarned == ticketsEarned &&
    other.scores == scores &&
    other.tickets == tickets &&
    _deepEquality.equals(other.items, items) &&
    other.allocateTickets == allocateTickets;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (action == null ? 0 : action!.hashCode) +
    (gameObjectId == null ? 0 : gameObjectId!.hashCode) +
    (gameType == null ? 0 : gameType!.hashCode) +
    (ticketsEarned == null ? 0 : ticketsEarned!.hashCode) +
    (scores == null ? 0 : scores!.hashCode) +
    (tickets == null ? 0 : tickets!.hashCode) +
    (items.hashCode) +
    (allocateTickets == null ? 0 : allocateTickets!.hashCode);

  @override
  String toString() => 'GameObjectResponse[action=$action, gameObjectId=$gameObjectId, gameType=$gameType, ticketsEarned=$ticketsEarned, scores=$scores, tickets=$tickets, items=$items, allocateTickets=$allocateTickets]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.action != null) {
      json[r'action'] = this.action;
    } else {
      json[r'action'] = null;
    }
    if (this.gameObjectId != null) {
      json[r'gameObjectId'] = this.gameObjectId;
    } else {
      json[r'gameObjectId'] = null;
    }
    if (this.gameType != null) {
      json[r'gameType'] = this.gameType;
    } else {
      json[r'gameType'] = null;
    }
    if (this.ticketsEarned != null) {
      json[r'ticketsEarned'] = this.ticketsEarned;
    } else {
      json[r'ticketsEarned'] = null;
    }
    if (this.scores != null) {
      json[r'scores'] = this.scores;
    } else {
      json[r'scores'] = null;
    }
    if (this.tickets != null) {
      json[r'tickets'] = this.tickets;
    } else {
      json[r'tickets'] = null;
    }
      json[r'items'] = this.items;
    if (this.allocateTickets != null) {
      json[r'allocateTickets'] = this.allocateTickets;
    } else {
      json[r'allocateTickets'] = null;
    }
    return json;
  }

  /// Returns a new [GameObjectResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GameObjectResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "GameObjectResponse[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "GameObjectResponse[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return GameObjectResponse(
        action: GameObjectResponseActionEnum.fromJson(json[r'action']),
        gameObjectId: mapValueOfType<int>(json, r'gameObjectId'),
        gameType: mapValueOfType<String>(json, r'gameType'),
        ticketsEarned: mapValueOfType<int>(json, r'ticketsEarned'),
        scores: ScoreListResponse.fromJson(json[r'scores']),
        tickets: TicketListResponse.fromJson(json[r'tickets']),
        items: NameStringValueResponse.listFromJson(json[r'items']),
        allocateTickets: mapValueOfType<bool>(json, r'allocateTickets'),
      );
    }
    return null;
  }

  static List<GameObjectResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GameObjectResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GameObjectResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, GameObjectResponse> mapFromJson(dynamic json) {
    final map = <String, GameObjectResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GameObjectResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of GameObjectResponse-objects as value to a dart map
  static Map<String, List<GameObjectResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<GameObjectResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = GameObjectResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}


class GameObjectResponseActionEnum {
  /// Instantiate a new enum with the provided [value].
  const GameObjectResponseActionEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const DATA = GameObjectResponseActionEnum._(r'DATA');
  static const SAVE = GameObjectResponseActionEnum._(r'SAVE');
  static const DELETE = GameObjectResponseActionEnum._(r'DELETE');
  static const GET = GameObjectResponseActionEnum._(r'GET');

  /// List of all possible values in this [enum][GameObjectResponseActionEnum].
  static const values = <GameObjectResponseActionEnum>[
    DATA,
    SAVE,
    DELETE,
    GET,
  ];

  static GameObjectResponseActionEnum? fromJson(dynamic value) => GameObjectResponseActionEnumTypeTransformer().decode(value);

  static List<GameObjectResponseActionEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GameObjectResponseActionEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GameObjectResponseActionEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [GameObjectResponseActionEnum] to String,
/// and [decode] dynamic data back to [GameObjectResponseActionEnum].
class GameObjectResponseActionEnumTypeTransformer {
  factory GameObjectResponseActionEnumTypeTransformer() => _instance ??= const GameObjectResponseActionEnumTypeTransformer._();

  const GameObjectResponseActionEnumTypeTransformer._();

  String encode(GameObjectResponseActionEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a GameObjectResponseActionEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  GameObjectResponseActionEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'DATA': return GameObjectResponseActionEnum.DATA;
        case r'SAVE': return GameObjectResponseActionEnum.SAVE;
        case r'DELETE': return GameObjectResponseActionEnum.DELETE;
        case r'GET': return GameObjectResponseActionEnum.GET;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [GameObjectResponseActionEnumTypeTransformer] instance.
  static GameObjectResponseActionEnumTypeTransformer? _instance;
}


