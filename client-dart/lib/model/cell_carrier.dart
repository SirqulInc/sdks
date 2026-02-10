//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CellCarrier {
  /// Returns a new [CellCarrier] instance.
  CellCarrier({
    this.id,
    this.active,
    this.valid,
    this.uid,
    this.display,
    this.emailFormat,
    this.apiUrl,
    this.authUrl,
    this.shortCode,
    this.clientId,
    this.clientSecret,
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
  String? uid;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? display;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? emailFormat;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? apiUrl;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? authUrl;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? shortCode;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? clientId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? clientSecret;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CellCarrier &&
    other.id == id &&
    other.active == active &&
    other.valid == valid &&
    other.uid == uid &&
    other.display == display &&
    other.emailFormat == emailFormat &&
    other.apiUrl == apiUrl &&
    other.authUrl == authUrl &&
    other.shortCode == shortCode &&
    other.clientId == clientId &&
    other.clientSecret == clientSecret;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (active == null ? 0 : active!.hashCode) +
    (valid == null ? 0 : valid!.hashCode) +
    (uid == null ? 0 : uid!.hashCode) +
    (display == null ? 0 : display!.hashCode) +
    (emailFormat == null ? 0 : emailFormat!.hashCode) +
    (apiUrl == null ? 0 : apiUrl!.hashCode) +
    (authUrl == null ? 0 : authUrl!.hashCode) +
    (shortCode == null ? 0 : shortCode!.hashCode) +
    (clientId == null ? 0 : clientId!.hashCode) +
    (clientSecret == null ? 0 : clientSecret!.hashCode);

  @override
  String toString() => 'CellCarrier[id=$id, active=$active, valid=$valid, uid=$uid, display=$display, emailFormat=$emailFormat, apiUrl=$apiUrl, authUrl=$authUrl, shortCode=$shortCode, clientId=$clientId, clientSecret=$clientSecret]';

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
    if (this.uid != null) {
      json[r'uid'] = this.uid;
    } else {
      json[r'uid'] = null;
    }
    if (this.display != null) {
      json[r'display'] = this.display;
    } else {
      json[r'display'] = null;
    }
    if (this.emailFormat != null) {
      json[r'emailFormat'] = this.emailFormat;
    } else {
      json[r'emailFormat'] = null;
    }
    if (this.apiUrl != null) {
      json[r'apiUrl'] = this.apiUrl;
    } else {
      json[r'apiUrl'] = null;
    }
    if (this.authUrl != null) {
      json[r'authUrl'] = this.authUrl;
    } else {
      json[r'authUrl'] = null;
    }
    if (this.shortCode != null) {
      json[r'shortCode'] = this.shortCode;
    } else {
      json[r'shortCode'] = null;
    }
    if (this.clientId != null) {
      json[r'clientId'] = this.clientId;
    } else {
      json[r'clientId'] = null;
    }
    if (this.clientSecret != null) {
      json[r'clientSecret'] = this.clientSecret;
    } else {
      json[r'clientSecret'] = null;
    }
    return json;
  }

  /// Returns a new [CellCarrier] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CellCarrier? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CellCarrier[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CellCarrier[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CellCarrier(
        id: mapValueOfType<int>(json, r'id'),
        active: mapValueOfType<bool>(json, r'active'),
        valid: mapValueOfType<bool>(json, r'valid'),
        uid: mapValueOfType<String>(json, r'uid'),
        display: mapValueOfType<String>(json, r'display'),
        emailFormat: mapValueOfType<String>(json, r'emailFormat'),
        apiUrl: mapValueOfType<String>(json, r'apiUrl'),
        authUrl: mapValueOfType<String>(json, r'authUrl'),
        shortCode: mapValueOfType<String>(json, r'shortCode'),
        clientId: mapValueOfType<String>(json, r'clientId'),
        clientSecret: mapValueOfType<String>(json, r'clientSecret'),
      );
    }
    return null;
  }

  static List<CellCarrier> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CellCarrier>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CellCarrier.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CellCarrier> mapFromJson(dynamic json) {
    final map = <String, CellCarrier>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CellCarrier.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CellCarrier-objects as value to a dart map
  static Map<String, List<CellCarrier>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CellCarrier>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CellCarrier.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

