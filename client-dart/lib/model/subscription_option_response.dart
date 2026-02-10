//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class SubscriptionOptionResponse {
  /// Returns a new [SubscriptionOptionResponse] instance.
  SubscriptionOptionResponse({
    this.id,
    this.name,
    this.price,
    this.quantity,
    this.threshold,
    this.visible,
    this.optionType,
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
  double? price;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? quantity;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? threshold;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? visible;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? optionType;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SubscriptionOptionResponse &&
    other.id == id &&
    other.name == name &&
    other.price == price &&
    other.quantity == quantity &&
    other.threshold == threshold &&
    other.visible == visible &&
    other.optionType == optionType;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (price == null ? 0 : price!.hashCode) +
    (quantity == null ? 0 : quantity!.hashCode) +
    (threshold == null ? 0 : threshold!.hashCode) +
    (visible == null ? 0 : visible!.hashCode) +
    (optionType == null ? 0 : optionType!.hashCode);

  @override
  String toString() => 'SubscriptionOptionResponse[id=$id, name=$name, price=$price, quantity=$quantity, threshold=$threshold, visible=$visible, optionType=$optionType]';

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
    if (this.price != null) {
      json[r'price'] = this.price;
    } else {
      json[r'price'] = null;
    }
    if (this.quantity != null) {
      json[r'quantity'] = this.quantity;
    } else {
      json[r'quantity'] = null;
    }
    if (this.threshold != null) {
      json[r'threshold'] = this.threshold;
    } else {
      json[r'threshold'] = null;
    }
    if (this.visible != null) {
      json[r'visible'] = this.visible;
    } else {
      json[r'visible'] = null;
    }
    if (this.optionType != null) {
      json[r'optionType'] = this.optionType;
    } else {
      json[r'optionType'] = null;
    }
    return json;
  }

  /// Returns a new [SubscriptionOptionResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SubscriptionOptionResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SubscriptionOptionResponse[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SubscriptionOptionResponse[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SubscriptionOptionResponse(
        id: mapValueOfType<int>(json, r'id'),
        name: mapValueOfType<String>(json, r'name'),
        price: mapValueOfType<double>(json, r'price'),
        quantity: mapValueOfType<int>(json, r'quantity'),
        threshold: mapValueOfType<int>(json, r'threshold'),
        visible: mapValueOfType<bool>(json, r'visible'),
        optionType: mapValueOfType<String>(json, r'optionType'),
      );
    }
    return null;
  }

  static List<SubscriptionOptionResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SubscriptionOptionResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SubscriptionOptionResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SubscriptionOptionResponse> mapFromJson(dynamic json) {
    final map = <String, SubscriptionOptionResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SubscriptionOptionResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SubscriptionOptionResponse-objects as value to a dart map
  static Map<String, List<SubscriptionOptionResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SubscriptionOptionResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SubscriptionOptionResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

