//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class UserPermissionsListResponse {
  /// Returns a new [UserPermissionsListResponse] instance.
  UserPermissionsListResponse({
    this.action,
    this.visibility,
    this.publicPermissions,
    this.userPermissions = const [],
  });

  UserPermissionsListResponseActionEnum? action;

  UserPermissionsListResponseVisibilityEnum? visibility;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  PermissionResponse? publicPermissions;

  List<UserPermissionsResponse> userPermissions;

  @override
  bool operator ==(Object other) => identical(this, other) || other is UserPermissionsListResponse &&
    other.action == action &&
    other.visibility == visibility &&
    other.publicPermissions == publicPermissions &&
    _deepEquality.equals(other.userPermissions, userPermissions);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (action == null ? 0 : action!.hashCode) +
    (visibility == null ? 0 : visibility!.hashCode) +
    (publicPermissions == null ? 0 : publicPermissions!.hashCode) +
    (userPermissions.hashCode);

  @override
  String toString() => 'UserPermissionsListResponse[action=$action, visibility=$visibility, publicPermissions=$publicPermissions, userPermissions=$userPermissions]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.action != null) {
      json[r'action'] = this.action;
    } else {
      json[r'action'] = null;
    }
    if (this.visibility != null) {
      json[r'visibility'] = this.visibility;
    } else {
      json[r'visibility'] = null;
    }
    if (this.publicPermissions != null) {
      json[r'publicPermissions'] = this.publicPermissions;
    } else {
      json[r'publicPermissions'] = null;
    }
      json[r'userPermissions'] = this.userPermissions;
    return json;
  }

  /// Returns a new [UserPermissionsListResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static UserPermissionsListResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "UserPermissionsListResponse[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "UserPermissionsListResponse[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return UserPermissionsListResponse(
        action: UserPermissionsListResponseActionEnum.fromJson(json[r'action']),
        visibility: UserPermissionsListResponseVisibilityEnum.fromJson(json[r'visibility']),
        publicPermissions: PermissionResponse.fromJson(json[r'publicPermissions']),
        userPermissions: UserPermissionsResponse.listFromJson(json[r'userPermissions']),
      );
    }
    return null;
  }

  static List<UserPermissionsListResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UserPermissionsListResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UserPermissionsListResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, UserPermissionsListResponse> mapFromJson(dynamic json) {
    final map = <String, UserPermissionsListResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = UserPermissionsListResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of UserPermissionsListResponse-objects as value to a dart map
  static Map<String, List<UserPermissionsListResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<UserPermissionsListResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = UserPermissionsListResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}


class UserPermissionsListResponseActionEnum {
  /// Instantiate a new enum with the provided [value].
  const UserPermissionsListResponseActionEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const DATA = UserPermissionsListResponseActionEnum._(r'DATA');
  static const SAVE = UserPermissionsListResponseActionEnum._(r'SAVE');
  static const DELETE = UserPermissionsListResponseActionEnum._(r'DELETE');
  static const GET = UserPermissionsListResponseActionEnum._(r'GET');

  /// List of all possible values in this [enum][UserPermissionsListResponseActionEnum].
  static const values = <UserPermissionsListResponseActionEnum>[
    DATA,
    SAVE,
    DELETE,
    GET,
  ];

  static UserPermissionsListResponseActionEnum? fromJson(dynamic value) => UserPermissionsListResponseActionEnumTypeTransformer().decode(value);

  static List<UserPermissionsListResponseActionEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UserPermissionsListResponseActionEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UserPermissionsListResponseActionEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [UserPermissionsListResponseActionEnum] to String,
/// and [decode] dynamic data back to [UserPermissionsListResponseActionEnum].
class UserPermissionsListResponseActionEnumTypeTransformer {
  factory UserPermissionsListResponseActionEnumTypeTransformer() => _instance ??= const UserPermissionsListResponseActionEnumTypeTransformer._();

  const UserPermissionsListResponseActionEnumTypeTransformer._();

  String encode(UserPermissionsListResponseActionEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a UserPermissionsListResponseActionEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  UserPermissionsListResponseActionEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'DATA': return UserPermissionsListResponseActionEnum.DATA;
        case r'SAVE': return UserPermissionsListResponseActionEnum.SAVE;
        case r'DELETE': return UserPermissionsListResponseActionEnum.DELETE;
        case r'GET': return UserPermissionsListResponseActionEnum.GET;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [UserPermissionsListResponseActionEnumTypeTransformer] instance.
  static UserPermissionsListResponseActionEnumTypeTransformer? _instance;
}



class UserPermissionsListResponseVisibilityEnum {
  /// Instantiate a new enum with the provided [value].
  const UserPermissionsListResponseVisibilityEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const PUBLIC = UserPermissionsListResponseVisibilityEnum._(r'PUBLIC');
  static const PRIVATE = UserPermissionsListResponseVisibilityEnum._(r'PRIVATE');
  static const FRIENDS = UserPermissionsListResponseVisibilityEnum._(r'FRIENDS');

  /// List of all possible values in this [enum][UserPermissionsListResponseVisibilityEnum].
  static const values = <UserPermissionsListResponseVisibilityEnum>[
    PUBLIC,
    PRIVATE,
    FRIENDS,
  ];

  static UserPermissionsListResponseVisibilityEnum? fromJson(dynamic value) => UserPermissionsListResponseVisibilityEnumTypeTransformer().decode(value);

  static List<UserPermissionsListResponseVisibilityEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UserPermissionsListResponseVisibilityEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UserPermissionsListResponseVisibilityEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [UserPermissionsListResponseVisibilityEnum] to String,
/// and [decode] dynamic data back to [UserPermissionsListResponseVisibilityEnum].
class UserPermissionsListResponseVisibilityEnumTypeTransformer {
  factory UserPermissionsListResponseVisibilityEnumTypeTransformer() => _instance ??= const UserPermissionsListResponseVisibilityEnumTypeTransformer._();

  const UserPermissionsListResponseVisibilityEnumTypeTransformer._();

  String encode(UserPermissionsListResponseVisibilityEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a UserPermissionsListResponseVisibilityEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  UserPermissionsListResponseVisibilityEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'PUBLIC': return UserPermissionsListResponseVisibilityEnum.PUBLIC;
        case r'PRIVATE': return UserPermissionsListResponseVisibilityEnum.PRIVATE;
        case r'FRIENDS': return UserPermissionsListResponseVisibilityEnum.FRIENDS;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [UserPermissionsListResponseVisibilityEnumTypeTransformer] instance.
  static UserPermissionsListResponseVisibilityEnumTypeTransformer? _instance;
}


