//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class OrsonEpisodeResponse {
  /// Returns a new [OrsonEpisodeResponse] instance.
  OrsonEpisodeResponse({
    this.id,
    this.status,
    this.statusDescription,
    this.responseCode,
    this.responseRaw,
    this.renders = const [],
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

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
  String? statusDescription;

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

  List<OrsonRenderResponse> renders;

  @override
  bool operator ==(Object other) => identical(this, other) || other is OrsonEpisodeResponse &&
    other.id == id &&
    other.status == status &&
    other.statusDescription == statusDescription &&
    other.responseCode == responseCode &&
    other.responseRaw == responseRaw &&
    _deepEquality.equals(other.renders, renders);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (status == null ? 0 : status!.hashCode) +
    (statusDescription == null ? 0 : statusDescription!.hashCode) +
    (responseCode == null ? 0 : responseCode!.hashCode) +
    (responseRaw == null ? 0 : responseRaw!.hashCode) +
    (renders.hashCode);

  @override
  String toString() => 'OrsonEpisodeResponse[id=$id, status=$status, statusDescription=$statusDescription, responseCode=$responseCode, responseRaw=$responseRaw, renders=$renders]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.status != null) {
      json[r'status'] = this.status;
    } else {
      json[r'status'] = null;
    }
    if (this.statusDescription != null) {
      json[r'statusDescription'] = this.statusDescription;
    } else {
      json[r'statusDescription'] = null;
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
      json[r'renders'] = this.renders;
    return json;
  }

  /// Returns a new [OrsonEpisodeResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static OrsonEpisodeResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "OrsonEpisodeResponse[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "OrsonEpisodeResponse[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return OrsonEpisodeResponse(
        id: mapValueOfType<String>(json, r'id'),
        status: mapValueOfType<String>(json, r'status'),
        statusDescription: mapValueOfType<String>(json, r'statusDescription'),
        responseCode: mapValueOfType<int>(json, r'responseCode'),
        responseRaw: mapValueOfType<String>(json, r'responseRaw'),
        renders: OrsonRenderResponse.listFromJson(json[r'renders']),
      );
    }
    return null;
  }

  static List<OrsonEpisodeResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <OrsonEpisodeResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = OrsonEpisodeResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, OrsonEpisodeResponse> mapFromJson(dynamic json) {
    final map = <String, OrsonEpisodeResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = OrsonEpisodeResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of OrsonEpisodeResponse-objects as value to a dart map
  static Map<String, List<OrsonEpisodeResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<OrsonEpisodeResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = OrsonEpisodeResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

