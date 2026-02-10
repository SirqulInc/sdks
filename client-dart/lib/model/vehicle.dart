//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Vehicle {
  /// Returns a new [Vehicle] instance.
  Vehicle({
    this.id,
    this.active,
    this.valid,
    this.name,
    this.description,
    this.vehicleType,
    this.vin,
    this.licensePlateNumber,
    this.externalId,
    this.hub,
    this.programs = const [],
    this.seatQuantity,
    this.picture,
    this.markerIcon,
    this.trackingColor,
    this.belongsTo,
    this.zone,
    this.notes = const [],
    this.noteCount,
    this.inUse,
    this.contentName,
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
  String? name;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? description;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  VehicleType? vehicleType;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? vin;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? licensePlateNumber;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? externalId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  ServiceHub? hub;

  List<Program> programs;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? seatQuantity;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Asset? picture;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Asset? markerIcon;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? trackingColor;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Account? belongsTo;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Region? zone;

  List<Note> notes;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? noteCount;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? inUse;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? contentName;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Vehicle &&
    other.id == id &&
    other.active == active &&
    other.valid == valid &&
    other.name == name &&
    other.description == description &&
    other.vehicleType == vehicleType &&
    other.vin == vin &&
    other.licensePlateNumber == licensePlateNumber &&
    other.externalId == externalId &&
    other.hub == hub &&
    _deepEquality.equals(other.programs, programs) &&
    other.seatQuantity == seatQuantity &&
    other.picture == picture &&
    other.markerIcon == markerIcon &&
    other.trackingColor == trackingColor &&
    other.belongsTo == belongsTo &&
    other.zone == zone &&
    _deepEquality.equals(other.notes, notes) &&
    other.noteCount == noteCount &&
    other.inUse == inUse &&
    other.contentName == contentName;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (active == null ? 0 : active!.hashCode) +
    (valid == null ? 0 : valid!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (description == null ? 0 : description!.hashCode) +
    (vehicleType == null ? 0 : vehicleType!.hashCode) +
    (vin == null ? 0 : vin!.hashCode) +
    (licensePlateNumber == null ? 0 : licensePlateNumber!.hashCode) +
    (externalId == null ? 0 : externalId!.hashCode) +
    (hub == null ? 0 : hub!.hashCode) +
    (programs.hashCode) +
    (seatQuantity == null ? 0 : seatQuantity!.hashCode) +
    (picture == null ? 0 : picture!.hashCode) +
    (markerIcon == null ? 0 : markerIcon!.hashCode) +
    (trackingColor == null ? 0 : trackingColor!.hashCode) +
    (belongsTo == null ? 0 : belongsTo!.hashCode) +
    (zone == null ? 0 : zone!.hashCode) +
    (notes.hashCode) +
    (noteCount == null ? 0 : noteCount!.hashCode) +
    (inUse == null ? 0 : inUse!.hashCode) +
    (contentName == null ? 0 : contentName!.hashCode);

  @override
  String toString() => 'Vehicle[id=$id, active=$active, valid=$valid, name=$name, description=$description, vehicleType=$vehicleType, vin=$vin, licensePlateNumber=$licensePlateNumber, externalId=$externalId, hub=$hub, programs=$programs, seatQuantity=$seatQuantity, picture=$picture, markerIcon=$markerIcon, trackingColor=$trackingColor, belongsTo=$belongsTo, zone=$zone, notes=$notes, noteCount=$noteCount, inUse=$inUse, contentName=$contentName]';

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
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.description != null) {
      json[r'description'] = this.description;
    } else {
      json[r'description'] = null;
    }
    if (this.vehicleType != null) {
      json[r'vehicleType'] = this.vehicleType;
    } else {
      json[r'vehicleType'] = null;
    }
    if (this.vin != null) {
      json[r'vin'] = this.vin;
    } else {
      json[r'vin'] = null;
    }
    if (this.licensePlateNumber != null) {
      json[r'licensePlateNumber'] = this.licensePlateNumber;
    } else {
      json[r'licensePlateNumber'] = null;
    }
    if (this.externalId != null) {
      json[r'externalId'] = this.externalId;
    } else {
      json[r'externalId'] = null;
    }
    if (this.hub != null) {
      json[r'hub'] = this.hub;
    } else {
      json[r'hub'] = null;
    }
      json[r'programs'] = this.programs;
    if (this.seatQuantity != null) {
      json[r'seatQuantity'] = this.seatQuantity;
    } else {
      json[r'seatQuantity'] = null;
    }
    if (this.picture != null) {
      json[r'picture'] = this.picture;
    } else {
      json[r'picture'] = null;
    }
    if (this.markerIcon != null) {
      json[r'markerIcon'] = this.markerIcon;
    } else {
      json[r'markerIcon'] = null;
    }
    if (this.trackingColor != null) {
      json[r'trackingColor'] = this.trackingColor;
    } else {
      json[r'trackingColor'] = null;
    }
    if (this.belongsTo != null) {
      json[r'belongsTo'] = this.belongsTo;
    } else {
      json[r'belongsTo'] = null;
    }
    if (this.zone != null) {
      json[r'zone'] = this.zone;
    } else {
      json[r'zone'] = null;
    }
      json[r'notes'] = this.notes;
    if (this.noteCount != null) {
      json[r'noteCount'] = this.noteCount;
    } else {
      json[r'noteCount'] = null;
    }
    if (this.inUse != null) {
      json[r'inUse'] = this.inUse;
    } else {
      json[r'inUse'] = null;
    }
    if (this.contentName != null) {
      json[r'contentName'] = this.contentName;
    } else {
      json[r'contentName'] = null;
    }
    return json;
  }

  /// Returns a new [Vehicle] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Vehicle? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Vehicle[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Vehicle[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Vehicle(
        id: mapValueOfType<int>(json, r'id'),
        active: mapValueOfType<bool>(json, r'active'),
        valid: mapValueOfType<bool>(json, r'valid'),
        name: mapValueOfType<String>(json, r'name'),
        description: mapValueOfType<String>(json, r'description'),
        vehicleType: VehicleType.fromJson(json[r'vehicleType']),
        vin: mapValueOfType<String>(json, r'vin'),
        licensePlateNumber: mapValueOfType<String>(json, r'licensePlateNumber'),
        externalId: mapValueOfType<String>(json, r'externalId'),
        hub: ServiceHub.fromJson(json[r'hub']),
        programs: Program.listFromJson(json[r'programs']),
        seatQuantity: mapValueOfType<int>(json, r'seatQuantity'),
        picture: Asset.fromJson(json[r'picture']),
        markerIcon: Asset.fromJson(json[r'markerIcon']),
        trackingColor: mapValueOfType<String>(json, r'trackingColor'),
        belongsTo: Account.fromJson(json[r'belongsTo']),
        zone: Region.fromJson(json[r'zone']),
        notes: Note.listFromJson(json[r'notes']),
        noteCount: mapValueOfType<int>(json, r'noteCount'),
        inUse: mapValueOfType<bool>(json, r'inUse'),
        contentName: mapValueOfType<String>(json, r'contentName'),
      );
    }
    return null;
  }

  static List<Vehicle> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Vehicle>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Vehicle.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Vehicle> mapFromJson(dynamic json) {
    final map = <String, Vehicle>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Vehicle.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Vehicle-objects as value to a dart map
  static Map<String, List<Vehicle>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Vehicle>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Vehicle.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

