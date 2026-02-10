//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class QuestionResponse {
  /// Returns a new [QuestionResponse] instance.
  QuestionResponse({
    this.id,
    this.question,
    this.image,
    this.videoURL,
    this.active,
    this.answers = const [],
    this.scores,
    this.tickets,
    this.owner,
    this.icon,
    this.authorOverride,
    this.updatedDate,
    this.startDate,
    this.endDate,
    this.createdDate,
    this.tags,
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
  String? question;

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
  String? videoURL;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? active;

  List<AnswerResponse> answers;

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
  TicketListResponse? tickets;

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
  AssetShortResponse? icon;

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
  String? tags;

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
  bool operator ==(Object other) => identical(this, other) || other is QuestionResponse &&
    other.id == id &&
    other.question == question &&
    other.image == image &&
    other.videoURL == videoURL &&
    other.active == active &&
    _deepEquality.equals(other.answers, answers) &&
    other.scores == scores &&
    other.tickets == tickets &&
    other.owner == owner &&
    other.icon == icon &&
    other.authorOverride == authorOverride &&
    other.updatedDate == updatedDate &&
    other.startDate == startDate &&
    other.endDate == endDate &&
    other.createdDate == createdDate &&
    other.tags == tags &&
    other.allocateTickets == allocateTickets &&
    other.ticketType == ticketType &&
    other.ticketCount == ticketCount &&
    other.points == points;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (question == null ? 0 : question!.hashCode) +
    (image == null ? 0 : image!.hashCode) +
    (videoURL == null ? 0 : videoURL!.hashCode) +
    (active == null ? 0 : active!.hashCode) +
    (answers.hashCode) +
    (scores == null ? 0 : scores!.hashCode) +
    (tickets == null ? 0 : tickets!.hashCode) +
    (owner == null ? 0 : owner!.hashCode) +
    (icon == null ? 0 : icon!.hashCode) +
    (authorOverride == null ? 0 : authorOverride!.hashCode) +
    (updatedDate == null ? 0 : updatedDate!.hashCode) +
    (startDate == null ? 0 : startDate!.hashCode) +
    (endDate == null ? 0 : endDate!.hashCode) +
    (createdDate == null ? 0 : createdDate!.hashCode) +
    (tags == null ? 0 : tags!.hashCode) +
    (allocateTickets == null ? 0 : allocateTickets!.hashCode) +
    (ticketType == null ? 0 : ticketType!.hashCode) +
    (ticketCount == null ? 0 : ticketCount!.hashCode) +
    (points == null ? 0 : points!.hashCode);

  @override
  String toString() => 'QuestionResponse[id=$id, question=$question, image=$image, videoURL=$videoURL, active=$active, answers=$answers, scores=$scores, tickets=$tickets, owner=$owner, icon=$icon, authorOverride=$authorOverride, updatedDate=$updatedDate, startDate=$startDate, endDate=$endDate, createdDate=$createdDate, tags=$tags, allocateTickets=$allocateTickets, ticketType=$ticketType, ticketCount=$ticketCount, points=$points]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.question != null) {
      json[r'question'] = this.question;
    } else {
      json[r'question'] = null;
    }
    if (this.image != null) {
      json[r'image'] = this.image;
    } else {
      json[r'image'] = null;
    }
    if (this.videoURL != null) {
      json[r'videoURL'] = this.videoURL;
    } else {
      json[r'videoURL'] = null;
    }
    if (this.active != null) {
      json[r'active'] = this.active;
    } else {
      json[r'active'] = null;
    }
      json[r'answers'] = this.answers;
    if (this.scores != null) {
      json[r'scores'] = this.scores;
    } else {
      json[r'scores'] = null;
    }
    if (this.tickets != null) {
      json[r'tickets'] = this.tickets;
    } else {
      json[r'tickets'] = null;
    }
    if (this.owner != null) {
      json[r'owner'] = this.owner;
    } else {
      json[r'owner'] = null;
    }
    if (this.icon != null) {
      json[r'icon'] = this.icon;
    } else {
      json[r'icon'] = null;
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
    if (this.tags != null) {
      json[r'tags'] = this.tags;
    } else {
      json[r'tags'] = null;
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

  /// Returns a new [QuestionResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static QuestionResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "QuestionResponse[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "QuestionResponse[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return QuestionResponse(
        id: mapValueOfType<int>(json, r'id'),
        question: mapValueOfType<String>(json, r'question'),
        image: AssetShortResponse.fromJson(json[r'image']),
        videoURL: mapValueOfType<String>(json, r'videoURL'),
        active: mapValueOfType<bool>(json, r'active'),
        answers: AnswerResponse.listFromJson(json[r'answers']),
        scores: ScoreListResponse.fromJson(json[r'scores']),
        tickets: TicketListResponse.fromJson(json[r'tickets']),
        owner: AccountShortResponse.fromJson(json[r'owner']),
        icon: AssetShortResponse.fromJson(json[r'icon']),
        authorOverride: mapValueOfType<String>(json, r'authorOverride'),
        updatedDate: mapValueOfType<int>(json, r'updatedDate'),
        startDate: mapValueOfType<int>(json, r'startDate'),
        endDate: mapValueOfType<int>(json, r'endDate'),
        createdDate: mapValueOfType<int>(json, r'createdDate'),
        tags: mapValueOfType<String>(json, r'tags'),
        allocateTickets: mapValueOfType<bool>(json, r'allocateTickets'),
        ticketType: mapValueOfType<String>(json, r'ticketType'),
        ticketCount: mapValueOfType<int>(json, r'ticketCount'),
        points: mapValueOfType<int>(json, r'points'),
      );
    }
    return null;
  }

  static List<QuestionResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <QuestionResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = QuestionResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, QuestionResponse> mapFromJson(dynamic json) {
    final map = <String, QuestionResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = QuestionResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of QuestionResponse-objects as value to a dart map
  static Map<String, List<QuestionResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<QuestionResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = QuestionResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

