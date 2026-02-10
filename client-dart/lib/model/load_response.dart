//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class LoadResponse {
  /// Returns a new [LoadResponse] instance.
  LoadResponse({
    this.id,
    this.name,
    this.size,
    this.loadingTime,
    this.separatePayloads,
    this.pickup,
    this.dropoff,
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
  String? name;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? size;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? loadingTime;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? separatePayloads;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  StopResponse? pickup;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  StopResponse? dropoff;

  @override
  bool operator ==(Object other) => identical(this, other) || other is LoadResponse &&
    other.id == id &&
    other.name == name &&
    other.size == size &&
    other.loadingTime == loadingTime &&
    other.separatePayloads == separatePayloads &&
    other.pickup == pickup &&
    other.dropoff == dropoff;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (size == null ? 0 : size!.hashCode) +
    (loadingTime == null ? 0 : loadingTime!.hashCode) +
    (separatePayloads == null ? 0 : separatePayloads!.hashCode) +
    (pickup == null ? 0 : pickup!.hashCode) +
    (dropoff == null ? 0 : dropoff!.hashCode);

  @override
  String toString() => 'LoadResponse[id=$id, name=$name, size=$size, loadingTime=$loadingTime, separatePayloads=$separatePayloads, pickup=$pickup, dropoff=$dropoff]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.size != null) {
      json[r'size'] = this.size;
    } else {
      json[r'size'] = null;
    }
    if (this.loadingTime != null) {
      json[r'loadingTime'] = this.loadingTime;
    } else {
      json[r'loadingTime'] = null;
    }
    if (this.separatePayloads != null) {
      json[r'separatePayloads'] = this.separatePayloads;
    } else {
      json[r'separatePayloads'] = null;
    }
    if (this.pickup != null) {
      json[r'pickup'] = this.pickup;
    } else {
      json[r'pickup'] = null;
    }
    if (this.dropoff != null) {
      json[r'dropoff'] = this.dropoff;
    } else {
      json[r'dropoff'] = null;
    }
    return json;
  }

  /// Returns a new [LoadResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static LoadResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "LoadResponse[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "LoadResponse[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return LoadResponse(
        id: mapValueOfType<String>(json, r'id'),
        name: mapValueOfType<String>(json, r'name'),
        size: mapValueOfType<int>(json, r'size'),
        loadingTime: mapValueOfType<int>(json, r'loadingTime'),
        separatePayloads: mapValueOfType<bool>(json, r'separatePayloads'),
        pickup: StopResponse.fromJson(json[r'pickup']),
        dropoff: StopResponse.fromJson(json[r'dropoff']),
      );
    }
    return null;
  }

  static List<LoadResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <LoadResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = LoadResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, LoadResponse> mapFromJson(dynamic json) {
    final map = <String, LoadResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = LoadResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of LoadResponse-objects as value to a dart map
  static Map<String, List<LoadResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<LoadResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = LoadResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

