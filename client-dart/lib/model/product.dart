//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Product {
  /// Returns a new [Product] instance.
  Product({
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

  ProductProductTypeEnum? productType;

  ProductConditionEnum? condition;

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

  ProductUnitEnum? unit;

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
  SizeGroup? size;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Product &&
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
  String toString() => 'Product[brand=$brand, productType=$productType, condition=$condition, isbn=$isbn, asin=$asin, catalogNumbers=$catalogNumbers, department=$department, features=$features, minimumPrice=$minimumPrice, width=$width, height=$height, depth=$depth, weight=$weight, unit=$unit, studio=$studio, parentalRating=$parentalRating, publishDate=$publishDate, availabilityDate=$availabilityDate, size=$size]';

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

  /// Returns a new [Product] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Product? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Product[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Product[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Product(
        brand: mapValueOfType<String>(json, r'brand'),
        productType: ProductProductTypeEnum.fromJson(json[r'productType']),
        condition: ProductConditionEnum.fromJson(json[r'condition']),
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
        unit: ProductUnitEnum.fromJson(json[r'unit']),
        studio: mapValueOfType<String>(json, r'studio'),
        parentalRating: mapValueOfType<String>(json, r'parentalRating'),
        publishDate: mapValueOfType<int>(json, r'publishDate'),
        availabilityDate: mapValueOfType<int>(json, r'availabilityDate'),
        size: SizeGroup.fromJson(json[r'size']),
      );
    }
    return null;
  }

  static List<Product> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Product>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Product.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Product> mapFromJson(dynamic json) {
    final map = <String, Product>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Product.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Product-objects as value to a dart map
  static Map<String, List<Product>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Product>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Product.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}


class ProductProductTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const ProductProductTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const APPAREL = ProductProductTypeEnum._(r'APPAREL');
  static const APPLIANCES = ProductProductTypeEnum._(r'APPLIANCES');
  static const APPS = ProductProductTypeEnum._(r'APPS');
  static const ARTS_CRAFTS = ProductProductTypeEnum._(r'ARTS_CRAFTS');
  static const AUTOMOTIVE = ProductProductTypeEnum._(r'AUTOMOTIVE');
  static const BABY = ProductProductTypeEnum._(r'BABY');
  static const BEAUTY = ProductProductTypeEnum._(r'BEAUTY');
  static const BOOKS = ProductProductTypeEnum._(r'BOOKS');
  static const CLASSICAL = ProductProductTypeEnum._(r'CLASSICAL');
  static const COLLECTIBLES = ProductProductTypeEnum._(r'COLLECTIBLES');
  static const DVD = ProductProductTypeEnum._(r'DVD');
  static const ELECTRONICS = ProductProductTypeEnum._(r'ELECTRONICS');
  static const GIFT_CARDS = ProductProductTypeEnum._(r'GIFT_CARDS');
  static const GOURMET_FOOD = ProductProductTypeEnum._(r'GOURMET_FOOD');
  static const GROCERY = ProductProductTypeEnum._(r'GROCERY');
  static const HEALTH_PERSONAL_CARE = ProductProductTypeEnum._(r'HEALTH_PERSONAL_CARE');
  static const HOME_GARDEN = ProductProductTypeEnum._(r'HOME_GARDEN');
  static const INDUSTRIAL = ProductProductTypeEnum._(r'INDUSTRIAL');
  static const JEWELRY = ProductProductTypeEnum._(r'JEWELRY');
  static const KITCHEN = ProductProductTypeEnum._(r'KITCHEN');
  static const LAWN_GARDEN = ProductProductTypeEnum._(r'LAWN_GARDEN');
  static const MAGAZINES = ProductProductTypeEnum._(r'MAGAZINES');
  static const MISCELLANEOUS = ProductProductTypeEnum._(r'MISCELLANEOUS');
  static const MUSICAL_INSTRUMENTS = ProductProductTypeEnum._(r'MUSICAL_INSTRUMENTS');
  static const OFFICE_PRODUCTS = ProductProductTypeEnum._(r'OFFICE_PRODUCTS');
  static const OTHER = ProductProductTypeEnum._(r'OTHER');
  static const OUTDOOR_LIVING = ProductProductTypeEnum._(r'OUTDOOR_LIVING');
  static const PC_HARDWARE = ProductProductTypeEnum._(r'PC_HARDWARE');
  static const PET_SUPPLIES = ProductProductTypeEnum._(r'PET_SUPPLIES');
  static const SHOES = ProductProductTypeEnum._(r'SHOES');
  static const SOFTWARE = ProductProductTypeEnum._(r'SOFTWARE');
  static const SPORTING_GOODS = ProductProductTypeEnum._(r'SPORTING_GOODS');
  static const TOOLS = ProductProductTypeEnum._(r'TOOLS');
  static const TOYS = ProductProductTypeEnum._(r'TOYS');
  static const VIDEO_GAMES = ProductProductTypeEnum._(r'VIDEO_GAMES');
  static const WATCHES = ProductProductTypeEnum._(r'WATCHES');
  static const WIRELESS = ProductProductTypeEnum._(r'WIRELESS');
  static const WIRELESS_ACCESSORIES = ProductProductTypeEnum._(r'WIRELESS_ACCESSORIES');

  /// List of all possible values in this [enum][ProductProductTypeEnum].
  static const values = <ProductProductTypeEnum>[
    APPAREL,
    APPLIANCES,
    APPS,
    ARTS_CRAFTS,
    AUTOMOTIVE,
    BABY,
    BEAUTY,
    BOOKS,
    CLASSICAL,
    COLLECTIBLES,
    DVD,
    ELECTRONICS,
    GIFT_CARDS,
    GOURMET_FOOD,
    GROCERY,
    HEALTH_PERSONAL_CARE,
    HOME_GARDEN,
    INDUSTRIAL,
    JEWELRY,
    KITCHEN,
    LAWN_GARDEN,
    MAGAZINES,
    MISCELLANEOUS,
    MUSICAL_INSTRUMENTS,
    OFFICE_PRODUCTS,
    OTHER,
    OUTDOOR_LIVING,
    PC_HARDWARE,
    PET_SUPPLIES,
    SHOES,
    SOFTWARE,
    SPORTING_GOODS,
    TOOLS,
    TOYS,
    VIDEO_GAMES,
    WATCHES,
    WIRELESS,
    WIRELESS_ACCESSORIES,
  ];

  static ProductProductTypeEnum? fromJson(dynamic value) => ProductProductTypeEnumTypeTransformer().decode(value);

  static List<ProductProductTypeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ProductProductTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ProductProductTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [ProductProductTypeEnum] to String,
/// and [decode] dynamic data back to [ProductProductTypeEnum].
class ProductProductTypeEnumTypeTransformer {
  factory ProductProductTypeEnumTypeTransformer() => _instance ??= const ProductProductTypeEnumTypeTransformer._();

  const ProductProductTypeEnumTypeTransformer._();

  String encode(ProductProductTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a ProductProductTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ProductProductTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'APPAREL': return ProductProductTypeEnum.APPAREL;
        case r'APPLIANCES': return ProductProductTypeEnum.APPLIANCES;
        case r'APPS': return ProductProductTypeEnum.APPS;
        case r'ARTS_CRAFTS': return ProductProductTypeEnum.ARTS_CRAFTS;
        case r'AUTOMOTIVE': return ProductProductTypeEnum.AUTOMOTIVE;
        case r'BABY': return ProductProductTypeEnum.BABY;
        case r'BEAUTY': return ProductProductTypeEnum.BEAUTY;
        case r'BOOKS': return ProductProductTypeEnum.BOOKS;
        case r'CLASSICAL': return ProductProductTypeEnum.CLASSICAL;
        case r'COLLECTIBLES': return ProductProductTypeEnum.COLLECTIBLES;
        case r'DVD': return ProductProductTypeEnum.DVD;
        case r'ELECTRONICS': return ProductProductTypeEnum.ELECTRONICS;
        case r'GIFT_CARDS': return ProductProductTypeEnum.GIFT_CARDS;
        case r'GOURMET_FOOD': return ProductProductTypeEnum.GOURMET_FOOD;
        case r'GROCERY': return ProductProductTypeEnum.GROCERY;
        case r'HEALTH_PERSONAL_CARE': return ProductProductTypeEnum.HEALTH_PERSONAL_CARE;
        case r'HOME_GARDEN': return ProductProductTypeEnum.HOME_GARDEN;
        case r'INDUSTRIAL': return ProductProductTypeEnum.INDUSTRIAL;
        case r'JEWELRY': return ProductProductTypeEnum.JEWELRY;
        case r'KITCHEN': return ProductProductTypeEnum.KITCHEN;
        case r'LAWN_GARDEN': return ProductProductTypeEnum.LAWN_GARDEN;
        case r'MAGAZINES': return ProductProductTypeEnum.MAGAZINES;
        case r'MISCELLANEOUS': return ProductProductTypeEnum.MISCELLANEOUS;
        case r'MUSICAL_INSTRUMENTS': return ProductProductTypeEnum.MUSICAL_INSTRUMENTS;
        case r'OFFICE_PRODUCTS': return ProductProductTypeEnum.OFFICE_PRODUCTS;
        case r'OTHER': return ProductProductTypeEnum.OTHER;
        case r'OUTDOOR_LIVING': return ProductProductTypeEnum.OUTDOOR_LIVING;
        case r'PC_HARDWARE': return ProductProductTypeEnum.PC_HARDWARE;
        case r'PET_SUPPLIES': return ProductProductTypeEnum.PET_SUPPLIES;
        case r'SHOES': return ProductProductTypeEnum.SHOES;
        case r'SOFTWARE': return ProductProductTypeEnum.SOFTWARE;
        case r'SPORTING_GOODS': return ProductProductTypeEnum.SPORTING_GOODS;
        case r'TOOLS': return ProductProductTypeEnum.TOOLS;
        case r'TOYS': return ProductProductTypeEnum.TOYS;
        case r'VIDEO_GAMES': return ProductProductTypeEnum.VIDEO_GAMES;
        case r'WATCHES': return ProductProductTypeEnum.WATCHES;
        case r'WIRELESS': return ProductProductTypeEnum.WIRELESS;
        case r'WIRELESS_ACCESSORIES': return ProductProductTypeEnum.WIRELESS_ACCESSORIES;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [ProductProductTypeEnumTypeTransformer] instance.
  static ProductProductTypeEnumTypeTransformer? _instance;
}



class ProductConditionEnum {
  /// Instantiate a new enum with the provided [value].
  const ProductConditionEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const NEW = ProductConditionEnum._(r'NEW');
  static const USED = ProductConditionEnum._(r'USED');
  static const REFURBISHED = ProductConditionEnum._(r'REFURBISHED');
  static const OTHER = ProductConditionEnum._(r'OTHER');

  /// List of all possible values in this [enum][ProductConditionEnum].
  static const values = <ProductConditionEnum>[
    NEW,
    USED,
    REFURBISHED,
    OTHER,
  ];

  static ProductConditionEnum? fromJson(dynamic value) => ProductConditionEnumTypeTransformer().decode(value);

  static List<ProductConditionEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ProductConditionEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ProductConditionEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [ProductConditionEnum] to String,
/// and [decode] dynamic data back to [ProductConditionEnum].
class ProductConditionEnumTypeTransformer {
  factory ProductConditionEnumTypeTransformer() => _instance ??= const ProductConditionEnumTypeTransformer._();

  const ProductConditionEnumTypeTransformer._();

  String encode(ProductConditionEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a ProductConditionEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ProductConditionEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'NEW': return ProductConditionEnum.NEW;
        case r'USED': return ProductConditionEnum.USED;
        case r'REFURBISHED': return ProductConditionEnum.REFURBISHED;
        case r'OTHER': return ProductConditionEnum.OTHER;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [ProductConditionEnumTypeTransformer] instance.
  static ProductConditionEnumTypeTransformer? _instance;
}



class ProductUnitEnum {
  /// Instantiate a new enum with the provided [value].
  const ProductUnitEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const MILIMETER = ProductUnitEnum._(r'MILIMETER');
  static const CENTIMETER = ProductUnitEnum._(r'CENTIMETER');
  static const METER = ProductUnitEnum._(r'METER');
  static const INCH = ProductUnitEnum._(r'INCH');
  static const FOOT = ProductUnitEnum._(r'FOOT');
  static const YARD = ProductUnitEnum._(r'YARD');

  /// List of all possible values in this [enum][ProductUnitEnum].
  static const values = <ProductUnitEnum>[
    MILIMETER,
    CENTIMETER,
    METER,
    INCH,
    FOOT,
    YARD,
  ];

  static ProductUnitEnum? fromJson(dynamic value) => ProductUnitEnumTypeTransformer().decode(value);

  static List<ProductUnitEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ProductUnitEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ProductUnitEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [ProductUnitEnum] to String,
/// and [decode] dynamic data back to [ProductUnitEnum].
class ProductUnitEnumTypeTransformer {
  factory ProductUnitEnumTypeTransformer() => _instance ??= const ProductUnitEnumTypeTransformer._();

  const ProductUnitEnumTypeTransformer._();

  String encode(ProductUnitEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a ProductUnitEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ProductUnitEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'MILIMETER': return ProductUnitEnum.MILIMETER;
        case r'CENTIMETER': return ProductUnitEnum.CENTIMETER;
        case r'METER': return ProductUnitEnum.METER;
        case r'INCH': return ProductUnitEnum.INCH;
        case r'FOOT': return ProductUnitEnum.FOOT;
        case r'YARD': return ProductUnitEnum.YARD;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [ProductUnitEnumTypeTransformer] instance.
  static ProductUnitEnumTypeTransformer? _instance;
}


