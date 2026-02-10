//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ProductResponse {
  /// Returns a new [ProductResponse] instance.
  ProductResponse({
    this.brand,
    this.productType,
    this.condition,
    this.isbn,
    this.asin,
    this.catalogNumbers = const [],
    this.department,
    this.features = const [],
    this.minimumPrice,
    this.width,
    this.height,
    this.depth,
    this.weight,
    this.unit,
    this.studio,
    this.parentalRating,
    this.publishDate,
    this.availabilityDate,
    this.size,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? brand;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? productType;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? condition;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? isbn;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? asin;

  List<String> catalogNumbers;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? department;

  List<String> features;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? minimumPrice;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? width;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? height;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? depth;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? weight;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? unit;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? studio;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? parentalRating;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? publishDate;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? availabilityDate;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  SizeGroupResponse? size;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ProductResponse &&
    other.brand == brand &&
    other.productType == productType &&
    other.condition == condition &&
    other.isbn == isbn &&
    other.asin == asin &&
    _deepEquality.equals(other.catalogNumbers, catalogNumbers) &&
    other.department == department &&
    _deepEquality.equals(other.features, features) &&
    other.minimumPrice == minimumPrice &&
    other.width == width &&
    other.height == height &&
    other.depth == depth &&
    other.weight == weight &&
    other.unit == unit &&
    other.studio == studio &&
    other.parentalRating == parentalRating &&
    other.publishDate == publishDate &&
    other.availabilityDate == availabilityDate &&
    other.size == size;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (brand == null ? 0 : brand!.hashCode) +
    (productType == null ? 0 : productType!.hashCode) +
    (condition == null ? 0 : condition!.hashCode) +
    (isbn == null ? 0 : isbn!.hashCode) +
    (asin == null ? 0 : asin!.hashCode) +
    (catalogNumbers.hashCode) +
    (department == null ? 0 : department!.hashCode) +
    (features.hashCode) +
    (minimumPrice == null ? 0 : minimumPrice!.hashCode) +
    (width == null ? 0 : width!.hashCode) +
    (height == null ? 0 : height!.hashCode) +
    (depth == null ? 0 : depth!.hashCode) +
    (weight == null ? 0 : weight!.hashCode) +
    (unit == null ? 0 : unit!.hashCode) +
    (studio == null ? 0 : studio!.hashCode) +
    (parentalRating == null ? 0 : parentalRating!.hashCode) +
    (publishDate == null ? 0 : publishDate!.hashCode) +
    (availabilityDate == null ? 0 : availabilityDate!.hashCode) +
    (size == null ? 0 : size!.hashCode);

  @override
  String toString() => 'ProductResponse[brand=$brand, productType=$productType, condition=$condition, isbn=$isbn, asin=$asin, catalogNumbers=$catalogNumbers, department=$department, features=$features, minimumPrice=$minimumPrice, width=$width, height=$height, depth=$depth, weight=$weight, unit=$unit, studio=$studio, parentalRating=$parentalRating, publishDate=$publishDate, availabilityDate=$availabilityDate, size=$size]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.brand != null) {
      json[r'brand'] = this.brand;
    } else {
      json[r'brand'] = null;
    }
    if (this.productType != null) {
      json[r'productType'] = this.productType;
    } else {
      json[r'productType'] = null;
    }
    if (this.condition != null) {
      json[r'condition'] = this.condition;
    } else {
      json[r'condition'] = null;
    }
    if (this.isbn != null) {
      json[r'isbn'] = this.isbn;
    } else {
      json[r'isbn'] = null;
    }
    if (this.asin != null) {
      json[r'asin'] = this.asin;
    } else {
      json[r'asin'] = null;
    }
      json[r'catalogNumbers'] = this.catalogNumbers;
    if (this.department != null) {
      json[r'department'] = this.department;
    } else {
      json[r'department'] = null;
    }
      json[r'features'] = this.features;
    if (this.minimumPrice != null) {
      json[r'minimumPrice'] = this.minimumPrice;
    } else {
      json[r'minimumPrice'] = null;
    }
    if (this.width != null) {
      json[r'width'] = this.width;
    } else {
      json[r'width'] = null;
    }
    if (this.height != null) {
      json[r'height'] = this.height;
    } else {
      json[r'height'] = null;
    }
    if (this.depth != null) {
      json[r'depth'] = this.depth;
    } else {
      json[r'depth'] = null;
    }
    if (this.weight != null) {
      json[r'weight'] = this.weight;
    } else {
      json[r'weight'] = null;
    }
    if (this.unit != null) {
      json[r'unit'] = this.unit;
    } else {
      json[r'unit'] = null;
    }
    if (this.studio != null) {
      json[r'studio'] = this.studio;
    } else {
      json[r'studio'] = null;
    }
    if (this.parentalRating != null) {
      json[r'parentalRating'] = this.parentalRating;
    } else {
      json[r'parentalRating'] = null;
    }
    if (this.publishDate != null) {
      json[r'publishDate'] = this.publishDate;
    } else {
      json[r'publishDate'] = null;
    }
    if (this.availabilityDate != null) {
      json[r'availabilityDate'] = this.availabilityDate;
    } else {
      json[r'availabilityDate'] = null;
    }
    if (this.size != null) {
      json[r'size'] = this.size;
    } else {
      json[r'size'] = null;
    }
    return json;
  }

  /// Returns a new [ProductResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ProductResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ProductResponse[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ProductResponse[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ProductResponse(
        brand: mapValueOfType<String>(json, r'brand'),
        productType: mapValueOfType<String>(json, r'productType'),
        condition: mapValueOfType<String>(json, r'condition'),
        isbn: mapValueOfType<String>(json, r'isbn'),
        asin: mapValueOfType<String>(json, r'asin'),
        catalogNumbers: json[r'catalogNumbers'] is Iterable
            ? (json[r'catalogNumbers'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        department: mapValueOfType<String>(json, r'department'),
        features: json[r'features'] is Iterable
            ? (json[r'features'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        minimumPrice: mapValueOfType<double>(json, r'minimumPrice'),
        width: mapValueOfType<double>(json, r'width'),
        height: mapValueOfType<double>(json, r'height'),
        depth: mapValueOfType<double>(json, r'depth'),
        weight: mapValueOfType<double>(json, r'weight'),
        unit: mapValueOfType<String>(json, r'unit'),
        studio: mapValueOfType<String>(json, r'studio'),
        parentalRating: mapValueOfType<String>(json, r'parentalRating'),
        publishDate: mapValueOfType<int>(json, r'publishDate'),
        availabilityDate: mapValueOfType<int>(json, r'availabilityDate'),
        size: SizeGroupResponse.fromJson(json[r'size']),
      );
    }
    return null;
  }

  static List<ProductResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ProductResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ProductResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ProductResponse> mapFromJson(dynamic json) {
    final map = <String, ProductResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ProductResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ProductResponse-objects as value to a dart map
  static Map<String, List<ProductResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ProductResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ProductResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

