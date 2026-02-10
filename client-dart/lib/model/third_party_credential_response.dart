//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ThirdPartyCredentialResponse {
  /// Returns a new [ThirdPartyCredentialResponse] instance.
  ThirdPartyCredentialResponse({
    this.thirdPartyCredentialId,
    this.thirdPartyId,
    this.thirdPartyName,
    this.network,
    this.updated,
    this.created,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? thirdPartyCredentialId;

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
  String? thirdPartyName;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  ThirdPartyNetworkShortResponse? network;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? updated;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? created;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ThirdPartyCredentialResponse &&
    other.thirdPartyCredentialId == thirdPartyCredentialId &&
    other.thirdPartyId == thirdPartyId &&
    other.thirdPartyName == thirdPartyName &&
    other.network == network &&
    other.updated == updated &&
    other.created == created;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (thirdPartyCredentialId == null ? 0 : thirdPartyCredentialId!.hashCode) +
    (thirdPartyId == null ? 0 : thirdPartyId!.hashCode) +
    (thirdPartyName == null ? 0 : thirdPartyName!.hashCode) +
    (network == null ? 0 : network!.hashCode) +
    (updated == null ? 0 : updated!.hashCode) +
    (created == null ? 0 : created!.hashCode);

  @override
  String toString() => 'ThirdPartyCredentialResponse[thirdPartyCredentialId=$thirdPartyCredentialId, thirdPartyId=$thirdPartyId, thirdPartyName=$thirdPartyName, network=$network, updated=$updated, created=$created]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.thirdPartyCredentialId != null) {
      json[r'thirdPartyCredentialId'] = this.thirdPartyCredentialId;
    } else {
      json[r'thirdPartyCredentialId'] = null;
    }
    if (this.thirdPartyId != null) {
      json[r'thirdPartyId'] = this.thirdPartyId;
    } else {
      json[r'thirdPartyId'] = null;
    }
    if (this.thirdPartyName != null) {
      json[r'thirdPartyName'] = this.thirdPartyName;
    } else {
      json[r'thirdPartyName'] = null;
    }
    if (this.network != null) {
      json[r'network'] = this.network;
    } else {
      json[r'network'] = null;
    }
    if (this.updated != null) {
      json[r'updated'] = this.updated;
    } else {
      json[r'updated'] = null;
    }
    if (this.created != null) {
      json[r'created'] = this.created;
    } else {
      json[r'created'] = null;
    }
    return json;
  }

  /// Returns a new [ThirdPartyCredentialResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ThirdPartyCredentialResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ThirdPartyCredentialResponse[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ThirdPartyCredentialResponse[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ThirdPartyCredentialResponse(
        thirdPartyCredentialId: mapValueOfType<int>(json, r'thirdPartyCredentialId'),
        thirdPartyId: mapValueOfType<String>(json, r'thirdPartyId'),
        thirdPartyName: mapValueOfType<String>(json, r'thirdPartyName'),
        network: ThirdPartyNetworkShortResponse.fromJson(json[r'network']),
        updated: mapValueOfType<int>(json, r'updated'),
        created: mapValueOfType<int>(json, r'created'),
      );
    }
    return null;
  }

  static List<ThirdPartyCredentialResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ThirdPartyCredentialResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ThirdPartyCredentialResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ThirdPartyCredentialResponse> mapFromJson(dynamic json) {
    final map = <String, ThirdPartyCredentialResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ThirdPartyCredentialResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ThirdPartyCredentialResponse-objects as value to a dart map
  static Map<String, List<ThirdPartyCredentialResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ThirdPartyCredentialResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ThirdPartyCredentialResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

