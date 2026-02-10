//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CargoType {
  /// Returns a new [CargoType] instance.
  CargoType({
    this.id,
    this.active,
    this.valid,
    this.business,
    this.hub,
    this.name,
    this.width,
    this.height,
    this.depth,
    this.volume,
    this.weight,
    this.loadTime,
    this.palletizable,
    this.palletRatio,
    this.adminOnly,
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
  Retailer? business;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  ServiceHub? hub;

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
  double? width;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? height;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? depth;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? volume;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? weight;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? loadTime;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? palletizable;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? palletRatio;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? adminOnly;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CargoType &&
    other.id == id &&
    other.active == active &&
    other.valid == valid &&
    other.business == business &&
    other.hub == hub &&
    other.name == name &&
    other.width == width &&
    other.height == height &&
    other.depth == depth &&
    other.volume == volume &&
    other.weight == weight &&
    other.loadTime == loadTime &&
    other.palletizable == palletizable &&
    other.palletRatio == palletRatio &&
    other.adminOnly == adminOnly;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (active == null ? 0 : active!.hashCode) +
    (valid == null ? 0 : valid!.hashCode) +
    (business == null ? 0 : business!.hashCode) +
    (hub == null ? 0 : hub!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (width == null ? 0 : width!.hashCode) +
    (height == null ? 0 : height!.hashCode) +
    (depth == null ? 0 : depth!.hashCode) +
    (volume == null ? 0 : volume!.hashCode) +
    (weight == null ? 0 : weight!.hashCode) +
    (loadTime == null ? 0 : loadTime!.hashCode) +
    (palletizable == null ? 0 : palletizable!.hashCode) +
    (palletRatio == null ? 0 : palletRatio!.hashCode) +
    (adminOnly == null ? 0 : adminOnly!.hashCode);

  @override
  String toString() => 'CargoType[id=$id, active=$active, valid=$valid, business=$business, hub=$hub, name=$name, width=$width, height=$height, depth=$depth, volume=$volume, weight=$weight, loadTime=$loadTime, palletizable=$palletizable, palletRatio=$palletRatio, adminOnly=$adminOnly]';

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
    if (this.business != null) {
      json[r'business'] = this.business;
    } else {
      json[r'business'] = null;
    }
    if (this.hub != null) {
      json[r'hub'] = this.hub;
    } else {
      json[r'hub'] = null;
    }
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.width != null) {
      json[r'width'] = this.width;
    } else {
      json[r'width'] = null;
    }
    if (this.height != null) {
      json[r'height'] = this.height;
    } else {
      json[r'height'] = null;
    }
    if (this.depth != null) {
      json[r'depth'] = this.depth;
    } else {
      json[r'depth'] = null;
    }
    if (this.volume != null) {
      json[r'volume'] = this.volume;
    } else {
      json[r'volume'] = null;
    }
    if (this.weight != null) {
      json[r'weight'] = this.weight;
    } else {
      json[r'weight'] = null;
    }
    if (this.loadTime != null) {
      json[r'loadTime'] = this.loadTime;
    } else {
      json[r'loadTime'] = null;
    }
    if (this.palletizable != null) {
      json[r'palletizable'] = this.palletizable;
    } else {
      json[r'palletizable'] = null;
    }
    if (this.palletRatio != null) {
      json[r'palletRatio'] = this.palletRatio;
    } else {
      json[r'palletRatio'] = null;
    }
    if (this.adminOnly != null) {
      json[r'adminOnly'] = this.adminOnly;
    } else {
      json[r'adminOnly'] = null;
    }
    return json;
  }

  /// Returns a new [CargoType] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CargoType? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CargoType[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CargoType[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CargoType(
        id: mapValueOfType<int>(json, r'id'),
        active: mapValueOfType<bool>(json, r'active'),
        valid: mapValueOfType<bool>(json, r'valid'),
        business: Retailer.fromJson(json[r'business']),
        hub: ServiceHub.fromJson(json[r'hub']),
        name: mapValueOfType<String>(json, r'name'),
        width: mapValueOfType<double>(json, r'width'),
        height: mapValueOfType<double>(json, r'height'),
        depth: mapValueOfType<double>(json, r'depth'),
        volume: mapValueOfType<double>(json, r'volume'),
        weight: mapValueOfType<double>(json, r'weight'),
        loadTime: mapValueOfType<int>(json, r'loadTime'),
        palletizable: mapValueOfType<bool>(json, r'palletizable'),
        palletRatio: mapValueOfType<int>(json, r'palletRatio'),
        adminOnly: mapValueOfType<bool>(json, r'adminOnly'),
      );
    }
    return null;
  }

  static List<CargoType> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CargoType>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CargoType.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CargoType> mapFromJson(dynamic json) {
    final map = <String, CargoType>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CargoType.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CargoType-objects as value to a dart map
  static Map<String, List<CargoType>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CargoType>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CargoType.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

