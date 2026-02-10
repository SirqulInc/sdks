//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class BlockedNotificationResponse {
  /// Returns a new [BlockedNotificationResponse] instance.
  BlockedNotificationResponse({
    this.blockedNotificationId,
    this.created,
    this.event,
    this.conduit,
    this.customType,
    this.contentType,
    this.contentId,
    this.searchTags,
    this.blocked,
    this.deleted,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? blockedNotificationId;

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
  String? event;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? conduit;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? customType;

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
  int? contentId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? searchTags;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? blocked;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? deleted;

  @override
  bool operator ==(Object other) => identical(this, other) || other is BlockedNotificationResponse &&
    other.blockedNotificationId == blockedNotificationId &&
    other.created == created &&
    other.event == event &&
    other.conduit == conduit &&
    other.customType == customType &&
    other.contentType == contentType &&
    other.contentId == contentId &&
    other.searchTags == searchTags &&
    other.blocked == blocked &&
    other.deleted == deleted;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (blockedNotificationId == null ? 0 : blockedNotificationId!.hashCode) +
    (created == null ? 0 : created!.hashCode) +
    (event == null ? 0 : event!.hashCode) +
    (conduit == null ? 0 : conduit!.hashCode) +
    (customType == null ? 0 : customType!.hashCode) +
    (contentType == null ? 0 : contentType!.hashCode) +
    (contentId == null ? 0 : contentId!.hashCode) +
    (searchTags == null ? 0 : searchTags!.hashCode) +
    (blocked == null ? 0 : blocked!.hashCode) +
    (deleted == null ? 0 : deleted!.hashCode);

  @override
  String toString() => 'BlockedNotificationResponse[blockedNotificationId=$blockedNotificationId, created=$created, event=$event, conduit=$conduit, customType=$customType, contentType=$contentType, contentId=$contentId, searchTags=$searchTags, blocked=$blocked, deleted=$deleted]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.blockedNotificationId != null) {
      json[r'blockedNotificationId'] = this.blockedNotificationId;
    } else {
      json[r'blockedNotificationId'] = null;
    }
    if (this.created != null) {
      json[r'created'] = this.created;
    } else {
      json[r'created'] = null;
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
    if (this.customType != null) {
      json[r'customType'] = this.customType;
    } else {
      json[r'customType'] = null;
    }
    if (this.contentType != null) {
      json[r'contentType'] = this.contentType;
    } else {
      json[r'contentType'] = null;
    }
    if (this.contentId != null) {
      json[r'contentId'] = this.contentId;
    } else {
      json[r'contentId'] = null;
    }
    if (this.searchTags != null) {
      json[r'searchTags'] = this.searchTags;
    } else {
      json[r'searchTags'] = null;
    }
    if (this.blocked != null) {
      json[r'blocked'] = this.blocked;
    } else {
      json[r'blocked'] = null;
    }
    if (this.deleted != null) {
      json[r'deleted'] = this.deleted;
    } else {
      json[r'deleted'] = null;
    }
    return json;
  }

  /// Returns a new [BlockedNotificationResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static BlockedNotificationResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "BlockedNotificationResponse[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "BlockedNotificationResponse[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return BlockedNotificationResponse(
        blockedNotificationId: mapValueOfType<int>(json, r'blockedNotificationId'),
        created: mapValueOfType<int>(json, r'created'),
        event: mapValueOfType<String>(json, r'event'),
        conduit: mapValueOfType<String>(json, r'conduit'),
        customType: mapValueOfType<String>(json, r'customType'),
        contentType: mapValueOfType<String>(json, r'contentType'),
        contentId: mapValueOfType<int>(json, r'contentId'),
        searchTags: mapValueOfType<String>(json, r'searchTags'),
        blocked: mapValueOfType<bool>(json, r'blocked'),
        deleted: mapValueOfType<bool>(json, r'deleted'),
      );
    }
    return null;
  }

  static List<BlockedNotificationResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <BlockedNotificationResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = BlockedNotificationResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, BlockedNotificationResponse> mapFromJson(dynamic json) {
    final map = <String, BlockedNotificationResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = BlockedNotificationResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of BlockedNotificationResponse-objects as value to a dart map
  static Map<String, List<BlockedNotificationResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<BlockedNotificationResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = BlockedNotificationResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

