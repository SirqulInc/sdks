//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class RegionLegSummary {
  /// Returns a new [RegionLegSummary] instance.
  RegionLegSummary({
    this.id,
    this.active,
    this.valid,
    this.regionId,
    this.floorId,
    this.retailerLocationId,
    this.legId,
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
  int? regionId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? floorId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? retailerLocationId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? legId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RegionLegSummary &&
    other.id == id &&
    other.active == active &&
    other.valid == valid &&
    other.regionId == regionId &&
    other.floorId == floorId &&
    other.retailerLocationId == retailerLocationId &&
    other.legId == legId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (active == null ? 0 : active!.hashCode) +
    (valid == null ? 0 : valid!.hashCode) +
    (regionId == null ? 0 : regionId!.hashCode) +
    (floorId == null ? 0 : floorId!.hashCode) +
    (retailerLocationId == null ? 0 : retailerLocationId!.hashCode) +
    (legId == null ? 0 : legId!.hashCode);

  @override
  String toString() => 'RegionLegSummary[id=$id, active=$active, valid=$valid, regionId=$regionId, floorId=$floorId, retailerLocationId=$retailerLocationId, legId=$legId]';

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
    if (this.regionId != null) {
      json[r'regionId'] = this.regionId;
    } else {
      json[r'regionId'] = null;
    }
    if (this.floorId != null) {
      json[r'floorId'] = this.floorId;
    } else {
      json[r'floorId'] = null;
    }
    if (this.retailerLocationId != null) {
      json[r'retailerLocationId'] = this.retailerLocationId;
    } else {
      json[r'retailerLocationId'] = null;
    }
    if (this.legId != null) {
      json[r'legId'] = this.legId;
    } else {
      json[r'legId'] = null;
    }
    return json;
  }

  /// Returns a new [RegionLegSummary] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RegionLegSummary? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "RegionLegSummary[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "RegionLegSummary[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return RegionLegSummary(
        id: mapValueOfType<int>(json, r'id'),
        active: mapValueOfType<bool>(json, r'active'),
        valid: mapValueOfType<bool>(json, r'valid'),
        regionId: mapValueOfType<int>(json, r'regionId'),
        floorId: mapValueOfType<String>(json, r'floorId'),
        retailerLocationId: mapValueOfType<int>(json, r'retailerLocationId'),
        legId: mapValueOfType<int>(json, r'legId'),
      );
    }
    return null;
  }

  static List<RegionLegSummary> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <RegionLegSummary>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RegionLegSummary.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, RegionLegSummary> mapFromJson(dynamic json) {
    final map = <String, RegionLegSummary>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RegionLegSummary.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of RegionLegSummary-objects as value to a dart map
  static Map<String, List<RegionLegSummary>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<RegionLegSummary>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = RegionLegSummary.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

