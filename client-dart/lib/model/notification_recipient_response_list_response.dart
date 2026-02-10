//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class NotificationRecipientResponseListResponse {
  /// Returns a new [NotificationRecipientResponseListResponse] instance.
  NotificationRecipientResponseListResponse({
    this.items = const [],
    this.count,
    this.startIndexAudiences,
    this.startIndexGroups,
    this.total,
    this.countAudiences,
    this.countGroups,
    this.hasMoreResults,
  });

  List<Object> items;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? count;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? startIndexAudiences;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? startIndexGroups;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? total;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? countAudiences;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? countGroups;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? hasMoreResults;

  @override
  bool operator ==(Object other) => identical(this, other) || other is NotificationRecipientResponseListResponse &&
    _deepEquality.equals(other.items, items) &&
    other.count == count &&
    other.startIndexAudiences == startIndexAudiences &&
    other.startIndexGroups == startIndexGroups &&
    other.total == total &&
    other.countAudiences == countAudiences &&
    other.countGroups == countGroups &&
    other.hasMoreResults == hasMoreResults;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (items.hashCode) +
    (count == null ? 0 : count!.hashCode) +
    (startIndexAudiences == null ? 0 : startIndexAudiences!.hashCode) +
    (startIndexGroups == null ? 0 : startIndexGroups!.hashCode) +
    (total == null ? 0 : total!.hashCode) +
    (countAudiences == null ? 0 : countAudiences!.hashCode) +
    (countGroups == null ? 0 : countGroups!.hashCode) +
    (hasMoreResults == null ? 0 : hasMoreResults!.hashCode);

  @override
  String toString() => 'NotificationRecipientResponseListResponse[items=$items, count=$count, startIndexAudiences=$startIndexAudiences, startIndexGroups=$startIndexGroups, total=$total, countAudiences=$countAudiences, countGroups=$countGroups, hasMoreResults=$hasMoreResults]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'items'] = this.items;
    if (this.count != null) {
      json[r'count'] = this.count;
    } else {
      json[r'count'] = null;
    }
    if (this.startIndexAudiences != null) {
      json[r'startIndexAudiences'] = this.startIndexAudiences;
    } else {
      json[r'startIndexAudiences'] = null;
    }
    if (this.startIndexGroups != null) {
      json[r'startIndexGroups'] = this.startIndexGroups;
    } else {
      json[r'startIndexGroups'] = null;
    }
    if (this.total != null) {
      json[r'total'] = this.total;
    } else {
      json[r'total'] = null;
    }
    if (this.countAudiences != null) {
      json[r'countAudiences'] = this.countAudiences;
    } else {
      json[r'countAudiences'] = null;
    }
    if (this.countGroups != null) {
      json[r'countGroups'] = this.countGroups;
    } else {
      json[r'countGroups'] = null;
    }
    if (this.hasMoreResults != null) {
      json[r'hasMoreResults'] = this.hasMoreResults;
    } else {
      json[r'hasMoreResults'] = null;
    }
    return json;
  }

  /// Returns a new [NotificationRecipientResponseListResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static NotificationRecipientResponseListResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "NotificationRecipientResponseListResponse[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "NotificationRecipientResponseListResponse[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return NotificationRecipientResponseListResponse(
        items: Object.listFromJson(json[r'items']),
        count: mapValueOfType<int>(json, r'count'),
        startIndexAudiences: mapValueOfType<int>(json, r'startIndexAudiences'),
        startIndexGroups: mapValueOfType<int>(json, r'startIndexGroups'),
        total: mapValueOfType<int>(json, r'total'),
        countAudiences: mapValueOfType<int>(json, r'countAudiences'),
        countGroups: mapValueOfType<int>(json, r'countGroups'),
        hasMoreResults: mapValueOfType<bool>(json, r'hasMoreResults'),
      );
    }
    return null;
  }

  static List<NotificationRecipientResponseListResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <NotificationRecipientResponseListResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = NotificationRecipientResponseListResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, NotificationRecipientResponseListResponse> mapFromJson(dynamic json) {
    final map = <String, NotificationRecipientResponseListResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = NotificationRecipientResponseListResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of NotificationRecipientResponseListResponse-objects as value to a dart map
  static Map<String, List<NotificationRecipientResponseListResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<NotificationRecipientResponseListResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = NotificationRecipientResponseListResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

