//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class TicketOfferResponse {
  /// Returns a new [TicketOfferResponse] instance.
  TicketOfferResponse({
    this.id,
    this.title,
    this.description,
    this.imageURL,
    this.retailer,
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
  String? title;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? description;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? imageURL;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? retailer;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TicketOfferResponse &&
    other.id == id &&
    other.title == title &&
    other.description == description &&
    other.imageURL == imageURL &&
    other.retailer == retailer;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (title == null ? 0 : title!.hashCode) +
    (description == null ? 0 : description!.hashCode) +
    (imageURL == null ? 0 : imageURL!.hashCode) +
    (retailer == null ? 0 : retailer!.hashCode);

  @override
  String toString() => 'TicketOfferResponse[id=$id, title=$title, description=$description, imageURL=$imageURL, retailer=$retailer]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.title != null) {
      json[r'title'] = this.title;
    } else {
      json[r'title'] = null;
    }
    if (this.description != null) {
      json[r'description'] = this.description;
    } else {
      json[r'description'] = null;
    }
    if (this.imageURL != null) {
      json[r'imageURL'] = this.imageURL;
    } else {
      json[r'imageURL'] = null;
    }
    if (this.retailer != null) {
      json[r'retailer'] = this.retailer;
    } else {
      json[r'retailer'] = null;
    }
    return json;
  }

  /// Returns a new [TicketOfferResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TicketOfferResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "TicketOfferResponse[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "TicketOfferResponse[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return TicketOfferResponse(
        id: mapValueOfType<int>(json, r'id'),
        title: mapValueOfType<String>(json, r'title'),
        description: mapValueOfType<String>(json, r'description'),
        imageURL: mapValueOfType<String>(json, r'imageURL'),
        retailer: mapValueOfType<String>(json, r'retailer'),
      );
    }
    return null;
  }

  static List<TicketOfferResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TicketOfferResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TicketOfferResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TicketOfferResponse> mapFromJson(dynamic json) {
    final map = <String, TicketOfferResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TicketOfferResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TicketOfferResponse-objects as value to a dart map
  static Map<String, List<TicketOfferResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<TicketOfferResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = TicketOfferResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

