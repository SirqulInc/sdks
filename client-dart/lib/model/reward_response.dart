//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class RewardResponse {
  /// Returns a new [RewardResponse] instance.
  RewardResponse({
    this.offerId,
    this.title,
    this.subTitle,
    this.details,
    this.artwork,
    this.finePrint,
    this.redemptionCode,
    this.redemptionStatus,
    this.transactionId,
    this.estimatedValue,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? offerId;

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
  String? subTitle;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? details;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  AssetShortResponse? artwork;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? finePrint;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? redemptionCode;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? redemptionStatus;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? transactionId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? estimatedValue;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RewardResponse &&
    other.offerId == offerId &&
    other.title == title &&
    other.subTitle == subTitle &&
    other.details == details &&
    other.artwork == artwork &&
    other.finePrint == finePrint &&
    other.redemptionCode == redemptionCode &&
    other.redemptionStatus == redemptionStatus &&
    other.transactionId == transactionId &&
    other.estimatedValue == estimatedValue;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (offerId == null ? 0 : offerId!.hashCode) +
    (title == null ? 0 : title!.hashCode) +
    (subTitle == null ? 0 : subTitle!.hashCode) +
    (details == null ? 0 : details!.hashCode) +
    (artwork == null ? 0 : artwork!.hashCode) +
    (finePrint == null ? 0 : finePrint!.hashCode) +
    (redemptionCode == null ? 0 : redemptionCode!.hashCode) +
    (redemptionStatus == null ? 0 : redemptionStatus!.hashCode) +
    (transactionId == null ? 0 : transactionId!.hashCode) +
    (estimatedValue == null ? 0 : estimatedValue!.hashCode);

  @override
  String toString() => 'RewardResponse[offerId=$offerId, title=$title, subTitle=$subTitle, details=$details, artwork=$artwork, finePrint=$finePrint, redemptionCode=$redemptionCode, redemptionStatus=$redemptionStatus, transactionId=$transactionId, estimatedValue=$estimatedValue]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.offerId != null) {
      json[r'offerId'] = this.offerId;
    } else {
      json[r'offerId'] = null;
    }
    if (this.title != null) {
      json[r'title'] = this.title;
    } else {
      json[r'title'] = null;
    }
    if (this.subTitle != null) {
      json[r'subTitle'] = this.subTitle;
    } else {
      json[r'subTitle'] = null;
    }
    if (this.details != null) {
      json[r'details'] = this.details;
    } else {
      json[r'details'] = null;
    }
    if (this.artwork != null) {
      json[r'artwork'] = this.artwork;
    } else {
      json[r'artwork'] = null;
    }
    if (this.finePrint != null) {
      json[r'finePrint'] = this.finePrint;
    } else {
      json[r'finePrint'] = null;
    }
    if (this.redemptionCode != null) {
      json[r'redemptionCode'] = this.redemptionCode;
    } else {
      json[r'redemptionCode'] = null;
    }
    if (this.redemptionStatus != null) {
      json[r'redemptionStatus'] = this.redemptionStatus;
    } else {
      json[r'redemptionStatus'] = null;
    }
    if (this.transactionId != null) {
      json[r'transactionId'] = this.transactionId;
    } else {
      json[r'transactionId'] = null;
    }
    if (this.estimatedValue != null) {
      json[r'estimatedValue'] = this.estimatedValue;
    } else {
      json[r'estimatedValue'] = null;
    }
    return json;
  }

  /// Returns a new [RewardResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RewardResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "RewardResponse[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "RewardResponse[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return RewardResponse(
        offerId: mapValueOfType<int>(json, r'offerId'),
        title: mapValueOfType<String>(json, r'title'),
        subTitle: mapValueOfType<String>(json, r'subTitle'),
        details: mapValueOfType<String>(json, r'details'),
        artwork: AssetShortResponse.fromJson(json[r'artwork']),
        finePrint: mapValueOfType<String>(json, r'finePrint'),
        redemptionCode: mapValueOfType<String>(json, r'redemptionCode'),
        redemptionStatus: mapValueOfType<int>(json, r'redemptionStatus'),
        transactionId: mapValueOfType<int>(json, r'transactionId'),
        estimatedValue: mapValueOfType<double>(json, r'estimatedValue'),
      );
    }
    return null;
  }

  static List<RewardResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <RewardResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RewardResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, RewardResponse> mapFromJson(dynamic json) {
    final map = <String, RewardResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RewardResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of RewardResponse-objects as value to a dart map
  static Map<String, List<RewardResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<RewardResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = RewardResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

