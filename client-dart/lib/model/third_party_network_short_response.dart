//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ThirdPartyNetworkShortResponse {
  /// Returns a new [ThirdPartyNetworkShortResponse] instance.
  ThirdPartyNetworkShortResponse({
    this.updated,
    this.created,
    this.active,
    this.name,
    this.description,
    this.networkUID,
    this.network,
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

  ThirdPartyNetworkShortResponseNetworkEnum? network;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ThirdPartyNetworkShortResponse &&
    other.updated == updated &&
    other.created == created &&
    other.active == active &&
    other.name == name &&
    other.description == description &&
    other.networkUID == networkUID &&
    other.network == network;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (updated == null ? 0 : updated!.hashCode) +
    (created == null ? 0 : created!.hashCode) +
    (active == null ? 0 : active!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (description == null ? 0 : description!.hashCode) +
    (networkUID == null ? 0 : networkUID!.hashCode) +
    (network == null ? 0 : network!.hashCode);

  @override
  String toString() => 'ThirdPartyNetworkShortResponse[updated=$updated, created=$created, active=$active, name=$name, description=$description, networkUID=$networkUID, network=$network]';

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
    return json;
  }

  /// Returns a new [ThirdPartyNetworkShortResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ThirdPartyNetworkShortResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ThirdPartyNetworkShortResponse[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ThirdPartyNetworkShortResponse[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ThirdPartyNetworkShortResponse(
        updated: mapValueOfType<int>(json, r'updated'),
        created: mapValueOfType<int>(json, r'created'),
        active: mapValueOfType<bool>(json, r'active'),
        name: mapValueOfType<String>(json, r'name'),
        description: mapValueOfType<String>(json, r'description'),
        networkUID: mapValueOfType<String>(json, r'networkUID'),
        network: ThirdPartyNetworkShortResponseNetworkEnum.fromJson(json[r'network']),
      );
    }
    return null;
  }

  static List<ThirdPartyNetworkShortResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ThirdPartyNetworkShortResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ThirdPartyNetworkShortResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ThirdPartyNetworkShortResponse> mapFromJson(dynamic json) {
    final map = <String, ThirdPartyNetworkShortResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ThirdPartyNetworkShortResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ThirdPartyNetworkShortResponse-objects as value to a dart map
  static Map<String, List<ThirdPartyNetworkShortResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ThirdPartyNetworkShortResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ThirdPartyNetworkShortResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}


class ThirdPartyNetworkShortResponseNetworkEnum {
  /// Instantiate a new enum with the provided [value].
  const ThirdPartyNetworkShortResponseNetworkEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const FACEBOOK = ThirdPartyNetworkShortResponseNetworkEnum._(r'FACEBOOK');
  static const TWITTER = ThirdPartyNetworkShortResponseNetworkEnum._(r'TWITTER');
  static const CLEAR = ThirdPartyNetworkShortResponseNetworkEnum._(r'CLEAR');
  static const USERNAME = ThirdPartyNetworkShortResponseNetworkEnum._(r'USERNAME');
  static const PHONE = ThirdPartyNetworkShortResponseNetworkEnum._(r'PHONE');
  static const UNKNOWN = ThirdPartyNetworkShortResponseNetworkEnum._(r'UNKNOWN');
  static const CUSTOM = ThirdPartyNetworkShortResponseNetworkEnum._(r'CUSTOM');

  /// List of all possible values in this [enum][ThirdPartyNetworkShortResponseNetworkEnum].
  static const values = <ThirdPartyNetworkShortResponseNetworkEnum>[
    FACEBOOK,
    TWITTER,
    CLEAR,
    USERNAME,
    PHONE,
    UNKNOWN,
    CUSTOM,
  ];

  static ThirdPartyNetworkShortResponseNetworkEnum? fromJson(dynamic value) => ThirdPartyNetworkShortResponseNetworkEnumTypeTransformer().decode(value);

  static List<ThirdPartyNetworkShortResponseNetworkEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ThirdPartyNetworkShortResponseNetworkEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ThirdPartyNetworkShortResponseNetworkEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [ThirdPartyNetworkShortResponseNetworkEnum] to String,
/// and [decode] dynamic data back to [ThirdPartyNetworkShortResponseNetworkEnum].
class ThirdPartyNetworkShortResponseNetworkEnumTypeTransformer {
  factory ThirdPartyNetworkShortResponseNetworkEnumTypeTransformer() => _instance ??= const ThirdPartyNetworkShortResponseNetworkEnumTypeTransformer._();

  const ThirdPartyNetworkShortResponseNetworkEnumTypeTransformer._();

  String encode(ThirdPartyNetworkShortResponseNetworkEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a ThirdPartyNetworkShortResponseNetworkEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ThirdPartyNetworkShortResponseNetworkEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'FACEBOOK': return ThirdPartyNetworkShortResponseNetworkEnum.FACEBOOK;
        case r'TWITTER': return ThirdPartyNetworkShortResponseNetworkEnum.TWITTER;
        case r'CLEAR': return ThirdPartyNetworkShortResponseNetworkEnum.CLEAR;
        case r'USERNAME': return ThirdPartyNetworkShortResponseNetworkEnum.USERNAME;
        case r'PHONE': return ThirdPartyNetworkShortResponseNetworkEnum.PHONE;
        case r'UNKNOWN': return ThirdPartyNetworkShortResponseNetworkEnum.UNKNOWN;
        case r'CUSTOM': return ThirdPartyNetworkShortResponseNetworkEnum.CUSTOM;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [ThirdPartyNetworkShortResponseNetworkEnumTypeTransformer] instance.
  static ThirdPartyNetworkShortResponseNetworkEnumTypeTransformer? _instance;
}


