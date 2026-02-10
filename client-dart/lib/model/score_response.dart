//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ScoreResponse {
  /// Returns a new [ScoreResponse] instance.
  ScoreResponse({
    this.action,
    this.scoreId,
    this.status,
    this.points,
    this.timeTaken,
    this.ticketsEarned,
    this.gameType,
    this.accountId,
    this.accountDisplay,
  });

  ScoreResponseActionEnum? action;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? scoreId;

  ScoreResponseStatusEnum? status;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? points;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? timeTaken;

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
  String? gameType;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? accountId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? accountDisplay;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ScoreResponse &&
    other.action == action &&
    other.scoreId == scoreId &&
    other.status == status &&
    other.points == points &&
    other.timeTaken == timeTaken &&
    other.ticketsEarned == ticketsEarned &&
    other.gameType == gameType &&
    other.accountId == accountId &&
    other.accountDisplay == accountDisplay;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (action == null ? 0 : action!.hashCode) +
    (scoreId == null ? 0 : scoreId!.hashCode) +
    (status == null ? 0 : status!.hashCode) +
    (points == null ? 0 : points!.hashCode) +
    (timeTaken == null ? 0 : timeTaken!.hashCode) +
    (ticketsEarned == null ? 0 : ticketsEarned!.hashCode) +
    (gameType == null ? 0 : gameType!.hashCode) +
    (accountId == null ? 0 : accountId!.hashCode) +
    (accountDisplay == null ? 0 : accountDisplay!.hashCode);

  @override
  String toString() => 'ScoreResponse[action=$action, scoreId=$scoreId, status=$status, points=$points, timeTaken=$timeTaken, ticketsEarned=$ticketsEarned, gameType=$gameType, accountId=$accountId, accountDisplay=$accountDisplay]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.action != null) {
      json[r'action'] = this.action;
    } else {
      json[r'action'] = null;
    }
    if (this.scoreId != null) {
      json[r'scoreId'] = this.scoreId;
    } else {
      json[r'scoreId'] = null;
    }
    if (this.status != null) {
      json[r'status'] = this.status;
    } else {
      json[r'status'] = null;
    }
    if (this.points != null) {
      json[r'points'] = this.points;
    } else {
      json[r'points'] = null;
    }
    if (this.timeTaken != null) {
      json[r'timeTaken'] = this.timeTaken;
    } else {
      json[r'timeTaken'] = null;
    }
    if (this.ticketsEarned != null) {
      json[r'ticketsEarned'] = this.ticketsEarned;
    } else {
      json[r'ticketsEarned'] = null;
    }
    if (this.gameType != null) {
      json[r'gameType'] = this.gameType;
    } else {
      json[r'gameType'] = null;
    }
    if (this.accountId != null) {
      json[r'accountId'] = this.accountId;
    } else {
      json[r'accountId'] = null;
    }
    if (this.accountDisplay != null) {
      json[r'accountDisplay'] = this.accountDisplay;
    } else {
      json[r'accountDisplay'] = null;
    }
    return json;
  }

  /// Returns a new [ScoreResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ScoreResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ScoreResponse[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ScoreResponse[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ScoreResponse(
        action: ScoreResponseActionEnum.fromJson(json[r'action']),
        scoreId: mapValueOfType<int>(json, r'scoreId'),
        status: ScoreResponseStatusEnum.fromJson(json[r'status']),
        points: mapValueOfType<int>(json, r'points'),
        timeTaken: mapValueOfType<int>(json, r'timeTaken'),
        ticketsEarned: mapValueOfType<int>(json, r'ticketsEarned'),
        gameType: mapValueOfType<String>(json, r'gameType'),
        accountId: mapValueOfType<int>(json, r'accountId'),
        accountDisplay: mapValueOfType<String>(json, r'accountDisplay'),
      );
    }
    return null;
  }

  static List<ScoreResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ScoreResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ScoreResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ScoreResponse> mapFromJson(dynamic json) {
    final map = <String, ScoreResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ScoreResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ScoreResponse-objects as value to a dart map
  static Map<String, List<ScoreResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ScoreResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ScoreResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}


class ScoreResponseActionEnum {
  /// Instantiate a new enum with the provided [value].
  const ScoreResponseActionEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const DATA = ScoreResponseActionEnum._(r'DATA');
  static const SAVE = ScoreResponseActionEnum._(r'SAVE');
  static const DELETE = ScoreResponseActionEnum._(r'DELETE');
  static const GET = ScoreResponseActionEnum._(r'GET');

  /// List of all possible values in this [enum][ScoreResponseActionEnum].
  static const values = <ScoreResponseActionEnum>[
    DATA,
    SAVE,
    DELETE,
    GET,
  ];

  static ScoreResponseActionEnum? fromJson(dynamic value) => ScoreResponseActionEnumTypeTransformer().decode(value);

  static List<ScoreResponseActionEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ScoreResponseActionEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ScoreResponseActionEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [ScoreResponseActionEnum] to String,
/// and [decode] dynamic data back to [ScoreResponseActionEnum].
class ScoreResponseActionEnumTypeTransformer {
  factory ScoreResponseActionEnumTypeTransformer() => _instance ??= const ScoreResponseActionEnumTypeTransformer._();

  const ScoreResponseActionEnumTypeTransformer._();

  String encode(ScoreResponseActionEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a ScoreResponseActionEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ScoreResponseActionEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'DATA': return ScoreResponseActionEnum.DATA;
        case r'SAVE': return ScoreResponseActionEnum.SAVE;
        case r'DELETE': return ScoreResponseActionEnum.DELETE;
        case r'GET': return ScoreResponseActionEnum.GET;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [ScoreResponseActionEnumTypeTransformer] instance.
  static ScoreResponseActionEnumTypeTransformer? _instance;
}



class ScoreResponseStatusEnum {
  /// Instantiate a new enum with the provided [value].
  const ScoreResponseStatusEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const COMPLETED = ScoreResponseStatusEnum._(r'COMPLETED');
  static const OWNER_CREDIT = ScoreResponseStatusEnum._(r'OWNER_CREDIT');
  static const SUMMATION = ScoreResponseStatusEnum._(r'SUMMATION');
  static const TOURNAMENT = ScoreResponseStatusEnum._(r'TOURNAMENT');

  /// List of all possible values in this [enum][ScoreResponseStatusEnum].
  static const values = <ScoreResponseStatusEnum>[
    COMPLETED,
    OWNER_CREDIT,
    SUMMATION,
    TOURNAMENT,
  ];

  static ScoreResponseStatusEnum? fromJson(dynamic value) => ScoreResponseStatusEnumTypeTransformer().decode(value);

  static List<ScoreResponseStatusEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ScoreResponseStatusEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ScoreResponseStatusEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [ScoreResponseStatusEnum] to String,
/// and [decode] dynamic data back to [ScoreResponseStatusEnum].
class ScoreResponseStatusEnumTypeTransformer {
  factory ScoreResponseStatusEnumTypeTransformer() => _instance ??= const ScoreResponseStatusEnumTypeTransformer._();

  const ScoreResponseStatusEnumTypeTransformer._();

  String encode(ScoreResponseStatusEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a ScoreResponseStatusEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ScoreResponseStatusEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'COMPLETED': return ScoreResponseStatusEnum.COMPLETED;
        case r'OWNER_CREDIT': return ScoreResponseStatusEnum.OWNER_CREDIT;
        case r'SUMMATION': return ScoreResponseStatusEnum.SUMMATION;
        case r'TOURNAMENT': return ScoreResponseStatusEnum.TOURNAMENT;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [ScoreResponseStatusEnumTypeTransformer] instance.
  static ScoreResponseStatusEnumTypeTransformer? _instance;
}


