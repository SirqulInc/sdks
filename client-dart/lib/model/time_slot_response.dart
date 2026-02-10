//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class TimeSlotResponse {
  /// Returns a new [TimeSlotResponse] instance.
  TimeSlotResponse({
    this.scheduledDate,
    this.startTime,
    this.endTime,
    this.dayOfWeek,
    this.timeZone,
    this.reservationCount,
    this.reservations = const [],
  });

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
  int? startTime;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? endTime;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? dayOfWeek;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? timeZone;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? reservationCount;

  List<AccountShortResponse> reservations;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TimeSlotResponse &&
    other.scheduledDate == scheduledDate &&
    other.startTime == startTime &&
    other.endTime == endTime &&
    other.dayOfWeek == dayOfWeek &&
    other.timeZone == timeZone &&
    other.reservationCount == reservationCount &&
    _deepEquality.equals(other.reservations, reservations);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (scheduledDate == null ? 0 : scheduledDate!.hashCode) +
    (startTime == null ? 0 : startTime!.hashCode) +
    (endTime == null ? 0 : endTime!.hashCode) +
    (dayOfWeek == null ? 0 : dayOfWeek!.hashCode) +
    (timeZone == null ? 0 : timeZone!.hashCode) +
    (reservationCount == null ? 0 : reservationCount!.hashCode) +
    (reservations.hashCode);

  @override
  String toString() => 'TimeSlotResponse[scheduledDate=$scheduledDate, startTime=$startTime, endTime=$endTime, dayOfWeek=$dayOfWeek, timeZone=$timeZone, reservationCount=$reservationCount, reservations=$reservations]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.scheduledDate != null) {
      json[r'scheduledDate'] = this.scheduledDate;
    } else {
      json[r'scheduledDate'] = null;
    }
    if (this.startTime != null) {
      json[r'startTime'] = this.startTime;
    } else {
      json[r'startTime'] = null;
    }
    if (this.endTime != null) {
      json[r'endTime'] = this.endTime;
    } else {
      json[r'endTime'] = null;
    }
    if (this.dayOfWeek != null) {
      json[r'dayOfWeek'] = this.dayOfWeek;
    } else {
      json[r'dayOfWeek'] = null;
    }
    if (this.timeZone != null) {
      json[r'timeZone'] = this.timeZone;
    } else {
      json[r'timeZone'] = null;
    }
    if (this.reservationCount != null) {
      json[r'reservationCount'] = this.reservationCount;
    } else {
      json[r'reservationCount'] = null;
    }
      json[r'reservations'] = this.reservations;
    return json;
  }

  /// Returns a new [TimeSlotResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TimeSlotResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "TimeSlotResponse[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "TimeSlotResponse[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return TimeSlotResponse(
        scheduledDate: mapValueOfType<int>(json, r'scheduledDate'),
        startTime: mapValueOfType<int>(json, r'startTime'),
        endTime: mapValueOfType<int>(json, r'endTime'),
        dayOfWeek: mapValueOfType<int>(json, r'dayOfWeek'),
        timeZone: mapValueOfType<String>(json, r'timeZone'),
        reservationCount: mapValueOfType<int>(json, r'reservationCount'),
        reservations: AccountShortResponse.listFromJson(json[r'reservations']),
      );
    }
    return null;
  }

  static List<TimeSlotResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TimeSlotResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TimeSlotResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TimeSlotResponse> mapFromJson(dynamic json) {
    final map = <String, TimeSlotResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TimeSlotResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TimeSlotResponse-objects as value to a dart map
  static Map<String, List<TimeSlotResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<TimeSlotResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = TimeSlotResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

