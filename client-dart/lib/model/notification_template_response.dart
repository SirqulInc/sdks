//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class NotificationTemplateResponse {
  /// Returns a new [NotificationTemplateResponse] instance.
  NotificationTemplateResponse({
    this.notificationTemplateId,
    this.event,
    this.conduit,
    this.title,
    this.body,
    this.publicBody,
    this.application,
    this.updated,
    this.created,
    this.tags,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? notificationTemplateId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? event;

  NotificationTemplateResponseConduitEnum? conduit;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? title;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? body;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? publicBody;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  ApplicationMiniResponse? application;

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
  String? tags;

  @override
  bool operator ==(Object other) => identical(this, other) || other is NotificationTemplateResponse &&
    other.notificationTemplateId == notificationTemplateId &&
    other.event == event &&
    other.conduit == conduit &&
    other.title == title &&
    other.body == body &&
    other.publicBody == publicBody &&
    other.application == application &&
    other.updated == updated &&
    other.created == created &&
    other.tags == tags;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (notificationTemplateId == null ? 0 : notificationTemplateId!.hashCode) +
    (event == null ? 0 : event!.hashCode) +
    (conduit == null ? 0 : conduit!.hashCode) +
    (title == null ? 0 : title!.hashCode) +
    (body == null ? 0 : body!.hashCode) +
    (publicBody == null ? 0 : publicBody!.hashCode) +
    (application == null ? 0 : application!.hashCode) +
    (updated == null ? 0 : updated!.hashCode) +
    (created == null ? 0 : created!.hashCode) +
    (tags == null ? 0 : tags!.hashCode);

  @override
  String toString() => 'NotificationTemplateResponse[notificationTemplateId=$notificationTemplateId, event=$event, conduit=$conduit, title=$title, body=$body, publicBody=$publicBody, application=$application, updated=$updated, created=$created, tags=$tags]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.notificationTemplateId != null) {
      json[r'notificationTemplateId'] = this.notificationTemplateId;
    } else {
      json[r'notificationTemplateId'] = null;
    }
    if (this.event != null) {
      json[r'event'] = this.event;
    } else {
      json[r'event'] = null;
    }
    if (this.conduit != null) {
      json[r'conduit'] = this.conduit;
    } else {
      json[r'conduit'] = null;
    }
    if (this.title != null) {
      json[r'title'] = this.title;
    } else {
      json[r'title'] = null;
    }
    if (this.body != null) {
      json[r'body'] = this.body;
    } else {
      json[r'body'] = null;
    }
    if (this.publicBody != null) {
      json[r'publicBody'] = this.publicBody;
    } else {
      json[r'publicBody'] = null;
    }
    if (this.application != null) {
      json[r'application'] = this.application;
    } else {
      json[r'application'] = null;
    }
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
    if (this.tags != null) {
      json[r'tags'] = this.tags;
    } else {
      json[r'tags'] = null;
    }
    return json;
  }

  /// Returns a new [NotificationTemplateResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static NotificationTemplateResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "NotificationTemplateResponse[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "NotificationTemplateResponse[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return NotificationTemplateResponse(
        notificationTemplateId: mapValueOfType<int>(json, r'notificationTemplateId'),
        event: mapValueOfType<String>(json, r'event'),
        conduit: NotificationTemplateResponseConduitEnum.fromJson(json[r'conduit']),
        title: mapValueOfType<String>(json, r'title'),
        body: mapValueOfType<String>(json, r'body'),
        publicBody: mapValueOfType<String>(json, r'publicBody'),
        application: ApplicationMiniResponse.fromJson(json[r'application']),
        updated: mapValueOfType<int>(json, r'updated'),
        created: mapValueOfType<int>(json, r'created'),
        tags: mapValueOfType<String>(json, r'tags'),
      );
    }
    return null;
  }

  static List<NotificationTemplateResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <NotificationTemplateResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = NotificationTemplateResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, NotificationTemplateResponse> mapFromJson(dynamic json) {
    final map = <String, NotificationTemplateResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = NotificationTemplateResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of NotificationTemplateResponse-objects as value to a dart map
  static Map<String, List<NotificationTemplateResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<NotificationTemplateResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = NotificationTemplateResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}


class NotificationTemplateResponseConduitEnum {
  /// Instantiate a new enum with the provided [value].
  const NotificationTemplateResponseConduitEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const HTTP = NotificationTemplateResponseConduitEnum._(r'HTTP');
  static const SAVE = NotificationTemplateResponseConduitEnum._(r'SAVE');
  static const EMAIL = NotificationTemplateResponseConduitEnum._(r'EMAIL');
  static const SMS = NotificationTemplateResponseConduitEnum._(r'SMS');
  static const APNS = NotificationTemplateResponseConduitEnum._(r'APNS');
  static const GCM = NotificationTemplateResponseConduitEnum._(r'GCM');
  static const PUSH = NotificationTemplateResponseConduitEnum._(r'PUSH');
  static const MOBILE_NOTIFICATION = NotificationTemplateResponseConduitEnum._(r'MOBILE_NOTIFICATION');

  /// List of all possible values in this [enum][NotificationTemplateResponseConduitEnum].
  static const values = <NotificationTemplateResponseConduitEnum>[
    HTTP,
    SAVE,
    EMAIL,
    SMS,
    APNS,
    GCM,
    PUSH,
    MOBILE_NOTIFICATION,
  ];

  static NotificationTemplateResponseConduitEnum? fromJson(dynamic value) => NotificationTemplateResponseConduitEnumTypeTransformer().decode(value);

  static List<NotificationTemplateResponseConduitEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <NotificationTemplateResponseConduitEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = NotificationTemplateResponseConduitEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [NotificationTemplateResponseConduitEnum] to String,
/// and [decode] dynamic data back to [NotificationTemplateResponseConduitEnum].
class NotificationTemplateResponseConduitEnumTypeTransformer {
  factory NotificationTemplateResponseConduitEnumTypeTransformer() => _instance ??= const NotificationTemplateResponseConduitEnumTypeTransformer._();

  const NotificationTemplateResponseConduitEnumTypeTransformer._();

  String encode(NotificationTemplateResponseConduitEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a NotificationTemplateResponseConduitEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  NotificationTemplateResponseConduitEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'HTTP': return NotificationTemplateResponseConduitEnum.HTTP;
        case r'SAVE': return NotificationTemplateResponseConduitEnum.SAVE;
        case r'EMAIL': return NotificationTemplateResponseConduitEnum.EMAIL;
        case r'SMS': return NotificationTemplateResponseConduitEnum.SMS;
        case r'APNS': return NotificationTemplateResponseConduitEnum.APNS;
        case r'GCM': return NotificationTemplateResponseConduitEnum.GCM;
        case r'PUSH': return NotificationTemplateResponseConduitEnum.PUSH;
        case r'MOBILE_NOTIFICATION': return NotificationTemplateResponseConduitEnum.MOBILE_NOTIFICATION;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [NotificationTemplateResponseConduitEnumTypeTransformer] instance.
  static NotificationTemplateResponseConduitEnumTypeTransformer? _instance;
}


