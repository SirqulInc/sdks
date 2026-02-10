//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Listing {
  /// Returns a new [Listing] instance.
  Listing({
    this.id,
    this.active,
    this.valid,
    this.owner,
    this.name,
    this.description,
    this.start,
    this.end,
    this.locationName,
    this.locationDescription,
    this.participants = const [],
    this.externalId,
    this.externalGroupId,
    this.filters = const [],
    this.private,
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
  DateTime? start;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? end;

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

  List<Participant> participants;

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
  String? externalGroupId;

  List<Filter> filters;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? private;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Listing &&
    other.id == id &&
    other.active == active &&
    other.valid == valid &&
    other.owner == owner &&
    other.name == name &&
    other.description == description &&
    other.start == start &&
    other.end == end &&
    other.locationName == locationName &&
    other.locationDescription == locationDescription &&
    _deepEquality.equals(other.participants, participants) &&
    other.externalId == externalId &&
    other.externalGroupId == externalGroupId &&
    _deepEquality.equals(other.filters, filters) &&
    other.private == private;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (active == null ? 0 : active!.hashCode) +
    (valid == null ? 0 : valid!.hashCode) +
    (owner == null ? 0 : owner!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (description == null ? 0 : description!.hashCode) +
    (start == null ? 0 : start!.hashCode) +
    (end == null ? 0 : end!.hashCode) +
    (locationName == null ? 0 : locationName!.hashCode) +
    (locationDescription == null ? 0 : locationDescription!.hashCode) +
    (participants.hashCode) +
    (externalId == null ? 0 : externalId!.hashCode) +
    (externalGroupId == null ? 0 : externalGroupId!.hashCode) +
    (filters.hashCode) +
    (private == null ? 0 : private!.hashCode);

  @override
  String toString() => 'Listing[id=$id, active=$active, valid=$valid, owner=$owner, name=$name, description=$description, start=$start, end=$end, locationName=$locationName, locationDescription=$locationDescription, participants=$participants, externalId=$externalId, externalGroupId=$externalGroupId, filters=$filters, private=$private]';

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
      json[r'start'] = this.start!.toUtc().toIso8601String();
    } else {
      json[r'start'] = null;
    }
    if (this.end != null) {
      json[r'end'] = this.end!.toUtc().toIso8601String();
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
      json[r'participants'] = this.participants;
    if (this.externalId != null) {
      json[r'externalId'] = this.externalId;
    } else {
      json[r'externalId'] = null;
    }
    if (this.externalGroupId != null) {
      json[r'externalGroupId'] = this.externalGroupId;
    } else {
      json[r'externalGroupId'] = null;
    }
      json[r'filters'] = this.filters;
    if (this.private != null) {
      json[r'private'] = this.private;
    } else {
      json[r'private'] = null;
    }
    return json;
  }

  /// Returns a new [Listing] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Listing? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Listing[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Listing[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Listing(
        id: mapValueOfType<int>(json, r'id'),
        active: mapValueOfType<bool>(json, r'active'),
        valid: mapValueOfType<bool>(json, r'valid'),
        owner: Account.fromJson(json[r'owner']),
        name: mapValueOfType<String>(json, r'name'),
        description: mapValueOfType<String>(json, r'description'),
        start: mapDateTime(json, r'start', r''),
        end: mapDateTime(json, r'end', r''),
        locationName: mapValueOfType<String>(json, r'locationName'),
        locationDescription: mapValueOfType<String>(json, r'locationDescription'),
        participants: Participant.listFromJson(json[r'participants']),
        externalId: mapValueOfType<String>(json, r'externalId'),
        externalGroupId: mapValueOfType<String>(json, r'externalGroupId'),
        filters: Filter.listFromJson(json[r'filters']),
        private: mapValueOfType<bool>(json, r'private'),
      );
    }
    return null;
  }

  static List<Listing> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Listing>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Listing.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Listing> mapFromJson(dynamic json) {
    final map = <String, Listing>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Listing.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Listing-objects as value to a dart map
  static Map<String, List<Listing>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Listing>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Listing.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

