//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class BillableEntityShortResponse {
  /// Returns a new [BillableEntityShortResponse] instance.
  BillableEntityShortResponse({
    this.billableEntityId,
    this.name,
    this.responsible,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? billableEntityId;

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
  ProfileShortResponse? responsible;

  @override
  bool operator ==(Object other) => identical(this, other) || other is BillableEntityShortResponse &&
    other.billableEntityId == billableEntityId &&
    other.name == name &&
    other.responsible == responsible;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (billableEntityId == null ? 0 : billableEntityId!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (responsible == null ? 0 : responsible!.hashCode);

  @override
  String toString() => 'BillableEntityShortResponse[billableEntityId=$billableEntityId, name=$name, responsible=$responsible]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.billableEntityId != null) {
      json[r'billableEntityId'] = this.billableEntityId;
    } else {
      json[r'billableEntityId'] = null;
    }
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.responsible != null) {
      json[r'responsible'] = this.responsible;
    } else {
      json[r'responsible'] = null;
    }
    return json;
  }

  /// Returns a new [BillableEntityShortResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static BillableEntityShortResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "BillableEntityShortResponse[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "BillableEntityShortResponse[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return BillableEntityShortResponse(
        billableEntityId: mapValueOfType<int>(json, r'billableEntityId'),
        name: mapValueOfType<String>(json, r'name'),
        responsible: ProfileShortResponse.fromJson(json[r'responsible']),
      );
    }
    return null;
  }

  static List<BillableEntityShortResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <BillableEntityShortResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = BillableEntityShortResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, BillableEntityShortResponse> mapFromJson(dynamic json) {
    final map = <String, BillableEntityShortResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = BillableEntityShortResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of BillableEntityShortResponse-objects as value to a dart map
  static Map<String, List<BillableEntityShortResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<BillableEntityShortResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = BillableEntityShortResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

