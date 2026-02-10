//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class OrsonAiBatchEmotionsResponse {
  /// Returns a new [OrsonAiBatchEmotionsResponse] instance.
  OrsonAiBatchEmotionsResponse({
    this.requestId,
    this.responseCode,
    this.responseRaw,
    this.status,
    this.error,
    this.result,
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

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  OrsonAiEmotionsResponse? result;

  @override
  bool operator ==(Object other) => identical(this, other) || other is OrsonAiBatchEmotionsResponse &&
    other.requestId == requestId &&
    other.responseCode == responseCode &&
    other.responseRaw == responseRaw &&
    other.status == status &&
    other.error == error &&
    other.result == result;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (requestId == null ? 0 : requestId!.hashCode) +
    (responseCode == null ? 0 : responseCode!.hashCode) +
    (responseRaw == null ? 0 : responseRaw!.hashCode) +
    (status == null ? 0 : status!.hashCode) +
    (error == null ? 0 : error!.hashCode) +
    (result == null ? 0 : result!.hashCode);

  @override
  String toString() => 'OrsonAiBatchEmotionsResponse[requestId=$requestId, responseCode=$responseCode, responseRaw=$responseRaw, status=$status, error=$error, result=$result]';

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
    if (this.result != null) {
      json[r'result'] = this.result;
    } else {
      json[r'result'] = null;
    }
    return json;
  }

  /// Returns a new [OrsonAiBatchEmotionsResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static OrsonAiBatchEmotionsResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "OrsonAiBatchEmotionsResponse[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "OrsonAiBatchEmotionsResponse[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return OrsonAiBatchEmotionsResponse(
        requestId: mapValueOfType<String>(json, r'requestId'),
        responseCode: mapValueOfType<int>(json, r'responseCode'),
        responseRaw: mapValueOfType<String>(json, r'responseRaw'),
        status: mapValueOfType<String>(json, r'status'),
        error: mapValueOfType<String>(json, r'error'),
        result: OrsonAiEmotionsResponse.fromJson(json[r'result']),
      );
    }
    return null;
  }

  static List<OrsonAiBatchEmotionsResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <OrsonAiBatchEmotionsResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = OrsonAiBatchEmotionsResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, OrsonAiBatchEmotionsResponse> mapFromJson(dynamic json) {
    final map = <String, OrsonAiBatchEmotionsResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = OrsonAiBatchEmotionsResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of OrsonAiBatchEmotionsResponse-objects as value to a dart map
  static Map<String, List<OrsonAiBatchEmotionsResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<OrsonAiBatchEmotionsResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = OrsonAiBatchEmotionsResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

