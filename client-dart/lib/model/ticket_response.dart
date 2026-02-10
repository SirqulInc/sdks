//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class TicketResponse {
  /// Returns a new [TicketResponse] instance.
  TicketResponse({
    this.action,
    this.id,
    this.accountId,
    this.objectId,
    this.type,
    this.actionType,
    this.used,
    this.count,
    this.purchaseItem,
    this.customMessage,
    this.sender,
    this.receiver = const [],
    this.customAsset,
    this.receiptToken,
    this.ticketType,
    this.application,
  });

  TicketResponseActionEnum? action;

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
  int? accountId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? objectId;

  TicketResponseTypeEnum? type;

  TicketResponseActionTypeEnum? actionType;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? used;

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
  PurchaseItemShortResponse? purchaseItem;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? customMessage;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  AccountShortResponse? sender;

  List<AccountShortResponse> receiver;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  AssetShortResponse? customAsset;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? receiptToken;

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
  ApplicationShortResponse? application;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TicketResponse &&
    other.action == action &&
    other.id == id &&
    other.accountId == accountId &&
    other.objectId == objectId &&
    other.type == type &&
    other.actionType == actionType &&
    other.used == used &&
    other.count == count &&
    other.purchaseItem == purchaseItem &&
    other.customMessage == customMessage &&
    other.sender == sender &&
    _deepEquality.equals(other.receiver, receiver) &&
    other.customAsset == customAsset &&
    other.receiptToken == receiptToken &&
    other.ticketType == ticketType &&
    other.application == application;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (action == null ? 0 : action!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (accountId == null ? 0 : accountId!.hashCode) +
    (objectId == null ? 0 : objectId!.hashCode) +
    (type == null ? 0 : type!.hashCode) +
    (actionType == null ? 0 : actionType!.hashCode) +
    (used == null ? 0 : used!.hashCode) +
    (count == null ? 0 : count!.hashCode) +
    (purchaseItem == null ? 0 : purchaseItem!.hashCode) +
    (customMessage == null ? 0 : customMessage!.hashCode) +
    (sender == null ? 0 : sender!.hashCode) +
    (receiver.hashCode) +
    (customAsset == null ? 0 : customAsset!.hashCode) +
    (receiptToken == null ? 0 : receiptToken!.hashCode) +
    (ticketType == null ? 0 : ticketType!.hashCode) +
    (application == null ? 0 : application!.hashCode);

  @override
  String toString() => 'TicketResponse[action=$action, id=$id, accountId=$accountId, objectId=$objectId, type=$type, actionType=$actionType, used=$used, count=$count, purchaseItem=$purchaseItem, customMessage=$customMessage, sender=$sender, receiver=$receiver, customAsset=$customAsset, receiptToken=$receiptToken, ticketType=$ticketType, application=$application]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.action != null) {
      json[r'action'] = this.action;
    } else {
      json[r'action'] = null;
    }
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.accountId != null) {
      json[r'accountId'] = this.accountId;
    } else {
      json[r'accountId'] = null;
    }
    if (this.objectId != null) {
      json[r'objectId'] = this.objectId;
    } else {
      json[r'objectId'] = null;
    }
    if (this.type != null) {
      json[r'type'] = this.type;
    } else {
      json[r'type'] = null;
    }
    if (this.actionType != null) {
      json[r'actionType'] = this.actionType;
    } else {
      json[r'actionType'] = null;
    }
    if (this.used != null) {
      json[r'used'] = this.used;
    } else {
      json[r'used'] = null;
    }
    if (this.count != null) {
      json[r'count'] = this.count;
    } else {
      json[r'count'] = null;
    }
    if (this.purchaseItem != null) {
      json[r'purchaseItem'] = this.purchaseItem;
    } else {
      json[r'purchaseItem'] = null;
    }
    if (this.customMessage != null) {
      json[r'customMessage'] = this.customMessage;
    } else {
      json[r'customMessage'] = null;
    }
    if (this.sender != null) {
      json[r'sender'] = this.sender;
    } else {
      json[r'sender'] = null;
    }
      json[r'receiver'] = this.receiver;
    if (this.customAsset != null) {
      json[r'customAsset'] = this.customAsset;
    } else {
      json[r'customAsset'] = null;
    }
    if (this.receiptToken != null) {
      json[r'receiptToken'] = this.receiptToken;
    } else {
      json[r'receiptToken'] = null;
    }
    if (this.ticketType != null) {
      json[r'ticketType'] = this.ticketType;
    } else {
      json[r'ticketType'] = null;
    }
    if (this.application != null) {
      json[r'application'] = this.application;
    } else {
      json[r'application'] = null;
    }
    return json;
  }

  /// Returns a new [TicketResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TicketResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "TicketResponse[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "TicketResponse[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return TicketResponse(
        action: TicketResponseActionEnum.fromJson(json[r'action']),
        id: mapValueOfType<int>(json, r'id'),
        accountId: mapValueOfType<int>(json, r'accountId'),
        objectId: mapValueOfType<int>(json, r'objectId'),
        type: TicketResponseTypeEnum.fromJson(json[r'type']),
        actionType: TicketResponseActionTypeEnum.fromJson(json[r'actionType']),
        used: mapValueOfType<int>(json, r'used'),
        count: mapValueOfType<int>(json, r'count'),
        purchaseItem: PurchaseItemShortResponse.fromJson(json[r'purchaseItem']),
        customMessage: mapValueOfType<String>(json, r'customMessage'),
        sender: AccountShortResponse.fromJson(json[r'sender']),
        receiver: AccountShortResponse.listFromJson(json[r'receiver']),
        customAsset: AssetShortResponse.fromJson(json[r'customAsset']),
        receiptToken: mapValueOfType<String>(json, r'receiptToken'),
        ticketType: mapValueOfType<String>(json, r'ticketType'),
        application: ApplicationShortResponse.fromJson(json[r'application']),
      );
    }
    return null;
  }

  static List<TicketResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TicketResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TicketResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TicketResponse> mapFromJson(dynamic json) {
    final map = <String, TicketResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TicketResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TicketResponse-objects as value to a dart map
  static Map<String, List<TicketResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<TicketResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = TicketResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}


class TicketResponseActionEnum {
  /// Instantiate a new enum with the provided [value].
  const TicketResponseActionEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const DATA = TicketResponseActionEnum._(r'DATA');
  static const SAVE = TicketResponseActionEnum._(r'SAVE');
  static const DELETE = TicketResponseActionEnum._(r'DELETE');
  static const GET = TicketResponseActionEnum._(r'GET');

  /// List of all possible values in this [enum][TicketResponseActionEnum].
  static const values = <TicketResponseActionEnum>[
    DATA,
    SAVE,
    DELETE,
    GET,
  ];

  static TicketResponseActionEnum? fromJson(dynamic value) => TicketResponseActionEnumTypeTransformer().decode(value);

  static List<TicketResponseActionEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TicketResponseActionEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TicketResponseActionEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [TicketResponseActionEnum] to String,
/// and [decode] dynamic data back to [TicketResponseActionEnum].
class TicketResponseActionEnumTypeTransformer {
  factory TicketResponseActionEnumTypeTransformer() => _instance ??= const TicketResponseActionEnumTypeTransformer._();

  const TicketResponseActionEnumTypeTransformer._();

  String encode(TicketResponseActionEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a TicketResponseActionEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  TicketResponseActionEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'DATA': return TicketResponseActionEnum.DATA;
        case r'SAVE': return TicketResponseActionEnum.SAVE;
        case r'DELETE': return TicketResponseActionEnum.DELETE;
        case r'GET': return TicketResponseActionEnum.GET;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [TicketResponseActionEnumTypeTransformer] instance.
  static TicketResponseActionEnumTypeTransformer? _instance;
}



class TicketResponseTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const TicketResponseTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const GAME_OBJECT = TicketResponseTypeEnum._(r'GAME_OBJECT');
  static const GAME_LEVEL = TicketResponseTypeEnum._(r'GAME_LEVEL');
  static const PACK = TicketResponseTypeEnum._(r'PACK');
  static const GAME = TicketResponseTypeEnum._(r'GAME');
  static const MISSION = TicketResponseTypeEnum._(r'MISSION');
  static const PROFILE = TicketResponseTypeEnum._(r'PROFILE');
  static const APPLICATION = TicketResponseTypeEnum._(r'APPLICATION');
  static const TICKETS = TicketResponseTypeEnum._(r'TICKETS');
  static const ASSET = TicketResponseTypeEnum._(r'ASSET');
  static const CUSTOM = TicketResponseTypeEnum._(r'CUSTOM');

  /// List of all possible values in this [enum][TicketResponseTypeEnum].
  static const values = <TicketResponseTypeEnum>[
    GAME_OBJECT,
    GAME_LEVEL,
    PACK,
    GAME,
    MISSION,
    PROFILE,
    APPLICATION,
    TICKETS,
    ASSET,
    CUSTOM,
  ];

  static TicketResponseTypeEnum? fromJson(dynamic value) => TicketResponseTypeEnumTypeTransformer().decode(value);

  static List<TicketResponseTypeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TicketResponseTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TicketResponseTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [TicketResponseTypeEnum] to String,
/// and [decode] dynamic data back to [TicketResponseTypeEnum].
class TicketResponseTypeEnumTypeTransformer {
  factory TicketResponseTypeEnumTypeTransformer() => _instance ??= const TicketResponseTypeEnumTypeTransformer._();

  const TicketResponseTypeEnumTypeTransformer._();

  String encode(TicketResponseTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a TicketResponseTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  TicketResponseTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'GAME_OBJECT': return TicketResponseTypeEnum.GAME_OBJECT;
        case r'GAME_LEVEL': return TicketResponseTypeEnum.GAME_LEVEL;
        case r'PACK': return TicketResponseTypeEnum.PACK;
        case r'GAME': return TicketResponseTypeEnum.GAME;
        case r'MISSION': return TicketResponseTypeEnum.MISSION;
        case r'PROFILE': return TicketResponseTypeEnum.PROFILE;
        case r'APPLICATION': return TicketResponseTypeEnum.APPLICATION;
        case r'TICKETS': return TicketResponseTypeEnum.TICKETS;
        case r'ASSET': return TicketResponseTypeEnum.ASSET;
        case r'CUSTOM': return TicketResponseTypeEnum.CUSTOM;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [TicketResponseTypeEnumTypeTransformer] instance.
  static TicketResponseTypeEnumTypeTransformer? _instance;
}



class TicketResponseActionTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const TicketResponseActionTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const COMPLETED = TicketResponseActionTypeEnum._(r'COMPLETED');
  static const REDEEMED = TicketResponseActionTypeEnum._(r'REDEEMED');
  static const USERS_PLAYED = TicketResponseActionTypeEnum._(r'USERS_PLAYED');
  static const TOURNAMENT_OWNER = TicketResponseActionTypeEnum._(r'TOURNAMENT_OWNER');
  static const PURCHASED = TicketResponseActionTypeEnum._(r'PURCHASED');
  static const SUMATION = TicketResponseActionTypeEnum._(r'SUMATION');
  static const GIFTED = TicketResponseActionTypeEnum._(r'GIFTED');
  static const REFUNDED = TicketResponseActionTypeEnum._(r'REFUNDED');

  /// List of all possible values in this [enum][TicketResponseActionTypeEnum].
  static const values = <TicketResponseActionTypeEnum>[
    COMPLETED,
    REDEEMED,
    USERS_PLAYED,
    TOURNAMENT_OWNER,
    PURCHASED,
    SUMATION,
    GIFTED,
    REFUNDED,
  ];

  static TicketResponseActionTypeEnum? fromJson(dynamic value) => TicketResponseActionTypeEnumTypeTransformer().decode(value);

  static List<TicketResponseActionTypeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TicketResponseActionTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TicketResponseActionTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [TicketResponseActionTypeEnum] to String,
/// and [decode] dynamic data back to [TicketResponseActionTypeEnum].
class TicketResponseActionTypeEnumTypeTransformer {
  factory TicketResponseActionTypeEnumTypeTransformer() => _instance ??= const TicketResponseActionTypeEnumTypeTransformer._();

  const TicketResponseActionTypeEnumTypeTransformer._();

  String encode(TicketResponseActionTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a TicketResponseActionTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  TicketResponseActionTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'COMPLETED': return TicketResponseActionTypeEnum.COMPLETED;
        case r'REDEEMED': return TicketResponseActionTypeEnum.REDEEMED;
        case r'USERS_PLAYED': return TicketResponseActionTypeEnum.USERS_PLAYED;
        case r'TOURNAMENT_OWNER': return TicketResponseActionTypeEnum.TOURNAMENT_OWNER;
        case r'PURCHASED': return TicketResponseActionTypeEnum.PURCHASED;
        case r'SUMATION': return TicketResponseActionTypeEnum.SUMATION;
        case r'GIFTED': return TicketResponseActionTypeEnum.GIFTED;
        case r'REFUNDED': return TicketResponseActionTypeEnum.REFUNDED;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [TicketResponseActionTypeEnumTypeTransformer] instance.
  static TicketResponseActionTypeEnumTypeTransformer? _instance;
}


