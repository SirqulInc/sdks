//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class PaymentRequest {
  /// Returns a new [PaymentRequest] instance.
  PaymentRequest({
    this.appKey,
    this.clientPaymentId,
    this.minAgeYears,
    this.invoice,
    this.biometrics,
    this.orderItems = const [],
    this.acceptedBilling,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? appKey;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? clientPaymentId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? minAgeYears;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Invoice? invoice;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  BiometricRequest? biometrics;

  List<OrderItemRequest> orderItems;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? acceptedBilling;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PaymentRequest &&
    other.appKey == appKey &&
    other.clientPaymentId == clientPaymentId &&
    other.minAgeYears == minAgeYears &&
    other.invoice == invoice &&
    other.biometrics == biometrics &&
    _deepEquality.equals(other.orderItems, orderItems) &&
    other.acceptedBilling == acceptedBilling;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (appKey == null ? 0 : appKey!.hashCode) +
    (clientPaymentId == null ? 0 : clientPaymentId!.hashCode) +
    (minAgeYears == null ? 0 : minAgeYears!.hashCode) +
    (invoice == null ? 0 : invoice!.hashCode) +
    (biometrics == null ? 0 : biometrics!.hashCode) +
    (orderItems.hashCode) +
    (acceptedBilling == null ? 0 : acceptedBilling!.hashCode);

  @override
  String toString() => 'PaymentRequest[appKey=$appKey, clientPaymentId=$clientPaymentId, minAgeYears=$minAgeYears, invoice=$invoice, biometrics=$biometrics, orderItems=$orderItems, acceptedBilling=$acceptedBilling]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.appKey != null) {
      json[r'appKey'] = this.appKey;
    } else {
      json[r'appKey'] = null;
    }
    if (this.clientPaymentId != null) {
      json[r'clientPaymentId'] = this.clientPaymentId;
    } else {
      json[r'clientPaymentId'] = null;
    }
    if (this.minAgeYears != null) {
      json[r'minAgeYears'] = this.minAgeYears;
    } else {
      json[r'minAgeYears'] = null;
    }
    if (this.invoice != null) {
      json[r'invoice'] = this.invoice;
    } else {
      json[r'invoice'] = null;
    }
    if (this.biometrics != null) {
      json[r'biometrics'] = this.biometrics;
    } else {
      json[r'biometrics'] = null;
    }
      json[r'orderItems'] = this.orderItems;
    if (this.acceptedBilling != null) {
      json[r'acceptedBilling'] = this.acceptedBilling;
    } else {
      json[r'acceptedBilling'] = null;
    }
    return json;
  }

  /// Returns a new [PaymentRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PaymentRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "PaymentRequest[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "PaymentRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return PaymentRequest(
        appKey: mapValueOfType<String>(json, r'appKey'),
        clientPaymentId: mapValueOfType<String>(json, r'clientPaymentId'),
        minAgeYears: mapValueOfType<int>(json, r'minAgeYears'),
        invoice: Invoice.fromJson(json[r'invoice']),
        biometrics: BiometricRequest.fromJson(json[r'biometrics']),
        orderItems: OrderItemRequest.listFromJson(json[r'orderItems']),
        acceptedBilling: mapValueOfType<bool>(json, r'acceptedBilling'),
      );
    }
    return null;
  }

  static List<PaymentRequest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PaymentRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PaymentRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PaymentRequest> mapFromJson(dynamic json) {
    final map = <String, PaymentRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PaymentRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PaymentRequest-objects as value to a dart map
  static Map<String, List<PaymentRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<PaymentRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PaymentRequest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

