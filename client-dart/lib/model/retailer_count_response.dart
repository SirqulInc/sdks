//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class RetailerCountResponse {
  /// Returns a new [RetailerCountResponse] instance.
  RetailerCountResponse({
    this.locations,
    this.transactions,
    this.offers,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? locations;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? transactions;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? offers;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RetailerCountResponse &&
    other.locations == locations &&
    other.transactions == transactions &&
    other.offers == offers;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (locations == null ? 0 : locations!.hashCode) +
    (transactions == null ? 0 : transactions!.hashCode) +
    (offers == null ? 0 : offers!.hashCode);

  @override
  String toString() => 'RetailerCountResponse[locations=$locations, transactions=$transactions, offers=$offers]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.locations != null) {
      json[r'locations'] = this.locations;
    } else {
      json[r'locations'] = null;
    }
    if (this.transactions != null) {
      json[r'transactions'] = this.transactions;
    } else {
      json[r'transactions'] = null;
    }
    if (this.offers != null) {
      json[r'offers'] = this.offers;
    } else {
      json[r'offers'] = null;
    }
    return json;
  }

  /// Returns a new [RetailerCountResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RetailerCountResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "RetailerCountResponse[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "RetailerCountResponse[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return RetailerCountResponse(
        locations: mapValueOfType<int>(json, r'locations'),
        transactions: mapValueOfType<int>(json, r'transactions'),
        offers: mapValueOfType<int>(json, r'offers'),
      );
    }
    return null;
  }

  static List<RetailerCountResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <RetailerCountResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RetailerCountResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, RetailerCountResponse> mapFromJson(dynamic json) {
    final map = <String, RetailerCountResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RetailerCountResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of RetailerCountResponse-objects as value to a dart map
  static Map<String, List<RetailerCountResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<RetailerCountResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = RetailerCountResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

