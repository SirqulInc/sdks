//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class OrsonRenderResponse {
  /// Returns a new [OrsonRenderResponse] instance.
  OrsonRenderResponse({
    this.id,
    this.thirdPartyAccountId,
    this.status,
    this.statusDescription,
    this.completedOn,
    this.responseCode,
    this.responseRaw,
    this.video,
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
  String? thirdPartyAccountId;

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
  String? completedOn;

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
  OrsonVideoResponse? video;

  @override
  bool operator ==(Object other) => identical(this, other) || other is OrsonRenderResponse &&
    other.id == id &&
    other.thirdPartyAccountId == thirdPartyAccountId &&
    other.status == status &&
    other.statusDescription == statusDescription &&
    other.completedOn == completedOn &&
    other.responseCode == responseCode &&
    other.responseRaw == responseRaw &&
    other.video == video;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (thirdPartyAccountId == null ? 0 : thirdPartyAccountId!.hashCode) +
    (status == null ? 0 : status!.hashCode) +
    (statusDescription == null ? 0 : statusDescription!.hashCode) +
    (completedOn == null ? 0 : completedOn!.hashCode) +
    (responseCode == null ? 0 : responseCode!.hashCode) +
    (responseRaw == null ? 0 : responseRaw!.hashCode) +
    (video == null ? 0 : video!.hashCode);

  @override
  String toString() => 'OrsonRenderResponse[id=$id, thirdPartyAccountId=$thirdPartyAccountId, status=$status, statusDescription=$statusDescription, completedOn=$completedOn, responseCode=$responseCode, responseRaw=$responseRaw, video=$video]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.thirdPartyAccountId != null) {
      json[r'thirdPartyAccountId'] = this.thirdPartyAccountId;
    } else {
      json[r'thirdPartyAccountId'] = null;
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
    if (this.completedOn != null) {
      json[r'completedOn'] = this.completedOn;
    } else {
      json[r'completedOn'] = null;
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
    if (this.video != null) {
      json[r'video'] = this.video;
    } else {
      json[r'video'] = null;
    }
    return json;
  }

  /// Returns a new [OrsonRenderResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static OrsonRenderResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "OrsonRenderResponse[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "OrsonRenderResponse[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return OrsonRenderResponse(
        id: mapValueOfType<String>(json, r'id'),
        thirdPartyAccountId: mapValueOfType<String>(json, r'thirdPartyAccountId'),
        status: mapValueOfType<String>(json, r'status'),
        statusDescription: mapValueOfType<String>(json, r'statusDescription'),
        completedOn: mapValueOfType<String>(json, r'completedOn'),
        responseCode: mapValueOfType<int>(json, r'responseCode'),
        responseRaw: mapValueOfType<String>(json, r'responseRaw'),
        video: OrsonVideoResponse.fromJson(json[r'video']),
      );
    }
    return null;
  }

  static List<OrsonRenderResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <OrsonRenderResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = OrsonRenderResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, OrsonRenderResponse> mapFromJson(dynamic json) {
    final map = <String, OrsonRenderResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = OrsonRenderResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of OrsonRenderResponse-objects as value to a dart map
  static Map<String, List<OrsonRenderResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<OrsonRenderResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = OrsonRenderResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

