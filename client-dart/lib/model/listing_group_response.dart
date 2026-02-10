//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ListingGroupResponse {
  /// Returns a new [ListingGroupResponse] instance.
  ListingGroupResponse({
    this.category,
    this.listings = const [],
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  CategoryResponse? category;

  List<ListingResponse> listings;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ListingGroupResponse &&
    other.category == category &&
    _deepEquality.equals(other.listings, listings);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (category == null ? 0 : category!.hashCode) +
    (listings.hashCode);

  @override
  String toString() => 'ListingGroupResponse[category=$category, listings=$listings]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.category != null) {
      json[r'category'] = this.category;
    } else {
      json[r'category'] = null;
    }
      json[r'listings'] = this.listings;
    return json;
  }

  /// Returns a new [ListingGroupResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ListingGroupResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ListingGroupResponse[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ListingGroupResponse[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ListingGroupResponse(
        category: CategoryResponse.fromJson(json[r'category']),
        listings: ListingResponse.listFromJson(json[r'listings']),
      );
    }
    return null;
  }

  static List<ListingGroupResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ListingGroupResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ListingGroupResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ListingGroupResponse> mapFromJson(dynamic json) {
    final map = <String, ListingGroupResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ListingGroupResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ListingGroupResponse-objects as value to a dart map
  static Map<String, List<ListingGroupResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ListingGroupResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ListingGroupResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

