//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class DurationField {
  /// Returns a new [DurationField] instance.
  DurationField({
    this.name,
    this.type,
    this.supported,
    this.precise,
    this.unitMillis,
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
  DurationFieldType? type;

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
  bool? precise;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? unitMillis;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DurationField &&
    other.name == name &&
    other.type == type &&
    other.supported == supported &&
    other.precise == precise &&
    other.unitMillis == unitMillis;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (name == null ? 0 : name!.hashCode) +
    (type == null ? 0 : type!.hashCode) +
    (supported == null ? 0 : supported!.hashCode) +
    (precise == null ? 0 : precise!.hashCode) +
    (unitMillis == null ? 0 : unitMillis!.hashCode);

  @override
  String toString() => 'DurationField[name=$name, type=$type, supported=$supported, precise=$precise, unitMillis=$unitMillis]';

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
    if (this.precise != null) {
      json[r'precise'] = this.precise;
    } else {
      json[r'precise'] = null;
    }
    if (this.unitMillis != null) {
      json[r'unitMillis'] = this.unitMillis;
    } else {
      json[r'unitMillis'] = null;
    }
    return json;
  }

  /// Returns a new [DurationField] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DurationField? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "DurationField[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "DurationField[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return DurationField(
        name: mapValueOfType<String>(json, r'name'),
        type: DurationFieldType.fromJson(json[r'type']),
        supported: mapValueOfType<bool>(json, r'supported'),
        precise: mapValueOfType<bool>(json, r'precise'),
        unitMillis: mapValueOfType<int>(json, r'unitMillis'),
      );
    }
    return null;
  }

  static List<DurationField> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DurationField>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DurationField.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DurationField> mapFromJson(dynamic json) {
    final map = <String, DurationField>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DurationField.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DurationField-objects as value to a dart map
  static Map<String, List<DurationField>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<DurationField>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = DurationField.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

