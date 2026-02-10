//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ParticipantResponse {
  /// Returns a new [ParticipantResponse] instance.
  ParticipantResponse({
    this.id,
    this.account,
    this.availableStart,
    this.availableEnd,
    this.color1,
    this.color2,
    this.type,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? id;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  AccountMiniResponse? account;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? availableStart;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? availableEnd;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? color1;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? color2;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? type;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ParticipantResponse &&
    other.id == id &&
    other.account == account &&
    other.availableStart == availableStart &&
    other.availableEnd == availableEnd &&
    other.color1 == color1 &&
    other.color2 == color2 &&
    other.type == type;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (account == null ? 0 : account!.hashCode) +
    (availableStart == null ? 0 : availableStart!.hashCode) +
    (availableEnd == null ? 0 : availableEnd!.hashCode) +
    (color1 == null ? 0 : color1!.hashCode) +
    (color2 == null ? 0 : color2!.hashCode) +
    (type == null ? 0 : type!.hashCode);

  @override
  String toString() => 'ParticipantResponse[id=$id, account=$account, availableStart=$availableStart, availableEnd=$availableEnd, color1=$color1, color2=$color2, type=$type]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.account != null) {
      json[r'account'] = this.account;
    } else {
      json[r'account'] = null;
    }
    if (this.availableStart != null) {
      json[r'availableStart'] = this.availableStart;
    } else {
      json[r'availableStart'] = null;
    }
    if (this.availableEnd != null) {
      json[r'availableEnd'] = this.availableEnd;
    } else {
      json[r'availableEnd'] = null;
    }
    if (this.color1 != null) {
      json[r'color1'] = this.color1;
    } else {
      json[r'color1'] = null;
    }
    if (this.color2 != null) {
      json[r'color2'] = this.color2;
    } else {
      json[r'color2'] = null;
    }
    if (this.type != null) {
      json[r'type'] = this.type;
    } else {
      json[r'type'] = null;
    }
    return json;
  }

  /// Returns a new [ParticipantResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ParticipantResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ParticipantResponse[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ParticipantResponse[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ParticipantResponse(
        id: mapValueOfType<int>(json, r'id'),
        account: AccountMiniResponse.fromJson(json[r'account']),
        availableStart: mapValueOfType<int>(json, r'availableStart'),
        availableEnd: mapValueOfType<int>(json, r'availableEnd'),
        color1: mapValueOfType<String>(json, r'color1'),
        color2: mapValueOfType<String>(json, r'color2'),
        type: mapValueOfType<String>(json, r'type'),
      );
    }
    return null;
  }

  static List<ParticipantResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ParticipantResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ParticipantResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ParticipantResponse> mapFromJson(dynamic json) {
    final map = <String, ParticipantResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ParticipantResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ParticipantResponse-objects as value to a dart map
  static Map<String, List<ParticipantResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ParticipantResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ParticipantResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

