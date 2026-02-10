//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ReportTypeResponse {
  /// Returns a new [ReportTypeResponse] instance.
  ReportTypeResponse({
    this.type,
    this.javaType,
    this.label,
    this.number,
    this.majorAxis,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? type;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? javaType;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? label;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? number;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? majorAxis;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ReportTypeResponse &&
    other.type == type &&
    other.javaType == javaType &&
    other.label == label &&
    other.number == number &&
    other.majorAxis == majorAxis;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (type == null ? 0 : type!.hashCode) +
    (javaType == null ? 0 : javaType!.hashCode) +
    (label == null ? 0 : label!.hashCode) +
    (number == null ? 0 : number!.hashCode) +
    (majorAxis == null ? 0 : majorAxis!.hashCode);

  @override
  String toString() => 'ReportTypeResponse[type=$type, javaType=$javaType, label=$label, number=$number, majorAxis=$majorAxis]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.type != null) {
      json[r'type'] = this.type;
    } else {
      json[r'type'] = null;
    }
    if (this.javaType != null) {
      json[r'javaType'] = this.javaType;
    } else {
      json[r'javaType'] = null;
    }
    if (this.label != null) {
      json[r'label'] = this.label;
    } else {
      json[r'label'] = null;
    }
    if (this.number != null) {
      json[r'number'] = this.number;
    } else {
      json[r'number'] = null;
    }
    if (this.majorAxis != null) {
      json[r'majorAxis'] = this.majorAxis;
    } else {
      json[r'majorAxis'] = null;
    }
    return json;
  }

  /// Returns a new [ReportTypeResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ReportTypeResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ReportTypeResponse[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ReportTypeResponse[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ReportTypeResponse(
        type: mapValueOfType<String>(json, r'type'),
        javaType: mapValueOfType<String>(json, r'javaType'),
        label: mapValueOfType<String>(json, r'label'),
        number: mapValueOfType<bool>(json, r'number'),
        majorAxis: mapValueOfType<bool>(json, r'majorAxis'),
      );
    }
    return null;
  }

  static List<ReportTypeResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ReportTypeResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ReportTypeResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ReportTypeResponse> mapFromJson(dynamic json) {
    final map = <String, ReportTypeResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ReportTypeResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ReportTypeResponse-objects as value to a dart map
  static Map<String, List<ReportTypeResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ReportTypeResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ReportTypeResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

