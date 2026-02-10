//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class YayOrNay {
  /// Returns a new [YayOrNay] instance.
  YayOrNay({
    this.id,
    this.active,
    this.valid,
    this.owner,
    this.yayOrNay,
    this.likableObjectType,
    this.likableObjectId,
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
  Account? owner;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? yayOrNay;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? likableObjectType;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? likableObjectId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is YayOrNay &&
    other.id == id &&
    other.active == active &&
    other.valid == valid &&
    other.owner == owner &&
    other.yayOrNay == yayOrNay &&
    other.likableObjectType == likableObjectType &&
    other.likableObjectId == likableObjectId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (active == null ? 0 : active!.hashCode) +
    (valid == null ? 0 : valid!.hashCode) +
    (owner == null ? 0 : owner!.hashCode) +
    (yayOrNay == null ? 0 : yayOrNay!.hashCode) +
    (likableObjectType == null ? 0 : likableObjectType!.hashCode) +
    (likableObjectId == null ? 0 : likableObjectId!.hashCode);

  @override
  String toString() => 'YayOrNay[id=$id, active=$active, valid=$valid, owner=$owner, yayOrNay=$yayOrNay, likableObjectType=$likableObjectType, likableObjectId=$likableObjectId]';

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
    if (this.owner != null) {
      json[r'owner'] = this.owner;
    } else {
      json[r'owner'] = null;
    }
    if (this.yayOrNay != null) {
      json[r'yayOrNay'] = this.yayOrNay;
    } else {
      json[r'yayOrNay'] = null;
    }
    if (this.likableObjectType != null) {
      json[r'likableObjectType'] = this.likableObjectType;
    } else {
      json[r'likableObjectType'] = null;
    }
    if (this.likableObjectId != null) {
      json[r'likableObjectId'] = this.likableObjectId;
    } else {
      json[r'likableObjectId'] = null;
    }
    return json;
  }

  /// Returns a new [YayOrNay] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static YayOrNay? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "YayOrNay[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "YayOrNay[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return YayOrNay(
        id: mapValueOfType<int>(json, r'id'),
        active: mapValueOfType<bool>(json, r'active'),
        valid: mapValueOfType<bool>(json, r'valid'),
        owner: Account.fromJson(json[r'owner']),
        yayOrNay: mapValueOfType<bool>(json, r'yayOrNay'),
        likableObjectType: mapValueOfType<String>(json, r'likableObjectType'),
        likableObjectId: mapValueOfType<int>(json, r'likableObjectId'),
      );
    }
    return null;
  }

  static List<YayOrNay> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <YayOrNay>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = YayOrNay.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, YayOrNay> mapFromJson(dynamic json) {
    final map = <String, YayOrNay>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = YayOrNay.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of YayOrNay-objects as value to a dart map
  static Map<String, List<YayOrNay>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<YayOrNay>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = YayOrNay.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

