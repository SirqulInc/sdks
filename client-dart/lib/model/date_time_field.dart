//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class DateTimeField {
  /// Returns a new [DateTimeField] instance.
  DateTimeField({
    this.name,
    this.type,
    this.supported,
    this.minimumValue,
    this.maximumValue,
    this.durationField,
    this.leapDurationField,
    this.rangeDurationField,
    this.lenient,
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
  DateTimeFieldType? type;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? supported;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? minimumValue;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? maximumValue;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DurationField? durationField;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DurationField? leapDurationField;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DurationField? rangeDurationField;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? lenient;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DateTimeField &&
    other.name == name &&
    other.type == type &&
    other.supported == supported &&
    other.minimumValue == minimumValue &&
    other.maximumValue == maximumValue &&
    other.durationField == durationField &&
    other.leapDurationField == leapDurationField &&
    other.rangeDurationField == rangeDurationField &&
    other.lenient == lenient;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (name == null ? 0 : name!.hashCode) +
    (type == null ? 0 : type!.hashCode) +
    (supported == null ? 0 : supported!.hashCode) +
    (minimumValue == null ? 0 : minimumValue!.hashCode) +
    (maximumValue == null ? 0 : maximumValue!.hashCode) +
    (durationField == null ? 0 : durationField!.hashCode) +
    (leapDurationField == null ? 0 : leapDurationField!.hashCode) +
    (rangeDurationField == null ? 0 : rangeDurationField!.hashCode) +
    (lenient == null ? 0 : lenient!.hashCode);

  @override
  String toString() => 'DateTimeField[name=$name, type=$type, supported=$supported, minimumValue=$minimumValue, maximumValue=$maximumValue, durationField=$durationField, leapDurationField=$leapDurationField, rangeDurationField=$rangeDurationField, lenient=$lenient]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.type != null) {
      json[r'type'] = this.type;
    } else {
      json[r'type'] = null;
    }
    if (this.supported != null) {
      json[r'supported'] = this.supported;
    } else {
      json[r'supported'] = null;
    }
    if (this.minimumValue != null) {
      json[r'minimumValue'] = this.minimumValue;
    } else {
      json[r'minimumValue'] = null;
    }
    if (this.maximumValue != null) {
      json[r'maximumValue'] = this.maximumValue;
    } else {
      json[r'maximumValue'] = null;
    }
    if (this.durationField != null) {
      json[r'durationField'] = this.durationField;
    } else {
      json[r'durationField'] = null;
    }
    if (this.leapDurationField != null) {
      json[r'leapDurationField'] = this.leapDurationField;
    } else {
      json[r'leapDurationField'] = null;
    }
    if (this.rangeDurationField != null) {
      json[r'rangeDurationField'] = this.rangeDurationField;
    } else {
      json[r'rangeDurationField'] = null;
    }
    if (this.lenient != null) {
      json[r'lenient'] = this.lenient;
    } else {
      json[r'lenient'] = null;
    }
    return json;
  }

  /// Returns a new [DateTimeField] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DateTimeField? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "DateTimeField[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "DateTimeField[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return DateTimeField(
        name: mapValueOfType<String>(json, r'name'),
        type: DateTimeFieldType.fromJson(json[r'type']),
        supported: mapValueOfType<bool>(json, r'supported'),
        minimumValue: mapValueOfType<int>(json, r'minimumValue'),
        maximumValue: mapValueOfType<int>(json, r'maximumValue'),
        durationField: DurationField.fromJson(json[r'durationField']),
        leapDurationField: DurationField.fromJson(json[r'leapDurationField']),
        rangeDurationField: DurationField.fromJson(json[r'rangeDurationField']),
        lenient: mapValueOfType<bool>(json, r'lenient'),
      );
    }
    return null;
  }

  static List<DateTimeField> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DateTimeField>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DateTimeField.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DateTimeField> mapFromJson(dynamic json) {
    final map = <String, DateTimeField>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DateTimeField.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DateTimeField-objects as value to a dart map
  static Map<String, List<DateTimeField>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<DateTimeField>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = DateTimeField.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

