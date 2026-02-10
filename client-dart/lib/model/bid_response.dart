//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class BidResponse {
  /// Returns a new [BidResponse] instance.
  BidResponse({
    this.bidId,
    this.biddableType,
    this.biddableId,
    this.amountPerView,
    this.amountPerAction,
    this.currentDailyBudget,
    this.currentBudget,
    this.currentBudgetExpiration,
    this.currentBudgetStart,
    this.budgetAmount,
    this.budgetSchedule,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? bidId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? biddableType;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? biddableId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? amountPerView;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? amountPerAction;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? currentDailyBudget;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? currentBudget;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? currentBudgetExpiration;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? currentBudgetStart;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? budgetAmount;

  BidResponseBudgetScheduleEnum? budgetSchedule;

  @override
  bool operator ==(Object other) => identical(this, other) || other is BidResponse &&
    other.bidId == bidId &&
    other.biddableType == biddableType &&
    other.biddableId == biddableId &&
    other.amountPerView == amountPerView &&
    other.amountPerAction == amountPerAction &&
    other.currentDailyBudget == currentDailyBudget &&
    other.currentBudget == currentBudget &&
    other.currentBudgetExpiration == currentBudgetExpiration &&
    other.currentBudgetStart == currentBudgetStart &&
    other.budgetAmount == budgetAmount &&
    other.budgetSchedule == budgetSchedule;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (bidId == null ? 0 : bidId!.hashCode) +
    (biddableType == null ? 0 : biddableType!.hashCode) +
    (biddableId == null ? 0 : biddableId!.hashCode) +
    (amountPerView == null ? 0 : amountPerView!.hashCode) +
    (amountPerAction == null ? 0 : amountPerAction!.hashCode) +
    (currentDailyBudget == null ? 0 : currentDailyBudget!.hashCode) +
    (currentBudget == null ? 0 : currentBudget!.hashCode) +
    (currentBudgetExpiration == null ? 0 : currentBudgetExpiration!.hashCode) +
    (currentBudgetStart == null ? 0 : currentBudgetStart!.hashCode) +
    (budgetAmount == null ? 0 : budgetAmount!.hashCode) +
    (budgetSchedule == null ? 0 : budgetSchedule!.hashCode);

  @override
  String toString() => 'BidResponse[bidId=$bidId, biddableType=$biddableType, biddableId=$biddableId, amountPerView=$amountPerView, amountPerAction=$amountPerAction, currentDailyBudget=$currentDailyBudget, currentBudget=$currentBudget, currentBudgetExpiration=$currentBudgetExpiration, currentBudgetStart=$currentBudgetStart, budgetAmount=$budgetAmount, budgetSchedule=$budgetSchedule]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.bidId != null) {
      json[r'bidId'] = this.bidId;
    } else {
      json[r'bidId'] = null;
    }
    if (this.biddableType != null) {
      json[r'biddableType'] = this.biddableType;
    } else {
      json[r'biddableType'] = null;
    }
    if (this.biddableId != null) {
      json[r'biddableId'] = this.biddableId;
    } else {
      json[r'biddableId'] = null;
    }
    if (this.amountPerView != null) {
      json[r'amountPerView'] = this.amountPerView;
    } else {
      json[r'amountPerView'] = null;
    }
    if (this.amountPerAction != null) {
      json[r'amountPerAction'] = this.amountPerAction;
    } else {
      json[r'amountPerAction'] = null;
    }
    if (this.currentDailyBudget != null) {
      json[r'currentDailyBudget'] = this.currentDailyBudget;
    } else {
      json[r'currentDailyBudget'] = null;
    }
    if (this.currentBudget != null) {
      json[r'currentBudget'] = this.currentBudget;
    } else {
      json[r'currentBudget'] = null;
    }
    if (this.currentBudgetExpiration != null) {
      json[r'currentBudgetExpiration'] = this.currentBudgetExpiration;
    } else {
      json[r'currentBudgetExpiration'] = null;
    }
    if (this.currentBudgetStart != null) {
      json[r'currentBudgetStart'] = this.currentBudgetStart;
    } else {
      json[r'currentBudgetStart'] = null;
    }
    if (this.budgetAmount != null) {
      json[r'budgetAmount'] = this.budgetAmount;
    } else {
      json[r'budgetAmount'] = null;
    }
    if (this.budgetSchedule != null) {
      json[r'budgetSchedule'] = this.budgetSchedule;
    } else {
      json[r'budgetSchedule'] = null;
    }
    return json;
  }

  /// Returns a new [BidResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static BidResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "BidResponse[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "BidResponse[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return BidResponse(
        bidId: mapValueOfType<int>(json, r'bidId'),
        biddableType: mapValueOfType<String>(json, r'biddableType'),
        biddableId: mapValueOfType<int>(json, r'biddableId'),
        amountPerView: mapValueOfType<double>(json, r'amountPerView'),
        amountPerAction: mapValueOfType<double>(json, r'amountPerAction'),
        currentDailyBudget: mapValueOfType<double>(json, r'currentDailyBudget'),
        currentBudget: mapValueOfType<double>(json, r'currentBudget'),
        currentBudgetExpiration: mapValueOfType<int>(json, r'currentBudgetExpiration'),
        currentBudgetStart: mapValueOfType<int>(json, r'currentBudgetStart'),
        budgetAmount: mapValueOfType<double>(json, r'budgetAmount'),
        budgetSchedule: BidResponseBudgetScheduleEnum.fromJson(json[r'budgetSchedule']),
      );
    }
    return null;
  }

  static List<BidResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <BidResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = BidResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, BidResponse> mapFromJson(dynamic json) {
    final map = <String, BidResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = BidResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of BidResponse-objects as value to a dart map
  static Map<String, List<BidResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<BidResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = BidResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}


class BidResponseBudgetScheduleEnum {
  /// Instantiate a new enum with the provided [value].
  const BidResponseBudgetScheduleEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const DAILY = BidResponseBudgetScheduleEnum._(r'DAILY');
  static const WEEKLY = BidResponseBudgetScheduleEnum._(r'WEEKLY');
  static const MONTHLY = BidResponseBudgetScheduleEnum._(r'MONTHLY');
  static const YEARLY = BidResponseBudgetScheduleEnum._(r'YEARLY');

  /// List of all possible values in this [enum][BidResponseBudgetScheduleEnum].
  static const values = <BidResponseBudgetScheduleEnum>[
    DAILY,
    WEEKLY,
    MONTHLY,
    YEARLY,
  ];

  static BidResponseBudgetScheduleEnum? fromJson(dynamic value) => BidResponseBudgetScheduleEnumTypeTransformer().decode(value);

  static List<BidResponseBudgetScheduleEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <BidResponseBudgetScheduleEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = BidResponseBudgetScheduleEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [BidResponseBudgetScheduleEnum] to String,
/// and [decode] dynamic data back to [BidResponseBudgetScheduleEnum].
class BidResponseBudgetScheduleEnumTypeTransformer {
  factory BidResponseBudgetScheduleEnumTypeTransformer() => _instance ??= const BidResponseBudgetScheduleEnumTypeTransformer._();

  const BidResponseBudgetScheduleEnumTypeTransformer._();

  String encode(BidResponseBudgetScheduleEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a BidResponseBudgetScheduleEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  BidResponseBudgetScheduleEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'DAILY': return BidResponseBudgetScheduleEnum.DAILY;
        case r'WEEKLY': return BidResponseBudgetScheduleEnum.WEEKLY;
        case r'MONTHLY': return BidResponseBudgetScheduleEnum.MONTHLY;
        case r'YEARLY': return BidResponseBudgetScheduleEnum.YEARLY;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [BidResponseBudgetScheduleEnumTypeTransformer] instance.
  static BidResponseBudgetScheduleEnumTypeTransformer? _instance;
}


