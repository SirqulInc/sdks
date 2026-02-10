//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ThirdPartyCredentials {
  /// Returns a new [ThirdPartyCredentials] instance.
  ThirdPartyCredentials({
    this.id,
    this.active,
    this.valid,
    this.account,
    this.thirdPartyNetwork,
    this.thirdPartyUID,
    this.thirdPartyId,
    this.thirdPartyToken,
    this.thirdPartySecret,
    this.thirdPartyName,
    this.thirdPartyUnencryptedToken,
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
  Account? account;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  ThirdPartyNetwork? thirdPartyNetwork;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? thirdPartyUID;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? thirdPartyId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? thirdPartyToken;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? thirdPartySecret;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? thirdPartyName;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? thirdPartyUnencryptedToken;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ThirdPartyCredentials &&
    other.id == id &&
    other.active == active &&
    other.valid == valid &&
    other.account == account &&
    other.thirdPartyNetwork == thirdPartyNetwork &&
    other.thirdPartyUID == thirdPartyUID &&
    other.thirdPartyId == thirdPartyId &&
    other.thirdPartyToken == thirdPartyToken &&
    other.thirdPartySecret == thirdPartySecret &&
    other.thirdPartyName == thirdPartyName &&
    other.thirdPartyUnencryptedToken == thirdPartyUnencryptedToken;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (active == null ? 0 : active!.hashCode) +
    (valid == null ? 0 : valid!.hashCode) +
    (account == null ? 0 : account!.hashCode) +
    (thirdPartyNetwork == null ? 0 : thirdPartyNetwork!.hashCode) +
    (thirdPartyUID == null ? 0 : thirdPartyUID!.hashCode) +
    (thirdPartyId == null ? 0 : thirdPartyId!.hashCode) +
    (thirdPartyToken == null ? 0 : thirdPartyToken!.hashCode) +
    (thirdPartySecret == null ? 0 : thirdPartySecret!.hashCode) +
    (thirdPartyName == null ? 0 : thirdPartyName!.hashCode) +
    (thirdPartyUnencryptedToken == null ? 0 : thirdPartyUnencryptedToken!.hashCode);

  @override
  String toString() => 'ThirdPartyCredentials[id=$id, active=$active, valid=$valid, account=$account, thirdPartyNetwork=$thirdPartyNetwork, thirdPartyUID=$thirdPartyUID, thirdPartyId=$thirdPartyId, thirdPartyToken=$thirdPartyToken, thirdPartySecret=$thirdPartySecret, thirdPartyName=$thirdPartyName, thirdPartyUnencryptedToken=$thirdPartyUnencryptedToken]';

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
    if (this.account != null) {
      json[r'account'] = this.account;
    } else {
      json[r'account'] = null;
    }
    if (this.thirdPartyNetwork != null) {
      json[r'thirdPartyNetwork'] = this.thirdPartyNetwork;
    } else {
      json[r'thirdPartyNetwork'] = null;
    }
    if (this.thirdPartyUID != null) {
      json[r'thirdPartyUID'] = this.thirdPartyUID;
    } else {
      json[r'thirdPartyUID'] = null;
    }
    if (this.thirdPartyId != null) {
      json[r'thirdPartyId'] = this.thirdPartyId;
    } else {
      json[r'thirdPartyId'] = null;
    }
    if (this.thirdPartyToken != null) {
      json[r'thirdPartyToken'] = this.thirdPartyToken;
    } else {
      json[r'thirdPartyToken'] = null;
    }
    if (this.thirdPartySecret != null) {
      json[r'thirdPartySecret'] = this.thirdPartySecret;
    } else {
      json[r'thirdPartySecret'] = null;
    }
    if (this.thirdPartyName != null) {
      json[r'thirdPartyName'] = this.thirdPartyName;
    } else {
      json[r'thirdPartyName'] = null;
    }
    if (this.thirdPartyUnencryptedToken != null) {
      json[r'thirdPartyUnencryptedToken'] = this.thirdPartyUnencryptedToken;
    } else {
      json[r'thirdPartyUnencryptedToken'] = null;
    }
    return json;
  }

  /// Returns a new [ThirdPartyCredentials] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ThirdPartyCredentials? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ThirdPartyCredentials[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ThirdPartyCredentials[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ThirdPartyCredentials(
        id: mapValueOfType<int>(json, r'id'),
        active: mapValueOfType<bool>(json, r'active'),
        valid: mapValueOfType<bool>(json, r'valid'),
        account: Account.fromJson(json[r'account']),
        thirdPartyNetwork: ThirdPartyNetwork.fromJson(json[r'thirdPartyNetwork']),
        thirdPartyUID: mapValueOfType<int>(json, r'thirdPartyUID'),
        thirdPartyId: mapValueOfType<String>(json, r'thirdPartyId'),
        thirdPartyToken: mapValueOfType<String>(json, r'thirdPartyToken'),
        thirdPartySecret: mapValueOfType<String>(json, r'thirdPartySecret'),
        thirdPartyName: mapValueOfType<String>(json, r'thirdPartyName'),
        thirdPartyUnencryptedToken: mapValueOfType<String>(json, r'thirdPartyUnencryptedToken'),
      );
    }
    return null;
  }

  static List<ThirdPartyCredentials> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ThirdPartyCredentials>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ThirdPartyCredentials.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ThirdPartyCredentials> mapFromJson(dynamic json) {
    final map = <String, ThirdPartyCredentials>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ThirdPartyCredentials.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ThirdPartyCredentials-objects as value to a dart map
  static Map<String, List<ThirdPartyCredentials>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ThirdPartyCredentials>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ThirdPartyCredentials.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

