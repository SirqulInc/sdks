//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class DateTimeFieldType {
  /// Returns a new [DateTimeFieldType] instance.
  DateTimeFieldType({
    this.name,
    this.rangeDurationType,
    this.durationType,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DurationFieldType? rangeDurationType;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DurationFieldType? durationType;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DateTimeFieldType &&
    other.name == name &&
    other.rangeDurationType == rangeDurationType &&
    other.durationType == durationType;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (name == null ? 0 : name!.hashCode) +
    (rangeDurationType == null ? 0 : rangeDurationType!.hashCode) +
    (durationType == null ? 0 : durationType!.hashCode);

  @override
  String toString() => 'DateTimeFieldType[name=$name, rangeDurationType=$rangeDurationType, durationType=$durationType]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.rangeDurationType != null) {
      json[r'rangeDurationType'] = this.rangeDurationType;
    } else {
      json[r'rangeDurationType'] = null;
    }
    if (this.durationType != null) {
      json[r'durationType'] = this.durationType;
    } else {
      json[r'durationType'] = null;
    }
    return json;
  }

  /// Returns a new [DateTimeFieldType] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DateTimeFieldType? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "DateTimeFieldType[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "DateTimeFieldType[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return DateTimeFieldType(
        name: mapValueOfType<String>(json, r'name'),
        rangeDurationType: DurationFieldType.fromJson(json[r'rangeDurationType']),
        durationType: DurationFieldType.fromJson(json[r'durationType']),
      );
    }
    return null;
  }

  static List<DateTimeFieldType> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DateTimeFieldType>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DateTimeFieldType.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DateTimeFieldType> mapFromJson(dynamic json) {
    final map = <String, DateTimeFieldType>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DateTimeFieldType.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DateTimeFieldType-objects as value to a dart map
  static Map<String, List<DateTimeFieldType>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<DateTimeFieldType>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = DateTimeFieldType.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

