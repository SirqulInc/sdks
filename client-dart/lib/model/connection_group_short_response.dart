//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ConnectionGroupShortResponse {
  /// Returns a new [ConnectionGroupShortResponse] instance.
  ConnectionGroupShortResponse({
    this.valid,
    this.message,
    this.version,
    this.serializeNulls,
    this.startTimeLog,
    this.errorCode,
    this.request = const [],
    this.connectionGroupId,
    this.name,
    this.groupType,
    this.thumbnailURL,
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
  int? connectionGroupId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  ConnectionGroupShortResponseGroupTypeEnum? groupType;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? thumbnailURL;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? returning;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ConnectionGroupShortResponse &&
    other.valid == valid &&
    other.message == message &&
    other.version == version &&
    other.serializeNulls == serializeNulls &&
    other.startTimeLog == startTimeLog &&
    other.errorCode == errorCode &&
    _deepEquality.equals(other.request, request) &&
    other.connectionGroupId == connectionGroupId &&
    other.name == name &&
    other.groupType == groupType &&
    other.thumbnailURL == thumbnailURL &&
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
    (connectionGroupId == null ? 0 : connectionGroupId!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (groupType == null ? 0 : groupType!.hashCode) +
    (thumbnailURL == null ? 0 : thumbnailURL!.hashCode) +
    (returning == null ? 0 : returning!.hashCode);

  @override
  String toString() => 'ConnectionGroupShortResponse[valid=$valid, message=$message, version=$version, serializeNulls=$serializeNulls, startTimeLog=$startTimeLog, errorCode=$errorCode, request=$request, connectionGroupId=$connectionGroupId, name=$name, groupType=$groupType, thumbnailURL=$thumbnailURL, returning=$returning]';

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
    if (this.connectionGroupId != null) {
      json[r'connectionGroupId'] = this.connectionGroupId;
    } else {
      json[r'connectionGroupId'] = null;
    }
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.groupType != null) {
      json[r'groupType'] = this.groupType;
    } else {
      json[r'groupType'] = null;
    }
    if (this.thumbnailURL != null) {
      json[r'thumbnailURL'] = this.thumbnailURL;
    } else {
      json[r'thumbnailURL'] = null;
    }
    if (this.returning != null) {
      json[r'returning'] = this.returning;
    } else {
      json[r'returning'] = null;
    }
    return json;
  }

  /// Returns a new [ConnectionGroupShortResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ConnectionGroupShortResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ConnectionGroupShortResponse[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ConnectionGroupShortResponse[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ConnectionGroupShortResponse(
        valid: mapValueOfType<bool>(json, r'valid'),
        message: mapValueOfType<String>(json, r'message'),
        version: mapValueOfType<double>(json, r'version'),
        serializeNulls: mapValueOfType<bool>(json, r'serializeNulls'),
        startTimeLog: mapValueOfType<int>(json, r'startTimeLog'),
        errorCode: mapValueOfType<String>(json, r'errorCode'),
        request: NameStringValueResponse.listFromJson(json[r'request']),
        connectionGroupId: mapValueOfType<int>(json, r'connectionGroupId'),
        name: mapValueOfType<String>(json, r'name'),
        groupType: ConnectionGroupShortResponseGroupTypeEnum.fromJson(json[r'groupType']),
        thumbnailURL: mapValueOfType<String>(json, r'thumbnailURL'),
        returning: mapValueOfType<String>(json, r'returning'),
      );
    }
    return null;
  }

  static List<ConnectionGroupShortResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ConnectionGroupShortResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ConnectionGroupShortResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ConnectionGroupShortResponse> mapFromJson(dynamic json) {
    final map = <String, ConnectionGroupShortResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ConnectionGroupShortResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ConnectionGroupShortResponse-objects as value to a dart map
  static Map<String, List<ConnectionGroupShortResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ConnectionGroupShortResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ConnectionGroupShortResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}


class ConnectionGroupShortResponseGroupTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const ConnectionGroupShortResponseGroupTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const PRIVATE = ConnectionGroupShortResponseGroupTypeEnum._(r'PRIVATE');
  static const FRIENDS = ConnectionGroupShortResponseGroupTypeEnum._(r'FRIENDS');
  static const TRUSTED = ConnectionGroupShortResponseGroupTypeEnum._(r'TRUSTED');
  static const BLOCKED = ConnectionGroupShortResponseGroupTypeEnum._(r'BLOCKED');
  static const FOLLOWERS = ConnectionGroupShortResponseGroupTypeEnum._(r'FOLLOWERS');
  static const FOLLOWING = ConnectionGroupShortResponseGroupTypeEnum._(r'FOLLOWING');
  static const PENDING = ConnectionGroupShortResponseGroupTypeEnum._(r'PENDING');
  static const REQUEST = ConnectionGroupShortResponseGroupTypeEnum._(r'REQUEST');

  /// List of all possible values in this [enum][ConnectionGroupShortResponseGroupTypeEnum].
  static const values = <ConnectionGroupShortResponseGroupTypeEnum>[
    PRIVATE,
    FRIENDS,
    TRUSTED,
    BLOCKED,
    FOLLOWERS,
    FOLLOWING,
    PENDING,
    REQUEST,
  ];

  static ConnectionGroupShortResponseGroupTypeEnum? fromJson(dynamic value) => ConnectionGroupShortResponseGroupTypeEnumTypeTransformer().decode(value);

  static List<ConnectionGroupShortResponseGroupTypeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ConnectionGroupShortResponseGroupTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ConnectionGroupShortResponseGroupTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [ConnectionGroupShortResponseGroupTypeEnum] to String,
/// and [decode] dynamic data back to [ConnectionGroupShortResponseGroupTypeEnum].
class ConnectionGroupShortResponseGroupTypeEnumTypeTransformer {
  factory ConnectionGroupShortResponseGroupTypeEnumTypeTransformer() => _instance ??= const ConnectionGroupShortResponseGroupTypeEnumTypeTransformer._();

  const ConnectionGroupShortResponseGroupTypeEnumTypeTransformer._();

  String encode(ConnectionGroupShortResponseGroupTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a ConnectionGroupShortResponseGroupTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ConnectionGroupShortResponseGroupTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'PRIVATE': return ConnectionGroupShortResponseGroupTypeEnum.PRIVATE;
        case r'FRIENDS': return ConnectionGroupShortResponseGroupTypeEnum.FRIENDS;
        case r'TRUSTED': return ConnectionGroupShortResponseGroupTypeEnum.TRUSTED;
        case r'BLOCKED': return ConnectionGroupShortResponseGroupTypeEnum.BLOCKED;
        case r'FOLLOWERS': return ConnectionGroupShortResponseGroupTypeEnum.FOLLOWERS;
        case r'FOLLOWING': return ConnectionGroupShortResponseGroupTypeEnum.FOLLOWING;
        case r'PENDING': return ConnectionGroupShortResponseGroupTypeEnum.PENDING;
        case r'REQUEST': return ConnectionGroupShortResponseGroupTypeEnum.REQUEST;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [ConnectionGroupShortResponseGroupTypeEnumTypeTransformer] instance.
  static ConnectionGroupShortResponseGroupTypeEnumTypeTransformer? _instance;
}


