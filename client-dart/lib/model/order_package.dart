//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class OrderPackage {
  /// Returns a new [OrderPackage] instance.
  OrderPackage({
    this.valid,
    this.packageTypeName,
    this.packageCount,
    this.cubicFeet,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? valid;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? packageTypeName;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? packageCount;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? cubicFeet;

  @override
  bool operator ==(Object other) => identical(this, other) || other is OrderPackage &&
    other.valid == valid &&
    other.packageTypeName == packageTypeName &&
    other.packageCount == packageCount &&
    other.cubicFeet == cubicFeet;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (valid == null ? 0 : valid!.hashCode) +
    (packageTypeName == null ? 0 : packageTypeName!.hashCode) +
    (packageCount == null ? 0 : packageCount!.hashCode) +
    (cubicFeet == null ? 0 : cubicFeet!.hashCode);

  @override
  String toString() => 'OrderPackage[valid=$valid, packageTypeName=$packageTypeName, packageCount=$packageCount, cubicFeet=$cubicFeet]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.valid != null) {
      json[r'valid'] = this.valid;
    } else {
      json[r'valid'] = null;
    }
    if (this.packageTypeName != null) {
      json[r'PackageTypeName'] = this.packageTypeName;
    } else {
      json[r'PackageTypeName'] = null;
    }
    if (this.packageCount != null) {
      json[r'PackageCount'] = this.packageCount;
    } else {
      json[r'PackageCount'] = null;
    }
    if (this.cubicFeet != null) {
      json[r'CubicFeet'] = this.cubicFeet;
    } else {
      json[r'CubicFeet'] = null;
    }
    return json;
  }

  /// Returns a new [OrderPackage] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static OrderPackage? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "OrderPackage[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "OrderPackage[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return OrderPackage(
        valid: mapValueOfType<bool>(json, r'valid'),
        packageTypeName: mapValueOfType<String>(json, r'PackageTypeName'),
        packageCount: mapValueOfType<int>(json, r'PackageCount'),
        cubicFeet: mapValueOfType<double>(json, r'CubicFeet'),
      );
    }
    return null;
  }

  static List<OrderPackage> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <OrderPackage>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = OrderPackage.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, OrderPackage> mapFromJson(dynamic json) {
    final map = <String, OrderPackage>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = OrderPackage.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of OrderPackage-objects as value to a dart map
  static Map<String, List<OrderPackage>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<OrderPackage>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = OrderPackage.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

