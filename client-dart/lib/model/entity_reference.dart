//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EntityReference {
  /// Returns a new [EntityReference] instance.
  EntityReference({
    this.id,
    this.active,
    this.valid,
    this.entityType,
    this.masterEntityId,
    this.slaveUID,
    this.slaveEntityId,
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
  String? entityType;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? masterEntityId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? slaveUID;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? slaveEntityId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EntityReference &&
    other.id == id &&
    other.active == active &&
    other.valid == valid &&
    other.entityType == entityType &&
    other.masterEntityId == masterEntityId &&
    other.slaveUID == slaveUID &&
    other.slaveEntityId == slaveEntityId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (active == null ? 0 : active!.hashCode) +
    (valid == null ? 0 : valid!.hashCode) +
    (entityType == null ? 0 : entityType!.hashCode) +
    (masterEntityId == null ? 0 : masterEntityId!.hashCode) +
    (slaveUID == null ? 0 : slaveUID!.hashCode) +
    (slaveEntityId == null ? 0 : slaveEntityId!.hashCode);

  @override
  String toString() => 'EntityReference[id=$id, active=$active, valid=$valid, entityType=$entityType, masterEntityId=$masterEntityId, slaveUID=$slaveUID, slaveEntityId=$slaveEntityId]';

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
    if (this.entityType != null) {
      json[r'entityType'] = this.entityType;
    } else {
      json[r'entityType'] = null;
    }
    if (this.masterEntityId != null) {
      json[r'masterEntityId'] = this.masterEntityId;
    } else {
      json[r'masterEntityId'] = null;
    }
    if (this.slaveUID != null) {
      json[r'slaveUID'] = this.slaveUID;
    } else {
      json[r'slaveUID'] = null;
    }
    if (this.slaveEntityId != null) {
      json[r'slaveEntityId'] = this.slaveEntityId;
    } else {
      json[r'slaveEntityId'] = null;
    }
    return json;
  }

  /// Returns a new [EntityReference] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EntityReference? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EntityReference[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EntityReference[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EntityReference(
        id: mapValueOfType<int>(json, r'id'),
        active: mapValueOfType<bool>(json, r'active'),
        valid: mapValueOfType<bool>(json, r'valid'),
        entityType: mapValueOfType<String>(json, r'entityType'),
        masterEntityId: mapValueOfType<int>(json, r'masterEntityId'),
        slaveUID: mapValueOfType<String>(json, r'slaveUID'),
        slaveEntityId: mapValueOfType<int>(json, r'slaveEntityId'),
      );
    }
    return null;
  }

  static List<EntityReference> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EntityReference>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EntityReference.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EntityReference> mapFromJson(dynamic json) {
    final map = <String, EntityReference>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EntityReference.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EntityReference-objects as value to a dart map
  static Map<String, List<EntityReference>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EntityReference>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EntityReference.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

