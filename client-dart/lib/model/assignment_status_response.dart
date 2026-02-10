//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class AssignmentStatusResponse {
  /// Returns a new [AssignmentStatusResponse] instance.
  AssignmentStatusResponse({
    this.assignmentStatusId,
    this.active,
    this.toDo,
    this.connection,
    this.method,
    this.status,
    this.closure,
    this.message,
    this.followUp,
    this.created,
    this.updated,
    this.notification,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? assignmentStatusId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? active;

  AssignmentStatusResponseToDoEnum? toDo;

  AssignmentStatusResponseConnectionEnum? connection;

  AssignmentStatusResponseMethodEnum? method;

  AssignmentStatusResponseStatusEnum? status;

  AssignmentStatusResponseClosureEnum? closure;

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
  int? followUp;

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
  int? updated;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  ScheduledNotificationShortResponse? notification;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AssignmentStatusResponse &&
    other.assignmentStatusId == assignmentStatusId &&
    other.active == active &&
    other.toDo == toDo &&
    other.connection == connection &&
    other.method == method &&
    other.status == status &&
    other.closure == closure &&
    other.message == message &&
    other.followUp == followUp &&
    other.created == created &&
    other.updated == updated &&
    other.notification == notification;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (assignmentStatusId == null ? 0 : assignmentStatusId!.hashCode) +
    (active == null ? 0 : active!.hashCode) +
    (toDo == null ? 0 : toDo!.hashCode) +
    (connection == null ? 0 : connection!.hashCode) +
    (method == null ? 0 : method!.hashCode) +
    (status == null ? 0 : status!.hashCode) +
    (closure == null ? 0 : closure!.hashCode) +
    (message == null ? 0 : message!.hashCode) +
    (followUp == null ? 0 : followUp!.hashCode) +
    (created == null ? 0 : created!.hashCode) +
    (updated == null ? 0 : updated!.hashCode) +
    (notification == null ? 0 : notification!.hashCode);

  @override
  String toString() => 'AssignmentStatusResponse[assignmentStatusId=$assignmentStatusId, active=$active, toDo=$toDo, connection=$connection, method=$method, status=$status, closure=$closure, message=$message, followUp=$followUp, created=$created, updated=$updated, notification=$notification]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.assignmentStatusId != null) {
      json[r'assignmentStatusId'] = this.assignmentStatusId;
    } else {
      json[r'assignmentStatusId'] = null;
    }
    if (this.active != null) {
      json[r'active'] = this.active;
    } else {
      json[r'active'] = null;
    }
    if (this.toDo != null) {
      json[r'toDo'] = this.toDo;
    } else {
      json[r'toDo'] = null;
    }
    if (this.connection != null) {
      json[r'connection'] = this.connection;
    } else {
      json[r'connection'] = null;
    }
    if (this.method != null) {
      json[r'method'] = this.method;
    } else {
      json[r'method'] = null;
    }
    if (this.status != null) {
      json[r'status'] = this.status;
    } else {
      json[r'status'] = null;
    }
    if (this.closure != null) {
      json[r'closure'] = this.closure;
    } else {
      json[r'closure'] = null;
    }
    if (this.message != null) {
      json[r'message'] = this.message;
    } else {
      json[r'message'] = null;
    }
    if (this.followUp != null) {
      json[r'followUp'] = this.followUp;
    } else {
      json[r'followUp'] = null;
    }
    if (this.created != null) {
      json[r'created'] = this.created;
    } else {
      json[r'created'] = null;
    }
    if (this.updated != null) {
      json[r'updated'] = this.updated;
    } else {
      json[r'updated'] = null;
    }
    if (this.notification != null) {
      json[r'notification'] = this.notification;
    } else {
      json[r'notification'] = null;
    }
    return json;
  }

  /// Returns a new [AssignmentStatusResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AssignmentStatusResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "AssignmentStatusResponse[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "AssignmentStatusResponse[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AssignmentStatusResponse(
        assignmentStatusId: mapValueOfType<int>(json, r'assignmentStatusId'),
        active: mapValueOfType<bool>(json, r'active'),
        toDo: AssignmentStatusResponseToDoEnum.fromJson(json[r'toDo']),
        connection: AssignmentStatusResponseConnectionEnum.fromJson(json[r'connection']),
        method: AssignmentStatusResponseMethodEnum.fromJson(json[r'method']),
        status: AssignmentStatusResponseStatusEnum.fromJson(json[r'status']),
        closure: AssignmentStatusResponseClosureEnum.fromJson(json[r'closure']),
        message: mapValueOfType<String>(json, r'message'),
        followUp: mapValueOfType<int>(json, r'followUp'),
        created: mapValueOfType<int>(json, r'created'),
        updated: mapValueOfType<int>(json, r'updated'),
        notification: ScheduledNotificationShortResponse.fromJson(json[r'notification']),
      );
    }
    return null;
  }

  static List<AssignmentStatusResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AssignmentStatusResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AssignmentStatusResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AssignmentStatusResponse> mapFromJson(dynamic json) {
    final map = <String, AssignmentStatusResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AssignmentStatusResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AssignmentStatusResponse-objects as value to a dart map
  static Map<String, List<AssignmentStatusResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AssignmentStatusResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AssignmentStatusResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}


class AssignmentStatusResponseToDoEnum {
  /// Instantiate a new enum with the provided [value].
  const AssignmentStatusResponseToDoEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const SITE_VISIT = AssignmentStatusResponseToDoEnum._(r'SITE_VISIT');
  static const PHONE = AssignmentStatusResponseToDoEnum._(r'PHONE');
  static const RECONTACT = AssignmentStatusResponseToDoEnum._(r'RECONTACT');
  static const RENEWAL = AssignmentStatusResponseToDoEnum._(r'RENEWAL');
  static const CREDIT = AssignmentStatusResponseToDoEnum._(r'CREDIT');

  /// List of all possible values in this [enum][AssignmentStatusResponseToDoEnum].
  static const values = <AssignmentStatusResponseToDoEnum>[
    SITE_VISIT,
    PHONE,
    RECONTACT,
    RENEWAL,
    CREDIT,
  ];

  static AssignmentStatusResponseToDoEnum? fromJson(dynamic value) => AssignmentStatusResponseToDoEnumTypeTransformer().decode(value);

  static List<AssignmentStatusResponseToDoEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AssignmentStatusResponseToDoEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AssignmentStatusResponseToDoEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [AssignmentStatusResponseToDoEnum] to String,
/// and [decode] dynamic data back to [AssignmentStatusResponseToDoEnum].
class AssignmentStatusResponseToDoEnumTypeTransformer {
  factory AssignmentStatusResponseToDoEnumTypeTransformer() => _instance ??= const AssignmentStatusResponseToDoEnumTypeTransformer._();

  const AssignmentStatusResponseToDoEnumTypeTransformer._();

  String encode(AssignmentStatusResponseToDoEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a AssignmentStatusResponseToDoEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  AssignmentStatusResponseToDoEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'SITE_VISIT': return AssignmentStatusResponseToDoEnum.SITE_VISIT;
        case r'PHONE': return AssignmentStatusResponseToDoEnum.PHONE;
        case r'RECONTACT': return AssignmentStatusResponseToDoEnum.RECONTACT;
        case r'RENEWAL': return AssignmentStatusResponseToDoEnum.RENEWAL;
        case r'CREDIT': return AssignmentStatusResponseToDoEnum.CREDIT;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [AssignmentStatusResponseToDoEnumTypeTransformer] instance.
  static AssignmentStatusResponseToDoEnumTypeTransformer? _instance;
}



class AssignmentStatusResponseConnectionEnum {
  /// Instantiate a new enum with the provided [value].
  const AssignmentStatusResponseConnectionEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const INITIAL = AssignmentStatusResponseConnectionEnum._(r'INITIAL');
  static const FOLLOW_UP = AssignmentStatusResponseConnectionEnum._(r'FOLLOW_UP');
  static const DECLINED = AssignmentStatusResponseConnectionEnum._(r'DECLINED');

  /// List of all possible values in this [enum][AssignmentStatusResponseConnectionEnum].
  static const values = <AssignmentStatusResponseConnectionEnum>[
    INITIAL,
    FOLLOW_UP,
    DECLINED,
  ];

  static AssignmentStatusResponseConnectionEnum? fromJson(dynamic value) => AssignmentStatusResponseConnectionEnumTypeTransformer().decode(value);

  static List<AssignmentStatusResponseConnectionEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AssignmentStatusResponseConnectionEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AssignmentStatusResponseConnectionEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [AssignmentStatusResponseConnectionEnum] to String,
/// and [decode] dynamic data back to [AssignmentStatusResponseConnectionEnum].
class AssignmentStatusResponseConnectionEnumTypeTransformer {
  factory AssignmentStatusResponseConnectionEnumTypeTransformer() => _instance ??= const AssignmentStatusResponseConnectionEnumTypeTransformer._();

  const AssignmentStatusResponseConnectionEnumTypeTransformer._();

  String encode(AssignmentStatusResponseConnectionEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a AssignmentStatusResponseConnectionEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  AssignmentStatusResponseConnectionEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'INITIAL': return AssignmentStatusResponseConnectionEnum.INITIAL;
        case r'FOLLOW_UP': return AssignmentStatusResponseConnectionEnum.FOLLOW_UP;
        case r'DECLINED': return AssignmentStatusResponseConnectionEnum.DECLINED;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [AssignmentStatusResponseConnectionEnumTypeTransformer] instance.
  static AssignmentStatusResponseConnectionEnumTypeTransformer? _instance;
}



class AssignmentStatusResponseMethodEnum {
  /// Instantiate a new enum with the provided [value].
  const AssignmentStatusResponseMethodEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const PHONE = AssignmentStatusResponseMethodEnum._(r'PHONE');
  static const SITE_VISIT = AssignmentStatusResponseMethodEnum._(r'SITE_VISIT');
  static const EMAIL = AssignmentStatusResponseMethodEnum._(r'EMAIL');

  /// List of all possible values in this [enum][AssignmentStatusResponseMethodEnum].
  static const values = <AssignmentStatusResponseMethodEnum>[
    PHONE,
    SITE_VISIT,
    EMAIL,
  ];

  static AssignmentStatusResponseMethodEnum? fromJson(dynamic value) => AssignmentStatusResponseMethodEnumTypeTransformer().decode(value);

  static List<AssignmentStatusResponseMethodEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AssignmentStatusResponseMethodEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AssignmentStatusResponseMethodEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [AssignmentStatusResponseMethodEnum] to String,
/// and [decode] dynamic data back to [AssignmentStatusResponseMethodEnum].
class AssignmentStatusResponseMethodEnumTypeTransformer {
  factory AssignmentStatusResponseMethodEnumTypeTransformer() => _instance ??= const AssignmentStatusResponseMethodEnumTypeTransformer._();

  const AssignmentStatusResponseMethodEnumTypeTransformer._();

  String encode(AssignmentStatusResponseMethodEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a AssignmentStatusResponseMethodEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  AssignmentStatusResponseMethodEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'PHONE': return AssignmentStatusResponseMethodEnum.PHONE;
        case r'SITE_VISIT': return AssignmentStatusResponseMethodEnum.SITE_VISIT;
        case r'EMAIL': return AssignmentStatusResponseMethodEnum.EMAIL;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [AssignmentStatusResponseMethodEnumTypeTransformer] instance.
  static AssignmentStatusResponseMethodEnumTypeTransformer? _instance;
}



class AssignmentStatusResponseStatusEnum {
  /// Instantiate a new enum with the provided [value].
  const AssignmentStatusResponseStatusEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const ARCHIVED = AssignmentStatusResponseStatusEnum._(r'ARCHIVED');
  static const SUBSCRIBED = AssignmentStatusResponseStatusEnum._(r'SUBSCRIBED');
  static const UNSUBSCRIBED = AssignmentStatusResponseStatusEnum._(r'UNSUBSCRIBED');
  static const CONTACTED = AssignmentStatusResponseStatusEnum._(r'CONTACTED');
  static const DECLINED = AssignmentStatusResponseStatusEnum._(r'DECLINED');
  static const NOT_CONTACTED = AssignmentStatusResponseStatusEnum._(r'NOT_CONTACTED');

  /// List of all possible values in this [enum][AssignmentStatusResponseStatusEnum].
  static const values = <AssignmentStatusResponseStatusEnum>[
    ARCHIVED,
    SUBSCRIBED,
    UNSUBSCRIBED,
    CONTACTED,
    DECLINED,
    NOT_CONTACTED,
  ];

  static AssignmentStatusResponseStatusEnum? fromJson(dynamic value) => AssignmentStatusResponseStatusEnumTypeTransformer().decode(value);

  static List<AssignmentStatusResponseStatusEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AssignmentStatusResponseStatusEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AssignmentStatusResponseStatusEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [AssignmentStatusResponseStatusEnum] to String,
/// and [decode] dynamic data back to [AssignmentStatusResponseStatusEnum].
class AssignmentStatusResponseStatusEnumTypeTransformer {
  factory AssignmentStatusResponseStatusEnumTypeTransformer() => _instance ??= const AssignmentStatusResponseStatusEnumTypeTransformer._();

  const AssignmentStatusResponseStatusEnumTypeTransformer._();

  String encode(AssignmentStatusResponseStatusEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a AssignmentStatusResponseStatusEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  AssignmentStatusResponseStatusEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'ARCHIVED': return AssignmentStatusResponseStatusEnum.ARCHIVED;
        case r'SUBSCRIBED': return AssignmentStatusResponseStatusEnum.SUBSCRIBED;
        case r'UNSUBSCRIBED': return AssignmentStatusResponseStatusEnum.UNSUBSCRIBED;
        case r'CONTACTED': return AssignmentStatusResponseStatusEnum.CONTACTED;
        case r'DECLINED': return AssignmentStatusResponseStatusEnum.DECLINED;
        case r'NOT_CONTACTED': return AssignmentStatusResponseStatusEnum.NOT_CONTACTED;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [AssignmentStatusResponseStatusEnumTypeTransformer] instance.
  static AssignmentStatusResponseStatusEnumTypeTransformer? _instance;
}



class AssignmentStatusResponseClosureEnum {
  /// Instantiate a new enum with the provided [value].
  const AssignmentStatusResponseClosureEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const PHONE = AssignmentStatusResponseClosureEnum._(r'PHONE');
  static const SITE_VISIT = AssignmentStatusResponseClosureEnum._(r'SITE_VISIT');
  static const PHONE_SITE = AssignmentStatusResponseClosureEnum._(r'PHONE_SITE');
  static const WEB = AssignmentStatusResponseClosureEnum._(r'WEB');

  /// List of all possible values in this [enum][AssignmentStatusResponseClosureEnum].
  static const values = <AssignmentStatusResponseClosureEnum>[
    PHONE,
    SITE_VISIT,
    PHONE_SITE,
    WEB,
  ];

  static AssignmentStatusResponseClosureEnum? fromJson(dynamic value) => AssignmentStatusResponseClosureEnumTypeTransformer().decode(value);

  static List<AssignmentStatusResponseClosureEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AssignmentStatusResponseClosureEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AssignmentStatusResponseClosureEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [AssignmentStatusResponseClosureEnum] to String,
/// and [decode] dynamic data back to [AssignmentStatusResponseClosureEnum].
class AssignmentStatusResponseClosureEnumTypeTransformer {
  factory AssignmentStatusResponseClosureEnumTypeTransformer() => _instance ??= const AssignmentStatusResponseClosureEnumTypeTransformer._();

  const AssignmentStatusResponseClosureEnumTypeTransformer._();

  String encode(AssignmentStatusResponseClosureEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a AssignmentStatusResponseClosureEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  AssignmentStatusResponseClosureEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'PHONE': return AssignmentStatusResponseClosureEnum.PHONE;
        case r'SITE_VISIT': return AssignmentStatusResponseClosureEnum.SITE_VISIT;
        case r'PHONE_SITE': return AssignmentStatusResponseClosureEnum.PHONE_SITE;
        case r'WEB': return AssignmentStatusResponseClosureEnum.WEB;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [AssignmentStatusResponseClosureEnumTypeTransformer] instance.
  static AssignmentStatusResponseClosureEnumTypeTransformer? _instance;
}


