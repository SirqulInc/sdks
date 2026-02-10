//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ServiceType {
  /// Returns a new [ServiceType] instance.
  ServiceType({
    this.id,
    this.active,
    this.valid,
    this.business,
    this.hub,
    this.name,
    this.additionalLoadTime,
    this.pickupAddressOverride,
    this.dropoffAddressOverride,
    this.pickupStartTimeOverride,
    this.pickupEndTimeOverride,
    this.dropoffStartTimeOverride,
    this.dropoffEndTimeOverride,
    this.dateOverride,
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
  Retailer? business;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  ServiceHub? hub;

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
  int? additionalLoadTime;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Address? pickupAddressOverride;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Address? dropoffAddressOverride;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  LocalTime? pickupStartTimeOverride;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  LocalTime? pickupEndTimeOverride;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  LocalTime? dropoffStartTimeOverride;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  LocalTime? dropoffEndTimeOverride;

  ServiceTypeDateOverrideEnum? dateOverride;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ServiceType &&
    other.id == id &&
    other.active == active &&
    other.valid == valid &&
    other.business == business &&
    other.hub == hub &&
    other.name == name &&
    other.additionalLoadTime == additionalLoadTime &&
    other.pickupAddressOverride == pickupAddressOverride &&
    other.dropoffAddressOverride == dropoffAddressOverride &&
    other.pickupStartTimeOverride == pickupStartTimeOverride &&
    other.pickupEndTimeOverride == pickupEndTimeOverride &&
    other.dropoffStartTimeOverride == dropoffStartTimeOverride &&
    other.dropoffEndTimeOverride == dropoffEndTimeOverride &&
    other.dateOverride == dateOverride;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (active == null ? 0 : active!.hashCode) +
    (valid == null ? 0 : valid!.hashCode) +
    (business == null ? 0 : business!.hashCode) +
    (hub == null ? 0 : hub!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (additionalLoadTime == null ? 0 : additionalLoadTime!.hashCode) +
    (pickupAddressOverride == null ? 0 : pickupAddressOverride!.hashCode) +
    (dropoffAddressOverride == null ? 0 : dropoffAddressOverride!.hashCode) +
    (pickupStartTimeOverride == null ? 0 : pickupStartTimeOverride!.hashCode) +
    (pickupEndTimeOverride == null ? 0 : pickupEndTimeOverride!.hashCode) +
    (dropoffStartTimeOverride == null ? 0 : dropoffStartTimeOverride!.hashCode) +
    (dropoffEndTimeOverride == null ? 0 : dropoffEndTimeOverride!.hashCode) +
    (dateOverride == null ? 0 : dateOverride!.hashCode);

  @override
  String toString() => 'ServiceType[id=$id, active=$active, valid=$valid, business=$business, hub=$hub, name=$name, additionalLoadTime=$additionalLoadTime, pickupAddressOverride=$pickupAddressOverride, dropoffAddressOverride=$dropoffAddressOverride, pickupStartTimeOverride=$pickupStartTimeOverride, pickupEndTimeOverride=$pickupEndTimeOverride, dropoffStartTimeOverride=$dropoffStartTimeOverride, dropoffEndTimeOverride=$dropoffEndTimeOverride, dateOverride=$dateOverride]';

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
    if (this.business != null) {
      json[r'business'] = this.business;
    } else {
      json[r'business'] = null;
    }
    if (this.hub != null) {
      json[r'hub'] = this.hub;
    } else {
      json[r'hub'] = null;
    }
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.additionalLoadTime != null) {
      json[r'additionalLoadTime'] = this.additionalLoadTime;
    } else {
      json[r'additionalLoadTime'] = null;
    }
    if (this.pickupAddressOverride != null) {
      json[r'pickupAddressOverride'] = this.pickupAddressOverride;
    } else {
      json[r'pickupAddressOverride'] = null;
    }
    if (this.dropoffAddressOverride != null) {
      json[r'dropoffAddressOverride'] = this.dropoffAddressOverride;
    } else {
      json[r'dropoffAddressOverride'] = null;
    }
    if (this.pickupStartTimeOverride != null) {
      json[r'pickupStartTimeOverride'] = this.pickupStartTimeOverride;
    } else {
      json[r'pickupStartTimeOverride'] = null;
    }
    if (this.pickupEndTimeOverride != null) {
      json[r'pickupEndTimeOverride'] = this.pickupEndTimeOverride;
    } else {
      json[r'pickupEndTimeOverride'] = null;
    }
    if (this.dropoffStartTimeOverride != null) {
      json[r'dropoffStartTimeOverride'] = this.dropoffStartTimeOverride;
    } else {
      json[r'dropoffStartTimeOverride'] = null;
    }
    if (this.dropoffEndTimeOverride != null) {
      json[r'dropoffEndTimeOverride'] = this.dropoffEndTimeOverride;
    } else {
      json[r'dropoffEndTimeOverride'] = null;
    }
    if (this.dateOverride != null) {
      json[r'dateOverride'] = this.dateOverride;
    } else {
      json[r'dateOverride'] = null;
    }
    return json;
  }

  /// Returns a new [ServiceType] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ServiceType? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ServiceType[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ServiceType[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ServiceType(
        id: mapValueOfType<int>(json, r'id'),
        active: mapValueOfType<bool>(json, r'active'),
        valid: mapValueOfType<bool>(json, r'valid'),
        business: Retailer.fromJson(json[r'business']),
        hub: ServiceHub.fromJson(json[r'hub']),
        name: mapValueOfType<String>(json, r'name'),
        additionalLoadTime: mapValueOfType<int>(json, r'additionalLoadTime'),
        pickupAddressOverride: Address.fromJson(json[r'pickupAddressOverride']),
        dropoffAddressOverride: Address.fromJson(json[r'dropoffAddressOverride']),
        pickupStartTimeOverride: LocalTime.fromJson(json[r'pickupStartTimeOverride']),
        pickupEndTimeOverride: LocalTime.fromJson(json[r'pickupEndTimeOverride']),
        dropoffStartTimeOverride: LocalTime.fromJson(json[r'dropoffStartTimeOverride']),
        dropoffEndTimeOverride: LocalTime.fromJson(json[r'dropoffEndTimeOverride']),
        dateOverride: ServiceTypeDateOverrideEnum.fromJson(json[r'dateOverride']),
      );
    }
    return null;
  }

  static List<ServiceType> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ServiceType>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ServiceType.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ServiceType> mapFromJson(dynamic json) {
    final map = <String, ServiceType>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ServiceType.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ServiceType-objects as value to a dart map
  static Map<String, List<ServiceType>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ServiceType>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ServiceType.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}


class ServiceTypeDateOverrideEnum {
  /// Instantiate a new enum with the provided [value].
  const ServiceTypeDateOverrideEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const NONE = ServiceTypeDateOverrideEnum._(r'NONE');
  static const PICKUP_START = ServiceTypeDateOverrideEnum._(r'PICKUP_START');
  static const PICKUP_END = ServiceTypeDateOverrideEnum._(r'PICKUP_END');
  static const DROPOFF_START = ServiceTypeDateOverrideEnum._(r'DROPOFF_START');
  static const DROPOFF_END = ServiceTypeDateOverrideEnum._(r'DROPOFF_END');

  /// List of all possible values in this [enum][ServiceTypeDateOverrideEnum].
  static const values = <ServiceTypeDateOverrideEnum>[
    NONE,
    PICKUP_START,
    PICKUP_END,
    DROPOFF_START,
    DROPOFF_END,
  ];

  static ServiceTypeDateOverrideEnum? fromJson(dynamic value) => ServiceTypeDateOverrideEnumTypeTransformer().decode(value);

  static List<ServiceTypeDateOverrideEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ServiceTypeDateOverrideEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ServiceTypeDateOverrideEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [ServiceTypeDateOverrideEnum] to String,
/// and [decode] dynamic data back to [ServiceTypeDateOverrideEnum].
class ServiceTypeDateOverrideEnumTypeTransformer {
  factory ServiceTypeDateOverrideEnumTypeTransformer() => _instance ??= const ServiceTypeDateOverrideEnumTypeTransformer._();

  const ServiceTypeDateOverrideEnumTypeTransformer._();

  String encode(ServiceTypeDateOverrideEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a ServiceTypeDateOverrideEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ServiceTypeDateOverrideEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'NONE': return ServiceTypeDateOverrideEnum.NONE;
        case r'PICKUP_START': return ServiceTypeDateOverrideEnum.PICKUP_START;
        case r'PICKUP_END': return ServiceTypeDateOverrideEnum.PICKUP_END;
        case r'DROPOFF_START': return ServiceTypeDateOverrideEnum.DROPOFF_START;
        case r'DROPOFF_END': return ServiceTypeDateOverrideEnum.DROPOFF_END;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [ServiceTypeDateOverrideEnumTypeTransformer] instance.
  static ServiceTypeDateOverrideEnumTypeTransformer? _instance;
}


