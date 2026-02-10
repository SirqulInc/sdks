//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class SubscriptionOption {
  /// Returns a new [SubscriptionOption] instance.
  SubscriptionOption({
    this.id,
    this.active,
    this.valid,
    this.name,
    this.price,
    this.quantity,
    this.threshold,
    this.visible,
    this.optionType,
    this.offerType,
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
  bool? active;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? valid;

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
  double? price;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? quantity;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? threshold;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? visible;

  SubscriptionOptionOptionTypeEnum? optionType;

  SubscriptionOptionOfferTypeEnum? offerType;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SubscriptionOption &&
    other.id == id &&
    other.active == active &&
    other.valid == valid &&
    other.name == name &&
    other.price == price &&
    other.quantity == quantity &&
    other.threshold == threshold &&
    other.visible == visible &&
    other.optionType == optionType &&
    other.offerType == offerType;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (active == null ? 0 : active!.hashCode) +
    (valid == null ? 0 : valid!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (price == null ? 0 : price!.hashCode) +
    (quantity == null ? 0 : quantity!.hashCode) +
    (threshold == null ? 0 : threshold!.hashCode) +
    (visible == null ? 0 : visible!.hashCode) +
    (optionType == null ? 0 : optionType!.hashCode) +
    (offerType == null ? 0 : offerType!.hashCode);

  @override
  String toString() => 'SubscriptionOption[id=$id, active=$active, valid=$valid, name=$name, price=$price, quantity=$quantity, threshold=$threshold, visible=$visible, optionType=$optionType, offerType=$offerType]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.active != null) {
      json[r'active'] = this.active;
    } else {
      json[r'active'] = null;
    }
    if (this.valid != null) {
      json[r'valid'] = this.valid;
    } else {
      json[r'valid'] = null;
    }
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.price != null) {
      json[r'price'] = this.price;
    } else {
      json[r'price'] = null;
    }
    if (this.quantity != null) {
      json[r'quantity'] = this.quantity;
    } else {
      json[r'quantity'] = null;
    }
    if (this.threshold != null) {
      json[r'threshold'] = this.threshold;
    } else {
      json[r'threshold'] = null;
    }
    if (this.visible != null) {
      json[r'visible'] = this.visible;
    } else {
      json[r'visible'] = null;
    }
    if (this.optionType != null) {
      json[r'optionType'] = this.optionType;
    } else {
      json[r'optionType'] = null;
    }
    if (this.offerType != null) {
      json[r'offerType'] = this.offerType;
    } else {
      json[r'offerType'] = null;
    }
    return json;
  }

  /// Returns a new [SubscriptionOption] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SubscriptionOption? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SubscriptionOption[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SubscriptionOption[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SubscriptionOption(
        id: mapValueOfType<int>(json, r'id'),
        active: mapValueOfType<bool>(json, r'active'),
        valid: mapValueOfType<bool>(json, r'valid'),
        name: mapValueOfType<String>(json, r'name'),
        price: mapValueOfType<double>(json, r'price'),
        quantity: mapValueOfType<int>(json, r'quantity'),
        threshold: mapValueOfType<int>(json, r'threshold'),
        visible: mapValueOfType<bool>(json, r'visible'),
        optionType: SubscriptionOptionOptionTypeEnum.fromJson(json[r'optionType']),
        offerType: SubscriptionOptionOfferTypeEnum.fromJson(json[r'offerType']),
      );
    }
    return null;
  }

  static List<SubscriptionOption> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SubscriptionOption>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SubscriptionOption.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SubscriptionOption> mapFromJson(dynamic json) {
    final map = <String, SubscriptionOption>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SubscriptionOption.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SubscriptionOption-objects as value to a dart map
  static Map<String, List<SubscriptionOption>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SubscriptionOption>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SubscriptionOption.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}


class SubscriptionOptionOptionTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const SubscriptionOptionOptionTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const MISSION = SubscriptionOptionOptionTypeEnum._(r'MISSION');
  static const LOCATION = SubscriptionOptionOptionTypeEnum._(r'LOCATION');
  static const OFFER = SubscriptionOptionOptionTypeEnum._(r'OFFER');
  static const NOTIFICATION = SubscriptionOptionOptionTypeEnum._(r'NOTIFICATION');
  static const REQUEST = SubscriptionOptionOptionTypeEnum._(r'REQUEST');
  static const sTORAGES3 = SubscriptionOptionOptionTypeEnum._(r'STORAGE_S3');
  static const STORAGE_DB = SubscriptionOptionOptionTypeEnum._(r'STORAGE_DB');

  /// List of all possible values in this [enum][SubscriptionOptionOptionTypeEnum].
  static const values = <SubscriptionOptionOptionTypeEnum>[
    MISSION,
    LOCATION,
    OFFER,
    NOTIFICATION,
    REQUEST,
    sTORAGES3,
    STORAGE_DB,
  ];

  static SubscriptionOptionOptionTypeEnum? fromJson(dynamic value) => SubscriptionOptionOptionTypeEnumTypeTransformer().decode(value);

  static List<SubscriptionOptionOptionTypeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SubscriptionOptionOptionTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SubscriptionOptionOptionTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [SubscriptionOptionOptionTypeEnum] to String,
/// and [decode] dynamic data back to [SubscriptionOptionOptionTypeEnum].
class SubscriptionOptionOptionTypeEnumTypeTransformer {
  factory SubscriptionOptionOptionTypeEnumTypeTransformer() => _instance ??= const SubscriptionOptionOptionTypeEnumTypeTransformer._();

  const SubscriptionOptionOptionTypeEnumTypeTransformer._();

  String encode(SubscriptionOptionOptionTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a SubscriptionOptionOptionTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  SubscriptionOptionOptionTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'MISSION': return SubscriptionOptionOptionTypeEnum.MISSION;
        case r'LOCATION': return SubscriptionOptionOptionTypeEnum.LOCATION;
        case r'OFFER': return SubscriptionOptionOptionTypeEnum.OFFER;
        case r'NOTIFICATION': return SubscriptionOptionOptionTypeEnum.NOTIFICATION;
        case r'REQUEST': return SubscriptionOptionOptionTypeEnum.REQUEST;
        case r'STORAGE_S3': return SubscriptionOptionOptionTypeEnum.sTORAGES3;
        case r'STORAGE_DB': return SubscriptionOptionOptionTypeEnum.STORAGE_DB;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [SubscriptionOptionOptionTypeEnumTypeTransformer] instance.
  static SubscriptionOptionOptionTypeEnumTypeTransformer? _instance;
}



class SubscriptionOptionOfferTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const SubscriptionOptionOfferTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const VOUCHER = SubscriptionOptionOfferTypeEnum._(r'VOUCHER');
  static const COUPON = SubscriptionOptionOfferTypeEnum._(r'COUPON');
  static const PRODUCT = SubscriptionOptionOfferTypeEnum._(r'PRODUCT');
  static const MEDIA = SubscriptionOptionOfferTypeEnum._(r'MEDIA');
  static const EVENT = SubscriptionOptionOfferTypeEnum._(r'EVENT');
  static const DEVICE = SubscriptionOptionOfferTypeEnum._(r'DEVICE');

  /// List of all possible values in this [enum][SubscriptionOptionOfferTypeEnum].
  static const values = <SubscriptionOptionOfferTypeEnum>[
    VOUCHER,
    COUPON,
    PRODUCT,
    MEDIA,
    EVENT,
    DEVICE,
  ];

  static SubscriptionOptionOfferTypeEnum? fromJson(dynamic value) => SubscriptionOptionOfferTypeEnumTypeTransformer().decode(value);

  static List<SubscriptionOptionOfferTypeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SubscriptionOptionOfferTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SubscriptionOptionOfferTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [SubscriptionOptionOfferTypeEnum] to String,
/// and [decode] dynamic data back to [SubscriptionOptionOfferTypeEnum].
class SubscriptionOptionOfferTypeEnumTypeTransformer {
  factory SubscriptionOptionOfferTypeEnumTypeTransformer() => _instance ??= const SubscriptionOptionOfferTypeEnumTypeTransformer._();

  const SubscriptionOptionOfferTypeEnumTypeTransformer._();

  String encode(SubscriptionOptionOfferTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a SubscriptionOptionOfferTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  SubscriptionOptionOfferTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'VOUCHER': return SubscriptionOptionOfferTypeEnum.VOUCHER;
        case r'COUPON': return SubscriptionOptionOfferTypeEnum.COUPON;
        case r'PRODUCT': return SubscriptionOptionOfferTypeEnum.PRODUCT;
        case r'MEDIA': return SubscriptionOptionOfferTypeEnum.MEDIA;
        case r'EVENT': return SubscriptionOptionOfferTypeEnum.EVENT;
        case r'DEVICE': return SubscriptionOptionOfferTypeEnum.DEVICE;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [SubscriptionOptionOfferTypeEnumTypeTransformer] instance.
  static SubscriptionOptionOfferTypeEnumTypeTransformer? _instance;
}


