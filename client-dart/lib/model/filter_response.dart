//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class FilterResponse {
  /// Returns a new [FilterResponse] instance.
  FilterResponse({
    this.filterId,
    this.name,
    this.display,
    this.subFilterCount,
    this.parentId,
    this.description,
    this.active,
    this.externalId,
    this.externalType,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? filterId;

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
  String? display;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? subFilterCount;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? parentId;

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
  bool? active;

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
  String? externalType;

  @override
  bool operator ==(Object other) => identical(this, other) || other is FilterResponse &&
    other.filterId == filterId &&
    other.name == name &&
    other.display == display &&
    other.subFilterCount == subFilterCount &&
    other.parentId == parentId &&
    other.description == description &&
    other.active == active &&
    other.externalId == externalId &&
    other.externalType == externalType;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (filterId == null ? 0 : filterId!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (display == null ? 0 : display!.hashCode) +
    (subFilterCount == null ? 0 : subFilterCount!.hashCode) +
    (parentId == null ? 0 : parentId!.hashCode) +
    (description == null ? 0 : description!.hashCode) +
    (active == null ? 0 : active!.hashCode) +
    (externalId == null ? 0 : externalId!.hashCode) +
    (externalType == null ? 0 : externalType!.hashCode);

  @override
  String toString() => 'FilterResponse[filterId=$filterId, name=$name, display=$display, subFilterCount=$subFilterCount, parentId=$parentId, description=$description, active=$active, externalId=$externalId, externalType=$externalType]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.filterId != null) {
      json[r'filterId'] = this.filterId;
    } else {
      json[r'filterId'] = null;
    }
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.display != null) {
      json[r'display'] = this.display;
    } else {
      json[r'display'] = null;
    }
    if (this.subFilterCount != null) {
      json[r'subFilterCount'] = this.subFilterCount;
    } else {
      json[r'subFilterCount'] = null;
    }
    if (this.parentId != null) {
      json[r'parentId'] = this.parentId;
    } else {
      json[r'parentId'] = null;
    }
    if (this.description != null) {
      json[r'description'] = this.description;
    } else {
      json[r'description'] = null;
    }
    if (this.active != null) {
      json[r'active'] = this.active;
    } else {
      json[r'active'] = null;
    }
    if (this.externalId != null) {
      json[r'externalId'] = this.externalId;
    } else {
      json[r'externalId'] = null;
    }
    if (this.externalType != null) {
      json[r'externalType'] = this.externalType;
    } else {
      json[r'externalType'] = null;
    }
    return json;
  }

  /// Returns a new [FilterResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static FilterResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "FilterResponse[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "FilterResponse[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return FilterResponse(
        filterId: mapValueOfType<int>(json, r'filterId'),
        name: mapValueOfType<String>(json, r'name'),
        display: mapValueOfType<String>(json, r'display'),
        subFilterCount: mapValueOfType<int>(json, r'subFilterCount'),
        parentId: mapValueOfType<int>(json, r'parentId'),
        description: mapValueOfType<String>(json, r'description'),
        active: mapValueOfType<bool>(json, r'active'),
        externalId: mapValueOfType<String>(json, r'externalId'),
        externalType: mapValueOfType<String>(json, r'externalType'),
      );
    }
    return null;
  }

  static List<FilterResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <FilterResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = FilterResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, FilterResponse> mapFromJson(dynamic json) {
    final map = <String, FilterResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = FilterResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of FilterResponse-objects as value to a dart map
  static Map<String, List<FilterResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<FilterResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = FilterResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

