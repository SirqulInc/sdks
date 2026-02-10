//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class VehicleCargoSetting {
  /// Returns a new [VehicleCargoSetting] instance.
  VehicleCargoSetting({
    this.valid,
    this.cargoType,
    this.maxUnit,
  });

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
  CargoType? cargoType;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? maxUnit;

  @override
  bool operator ==(Object other) => identical(this, other) || other is VehicleCargoSetting &&
    other.valid == valid &&
    other.cargoType == cargoType &&
    other.maxUnit == maxUnit;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (valid == null ? 0 : valid!.hashCode) +
    (cargoType == null ? 0 : cargoType!.hashCode) +
    (maxUnit == null ? 0 : maxUnit!.hashCode);

  @override
  String toString() => 'VehicleCargoSetting[valid=$valid, cargoType=$cargoType, maxUnit=$maxUnit]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.valid != null) {
      json[r'valid'] = this.valid;
    } else {
      json[r'valid'] = null;
    }
    if (this.cargoType != null) {
      json[r'cargoType'] = this.cargoType;
    } else {
      json[r'cargoType'] = null;
    }
    if (this.maxUnit != null) {
      json[r'maxUnit'] = this.maxUnit;
    } else {
      json[r'maxUnit'] = null;
    }
    return json;
  }

  /// Returns a new [VehicleCargoSetting] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static VehicleCargoSetting? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "VehicleCargoSetting[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "VehicleCargoSetting[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return VehicleCargoSetting(
        valid: mapValueOfType<bool>(json, r'valid'),
        cargoType: CargoType.fromJson(json[r'cargoType']),
        maxUnit: mapValueOfType<int>(json, r'maxUnit'),
      );
    }
    return null;
  }

  static List<VehicleCargoSetting> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <VehicleCargoSetting>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = VehicleCargoSetting.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, VehicleCargoSetting> mapFromJson(dynamic json) {
    final map = <String, VehicleCargoSetting>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = VehicleCargoSetting.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of VehicleCargoSetting-objects as value to a dart map
  static Map<String, List<VehicleCargoSetting>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<VehicleCargoSetting>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = VehicleCargoSetting.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

