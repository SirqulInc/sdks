//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class AppInfoResponse {
  /// Returns a new [AppInfoResponse] instance.
  AppInfoResponse({
    this.points,
    this.ticketsAvailable,
    this.ticketsEarned,
    this.ticketsPurchased,
    this.ticketsUsed,
    this.rank,
    this.maxPoints,
    this.maxTickets,
    this.pointToTicketModifier,
    this.scoringType,
    this.purchaseItemListResponse,
    this.termsAcceptedDate,
    this.requiresTermsAcceptance,
    this.completedAchievements = const [],
    this.wipAchievements = const [],
    this.appBlob,
    this.enablePush,
    this.enableSMS,
    this.enableEmail,
    this.ticketCounts = const [],
  });

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
  int? ticketsAvailable;

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
  int? ticketsPurchased;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? ticketsUsed;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? rank;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? maxPoints;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? maxTickets;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? pointToTicketModifier;

  AppInfoResponseScoringTypeEnum? scoringType;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  PurchaseItemListResponse? purchaseItemListResponse;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? termsAcceptedDate;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? requiresTermsAcceptance;

  List<AchievementProgressResponse> completedAchievements;

  List<AchievementProgressResponse> wipAchievements;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? appBlob;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? enablePush;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? enableSMS;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? enableEmail;

  List<TicketCountResponse> ticketCounts;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AppInfoResponse &&
    other.points == points &&
    other.ticketsAvailable == ticketsAvailable &&
    other.ticketsEarned == ticketsEarned &&
    other.ticketsPurchased == ticketsPurchased &&
    other.ticketsUsed == ticketsUsed &&
    other.rank == rank &&
    other.maxPoints == maxPoints &&
    other.maxTickets == maxTickets &&
    other.pointToTicketModifier == pointToTicketModifier &&
    other.scoringType == scoringType &&
    other.purchaseItemListResponse == purchaseItemListResponse &&
    other.termsAcceptedDate == termsAcceptedDate &&
    other.requiresTermsAcceptance == requiresTermsAcceptance &&
    _deepEquality.equals(other.completedAchievements, completedAchievements) &&
    _deepEquality.equals(other.wipAchievements, wipAchievements) &&
    other.appBlob == appBlob &&
    other.enablePush == enablePush &&
    other.enableSMS == enableSMS &&
    other.enableEmail == enableEmail &&
    _deepEquality.equals(other.ticketCounts, ticketCounts);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (points == null ? 0 : points!.hashCode) +
    (ticketsAvailable == null ? 0 : ticketsAvailable!.hashCode) +
    (ticketsEarned == null ? 0 : ticketsEarned!.hashCode) +
    (ticketsPurchased == null ? 0 : ticketsPurchased!.hashCode) +
    (ticketsUsed == null ? 0 : ticketsUsed!.hashCode) +
    (rank == null ? 0 : rank!.hashCode) +
    (maxPoints == null ? 0 : maxPoints!.hashCode) +
    (maxTickets == null ? 0 : maxTickets!.hashCode) +
    (pointToTicketModifier == null ? 0 : pointToTicketModifier!.hashCode) +
    (scoringType == null ? 0 : scoringType!.hashCode) +
    (purchaseItemListResponse == null ? 0 : purchaseItemListResponse!.hashCode) +
    (termsAcceptedDate == null ? 0 : termsAcceptedDate!.hashCode) +
    (requiresTermsAcceptance == null ? 0 : requiresTermsAcceptance!.hashCode) +
    (completedAchievements.hashCode) +
    (wipAchievements.hashCode) +
    (appBlob == null ? 0 : appBlob!.hashCode) +
    (enablePush == null ? 0 : enablePush!.hashCode) +
    (enableSMS == null ? 0 : enableSMS!.hashCode) +
    (enableEmail == null ? 0 : enableEmail!.hashCode) +
    (ticketCounts.hashCode);

  @override
  String toString() => 'AppInfoResponse[points=$points, ticketsAvailable=$ticketsAvailable, ticketsEarned=$ticketsEarned, ticketsPurchased=$ticketsPurchased, ticketsUsed=$ticketsUsed, rank=$rank, maxPoints=$maxPoints, maxTickets=$maxTickets, pointToTicketModifier=$pointToTicketModifier, scoringType=$scoringType, purchaseItemListResponse=$purchaseItemListResponse, termsAcceptedDate=$termsAcceptedDate, requiresTermsAcceptance=$requiresTermsAcceptance, completedAchievements=$completedAchievements, wipAchievements=$wipAchievements, appBlob=$appBlob, enablePush=$enablePush, enableSMS=$enableSMS, enableEmail=$enableEmail, ticketCounts=$ticketCounts]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.points != null) {
      json[r'points'] = this.points;
    } else {
      json[r'points'] = null;
    }
    if (this.ticketsAvailable != null) {
      json[r'ticketsAvailable'] = this.ticketsAvailable;
    } else {
      json[r'ticketsAvailable'] = null;
    }
    if (this.ticketsEarned != null) {
      json[r'ticketsEarned'] = this.ticketsEarned;
    } else {
      json[r'ticketsEarned'] = null;
    }
    if (this.ticketsPurchased != null) {
      json[r'ticketsPurchased'] = this.ticketsPurchased;
    } else {
      json[r'ticketsPurchased'] = null;
    }
    if (this.ticketsUsed != null) {
      json[r'ticketsUsed'] = this.ticketsUsed;
    } else {
      json[r'ticketsUsed'] = null;
    }
    if (this.rank != null) {
      json[r'rank'] = this.rank;
    } else {
      json[r'rank'] = null;
    }
    if (this.maxPoints != null) {
      json[r'maxPoints'] = this.maxPoints;
    } else {
      json[r'maxPoints'] = null;
    }
    if (this.maxTickets != null) {
      json[r'maxTickets'] = this.maxTickets;
    } else {
      json[r'maxTickets'] = null;
    }
    if (this.pointToTicketModifier != null) {
      json[r'pointToTicketModifier'] = this.pointToTicketModifier;
    } else {
      json[r'pointToTicketModifier'] = null;
    }
    if (this.scoringType != null) {
      json[r'scoringType'] = this.scoringType;
    } else {
      json[r'scoringType'] = null;
    }
    if (this.purchaseItemListResponse != null) {
      json[r'purchaseItemListResponse'] = this.purchaseItemListResponse;
    } else {
      json[r'purchaseItemListResponse'] = null;
    }
    if (this.termsAcceptedDate != null) {
      json[r'termsAcceptedDate'] = this.termsAcceptedDate;
    } else {
      json[r'termsAcceptedDate'] = null;
    }
    if (this.requiresTermsAcceptance != null) {
      json[r'requiresTermsAcceptance'] = this.requiresTermsAcceptance;
    } else {
      json[r'requiresTermsAcceptance'] = null;
    }
      json[r'completedAchievements'] = this.completedAchievements;
      json[r'wipAchievements'] = this.wipAchievements;
    if (this.appBlob != null) {
      json[r'appBlob'] = this.appBlob;
    } else {
      json[r'appBlob'] = null;
    }
    if (this.enablePush != null) {
      json[r'enablePush'] = this.enablePush;
    } else {
      json[r'enablePush'] = null;
    }
    if (this.enableSMS != null) {
      json[r'enableSMS'] = this.enableSMS;
    } else {
      json[r'enableSMS'] = null;
    }
    if (this.enableEmail != null) {
      json[r'enableEmail'] = this.enableEmail;
    } else {
      json[r'enableEmail'] = null;
    }
      json[r'ticketCounts'] = this.ticketCounts;
    return json;
  }

  /// Returns a new [AppInfoResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AppInfoResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "AppInfoResponse[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "AppInfoResponse[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AppInfoResponse(
        points: mapValueOfType<int>(json, r'points'),
        ticketsAvailable: mapValueOfType<int>(json, r'ticketsAvailable'),
        ticketsEarned: mapValueOfType<int>(json, r'ticketsEarned'),
        ticketsPurchased: mapValueOfType<int>(json, r'ticketsPurchased'),
        ticketsUsed: mapValueOfType<int>(json, r'ticketsUsed'),
        rank: mapValueOfType<String>(json, r'rank'),
        maxPoints: mapValueOfType<int>(json, r'maxPoints'),
        maxTickets: mapValueOfType<int>(json, r'maxTickets'),
        pointToTicketModifier: mapValueOfType<double>(json, r'pointToTicketModifier'),
        scoringType: AppInfoResponseScoringTypeEnum.fromJson(json[r'scoringType']),
        purchaseItemListResponse: PurchaseItemListResponse.fromJson(json[r'purchaseItemListResponse']),
        termsAcceptedDate: mapValueOfType<int>(json, r'termsAcceptedDate'),
        requiresTermsAcceptance: mapValueOfType<bool>(json, r'requiresTermsAcceptance'),
        completedAchievements: AchievementProgressResponse.listFromJson(json[r'completedAchievements']),
        wipAchievements: AchievementProgressResponse.listFromJson(json[r'wipAchievements']),
        appBlob: mapValueOfType<String>(json, r'appBlob'),
        enablePush: mapValueOfType<bool>(json, r'enablePush'),
        enableSMS: mapValueOfType<bool>(json, r'enableSMS'),
        enableEmail: mapValueOfType<bool>(json, r'enableEmail'),
        ticketCounts: TicketCountResponse.listFromJson(json[r'ticketCounts']),
      );
    }
    return null;
  }

  static List<AppInfoResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AppInfoResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AppInfoResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AppInfoResponse> mapFromJson(dynamic json) {
    final map = <String, AppInfoResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AppInfoResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AppInfoResponse-objects as value to a dart map
  static Map<String, List<AppInfoResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AppInfoResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AppInfoResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}


class AppInfoResponseScoringTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const AppInfoResponseScoringTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const GAME_LEVEL = AppInfoResponseScoringTypeEnum._(r'GAME_LEVEL');
  static const GAME_OBJECT = AppInfoResponseScoringTypeEnum._(r'GAME_OBJECT');

  /// List of all possible values in this [enum][AppInfoResponseScoringTypeEnum].
  static const values = <AppInfoResponseScoringTypeEnum>[
    GAME_LEVEL,
    GAME_OBJECT,
  ];

  static AppInfoResponseScoringTypeEnum? fromJson(dynamic value) => AppInfoResponseScoringTypeEnumTypeTransformer().decode(value);

  static List<AppInfoResponseScoringTypeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AppInfoResponseScoringTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AppInfoResponseScoringTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [AppInfoResponseScoringTypeEnum] to String,
/// and [decode] dynamic data back to [AppInfoResponseScoringTypeEnum].
class AppInfoResponseScoringTypeEnumTypeTransformer {
  factory AppInfoResponseScoringTypeEnumTypeTransformer() => _instance ??= const AppInfoResponseScoringTypeEnumTypeTransformer._();

  const AppInfoResponseScoringTypeEnumTypeTransformer._();

  String encode(AppInfoResponseScoringTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a AppInfoResponseScoringTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  AppInfoResponseScoringTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'GAME_LEVEL': return AppInfoResponseScoringTypeEnum.GAME_LEVEL;
        case r'GAME_OBJECT': return AppInfoResponseScoringTypeEnum.GAME_OBJECT;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [AppInfoResponseScoringTypeEnumTypeTransformer] instance.
  static AppInfoResponseScoringTypeEnumTypeTransformer? _instance;
}


