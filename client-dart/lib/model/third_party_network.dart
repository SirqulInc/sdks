//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ThirdPartyNetwork {
  /// Returns a new [ThirdPartyNetwork] instance.
  ThirdPartyNetwork({
    this.id,
    this.active,
    this.valid,
    this.networkUID,
    this.name,
    this.description,
    this.introspectionMethod,
    this.introspectionURL,
    this.introspectionParams,
    this.requiredRootField,
    this.billableEntity,
    this.supportedNetwork,
    this.enableIntrospection,
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
  String? networkUID;

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
  String? description;

  ThirdPartyNetworkIntrospectionMethodEnum? introspectionMethod;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? introspectionURL;

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
  String? requiredRootField;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  BillableEntity? billableEntity;

  ThirdPartyNetworkSupportedNetworkEnum? supportedNetwork;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? enableIntrospection;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ThirdPartyNetwork &&
    other.id == id &&
    other.active == active &&
    other.valid == valid &&
    other.networkUID == networkUID &&
    other.name == name &&
    other.description == description &&
    other.introspectionMethod == introspectionMethod &&
    other.introspectionURL == introspectionURL &&
    other.introspectionParams == introspectionParams &&
    other.requiredRootField == requiredRootField &&
    other.billableEntity == billableEntity &&
    other.supportedNetwork == supportedNetwork &&
    other.enableIntrospection == enableIntrospection;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (active == null ? 0 : active!.hashCode) +
    (valid == null ? 0 : valid!.hashCode) +
    (networkUID == null ? 0 : networkUID!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (description == null ? 0 : description!.hashCode) +
    (introspectionMethod == null ? 0 : introspectionMethod!.hashCode) +
    (introspectionURL == null ? 0 : introspectionURL!.hashCode) +
    (introspectionParams == null ? 0 : introspectionParams!.hashCode) +
    (requiredRootField == null ? 0 : requiredRootField!.hashCode) +
    (billableEntity == null ? 0 : billableEntity!.hashCode) +
    (supportedNetwork == null ? 0 : supportedNetwork!.hashCode) +
    (enableIntrospection == null ? 0 : enableIntrospection!.hashCode);

  @override
  String toString() => 'ThirdPartyNetwork[id=$id, active=$active, valid=$valid, networkUID=$networkUID, name=$name, description=$description, introspectionMethod=$introspectionMethod, introspectionURL=$introspectionURL, introspectionParams=$introspectionParams, requiredRootField=$requiredRootField, billableEntity=$billableEntity, supportedNetwork=$supportedNetwork, enableIntrospection=$enableIntrospection]';

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
    if (this.networkUID != null) {
      json[r'networkUID'] = this.networkUID;
    } else {
      json[r'networkUID'] = null;
    }
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.description != null) {
      json[r'description'] = this.description;
    } else {
      json[r'description'] = null;
    }
    if (this.introspectionMethod != null) {
      json[r'introspectionMethod'] = this.introspectionMethod;
    } else {
      json[r'introspectionMethod'] = null;
    }
    if (this.introspectionURL != null) {
      json[r'introspectionURL'] = this.introspectionURL;
    } else {
      json[r'introspectionURL'] = null;
    }
    if (this.introspectionParams != null) {
      json[r'introspectionParams'] = this.introspectionParams;
    } else {
      json[r'introspectionParams'] = null;
    }
    if (this.requiredRootField != null) {
      json[r'requiredRootField'] = this.requiredRootField;
    } else {
      json[r'requiredRootField'] = null;
    }
    if (this.billableEntity != null) {
      json[r'billableEntity'] = this.billableEntity;
    } else {
      json[r'billableEntity'] = null;
    }
    if (this.supportedNetwork != null) {
      json[r'supportedNetwork'] = this.supportedNetwork;
    } else {
      json[r'supportedNetwork'] = null;
    }
    if (this.enableIntrospection != null) {
      json[r'enableIntrospection'] = this.enableIntrospection;
    } else {
      json[r'enableIntrospection'] = null;
    }
    return json;
  }

  /// Returns a new [ThirdPartyNetwork] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ThirdPartyNetwork? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ThirdPartyNetwork[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ThirdPartyNetwork[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ThirdPartyNetwork(
        id: mapValueOfType<int>(json, r'id'),
        active: mapValueOfType<bool>(json, r'active'),
        valid: mapValueOfType<bool>(json, r'valid'),
        networkUID: mapValueOfType<String>(json, r'networkUID'),
        name: mapValueOfType<String>(json, r'name'),
        description: mapValueOfType<String>(json, r'description'),
        introspectionMethod: ThirdPartyNetworkIntrospectionMethodEnum.fromJson(json[r'introspectionMethod']),
        introspectionURL: mapValueOfType<String>(json, r'introspectionURL'),
        introspectionParams: mapValueOfType<String>(json, r'introspectionParams'),
        requiredRootField: mapValueOfType<String>(json, r'requiredRootField'),
        billableEntity: BillableEntity.fromJson(json[r'billableEntity']),
        supportedNetwork: ThirdPartyNetworkSupportedNetworkEnum.fromJson(json[r'supportedNetwork']),
        enableIntrospection: mapValueOfType<bool>(json, r'enableIntrospection'),
      );
    }
    return null;
  }

  static List<ThirdPartyNetwork> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ThirdPartyNetwork>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ThirdPartyNetwork.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ThirdPartyNetwork> mapFromJson(dynamic json) {
    final map = <String, ThirdPartyNetwork>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ThirdPartyNetwork.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ThirdPartyNetwork-objects as value to a dart map
  static Map<String, List<ThirdPartyNetwork>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ThirdPartyNetwork>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ThirdPartyNetwork.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}


class ThirdPartyNetworkIntrospectionMethodEnum {
  /// Instantiate a new enum with the provided [value].
  const ThirdPartyNetworkIntrospectionMethodEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const GET = ThirdPartyNetworkIntrospectionMethodEnum._(r'GET');
  static const HEAD = ThirdPartyNetworkIntrospectionMethodEnum._(r'HEAD');
  static const POST = ThirdPartyNetworkIntrospectionMethodEnum._(r'POST');
  static const PUT = ThirdPartyNetworkIntrospectionMethodEnum._(r'PUT');
  static const PATCH = ThirdPartyNetworkIntrospectionMethodEnum._(r'PATCH');
  static const DELETE = ThirdPartyNetworkIntrospectionMethodEnum._(r'DELETE');
  static const OPTIONS = ThirdPartyNetworkIntrospectionMethodEnum._(r'OPTIONS');
  static const TRACE = ThirdPartyNetworkIntrospectionMethodEnum._(r'TRACE');

  /// List of all possible values in this [enum][ThirdPartyNetworkIntrospectionMethodEnum].
  static const values = <ThirdPartyNetworkIntrospectionMethodEnum>[
    GET,
    HEAD,
    POST,
    PUT,
    PATCH,
    DELETE,
    OPTIONS,
    TRACE,
  ];

  static ThirdPartyNetworkIntrospectionMethodEnum? fromJson(dynamic value) => ThirdPartyNetworkIntrospectionMethodEnumTypeTransformer().decode(value);

  static List<ThirdPartyNetworkIntrospectionMethodEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ThirdPartyNetworkIntrospectionMethodEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ThirdPartyNetworkIntrospectionMethodEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [ThirdPartyNetworkIntrospectionMethodEnum] to String,
/// and [decode] dynamic data back to [ThirdPartyNetworkIntrospectionMethodEnum].
class ThirdPartyNetworkIntrospectionMethodEnumTypeTransformer {
  factory ThirdPartyNetworkIntrospectionMethodEnumTypeTransformer() => _instance ??= const ThirdPartyNetworkIntrospectionMethodEnumTypeTransformer._();

  const ThirdPartyNetworkIntrospectionMethodEnumTypeTransformer._();

  String encode(ThirdPartyNetworkIntrospectionMethodEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a ThirdPartyNetworkIntrospectionMethodEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ThirdPartyNetworkIntrospectionMethodEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'GET': return ThirdPartyNetworkIntrospectionMethodEnum.GET;
        case r'HEAD': return ThirdPartyNetworkIntrospectionMethodEnum.HEAD;
        case r'POST': return ThirdPartyNetworkIntrospectionMethodEnum.POST;
        case r'PUT': return ThirdPartyNetworkIntrospectionMethodEnum.PUT;
        case r'PATCH': return ThirdPartyNetworkIntrospectionMethodEnum.PATCH;
        case r'DELETE': return ThirdPartyNetworkIntrospectionMethodEnum.DELETE;
        case r'OPTIONS': return ThirdPartyNetworkIntrospectionMethodEnum.OPTIONS;
        case r'TRACE': return ThirdPartyNetworkIntrospectionMethodEnum.TRACE;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [ThirdPartyNetworkIntrospectionMethodEnumTypeTransformer] instance.
  static ThirdPartyNetworkIntrospectionMethodEnumTypeTransformer? _instance;
}



class ThirdPartyNetworkSupportedNetworkEnum {
  /// Instantiate a new enum with the provided [value].
  const ThirdPartyNetworkSupportedNetworkEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const FACEBOOK = ThirdPartyNetworkSupportedNetworkEnum._(r'FACEBOOK');
  static const TWITTER = ThirdPartyNetworkSupportedNetworkEnum._(r'TWITTER');
  static const CLEAR = ThirdPartyNetworkSupportedNetworkEnum._(r'CLEAR');
  static const USERNAME = ThirdPartyNetworkSupportedNetworkEnum._(r'USERNAME');
  static const PHONE = ThirdPartyNetworkSupportedNetworkEnum._(r'PHONE');
  static const UNKNOWN = ThirdPartyNetworkSupportedNetworkEnum._(r'UNKNOWN');
  static const CUSTOM = ThirdPartyNetworkSupportedNetworkEnum._(r'CUSTOM');

  /// List of all possible values in this [enum][ThirdPartyNetworkSupportedNetworkEnum].
  static const values = <ThirdPartyNetworkSupportedNetworkEnum>[
    FACEBOOK,
    TWITTER,
    CLEAR,
    USERNAME,
    PHONE,
    UNKNOWN,
    CUSTOM,
  ];

  static ThirdPartyNetworkSupportedNetworkEnum? fromJson(dynamic value) => ThirdPartyNetworkSupportedNetworkEnumTypeTransformer().decode(value);

  static List<ThirdPartyNetworkSupportedNetworkEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ThirdPartyNetworkSupportedNetworkEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ThirdPartyNetworkSupportedNetworkEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [ThirdPartyNetworkSupportedNetworkEnum] to String,
/// and [decode] dynamic data back to [ThirdPartyNetworkSupportedNetworkEnum].
class ThirdPartyNetworkSupportedNetworkEnumTypeTransformer {
  factory ThirdPartyNetworkSupportedNetworkEnumTypeTransformer() => _instance ??= const ThirdPartyNetworkSupportedNetworkEnumTypeTransformer._();

  const ThirdPartyNetworkSupportedNetworkEnumTypeTransformer._();

  String encode(ThirdPartyNetworkSupportedNetworkEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a ThirdPartyNetworkSupportedNetworkEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ThirdPartyNetworkSupportedNetworkEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'FACEBOOK': return ThirdPartyNetworkSupportedNetworkEnum.FACEBOOK;
        case r'TWITTER': return ThirdPartyNetworkSupportedNetworkEnum.TWITTER;
        case r'CLEAR': return ThirdPartyNetworkSupportedNetworkEnum.CLEAR;
        case r'USERNAME': return ThirdPartyNetworkSupportedNetworkEnum.USERNAME;
        case r'PHONE': return ThirdPartyNetworkSupportedNetworkEnum.PHONE;
        case r'UNKNOWN': return ThirdPartyNetworkSupportedNetworkEnum.UNKNOWN;
        case r'CUSTOM': return ThirdPartyNetworkSupportedNetworkEnum.CUSTOM;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [ThirdPartyNetworkSupportedNetworkEnumTypeTransformer] instance.
  static ThirdPartyNetworkSupportedNetworkEnumTypeTransformer? _instance;
}


