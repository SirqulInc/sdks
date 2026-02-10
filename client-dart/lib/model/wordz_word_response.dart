//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class WordzWordResponse {
  /// Returns a new [WordzWordResponse] instance.
  WordzWordResponse({
    this.id,
    this.word,
    this.definition,
    this.scores,
    this.icon,
    this.image,
    this.authorOverride,
    this.updatedDate,
    this.startDate,
    this.endDate,
    this.createdDate,
    this.active,
    this.allocateTickets,
    this.ticketType,
    this.ticketCount,
    this.points,
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
  String? word;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? definition;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  ScoreListResponse? scores;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  AssetShortResponse? icon;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  AssetShortResponse? image;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? authorOverride;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? updatedDate;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? startDate;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? endDate;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? createdDate;

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
  bool? allocateTickets;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? ticketType;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? ticketCount;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? points;

  @override
  bool operator ==(Object other) => identical(this, other) || other is WordzWordResponse &&
    other.id == id &&
    other.word == word &&
    other.definition == definition &&
    other.scores == scores &&
    other.icon == icon &&
    other.image == image &&
    other.authorOverride == authorOverride &&
    other.updatedDate == updatedDate &&
    other.startDate == startDate &&
    other.endDate == endDate &&
    other.createdDate == createdDate &&
    other.active == active &&
    other.allocateTickets == allocateTickets &&
    other.ticketType == ticketType &&
    other.ticketCount == ticketCount &&
    other.points == points;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (word == null ? 0 : word!.hashCode) +
    (definition == null ? 0 : definition!.hashCode) +
    (scores == null ? 0 : scores!.hashCode) +
    (icon == null ? 0 : icon!.hashCode) +
    (image == null ? 0 : image!.hashCode) +
    (authorOverride == null ? 0 : authorOverride!.hashCode) +
    (updatedDate == null ? 0 : updatedDate!.hashCode) +
    (startDate == null ? 0 : startDate!.hashCode) +
    (endDate == null ? 0 : endDate!.hashCode) +
    (createdDate == null ? 0 : createdDate!.hashCode) +
    (active == null ? 0 : active!.hashCode) +
    (allocateTickets == null ? 0 : allocateTickets!.hashCode) +
    (ticketType == null ? 0 : ticketType!.hashCode) +
    (ticketCount == null ? 0 : ticketCount!.hashCode) +
    (points == null ? 0 : points!.hashCode);

  @override
  String toString() => 'WordzWordResponse[id=$id, word=$word, definition=$definition, scores=$scores, icon=$icon, image=$image, authorOverride=$authorOverride, updatedDate=$updatedDate, startDate=$startDate, endDate=$endDate, createdDate=$createdDate, active=$active, allocateTickets=$allocateTickets, ticketType=$ticketType, ticketCount=$ticketCount, points=$points]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.word != null) {
      json[r'word'] = this.word;
    } else {
      json[r'word'] = null;
    }
    if (this.definition != null) {
      json[r'definition'] = this.definition;
    } else {
      json[r'definition'] = null;
    }
    if (this.scores != null) {
      json[r'scores'] = this.scores;
    } else {
      json[r'scores'] = null;
    }
    if (this.icon != null) {
      json[r'icon'] = this.icon;
    } else {
      json[r'icon'] = null;
    }
    if (this.image != null) {
      json[r'image'] = this.image;
    } else {
      json[r'image'] = null;
    }
    if (this.authorOverride != null) {
      json[r'authorOverride'] = this.authorOverride;
    } else {
      json[r'authorOverride'] = null;
    }
    if (this.updatedDate != null) {
      json[r'updatedDate'] = this.updatedDate;
    } else {
      json[r'updatedDate'] = null;
    }
    if (this.startDate != null) {
      json[r'startDate'] = this.startDate;
    } else {
      json[r'startDate'] = null;
    }
    if (this.endDate != null) {
      json[r'endDate'] = this.endDate;
    } else {
      json[r'endDate'] = null;
    }
    if (this.createdDate != null) {
      json[r'createdDate'] = this.createdDate;
    } else {
      json[r'createdDate'] = null;
    }
    if (this.active != null) {
      json[r'active'] = this.active;
    } else {
      json[r'active'] = null;
    }
    if (this.allocateTickets != null) {
      json[r'allocateTickets'] = this.allocateTickets;
    } else {
      json[r'allocateTickets'] = null;
    }
    if (this.ticketType != null) {
      json[r'ticketType'] = this.ticketType;
    } else {
      json[r'ticketType'] = null;
    }
    if (this.ticketCount != null) {
      json[r'ticketCount'] = this.ticketCount;
    } else {
      json[r'ticketCount'] = null;
    }
    if (this.points != null) {
      json[r'points'] = this.points;
    } else {
      json[r'points'] = null;
    }
    return json;
  }

  /// Returns a new [WordzWordResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static WordzWordResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "WordzWordResponse[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "WordzWordResponse[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return WordzWordResponse(
        id: mapValueOfType<int>(json, r'id'),
        word: mapValueOfType<String>(json, r'word'),
        definition: mapValueOfType<String>(json, r'definition'),
        scores: ScoreListResponse.fromJson(json[r'scores']),
        icon: AssetShortResponse.fromJson(json[r'icon']),
        image: AssetShortResponse.fromJson(json[r'image']),
        authorOverride: mapValueOfType<String>(json, r'authorOverride'),
        updatedDate: mapValueOfType<int>(json, r'updatedDate'),
        startDate: mapValueOfType<int>(json, r'startDate'),
        endDate: mapValueOfType<int>(json, r'endDate'),
        createdDate: mapValueOfType<int>(json, r'createdDate'),
        active: mapValueOfType<bool>(json, r'active'),
        allocateTickets: mapValueOfType<bool>(json, r'allocateTickets'),
        ticketType: mapValueOfType<String>(json, r'ticketType'),
        ticketCount: mapValueOfType<int>(json, r'ticketCount'),
        points: mapValueOfType<int>(json, r'points'),
      );
    }
    return null;
  }

  static List<WordzWordResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <WordzWordResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = WordzWordResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, WordzWordResponse> mapFromJson(dynamic json) {
    final map = <String, WordzWordResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = WordzWordResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of WordzWordResponse-objects as value to a dart map
  static Map<String, List<WordzWordResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<WordzWordResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = WordzWordResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

