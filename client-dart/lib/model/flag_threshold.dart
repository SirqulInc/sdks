//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class FlagThreshold {
  /// Returns a new [FlagThreshold] instance.
  FlagThreshold({
    this.id,
    this.active,
    this.valid,
    this.threshold,
    this.flagableObjectType,
    this.application,
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
  int? threshold;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? flagableObjectType;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Application? application;

  @override
  bool operator ==(Object other) => identical(this, other) || other is FlagThreshold &&
    other.id == id &&
    other.active == active &&
    other.valid == valid &&
    other.threshold == threshold &&
    other.flagableObjectType == flagableObjectType &&
    other.application == application;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (active == null ? 0 : active!.hashCode) +
    (valid == null ? 0 : valid!.hashCode) +
    (threshold == null ? 0 : threshold!.hashCode) +
    (flagableObjectType == null ? 0 : flagableObjectType!.hashCode) +
    (application == null ? 0 : application!.hashCode);

  @override
  String toString() => 'FlagThreshold[id=$id, active=$active, valid=$valid, threshold=$threshold, flagableObjectType=$flagableObjectType, application=$application]';

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
    if (this.threshold != null) {
      json[r'threshold'] = this.threshold;
    } else {
      json[r'threshold'] = null;
    }
    if (this.flagableObjectType != null) {
      json[r'flagableObjectType'] = this.flagableObjectType;
    } else {
      json[r'flagableObjectType'] = null;
    }
    if (this.application != null) {
      json[r'application'] = this.application;
    } else {
      json[r'application'] = null;
    }
    return json;
  }

  /// Returns a new [FlagThreshold] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static FlagThreshold? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "FlagThreshold[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "FlagThreshold[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return FlagThreshold(
        id: mapValueOfType<int>(json, r'id'),
        active: mapValueOfType<bool>(json, r'active'),
        valid: mapValueOfType<bool>(json, r'valid'),
        threshold: mapValueOfType<int>(json, r'threshold'),
        flagableObjectType: mapValueOfType<String>(json, r'flagableObjectType'),
        application: Application.fromJson(json[r'application']),
      );
    }
    return null;
  }

  static List<FlagThreshold> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <FlagThreshold>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = FlagThreshold.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, FlagThreshold> mapFromJson(dynamic json) {
    final map = <String, FlagThreshold>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = FlagThreshold.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of FlagThreshold-objects as value to a dart map
  static Map<String, List<FlagThreshold>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<FlagThreshold>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = FlagThreshold.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

