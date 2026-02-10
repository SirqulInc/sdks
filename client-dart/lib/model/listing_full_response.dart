//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ListingFullResponse {
  /// Returns a new [ListingFullResponse] instance.
  ListingFullResponse({
    this.id,
    this.name,
    this.description,
    this.start,
    this.end,
    this.locationName,
    this.locationDescription,
    this.privateListing,
    this.active,
    this.participants = const [],
    this.owner,
    this.filters = const [],
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
  String? name;

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
  int? start;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? end;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? locationName;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? locationDescription;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? privateListing;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? active;

  List<ParticipantResponse> participants;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  AccountShortResponse? owner;

  List<FilterResponse> filters;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ListingFullResponse &&
    other.id == id &&
    other.name == name &&
    other.description == description &&
    other.start == start &&
    other.end == end &&
    other.locationName == locationName &&
    other.locationDescription == locationDescription &&
    other.privateListing == privateListing &&
    other.active == active &&
    _deepEquality.equals(other.participants, participants) &&
    other.owner == owner &&
    _deepEquality.equals(other.filters, filters);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (description == null ? 0 : description!.hashCode) +
    (start == null ? 0 : start!.hashCode) +
    (end == null ? 0 : end!.hashCode) +
    (locationName == null ? 0 : locationName!.hashCode) +
    (locationDescription == null ? 0 : locationDescription!.hashCode) +
    (privateListing == null ? 0 : privateListing!.hashCode) +
    (active == null ? 0 : active!.hashCode) +
    (participants.hashCode) +
    (owner == null ? 0 : owner!.hashCode) +
    (filters.hashCode);

  @override
  String toString() => 'ListingFullResponse[id=$id, name=$name, description=$description, start=$start, end=$end, locationName=$locationName, locationDescription=$locationDescription, privateListing=$privateListing, active=$active, participants=$participants, owner=$owner, filters=$filters]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.description != null) {
      json[r'description'] = this.description;
    } else {
      json[r'description'] = null;
    }
    if (this.start != null) {
      json[r'start'] = this.start;
    } else {
      json[r'start'] = null;
    }
    if (this.end != null) {
      json[r'end'] = this.end;
    } else {
      json[r'end'] = null;
    }
    if (this.locationName != null) {
      json[r'locationName'] = this.locationName;
    } else {
      json[r'locationName'] = null;
    }
    if (this.locationDescription != null) {
      json[r'locationDescription'] = this.locationDescription;
    } else {
      json[r'locationDescription'] = null;
    }
    if (this.privateListing != null) {
      json[r'privateListing'] = this.privateListing;
    } else {
      json[r'privateListing'] = null;
    }
    if (this.active != null) {
      json[r'active'] = this.active;
    } else {
      json[r'active'] = null;
    }
      json[r'participants'] = this.participants;
    if (this.owner != null) {
      json[r'owner'] = this.owner;
    } else {
      json[r'owner'] = null;
    }
      json[r'filters'] = this.filters;
    return json;
  }

  /// Returns a new [ListingFullResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ListingFullResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ListingFullResponse[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ListingFullResponse[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ListingFullResponse(
        id: mapValueOfType<int>(json, r'id'),
        name: mapValueOfType<String>(json, r'name'),
        description: mapValueOfType<String>(json, r'description'),
        start: mapValueOfType<int>(json, r'start'),
        end: mapValueOfType<int>(json, r'end'),
        locationName: mapValueOfType<String>(json, r'locationName'),
        locationDescription: mapValueOfType<String>(json, r'locationDescription'),
        privateListing: mapValueOfType<bool>(json, r'privateListing'),
        active: mapValueOfType<bool>(json, r'active'),
        participants: ParticipantResponse.listFromJson(json[r'participants']),
        owner: AccountShortResponse.fromJson(json[r'owner']),
        filters: FilterResponse.listFromJson(json[r'filters']),
      );
    }
    return null;
  }

  static List<ListingFullResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ListingFullResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ListingFullResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ListingFullResponse> mapFromJson(dynamic json) {
    final map = <String, ListingFullResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ListingFullResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ListingFullResponse-objects as value to a dart map
  static Map<String, List<ListingFullResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ListingFullResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ListingFullResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

