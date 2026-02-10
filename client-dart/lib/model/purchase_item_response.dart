//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class PurchaseItemResponse {
  /// Returns a new [PurchaseItemResponse] instance.
  PurchaseItemResponse({
    this.id,
    this.name,
    this.description,
    this.tickets,
    this.coverAsset,
    this.promoAsset,
    this.giftable,
    this.assetable,
    this.gameType,
    this.price,
    this.purchaseType,
    this.purchaseCode,
    this.purchaseLimit,
    this.quantity,
    this.serviceAction,
    this.appName,
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
  int? tickets;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  AssetShortResponse? coverAsset;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  AssetShortResponse? promoAsset;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? giftable;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? assetable;

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
  double? price;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? purchaseType;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? purchaseCode;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? purchaseLimit;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? quantity;

  PurchaseItemResponseServiceActionEnum? serviceAction;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? appName;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PurchaseItemResponse &&
    other.id == id &&
    other.name == name &&
    other.description == description &&
    other.tickets == tickets &&
    other.coverAsset == coverAsset &&
    other.promoAsset == promoAsset &&
    other.giftable == giftable &&
    other.assetable == assetable &&
    other.gameType == gameType &&
    other.price == price &&
    other.purchaseType == purchaseType &&
    other.purchaseCode == purchaseCode &&
    other.purchaseLimit == purchaseLimit &&
    other.quantity == quantity &&
    other.serviceAction == serviceAction &&
    other.appName == appName;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (description == null ? 0 : description!.hashCode) +
    (tickets == null ? 0 : tickets!.hashCode) +
    (coverAsset == null ? 0 : coverAsset!.hashCode) +
    (promoAsset == null ? 0 : promoAsset!.hashCode) +
    (giftable == null ? 0 : giftable!.hashCode) +
    (assetable == null ? 0 : assetable!.hashCode) +
    (gameType == null ? 0 : gameType!.hashCode) +
    (price == null ? 0 : price!.hashCode) +
    (purchaseType == null ? 0 : purchaseType!.hashCode) +
    (purchaseCode == null ? 0 : purchaseCode!.hashCode) +
    (purchaseLimit == null ? 0 : purchaseLimit!.hashCode) +
    (quantity == null ? 0 : quantity!.hashCode) +
    (serviceAction == null ? 0 : serviceAction!.hashCode) +
    (appName == null ? 0 : appName!.hashCode);

  @override
  String toString() => 'PurchaseItemResponse[id=$id, name=$name, description=$description, tickets=$tickets, coverAsset=$coverAsset, promoAsset=$promoAsset, giftable=$giftable, assetable=$assetable, gameType=$gameType, price=$price, purchaseType=$purchaseType, purchaseCode=$purchaseCode, purchaseLimit=$purchaseLimit, quantity=$quantity, serviceAction=$serviceAction, appName=$appName]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
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
    if (this.tickets != null) {
      json[r'tickets'] = this.tickets;
    } else {
      json[r'tickets'] = null;
    }
    if (this.coverAsset != null) {
      json[r'coverAsset'] = this.coverAsset;
    } else {
      json[r'coverAsset'] = null;
    }
    if (this.promoAsset != null) {
      json[r'promoAsset'] = this.promoAsset;
    } else {
      json[r'promoAsset'] = null;
    }
    if (this.giftable != null) {
      json[r'giftable'] = this.giftable;
    } else {
      json[r'giftable'] = null;
    }
    if (this.assetable != null) {
      json[r'assetable'] = this.assetable;
    } else {
      json[r'assetable'] = null;
    }
    if (this.gameType != null) {
      json[r'gameType'] = this.gameType;
    } else {
      json[r'gameType'] = null;
    }
    if (this.price != null) {
      json[r'price'] = this.price;
    } else {
      json[r'price'] = null;
    }
    if (this.purchaseType != null) {
      json[r'purchaseType'] = this.purchaseType;
    } else {
      json[r'purchaseType'] = null;
    }
    if (this.purchaseCode != null) {
      json[r'purchaseCode'] = this.purchaseCode;
    } else {
      json[r'purchaseCode'] = null;
    }
    if (this.purchaseLimit != null) {
      json[r'purchaseLimit'] = this.purchaseLimit;
    } else {
      json[r'purchaseLimit'] = null;
    }
    if (this.quantity != null) {
      json[r'quantity'] = this.quantity;
    } else {
      json[r'quantity'] = null;
    }
    if (this.serviceAction != null) {
      json[r'serviceAction'] = this.serviceAction;
    } else {
      json[r'serviceAction'] = null;
    }
    if (this.appName != null) {
      json[r'appName'] = this.appName;
    } else {
      json[r'appName'] = null;
    }
    return json;
  }

  /// Returns a new [PurchaseItemResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PurchaseItemResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "PurchaseItemResponse[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "PurchaseItemResponse[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return PurchaseItemResponse(
        id: mapValueOfType<int>(json, r'id'),
        name: mapValueOfType<String>(json, r'name'),
        description: mapValueOfType<String>(json, r'description'),
        tickets: mapValueOfType<int>(json, r'tickets'),
        coverAsset: AssetShortResponse.fromJson(json[r'coverAsset']),
        promoAsset: AssetShortResponse.fromJson(json[r'promoAsset']),
        giftable: mapValueOfType<bool>(json, r'giftable'),
        assetable: mapValueOfType<bool>(json, r'assetable'),
        gameType: mapValueOfType<String>(json, r'gameType'),
        price: mapValueOfType<double>(json, r'price'),
        purchaseType: mapValueOfType<String>(json, r'purchaseType'),
        purchaseCode: mapValueOfType<String>(json, r'purchaseCode'),
        purchaseLimit: mapValueOfType<int>(json, r'purchaseLimit'),
        quantity: mapValueOfType<int>(json, r'quantity'),
        serviceAction: PurchaseItemResponseServiceActionEnum.fromJson(json[r'serviceAction']),
        appName: mapValueOfType<String>(json, r'appName'),
      );
    }
    return null;
  }

  static List<PurchaseItemResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PurchaseItemResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PurchaseItemResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PurchaseItemResponse> mapFromJson(dynamic json) {
    final map = <String, PurchaseItemResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PurchaseItemResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PurchaseItemResponse-objects as value to a dart map
  static Map<String, List<PurchaseItemResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<PurchaseItemResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PurchaseItemResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}


class PurchaseItemResponseServiceActionEnum {
  /// Instantiate a new enum with the provided [value].
  const PurchaseItemResponseServiceActionEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const DAY_PREMIUM = PurchaseItemResponseServiceActionEnum._(r'DAY_PREMIUM');
  static const WEEK_PREMIUM = PurchaseItemResponseServiceActionEnum._(r'WEEK_PREMIUM');
  static const MONTH_PREMIUM = PurchaseItemResponseServiceActionEnum._(r'MONTH_PREMIUM');
  static const YEAR_PREMIUM = PurchaseItemResponseServiceActionEnum._(r'YEAR_PREMIUM');
  static const LIFETIME_PREMIUM = PurchaseItemResponseServiceActionEnum._(r'LIFETIME_PREMIUM');
  static const ADD_TICKET = PurchaseItemResponseServiceActionEnum._(r'ADD_TICKET');
  static const ADD_GIFT = PurchaseItemResponseServiceActionEnum._(r'ADD_GIFT');
  static const ADD_POINTS = PurchaseItemResponseServiceActionEnum._(r'ADD_POINTS');

  /// List of all possible values in this [enum][PurchaseItemResponseServiceActionEnum].
  static const values = <PurchaseItemResponseServiceActionEnum>[
    DAY_PREMIUM,
    WEEK_PREMIUM,
    MONTH_PREMIUM,
    YEAR_PREMIUM,
    LIFETIME_PREMIUM,
    ADD_TICKET,
    ADD_GIFT,
    ADD_POINTS,
  ];

  static PurchaseItemResponseServiceActionEnum? fromJson(dynamic value) => PurchaseItemResponseServiceActionEnumTypeTransformer().decode(value);

  static List<PurchaseItemResponseServiceActionEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PurchaseItemResponseServiceActionEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PurchaseItemResponseServiceActionEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [PurchaseItemResponseServiceActionEnum] to String,
/// and [decode] dynamic data back to [PurchaseItemResponseServiceActionEnum].
class PurchaseItemResponseServiceActionEnumTypeTransformer {
  factory PurchaseItemResponseServiceActionEnumTypeTransformer() => _instance ??= const PurchaseItemResponseServiceActionEnumTypeTransformer._();

  const PurchaseItemResponseServiceActionEnumTypeTransformer._();

  String encode(PurchaseItemResponseServiceActionEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a PurchaseItemResponseServiceActionEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  PurchaseItemResponseServiceActionEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'DAY_PREMIUM': return PurchaseItemResponseServiceActionEnum.DAY_PREMIUM;
        case r'WEEK_PREMIUM': return PurchaseItemResponseServiceActionEnum.WEEK_PREMIUM;
        case r'MONTH_PREMIUM': return PurchaseItemResponseServiceActionEnum.MONTH_PREMIUM;
        case r'YEAR_PREMIUM': return PurchaseItemResponseServiceActionEnum.YEAR_PREMIUM;
        case r'LIFETIME_PREMIUM': return PurchaseItemResponseServiceActionEnum.LIFETIME_PREMIUM;
        case r'ADD_TICKET': return PurchaseItemResponseServiceActionEnum.ADD_TICKET;
        case r'ADD_GIFT': return PurchaseItemResponseServiceActionEnum.ADD_GIFT;
        case r'ADD_POINTS': return PurchaseItemResponseServiceActionEnum.ADD_POINTS;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [PurchaseItemResponseServiceActionEnumTypeTransformer] instance.
  static PurchaseItemResponseServiceActionEnumTypeTransformer? _instance;
}


