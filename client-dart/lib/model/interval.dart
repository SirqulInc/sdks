//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Interval {
  /// Returns a new [Interval] instance.
  Interval({
    this.end,
    this.start,
    this.chronology,
    this.startMillis,
    this.endMillis,
    this.beforeNow,
    this.afterNow,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? end;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? start;

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
  int? startMillis;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? endMillis;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? beforeNow;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? afterNow;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Interval &&
    other.end == end &&
    other.start == start &&
    other.chronology == chronology &&
    other.startMillis == startMillis &&
    other.endMillis == endMillis &&
    other.beforeNow == beforeNow &&
    other.afterNow == afterNow;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (end == null ? 0 : end!.hashCode) +
    (start == null ? 0 : start!.hashCode) +
    (chronology == null ? 0 : chronology!.hashCode) +
    (startMillis == null ? 0 : startMillis!.hashCode) +
    (endMillis == null ? 0 : endMillis!.hashCode) +
    (beforeNow == null ? 0 : beforeNow!.hashCode) +
    (afterNow == null ? 0 : afterNow!.hashCode);

  @override
  String toString() => 'Interval[end=$end, start=$start, chronology=$chronology, startMillis=$startMillis, endMillis=$endMillis, beforeNow=$beforeNow, afterNow=$afterNow]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.end != null) {
      json[r'end'] = this.end!.toUtc().toIso8601String();
    } else {
      json[r'end'] = null;
    }
    if (this.start != null) {
      json[r'start'] = this.start!.toUtc().toIso8601String();
    } else {
      json[r'start'] = null;
    }
    if (this.chronology != null) {
      json[r'chronology'] = this.chronology;
    } else {
      json[r'chronology'] = null;
    }
    if (this.startMillis != null) {
      json[r'startMillis'] = this.startMillis;
    } else {
      json[r'startMillis'] = null;
    }
    if (this.endMillis != null) {
      json[r'endMillis'] = this.endMillis;
    } else {
      json[r'endMillis'] = null;
    }
    if (this.beforeNow != null) {
      json[r'beforeNow'] = this.beforeNow;
    } else {
      json[r'beforeNow'] = null;
    }
    if (this.afterNow != null) {
      json[r'afterNow'] = this.afterNow;
    } else {
      json[r'afterNow'] = null;
    }
    return json;
  }

  /// Returns a new [Interval] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Interval? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Interval[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Interval[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Interval(
        end: mapDateTime(json, r'end', r''),
        start: mapDateTime(json, r'start', r''),
        chronology: Chronology.fromJson(json[r'chronology']),
        startMillis: mapValueOfType<int>(json, r'startMillis'),
        endMillis: mapValueOfType<int>(json, r'endMillis'),
        beforeNow: mapValueOfType<bool>(json, r'beforeNow'),
        afterNow: mapValueOfType<bool>(json, r'afterNow'),
      );
    }
    return null;
  }

  static List<Interval> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Interval>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Interval.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Interval> mapFromJson(dynamic json) {
    final map = <String, Interval>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Interval.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Interval-objects as value to a dart map
  static Map<String, List<Interval>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Interval>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Interval.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

