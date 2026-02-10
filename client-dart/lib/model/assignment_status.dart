//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class AssignmentStatus {
  /// Returns a new [AssignmentStatus] instance.
  AssignmentStatus({
    this.id,
    this.active,
    this.valid,
    this.assignment,
    this.creator,
    this.toDo,
    this.connection,
    this.method,
    this.status,
    this.closure,
    this.message,
    this.followUp,
    this.notification,
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
  Assignment? assignment;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Account? creator;

  AssignmentStatusToDoEnum? toDo;

  AssignmentStatusConnectionEnum? connection;

  AssignmentStatusMethodEnum? method;

  AssignmentStatusStatusEnum? status;

  AssignmentStatusClosureEnum? closure;

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
  DateTime? followUp;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  ScheduledNotification? notification;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AssignmentStatus &&
    other.id == id &&
    other.active == active &&
    other.valid == valid &&
    other.assignment == assignment &&
    other.creator == creator &&
    other.toDo == toDo &&
    other.connection == connection &&
    other.method == method &&
    other.status == status &&
    other.closure == closure &&
    other.message == message &&
    other.followUp == followUp &&
    other.notification == notification;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (active == null ? 0 : active!.hashCode) +
    (valid == null ? 0 : valid!.hashCode) +
    (assignment == null ? 0 : assignment!.hashCode) +
    (creator == null ? 0 : creator!.hashCode) +
    (toDo == null ? 0 : toDo!.hashCode) +
    (connection == null ? 0 : connection!.hashCode) +
    (method == null ? 0 : method!.hashCode) +
    (status == null ? 0 : status!.hashCode) +
    (closure == null ? 0 : closure!.hashCode) +
    (message == null ? 0 : message!.hashCode) +
    (followUp == null ? 0 : followUp!.hashCode) +
    (notification == null ? 0 : notification!.hashCode);

  @override
  String toString() => 'AssignmentStatus[id=$id, active=$active, valid=$valid, assignment=$assignment, creator=$creator, toDo=$toDo, connection=$connection, method=$method, status=$status, closure=$closure, message=$message, followUp=$followUp, notification=$notification]';

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
    if (this.assignment != null) {
      json[r'assignment'] = this.assignment;
    } else {
      json[r'assignment'] = null;
    }
    if (this.creator != null) {
      json[r'creator'] = this.creator;
    } else {
      json[r'creator'] = null;
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
      json[r'followUp'] = this.followUp!.toUtc().toIso8601String();
    } else {
      json[r'followUp'] = null;
    }
    if (this.notification != null) {
      json[r'notification'] = this.notification;
    } else {
      json[r'notification'] = null;
    }
    return json;
  }

  /// Returns a new [AssignmentStatus] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AssignmentStatus? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "AssignmentStatus[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "AssignmentStatus[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AssignmentStatus(
        id: mapValueOfType<int>(json, r'id'),
        active: mapValueOfType<bool>(json, r'active'),
        valid: mapValueOfType<bool>(json, r'valid'),
        assignment: Assignment.fromJson(json[r'assignment']),
        creator: Account.fromJson(json[r'creator']),
        toDo: AssignmentStatusToDoEnum.fromJson(json[r'toDo']),
        connection: AssignmentStatusConnectionEnum.fromJson(json[r'connection']),
        method: AssignmentStatusMethodEnum.fromJson(json[r'method']),
        status: AssignmentStatusStatusEnum.fromJson(json[r'status']),
        closure: AssignmentStatusClosureEnum.fromJson(json[r'closure']),
        message: mapValueOfType<String>(json, r'message'),
        followUp: mapDateTime(json, r'followUp', r''),
        notification: ScheduledNotification.fromJson(json[r'notification']),
      );
    }
    return null;
  }

  static List<AssignmentStatus> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AssignmentStatus>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AssignmentStatus.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AssignmentStatus> mapFromJson(dynamic json) {
    final map = <String, AssignmentStatus>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AssignmentStatus.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AssignmentStatus-objects as value to a dart map
  static Map<String, List<AssignmentStatus>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AssignmentStatus>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AssignmentStatus.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}


class AssignmentStatusToDoEnum {
  /// Instantiate a new enum with the provided [value].
  const AssignmentStatusToDoEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const SITE_VISIT = AssignmentStatusToDoEnum._(r'SITE_VISIT');
  static const PHONE = AssignmentStatusToDoEnum._(r'PHONE');
  static const RECONTACT = AssignmentStatusToDoEnum._(r'RECONTACT');
  static const RENEWAL = AssignmentStatusToDoEnum._(r'RENEWAL');
  static const CREDIT = AssignmentStatusToDoEnum._(r'CREDIT');

  /// List of all possible values in this [enum][AssignmentStatusToDoEnum].
  static const values = <AssignmentStatusToDoEnum>[
    SITE_VISIT,
    PHONE,
    RECONTACT,
    RENEWAL,
    CREDIT,
  ];

  static AssignmentStatusToDoEnum? fromJson(dynamic value) => AssignmentStatusToDoEnumTypeTransformer().decode(value);

  static List<AssignmentStatusToDoEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AssignmentStatusToDoEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AssignmentStatusToDoEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [AssignmentStatusToDoEnum] to String,
/// and [decode] dynamic data back to [AssignmentStatusToDoEnum].
class AssignmentStatusToDoEnumTypeTransformer {
  factory AssignmentStatusToDoEnumTypeTransformer() => _instance ??= const AssignmentStatusToDoEnumTypeTransformer._();

  const AssignmentStatusToDoEnumTypeTransformer._();

  String encode(AssignmentStatusToDoEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a AssignmentStatusToDoEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  AssignmentStatusToDoEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'SITE_VISIT': return AssignmentStatusToDoEnum.SITE_VISIT;
        case r'PHONE': return AssignmentStatusToDoEnum.PHONE;
        case r'RECONTACT': return AssignmentStatusToDoEnum.RECONTACT;
        case r'RENEWAL': return AssignmentStatusToDoEnum.RENEWAL;
        case r'CREDIT': return AssignmentStatusToDoEnum.CREDIT;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [AssignmentStatusToDoEnumTypeTransformer] instance.
  static AssignmentStatusToDoEnumTypeTransformer? _instance;
}



class AssignmentStatusConnectionEnum {
  /// Instantiate a new enum with the provided [value].
  const AssignmentStatusConnectionEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const INITIAL = AssignmentStatusConnectionEnum._(r'INITIAL');
  static const FOLLOW_UP = AssignmentStatusConnectionEnum._(r'FOLLOW_UP');
  static const DECLINED = AssignmentStatusConnectionEnum._(r'DECLINED');

  /// List of all possible values in this [enum][AssignmentStatusConnectionEnum].
  static const values = <AssignmentStatusConnectionEnum>[
    INITIAL,
    FOLLOW_UP,
    DECLINED,
  ];

  static AssignmentStatusConnectionEnum? fromJson(dynamic value) => AssignmentStatusConnectionEnumTypeTransformer().decode(value);

  static List<AssignmentStatusConnectionEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AssignmentStatusConnectionEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AssignmentStatusConnectionEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [AssignmentStatusConnectionEnum] to String,
/// and [decode] dynamic data back to [AssignmentStatusConnectionEnum].
class AssignmentStatusConnectionEnumTypeTransformer {
  factory AssignmentStatusConnectionEnumTypeTransformer() => _instance ??= const AssignmentStatusConnectionEnumTypeTransformer._();

  const AssignmentStatusConnectionEnumTypeTransformer._();

  String encode(AssignmentStatusConnectionEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a AssignmentStatusConnectionEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  AssignmentStatusConnectionEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'INITIAL': return AssignmentStatusConnectionEnum.INITIAL;
        case r'FOLLOW_UP': return AssignmentStatusConnectionEnum.FOLLOW_UP;
        case r'DECLINED': return AssignmentStatusConnectionEnum.DECLINED;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [AssignmentStatusConnectionEnumTypeTransformer] instance.
  static AssignmentStatusConnectionEnumTypeTransformer? _instance;
}



class AssignmentStatusMethodEnum {
  /// Instantiate a new enum with the provided [value].
  const AssignmentStatusMethodEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const PHONE = AssignmentStatusMethodEnum._(r'PHONE');
  static const SITE_VISIT = AssignmentStatusMethodEnum._(r'SITE_VISIT');
  static const EMAIL = AssignmentStatusMethodEnum._(r'EMAIL');

  /// List of all possible values in this [enum][AssignmentStatusMethodEnum].
  static const values = <AssignmentStatusMethodEnum>[
    PHONE,
    SITE_VISIT,
    EMAIL,
  ];

  static AssignmentStatusMethodEnum? fromJson(dynamic value) => AssignmentStatusMethodEnumTypeTransformer().decode(value);

  static List<AssignmentStatusMethodEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AssignmentStatusMethodEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AssignmentStatusMethodEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [AssignmentStatusMethodEnum] to String,
/// and [decode] dynamic data back to [AssignmentStatusMethodEnum].
class AssignmentStatusMethodEnumTypeTransformer {
  factory AssignmentStatusMethodEnumTypeTransformer() => _instance ??= const AssignmentStatusMethodEnumTypeTransformer._();

  const AssignmentStatusMethodEnumTypeTransformer._();

  String encode(AssignmentStatusMethodEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a AssignmentStatusMethodEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  AssignmentStatusMethodEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'PHONE': return AssignmentStatusMethodEnum.PHONE;
        case r'SITE_VISIT': return AssignmentStatusMethodEnum.SITE_VISIT;
        case r'EMAIL': return AssignmentStatusMethodEnum.EMAIL;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [AssignmentStatusMethodEnumTypeTransformer] instance.
  static AssignmentStatusMethodEnumTypeTransformer? _instance;
}



class AssignmentStatusStatusEnum {
  /// Instantiate a new enum with the provided [value].
  const AssignmentStatusStatusEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const ARCHIVED = AssignmentStatusStatusEnum._(r'ARCHIVED');
  static const SUBSCRIBED = AssignmentStatusStatusEnum._(r'SUBSCRIBED');
  static const UNSUBSCRIBED = AssignmentStatusStatusEnum._(r'UNSUBSCRIBED');
  static const CONTACTED = AssignmentStatusStatusEnum._(r'CONTACTED');
  static const DECLINED = AssignmentStatusStatusEnum._(r'DECLINED');
  static const NOT_CONTACTED = AssignmentStatusStatusEnum._(r'NOT_CONTACTED');

  /// List of all possible values in this [enum][AssignmentStatusStatusEnum].
  static const values = <AssignmentStatusStatusEnum>[
    ARCHIVED,
    SUBSCRIBED,
    UNSUBSCRIBED,
    CONTACTED,
    DECLINED,
    NOT_CONTACTED,
  ];

  static AssignmentStatusStatusEnum? fromJson(dynamic value) => AssignmentStatusStatusEnumTypeTransformer().decode(value);

  static List<AssignmentStatusStatusEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AssignmentStatusStatusEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AssignmentStatusStatusEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [AssignmentStatusStatusEnum] to String,
/// and [decode] dynamic data back to [AssignmentStatusStatusEnum].
class AssignmentStatusStatusEnumTypeTransformer {
  factory AssignmentStatusStatusEnumTypeTransformer() => _instance ??= const AssignmentStatusStatusEnumTypeTransformer._();

  const AssignmentStatusStatusEnumTypeTransformer._();

  String encode(AssignmentStatusStatusEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a AssignmentStatusStatusEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  AssignmentStatusStatusEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'ARCHIVED': return AssignmentStatusStatusEnum.ARCHIVED;
        case r'SUBSCRIBED': return AssignmentStatusStatusEnum.SUBSCRIBED;
        case r'UNSUBSCRIBED': return AssignmentStatusStatusEnum.UNSUBSCRIBED;
        case r'CONTACTED': return AssignmentStatusStatusEnum.CONTACTED;
        case r'DECLINED': return AssignmentStatusStatusEnum.DECLINED;
        case r'NOT_CONTACTED': return AssignmentStatusStatusEnum.NOT_CONTACTED;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [AssignmentStatusStatusEnumTypeTransformer] instance.
  static AssignmentStatusStatusEnumTypeTransformer? _instance;
}



class AssignmentStatusClosureEnum {
  /// Instantiate a new enum with the provided [value].
  const AssignmentStatusClosureEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const PHONE = AssignmentStatusClosureEnum._(r'PHONE');
  static const SITE_VISIT = AssignmentStatusClosureEnum._(r'SITE_VISIT');
  static const PHONE_SITE = AssignmentStatusClosureEnum._(r'PHONE_SITE');
  static const WEB = AssignmentStatusClosureEnum._(r'WEB');

  /// List of all possible values in this [enum][AssignmentStatusClosureEnum].
  static const values = <AssignmentStatusClosureEnum>[
    PHONE,
    SITE_VISIT,
    PHONE_SITE,
    WEB,
  ];

  static AssignmentStatusClosureEnum? fromJson(dynamic value) => AssignmentStatusClosureEnumTypeTransformer().decode(value);

  static List<AssignmentStatusClosureEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AssignmentStatusClosureEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AssignmentStatusClosureEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [AssignmentStatusClosureEnum] to String,
/// and [decode] dynamic data back to [AssignmentStatusClosureEnum].
class AssignmentStatusClosureEnumTypeTransformer {
  factory AssignmentStatusClosureEnumTypeTransformer() => _instance ??= const AssignmentStatusClosureEnumTypeTransformer._();

  const AssignmentStatusClosureEnumTypeTransformer._();

  String encode(AssignmentStatusClosureEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a AssignmentStatusClosureEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  AssignmentStatusClosureEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'PHONE': return AssignmentStatusClosureEnum.PHONE;
        case r'SITE_VISIT': return AssignmentStatusClosureEnum.SITE_VISIT;
        case r'PHONE_SITE': return AssignmentStatusClosureEnum.PHONE_SITE;
        case r'WEB': return AssignmentStatusClosureEnum.WEB;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [AssignmentStatusClosureEnumTypeTransformer] instance.
  static AssignmentStatusClosureEnumTypeTransformer? _instance;
}


