//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Verb {
  /// Returns a new [Verb] instance.
  Verb({
    this.tag,
    this.body,
    this.attributes = const {},
    this.children = const [],
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? tag;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? body;

  Map<String, String> attributes;

  List<Verb> children;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Verb &&
    other.tag == tag &&
    other.body == body &&
    _deepEquality.equals(other.attributes, attributes) &&
    _deepEquality.equals(other.children, children);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (tag == null ? 0 : tag!.hashCode) +
    (body == null ? 0 : body!.hashCode) +
    (attributes.hashCode) +
    (children.hashCode);

  @override
  String toString() => 'Verb[tag=$tag, body=$body, attributes=$attributes, children=$children]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.tag != null) {
      json[r'tag'] = this.tag;
    } else {
      json[r'tag'] = null;
    }
    if (this.body != null) {
      json[r'body'] = this.body;
    } else {
      json[r'body'] = null;
    }
      json[r'attributes'] = this.attributes;
      json[r'children'] = this.children;
    return json;
  }

  /// Returns a new [Verb] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Verb? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Verb[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Verb[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Verb(
        tag: mapValueOfType<String>(json, r'tag'),
        body: mapValueOfType<String>(json, r'body'),
        attributes: mapCastOfType<String, String>(json, r'attributes') ?? const {},
        children: Verb.listFromJson(json[r'children']),
      );
    }
    return null;
  }

  static List<Verb> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Verb>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Verb.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Verb> mapFromJson(dynamic json) {
    final map = <String, Verb>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Verb.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Verb-objects as value to a dart map
  static Map<String, List<Verb>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Verb>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Verb.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

