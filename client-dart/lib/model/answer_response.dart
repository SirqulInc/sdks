//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class AnswerResponse {
  /// Returns a new [AnswerResponse] instance.
  AnswerResponse({
    this.answerId,
    this.answer,
    this.correct,
    this.image,
    this.videoURL,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? answerId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? answer;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? correct;

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

  @override
  bool operator ==(Object other) => identical(this, other) || other is AnswerResponse &&
    other.answerId == answerId &&
    other.answer == answer &&
    other.correct == correct &&
    other.image == image &&
    other.videoURL == videoURL;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (answerId == null ? 0 : answerId!.hashCode) +
    (answer == null ? 0 : answer!.hashCode) +
    (correct == null ? 0 : correct!.hashCode) +
    (image == null ? 0 : image!.hashCode) +
    (videoURL == null ? 0 : videoURL!.hashCode);

  @override
  String toString() => 'AnswerResponse[answerId=$answerId, answer=$answer, correct=$correct, image=$image, videoURL=$videoURL]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.answerId != null) {
      json[r'answerId'] = this.answerId;
    } else {
      json[r'answerId'] = null;
    }
    if (this.answer != null) {
      json[r'answer'] = this.answer;
    } else {
      json[r'answer'] = null;
    }
    if (this.correct != null) {
      json[r'correct'] = this.correct;
    } else {
      json[r'correct'] = null;
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
    return json;
  }

  /// Returns a new [AnswerResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AnswerResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "AnswerResponse[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "AnswerResponse[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AnswerResponse(
        answerId: mapValueOfType<int>(json, r'answerId'),
        answer: mapValueOfType<String>(json, r'answer'),
        correct: mapValueOfType<bool>(json, r'correct'),
        image: AssetShortResponse.fromJson(json[r'image']),
        videoURL: mapValueOfType<String>(json, r'videoURL'),
      );
    }
    return null;
  }

  static List<AnswerResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AnswerResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AnswerResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AnswerResponse> mapFromJson(dynamic json) {
    final map = <String, AnswerResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AnswerResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AnswerResponse-objects as value to a dart map
  static Map<String, List<AnswerResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AnswerResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AnswerResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

