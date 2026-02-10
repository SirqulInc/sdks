//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class PaymentTypesResponse {
  /// Returns a new [PaymentTypesResponse] instance.
  PaymentTypesResponse({
    this.valid,
    this.message,
    this.version,
    this.serializeNulls,
    this.startTimeLog,
    this.errorCode,
    this.request = const [],
    this.creditCardOnFile,
    this.creditCardNumber,
    this.creditCardExpirationMonth,
    this.creditCardExpirationYear,
    this.pointsOnFile,
    this.pointsAmount,
    this.account,
    this.firstName,
    this.lastName,
    this.address,
    this.city,
    this.state,
    this.postalCode,
    this.phone,
    this.provider,
    this.paymentMethodId,
    this.validated,
    this.accountNumber,
    this.bankName,
    this.routingNumber,
    this.isDefaultPaymentMethod,
    this.accountName,
    this.paymentMethodNickname,
    this.taxId,
    this.returning,
  });

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
  String? message;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? version;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? serializeNulls;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? startTimeLog;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? errorCode;

  List<NameStringValueResponse> request;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? creditCardOnFile;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? creditCardNumber;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? creditCardExpirationMonth;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? creditCardExpirationYear;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? pointsOnFile;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? pointsAmount;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  AccountShortResponse? account;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? firstName;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? lastName;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? address;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? city;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? state;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? postalCode;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? phone;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? provider;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? paymentMethodId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? validated;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? accountNumber;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? bankName;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? routingNumber;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isDefaultPaymentMethod;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? accountName;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? paymentMethodNickname;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? taxId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? returning;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PaymentTypesResponse &&
    other.valid == valid &&
    other.message == message &&
    other.version == version &&
    other.serializeNulls == serializeNulls &&
    other.startTimeLog == startTimeLog &&
    other.errorCode == errorCode &&
    _deepEquality.equals(other.request, request) &&
    other.creditCardOnFile == creditCardOnFile &&
    other.creditCardNumber == creditCardNumber &&
    other.creditCardExpirationMonth == creditCardExpirationMonth &&
    other.creditCardExpirationYear == creditCardExpirationYear &&
    other.pointsOnFile == pointsOnFile &&
    other.pointsAmount == pointsAmount &&
    other.account == account &&
    other.firstName == firstName &&
    other.lastName == lastName &&
    other.address == address &&
    other.city == city &&
    other.state == state &&
    other.postalCode == postalCode &&
    other.phone == phone &&
    other.provider == provider &&
    other.paymentMethodId == paymentMethodId &&
    other.validated == validated &&
    other.accountNumber == accountNumber &&
    other.bankName == bankName &&
    other.routingNumber == routingNumber &&
    other.isDefaultPaymentMethod == isDefaultPaymentMethod &&
    other.accountName == accountName &&
    other.paymentMethodNickname == paymentMethodNickname &&
    other.taxId == taxId &&
    other.returning == returning;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (valid == null ? 0 : valid!.hashCode) +
    (message == null ? 0 : message!.hashCode) +
    (version == null ? 0 : version!.hashCode) +
    (serializeNulls == null ? 0 : serializeNulls!.hashCode) +
    (startTimeLog == null ? 0 : startTimeLog!.hashCode) +
    (errorCode == null ? 0 : errorCode!.hashCode) +
    (request.hashCode) +
    (creditCardOnFile == null ? 0 : creditCardOnFile!.hashCode) +
    (creditCardNumber == null ? 0 : creditCardNumber!.hashCode) +
    (creditCardExpirationMonth == null ? 0 : creditCardExpirationMonth!.hashCode) +
    (creditCardExpirationYear == null ? 0 : creditCardExpirationYear!.hashCode) +
    (pointsOnFile == null ? 0 : pointsOnFile!.hashCode) +
    (pointsAmount == null ? 0 : pointsAmount!.hashCode) +
    (account == null ? 0 : account!.hashCode) +
    (firstName == null ? 0 : firstName!.hashCode) +
    (lastName == null ? 0 : lastName!.hashCode) +
    (address == null ? 0 : address!.hashCode) +
    (city == null ? 0 : city!.hashCode) +
    (state == null ? 0 : state!.hashCode) +
    (postalCode == null ? 0 : postalCode!.hashCode) +
    (phone == null ? 0 : phone!.hashCode) +
    (provider == null ? 0 : provider!.hashCode) +
    (paymentMethodId == null ? 0 : paymentMethodId!.hashCode) +
    (validated == null ? 0 : validated!.hashCode) +
    (accountNumber == null ? 0 : accountNumber!.hashCode) +
    (bankName == null ? 0 : bankName!.hashCode) +
    (routingNumber == null ? 0 : routingNumber!.hashCode) +
    (isDefaultPaymentMethod == null ? 0 : isDefaultPaymentMethod!.hashCode) +
    (accountName == null ? 0 : accountName!.hashCode) +
    (paymentMethodNickname == null ? 0 : paymentMethodNickname!.hashCode) +
    (taxId == null ? 0 : taxId!.hashCode) +
    (returning == null ? 0 : returning!.hashCode);

  @override
  String toString() => 'PaymentTypesResponse[valid=$valid, message=$message, version=$version, serializeNulls=$serializeNulls, startTimeLog=$startTimeLog, errorCode=$errorCode, request=$request, creditCardOnFile=$creditCardOnFile, creditCardNumber=$creditCardNumber, creditCardExpirationMonth=$creditCardExpirationMonth, creditCardExpirationYear=$creditCardExpirationYear, pointsOnFile=$pointsOnFile, pointsAmount=$pointsAmount, account=$account, firstName=$firstName, lastName=$lastName, address=$address, city=$city, state=$state, postalCode=$postalCode, phone=$phone, provider=$provider, paymentMethodId=$paymentMethodId, validated=$validated, accountNumber=$accountNumber, bankName=$bankName, routingNumber=$routingNumber, isDefaultPaymentMethod=$isDefaultPaymentMethod, accountName=$accountName, paymentMethodNickname=$paymentMethodNickname, taxId=$taxId, returning=$returning]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.valid != null) {
      json[r'valid'] = this.valid;
    } else {
      json[r'valid'] = null;
    }
    if (this.message != null) {
      json[r'message'] = this.message;
    } else {
      json[r'message'] = null;
    }
    if (this.version != null) {
      json[r'version'] = this.version;
    } else {
      json[r'version'] = null;
    }
    if (this.serializeNulls != null) {
      json[r'serializeNulls'] = this.serializeNulls;
    } else {
      json[r'serializeNulls'] = null;
    }
    if (this.startTimeLog != null) {
      json[r'startTimeLog'] = this.startTimeLog;
    } else {
      json[r'startTimeLog'] = null;
    }
    if (this.errorCode != null) {
      json[r'errorCode'] = this.errorCode;
    } else {
      json[r'errorCode'] = null;
    }
      json[r'request'] = this.request;
    if (this.creditCardOnFile != null) {
      json[r'creditCardOnFile'] = this.creditCardOnFile;
    } else {
      json[r'creditCardOnFile'] = null;
    }
    if (this.creditCardNumber != null) {
      json[r'creditCardNumber'] = this.creditCardNumber;
    } else {
      json[r'creditCardNumber'] = null;
    }
    if (this.creditCardExpirationMonth != null) {
      json[r'creditCardExpirationMonth'] = this.creditCardExpirationMonth;
    } else {
      json[r'creditCardExpirationMonth'] = null;
    }
    if (this.creditCardExpirationYear != null) {
      json[r'creditCardExpirationYear'] = this.creditCardExpirationYear;
    } else {
      json[r'creditCardExpirationYear'] = null;
    }
    if (this.pointsOnFile != null) {
      json[r'pointsOnFile'] = this.pointsOnFile;
    } else {
      json[r'pointsOnFile'] = null;
    }
    if (this.pointsAmount != null) {
      json[r'pointsAmount'] = this.pointsAmount;
    } else {
      json[r'pointsAmount'] = null;
    }
    if (this.account != null) {
      json[r'account'] = this.account;
    } else {
      json[r'account'] = null;
    }
    if (this.firstName != null) {
      json[r'firstName'] = this.firstName;
    } else {
      json[r'firstName'] = null;
    }
    if (this.lastName != null) {
      json[r'lastName'] = this.lastName;
    } else {
      json[r'lastName'] = null;
    }
    if (this.address != null) {
      json[r'address'] = this.address;
    } else {
      json[r'address'] = null;
    }
    if (this.city != null) {
      json[r'city'] = this.city;
    } else {
      json[r'city'] = null;
    }
    if (this.state != null) {
      json[r'state'] = this.state;
    } else {
      json[r'state'] = null;
    }
    if (this.postalCode != null) {
      json[r'postalCode'] = this.postalCode;
    } else {
      json[r'postalCode'] = null;
    }
    if (this.phone != null) {
      json[r'phone'] = this.phone;
    } else {
      json[r'phone'] = null;
    }
    if (this.provider != null) {
      json[r'provider'] = this.provider;
    } else {
      json[r'provider'] = null;
    }
    if (this.paymentMethodId != null) {
      json[r'paymentMethodId'] = this.paymentMethodId;
    } else {
      json[r'paymentMethodId'] = null;
    }
    if (this.validated != null) {
      json[r'validated'] = this.validated;
    } else {
      json[r'validated'] = null;
    }
    if (this.accountNumber != null) {
      json[r'accountNumber'] = this.accountNumber;
    } else {
      json[r'accountNumber'] = null;
    }
    if (this.bankName != null) {
      json[r'bankName'] = this.bankName;
    } else {
      json[r'bankName'] = null;
    }
    if (this.routingNumber != null) {
      json[r'routingNumber'] = this.routingNumber;
    } else {
      json[r'routingNumber'] = null;
    }
    if (this.isDefaultPaymentMethod != null) {
      json[r'isDefaultPaymentMethod'] = this.isDefaultPaymentMethod;
    } else {
      json[r'isDefaultPaymentMethod'] = null;
    }
    if (this.accountName != null) {
      json[r'accountName'] = this.accountName;
    } else {
      json[r'accountName'] = null;
    }
    if (this.paymentMethodNickname != null) {
      json[r'paymentMethodNickname'] = this.paymentMethodNickname;
    } else {
      json[r'paymentMethodNickname'] = null;
    }
    if (this.taxId != null) {
      json[r'taxId'] = this.taxId;
    } else {
      json[r'taxId'] = null;
    }
    if (this.returning != null) {
      json[r'returning'] = this.returning;
    } else {
      json[r'returning'] = null;
    }
    return json;
  }

  /// Returns a new [PaymentTypesResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PaymentTypesResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "PaymentTypesResponse[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "PaymentTypesResponse[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return PaymentTypesResponse(
        valid: mapValueOfType<bool>(json, r'valid'),
        message: mapValueOfType<String>(json, r'message'),
        version: mapValueOfType<double>(json, r'version'),
        serializeNulls: mapValueOfType<bool>(json, r'serializeNulls'),
        startTimeLog: mapValueOfType<int>(json, r'startTimeLog'),
        errorCode: mapValueOfType<String>(json, r'errorCode'),
        request: NameStringValueResponse.listFromJson(json[r'request']),
        creditCardOnFile: mapValueOfType<bool>(json, r'creditCardOnFile'),
        creditCardNumber: mapValueOfType<String>(json, r'creditCardNumber'),
        creditCardExpirationMonth: mapValueOfType<String>(json, r'creditCardExpirationMonth'),
        creditCardExpirationYear: mapValueOfType<String>(json, r'creditCardExpirationYear'),
        pointsOnFile: mapValueOfType<bool>(json, r'pointsOnFile'),
        pointsAmount: mapValueOfType<double>(json, r'pointsAmount'),
        account: AccountShortResponse.fromJson(json[r'account']),
        firstName: mapValueOfType<String>(json, r'firstName'),
        lastName: mapValueOfType<String>(json, r'lastName'),
        address: mapValueOfType<String>(json, r'address'),
        city: mapValueOfType<String>(json, r'city'),
        state: mapValueOfType<String>(json, r'state'),
        postalCode: mapValueOfType<String>(json, r'postalCode'),
        phone: mapValueOfType<String>(json, r'phone'),
        provider: mapValueOfType<String>(json, r'provider'),
        paymentMethodId: mapValueOfType<int>(json, r'paymentMethodId'),
        validated: mapValueOfType<bool>(json, r'validated'),
        accountNumber: mapValueOfType<String>(json, r'accountNumber'),
        bankName: mapValueOfType<String>(json, r'bankName'),
        routingNumber: mapValueOfType<String>(json, r'routingNumber'),
        isDefaultPaymentMethod: mapValueOfType<bool>(json, r'isDefaultPaymentMethod'),
        accountName: mapValueOfType<String>(json, r'accountName'),
        paymentMethodNickname: mapValueOfType<String>(json, r'paymentMethodNickname'),
        taxId: mapValueOfType<String>(json, r'taxId'),
        returning: mapValueOfType<String>(json, r'returning'),
      );
    }
    return null;
  }

  static List<PaymentTypesResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PaymentTypesResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PaymentTypesResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PaymentTypesResponse> mapFromJson(dynamic json) {
    final map = <String, PaymentTypesResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PaymentTypesResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PaymentTypesResponse-objects as value to a dart map
  static Map<String, List<PaymentTypesResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<PaymentTypesResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PaymentTypesResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

