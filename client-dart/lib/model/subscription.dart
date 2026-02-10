//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Subscription {
  /// Returns a new [Subscription] instance.
  Subscription({
    this.id,
    this.active,
    this.valid,
    this.subscriptionPlan,
    this.remoteSubscriptionId,
    this.promoCode,
    this.failed,
    this.message,
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
  SubscriptionPlan? subscriptionPlan;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? remoteSubscriptionId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? promoCode;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? failed;

  SubscriptionMessageEnum? message;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Subscription &&
    other.id == id &&
    other.active == active &&
    other.valid == valid &&
    other.subscriptionPlan == subscriptionPlan &&
    other.remoteSubscriptionId == remoteSubscriptionId &&
    other.promoCode == promoCode &&
    other.failed == failed &&
    other.message == message;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (active == null ? 0 : active!.hashCode) +
    (valid == null ? 0 : valid!.hashCode) +
    (subscriptionPlan == null ? 0 : subscriptionPlan!.hashCode) +
    (remoteSubscriptionId == null ? 0 : remoteSubscriptionId!.hashCode) +
    (promoCode == null ? 0 : promoCode!.hashCode) +
    (failed == null ? 0 : failed!.hashCode) +
    (message == null ? 0 : message!.hashCode);

  @override
  String toString() => 'Subscription[id=$id, active=$active, valid=$valid, subscriptionPlan=$subscriptionPlan, remoteSubscriptionId=$remoteSubscriptionId, promoCode=$promoCode, failed=$failed, message=$message]';

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
    if (this.subscriptionPlan != null) {
      json[r'subscriptionPlan'] = this.subscriptionPlan;
    } else {
      json[r'subscriptionPlan'] = null;
    }
    if (this.remoteSubscriptionId != null) {
      json[r'remoteSubscriptionId'] = this.remoteSubscriptionId;
    } else {
      json[r'remoteSubscriptionId'] = null;
    }
    if (this.promoCode != null) {
      json[r'promoCode'] = this.promoCode;
    } else {
      json[r'promoCode'] = null;
    }
    if (this.failed != null) {
      json[r'failed'] = this.failed;
    } else {
      json[r'failed'] = null;
    }
    if (this.message != null) {
      json[r'message'] = this.message;
    } else {
      json[r'message'] = null;
    }
    return json;
  }

  /// Returns a new [Subscription] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Subscription? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Subscription[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Subscription[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Subscription(
        id: mapValueOfType<int>(json, r'id'),
        active: mapValueOfType<bool>(json, r'active'),
        valid: mapValueOfType<bool>(json, r'valid'),
        subscriptionPlan: SubscriptionPlan.fromJson(json[r'subscriptionPlan']),
        remoteSubscriptionId: mapValueOfType<String>(json, r'remoteSubscriptionId'),
        promoCode: mapValueOfType<String>(json, r'promoCode'),
        failed: mapValueOfType<bool>(json, r'failed'),
        message: SubscriptionMessageEnum.fromJson(json[r'message']),
      );
    }
    return null;
  }

  static List<Subscription> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Subscription>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Subscription.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Subscription> mapFromJson(dynamic json) {
    final map = <String, Subscription>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Subscription.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Subscription-objects as value to a dart map
  static Map<String, List<Subscription>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Subscription>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Subscription.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}


class SubscriptionMessageEnum {
  /// Instantiate a new enum with the provided [value].
  const SubscriptionMessageEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const n400 = SubscriptionMessageEnum._(r'_400');
  static const n403 = SubscriptionMessageEnum._(r'_403');
  static const n500 = SubscriptionMessageEnum._(r'_500');
  static const n600 = SubscriptionMessageEnum._(r'_600');
  static const n1000 = SubscriptionMessageEnum._(r'_1000');
  static const n1001 = SubscriptionMessageEnum._(r'_1001');
  static const n1002 = SubscriptionMessageEnum._(r'_1002');
  static const n1003 = SubscriptionMessageEnum._(r'_1003');
  static const n1004 = SubscriptionMessageEnum._(r'_1004');
  static const n1005 = SubscriptionMessageEnum._(r'_1005');
  static const n1006 = SubscriptionMessageEnum._(r'_1006');
  static const n1007 = SubscriptionMessageEnum._(r'_1007');
  static const n1008 = SubscriptionMessageEnum._(r'_1008');
  static const n1009 = SubscriptionMessageEnum._(r'_1009');
  static const n1010 = SubscriptionMessageEnum._(r'_1010');
  static const n1011 = SubscriptionMessageEnum._(r'_1011');
  static const n1012 = SubscriptionMessageEnum._(r'_1012');
  static const n1013 = SubscriptionMessageEnum._(r'_1013');
  static const n1014 = SubscriptionMessageEnum._(r'_1014');
  static const n1015 = SubscriptionMessageEnum._(r'_1015');
  static const n1016 = SubscriptionMessageEnum._(r'_1016');
  static const n1017 = SubscriptionMessageEnum._(r'_1017');
  static const n1018 = SubscriptionMessageEnum._(r'_1018');
  static const n1019 = SubscriptionMessageEnum._(r'_1019');
  static const n1020 = SubscriptionMessageEnum._(r'_1020');
  static const n1021 = SubscriptionMessageEnum._(r'_1021');
  static const n1022 = SubscriptionMessageEnum._(r'_1022');
  static const n1023 = SubscriptionMessageEnum._(r'_1023');
  static const n1024 = SubscriptionMessageEnum._(r'_1024');
  static const n1025 = SubscriptionMessageEnum._(r'_1025');
  static const n1026 = SubscriptionMessageEnum._(r'_1026');
  static const n1027 = SubscriptionMessageEnum._(r'_1027');
  static const n1028 = SubscriptionMessageEnum._(r'_1028');
  static const n1029 = SubscriptionMessageEnum._(r'_1029');
  static const n1030 = SubscriptionMessageEnum._(r'_1030');
  static const n1031 = SubscriptionMessageEnum._(r'_1031');
  static const n1032 = SubscriptionMessageEnum._(r'_1032');
  static const n1033 = SubscriptionMessageEnum._(r'_1033');
  static const n1034 = SubscriptionMessageEnum._(r'_1034');
  static const n1035 = SubscriptionMessageEnum._(r'_1035');
  static const n1036 = SubscriptionMessageEnum._(r'_1036');
  static const n1037 = SubscriptionMessageEnum._(r'_1037');
  static const n1038 = SubscriptionMessageEnum._(r'_1038');
  static const n1100 = SubscriptionMessageEnum._(r'_1100');
  static const n1101 = SubscriptionMessageEnum._(r'_1101');
  static const n1102 = SubscriptionMessageEnum._(r'_1102');
  static const n1103 = SubscriptionMessageEnum._(r'_1103');
  static const n1104 = SubscriptionMessageEnum._(r'_1104');
  static const n1105 = SubscriptionMessageEnum._(r'_1105');
  static const n1106 = SubscriptionMessageEnum._(r'_1106');
  static const n1107 = SubscriptionMessageEnum._(r'_1107');
  static const n1108 = SubscriptionMessageEnum._(r'_1108');
  static const n1109 = SubscriptionMessageEnum._(r'_1109');
  static const n1110 = SubscriptionMessageEnum._(r'_1110');
  static const n2000 = SubscriptionMessageEnum._(r'_2000');
  static const n2001 = SubscriptionMessageEnum._(r'_2001');
  static const n2002 = SubscriptionMessageEnum._(r'_2002');
  static const n2003 = SubscriptionMessageEnum._(r'_2003');
  static const n2004 = SubscriptionMessageEnum._(r'_2004');
  static const n2005 = SubscriptionMessageEnum._(r'_2005');
  static const n2006 = SubscriptionMessageEnum._(r'_2006');
  static const n2007 = SubscriptionMessageEnum._(r'_2007');
  static const n2008 = SubscriptionMessageEnum._(r'_2008');
  static const n2009 = SubscriptionMessageEnum._(r'_2009');
  static const n2010 = SubscriptionMessageEnum._(r'_2010');
  static const n2011 = SubscriptionMessageEnum._(r'_2011');
  static const n2012 = SubscriptionMessageEnum._(r'_2012');
  static const n2013 = SubscriptionMessageEnum._(r'_2013');
  static const n2100 = SubscriptionMessageEnum._(r'_2100');
  static const n2101 = SubscriptionMessageEnum._(r'_2101');
  static const n2102 = SubscriptionMessageEnum._(r'_2102');
  static const n2103 = SubscriptionMessageEnum._(r'_2103');
  static const n2200 = SubscriptionMessageEnum._(r'_2200');
  static const n2201 = SubscriptionMessageEnum._(r'_2201');
  static const n2202 = SubscriptionMessageEnum._(r'_2202');
  static const n2203 = SubscriptionMessageEnum._(r'_2203');
  static const n2204 = SubscriptionMessageEnum._(r'_2204');
  static const n2205 = SubscriptionMessageEnum._(r'_2205');
  static const n2206 = SubscriptionMessageEnum._(r'_2206');
  static const n2207 = SubscriptionMessageEnum._(r'_2207');
  static const n2208 = SubscriptionMessageEnum._(r'_2208');
  static const n2209 = SubscriptionMessageEnum._(r'_2209');
  static const n2210 = SubscriptionMessageEnum._(r'_2210');
  static const n2211 = SubscriptionMessageEnum._(r'_2211');
  static const n2212 = SubscriptionMessageEnum._(r'_2212');
  static const n2300 = SubscriptionMessageEnum._(r'_2300');
  static const n2301 = SubscriptionMessageEnum._(r'_2301');
  static const n2302 = SubscriptionMessageEnum._(r'_2302');
  static const n2303 = SubscriptionMessageEnum._(r'_2303');
  static const n2400 = SubscriptionMessageEnum._(r'_2400');
  static const n2401 = SubscriptionMessageEnum._(r'_2401');
  static const n2402 = SubscriptionMessageEnum._(r'_2402');
  static const n2500 = SubscriptionMessageEnum._(r'_2500');
  static const n2501 = SubscriptionMessageEnum._(r'_2501');
  static const n2502 = SubscriptionMessageEnum._(r'_2502');
  static const n2503 = SubscriptionMessageEnum._(r'_2503');
  static const n2504 = SubscriptionMessageEnum._(r'_2504');
  static const n2505 = SubscriptionMessageEnum._(r'_2505');
  static const n2506 = SubscriptionMessageEnum._(r'_2506');
  static const n2507 = SubscriptionMessageEnum._(r'_2507');
  static const n2508 = SubscriptionMessageEnum._(r'_2508');
  static const n2509 = SubscriptionMessageEnum._(r'_2509');
  static const n2510 = SubscriptionMessageEnum._(r'_2510');
  static const n2511 = SubscriptionMessageEnum._(r'_2511');
  static const n2512 = SubscriptionMessageEnum._(r'_2512');
  static const n2513 = SubscriptionMessageEnum._(r'_2513');
  static const n2514 = SubscriptionMessageEnum._(r'_2514');
  static const n2515 = SubscriptionMessageEnum._(r'_2515');
  static const n2600 = SubscriptionMessageEnum._(r'_2600');
  static const n2601 = SubscriptionMessageEnum._(r'_2601');
  static const n2602 = SubscriptionMessageEnum._(r'_2602');
  static const n2603 = SubscriptionMessageEnum._(r'_2603');
  static const n2604 = SubscriptionMessageEnum._(r'_2604');
  static const n2700 = SubscriptionMessageEnum._(r'_2700');
  static const n2701 = SubscriptionMessageEnum._(r'_2701');
  static const n2702 = SubscriptionMessageEnum._(r'_2702');
  static const n2703 = SubscriptionMessageEnum._(r'_2703');
  static const n2704 = SubscriptionMessageEnum._(r'_2704');
  static const n2705 = SubscriptionMessageEnum._(r'_2705');
  static const n2800 = SubscriptionMessageEnum._(r'_2800');
  static const n2801 = SubscriptionMessageEnum._(r'_2801');
  static const n2900 = SubscriptionMessageEnum._(r'_2900');
  static const n2901 = SubscriptionMessageEnum._(r'_2901');
  static const n2902 = SubscriptionMessageEnum._(r'_2902');
  static const n2903 = SubscriptionMessageEnum._(r'_2903');
  static const n2904 = SubscriptionMessageEnum._(r'_2904');
  static const n2905 = SubscriptionMessageEnum._(r'_2905');
  static const n2906 = SubscriptionMessageEnum._(r'_2906');
  static const n3000 = SubscriptionMessageEnum._(r'_3000');
  static const n3001 = SubscriptionMessageEnum._(r'_3001');
  static const n3002 = SubscriptionMessageEnum._(r'_3002');
  static const n3100 = SubscriptionMessageEnum._(r'_3100');
  static const n3101 = SubscriptionMessageEnum._(r'_3101');
  static const n3102 = SubscriptionMessageEnum._(r'_3102');
  static const n3103 = SubscriptionMessageEnum._(r'_3103');
  static const n3104 = SubscriptionMessageEnum._(r'_3104');
  static const n3200 = SubscriptionMessageEnum._(r'_3200');
  static const n3201 = SubscriptionMessageEnum._(r'_3201');
  static const n3300 = SubscriptionMessageEnum._(r'_3300');
  static const n3301 = SubscriptionMessageEnum._(r'_3301');
  static const n3302 = SubscriptionMessageEnum._(r'_3302');
  static const n3303 = SubscriptionMessageEnum._(r'_3303');
  static const n3304 = SubscriptionMessageEnum._(r'_3304');
  static const n3305 = SubscriptionMessageEnum._(r'_3305');
  static const n3306 = SubscriptionMessageEnum._(r'_3306');
  static const n3307 = SubscriptionMessageEnum._(r'_3307');
  static const n3308 = SubscriptionMessageEnum._(r'_3308');
  static const n3309 = SubscriptionMessageEnum._(r'_3309');
  static const n3310 = SubscriptionMessageEnum._(r'_3310');
  static const n3311 = SubscriptionMessageEnum._(r'_3311');
  static const n3312 = SubscriptionMessageEnum._(r'_3312');
  static const n3313 = SubscriptionMessageEnum._(r'_3313');
  static const n3314 = SubscriptionMessageEnum._(r'_3314');
  static const n3315 = SubscriptionMessageEnum._(r'_3315');
  static const n3316 = SubscriptionMessageEnum._(r'_3316');
  static const n3400 = SubscriptionMessageEnum._(r'_3400');
  static const n3401 = SubscriptionMessageEnum._(r'_3401');
  static const n3500 = SubscriptionMessageEnum._(r'_3500');
  static const n3501 = SubscriptionMessageEnum._(r'_3501');
  static const n3502 = SubscriptionMessageEnum._(r'_3502');
  static const n3503 = SubscriptionMessageEnum._(r'_3503');
  static const n3504 = SubscriptionMessageEnum._(r'_3504');
  static const n3505 = SubscriptionMessageEnum._(r'_3505');
  static const n3506 = SubscriptionMessageEnum._(r'_3506');
  static const n3507 = SubscriptionMessageEnum._(r'_3507');
  static const n3508 = SubscriptionMessageEnum._(r'_3508');
  static const n3600 = SubscriptionMessageEnum._(r'_3600');
  static const n3601 = SubscriptionMessageEnum._(r'_3601');
  static const n3602 = SubscriptionMessageEnum._(r'_3602');
  static const n3603 = SubscriptionMessageEnum._(r'_3603');
  static const n3700 = SubscriptionMessageEnum._(r'_3700');
  static const n3701 = SubscriptionMessageEnum._(r'_3701');
  static const n3702 = SubscriptionMessageEnum._(r'_3702');
  static const n3703 = SubscriptionMessageEnum._(r'_3703');
  static const n3800 = SubscriptionMessageEnum._(r'_3800');
  static const n3801 = SubscriptionMessageEnum._(r'_3801');
  static const n3802 = SubscriptionMessageEnum._(r'_3802');
  static const n3803 = SubscriptionMessageEnum._(r'_3803');
  static const n3804 = SubscriptionMessageEnum._(r'_3804');
  static const n3805 = SubscriptionMessageEnum._(r'_3805');
  static const n3806 = SubscriptionMessageEnum._(r'_3806');
  static const n3807 = SubscriptionMessageEnum._(r'_3807');
  static const n3900 = SubscriptionMessageEnum._(r'_3900');
  static const n3901 = SubscriptionMessageEnum._(r'_3901');
  static const n3902 = SubscriptionMessageEnum._(r'_3902');
  static const n3903 = SubscriptionMessageEnum._(r'_3903');
  static const n3904 = SubscriptionMessageEnum._(r'_3904');
  static const n3905 = SubscriptionMessageEnum._(r'_3905');
  static const n4000 = SubscriptionMessageEnum._(r'_4000');
  static const n4001 = SubscriptionMessageEnum._(r'_4001');
  static const n4002 = SubscriptionMessageEnum._(r'_4002');
  static const n4100 = SubscriptionMessageEnum._(r'_4100');
  static const n4101 = SubscriptionMessageEnum._(r'_4101');
  static const n4102 = SubscriptionMessageEnum._(r'_4102');
  static const n4103 = SubscriptionMessageEnum._(r'_4103');
  static const n4200 = SubscriptionMessageEnum._(r'_4200');
  static const n4201 = SubscriptionMessageEnum._(r'_4201');
  static const n4202 = SubscriptionMessageEnum._(r'_4202');
  static const n4203 = SubscriptionMessageEnum._(r'_4203');
  static const n4204 = SubscriptionMessageEnum._(r'_4204');
  static const n4205 = SubscriptionMessageEnum._(r'_4205');
  static const n4300 = SubscriptionMessageEnum._(r'_4300');
  static const n4301 = SubscriptionMessageEnum._(r'_4301');
  static const n4302 = SubscriptionMessageEnum._(r'_4302');
  static const n4303 = SubscriptionMessageEnum._(r'_4303');
  static const n4304 = SubscriptionMessageEnum._(r'_4304');
  static const n4400 = SubscriptionMessageEnum._(r'_4400');
  static const n4401 = SubscriptionMessageEnum._(r'_4401');
  static const n4500 = SubscriptionMessageEnum._(r'_4500');
  static const n4501 = SubscriptionMessageEnum._(r'_4501');
  static const n4502 = SubscriptionMessageEnum._(r'_4502');
  static const n4503 = SubscriptionMessageEnum._(r'_4503');
  static const n4504 = SubscriptionMessageEnum._(r'_4504');
  static const n4505 = SubscriptionMessageEnum._(r'_4505');
  static const n4600 = SubscriptionMessageEnum._(r'_4600');
  static const n4700 = SubscriptionMessageEnum._(r'_4700');
  static const n4701 = SubscriptionMessageEnum._(r'_4701');
  static const n4702 = SubscriptionMessageEnum._(r'_4702');
  static const n4800 = SubscriptionMessageEnum._(r'_4800');
  static const n4801 = SubscriptionMessageEnum._(r'_4801');
  static const n4900 = SubscriptionMessageEnum._(r'_4900');
  static const n4901 = SubscriptionMessageEnum._(r'_4901');
  static const n4902 = SubscriptionMessageEnum._(r'_4902');
  static const n4903 = SubscriptionMessageEnum._(r'_4903');
  static const n4904 = SubscriptionMessageEnum._(r'_4904');
  static const n4905 = SubscriptionMessageEnum._(r'_4905');
  static const n4906 = SubscriptionMessageEnum._(r'_4906');
  static const n5000 = SubscriptionMessageEnum._(r'_5000');
  static const n5001 = SubscriptionMessageEnum._(r'_5001');
  static const n5002 = SubscriptionMessageEnum._(r'_5002');
  static const n5003 = SubscriptionMessageEnum._(r'_5003');
  static const n5100 = SubscriptionMessageEnum._(r'_5100');
  static const n5101 = SubscriptionMessageEnum._(r'_5101');
  static const n5102 = SubscriptionMessageEnum._(r'_5102');
  static const n5103 = SubscriptionMessageEnum._(r'_5103');
  static const n5104 = SubscriptionMessageEnum._(r'_5104');
  static const n5200 = SubscriptionMessageEnum._(r'_5200');
  static const n5300 = SubscriptionMessageEnum._(r'_5300');
  static const n5301 = SubscriptionMessageEnum._(r'_5301');
  static const n5302 = SubscriptionMessageEnum._(r'_5302');
  static const n5303 = SubscriptionMessageEnum._(r'_5303');
  static const n5400 = SubscriptionMessageEnum._(r'_5400');
  static const n5500 = SubscriptionMessageEnum._(r'_5500');
  static const n5501 = SubscriptionMessageEnum._(r'_5501');
  static const n5600 = SubscriptionMessageEnum._(r'_5600');
  static const n5601 = SubscriptionMessageEnum._(r'_5601');
  static const n5602 = SubscriptionMessageEnum._(r'_5602');
  static const n5603 = SubscriptionMessageEnum._(r'_5603');
  static const n5604 = SubscriptionMessageEnum._(r'_5604');
  static const n5606 = SubscriptionMessageEnum._(r'_5606');
  static const n5607 = SubscriptionMessageEnum._(r'_5607');
  static const n5608 = SubscriptionMessageEnum._(r'_5608');
  static const n5609 = SubscriptionMessageEnum._(r'_5609');
  static const n5700 = SubscriptionMessageEnum._(r'_5700');
  static const n5701 = SubscriptionMessageEnum._(r'_5701');
  static const n5702 = SubscriptionMessageEnum._(r'_5702');
  static const n5703 = SubscriptionMessageEnum._(r'_5703');
  static const n5704 = SubscriptionMessageEnum._(r'_5704');
  static const n5705 = SubscriptionMessageEnum._(r'_5705');
  static const n5800 = SubscriptionMessageEnum._(r'_5800');
  static const n5801 = SubscriptionMessageEnum._(r'_5801');
  static const n5802 = SubscriptionMessageEnum._(r'_5802');
  static const n5803 = SubscriptionMessageEnum._(r'_5803');
  static const n5804 = SubscriptionMessageEnum._(r'_5804');
  static const n5805 = SubscriptionMessageEnum._(r'_5805');
  static const n5806 = SubscriptionMessageEnum._(r'_5806');
  static const n5807 = SubscriptionMessageEnum._(r'_5807');
  static const n5900 = SubscriptionMessageEnum._(r'_5900');
  static const n5901 = SubscriptionMessageEnum._(r'_5901');
  static const n5902 = SubscriptionMessageEnum._(r'_5902');
  static const n5903 = SubscriptionMessageEnum._(r'_5903');
  static const n5904 = SubscriptionMessageEnum._(r'_5904');
  static const n5905 = SubscriptionMessageEnum._(r'_5905');
  static const n5906 = SubscriptionMessageEnum._(r'_5906');
  static const n5907 = SubscriptionMessageEnum._(r'_5907');
  static const n5908 = SubscriptionMessageEnum._(r'_5908');
  static const n5909 = SubscriptionMessageEnum._(r'_5909');
  static const n5910 = SubscriptionMessageEnum._(r'_5910');
  static const n5911 = SubscriptionMessageEnum._(r'_5911');
  static const n5912 = SubscriptionMessageEnum._(r'_5912');
  static const n5913 = SubscriptionMessageEnum._(r'_5913');
  static const n5914 = SubscriptionMessageEnum._(r'_5914');
  static const n5915 = SubscriptionMessageEnum._(r'_5915');
  static const n5916 = SubscriptionMessageEnum._(r'_5916');
  static const n6000 = SubscriptionMessageEnum._(r'_6000');
  static const n6001 = SubscriptionMessageEnum._(r'_6001');
  static const n6100 = SubscriptionMessageEnum._(r'_6100');
  static const n6101 = SubscriptionMessageEnum._(r'_6101');
  static const n6102 = SubscriptionMessageEnum._(r'_6102');
  static const n6103 = SubscriptionMessageEnum._(r'_6103');
  static const n6200 = SubscriptionMessageEnum._(r'_6200');
  static const n6201 = SubscriptionMessageEnum._(r'_6201');
  static const n6202 = SubscriptionMessageEnum._(r'_6202');
  static const n6300 = SubscriptionMessageEnum._(r'_6300');
  static const n6301 = SubscriptionMessageEnum._(r'_6301');
  static const n6302 = SubscriptionMessageEnum._(r'_6302');
  static const n6303 = SubscriptionMessageEnum._(r'_6303');
  static const n6304 = SubscriptionMessageEnum._(r'_6304');
  static const n6305 = SubscriptionMessageEnum._(r'_6305');
  static const n6306 = SubscriptionMessageEnum._(r'_6306');
  static const n6307 = SubscriptionMessageEnum._(r'_6307');
  static const n6308 = SubscriptionMessageEnum._(r'_6308');
  static const n6309 = SubscriptionMessageEnum._(r'_6309');
  static const n6310 = SubscriptionMessageEnum._(r'_6310');
  static const n6311 = SubscriptionMessageEnum._(r'_6311');
  static const n6312 = SubscriptionMessageEnum._(r'_6312');
  static const n6400 = SubscriptionMessageEnum._(r'_6400');
  static const n6401 = SubscriptionMessageEnum._(r'_6401');
  static const n6402 = SubscriptionMessageEnum._(r'_6402');
  static const n6403 = SubscriptionMessageEnum._(r'_6403');
  static const n6404 = SubscriptionMessageEnum._(r'_6404');
  static const n6500 = SubscriptionMessageEnum._(r'_6500');
  static const n6501 = SubscriptionMessageEnum._(r'_6501');
  static const n6502 = SubscriptionMessageEnum._(r'_6502');
  static const n6600 = SubscriptionMessageEnum._(r'_6600');
  static const n6601 = SubscriptionMessageEnum._(r'_6601');
  static const n6602 = SubscriptionMessageEnum._(r'_6602');
  static const n6603 = SubscriptionMessageEnum._(r'_6603');
  static const n6700 = SubscriptionMessageEnum._(r'_6700');
  static const n6701 = SubscriptionMessageEnum._(r'_6701');
  static const n6702 = SubscriptionMessageEnum._(r'_6702');
  static const n6703 = SubscriptionMessageEnum._(r'_6703');
  static const n6704 = SubscriptionMessageEnum._(r'_6704');
  static const n6705 = SubscriptionMessageEnum._(r'_6705');
  static const n6706 = SubscriptionMessageEnum._(r'_6706');
  static const n6707 = SubscriptionMessageEnum._(r'_6707');
  static const n6708 = SubscriptionMessageEnum._(r'_6708');
  static const n6709 = SubscriptionMessageEnum._(r'_6709');
  static const n6800 = SubscriptionMessageEnum._(r'_6800');
  static const n6801 = SubscriptionMessageEnum._(r'_6801');
  static const n6802 = SubscriptionMessageEnum._(r'_6802');
  static const n6803 = SubscriptionMessageEnum._(r'_6803');
  static const n6900 = SubscriptionMessageEnum._(r'_6900');
  static const n6901 = SubscriptionMessageEnum._(r'_6901');
  static const n6902 = SubscriptionMessageEnum._(r'_6902');
  static const n6903 = SubscriptionMessageEnum._(r'_6903');
  static const n7000 = SubscriptionMessageEnum._(r'_7000');
  static const n7100 = SubscriptionMessageEnum._(r'_7100');
  static const n7101 = SubscriptionMessageEnum._(r'_7101');
  static const n7102 = SubscriptionMessageEnum._(r'_7102');
  static const n7200 = SubscriptionMessageEnum._(r'_7200');
  static const n7201 = SubscriptionMessageEnum._(r'_7201');
  static const n7300 = SubscriptionMessageEnum._(r'_7300');
  static const n7301 = SubscriptionMessageEnum._(r'_7301');
  static const n7302 = SubscriptionMessageEnum._(r'_7302');
  static const n7303 = SubscriptionMessageEnum._(r'_7303');
  static const n7400 = SubscriptionMessageEnum._(r'_7400');
  static const n7401 = SubscriptionMessageEnum._(r'_7401');
  static const n7402 = SubscriptionMessageEnum._(r'_7402');
  static const n7403 = SubscriptionMessageEnum._(r'_7403');
  static const n7404 = SubscriptionMessageEnum._(r'_7404');
  static const n7405 = SubscriptionMessageEnum._(r'_7405');
  static const n7500 = SubscriptionMessageEnum._(r'_7500');
  static const n7501 = SubscriptionMessageEnum._(r'_7501');
  static const n7600 = SubscriptionMessageEnum._(r'_7600');
  static const n7601 = SubscriptionMessageEnum._(r'_7601');
  static const n7602 = SubscriptionMessageEnum._(r'_7602');
  static const n7603 = SubscriptionMessageEnum._(r'_7603');
  static const n7604 = SubscriptionMessageEnum._(r'_7604');
  static const n7605 = SubscriptionMessageEnum._(r'_7605');
  static const n7606 = SubscriptionMessageEnum._(r'_7606');
  static const n7700 = SubscriptionMessageEnum._(r'_7700');
  static const n7701 = SubscriptionMessageEnum._(r'_7701');
  static const n7702 = SubscriptionMessageEnum._(r'_7702');
  static const n7703 = SubscriptionMessageEnum._(r'_7703');
  static const n7704 = SubscriptionMessageEnum._(r'_7704');
  static const n7705 = SubscriptionMessageEnum._(r'_7705');
  static const n7706 = SubscriptionMessageEnum._(r'_7706');
  static const n7707 = SubscriptionMessageEnum._(r'_7707');
  static const n7800 = SubscriptionMessageEnum._(r'_7800');
  static const n7801 = SubscriptionMessageEnum._(r'_7801');
  static const n7802 = SubscriptionMessageEnum._(r'_7802');
  static const n7803 = SubscriptionMessageEnum._(r'_7803');
  static const n7804 = SubscriptionMessageEnum._(r'_7804');
  static const n7805 = SubscriptionMessageEnum._(r'_7805');
  static const n7806 = SubscriptionMessageEnum._(r'_7806');
  static const n7807 = SubscriptionMessageEnum._(r'_7807');
  static const n7808 = SubscriptionMessageEnum._(r'_7808');
  static const n7809 = SubscriptionMessageEnum._(r'_7809');
  static const n7810 = SubscriptionMessageEnum._(r'_7810');
  static const n7811 = SubscriptionMessageEnum._(r'_7811');
  static const n7812 = SubscriptionMessageEnum._(r'_7812');
  static const n7813 = SubscriptionMessageEnum._(r'_7813');
  static const n7814 = SubscriptionMessageEnum._(r'_7814');
  static const n7815 = SubscriptionMessageEnum._(r'_7815');
  static const n7817 = SubscriptionMessageEnum._(r'_7817');
  static const n7818 = SubscriptionMessageEnum._(r'_7818');
  static const n7819 = SubscriptionMessageEnum._(r'_7819');
  static const n7900 = SubscriptionMessageEnum._(r'_7900');
  static const n7901 = SubscriptionMessageEnum._(r'_7901');
  static const n7902 = SubscriptionMessageEnum._(r'_7902');
  static const n7903 = SubscriptionMessageEnum._(r'_7903');
  static const n7904 = SubscriptionMessageEnum._(r'_7904');
  static const n7905 = SubscriptionMessageEnum._(r'_7905');
  static const n7906 = SubscriptionMessageEnum._(r'_7906');
  static const n8000 = SubscriptionMessageEnum._(r'_8000');
  static const n8001 = SubscriptionMessageEnum._(r'_8001');
  static const n8100 = SubscriptionMessageEnum._(r'_8100');
  static const n8101 = SubscriptionMessageEnum._(r'_8101');
  static const n8102 = SubscriptionMessageEnum._(r'_8102');
  static const n8103 = SubscriptionMessageEnum._(r'_8103');
  static const n8104 = SubscriptionMessageEnum._(r'_8104');
  static const n8105 = SubscriptionMessageEnum._(r'_8105');
  static const n8107 = SubscriptionMessageEnum._(r'_8107');
  static const n8108 = SubscriptionMessageEnum._(r'_8108');
  static const n8200 = SubscriptionMessageEnum._(r'_8200');
  static const n8201 = SubscriptionMessageEnum._(r'_8201');
  static const n10000 = SubscriptionMessageEnum._(r'_10000');
  static const n10001 = SubscriptionMessageEnum._(r'_10001');
  static const n10002 = SubscriptionMessageEnum._(r'_10002');
  static const n10003 = SubscriptionMessageEnum._(r'_10003');
  static const n10004 = SubscriptionMessageEnum._(r'_10004');
  static const n10005 = SubscriptionMessageEnum._(r'_10005');
  static const n10006 = SubscriptionMessageEnum._(r'_10006');
  static const n10020 = SubscriptionMessageEnum._(r'_10020');
  static const n10021 = SubscriptionMessageEnum._(r'_10021');
  static const n10022 = SubscriptionMessageEnum._(r'_10022');
  static const n10040 = SubscriptionMessageEnum._(r'_10040');
  static const n10041 = SubscriptionMessageEnum._(r'_10041');
  static const n10042 = SubscriptionMessageEnum._(r'_10042');
  static const n10043 = SubscriptionMessageEnum._(r'_10043');
  static const n11000 = SubscriptionMessageEnum._(r'_11000');
  static const n11001 = SubscriptionMessageEnum._(r'_11001');
  static const n11002 = SubscriptionMessageEnum._(r'_11002');
  static const n11003 = SubscriptionMessageEnum._(r'_11003');
  static const n11004 = SubscriptionMessageEnum._(r'_11004');
  static const n11005 = SubscriptionMessageEnum._(r'_11005');
  static const n12000 = SubscriptionMessageEnum._(r'_12000');
  static const n12001 = SubscriptionMessageEnum._(r'_12001');
  static const n12002 = SubscriptionMessageEnum._(r'_12002');
  static const n12003 = SubscriptionMessageEnum._(r'_12003');
  static const n12004 = SubscriptionMessageEnum._(r'_12004');
  static const n12005 = SubscriptionMessageEnum._(r'_12005');
  static const n13000 = SubscriptionMessageEnum._(r'_13000');
  static const n13001 = SubscriptionMessageEnum._(r'_13001');
  static const n13002 = SubscriptionMessageEnum._(r'_13002');
  static const n14000 = SubscriptionMessageEnum._(r'_14000');
  static const n14001 = SubscriptionMessageEnum._(r'_14001');
  static const n14002 = SubscriptionMessageEnum._(r'_14002');
  static const n14003 = SubscriptionMessageEnum._(r'_14003');
  static const n14004 = SubscriptionMessageEnum._(r'_14004');
  static const n14005 = SubscriptionMessageEnum._(r'_14005');
  static const n14006 = SubscriptionMessageEnum._(r'_14006');
  static const n14007 = SubscriptionMessageEnum._(r'_14007');
  static const n14008 = SubscriptionMessageEnum._(r'_14008');
  static const n14009 = SubscriptionMessageEnum._(r'_14009');
  static const n14010 = SubscriptionMessageEnum._(r'_14010');
  static const n14011 = SubscriptionMessageEnum._(r'_14011');
  static const n14012 = SubscriptionMessageEnum._(r'_14012');

  /// List of all possible values in this [enum][SubscriptionMessageEnum].
  static const values = <SubscriptionMessageEnum>[
    n400,
    n403,
    n500,
    n600,
    n1000,
    n1001,
    n1002,
    n1003,
    n1004,
    n1005,
    n1006,
    n1007,
    n1008,
    n1009,
    n1010,
    n1011,
    n1012,
    n1013,
    n1014,
    n1015,
    n1016,
    n1017,
    n1018,
    n1019,
    n1020,
    n1021,
    n1022,
    n1023,
    n1024,
    n1025,
    n1026,
    n1027,
    n1028,
    n1029,
    n1030,
    n1031,
    n1032,
    n1033,
    n1034,
    n1035,
    n1036,
    n1037,
    n1038,
    n1100,
    n1101,
    n1102,
    n1103,
    n1104,
    n1105,
    n1106,
    n1107,
    n1108,
    n1109,
    n1110,
    n2000,
    n2001,
    n2002,
    n2003,
    n2004,
    n2005,
    n2006,
    n2007,
    n2008,
    n2009,
    n2010,
    n2011,
    n2012,
    n2013,
    n2100,
    n2101,
    n2102,
    n2103,
    n2200,
    n2201,
    n2202,
    n2203,
    n2204,
    n2205,
    n2206,
    n2207,
    n2208,
    n2209,
    n2210,
    n2211,
    n2212,
    n2300,
    n2301,
    n2302,
    n2303,
    n2400,
    n2401,
    n2402,
    n2500,
    n2501,
    n2502,
    n2503,
    n2504,
    n2505,
    n2506,
    n2507,
    n2508,
    n2509,
    n2510,
    n2511,
    n2512,
    n2513,
    n2514,
    n2515,
    n2600,
    n2601,
    n2602,
    n2603,
    n2604,
    n2700,
    n2701,
    n2702,
    n2703,
    n2704,
    n2705,
    n2800,
    n2801,
    n2900,
    n2901,
    n2902,
    n2903,
    n2904,
    n2905,
    n2906,
    n3000,
    n3001,
    n3002,
    n3100,
    n3101,
    n3102,
    n3103,
    n3104,
    n3200,
    n3201,
    n3300,
    n3301,
    n3302,
    n3303,
    n3304,
    n3305,
    n3306,
    n3307,
    n3308,
    n3309,
    n3310,
    n3311,
    n3312,
    n3313,
    n3314,
    n3315,
    n3316,
    n3400,
    n3401,
    n3500,
    n3501,
    n3502,
    n3503,
    n3504,
    n3505,
    n3506,
    n3507,
    n3508,
    n3600,
    n3601,
    n3602,
    n3603,
    n3700,
    n3701,
    n3702,
    n3703,
    n3800,
    n3801,
    n3802,
    n3803,
    n3804,
    n3805,
    n3806,
    n3807,
    n3900,
    n3901,
    n3902,
    n3903,
    n3904,
    n3905,
    n4000,
    n4001,
    n4002,
    n4100,
    n4101,
    n4102,
    n4103,
    n4200,
    n4201,
    n4202,
    n4203,
    n4204,
    n4205,
    n4300,
    n4301,
    n4302,
    n4303,
    n4304,
    n4400,
    n4401,
    n4500,
    n4501,
    n4502,
    n4503,
    n4504,
    n4505,
    n4600,
    n4700,
    n4701,
    n4702,
    n4800,
    n4801,
    n4900,
    n4901,
    n4902,
    n4903,
    n4904,
    n4905,
    n4906,
    n5000,
    n5001,
    n5002,
    n5003,
    n5100,
    n5101,
    n5102,
    n5103,
    n5104,
    n5200,
    n5300,
    n5301,
    n5302,
    n5303,
    n5400,
    n5500,
    n5501,
    n5600,
    n5601,
    n5602,
    n5603,
    n5604,
    n5606,
    n5607,
    n5608,
    n5609,
    n5700,
    n5701,
    n5702,
    n5703,
    n5704,
    n5705,
    n5800,
    n5801,
    n5802,
    n5803,
    n5804,
    n5805,
    n5806,
    n5807,
    n5900,
    n5901,
    n5902,
    n5903,
    n5904,
    n5905,
    n5906,
    n5907,
    n5908,
    n5909,
    n5910,
    n5911,
    n5912,
    n5913,
    n5914,
    n5915,
    n5916,
    n6000,
    n6001,
    n6100,
    n6101,
    n6102,
    n6103,
    n6200,
    n6201,
    n6202,
    n6300,
    n6301,
    n6302,
    n6303,
    n6304,
    n6305,
    n6306,
    n6307,
    n6308,
    n6309,
    n6310,
    n6311,
    n6312,
    n6400,
    n6401,
    n6402,
    n6403,
    n6404,
    n6500,
    n6501,
    n6502,
    n6600,
    n6601,
    n6602,
    n6603,
    n6700,
    n6701,
    n6702,
    n6703,
    n6704,
    n6705,
    n6706,
    n6707,
    n6708,
    n6709,
    n6800,
    n6801,
    n6802,
    n6803,
    n6900,
    n6901,
    n6902,
    n6903,
    n7000,
    n7100,
    n7101,
    n7102,
    n7200,
    n7201,
    n7300,
    n7301,
    n7302,
    n7303,
    n7400,
    n7401,
    n7402,
    n7403,
    n7404,
    n7405,
    n7500,
    n7501,
    n7600,
    n7601,
    n7602,
    n7603,
    n7604,
    n7605,
    n7606,
    n7700,
    n7701,
    n7702,
    n7703,
    n7704,
    n7705,
    n7706,
    n7707,
    n7800,
    n7801,
    n7802,
    n7803,
    n7804,
    n7805,
    n7806,
    n7807,
    n7808,
    n7809,
    n7810,
    n7811,
    n7812,
    n7813,
    n7814,
    n7815,
    n7817,
    n7818,
    n7819,
    n7900,
    n7901,
    n7902,
    n7903,
    n7904,
    n7905,
    n7906,
    n8000,
    n8001,
    n8100,
    n8101,
    n8102,
    n8103,
    n8104,
    n8105,
    n8107,
    n8108,
    n8200,
    n8201,
    n10000,
    n10001,
    n10002,
    n10003,
    n10004,
    n10005,
    n10006,
    n10020,
    n10021,
    n10022,
    n10040,
    n10041,
    n10042,
    n10043,
    n11000,
    n11001,
    n11002,
    n11003,
    n11004,
    n11005,
    n12000,
    n12001,
    n12002,
    n12003,
    n12004,
    n12005,
    n13000,
    n13001,
    n13002,
    n14000,
    n14001,
    n14002,
    n14003,
    n14004,
    n14005,
    n14006,
    n14007,
    n14008,
    n14009,
    n14010,
    n14011,
    n14012,
  ];

  static SubscriptionMessageEnum? fromJson(dynamic value) => SubscriptionMessageEnumTypeTransformer().decode(value);

  static List<SubscriptionMessageEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SubscriptionMessageEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SubscriptionMessageEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [SubscriptionMessageEnum] to String,
/// and [decode] dynamic data back to [SubscriptionMessageEnum].
class SubscriptionMessageEnumTypeTransformer {
  factory SubscriptionMessageEnumTypeTransformer() => _instance ??= const SubscriptionMessageEnumTypeTransformer._();

  const SubscriptionMessageEnumTypeTransformer._();

  String encode(SubscriptionMessageEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a SubscriptionMessageEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  SubscriptionMessageEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'_400': return SubscriptionMessageEnum.n400;
        case r'_403': return SubscriptionMessageEnum.n403;
        case r'_500': return SubscriptionMessageEnum.n500;
        case r'_600': return SubscriptionMessageEnum.n600;
        case r'_1000': return SubscriptionMessageEnum.n1000;
        case r'_1001': return SubscriptionMessageEnum.n1001;
        case r'_1002': return SubscriptionMessageEnum.n1002;
        case r'_1003': return SubscriptionMessageEnum.n1003;
        case r'_1004': return SubscriptionMessageEnum.n1004;
        case r'_1005': return SubscriptionMessageEnum.n1005;
        case r'_1006': return SubscriptionMessageEnum.n1006;
        case r'_1007': return SubscriptionMessageEnum.n1007;
        case r'_1008': return SubscriptionMessageEnum.n1008;
        case r'_1009': return SubscriptionMessageEnum.n1009;
        case r'_1010': return SubscriptionMessageEnum.n1010;
        case r'_1011': return SubscriptionMessageEnum.n1011;
        case r'_1012': return SubscriptionMessageEnum.n1012;
        case r'_1013': return SubscriptionMessageEnum.n1013;
        case r'_1014': return SubscriptionMessageEnum.n1014;
        case r'_1015': return SubscriptionMessageEnum.n1015;
        case r'_1016': return SubscriptionMessageEnum.n1016;
        case r'_1017': return SubscriptionMessageEnum.n1017;
        case r'_1018': return SubscriptionMessageEnum.n1018;
        case r'_1019': return SubscriptionMessageEnum.n1019;
        case r'_1020': return SubscriptionMessageEnum.n1020;
        case r'_1021': return SubscriptionMessageEnum.n1021;
        case r'_1022': return SubscriptionMessageEnum.n1022;
        case r'_1023': return SubscriptionMessageEnum.n1023;
        case r'_1024': return SubscriptionMessageEnum.n1024;
        case r'_1025': return SubscriptionMessageEnum.n1025;
        case r'_1026': return SubscriptionMessageEnum.n1026;
        case r'_1027': return SubscriptionMessageEnum.n1027;
        case r'_1028': return SubscriptionMessageEnum.n1028;
        case r'_1029': return SubscriptionMessageEnum.n1029;
        case r'_1030': return SubscriptionMessageEnum.n1030;
        case r'_1031': return SubscriptionMessageEnum.n1031;
        case r'_1032': return SubscriptionMessageEnum.n1032;
        case r'_1033': return SubscriptionMessageEnum.n1033;
        case r'_1034': return SubscriptionMessageEnum.n1034;
        case r'_1035': return SubscriptionMessageEnum.n1035;
        case r'_1036': return SubscriptionMessageEnum.n1036;
        case r'_1037': return SubscriptionMessageEnum.n1037;
        case r'_1038': return SubscriptionMessageEnum.n1038;
        case r'_1100': return SubscriptionMessageEnum.n1100;
        case r'_1101': return SubscriptionMessageEnum.n1101;
        case r'_1102': return SubscriptionMessageEnum.n1102;
        case r'_1103': return SubscriptionMessageEnum.n1103;
        case r'_1104': return SubscriptionMessageEnum.n1104;
        case r'_1105': return SubscriptionMessageEnum.n1105;
        case r'_1106': return SubscriptionMessageEnum.n1106;
        case r'_1107': return SubscriptionMessageEnum.n1107;
        case r'_1108': return SubscriptionMessageEnum.n1108;
        case r'_1109': return SubscriptionMessageEnum.n1109;
        case r'_1110': return SubscriptionMessageEnum.n1110;
        case r'_2000': return SubscriptionMessageEnum.n2000;
        case r'_2001': return SubscriptionMessageEnum.n2001;
        case r'_2002': return SubscriptionMessageEnum.n2002;
        case r'_2003': return SubscriptionMessageEnum.n2003;
        case r'_2004': return SubscriptionMessageEnum.n2004;
        case r'_2005': return SubscriptionMessageEnum.n2005;
        case r'_2006': return SubscriptionMessageEnum.n2006;
        case r'_2007': return SubscriptionMessageEnum.n2007;
        case r'_2008': return SubscriptionMessageEnum.n2008;
        case r'_2009': return SubscriptionMessageEnum.n2009;
        case r'_2010': return SubscriptionMessageEnum.n2010;
        case r'_2011': return SubscriptionMessageEnum.n2011;
        case r'_2012': return SubscriptionMessageEnum.n2012;
        case r'_2013': return SubscriptionMessageEnum.n2013;
        case r'_2100': return SubscriptionMessageEnum.n2100;
        case r'_2101': return SubscriptionMessageEnum.n2101;
        case r'_2102': return SubscriptionMessageEnum.n2102;
        case r'_2103': return SubscriptionMessageEnum.n2103;
        case r'_2200': return SubscriptionMessageEnum.n2200;
        case r'_2201': return SubscriptionMessageEnum.n2201;
        case r'_2202': return SubscriptionMessageEnum.n2202;
        case r'_2203': return SubscriptionMessageEnum.n2203;
        case r'_2204': return SubscriptionMessageEnum.n2204;
        case r'_2205': return SubscriptionMessageEnum.n2205;
        case r'_2206': return SubscriptionMessageEnum.n2206;
        case r'_2207': return SubscriptionMessageEnum.n2207;
        case r'_2208': return SubscriptionMessageEnum.n2208;
        case r'_2209': return SubscriptionMessageEnum.n2209;
        case r'_2210': return SubscriptionMessageEnum.n2210;
        case r'_2211': return SubscriptionMessageEnum.n2211;
        case r'_2212': return SubscriptionMessageEnum.n2212;
        case r'_2300': return SubscriptionMessageEnum.n2300;
        case r'_2301': return SubscriptionMessageEnum.n2301;
        case r'_2302': return SubscriptionMessageEnum.n2302;
        case r'_2303': return SubscriptionMessageEnum.n2303;
        case r'_2400': return SubscriptionMessageEnum.n2400;
        case r'_2401': return SubscriptionMessageEnum.n2401;
        case r'_2402': return SubscriptionMessageEnum.n2402;
        case r'_2500': return SubscriptionMessageEnum.n2500;
        case r'_2501': return SubscriptionMessageEnum.n2501;
        case r'_2502': return SubscriptionMessageEnum.n2502;
        case r'_2503': return SubscriptionMessageEnum.n2503;
        case r'_2504': return SubscriptionMessageEnum.n2504;
        case r'_2505': return SubscriptionMessageEnum.n2505;
        case r'_2506': return SubscriptionMessageEnum.n2506;
        case r'_2507': return SubscriptionMessageEnum.n2507;
        case r'_2508': return SubscriptionMessageEnum.n2508;
        case r'_2509': return SubscriptionMessageEnum.n2509;
        case r'_2510': return SubscriptionMessageEnum.n2510;
        case r'_2511': return SubscriptionMessageEnum.n2511;
        case r'_2512': return SubscriptionMessageEnum.n2512;
        case r'_2513': return SubscriptionMessageEnum.n2513;
        case r'_2514': return SubscriptionMessageEnum.n2514;
        case r'_2515': return SubscriptionMessageEnum.n2515;
        case r'_2600': return SubscriptionMessageEnum.n2600;
        case r'_2601': return SubscriptionMessageEnum.n2601;
        case r'_2602': return SubscriptionMessageEnum.n2602;
        case r'_2603': return SubscriptionMessageEnum.n2603;
        case r'_2604': return SubscriptionMessageEnum.n2604;
        case r'_2700': return SubscriptionMessageEnum.n2700;
        case r'_2701': return SubscriptionMessageEnum.n2701;
        case r'_2702': return SubscriptionMessageEnum.n2702;
        case r'_2703': return SubscriptionMessageEnum.n2703;
        case r'_2704': return SubscriptionMessageEnum.n2704;
        case r'_2705': return SubscriptionMessageEnum.n2705;
        case r'_2800': return SubscriptionMessageEnum.n2800;
        case r'_2801': return SubscriptionMessageEnum.n2801;
        case r'_2900': return SubscriptionMessageEnum.n2900;
        case r'_2901': return SubscriptionMessageEnum.n2901;
        case r'_2902': return SubscriptionMessageEnum.n2902;
        case r'_2903': return SubscriptionMessageEnum.n2903;
        case r'_2904': return SubscriptionMessageEnum.n2904;
        case r'_2905': return SubscriptionMessageEnum.n2905;
        case r'_2906': return SubscriptionMessageEnum.n2906;
        case r'_3000': return SubscriptionMessageEnum.n3000;
        case r'_3001': return SubscriptionMessageEnum.n3001;
        case r'_3002': return SubscriptionMessageEnum.n3002;
        case r'_3100': return SubscriptionMessageEnum.n3100;
        case r'_3101': return SubscriptionMessageEnum.n3101;
        case r'_3102': return SubscriptionMessageEnum.n3102;
        case r'_3103': return SubscriptionMessageEnum.n3103;
        case r'_3104': return SubscriptionMessageEnum.n3104;
        case r'_3200': return SubscriptionMessageEnum.n3200;
        case r'_3201': return SubscriptionMessageEnum.n3201;
        case r'_3300': return SubscriptionMessageEnum.n3300;
        case r'_3301': return SubscriptionMessageEnum.n3301;
        case r'_3302': return SubscriptionMessageEnum.n3302;
        case r'_3303': return SubscriptionMessageEnum.n3303;
        case r'_3304': return SubscriptionMessageEnum.n3304;
        case r'_3305': return SubscriptionMessageEnum.n3305;
        case r'_3306': return SubscriptionMessageEnum.n3306;
        case r'_3307': return SubscriptionMessageEnum.n3307;
        case r'_3308': return SubscriptionMessageEnum.n3308;
        case r'_3309': return SubscriptionMessageEnum.n3309;
        case r'_3310': return SubscriptionMessageEnum.n3310;
        case r'_3311': return SubscriptionMessageEnum.n3311;
        case r'_3312': return SubscriptionMessageEnum.n3312;
        case r'_3313': return SubscriptionMessageEnum.n3313;
        case r'_3314': return SubscriptionMessageEnum.n3314;
        case r'_3315': return SubscriptionMessageEnum.n3315;
        case r'_3316': return SubscriptionMessageEnum.n3316;
        case r'_3400': return SubscriptionMessageEnum.n3400;
        case r'_3401': return SubscriptionMessageEnum.n3401;
        case r'_3500': return SubscriptionMessageEnum.n3500;
        case r'_3501': return SubscriptionMessageEnum.n3501;
        case r'_3502': return SubscriptionMessageEnum.n3502;
        case r'_3503': return SubscriptionMessageEnum.n3503;
        case r'_3504': return SubscriptionMessageEnum.n3504;
        case r'_3505': return SubscriptionMessageEnum.n3505;
        case r'_3506': return SubscriptionMessageEnum.n3506;
        case r'_3507': return SubscriptionMessageEnum.n3507;
        case r'_3508': return SubscriptionMessageEnum.n3508;
        case r'_3600': return SubscriptionMessageEnum.n3600;
        case r'_3601': return SubscriptionMessageEnum.n3601;
        case r'_3602': return SubscriptionMessageEnum.n3602;
        case r'_3603': return SubscriptionMessageEnum.n3603;
        case r'_3700': return SubscriptionMessageEnum.n3700;
        case r'_3701': return SubscriptionMessageEnum.n3701;
        case r'_3702': return SubscriptionMessageEnum.n3702;
        case r'_3703': return SubscriptionMessageEnum.n3703;
        case r'_3800': return SubscriptionMessageEnum.n3800;
        case r'_3801': return SubscriptionMessageEnum.n3801;
        case r'_3802': return SubscriptionMessageEnum.n3802;
        case r'_3803': return SubscriptionMessageEnum.n3803;
        case r'_3804': return SubscriptionMessageEnum.n3804;
        case r'_3805': return SubscriptionMessageEnum.n3805;
        case r'_3806': return SubscriptionMessageEnum.n3806;
        case r'_3807': return SubscriptionMessageEnum.n3807;
        case r'_3900': return SubscriptionMessageEnum.n3900;
        case r'_3901': return SubscriptionMessageEnum.n3901;
        case r'_3902': return SubscriptionMessageEnum.n3902;
        case r'_3903': return SubscriptionMessageEnum.n3903;
        case r'_3904': return SubscriptionMessageEnum.n3904;
        case r'_3905': return SubscriptionMessageEnum.n3905;
        case r'_4000': return SubscriptionMessageEnum.n4000;
        case r'_4001': return SubscriptionMessageEnum.n4001;
        case r'_4002': return SubscriptionMessageEnum.n4002;
        case r'_4100': return SubscriptionMessageEnum.n4100;
        case r'_4101': return SubscriptionMessageEnum.n4101;
        case r'_4102': return SubscriptionMessageEnum.n4102;
        case r'_4103': return SubscriptionMessageEnum.n4103;
        case r'_4200': return SubscriptionMessageEnum.n4200;
        case r'_4201': return SubscriptionMessageEnum.n4201;
        case r'_4202': return SubscriptionMessageEnum.n4202;
        case r'_4203': return SubscriptionMessageEnum.n4203;
        case r'_4204': return SubscriptionMessageEnum.n4204;
        case r'_4205': return SubscriptionMessageEnum.n4205;
        case r'_4300': return SubscriptionMessageEnum.n4300;
        case r'_4301': return SubscriptionMessageEnum.n4301;
        case r'_4302': return SubscriptionMessageEnum.n4302;
        case r'_4303': return SubscriptionMessageEnum.n4303;
        case r'_4304': return SubscriptionMessageEnum.n4304;
        case r'_4400': return SubscriptionMessageEnum.n4400;
        case r'_4401': return SubscriptionMessageEnum.n4401;
        case r'_4500': return SubscriptionMessageEnum.n4500;
        case r'_4501': return SubscriptionMessageEnum.n4501;
        case r'_4502': return SubscriptionMessageEnum.n4502;
        case r'_4503': return SubscriptionMessageEnum.n4503;
        case r'_4504': return SubscriptionMessageEnum.n4504;
        case r'_4505': return SubscriptionMessageEnum.n4505;
        case r'_4600': return SubscriptionMessageEnum.n4600;
        case r'_4700': return SubscriptionMessageEnum.n4700;
        case r'_4701': return SubscriptionMessageEnum.n4701;
        case r'_4702': return SubscriptionMessageEnum.n4702;
        case r'_4800': return SubscriptionMessageEnum.n4800;
        case r'_4801': return SubscriptionMessageEnum.n4801;
        case r'_4900': return SubscriptionMessageEnum.n4900;
        case r'_4901': return SubscriptionMessageEnum.n4901;
        case r'_4902': return SubscriptionMessageEnum.n4902;
        case r'_4903': return SubscriptionMessageEnum.n4903;
        case r'_4904': return SubscriptionMessageEnum.n4904;
        case r'_4905': return SubscriptionMessageEnum.n4905;
        case r'_4906': return SubscriptionMessageEnum.n4906;
        case r'_5000': return SubscriptionMessageEnum.n5000;
        case r'_5001': return SubscriptionMessageEnum.n5001;
        case r'_5002': return SubscriptionMessageEnum.n5002;
        case r'_5003': return SubscriptionMessageEnum.n5003;
        case r'_5100': return SubscriptionMessageEnum.n5100;
        case r'_5101': return SubscriptionMessageEnum.n5101;
        case r'_5102': return SubscriptionMessageEnum.n5102;
        case r'_5103': return SubscriptionMessageEnum.n5103;
        case r'_5104': return SubscriptionMessageEnum.n5104;
        case r'_5200': return SubscriptionMessageEnum.n5200;
        case r'_5300': return SubscriptionMessageEnum.n5300;
        case r'_5301': return SubscriptionMessageEnum.n5301;
        case r'_5302': return SubscriptionMessageEnum.n5302;
        case r'_5303': return SubscriptionMessageEnum.n5303;
        case r'_5400': return SubscriptionMessageEnum.n5400;
        case r'_5500': return SubscriptionMessageEnum.n5500;
        case r'_5501': return SubscriptionMessageEnum.n5501;
        case r'_5600': return SubscriptionMessageEnum.n5600;
        case r'_5601': return SubscriptionMessageEnum.n5601;
        case r'_5602': return SubscriptionMessageEnum.n5602;
        case r'_5603': return SubscriptionMessageEnum.n5603;
        case r'_5604': return SubscriptionMessageEnum.n5604;
        case r'_5606': return SubscriptionMessageEnum.n5606;
        case r'_5607': return SubscriptionMessageEnum.n5607;
        case r'_5608': return SubscriptionMessageEnum.n5608;
        case r'_5609': return SubscriptionMessageEnum.n5609;
        case r'_5700': return SubscriptionMessageEnum.n5700;
        case r'_5701': return SubscriptionMessageEnum.n5701;
        case r'_5702': return SubscriptionMessageEnum.n5702;
        case r'_5703': return SubscriptionMessageEnum.n5703;
        case r'_5704': return SubscriptionMessageEnum.n5704;
        case r'_5705': return SubscriptionMessageEnum.n5705;
        case r'_5800': return SubscriptionMessageEnum.n5800;
        case r'_5801': return SubscriptionMessageEnum.n5801;
        case r'_5802': return SubscriptionMessageEnum.n5802;
        case r'_5803': return SubscriptionMessageEnum.n5803;
        case r'_5804': return SubscriptionMessageEnum.n5804;
        case r'_5805': return SubscriptionMessageEnum.n5805;
        case r'_5806': return SubscriptionMessageEnum.n5806;
        case r'_5807': return SubscriptionMessageEnum.n5807;
        case r'_5900': return SubscriptionMessageEnum.n5900;
        case r'_5901': return SubscriptionMessageEnum.n5901;
        case r'_5902': return SubscriptionMessageEnum.n5902;
        case r'_5903': return SubscriptionMessageEnum.n5903;
        case r'_5904': return SubscriptionMessageEnum.n5904;
        case r'_5905': return SubscriptionMessageEnum.n5905;
        case r'_5906': return SubscriptionMessageEnum.n5906;
        case r'_5907': return SubscriptionMessageEnum.n5907;
        case r'_5908': return SubscriptionMessageEnum.n5908;
        case r'_5909': return SubscriptionMessageEnum.n5909;
        case r'_5910': return SubscriptionMessageEnum.n5910;
        case r'_5911': return SubscriptionMessageEnum.n5911;
        case r'_5912': return SubscriptionMessageEnum.n5912;
        case r'_5913': return SubscriptionMessageEnum.n5913;
        case r'_5914': return SubscriptionMessageEnum.n5914;
        case r'_5915': return SubscriptionMessageEnum.n5915;
        case r'_5916': return SubscriptionMessageEnum.n5916;
        case r'_6000': return SubscriptionMessageEnum.n6000;
        case r'_6001': return SubscriptionMessageEnum.n6001;
        case r'_6100': return SubscriptionMessageEnum.n6100;
        case r'_6101': return SubscriptionMessageEnum.n6101;
        case r'_6102': return SubscriptionMessageEnum.n6102;
        case r'_6103': return SubscriptionMessageEnum.n6103;
        case r'_6200': return SubscriptionMessageEnum.n6200;
        case r'_6201': return SubscriptionMessageEnum.n6201;
        case r'_6202': return SubscriptionMessageEnum.n6202;
        case r'_6300': return SubscriptionMessageEnum.n6300;
        case r'_6301': return SubscriptionMessageEnum.n6301;
        case r'_6302': return SubscriptionMessageEnum.n6302;
        case r'_6303': return SubscriptionMessageEnum.n6303;
        case r'_6304': return SubscriptionMessageEnum.n6304;
        case r'_6305': return SubscriptionMessageEnum.n6305;
        case r'_6306': return SubscriptionMessageEnum.n6306;
        case r'_6307': return SubscriptionMessageEnum.n6307;
        case r'_6308': return SubscriptionMessageEnum.n6308;
        case r'_6309': return SubscriptionMessageEnum.n6309;
        case r'_6310': return SubscriptionMessageEnum.n6310;
        case r'_6311': return SubscriptionMessageEnum.n6311;
        case r'_6312': return SubscriptionMessageEnum.n6312;
        case r'_6400': return SubscriptionMessageEnum.n6400;
        case r'_6401': return SubscriptionMessageEnum.n6401;
        case r'_6402': return SubscriptionMessageEnum.n6402;
        case r'_6403': return SubscriptionMessageEnum.n6403;
        case r'_6404': return SubscriptionMessageEnum.n6404;
        case r'_6500': return SubscriptionMessageEnum.n6500;
        case r'_6501': return SubscriptionMessageEnum.n6501;
        case r'_6502': return SubscriptionMessageEnum.n6502;
        case r'_6600': return SubscriptionMessageEnum.n6600;
        case r'_6601': return SubscriptionMessageEnum.n6601;
        case r'_6602': return SubscriptionMessageEnum.n6602;
        case r'_6603': return SubscriptionMessageEnum.n6603;
        case r'_6700': return SubscriptionMessageEnum.n6700;
        case r'_6701': return SubscriptionMessageEnum.n6701;
        case r'_6702': return SubscriptionMessageEnum.n6702;
        case r'_6703': return SubscriptionMessageEnum.n6703;
        case r'_6704': return SubscriptionMessageEnum.n6704;
        case r'_6705': return SubscriptionMessageEnum.n6705;
        case r'_6706': return SubscriptionMessageEnum.n6706;
        case r'_6707': return SubscriptionMessageEnum.n6707;
        case r'_6708': return SubscriptionMessageEnum.n6708;
        case r'_6709': return SubscriptionMessageEnum.n6709;
        case r'_6800': return SubscriptionMessageEnum.n6800;
        case r'_6801': return SubscriptionMessageEnum.n6801;
        case r'_6802': return SubscriptionMessageEnum.n6802;
        case r'_6803': return SubscriptionMessageEnum.n6803;
        case r'_6900': return SubscriptionMessageEnum.n6900;
        case r'_6901': return SubscriptionMessageEnum.n6901;
        case r'_6902': return SubscriptionMessageEnum.n6902;
        case r'_6903': return SubscriptionMessageEnum.n6903;
        case r'_7000': return SubscriptionMessageEnum.n7000;
        case r'_7100': return SubscriptionMessageEnum.n7100;
        case r'_7101': return SubscriptionMessageEnum.n7101;
        case r'_7102': return SubscriptionMessageEnum.n7102;
        case r'_7200': return SubscriptionMessageEnum.n7200;
        case r'_7201': return SubscriptionMessageEnum.n7201;
        case r'_7300': return SubscriptionMessageEnum.n7300;
        case r'_7301': return SubscriptionMessageEnum.n7301;
        case r'_7302': return SubscriptionMessageEnum.n7302;
        case r'_7303': return SubscriptionMessageEnum.n7303;
        case r'_7400': return SubscriptionMessageEnum.n7400;
        case r'_7401': return SubscriptionMessageEnum.n7401;
        case r'_7402': return SubscriptionMessageEnum.n7402;
        case r'_7403': return SubscriptionMessageEnum.n7403;
        case r'_7404': return SubscriptionMessageEnum.n7404;
        case r'_7405': return SubscriptionMessageEnum.n7405;
        case r'_7500': return SubscriptionMessageEnum.n7500;
        case r'_7501': return SubscriptionMessageEnum.n7501;
        case r'_7600': return SubscriptionMessageEnum.n7600;
        case r'_7601': return SubscriptionMessageEnum.n7601;
        case r'_7602': return SubscriptionMessageEnum.n7602;
        case r'_7603': return SubscriptionMessageEnum.n7603;
        case r'_7604': return SubscriptionMessageEnum.n7604;
        case r'_7605': return SubscriptionMessageEnum.n7605;
        case r'_7606': return SubscriptionMessageEnum.n7606;
        case r'_7700': return SubscriptionMessageEnum.n7700;
        case r'_7701': return SubscriptionMessageEnum.n7701;
        case r'_7702': return SubscriptionMessageEnum.n7702;
        case r'_7703': return SubscriptionMessageEnum.n7703;
        case r'_7704': return SubscriptionMessageEnum.n7704;
        case r'_7705': return SubscriptionMessageEnum.n7705;
        case r'_7706': return SubscriptionMessageEnum.n7706;
        case r'_7707': return SubscriptionMessageEnum.n7707;
        case r'_7800': return SubscriptionMessageEnum.n7800;
        case r'_7801': return SubscriptionMessageEnum.n7801;
        case r'_7802': return SubscriptionMessageEnum.n7802;
        case r'_7803': return SubscriptionMessageEnum.n7803;
        case r'_7804': return SubscriptionMessageEnum.n7804;
        case r'_7805': return SubscriptionMessageEnum.n7805;
        case r'_7806': return SubscriptionMessageEnum.n7806;
        case r'_7807': return SubscriptionMessageEnum.n7807;
        case r'_7808': return SubscriptionMessageEnum.n7808;
        case r'_7809': return SubscriptionMessageEnum.n7809;
        case r'_7810': return SubscriptionMessageEnum.n7810;
        case r'_7811': return SubscriptionMessageEnum.n7811;
        case r'_7812': return SubscriptionMessageEnum.n7812;
        case r'_7813': return SubscriptionMessageEnum.n7813;
        case r'_7814': return SubscriptionMessageEnum.n7814;
        case r'_7815': return SubscriptionMessageEnum.n7815;
        case r'_7817': return SubscriptionMessageEnum.n7817;
        case r'_7818': return SubscriptionMessageEnum.n7818;
        case r'_7819': return SubscriptionMessageEnum.n7819;
        case r'_7900': return SubscriptionMessageEnum.n7900;
        case r'_7901': return SubscriptionMessageEnum.n7901;
        case r'_7902': return SubscriptionMessageEnum.n7902;
        case r'_7903': return SubscriptionMessageEnum.n7903;
        case r'_7904': return SubscriptionMessageEnum.n7904;
        case r'_7905': return SubscriptionMessageEnum.n7905;
        case r'_7906': return SubscriptionMessageEnum.n7906;
        case r'_8000': return SubscriptionMessageEnum.n8000;
        case r'_8001': return SubscriptionMessageEnum.n8001;
        case r'_8100': return SubscriptionMessageEnum.n8100;
        case r'_8101': return SubscriptionMessageEnum.n8101;
        case r'_8102': return SubscriptionMessageEnum.n8102;
        case r'_8103': return SubscriptionMessageEnum.n8103;
        case r'_8104': return SubscriptionMessageEnum.n8104;
        case r'_8105': return SubscriptionMessageEnum.n8105;
        case r'_8107': return SubscriptionMessageEnum.n8107;
        case r'_8108': return SubscriptionMessageEnum.n8108;
        case r'_8200': return SubscriptionMessageEnum.n8200;
        case r'_8201': return SubscriptionMessageEnum.n8201;
        case r'_10000': return SubscriptionMessageEnum.n10000;
        case r'_10001': return SubscriptionMessageEnum.n10001;
        case r'_10002': return SubscriptionMessageEnum.n10002;
        case r'_10003': return SubscriptionMessageEnum.n10003;
        case r'_10004': return SubscriptionMessageEnum.n10004;
        case r'_10005': return SubscriptionMessageEnum.n10005;
        case r'_10006': return SubscriptionMessageEnum.n10006;
        case r'_10020': return SubscriptionMessageEnum.n10020;
        case r'_10021': return SubscriptionMessageEnum.n10021;
        case r'_10022': return SubscriptionMessageEnum.n10022;
        case r'_10040': return SubscriptionMessageEnum.n10040;
        case r'_10041': return SubscriptionMessageEnum.n10041;
        case r'_10042': return SubscriptionMessageEnum.n10042;
        case r'_10043': return SubscriptionMessageEnum.n10043;
        case r'_11000': return SubscriptionMessageEnum.n11000;
        case r'_11001': return SubscriptionMessageEnum.n11001;
        case r'_11002': return SubscriptionMessageEnum.n11002;
        case r'_11003': return SubscriptionMessageEnum.n11003;
        case r'_11004': return SubscriptionMessageEnum.n11004;
        case r'_11005': return SubscriptionMessageEnum.n11005;
        case r'_12000': return SubscriptionMessageEnum.n12000;
        case r'_12001': return SubscriptionMessageEnum.n12001;
        case r'_12002': return SubscriptionMessageEnum.n12002;
        case r'_12003': return SubscriptionMessageEnum.n12003;
        case r'_12004': return SubscriptionMessageEnum.n12004;
        case r'_12005': return SubscriptionMessageEnum.n12005;
        case r'_13000': return SubscriptionMessageEnum.n13000;
        case r'_13001': return SubscriptionMessageEnum.n13001;
        case r'_13002': return SubscriptionMessageEnum.n13002;
        case r'_14000': return SubscriptionMessageEnum.n14000;
        case r'_14001': return SubscriptionMessageEnum.n14001;
        case r'_14002': return SubscriptionMessageEnum.n14002;
        case r'_14003': return SubscriptionMessageEnum.n14003;
        case r'_14004': return SubscriptionMessageEnum.n14004;
        case r'_14005': return SubscriptionMessageEnum.n14005;
        case r'_14006': return SubscriptionMessageEnum.n14006;
        case r'_14007': return SubscriptionMessageEnum.n14007;
        case r'_14008': return SubscriptionMessageEnum.n14008;
        case r'_14009': return SubscriptionMessageEnum.n14009;
        case r'_14010': return SubscriptionMessageEnum.n14010;
        case r'_14011': return SubscriptionMessageEnum.n14011;
        case r'_14012': return SubscriptionMessageEnum.n14012;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [SubscriptionMessageEnumTypeTransformer] instance.
  static SubscriptionMessageEnumTypeTransformer? _instance;
}


