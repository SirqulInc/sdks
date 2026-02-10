//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class AudienceTargetType {
  /// Returns a new [AudienceTargetType] instance.
  AudienceTargetType({
    this.targetType,
    this.targetDescription,
    this.retailerLocation,
    this.offerLocation,
    this.account,
    this.region,
  });

  AudienceTargetTypeTargetTypeEnum? targetType;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? targetDescription;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  RetailerLocation? retailerLocation;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  OfferLocation? offerLocation;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Account? account;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Region? region;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AudienceTargetType &&
    other.targetType == targetType &&
    other.targetDescription == targetDescription &&
    other.retailerLocation == retailerLocation &&
    other.offerLocation == offerLocation &&
    other.account == account &&
    other.region == region;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (targetType == null ? 0 : targetType!.hashCode) +
    (targetDescription == null ? 0 : targetDescription!.hashCode) +
    (retailerLocation == null ? 0 : retailerLocation!.hashCode) +
    (offerLocation == null ? 0 : offerLocation!.hashCode) +
    (account == null ? 0 : account!.hashCode) +
    (region == null ? 0 : region!.hashCode);

  @override
  String toString() => 'AudienceTargetType[targetType=$targetType, targetDescription=$targetDescription, retailerLocation=$retailerLocation, offerLocation=$offerLocation, account=$account, region=$region]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.targetType != null) {
      json[r'targetType'] = this.targetType;
    } else {
      json[r'targetType'] = null;
    }
    if (this.targetDescription != null) {
      json[r'targetDescription'] = this.targetDescription;
    } else {
      json[r'targetDescription'] = null;
    }
    if (this.retailerLocation != null) {
      json[r'retailerLocation'] = this.retailerLocation;
    } else {
      json[r'retailerLocation'] = null;
    }
    if (this.offerLocation != null) {
      json[r'offerLocation'] = this.offerLocation;
    } else {
      json[r'offerLocation'] = null;
    }
    if (this.account != null) {
      json[r'account'] = this.account;
    } else {
      json[r'account'] = null;
    }
    if (this.region != null) {
      json[r'region'] = this.region;
    } else {
      json[r'region'] = null;
    }
    return json;
  }

  /// Returns a new [AudienceTargetType] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AudienceTargetType? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "AudienceTargetType[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "AudienceTargetType[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AudienceTargetType(
        targetType: AudienceTargetTypeTargetTypeEnum.fromJson(json[r'targetType']),
        targetDescription: mapValueOfType<String>(json, r'targetDescription'),
        retailerLocation: RetailerLocation.fromJson(json[r'retailerLocation']),
        offerLocation: OfferLocation.fromJson(json[r'offerLocation']),
        account: Account.fromJson(json[r'account']),
        region: Region.fromJson(json[r'region']),
      );
    }
    return null;
  }

  static List<AudienceTargetType> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AudienceTargetType>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AudienceTargetType.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AudienceTargetType> mapFromJson(dynamic json) {
    final map = <String, AudienceTargetType>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AudienceTargetType.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AudienceTargetType-objects as value to a dart map
  static Map<String, List<AudienceTargetType>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AudienceTargetType>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AudienceTargetType.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}


class AudienceTargetTypeTargetTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const AudienceTargetTypeTargetTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const RETAILER_LOCATION = AudienceTargetTypeTargetTypeEnum._(r'RETAILER_LOCATION');
  static const OFFER_LOCATION = AudienceTargetTypeTargetTypeEnum._(r'OFFER_LOCATION');
  static const ACCOUNT = AudienceTargetTypeTargetTypeEnum._(r'ACCOUNT');
  static const REGION = AudienceTargetTypeTargetTypeEnum._(r'REGION');

  /// List of all possible values in this [enum][AudienceTargetTypeTargetTypeEnum].
  static const values = <AudienceTargetTypeTargetTypeEnum>[
    RETAILER_LOCATION,
    OFFER_LOCATION,
    ACCOUNT,
    REGION,
  ];

  static AudienceTargetTypeTargetTypeEnum? fromJson(dynamic value) => AudienceTargetTypeTargetTypeEnumTypeTransformer().decode(value);

  static List<AudienceTargetTypeTargetTypeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AudienceTargetTypeTargetTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AudienceTargetTypeTargetTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [AudienceTargetTypeTargetTypeEnum] to String,
/// and [decode] dynamic data back to [AudienceTargetTypeTargetTypeEnum].
class AudienceTargetTypeTargetTypeEnumTypeTransformer {
  factory AudienceTargetTypeTargetTypeEnumTypeTransformer() => _instance ??= const AudienceTargetTypeTargetTypeEnumTypeTransformer._();

  const AudienceTargetTypeTargetTypeEnumTypeTransformer._();

  String encode(AudienceTargetTypeTargetTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a AudienceTargetTypeTargetTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  AudienceTargetTypeTargetTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'RETAILER_LOCATION': return AudienceTargetTypeTargetTypeEnum.RETAILER_LOCATION;
        case r'OFFER_LOCATION': return AudienceTargetTypeTargetTypeEnum.OFFER_LOCATION;
        case r'ACCOUNT': return AudienceTargetTypeTargetTypeEnum.ACCOUNT;
        case r'REGION': return AudienceTargetTypeTargetTypeEnum.REGION;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [AudienceTargetTypeTargetTypeEnumTypeTransformer] instance.
  static AudienceTargetTypeTargetTypeEnumTypeTransformer? _instance;
}


