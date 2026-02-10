//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Region {
  /// Returns a new [Region] instance.
  Region({
    this.id,
    this.active,
    this.valid,
    this.latitude,
    this.longitude,
    this.locationDescription,
    this.owner,
    this.shortName,
    this.fullName,
    this.bounds,
    this.start,
    this.end,
    this.polygon,
    this.metaData,
    this.children = const {},
    this.parents = const {},
    this.postalCodes = const {},
    this.regionClass,
    this.root,
    this.webActive,
    this.adminActive,
    this.visibility,
    this.categories = const [],
    this.filters = const [],
    this.truncatedLatitude,
    this.truncatedLongitude,
    this.versionCode,
    this.display,
    this.contentName,
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
  bool? active;

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
  double? latitude;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? longitude;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? locationDescription;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Account? owner;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? shortName;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? fullName;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  GeoBox? bounds;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? start;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? end;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? polygon;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? metaData;

  Set<Region> children;

  Set<Region> parents;

  Set<PostalCode> postalCodes;

  RegionRegionClassEnum? regionClass;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? root;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? webActive;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? adminActive;

  RegionVisibilityEnum? visibility;

  List<Category> categories;

  List<Filter> filters;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? truncatedLatitude;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? truncatedLongitude;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? versionCode;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? display;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? contentName;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Region &&
    other.id == id &&
    other.active == active &&
    other.valid == valid &&
    other.latitude == latitude &&
    other.longitude == longitude &&
    other.locationDescription == locationDescription &&
    other.owner == owner &&
    other.shortName == shortName &&
    other.fullName == fullName &&
    other.bounds == bounds &&
    other.start == start &&
    other.end == end &&
    other.polygon == polygon &&
    other.metaData == metaData &&
    _deepEquality.equals(other.children, children) &&
    _deepEquality.equals(other.parents, parents) &&
    _deepEquality.equals(other.postalCodes, postalCodes) &&
    other.regionClass == regionClass &&
    other.root == root &&
    other.webActive == webActive &&
    other.adminActive == adminActive &&
    other.visibility == visibility &&
    _deepEquality.equals(other.categories, categories) &&
    _deepEquality.equals(other.filters, filters) &&
    other.truncatedLatitude == truncatedLatitude &&
    other.truncatedLongitude == truncatedLongitude &&
    other.versionCode == versionCode &&
    other.display == display &&
    other.contentName == contentName;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (active == null ? 0 : active!.hashCode) +
    (valid == null ? 0 : valid!.hashCode) +
    (latitude == null ? 0 : latitude!.hashCode) +
    (longitude == null ? 0 : longitude!.hashCode) +
    (locationDescription == null ? 0 : locationDescription!.hashCode) +
    (owner == null ? 0 : owner!.hashCode) +
    (shortName == null ? 0 : shortName!.hashCode) +
    (fullName == null ? 0 : fullName!.hashCode) +
    (bounds == null ? 0 : bounds!.hashCode) +
    (start == null ? 0 : start!.hashCode) +
    (end == null ? 0 : end!.hashCode) +
    (polygon == null ? 0 : polygon!.hashCode) +
    (metaData == null ? 0 : metaData!.hashCode) +
    (children.hashCode) +
    (parents.hashCode) +
    (postalCodes.hashCode) +
    (regionClass == null ? 0 : regionClass!.hashCode) +
    (root == null ? 0 : root!.hashCode) +
    (webActive == null ? 0 : webActive!.hashCode) +
    (adminActive == null ? 0 : adminActive!.hashCode) +
    (visibility == null ? 0 : visibility!.hashCode) +
    (categories.hashCode) +
    (filters.hashCode) +
    (truncatedLatitude == null ? 0 : truncatedLatitude!.hashCode) +
    (truncatedLongitude == null ? 0 : truncatedLongitude!.hashCode) +
    (versionCode == null ? 0 : versionCode!.hashCode) +
    (display == null ? 0 : display!.hashCode) +
    (contentName == null ? 0 : contentName!.hashCode);

  @override
  String toString() => 'Region[id=$id, active=$active, valid=$valid, latitude=$latitude, longitude=$longitude, locationDescription=$locationDescription, owner=$owner, shortName=$shortName, fullName=$fullName, bounds=$bounds, start=$start, end=$end, polygon=$polygon, metaData=$metaData, children=$children, parents=$parents, postalCodes=$postalCodes, regionClass=$regionClass, root=$root, webActive=$webActive, adminActive=$adminActive, visibility=$visibility, categories=$categories, filters=$filters, truncatedLatitude=$truncatedLatitude, truncatedLongitude=$truncatedLongitude, versionCode=$versionCode, display=$display, contentName=$contentName]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.active != null) {
      json[r'active'] = this.active;
    } else {
      json[r'active'] = null;
    }
    if (this.valid != null) {
      json[r'valid'] = this.valid;
    } else {
      json[r'valid'] = null;
    }
    if (this.latitude != null) {
      json[r'latitude'] = this.latitude;
    } else {
      json[r'latitude'] = null;
    }
    if (this.longitude != null) {
      json[r'longitude'] = this.longitude;
    } else {
      json[r'longitude'] = null;
    }
    if (this.locationDescription != null) {
      json[r'locationDescription'] = this.locationDescription;
    } else {
      json[r'locationDescription'] = null;
    }
    if (this.owner != null) {
      json[r'owner'] = this.owner;
    } else {
      json[r'owner'] = null;
    }
    if (this.shortName != null) {
      json[r'shortName'] = this.shortName;
    } else {
      json[r'shortName'] = null;
    }
    if (this.fullName != null) {
      json[r'fullName'] = this.fullName;
    } else {
      json[r'fullName'] = null;
    }
    if (this.bounds != null) {
      json[r'bounds'] = this.bounds;
    } else {
      json[r'bounds'] = null;
    }
    if (this.start != null) {
      json[r'start'] = this.start!.toUtc().toIso8601String();
    } else {
      json[r'start'] = null;
    }
    if (this.end != null) {
      json[r'end'] = this.end!.toUtc().toIso8601String();
    } else {
      json[r'end'] = null;
    }
    if (this.polygon != null) {
      json[r'polygon'] = this.polygon;
    } else {
      json[r'polygon'] = null;
    }
    if (this.metaData != null) {
      json[r'metaData'] = this.metaData;
    } else {
      json[r'metaData'] = null;
    }
      json[r'children'] = this.children.toList(growable: false);
      json[r'parents'] = this.parents.toList(growable: false);
      json[r'postalCodes'] = this.postalCodes.toList(growable: false);
    if (this.regionClass != null) {
      json[r'regionClass'] = this.regionClass;
    } else {
      json[r'regionClass'] = null;
    }
    if (this.root != null) {
      json[r'root'] = this.root;
    } else {
      json[r'root'] = null;
    }
    if (this.webActive != null) {
      json[r'webActive'] = this.webActive;
    } else {
      json[r'webActive'] = null;
    }
    if (this.adminActive != null) {
      json[r'adminActive'] = this.adminActive;
    } else {
      json[r'adminActive'] = null;
    }
    if (this.visibility != null) {
      json[r'visibility'] = this.visibility;
    } else {
      json[r'visibility'] = null;
    }
      json[r'categories'] = this.categories;
      json[r'filters'] = this.filters;
    if (this.truncatedLatitude != null) {
      json[r'truncatedLatitude'] = this.truncatedLatitude;
    } else {
      json[r'truncatedLatitude'] = null;
    }
    if (this.truncatedLongitude != null) {
      json[r'truncatedLongitude'] = this.truncatedLongitude;
    } else {
      json[r'truncatedLongitude'] = null;
    }
    if (this.versionCode != null) {
      json[r'versionCode'] = this.versionCode;
    } else {
      json[r'versionCode'] = null;
    }
    if (this.display != null) {
      json[r'display'] = this.display;
    } else {
      json[r'display'] = null;
    }
    if (this.contentName != null) {
      json[r'contentName'] = this.contentName;
    } else {
      json[r'contentName'] = null;
    }
    return json;
  }

  /// Returns a new [Region] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Region? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Region[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Region[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Region(
        id: mapValueOfType<int>(json, r'id'),
        active: mapValueOfType<bool>(json, r'active'),
        valid: mapValueOfType<bool>(json, r'valid'),
        latitude: mapValueOfType<double>(json, r'latitude'),
        longitude: mapValueOfType<double>(json, r'longitude'),
        locationDescription: mapValueOfType<String>(json, r'locationDescription'),
        owner: Account.fromJson(json[r'owner']),
        shortName: mapValueOfType<String>(json, r'shortName'),
        fullName: mapValueOfType<String>(json, r'fullName'),
        bounds: GeoBox.fromJson(json[r'bounds']),
        start: mapDateTime(json, r'start', r''),
        end: mapDateTime(json, r'end', r''),
        polygon: mapValueOfType<String>(json, r'polygon'),
        metaData: mapValueOfType<String>(json, r'metaData'),
        children: Region.listFromJson(json[r'children']).toSet(),
        parents: Region.listFromJson(json[r'parents']).toSet(),
        postalCodes: PostalCode.listFromJson(json[r'postalCodes']).toSet(),
        regionClass: RegionRegionClassEnum.fromJson(json[r'regionClass']),
        root: mapValueOfType<bool>(json, r'root'),
        webActive: mapValueOfType<bool>(json, r'webActive'),
        adminActive: mapValueOfType<bool>(json, r'adminActive'),
        visibility: RegionVisibilityEnum.fromJson(json[r'visibility']),
        categories: Category.listFromJson(json[r'categories']),
        filters: Filter.listFromJson(json[r'filters']),
        truncatedLatitude: mapValueOfType<double>(json, r'truncatedLatitude'),
        truncatedLongitude: mapValueOfType<double>(json, r'truncatedLongitude'),
        versionCode: mapValueOfType<int>(json, r'versionCode'),
        display: mapValueOfType<String>(json, r'display'),
        contentName: mapValueOfType<String>(json, r'contentName'),
      );
    }
    return null;
  }

  static List<Region> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Region>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Region.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Region> mapFromJson(dynamic json) {
    final map = <String, Region>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Region.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Region-objects as value to a dart map
  static Map<String, List<Region>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Region>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Region.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}


class RegionRegionClassEnum {
  /// Instantiate a new enum with the provided [value].
  const RegionRegionClassEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const NATIONAL = RegionRegionClassEnum._(r'NATIONAL');
  static const STATE = RegionRegionClassEnum._(r'STATE');
  static const COUNTY = RegionRegionClassEnum._(r'COUNTY');
  static const METRO_AREA = RegionRegionClassEnum._(r'METRO_AREA');
  static const CITY = RegionRegionClassEnum._(r'CITY');
  static const NEIGHBORHOOD = RegionRegionClassEnum._(r'NEIGHBORHOOD');
  static const TERRITORY = RegionRegionClassEnum._(r'TERRITORY');
  static const CUSTOM = RegionRegionClassEnum._(r'CUSTOM');
  static const ZONE = RegionRegionClassEnum._(r'ZONE');

  /// List of all possible values in this [enum][RegionRegionClassEnum].
  static const values = <RegionRegionClassEnum>[
    NATIONAL,
    STATE,
    COUNTY,
    METRO_AREA,
    CITY,
    NEIGHBORHOOD,
    TERRITORY,
    CUSTOM,
    ZONE,
  ];

  static RegionRegionClassEnum? fromJson(dynamic value) => RegionRegionClassEnumTypeTransformer().decode(value);

  static List<RegionRegionClassEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <RegionRegionClassEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RegionRegionClassEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [RegionRegionClassEnum] to String,
/// and [decode] dynamic data back to [RegionRegionClassEnum].
class RegionRegionClassEnumTypeTransformer {
  factory RegionRegionClassEnumTypeTransformer() => _instance ??= const RegionRegionClassEnumTypeTransformer._();

  const RegionRegionClassEnumTypeTransformer._();

  String encode(RegionRegionClassEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a RegionRegionClassEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  RegionRegionClassEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'NATIONAL': return RegionRegionClassEnum.NATIONAL;
        case r'STATE': return RegionRegionClassEnum.STATE;
        case r'COUNTY': return RegionRegionClassEnum.COUNTY;
        case r'METRO_AREA': return RegionRegionClassEnum.METRO_AREA;
        case r'CITY': return RegionRegionClassEnum.CITY;
        case r'NEIGHBORHOOD': return RegionRegionClassEnum.NEIGHBORHOOD;
        case r'TERRITORY': return RegionRegionClassEnum.TERRITORY;
        case r'CUSTOM': return RegionRegionClassEnum.CUSTOM;
        case r'ZONE': return RegionRegionClassEnum.ZONE;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [RegionRegionClassEnumTypeTransformer] instance.
  static RegionRegionClassEnumTypeTransformer? _instance;
}



class RegionVisibilityEnum {
  /// Instantiate a new enum with the provided [value].
  const RegionVisibilityEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const PUBLIC = RegionVisibilityEnum._(r'PUBLIC');
  static const PRIVATE = RegionVisibilityEnum._(r'PRIVATE');
  static const FRIENDS = RegionVisibilityEnum._(r'FRIENDS');

  /// List of all possible values in this [enum][RegionVisibilityEnum].
  static const values = <RegionVisibilityEnum>[
    PUBLIC,
    PRIVATE,
    FRIENDS,
  ];

  static RegionVisibilityEnum? fromJson(dynamic value) => RegionVisibilityEnumTypeTransformer().decode(value);

  static List<RegionVisibilityEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <RegionVisibilityEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RegionVisibilityEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [RegionVisibilityEnum] to String,
/// and [decode] dynamic data back to [RegionVisibilityEnum].
class RegionVisibilityEnumTypeTransformer {
  factory RegionVisibilityEnumTypeTransformer() => _instance ??= const RegionVisibilityEnumTypeTransformer._();

  const RegionVisibilityEnumTypeTransformer._();

  String encode(RegionVisibilityEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a RegionVisibilityEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  RegionVisibilityEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'PUBLIC': return RegionVisibilityEnum.PUBLIC;
        case r'PRIVATE': return RegionVisibilityEnum.PRIVATE;
        case r'FRIENDS': return RegionVisibilityEnum.FRIENDS;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [RegionVisibilityEnumTypeTransformer] instance.
  static RegionVisibilityEnumTypeTransformer? _instance;
}


