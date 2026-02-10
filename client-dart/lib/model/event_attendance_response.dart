//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EventAttendanceResponse {
  /// Returns a new [EventAttendanceResponse] instance.
  EventAttendanceResponse({
    this.event,
    this.affiliatedCategories = const [],
    this.attendee,
    this.friend,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  OfferShortResponse? event;

  List<CategoryResponse> affiliatedCategories;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  AccountShortResponse? attendee;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? friend;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EventAttendanceResponse &&
    other.event == event &&
    _deepEquality.equals(other.affiliatedCategories, affiliatedCategories) &&
    other.attendee == attendee &&
    other.friend == friend;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (event == null ? 0 : event!.hashCode) +
    (affiliatedCategories.hashCode) +
    (attendee == null ? 0 : attendee!.hashCode) +
    (friend == null ? 0 : friend!.hashCode);

  @override
  String toString() => 'EventAttendanceResponse[event=$event, affiliatedCategories=$affiliatedCategories, attendee=$attendee, friend=$friend]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.event != null) {
      json[r'event'] = this.event;
    } else {
      json[r'event'] = null;
    }
      json[r'affiliatedCategories'] = this.affiliatedCategories;
    if (this.attendee != null) {
      json[r'attendee'] = this.attendee;
    } else {
      json[r'attendee'] = null;
    }
    if (this.friend != null) {
      json[r'friend'] = this.friend;
    } else {
      json[r'friend'] = null;
    }
    return json;
  }

  /// Returns a new [EventAttendanceResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EventAttendanceResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EventAttendanceResponse[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EventAttendanceResponse[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EventAttendanceResponse(
        event: OfferShortResponse.fromJson(json[r'event']),
        affiliatedCategories: CategoryResponse.listFromJson(json[r'affiliatedCategories']),
        attendee: AccountShortResponse.fromJson(json[r'attendee']),
        friend: mapValueOfType<bool>(json, r'friend'),
      );
    }
    return null;
  }

  static List<EventAttendanceResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EventAttendanceResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EventAttendanceResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EventAttendanceResponse> mapFromJson(dynamic json) {
    final map = <String, EventAttendanceResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EventAttendanceResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EventAttendanceResponse-objects as value to a dart map
  static Map<String, List<EventAttendanceResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EventAttendanceResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EventAttendanceResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

