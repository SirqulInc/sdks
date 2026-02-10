//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class PurchaseItemShortResponse {
  /// Returns a new [PurchaseItemShortResponse] instance.
  PurchaseItemShortResponse({
    this.id,
    this.name,
    this.description,
    this.tickets,
    this.coverAsset,
    this.promoAsset,
    this.giftable,
    this.assetable,
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
  String? name;

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
  int? tickets;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  AssetShortResponse? coverAsset;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  AssetShortResponse? promoAsset;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? giftable;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? assetable;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PurchaseItemShortResponse &&
    other.id == id &&
    other.name == name &&
    other.description == description &&
    other.tickets == tickets &&
    other.coverAsset == coverAsset &&
    other.promoAsset == promoAsset &&
    other.giftable == giftable &&
    other.assetable == assetable;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (description == null ? 0 : description!.hashCode) +
    (tickets == null ? 0 : tickets!.hashCode) +
    (coverAsset == null ? 0 : coverAsset!.hashCode) +
    (promoAsset == null ? 0 : promoAsset!.hashCode) +
    (giftable == null ? 0 : giftable!.hashCode) +
    (assetable == null ? 0 : assetable!.hashCode);

  @override
  String toString() => 'PurchaseItemShortResponse[id=$id, name=$name, description=$description, tickets=$tickets, coverAsset=$coverAsset, promoAsset=$promoAsset, giftable=$giftable, assetable=$assetable]';

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
    if (this.description != null) {
      json[r'description'] = this.description;
    } else {
      json[r'description'] = null;
    }
    if (this.tickets != null) {
      json[r'tickets'] = this.tickets;
    } else {
      json[r'tickets'] = null;
    }
    if (this.coverAsset != null) {
      json[r'coverAsset'] = this.coverAsset;
    } else {
      json[r'coverAsset'] = null;
    }
    if (this.promoAsset != null) {
      json[r'promoAsset'] = this.promoAsset;
    } else {
      json[r'promoAsset'] = null;
    }
    if (this.giftable != null) {
      json[r'giftable'] = this.giftable;
    } else {
      json[r'giftable'] = null;
    }
    if (this.assetable != null) {
      json[r'assetable'] = this.assetable;
    } else {
      json[r'assetable'] = null;
    }
    return json;
  }

  /// Returns a new [PurchaseItemShortResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PurchaseItemShortResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "PurchaseItemShortResponse[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "PurchaseItemShortResponse[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return PurchaseItemShortResponse(
        id: mapValueOfType<int>(json, r'id'),
        name: mapValueOfType<String>(json, r'name'),
        description: mapValueOfType<String>(json, r'description'),
        tickets: mapValueOfType<int>(json, r'tickets'),
        coverAsset: AssetShortResponse.fromJson(json[r'coverAsset']),
        promoAsset: AssetShortResponse.fromJson(json[r'promoAsset']),
        giftable: mapValueOfType<bool>(json, r'giftable'),
        assetable: mapValueOfType<bool>(json, r'assetable'),
      );
    }
    return null;
  }

  static List<PurchaseItemShortResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PurchaseItemShortResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PurchaseItemShortResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PurchaseItemShortResponse> mapFromJson(dynamic json) {
    final map = <String, PurchaseItemShortResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PurchaseItemShortResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PurchaseItemShortResponse-objects as value to a dart map
  static Map<String, List<PurchaseItemShortResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<PurchaseItemShortResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PurchaseItemShortResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

