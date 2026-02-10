//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ScheduledNotificationShortResponse {
  /// Returns a new [ScheduledNotificationShortResponse] instance.
  ScheduledNotificationShortResponse({
    this.scheduledNotificationId,
    this.active,
    this.status,
    this.type,
    this.name,
    this.message,
    this.groupingId,
    this.scheduledDate,
    this.startDate,
    this.endDate,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? scheduledNotificationId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? active;

  ScheduledNotificationShortResponseStatusEnum? status;

  ScheduledNotificationShortResponseTypeEnum? type;

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
  String? message;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? groupingId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? scheduledDate;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? startDate;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? endDate;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ScheduledNotificationShortResponse &&
    other.scheduledNotificationId == scheduledNotificationId &&
    other.active == active &&
    other.status == status &&
    other.type == type &&
    other.name == name &&
    other.message == message &&
    other.groupingId == groupingId &&
    other.scheduledDate == scheduledDate &&
    other.startDate == startDate &&
    other.endDate == endDate;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (scheduledNotificationId == null ? 0 : scheduledNotificationId!.hashCode) +
    (active == null ? 0 : active!.hashCode) +
    (status == null ? 0 : status!.hashCode) +
    (type == null ? 0 : type!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (message == null ? 0 : message!.hashCode) +
    (groupingId == null ? 0 : groupingId!.hashCode) +
    (scheduledDate == null ? 0 : scheduledDate!.hashCode) +
    (startDate == null ? 0 : startDate!.hashCode) +
    (endDate == null ? 0 : endDate!.hashCode);

  @override
  String toString() => 'ScheduledNotificationShortResponse[scheduledNotificationId=$scheduledNotificationId, active=$active, status=$status, type=$type, name=$name, message=$message, groupingId=$groupingId, scheduledDate=$scheduledDate, startDate=$startDate, endDate=$endDate]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.scheduledNotificationId != null) {
      json[r'scheduledNotificationId'] = this.scheduledNotificationId;
    } else {
      json[r'scheduledNotificationId'] = null;
    }
    if (this.active != null) {
      json[r'active'] = this.active;
    } else {
      json[r'active'] = null;
    }
    if (this.status != null) {
      json[r'status'] = this.status;
    } else {
      json[r'status'] = null;
    }
    if (this.type != null) {
      json[r'type'] = this.type;
    } else {
      json[r'type'] = null;
    }
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.message != null) {
      json[r'message'] = this.message;
    } else {
      json[r'message'] = null;
    }
    if (this.groupingId != null) {
      json[r'groupingId'] = this.groupingId;
    } else {
      json[r'groupingId'] = null;
    }
    if (this.scheduledDate != null) {
      json[r'scheduledDate'] = this.scheduledDate;
    } else {
      json[r'scheduledDate'] = null;
    }
    if (this.startDate != null) {
      json[r'startDate'] = this.startDate;
    } else {
      json[r'startDate'] = null;
    }
    if (this.endDate != null) {
      json[r'endDate'] = this.endDate;
    } else {
      json[r'endDate'] = null;
    }
    return json;
  }

  /// Returns a new [ScheduledNotificationShortResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ScheduledNotificationShortResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ScheduledNotificationShortResponse[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ScheduledNotificationShortResponse[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ScheduledNotificationShortResponse(
        scheduledNotificationId: mapValueOfType<int>(json, r'scheduledNotificationId'),
        active: mapValueOfType<bool>(json, r'active'),
        status: ScheduledNotificationShortResponseStatusEnum.fromJson(json[r'status']),
        type: ScheduledNotificationShortResponseTypeEnum.fromJson(json[r'type']),
        name: mapValueOfType<String>(json, r'name'),
        message: mapValueOfType<String>(json, r'message'),
        groupingId: mapValueOfType<String>(json, r'groupingId'),
        scheduledDate: mapValueOfType<int>(json, r'scheduledDate'),
        startDate: mapValueOfType<int>(json, r'startDate'),
        endDate: mapValueOfType<int>(json, r'endDate'),
      );
    }
    return null;
  }

  static List<ScheduledNotificationShortResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ScheduledNotificationShortResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ScheduledNotificationShortResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ScheduledNotificationShortResponse> mapFromJson(dynamic json) {
    final map = <String, ScheduledNotificationShortResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ScheduledNotificationShortResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ScheduledNotificationShortResponse-objects as value to a dart map
  static Map<String, List<ScheduledNotificationShortResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ScheduledNotificationShortResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ScheduledNotificationShortResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}


class ScheduledNotificationShortResponseStatusEnum {
  /// Instantiate a new enum with the provided [value].
  const ScheduledNotificationShortResponseStatusEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const NEW = ScheduledNotificationShortResponseStatusEnum._(r'NEW');
  static const ERROR = ScheduledNotificationShortResponseStatusEnum._(r'ERROR');
  static const COMPLETE = ScheduledNotificationShortResponseStatusEnum._(r'COMPLETE');
  static const PROCESSING = ScheduledNotificationShortResponseStatusEnum._(r'PROCESSING');
  static const TEMPLATE = ScheduledNotificationShortResponseStatusEnum._(r'TEMPLATE');

  /// List of all possible values in this [enum][ScheduledNotificationShortResponseStatusEnum].
  static const values = <ScheduledNotificationShortResponseStatusEnum>[
    NEW,
    ERROR,
    COMPLETE,
    PROCESSING,
    TEMPLATE,
  ];

  static ScheduledNotificationShortResponseStatusEnum? fromJson(dynamic value) => ScheduledNotificationShortResponseStatusEnumTypeTransformer().decode(value);

  static List<ScheduledNotificationShortResponseStatusEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ScheduledNotificationShortResponseStatusEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ScheduledNotificationShortResponseStatusEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [ScheduledNotificationShortResponseStatusEnum] to String,
/// and [decode] dynamic data back to [ScheduledNotificationShortResponseStatusEnum].
class ScheduledNotificationShortResponseStatusEnumTypeTransformer {
  factory ScheduledNotificationShortResponseStatusEnumTypeTransformer() => _instance ??= const ScheduledNotificationShortResponseStatusEnumTypeTransformer._();

  const ScheduledNotificationShortResponseStatusEnumTypeTransformer._();

  String encode(ScheduledNotificationShortResponseStatusEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a ScheduledNotificationShortResponseStatusEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ScheduledNotificationShortResponseStatusEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'NEW': return ScheduledNotificationShortResponseStatusEnum.NEW;
        case r'ERROR': return ScheduledNotificationShortResponseStatusEnum.ERROR;
        case r'COMPLETE': return ScheduledNotificationShortResponseStatusEnum.COMPLETE;
        case r'PROCESSING': return ScheduledNotificationShortResponseStatusEnum.PROCESSING;
        case r'TEMPLATE': return ScheduledNotificationShortResponseStatusEnum.TEMPLATE;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [ScheduledNotificationShortResponseStatusEnumTypeTransformer] instance.
  static ScheduledNotificationShortResponseStatusEnumTypeTransformer? _instance;
}



class ScheduledNotificationShortResponseTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const ScheduledNotificationShortResponseTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const HTTP = ScheduledNotificationShortResponseTypeEnum._(r'HTTP');
  static const SAVE = ScheduledNotificationShortResponseTypeEnum._(r'SAVE');
  static const EMAIL = ScheduledNotificationShortResponseTypeEnum._(r'EMAIL');
  static const SMS = ScheduledNotificationShortResponseTypeEnum._(r'SMS');
  static const APNS = ScheduledNotificationShortResponseTypeEnum._(r'APNS');
  static const GCM = ScheduledNotificationShortResponseTypeEnum._(r'GCM');
  static const PUSH = ScheduledNotificationShortResponseTypeEnum._(r'PUSH');
  static const MOBILE_NOTIFICATION = ScheduledNotificationShortResponseTypeEnum._(r'MOBILE_NOTIFICATION');

  /// List of all possible values in this [enum][ScheduledNotificationShortResponseTypeEnum].
  static const values = <ScheduledNotificationShortResponseTypeEnum>[
    HTTP,
    SAVE,
    EMAIL,
    SMS,
    APNS,
    GCM,
    PUSH,
    MOBILE_NOTIFICATION,
  ];

  static ScheduledNotificationShortResponseTypeEnum? fromJson(dynamic value) => ScheduledNotificationShortResponseTypeEnumTypeTransformer().decode(value);

  static List<ScheduledNotificationShortResponseTypeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ScheduledNotificationShortResponseTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ScheduledNotificationShortResponseTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [ScheduledNotificationShortResponseTypeEnum] to String,
/// and [decode] dynamic data back to [ScheduledNotificationShortResponseTypeEnum].
class ScheduledNotificationShortResponseTypeEnumTypeTransformer {
  factory ScheduledNotificationShortResponseTypeEnumTypeTransformer() => _instance ??= const ScheduledNotificationShortResponseTypeEnumTypeTransformer._();

  const ScheduledNotificationShortResponseTypeEnumTypeTransformer._();

  String encode(ScheduledNotificationShortResponseTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a ScheduledNotificationShortResponseTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ScheduledNotificationShortResponseTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'HTTP': return ScheduledNotificationShortResponseTypeEnum.HTTP;
        case r'SAVE': return ScheduledNotificationShortResponseTypeEnum.SAVE;
        case r'EMAIL': return ScheduledNotificationShortResponseTypeEnum.EMAIL;
        case r'SMS': return ScheduledNotificationShortResponseTypeEnum.SMS;
        case r'APNS': return ScheduledNotificationShortResponseTypeEnum.APNS;
        case r'GCM': return ScheduledNotificationShortResponseTypeEnum.GCM;
        case r'PUSH': return ScheduledNotificationShortResponseTypeEnum.PUSH;
        case r'MOBILE_NOTIFICATION': return ScheduledNotificationShortResponseTypeEnum.MOBILE_NOTIFICATION;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [ScheduledNotificationShortResponseTypeEnumTypeTransformer] instance.
  static ScheduledNotificationShortResponseTypeEnumTypeTransformer? _instance;
}


