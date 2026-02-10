//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Placement {
  /// Returns a new [Placement] instance.
  Placement({
    this.id,
    this.active,
    this.valid,
    this.application,
    this.name,
    this.description,
    this.size,
    this.clickType,
    this.height,
    this.width,
    this.refreshInterval,
    this.defaultImage,
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
  Application? application;

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

  PlacementSizeEnum? size;

  PlacementClickTypeEnum? clickType;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? height;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? width;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? refreshInterval;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Asset? defaultImage;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Placement &&
    other.id == id &&
    other.active == active &&
    other.valid == valid &&
    other.application == application &&
    other.name == name &&
    other.description == description &&
    other.size == size &&
    other.clickType == clickType &&
    other.height == height &&
    other.width == width &&
    other.refreshInterval == refreshInterval &&
    other.defaultImage == defaultImage;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (active == null ? 0 : active!.hashCode) +
    (valid == null ? 0 : valid!.hashCode) +
    (application == null ? 0 : application!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (description == null ? 0 : description!.hashCode) +
    (size == null ? 0 : size!.hashCode) +
    (clickType == null ? 0 : clickType!.hashCode) +
    (height == null ? 0 : height!.hashCode) +
    (width == null ? 0 : width!.hashCode) +
    (refreshInterval == null ? 0 : refreshInterval!.hashCode) +
    (defaultImage == null ? 0 : defaultImage!.hashCode);

  @override
  String toString() => 'Placement[id=$id, active=$active, valid=$valid, application=$application, name=$name, description=$description, size=$size, clickType=$clickType, height=$height, width=$width, refreshInterval=$refreshInterval, defaultImage=$defaultImage]';

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
    if (this.application != null) {
      json[r'application'] = this.application;
    } else {
      json[r'application'] = null;
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
    if (this.size != null) {
      json[r'size'] = this.size;
    } else {
      json[r'size'] = null;
    }
    if (this.clickType != null) {
      json[r'clickType'] = this.clickType;
    } else {
      json[r'clickType'] = null;
    }
    if (this.height != null) {
      json[r'height'] = this.height;
    } else {
      json[r'height'] = null;
    }
    if (this.width != null) {
      json[r'width'] = this.width;
    } else {
      json[r'width'] = null;
    }
    if (this.refreshInterval != null) {
      json[r'refreshInterval'] = this.refreshInterval;
    } else {
      json[r'refreshInterval'] = null;
    }
    if (this.defaultImage != null) {
      json[r'defaultImage'] = this.defaultImage;
    } else {
      json[r'defaultImage'] = null;
    }
    return json;
  }

  /// Returns a new [Placement] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Placement? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Placement[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Placement[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Placement(
        id: mapValueOfType<int>(json, r'id'),
        active: mapValueOfType<bool>(json, r'active'),
        valid: mapValueOfType<bool>(json, r'valid'),
        application: Application.fromJson(json[r'application']),
        name: mapValueOfType<String>(json, r'name'),
        description: mapValueOfType<String>(json, r'description'),
        size: PlacementSizeEnum.fromJson(json[r'size']),
        clickType: PlacementClickTypeEnum.fromJson(json[r'clickType']),
        height: mapValueOfType<int>(json, r'height'),
        width: mapValueOfType<int>(json, r'width'),
        refreshInterval: mapValueOfType<int>(json, r'refreshInterval'),
        defaultImage: Asset.fromJson(json[r'defaultImage']),
      );
    }
    return null;
  }

  static List<Placement> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Placement>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Placement.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Placement> mapFromJson(dynamic json) {
    final map = <String, Placement>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Placement.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Placement-objects as value to a dart map
  static Map<String, List<Placement>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Placement>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Placement.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}


class PlacementSizeEnum {
  /// Instantiate a new enum with the provided [value].
  const PlacementSizeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const CONFIG = PlacementSizeEnum._(r'CONFIG');
  static const BANNER = PlacementSizeEnum._(r'BANNER');
  static const LEADERBOARD = PlacementSizeEnum._(r'LEADERBOARD');
  static const SKYSCRAPER = PlacementSizeEnum._(r'SKYSCRAPER');
  static const VIDEO = PlacementSizeEnum._(r'VIDEO');
  static const ZIP = PlacementSizeEnum._(r'ZIP');
  static const INTERSTITIAL = PlacementSizeEnum._(r'INTERSTITIAL');
  static const cUSTOM1 = PlacementSizeEnum._(r'CUSTOM1');
  static const cUSTOM2 = PlacementSizeEnum._(r'CUSTOM2');
  static const cUSTOM3 = PlacementSizeEnum._(r'CUSTOM3');
  static const cUSTOM4 = PlacementSizeEnum._(r'CUSTOM4');
  static const cUSTOM5 = PlacementSizeEnum._(r'CUSTOM5');
  static const cUSTOM6 = PlacementSizeEnum._(r'CUSTOM6');
  static const cUSTOM7 = PlacementSizeEnum._(r'CUSTOM7');
  static const cUSTOM8 = PlacementSizeEnum._(r'CUSTOM8');
  static const cUSTOM9 = PlacementSizeEnum._(r'CUSTOM9');
  static const cUSTOM10 = PlacementSizeEnum._(r'CUSTOM10');

  /// List of all possible values in this [enum][PlacementSizeEnum].
  static const values = <PlacementSizeEnum>[
    CONFIG,
    BANNER,
    LEADERBOARD,
    SKYSCRAPER,
    VIDEO,
    ZIP,
    INTERSTITIAL,
    cUSTOM1,
    cUSTOM2,
    cUSTOM3,
    cUSTOM4,
    cUSTOM5,
    cUSTOM6,
    cUSTOM7,
    cUSTOM8,
    cUSTOM9,
    cUSTOM10,
  ];

  static PlacementSizeEnum? fromJson(dynamic value) => PlacementSizeEnumTypeTransformer().decode(value);

  static List<PlacementSizeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PlacementSizeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PlacementSizeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [PlacementSizeEnum] to String,
/// and [decode] dynamic data back to [PlacementSizeEnum].
class PlacementSizeEnumTypeTransformer {
  factory PlacementSizeEnumTypeTransformer() => _instance ??= const PlacementSizeEnumTypeTransformer._();

  const PlacementSizeEnumTypeTransformer._();

  String encode(PlacementSizeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a PlacementSizeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  PlacementSizeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'CONFIG': return PlacementSizeEnum.CONFIG;
        case r'BANNER': return PlacementSizeEnum.BANNER;
        case r'LEADERBOARD': return PlacementSizeEnum.LEADERBOARD;
        case r'SKYSCRAPER': return PlacementSizeEnum.SKYSCRAPER;
        case r'VIDEO': return PlacementSizeEnum.VIDEO;
        case r'ZIP': return PlacementSizeEnum.ZIP;
        case r'INTERSTITIAL': return PlacementSizeEnum.INTERSTITIAL;
        case r'CUSTOM1': return PlacementSizeEnum.cUSTOM1;
        case r'CUSTOM2': return PlacementSizeEnum.cUSTOM2;
        case r'CUSTOM3': return PlacementSizeEnum.cUSTOM3;
        case r'CUSTOM4': return PlacementSizeEnum.cUSTOM4;
        case r'CUSTOM5': return PlacementSizeEnum.cUSTOM5;
        case r'CUSTOM6': return PlacementSizeEnum.cUSTOM6;
        case r'CUSTOM7': return PlacementSizeEnum.cUSTOM7;
        case r'CUSTOM8': return PlacementSizeEnum.cUSTOM8;
        case r'CUSTOM9': return PlacementSizeEnum.cUSTOM9;
        case r'CUSTOM10': return PlacementSizeEnum.cUSTOM10;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [PlacementSizeEnumTypeTransformer] instance.
  static PlacementSizeEnumTypeTransformer? _instance;
}



class PlacementClickTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const PlacementClickTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const CONFIG = PlacementClickTypeEnum._(r'CONFIG');
  static const PURCHASE = PlacementClickTypeEnum._(r'PURCHASE');
  static const BANNER = PlacementClickTypeEnum._(r'BANNER');
  static const LEADERBOARD = PlacementClickTypeEnum._(r'LEADERBOARD');
  static const SKYSCRAPER = PlacementClickTypeEnum._(r'SKYSCRAPER');
  static const VIDEO = PlacementClickTypeEnum._(r'VIDEO');
  static const ZIP = PlacementClickTypeEnum._(r'ZIP');
  static const FULL = PlacementClickTypeEnum._(r'FULL');
  static const cUSTOM1 = PlacementClickTypeEnum._(r'CUSTOM1');
  static const cUSTOM2 = PlacementClickTypeEnum._(r'CUSTOM2');
  static const cUSTOM3 = PlacementClickTypeEnum._(r'CUSTOM3');
  static const cUSTOM4 = PlacementClickTypeEnum._(r'CUSTOM4');
  static const cUSTOM5 = PlacementClickTypeEnum._(r'CUSTOM5');
  static const cUSTOM6 = PlacementClickTypeEnum._(r'CUSTOM6');
  static const cUSTOM7 = PlacementClickTypeEnum._(r'CUSTOM7');
  static const cUSTOM8 = PlacementClickTypeEnum._(r'CUSTOM8');
  static const cUSTOM9 = PlacementClickTypeEnum._(r'CUSTOM9');
  static const cUSTOM10 = PlacementClickTypeEnum._(r'CUSTOM10');

  /// List of all possible values in this [enum][PlacementClickTypeEnum].
  static const values = <PlacementClickTypeEnum>[
    CONFIG,
    PURCHASE,
    BANNER,
    LEADERBOARD,
    SKYSCRAPER,
    VIDEO,
    ZIP,
    FULL,
    cUSTOM1,
    cUSTOM2,
    cUSTOM3,
    cUSTOM4,
    cUSTOM5,
    cUSTOM6,
    cUSTOM7,
    cUSTOM8,
    cUSTOM9,
    cUSTOM10,
  ];

  static PlacementClickTypeEnum? fromJson(dynamic value) => PlacementClickTypeEnumTypeTransformer().decode(value);

  static List<PlacementClickTypeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PlacementClickTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PlacementClickTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [PlacementClickTypeEnum] to String,
/// and [decode] dynamic data back to [PlacementClickTypeEnum].
class PlacementClickTypeEnumTypeTransformer {
  factory PlacementClickTypeEnumTypeTransformer() => _instance ??= const PlacementClickTypeEnumTypeTransformer._();

  const PlacementClickTypeEnumTypeTransformer._();

  String encode(PlacementClickTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a PlacementClickTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  PlacementClickTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'CONFIG': return PlacementClickTypeEnum.CONFIG;
        case r'PURCHASE': return PlacementClickTypeEnum.PURCHASE;
        case r'BANNER': return PlacementClickTypeEnum.BANNER;
        case r'LEADERBOARD': return PlacementClickTypeEnum.LEADERBOARD;
        case r'SKYSCRAPER': return PlacementClickTypeEnum.SKYSCRAPER;
        case r'VIDEO': return PlacementClickTypeEnum.VIDEO;
        case r'ZIP': return PlacementClickTypeEnum.ZIP;
        case r'FULL': return PlacementClickTypeEnum.FULL;
        case r'CUSTOM1': return PlacementClickTypeEnum.cUSTOM1;
        case r'CUSTOM2': return PlacementClickTypeEnum.cUSTOM2;
        case r'CUSTOM3': return PlacementClickTypeEnum.cUSTOM3;
        case r'CUSTOM4': return PlacementClickTypeEnum.cUSTOM4;
        case r'CUSTOM5': return PlacementClickTypeEnum.cUSTOM5;
        case r'CUSTOM6': return PlacementClickTypeEnum.cUSTOM6;
        case r'CUSTOM7': return PlacementClickTypeEnum.cUSTOM7;
        case r'CUSTOM8': return PlacementClickTypeEnum.cUSTOM8;
        case r'CUSTOM9': return PlacementClickTypeEnum.cUSTOM9;
        case r'CUSTOM10': return PlacementClickTypeEnum.cUSTOM10;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [PlacementClickTypeEnumTypeTransformer] instance.
  static PlacementClickTypeEnumTypeTransformer? _instance;
}


