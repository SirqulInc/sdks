//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class OrderItemRequest {
  /// Returns a new [OrderItemRequest] instance.
  OrderItemRequest({
    this.orderItemType,
    this.orderItemId,
    this.offerName,
    this.orderCustomType,
    this.orderCustomId,
    this.retailerLocationId,
    this.quantity,
    this.amount,
    this.tax,
    this.reserveStartDate,
    this.reserveEndDate,
    this.message,
  });

  OrderItemRequestOrderItemTypeEnum? orderItemType;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? orderItemId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? offerName;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? orderCustomType;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? orderCustomId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? retailerLocationId;

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
  double? amount;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? tax;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? reserveStartDate;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? reserveEndDate;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? message;

  @override
  bool operator ==(Object other) => identical(this, other) || other is OrderItemRequest &&
    other.orderItemType == orderItemType &&
    other.orderItemId == orderItemId &&
    other.offerName == offerName &&
    other.orderCustomType == orderCustomType &&
    other.orderCustomId == orderCustomId &&
    other.retailerLocationId == retailerLocationId &&
    other.quantity == quantity &&
    other.amount == amount &&
    other.tax == tax &&
    other.reserveStartDate == reserveStartDate &&
    other.reserveEndDate == reserveEndDate &&
    other.message == message;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (orderItemType == null ? 0 : orderItemType!.hashCode) +
    (orderItemId == null ? 0 : orderItemId!.hashCode) +
    (offerName == null ? 0 : offerName!.hashCode) +
    (orderCustomType == null ? 0 : orderCustomType!.hashCode) +
    (orderCustomId == null ? 0 : orderCustomId!.hashCode) +
    (retailerLocationId == null ? 0 : retailerLocationId!.hashCode) +
    (quantity == null ? 0 : quantity!.hashCode) +
    (amount == null ? 0 : amount!.hashCode) +
    (tax == null ? 0 : tax!.hashCode) +
    (reserveStartDate == null ? 0 : reserveStartDate!.hashCode) +
    (reserveEndDate == null ? 0 : reserveEndDate!.hashCode) +
    (message == null ? 0 : message!.hashCode);

  @override
  String toString() => 'OrderItemRequest[orderItemType=$orderItemType, orderItemId=$orderItemId, offerName=$offerName, orderCustomType=$orderCustomType, orderCustomId=$orderCustomId, retailerLocationId=$retailerLocationId, quantity=$quantity, amount=$amount, tax=$tax, reserveStartDate=$reserveStartDate, reserveEndDate=$reserveEndDate, message=$message]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.orderItemType != null) {
      json[r'orderItemType'] = this.orderItemType;
    } else {
      json[r'orderItemType'] = null;
    }
    if (this.orderItemId != null) {
      json[r'orderItemId'] = this.orderItemId;
    } else {
      json[r'orderItemId'] = null;
    }
    if (this.offerName != null) {
      json[r'offerName'] = this.offerName;
    } else {
      json[r'offerName'] = null;
    }
    if (this.orderCustomType != null) {
      json[r'orderCustomType'] = this.orderCustomType;
    } else {
      json[r'orderCustomType'] = null;
    }
    if (this.orderCustomId != null) {
      json[r'orderCustomId'] = this.orderCustomId;
    } else {
      json[r'orderCustomId'] = null;
    }
    if (this.retailerLocationId != null) {
      json[r'retailerLocationId'] = this.retailerLocationId;
    } else {
      json[r'retailerLocationId'] = null;
    }
    if (this.quantity != null) {
      json[r'quantity'] = this.quantity;
    } else {
      json[r'quantity'] = null;
    }
    if (this.amount != null) {
      json[r'amount'] = this.amount;
    } else {
      json[r'amount'] = null;
    }
    if (this.tax != null) {
      json[r'tax'] = this.tax;
    } else {
      json[r'tax'] = null;
    }
    if (this.reserveStartDate != null) {
      json[r'reserveStartDate'] = this.reserveStartDate;
    } else {
      json[r'reserveStartDate'] = null;
    }
    if (this.reserveEndDate != null) {
      json[r'reserveEndDate'] = this.reserveEndDate;
    } else {
      json[r'reserveEndDate'] = null;
    }
    if (this.message != null) {
      json[r'message'] = this.message;
    } else {
      json[r'message'] = null;
    }
    return json;
  }

  /// Returns a new [OrderItemRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static OrderItemRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "OrderItemRequest[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "OrderItemRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return OrderItemRequest(
        orderItemType: OrderItemRequestOrderItemTypeEnum.fromJson(json[r'orderItemType']),
        orderItemId: mapValueOfType<int>(json, r'orderItemId'),
        offerName: mapValueOfType<String>(json, r'offerName'),
        orderCustomType: mapValueOfType<String>(json, r'orderCustomType'),
        orderCustomId: mapValueOfType<String>(json, r'orderCustomId'),
        retailerLocationId: mapValueOfType<int>(json, r'retailerLocationId'),
        quantity: mapValueOfType<int>(json, r'quantity'),
        amount: mapValueOfType<double>(json, r'amount'),
        tax: mapValueOfType<double>(json, r'tax'),
        reserveStartDate: mapValueOfType<int>(json, r'reserveStartDate'),
        reserveEndDate: mapValueOfType<int>(json, r'reserveEndDate'),
        message: mapValueOfType<String>(json, r'message'),
      );
    }
    return null;
  }

  static List<OrderItemRequest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <OrderItemRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = OrderItemRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, OrderItemRequest> mapFromJson(dynamic json) {
    final map = <String, OrderItemRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = OrderItemRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of OrderItemRequest-objects as value to a dart map
  static Map<String, List<OrderItemRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<OrderItemRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = OrderItemRequest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}


class OrderItemRequestOrderItemTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const OrderItemRequestOrderItemTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const OFFER = OrderItemRequestOrderItemTypeEnum._(r'OFFER');
  static const CUSTOM = OrderItemRequestOrderItemTypeEnum._(r'CUSTOM');

  /// List of all possible values in this [enum][OrderItemRequestOrderItemTypeEnum].
  static const values = <OrderItemRequestOrderItemTypeEnum>[
    OFFER,
    CUSTOM,
  ];

  static OrderItemRequestOrderItemTypeEnum? fromJson(dynamic value) => OrderItemRequestOrderItemTypeEnumTypeTransformer().decode(value);

  static List<OrderItemRequestOrderItemTypeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <OrderItemRequestOrderItemTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = OrderItemRequestOrderItemTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [OrderItemRequestOrderItemTypeEnum] to String,
/// and [decode] dynamic data back to [OrderItemRequestOrderItemTypeEnum].
class OrderItemRequestOrderItemTypeEnumTypeTransformer {
  factory OrderItemRequestOrderItemTypeEnumTypeTransformer() => _instance ??= const OrderItemRequestOrderItemTypeEnumTypeTransformer._();

  const OrderItemRequestOrderItemTypeEnumTypeTransformer._();

  String encode(OrderItemRequestOrderItemTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a OrderItemRequestOrderItemTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  OrderItemRequestOrderItemTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'OFFER': return OrderItemRequestOrderItemTypeEnum.OFFER;
        case r'CUSTOM': return OrderItemRequestOrderItemTypeEnum.CUSTOM;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [OrderItemRequestOrderItemTypeEnumTypeTransformer] instance.
  static OrderItemRequestOrderItemTypeEnumTypeTransformer? _instance;
}


