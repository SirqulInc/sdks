//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class OrsonAiTechTuneResponse {
  /// Returns a new [OrsonAiTechTuneResponse] instance.
  OrsonAiTechTuneResponse({
    this.requestId,
    this.responseCode,
    this.responseRaw,
    this.people,
    this.wasCutoff,
    this.frames,
    this.framesWithoutAFace,
    this.framesWithFaceOffscreen,
    this.framesWithWrongNumberOfPeople,
    this.height,
    this.width,
    this.fps,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? requestId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? responseCode;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? responseRaw;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? people;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? wasCutoff;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? frames;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? framesWithoutAFace;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? framesWithFaceOffscreen;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? framesWithWrongNumberOfPeople;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? height;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? width;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? fps;

  @override
  bool operator ==(Object other) => identical(this, other) || other is OrsonAiTechTuneResponse &&
    other.requestId == requestId &&
    other.responseCode == responseCode &&
    other.responseRaw == responseRaw &&
    other.people == people &&
    other.wasCutoff == wasCutoff &&
    other.frames == frames &&
    other.framesWithoutAFace == framesWithoutAFace &&
    other.framesWithFaceOffscreen == framesWithFaceOffscreen &&
    other.framesWithWrongNumberOfPeople == framesWithWrongNumberOfPeople &&
    other.height == height &&
    other.width == width &&
    other.fps == fps;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (requestId == null ? 0 : requestId!.hashCode) +
    (responseCode == null ? 0 : responseCode!.hashCode) +
    (responseRaw == null ? 0 : responseRaw!.hashCode) +
    (people == null ? 0 : people!.hashCode) +
    (wasCutoff == null ? 0 : wasCutoff!.hashCode) +
    (frames == null ? 0 : frames!.hashCode) +
    (framesWithoutAFace == null ? 0 : framesWithoutAFace!.hashCode) +
    (framesWithFaceOffscreen == null ? 0 : framesWithFaceOffscreen!.hashCode) +
    (framesWithWrongNumberOfPeople == null ? 0 : framesWithWrongNumberOfPeople!.hashCode) +
    (height == null ? 0 : height!.hashCode) +
    (width == null ? 0 : width!.hashCode) +
    (fps == null ? 0 : fps!.hashCode);

  @override
  String toString() => 'OrsonAiTechTuneResponse[requestId=$requestId, responseCode=$responseCode, responseRaw=$responseRaw, people=$people, wasCutoff=$wasCutoff, frames=$frames, framesWithoutAFace=$framesWithoutAFace, framesWithFaceOffscreen=$framesWithFaceOffscreen, framesWithWrongNumberOfPeople=$framesWithWrongNumberOfPeople, height=$height, width=$width, fps=$fps]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.requestId != null) {
      json[r'requestId'] = this.requestId;
    } else {
      json[r'requestId'] = null;
    }
    if (this.responseCode != null) {
      json[r'responseCode'] = this.responseCode;
    } else {
      json[r'responseCode'] = null;
    }
    if (this.responseRaw != null) {
      json[r'responseRaw'] = this.responseRaw;
    } else {
      json[r'responseRaw'] = null;
    }
    if (this.people != null) {
      json[r'people'] = this.people;
    } else {
      json[r'people'] = null;
    }
    if (this.wasCutoff != null) {
      json[r'wasCutoff'] = this.wasCutoff;
    } else {
      json[r'wasCutoff'] = null;
    }
    if (this.frames != null) {
      json[r'frames'] = this.frames;
    } else {
      json[r'frames'] = null;
    }
    if (this.framesWithoutAFace != null) {
      json[r'framesWithoutAFace'] = this.framesWithoutAFace;
    } else {
      json[r'framesWithoutAFace'] = null;
    }
    if (this.framesWithFaceOffscreen != null) {
      json[r'framesWithFaceOffscreen'] = this.framesWithFaceOffscreen;
    } else {
      json[r'framesWithFaceOffscreen'] = null;
    }
    if (this.framesWithWrongNumberOfPeople != null) {
      json[r'framesWithWrongNumberOfPeople'] = this.framesWithWrongNumberOfPeople;
    } else {
      json[r'framesWithWrongNumberOfPeople'] = null;
    }
    if (this.height != null) {
      json[r'height'] = this.height;
    } else {
      json[r'height'] = null;
    }
    if (this.width != null) {
      json[r'width'] = this.width;
    } else {
      json[r'width'] = null;
    }
    if (this.fps != null) {
      json[r'fps'] = this.fps;
    } else {
      json[r'fps'] = null;
    }
    return json;
  }

  /// Returns a new [OrsonAiTechTuneResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static OrsonAiTechTuneResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "OrsonAiTechTuneResponse[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "OrsonAiTechTuneResponse[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return OrsonAiTechTuneResponse(
        requestId: mapValueOfType<String>(json, r'requestId'),
        responseCode: mapValueOfType<int>(json, r'responseCode'),
        responseRaw: mapValueOfType<String>(json, r'responseRaw'),
        people: mapValueOfType<int>(json, r'people'),
        wasCutoff: mapValueOfType<bool>(json, r'wasCutoff'),
        frames: mapValueOfType<int>(json, r'frames'),
        framesWithoutAFace: mapValueOfType<int>(json, r'framesWithoutAFace'),
        framesWithFaceOffscreen: mapValueOfType<int>(json, r'framesWithFaceOffscreen'),
        framesWithWrongNumberOfPeople: mapValueOfType<int>(json, r'framesWithWrongNumberOfPeople'),
        height: mapValueOfType<int>(json, r'height'),
        width: mapValueOfType<int>(json, r'width'),
        fps: mapValueOfType<int>(json, r'fps'),
      );
    }
    return null;
  }

  static List<OrsonAiTechTuneResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <OrsonAiTechTuneResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = OrsonAiTechTuneResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, OrsonAiTechTuneResponse> mapFromJson(dynamic json) {
    final map = <String, OrsonAiTechTuneResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = OrsonAiTechTuneResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of OrsonAiTechTuneResponse-objects as value to a dart map
  static Map<String, List<OrsonAiTechTuneResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<OrsonAiTechTuneResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = OrsonAiTechTuneResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

