//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class TrilatCacheRequest {
  /// Returns a new [TrilatCacheRequest] instance.
  TrilatCacheRequest({
    this.udid,
    this.sourceTime,
    this.minimumSampleSize,
    this.samples = const [],
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? udid;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? sourceTime;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? minimumSampleSize;

  List<TrilatCacheSample> samples;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TrilatCacheRequest &&
    other.udid == udid &&
    other.sourceTime == sourceTime &&
    other.minimumSampleSize == minimumSampleSize &&
    _deepEquality.equals(other.samples, samples);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (udid == null ? 0 : udid!.hashCode) +
    (sourceTime == null ? 0 : sourceTime!.hashCode) +
    (minimumSampleSize == null ? 0 : minimumSampleSize!.hashCode) +
    (samples.hashCode);

  @override
  String toString() => 'TrilatCacheRequest[udid=$udid, sourceTime=$sourceTime, minimumSampleSize=$minimumSampleSize, samples=$samples]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.udid != null) {
      json[r'udid'] = this.udid;
    } else {
      json[r'udid'] = null;
    }
    if (this.sourceTime != null) {
      json[r'sourceTime'] = this.sourceTime;
    } else {
      json[r'sourceTime'] = null;
    }
    if (this.minimumSampleSize != null) {
      json[r'minimumSampleSize'] = this.minimumSampleSize;
    } else {
      json[r'minimumSampleSize'] = null;
    }
      json[r'samples'] = this.samples;
    return json;
  }

  /// Returns a new [TrilatCacheRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TrilatCacheRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "TrilatCacheRequest[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "TrilatCacheRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return TrilatCacheRequest(
        udid: mapValueOfType<String>(json, r'udid'),
        sourceTime: mapValueOfType<int>(json, r'sourceTime'),
        minimumSampleSize: mapValueOfType<int>(json, r'minimumSampleSize'),
        samples: TrilatCacheSample.listFromJson(json[r'samples']),
      );
    }
    return null;
  }

  static List<TrilatCacheRequest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TrilatCacheRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TrilatCacheRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TrilatCacheRequest> mapFromJson(dynamic json) {
    final map = <String, TrilatCacheRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TrilatCacheRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TrilatCacheRequest-objects as value to a dart map
  static Map<String, List<TrilatCacheRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<TrilatCacheRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = TrilatCacheRequest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

