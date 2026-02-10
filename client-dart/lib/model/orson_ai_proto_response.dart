//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class OrsonAiProtoResponse {
  /// Returns a new [OrsonAiProtoResponse] instance.
  OrsonAiProtoResponse({
    this.rawResponse,
    this.assetResponse,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? rawResponse;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  AssetShortResponse? assetResponse;

  @override
  bool operator ==(Object other) => identical(this, other) || other is OrsonAiProtoResponse &&
    other.rawResponse == rawResponse &&
    other.assetResponse == assetResponse;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (rawResponse == null ? 0 : rawResponse!.hashCode) +
    (assetResponse == null ? 0 : assetResponse!.hashCode);

  @override
  String toString() => 'OrsonAiProtoResponse[rawResponse=$rawResponse, assetResponse=$assetResponse]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.rawResponse != null) {
      json[r'rawResponse'] = this.rawResponse;
    } else {
      json[r'rawResponse'] = null;
    }
    if (this.assetResponse != null) {
      json[r'assetResponse'] = this.assetResponse;
    } else {
      json[r'assetResponse'] = null;
    }
    return json;
  }

  /// Returns a new [OrsonAiProtoResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static OrsonAiProtoResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "OrsonAiProtoResponse[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "OrsonAiProtoResponse[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return OrsonAiProtoResponse(
        rawResponse: mapValueOfType<String>(json, r'rawResponse'),
        assetResponse: AssetShortResponse.fromJson(json[r'assetResponse']),
      );
    }
    return null;
  }

  static List<OrsonAiProtoResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <OrsonAiProtoResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = OrsonAiProtoResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, OrsonAiProtoResponse> mapFromJson(dynamic json) {
    final map = <String, OrsonAiProtoResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = OrsonAiProtoResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of OrsonAiProtoResponse-objects as value to a dart map
  static Map<String, List<OrsonAiProtoResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<OrsonAiProtoResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = OrsonAiProtoResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

