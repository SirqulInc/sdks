//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class DisbursementResponse {
  /// Returns a new [DisbursementResponse] instance.
  DisbursementResponse({
    this.disbursementId,
    this.title,
    this.comment,
    this.externalId,
    this.introspectionParams,
    this.amount,
    this.scheduledDate,
    this.captureDate,
    this.estimatedDate,
    this.settledDate,
    this.status,
    this.provider,
    this.senderBillable,
    this.receiverBillable,
    this.errorCode,
    this.errorMessage,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? disbursementId;

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
  String? comment;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? externalId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? introspectionParams;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? amount;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? scheduledDate;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? captureDate;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? estimatedDate;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? settledDate;

  DisbursementResponseStatusEnum? status;

  DisbursementResponseProviderEnum? provider;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  BillableEntityShortResponse? senderBillable;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  BillableEntityShortResponse? receiverBillable;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? errorCode;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? errorMessage;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DisbursementResponse &&
    other.disbursementId == disbursementId &&
    other.title == title &&
    other.comment == comment &&
    other.externalId == externalId &&
    other.introspectionParams == introspectionParams &&
    other.amount == amount &&
    other.scheduledDate == scheduledDate &&
    other.captureDate == captureDate &&
    other.estimatedDate == estimatedDate &&
    other.settledDate == settledDate &&
    other.status == status &&
    other.provider == provider &&
    other.senderBillable == senderBillable &&
    other.receiverBillable == receiverBillable &&
    other.errorCode == errorCode &&
    other.errorMessage == errorMessage;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (disbursementId == null ? 0 : disbursementId!.hashCode) +
    (title == null ? 0 : title!.hashCode) +
    (comment == null ? 0 : comment!.hashCode) +
    (externalId == null ? 0 : externalId!.hashCode) +
    (introspectionParams == null ? 0 : introspectionParams!.hashCode) +
    (amount == null ? 0 : amount!.hashCode) +
    (scheduledDate == null ? 0 : scheduledDate!.hashCode) +
    (captureDate == null ? 0 : captureDate!.hashCode) +
    (estimatedDate == null ? 0 : estimatedDate!.hashCode) +
    (settledDate == null ? 0 : settledDate!.hashCode) +
    (status == null ? 0 : status!.hashCode) +
    (provider == null ? 0 : provider!.hashCode) +
    (senderBillable == null ? 0 : senderBillable!.hashCode) +
    (receiverBillable == null ? 0 : receiverBillable!.hashCode) +
    (errorCode == null ? 0 : errorCode!.hashCode) +
    (errorMessage == null ? 0 : errorMessage!.hashCode);

  @override
  String toString() => 'DisbursementResponse[disbursementId=$disbursementId, title=$title, comment=$comment, externalId=$externalId, introspectionParams=$introspectionParams, amount=$amount, scheduledDate=$scheduledDate, captureDate=$captureDate, estimatedDate=$estimatedDate, settledDate=$settledDate, status=$status, provider=$provider, senderBillable=$senderBillable, receiverBillable=$receiverBillable, errorCode=$errorCode, errorMessage=$errorMessage]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.disbursementId != null) {
      json[r'disbursementId'] = this.disbursementId;
    } else {
      json[r'disbursementId'] = null;
    }
    if (this.title != null) {
      json[r'title'] = this.title;
    } else {
      json[r'title'] = null;
    }
    if (this.comment != null) {
      json[r'comment'] = this.comment;
    } else {
      json[r'comment'] = null;
    }
    if (this.externalId != null) {
      json[r'externalId'] = this.externalId;
    } else {
      json[r'externalId'] = null;
    }
    if (this.introspectionParams != null) {
      json[r'introspectionParams'] = this.introspectionParams;
    } else {
      json[r'introspectionParams'] = null;
    }
    if (this.amount != null) {
      json[r'amount'] = this.amount;
    } else {
      json[r'amount'] = null;
    }
    if (this.scheduledDate != null) {
      json[r'scheduledDate'] = this.scheduledDate;
    } else {
      json[r'scheduledDate'] = null;
    }
    if (this.captureDate != null) {
      json[r'captureDate'] = this.captureDate;
    } else {
      json[r'captureDate'] = null;
    }
    if (this.estimatedDate != null) {
      json[r'estimatedDate'] = this.estimatedDate;
    } else {
      json[r'estimatedDate'] = null;
    }
    if (this.settledDate != null) {
      json[r'settledDate'] = this.settledDate;
    } else {
      json[r'settledDate'] = null;
    }
    if (this.status != null) {
      json[r'status'] = this.status;
    } else {
      json[r'status'] = null;
    }
    if (this.provider != null) {
      json[r'provider'] = this.provider;
    } else {
      json[r'provider'] = null;
    }
    if (this.senderBillable != null) {
      json[r'senderBillable'] = this.senderBillable;
    } else {
      json[r'senderBillable'] = null;
    }
    if (this.receiverBillable != null) {
      json[r'receiverBillable'] = this.receiverBillable;
    } else {
      json[r'receiverBillable'] = null;
    }
    if (this.errorCode != null) {
      json[r'errorCode'] = this.errorCode;
    } else {
      json[r'errorCode'] = null;
    }
    if (this.errorMessage != null) {
      json[r'errorMessage'] = this.errorMessage;
    } else {
      json[r'errorMessage'] = null;
    }
    return json;
  }

  /// Returns a new [DisbursementResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DisbursementResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "DisbursementResponse[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "DisbursementResponse[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return DisbursementResponse(
        disbursementId: mapValueOfType<int>(json, r'disbursementId'),
        title: mapValueOfType<String>(json, r'title'),
        comment: mapValueOfType<String>(json, r'comment'),
        externalId: mapValueOfType<String>(json, r'externalId'),
        introspectionParams: mapValueOfType<String>(json, r'introspectionParams'),
        amount: num.parse('${json[r'amount']}'),
        scheduledDate: mapValueOfType<int>(json, r'scheduledDate'),
        captureDate: mapValueOfType<int>(json, r'captureDate'),
        estimatedDate: mapValueOfType<int>(json, r'estimatedDate'),
        settledDate: mapValueOfType<int>(json, r'settledDate'),
        status: DisbursementResponseStatusEnum.fromJson(json[r'status']),
        provider: DisbursementResponseProviderEnum.fromJson(json[r'provider']),
        senderBillable: BillableEntityShortResponse.fromJson(json[r'senderBillable']),
        receiverBillable: BillableEntityShortResponse.fromJson(json[r'receiverBillable']),
        errorCode: mapValueOfType<String>(json, r'errorCode'),
        errorMessage: mapValueOfType<String>(json, r'errorMessage'),
      );
    }
    return null;
  }

  static List<DisbursementResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DisbursementResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DisbursementResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DisbursementResponse> mapFromJson(dynamic json) {
    final map = <String, DisbursementResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DisbursementResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DisbursementResponse-objects as value to a dart map
  static Map<String, List<DisbursementResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<DisbursementResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = DisbursementResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}


class DisbursementResponseStatusEnum {
  /// Instantiate a new enum with the provided [value].
  const DisbursementResponseStatusEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const NEW = DisbursementResponseStatusEnum._(r'NEW');
  static const APPROVED = DisbursementResponseStatusEnum._(r'APPROVED');
  static const VALIDATING = DisbursementResponseStatusEnum._(r'VALIDATING');
  static const ERROR = DisbursementResponseStatusEnum._(r'ERROR');
  static const AUTHORIZED = DisbursementResponseStatusEnum._(r'AUTHORIZED');
  static const CAPTURED = DisbursementResponseStatusEnum._(r'CAPTURED');
  static const SETTLED = DisbursementResponseStatusEnum._(r'SETTLED');

  /// List of all possible values in this [enum][DisbursementResponseStatusEnum].
  static const values = <DisbursementResponseStatusEnum>[
    NEW,
    APPROVED,
    VALIDATING,
    ERROR,
    AUTHORIZED,
    CAPTURED,
    SETTLED,
  ];

  static DisbursementResponseStatusEnum? fromJson(dynamic value) => DisbursementResponseStatusEnumTypeTransformer().decode(value);

  static List<DisbursementResponseStatusEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DisbursementResponseStatusEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DisbursementResponseStatusEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [DisbursementResponseStatusEnum] to String,
/// and [decode] dynamic data back to [DisbursementResponseStatusEnum].
class DisbursementResponseStatusEnumTypeTransformer {
  factory DisbursementResponseStatusEnumTypeTransformer() => _instance ??= const DisbursementResponseStatusEnumTypeTransformer._();

  const DisbursementResponseStatusEnumTypeTransformer._();

  String encode(DisbursementResponseStatusEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a DisbursementResponseStatusEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  DisbursementResponseStatusEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'NEW': return DisbursementResponseStatusEnum.NEW;
        case r'APPROVED': return DisbursementResponseStatusEnum.APPROVED;
        case r'VALIDATING': return DisbursementResponseStatusEnum.VALIDATING;
        case r'ERROR': return DisbursementResponseStatusEnum.ERROR;
        case r'AUTHORIZED': return DisbursementResponseStatusEnum.AUTHORIZED;
        case r'CAPTURED': return DisbursementResponseStatusEnum.CAPTURED;
        case r'SETTLED': return DisbursementResponseStatusEnum.SETTLED;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [DisbursementResponseStatusEnumTypeTransformer] instance.
  static DisbursementResponseStatusEnumTypeTransformer? _instance;
}



class DisbursementResponseProviderEnum {
  /// Instantiate a new enum with the provided [value].
  const DisbursementResponseProviderEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const AUTHORIZE_NET = DisbursementResponseProviderEnum._(r'AUTHORIZE_NET');
  static const AMAZON_FPS = DisbursementResponseProviderEnum._(r'AMAZON_FPS');
  static const BILL_COM = DisbursementResponseProviderEnum._(r'BILL_COM');

  /// List of all possible values in this [enum][DisbursementResponseProviderEnum].
  static const values = <DisbursementResponseProviderEnum>[
    AUTHORIZE_NET,
    AMAZON_FPS,
    BILL_COM,
  ];

  static DisbursementResponseProviderEnum? fromJson(dynamic value) => DisbursementResponseProviderEnumTypeTransformer().decode(value);

  static List<DisbursementResponseProviderEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DisbursementResponseProviderEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DisbursementResponseProviderEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [DisbursementResponseProviderEnum] to String,
/// and [decode] dynamic data back to [DisbursementResponseProviderEnum].
class DisbursementResponseProviderEnumTypeTransformer {
  factory DisbursementResponseProviderEnumTypeTransformer() => _instance ??= const DisbursementResponseProviderEnumTypeTransformer._();

  const DisbursementResponseProviderEnumTypeTransformer._();

  String encode(DisbursementResponseProviderEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a DisbursementResponseProviderEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  DisbursementResponseProviderEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'AUTHORIZE_NET': return DisbursementResponseProviderEnum.AUTHORIZE_NET;
        case r'AMAZON_FPS': return DisbursementResponseProviderEnum.AMAZON_FPS;
        case r'BILL_COM': return DisbursementResponseProviderEnum.BILL_COM;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [DisbursementResponseProviderEnumTypeTransformer] instance.
  static DisbursementResponseProviderEnumTypeTransformer? _instance;
}


