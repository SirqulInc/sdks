//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class AudienceDeviceVersionRange {
  /// Returns a new [AudienceDeviceVersionRange] instance.
  AudienceDeviceVersionRange({
    this.id,
    this.active,
    this.valid,
    this.device,
    this.minimum,
    this.maximum,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? id;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? active;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? valid;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  AudienceDevice? device;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? minimum;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? maximum;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AudienceDeviceVersionRange &&
    other.id == id &&
    other.active == active &&
    other.valid == valid &&
    other.device == device &&
    other.minimum == minimum &&
    other.maximum == maximum;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (active == null ? 0 : active!.hashCode) +
    (valid == null ? 0 : valid!.hashCode) +
    (device == null ? 0 : device!.hashCode) +
    (minimum == null ? 0 : minimum!.hashCode) +
    (maximum == null ? 0 : maximum!.hashCode);

  @override
  String toString() => 'AudienceDeviceVersionRange[id=$id, active=$active, valid=$valid, device=$device, minimum=$minimum, maximum=$maximum]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.active != null) {
      json[r'active'] = this.active;
    } else {
      json[r'active'] = null;
    }
    if (this.valid != null) {
      json[r'valid'] = this.valid;
    } else {
      json[r'valid'] = null;
    }
    if (this.device != null) {
      json[r'device'] = this.device;
    } else {
      json[r'device'] = null;
    }
    if (this.minimum != null) {
      json[r'minimum'] = this.minimum;
    } else {
      json[r'minimum'] = null;
    }
    if (this.maximum != null) {
      json[r'maximum'] = this.maximum;
    } else {
      json[r'maximum'] = null;
    }
    return json;
  }

  /// Returns a new [AudienceDeviceVersionRange] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AudienceDeviceVersionRange? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "AudienceDeviceVersionRange[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "AudienceDeviceVersionRange[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AudienceDeviceVersionRange(
        id: mapValueOfType<int>(json, r'id'),
        active: mapValueOfType<bool>(json, r'active'),
        valid: mapValueOfType<bool>(json, r'valid'),
        device: AudienceDevice.fromJson(json[r'device']),
        minimum: mapValueOfType<int>(json, r'minimum'),
        maximum: mapValueOfType<int>(json, r'maximum'),
      );
    }
    return null;
  }

  static List<AudienceDeviceVersionRange> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AudienceDeviceVersionRange>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AudienceDeviceVersionRange.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AudienceDeviceVersionRange> mapFromJson(dynamic json) {
    final map = <String, AudienceDeviceVersionRange>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AudienceDeviceVersionRange.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AudienceDeviceVersionRange-objects as value to a dart map
  static Map<String, List<AudienceDeviceVersionRange>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AudienceDeviceVersionRange>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AudienceDeviceVersionRange.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

