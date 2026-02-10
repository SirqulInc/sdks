//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class OrsonAiEmotionsResponse {
  /// Returns a new [OrsonAiEmotionsResponse] instance.
  OrsonAiEmotionsResponse({
    this.requestId,
    this.responseCode,
    this.responseRaw,
    this.status,
    this.error,
    this.audioEmotions = const [],
    this.visualEmotions = const [],
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
  String? status;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? error;

  List<String> audioEmotions;

  List<OrsonAiVisualEmotionResponse> visualEmotions;

  @override
  bool operator ==(Object other) => identical(this, other) || other is OrsonAiEmotionsResponse &&
    other.requestId == requestId &&
    other.responseCode == responseCode &&
    other.responseRaw == responseRaw &&
    other.status == status &&
    other.error == error &&
    _deepEquality.equals(other.audioEmotions, audioEmotions) &&
    _deepEquality.equals(other.visualEmotions, visualEmotions);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (requestId == null ? 0 : requestId!.hashCode) +
    (responseCode == null ? 0 : responseCode!.hashCode) +
    (responseRaw == null ? 0 : responseRaw!.hashCode) +
    (status == null ? 0 : status!.hashCode) +
    (error == null ? 0 : error!.hashCode) +
    (audioEmotions.hashCode) +
    (visualEmotions.hashCode);

  @override
  String toString() => 'OrsonAiEmotionsResponse[requestId=$requestId, responseCode=$responseCode, responseRaw=$responseRaw, status=$status, error=$error, audioEmotions=$audioEmotions, visualEmotions=$visualEmotions]';

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
    if (this.status != null) {
      json[r'status'] = this.status;
    } else {
      json[r'status'] = null;
    }
    if (this.error != null) {
      json[r'error'] = this.error;
    } else {
      json[r'error'] = null;
    }
      json[r'audioEmotions'] = this.audioEmotions;
      json[r'visualEmotions'] = this.visualEmotions;
    return json;
  }

  /// Returns a new [OrsonAiEmotionsResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static OrsonAiEmotionsResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "OrsonAiEmotionsResponse[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "OrsonAiEmotionsResponse[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return OrsonAiEmotionsResponse(
        requestId: mapValueOfType<String>(json, r'requestId'),
        responseCode: mapValueOfType<int>(json, r'responseCode'),
        responseRaw: mapValueOfType<String>(json, r'responseRaw'),
        status: mapValueOfType<String>(json, r'status'),
        error: mapValueOfType<String>(json, r'error'),
        audioEmotions: json[r'audioEmotions'] is Iterable
            ? (json[r'audioEmotions'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        visualEmotions: OrsonAiVisualEmotionResponse.listFromJson(json[r'visualEmotions']),
      );
    }
    return null;
  }

  static List<OrsonAiEmotionsResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <OrsonAiEmotionsResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = OrsonAiEmotionsResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, OrsonAiEmotionsResponse> mapFromJson(dynamic json) {
    final map = <String, OrsonAiEmotionsResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = OrsonAiEmotionsResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of OrsonAiEmotionsResponse-objects as value to a dart map
  static Map<String, List<OrsonAiEmotionsResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<OrsonAiEmotionsResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = OrsonAiEmotionsResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

