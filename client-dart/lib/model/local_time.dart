//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class LocalTime {
  /// Returns a new [LocalTime] instance.
  LocalTime({
    this.chronology,
    this.hourOfDay,
    this.minuteOfHour,
    this.secondOfMinute,
    this.millisOfSecond,
    this.millisOfDay,
    this.fields = const [],
    this.values = const [],
    this.fieldTypes = const [],
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Chronology? chronology;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? hourOfDay;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? minuteOfHour;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? secondOfMinute;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? millisOfSecond;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? millisOfDay;

  List<DateTimeField> fields;

  List<int> values;

  List<DateTimeFieldType> fieldTypes;

  @override
  bool operator ==(Object other) => identical(this, other) || other is LocalTime &&
    other.chronology == chronology &&
    other.hourOfDay == hourOfDay &&
    other.minuteOfHour == minuteOfHour &&
    other.secondOfMinute == secondOfMinute &&
    other.millisOfSecond == millisOfSecond &&
    other.millisOfDay == millisOfDay &&
    _deepEquality.equals(other.fields, fields) &&
    _deepEquality.equals(other.values, values) &&
    _deepEquality.equals(other.fieldTypes, fieldTypes);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (chronology == null ? 0 : chronology!.hashCode) +
    (hourOfDay == null ? 0 : hourOfDay!.hashCode) +
    (minuteOfHour == null ? 0 : minuteOfHour!.hashCode) +
    (secondOfMinute == null ? 0 : secondOfMinute!.hashCode) +
    (millisOfSecond == null ? 0 : millisOfSecond!.hashCode) +
    (millisOfDay == null ? 0 : millisOfDay!.hashCode) +
    (fields.hashCode) +
    (values.hashCode) +
    (fieldTypes.hashCode);

  @override
  String toString() => 'LocalTime[chronology=$chronology, hourOfDay=$hourOfDay, minuteOfHour=$minuteOfHour, secondOfMinute=$secondOfMinute, millisOfSecond=$millisOfSecond, millisOfDay=$millisOfDay, fields=$fields, values=$values, fieldTypes=$fieldTypes]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.chronology != null) {
      json[r'chronology'] = this.chronology;
    } else {
      json[r'chronology'] = null;
    }
    if (this.hourOfDay != null) {
      json[r'hourOfDay'] = this.hourOfDay;
    } else {
      json[r'hourOfDay'] = null;
    }
    if (this.minuteOfHour != null) {
      json[r'minuteOfHour'] = this.minuteOfHour;
    } else {
      json[r'minuteOfHour'] = null;
    }
    if (this.secondOfMinute != null) {
      json[r'secondOfMinute'] = this.secondOfMinute;
    } else {
      json[r'secondOfMinute'] = null;
    }
    if (this.millisOfSecond != null) {
      json[r'millisOfSecond'] = this.millisOfSecond;
    } else {
      json[r'millisOfSecond'] = null;
    }
    if (this.millisOfDay != null) {
      json[r'millisOfDay'] = this.millisOfDay;
    } else {
      json[r'millisOfDay'] = null;
    }
      json[r'fields'] = this.fields;
      json[r'values'] = this.values;
      json[r'fieldTypes'] = this.fieldTypes;
    return json;
  }

  /// Returns a new [LocalTime] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static LocalTime? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "LocalTime[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "LocalTime[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return LocalTime(
        chronology: Chronology.fromJson(json[r'chronology']),
        hourOfDay: mapValueOfType<int>(json, r'hourOfDay'),
        minuteOfHour: mapValueOfType<int>(json, r'minuteOfHour'),
        secondOfMinute: mapValueOfType<int>(json, r'secondOfMinute'),
        millisOfSecond: mapValueOfType<int>(json, r'millisOfSecond'),
        millisOfDay: mapValueOfType<int>(json, r'millisOfDay'),
        fields: DateTimeField.listFromJson(json[r'fields']),
        values: json[r'values'] is Iterable
            ? (json[r'values'] as Iterable).cast<int>().toList(growable: false)
            : const [],
        fieldTypes: DateTimeFieldType.listFromJson(json[r'fieldTypes']),
      );
    }
    return null;
  }

  static List<LocalTime> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <LocalTime>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = LocalTime.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, LocalTime> mapFromJson(dynamic json) {
    final map = <String, LocalTime>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = LocalTime.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of LocalTime-objects as value to a dart map
  static Map<String, List<LocalTime>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<LocalTime>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = LocalTime.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

