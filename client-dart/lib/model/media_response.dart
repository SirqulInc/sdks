//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class MediaResponse {
  /// Returns a new [MediaResponse] instance.
  MediaResponse({
    this.mediaType,
    this.duration,
    this.author,
    this.releaseDate,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? mediaType;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? duration;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? author;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? releaseDate;

  @override
  bool operator ==(Object other) => identical(this, other) || other is MediaResponse &&
    other.mediaType == mediaType &&
    other.duration == duration &&
    other.author == author &&
    other.releaseDate == releaseDate;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (mediaType == null ? 0 : mediaType!.hashCode) +
    (duration == null ? 0 : duration!.hashCode) +
    (author == null ? 0 : author!.hashCode) +
    (releaseDate == null ? 0 : releaseDate!.hashCode);

  @override
  String toString() => 'MediaResponse[mediaType=$mediaType, duration=$duration, author=$author, releaseDate=$releaseDate]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.mediaType != null) {
      json[r'mediaType'] = this.mediaType;
    } else {
      json[r'mediaType'] = null;
    }
    if (this.duration != null) {
      json[r'duration'] = this.duration;
    } else {
      json[r'duration'] = null;
    }
    if (this.author != null) {
      json[r'author'] = this.author;
    } else {
      json[r'author'] = null;
    }
    if (this.releaseDate != null) {
      json[r'releaseDate'] = this.releaseDate;
    } else {
      json[r'releaseDate'] = null;
    }
    return json;
  }

  /// Returns a new [MediaResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MediaResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "MediaResponse[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "MediaResponse[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MediaResponse(
        mediaType: mapValueOfType<String>(json, r'mediaType'),
        duration: mapValueOfType<int>(json, r'duration'),
        author: mapValueOfType<String>(json, r'author'),
        releaseDate: mapValueOfType<int>(json, r'releaseDate'),
      );
    }
    return null;
  }

  static List<MediaResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <MediaResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MediaResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MediaResponse> mapFromJson(dynamic json) {
    final map = <String, MediaResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MediaResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MediaResponse-objects as value to a dart map
  static Map<String, List<MediaResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<MediaResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = MediaResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

