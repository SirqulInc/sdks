//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class RankResponse {
  /// Returns a new [RankResponse] instance.
  RankResponse({
    this.owner,
    this.rank,
    this.scoreValue,
    this.timeValue,
    this.countValue,
    this.updated,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  AccountShortResponse? owner;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? rank;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? scoreValue;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? timeValue;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? countValue;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? updated;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RankResponse &&
    other.owner == owner &&
    other.rank == rank &&
    other.scoreValue == scoreValue &&
    other.timeValue == timeValue &&
    other.countValue == countValue &&
    other.updated == updated;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (owner == null ? 0 : owner!.hashCode) +
    (rank == null ? 0 : rank!.hashCode) +
    (scoreValue == null ? 0 : scoreValue!.hashCode) +
    (timeValue == null ? 0 : timeValue!.hashCode) +
    (countValue == null ? 0 : countValue!.hashCode) +
    (updated == null ? 0 : updated!.hashCode);

  @override
  String toString() => 'RankResponse[owner=$owner, rank=$rank, scoreValue=$scoreValue, timeValue=$timeValue, countValue=$countValue, updated=$updated]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.owner != null) {
      json[r'owner'] = this.owner;
    } else {
      json[r'owner'] = null;
    }
    if (this.rank != null) {
      json[r'rank'] = this.rank;
    } else {
      json[r'rank'] = null;
    }
    if (this.scoreValue != null) {
      json[r'scoreValue'] = this.scoreValue;
    } else {
      json[r'scoreValue'] = null;
    }
    if (this.timeValue != null) {
      json[r'timeValue'] = this.timeValue;
    } else {
      json[r'timeValue'] = null;
    }
    if (this.countValue != null) {
      json[r'countValue'] = this.countValue;
    } else {
      json[r'countValue'] = null;
    }
    if (this.updated != null) {
      json[r'updated'] = this.updated;
    } else {
      json[r'updated'] = null;
    }
    return json;
  }

  /// Returns a new [RankResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RankResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "RankResponse[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "RankResponse[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return RankResponse(
        owner: AccountShortResponse.fromJson(json[r'owner']),
        rank: mapValueOfType<String>(json, r'rank'),
        scoreValue: mapValueOfType<int>(json, r'scoreValue'),
        timeValue: mapValueOfType<int>(json, r'timeValue'),
        countValue: mapValueOfType<int>(json, r'countValue'),
        updated: mapValueOfType<int>(json, r'updated'),
      );
    }
    return null;
  }

  static List<RankResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <RankResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RankResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, RankResponse> mapFromJson(dynamic json) {
    final map = <String, RankResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RankResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of RankResponse-objects as value to a dart map
  static Map<String, List<RankResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<RankResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = RankResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

