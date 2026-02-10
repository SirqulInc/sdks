//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class NotificationMessageResponse {
  /// Returns a new [NotificationMessageResponse] instance.
  NotificationMessageResponse({
    this.sender,
    this.event,
    this.notificationMessage,
    this.created,
    this.hasRead,
    this.contentId,
    this.contentType,
    this.contentName,
    this.parentId,
    this.parentType,
    this.actionCategory,
    this.thumbnailURL,
    this.coverURL,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  AccountShortResponse? sender;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? event;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? notificationMessage;

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
  bool? hasRead;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? contentId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? contentType;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? contentName;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? parentId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? parentType;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? actionCategory;

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
  String? coverURL;

  @override
  bool operator ==(Object other) => identical(this, other) || other is NotificationMessageResponse &&
    other.sender == sender &&
    other.event == event &&
    other.notificationMessage == notificationMessage &&
    other.created == created &&
    other.hasRead == hasRead &&
    other.contentId == contentId &&
    other.contentType == contentType &&
    other.contentName == contentName &&
    other.parentId == parentId &&
    other.parentType == parentType &&
    other.actionCategory == actionCategory &&
    other.thumbnailURL == thumbnailURL &&
    other.coverURL == coverURL;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (sender == null ? 0 : sender!.hashCode) +
    (event == null ? 0 : event!.hashCode) +
    (notificationMessage == null ? 0 : notificationMessage!.hashCode) +
    (created == null ? 0 : created!.hashCode) +
    (hasRead == null ? 0 : hasRead!.hashCode) +
    (contentId == null ? 0 : contentId!.hashCode) +
    (contentType == null ? 0 : contentType!.hashCode) +
    (contentName == null ? 0 : contentName!.hashCode) +
    (parentId == null ? 0 : parentId!.hashCode) +
    (parentType == null ? 0 : parentType!.hashCode) +
    (actionCategory == null ? 0 : actionCategory!.hashCode) +
    (thumbnailURL == null ? 0 : thumbnailURL!.hashCode) +
    (coverURL == null ? 0 : coverURL!.hashCode);

  @override
  String toString() => 'NotificationMessageResponse[sender=$sender, event=$event, notificationMessage=$notificationMessage, created=$created, hasRead=$hasRead, contentId=$contentId, contentType=$contentType, contentName=$contentName, parentId=$parentId, parentType=$parentType, actionCategory=$actionCategory, thumbnailURL=$thumbnailURL, coverURL=$coverURL]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.sender != null) {
      json[r'sender'] = this.sender;
    } else {
      json[r'sender'] = null;
    }
    if (this.event != null) {
      json[r'event'] = this.event;
    } else {
      json[r'event'] = null;
    }
    if (this.notificationMessage != null) {
      json[r'notificationMessage'] = this.notificationMessage;
    } else {
      json[r'notificationMessage'] = null;
    }
    if (this.created != null) {
      json[r'created'] = this.created;
    } else {
      json[r'created'] = null;
    }
    if (this.hasRead != null) {
      json[r'hasRead'] = this.hasRead;
    } else {
      json[r'hasRead'] = null;
    }
    if (this.contentId != null) {
      json[r'contentId'] = this.contentId;
    } else {
      json[r'contentId'] = null;
    }
    if (this.contentType != null) {
      json[r'contentType'] = this.contentType;
    } else {
      json[r'contentType'] = null;
    }
    if (this.contentName != null) {
      json[r'contentName'] = this.contentName;
    } else {
      json[r'contentName'] = null;
    }
    if (this.parentId != null) {
      json[r'parentId'] = this.parentId;
    } else {
      json[r'parentId'] = null;
    }
    if (this.parentType != null) {
      json[r'parentType'] = this.parentType;
    } else {
      json[r'parentType'] = null;
    }
    if (this.actionCategory != null) {
      json[r'actionCategory'] = this.actionCategory;
    } else {
      json[r'actionCategory'] = null;
    }
    if (this.thumbnailURL != null) {
      json[r'thumbnailURL'] = this.thumbnailURL;
    } else {
      json[r'thumbnailURL'] = null;
    }
    if (this.coverURL != null) {
      json[r'coverURL'] = this.coverURL;
    } else {
      json[r'coverURL'] = null;
    }
    return json;
  }

  /// Returns a new [NotificationMessageResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static NotificationMessageResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "NotificationMessageResponse[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "NotificationMessageResponse[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return NotificationMessageResponse(
        sender: AccountShortResponse.fromJson(json[r'sender']),
        event: mapValueOfType<String>(json, r'event'),
        notificationMessage: mapValueOfType<String>(json, r'notificationMessage'),
        created: mapValueOfType<int>(json, r'created'),
        hasRead: mapValueOfType<bool>(json, r'hasRead'),
        contentId: mapValueOfType<int>(json, r'contentId'),
        contentType: mapValueOfType<String>(json, r'contentType'),
        contentName: mapValueOfType<String>(json, r'contentName'),
        parentId: mapValueOfType<int>(json, r'parentId'),
        parentType: mapValueOfType<String>(json, r'parentType'),
        actionCategory: mapValueOfType<String>(json, r'actionCategory'),
        thumbnailURL: mapValueOfType<String>(json, r'thumbnailURL'),
        coverURL: mapValueOfType<String>(json, r'coverURL'),
      );
    }
    return null;
  }

  static List<NotificationMessageResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <NotificationMessageResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = NotificationMessageResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, NotificationMessageResponse> mapFromJson(dynamic json) {
    final map = <String, NotificationMessageResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = NotificationMessageResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of NotificationMessageResponse-objects as value to a dart map
  static Map<String, List<NotificationMessageResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<NotificationMessageResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = NotificationMessageResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

