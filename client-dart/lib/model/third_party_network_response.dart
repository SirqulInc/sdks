//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ThirdPartyNetworkResponse {
  /// Returns a new [ThirdPartyNetworkResponse] instance.
  ThirdPartyNetworkResponse({
    this.updated,
    this.created,
    this.active,
    this.name,
    this.description,
    this.networkUID,
    this.network,
    this.introspectionMethod,
    this.enableIntrospection,
    this.introspectionURL,
    this.introspectionParams,
    this.requiredRootField,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? updated;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? created;

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
  String? name;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? description;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? networkUID;

  ThirdPartyNetworkResponseNetworkEnum? network;

  ThirdPartyNetworkResponseIntrospectionMethodEnum? introspectionMethod;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? enableIntrospection;

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

  @override
  bool operator ==(Object other) => identical(this, other) || other is ThirdPartyNetworkResponse &&
    other.updated == updated &&
    other.created == created &&
    other.active == active &&
    other.name == name &&
    other.description == description &&
    other.networkUID == networkUID &&
    other.network == network &&
    other.introspectionMethod == introspectionMethod &&
    other.enableIntrospection == enableIntrospection &&
    other.introspectionURL == introspectionURL &&
    other.introspectionParams == introspectionParams &&
    other.requiredRootField == requiredRootField;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (updated == null ? 0 : updated!.hashCode) +
    (created == null ? 0 : created!.hashCode) +
    (active == null ? 0 : active!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (description == null ? 0 : description!.hashCode) +
    (networkUID == null ? 0 : networkUID!.hashCode) +
    (network == null ? 0 : network!.hashCode) +
    (introspectionMethod == null ? 0 : introspectionMethod!.hashCode) +
    (enableIntrospection == null ? 0 : enableIntrospection!.hashCode) +
    (introspectionURL == null ? 0 : introspectionURL!.hashCode) +
    (introspectionParams == null ? 0 : introspectionParams!.hashCode) +
    (requiredRootField == null ? 0 : requiredRootField!.hashCode);

  @override
  String toString() => 'ThirdPartyNetworkResponse[updated=$updated, created=$created, active=$active, name=$name, description=$description, networkUID=$networkUID, network=$network, introspectionMethod=$introspectionMethod, enableIntrospection=$enableIntrospection, introspectionURL=$introspectionURL, introspectionParams=$introspectionParams, requiredRootField=$requiredRootField]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.updated != null) {
      json[r'updated'] = this.updated;
    } else {
      json[r'updated'] = null;
    }
    if (this.created != null) {
      json[r'created'] = this.created;
    } else {
      json[r'created'] = null;
    }
    if (this.active != null) {
      json[r'active'] = this.active;
    } else {
      json[r'active'] = null;
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
    if (this.networkUID != null) {
      json[r'networkUID'] = this.networkUID;
    } else {
      json[r'networkUID'] = null;
    }
    if (this.network != null) {
      json[r'network'] = this.network;
    } else {
      json[r'network'] = null;
    }
    if (this.introspectionMethod != null) {
      json[r'introspectionMethod'] = this.introspectionMethod;
    } else {
      json[r'introspectionMethod'] = null;
    }
    if (this.enableIntrospection != null) {
      json[r'enableIntrospection'] = this.enableIntrospection;
    } else {
      json[r'enableIntrospection'] = null;
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
    return json;
  }

  /// Returns a new [ThirdPartyNetworkResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ThirdPartyNetworkResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ThirdPartyNetworkResponse[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ThirdPartyNetworkResponse[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ThirdPartyNetworkResponse(
        updated: mapValueOfType<int>(json, r'updated'),
        created: mapValueOfType<int>(json, r'created'),
        active: mapValueOfType<bool>(json, r'active'),
        name: mapValueOfType<String>(json, r'name'),
        description: mapValueOfType<String>(json, r'description'),
        networkUID: mapValueOfType<String>(json, r'networkUID'),
        network: ThirdPartyNetworkResponseNetworkEnum.fromJson(json[r'network']),
        introspectionMethod: ThirdPartyNetworkResponseIntrospectionMethodEnum.fromJson(json[r'introspectionMethod']),
        enableIntrospection: mapValueOfType<bool>(json, r'enableIntrospection'),
        introspectionURL: mapValueOfType<String>(json, r'introspectionURL'),
        introspectionParams: mapValueOfType<String>(json, r'introspectionParams'),
        requiredRootField: mapValueOfType<String>(json, r'requiredRootField'),
      );
    }
    return null;
  }

  static List<ThirdPartyNetworkResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ThirdPartyNetworkResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ThirdPartyNetworkResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ThirdPartyNetworkResponse> mapFromJson(dynamic json) {
    final map = <String, ThirdPartyNetworkResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ThirdPartyNetworkResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ThirdPartyNetworkResponse-objects as value to a dart map
  static Map<String, List<ThirdPartyNetworkResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ThirdPartyNetworkResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ThirdPartyNetworkResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}


class ThirdPartyNetworkResponseNetworkEnum {
  /// Instantiate a new enum with the provided [value].
  const ThirdPartyNetworkResponseNetworkEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const FACEBOOK = ThirdPartyNetworkResponseNetworkEnum._(r'FACEBOOK');
  static const TWITTER = ThirdPartyNetworkResponseNetworkEnum._(r'TWITTER');
  static const CLEAR = ThirdPartyNetworkResponseNetworkEnum._(r'CLEAR');
  static const USERNAME = ThirdPartyNetworkResponseNetworkEnum._(r'USERNAME');
  static const PHONE = ThirdPartyNetworkResponseNetworkEnum._(r'PHONE');
  static const UNKNOWN = ThirdPartyNetworkResponseNetworkEnum._(r'UNKNOWN');
  static const CUSTOM = ThirdPartyNetworkResponseNetworkEnum._(r'CUSTOM');

  /// List of all possible values in this [enum][ThirdPartyNetworkResponseNetworkEnum].
  static const values = <ThirdPartyNetworkResponseNetworkEnum>[
    FACEBOOK,
    TWITTER,
    CLEAR,
    USERNAME,
    PHONE,
    UNKNOWN,
    CUSTOM,
  ];

  static ThirdPartyNetworkResponseNetworkEnum? fromJson(dynamic value) => ThirdPartyNetworkResponseNetworkEnumTypeTransformer().decode(value);

  static List<ThirdPartyNetworkResponseNetworkEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ThirdPartyNetworkResponseNetworkEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ThirdPartyNetworkResponseNetworkEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [ThirdPartyNetworkResponseNetworkEnum] to String,
/// and [decode] dynamic data back to [ThirdPartyNetworkResponseNetworkEnum].
class ThirdPartyNetworkResponseNetworkEnumTypeTransformer {
  factory ThirdPartyNetworkResponseNetworkEnumTypeTransformer() => _instance ??= const ThirdPartyNetworkResponseNetworkEnumTypeTransformer._();

  const ThirdPartyNetworkResponseNetworkEnumTypeTransformer._();

  String encode(ThirdPartyNetworkResponseNetworkEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a ThirdPartyNetworkResponseNetworkEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ThirdPartyNetworkResponseNetworkEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'FACEBOOK': return ThirdPartyNetworkResponseNetworkEnum.FACEBOOK;
        case r'TWITTER': return ThirdPartyNetworkResponseNetworkEnum.TWITTER;
        case r'CLEAR': return ThirdPartyNetworkResponseNetworkEnum.CLEAR;
        case r'USERNAME': return ThirdPartyNetworkResponseNetworkEnum.USERNAME;
        case r'PHONE': return ThirdPartyNetworkResponseNetworkEnum.PHONE;
        case r'UNKNOWN': return ThirdPartyNetworkResponseNetworkEnum.UNKNOWN;
        case r'CUSTOM': return ThirdPartyNetworkResponseNetworkEnum.CUSTOM;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [ThirdPartyNetworkResponseNetworkEnumTypeTransformer] instance.
  static ThirdPartyNetworkResponseNetworkEnumTypeTransformer? _instance;
}



class ThirdPartyNetworkResponseIntrospectionMethodEnum {
  /// Instantiate a new enum with the provided [value].
  const ThirdPartyNetworkResponseIntrospectionMethodEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const GET = ThirdPartyNetworkResponseIntrospectionMethodEnum._(r'GET');
  static const HEAD = ThirdPartyNetworkResponseIntrospectionMethodEnum._(r'HEAD');
  static const POST = ThirdPartyNetworkResponseIntrospectionMethodEnum._(r'POST');
  static const PUT = ThirdPartyNetworkResponseIntrospectionMethodEnum._(r'PUT');
  static const PATCH = ThirdPartyNetworkResponseIntrospectionMethodEnum._(r'PATCH');
  static const DELETE = ThirdPartyNetworkResponseIntrospectionMethodEnum._(r'DELETE');
  static const OPTIONS = ThirdPartyNetworkResponseIntrospectionMethodEnum._(r'OPTIONS');
  static const TRACE = ThirdPartyNetworkResponseIntrospectionMethodEnum._(r'TRACE');

  /// List of all possible values in this [enum][ThirdPartyNetworkResponseIntrospectionMethodEnum].
  static const values = <ThirdPartyNetworkResponseIntrospectionMethodEnum>[
    GET,
    HEAD,
    POST,
    PUT,
    PATCH,
    DELETE,
    OPTIONS,
    TRACE,
  ];

  static ThirdPartyNetworkResponseIntrospectionMethodEnum? fromJson(dynamic value) => ThirdPartyNetworkResponseIntrospectionMethodEnumTypeTransformer().decode(value);

  static List<ThirdPartyNetworkResponseIntrospectionMethodEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ThirdPartyNetworkResponseIntrospectionMethodEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ThirdPartyNetworkResponseIntrospectionMethodEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [ThirdPartyNetworkResponseIntrospectionMethodEnum] to String,
/// and [decode] dynamic data back to [ThirdPartyNetworkResponseIntrospectionMethodEnum].
class ThirdPartyNetworkResponseIntrospectionMethodEnumTypeTransformer {
  factory ThirdPartyNetworkResponseIntrospectionMethodEnumTypeTransformer() => _instance ??= const ThirdPartyNetworkResponseIntrospectionMethodEnumTypeTransformer._();

  const ThirdPartyNetworkResponseIntrospectionMethodEnumTypeTransformer._();

  String encode(ThirdPartyNetworkResponseIntrospectionMethodEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a ThirdPartyNetworkResponseIntrospectionMethodEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ThirdPartyNetworkResponseIntrospectionMethodEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'GET': return ThirdPartyNetworkResponseIntrospectionMethodEnum.GET;
        case r'HEAD': return ThirdPartyNetworkResponseIntrospectionMethodEnum.HEAD;
        case r'POST': return ThirdPartyNetworkResponseIntrospectionMethodEnum.POST;
        case r'PUT': return ThirdPartyNetworkResponseIntrospectionMethodEnum.PUT;
        case r'PATCH': return ThirdPartyNetworkResponseIntrospectionMethodEnum.PATCH;
        case r'DELETE': return ThirdPartyNetworkResponseIntrospectionMethodEnum.DELETE;
        case r'OPTIONS': return ThirdPartyNetworkResponseIntrospectionMethodEnum.OPTIONS;
        case r'TRACE': return ThirdPartyNetworkResponseIntrospectionMethodEnum.TRACE;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [ThirdPartyNetworkResponseIntrospectionMethodEnumTypeTransformer] instance.
  static ThirdPartyNetworkResponseIntrospectionMethodEnumTypeTransformer? _instance;
}


