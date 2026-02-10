//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class PlacementResponse {
  /// Returns a new [PlacementResponse] instance.
  PlacementResponse({
    this.placementId,
    this.name,
    this.description,
    this.size,
    this.height,
    this.width,
    this.refreshInterval,
    this.appName,
    this.appKey,
    this.active,
    this.defaultImage,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? placementId;

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

  PlacementResponseSizeEnum? size;

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
  String? appName;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? appKey;

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
  AssetShortResponse? defaultImage;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PlacementResponse &&
    other.placementId == placementId &&
    other.name == name &&
    other.description == description &&
    other.size == size &&
    other.height == height &&
    other.width == width &&
    other.refreshInterval == refreshInterval &&
    other.appName == appName &&
    other.appKey == appKey &&
    other.active == active &&
    other.defaultImage == defaultImage;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (placementId == null ? 0 : placementId!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (description == null ? 0 : description!.hashCode) +
    (size == null ? 0 : size!.hashCode) +
    (height == null ? 0 : height!.hashCode) +
    (width == null ? 0 : width!.hashCode) +
    (refreshInterval == null ? 0 : refreshInterval!.hashCode) +
    (appName == null ? 0 : appName!.hashCode) +
    (appKey == null ? 0 : appKey!.hashCode) +
    (active == null ? 0 : active!.hashCode) +
    (defaultImage == null ? 0 : defaultImage!.hashCode);

  @override
  String toString() => 'PlacementResponse[placementId=$placementId, name=$name, description=$description, size=$size, height=$height, width=$width, refreshInterval=$refreshInterval, appName=$appName, appKey=$appKey, active=$active, defaultImage=$defaultImage]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.placementId != null) {
      json[r'placementId'] = this.placementId;
    } else {
      json[r'placementId'] = null;
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
    if (this.appName != null) {
      json[r'appName'] = this.appName;
    } else {
      json[r'appName'] = null;
    }
    if (this.appKey != null) {
      json[r'appKey'] = this.appKey;
    } else {
      json[r'appKey'] = null;
    }
    if (this.active != null) {
      json[r'active'] = this.active;
    } else {
      json[r'active'] = null;
    }
    if (this.defaultImage != null) {
      json[r'defaultImage'] = this.defaultImage;
    } else {
      json[r'defaultImage'] = null;
    }
    return json;
  }

  /// Returns a new [PlacementResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PlacementResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "PlacementResponse[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "PlacementResponse[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return PlacementResponse(
        placementId: mapValueOfType<int>(json, r'placementId'),
        name: mapValueOfType<String>(json, r'name'),
        description: mapValueOfType<String>(json, r'description'),
        size: PlacementResponseSizeEnum.fromJson(json[r'size']),
        height: mapValueOfType<int>(json, r'height'),
        width: mapValueOfType<int>(json, r'width'),
        refreshInterval: mapValueOfType<int>(json, r'refreshInterval'),
        appName: mapValueOfType<String>(json, r'appName'),
        appKey: mapValueOfType<String>(json, r'appKey'),
        active: mapValueOfType<bool>(json, r'active'),
        defaultImage: AssetShortResponse.fromJson(json[r'defaultImage']),
      );
    }
    return null;
  }

  static List<PlacementResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PlacementResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PlacementResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PlacementResponse> mapFromJson(dynamic json) {
    final map = <String, PlacementResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PlacementResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PlacementResponse-objects as value to a dart map
  static Map<String, List<PlacementResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<PlacementResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PlacementResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}


class PlacementResponseSizeEnum {
  /// Instantiate a new enum with the provided [value].
  const PlacementResponseSizeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const CONFIG = PlacementResponseSizeEnum._(r'CONFIG');
  static const BANNER = PlacementResponseSizeEnum._(r'BANNER');
  static const LEADERBOARD = PlacementResponseSizeEnum._(r'LEADERBOARD');
  static const SKYSCRAPER = PlacementResponseSizeEnum._(r'SKYSCRAPER');
  static const VIDEO = PlacementResponseSizeEnum._(r'VIDEO');
  static const ZIP = PlacementResponseSizeEnum._(r'ZIP');
  static const INTERSTITIAL = PlacementResponseSizeEnum._(r'INTERSTITIAL');
  static const cUSTOM1 = PlacementResponseSizeEnum._(r'CUSTOM1');
  static const cUSTOM2 = PlacementResponseSizeEnum._(r'CUSTOM2');
  static const cUSTOM3 = PlacementResponseSizeEnum._(r'CUSTOM3');
  static const cUSTOM4 = PlacementResponseSizeEnum._(r'CUSTOM4');
  static const cUSTOM5 = PlacementResponseSizeEnum._(r'CUSTOM5');
  static const cUSTOM6 = PlacementResponseSizeEnum._(r'CUSTOM6');
  static const cUSTOM7 = PlacementResponseSizeEnum._(r'CUSTOM7');
  static const cUSTOM8 = PlacementResponseSizeEnum._(r'CUSTOM8');
  static const cUSTOM9 = PlacementResponseSizeEnum._(r'CUSTOM9');
  static const cUSTOM10 = PlacementResponseSizeEnum._(r'CUSTOM10');

  /// List of all possible values in this [enum][PlacementResponseSizeEnum].
  static const values = <PlacementResponseSizeEnum>[
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

  static PlacementResponseSizeEnum? fromJson(dynamic value) => PlacementResponseSizeEnumTypeTransformer().decode(value);

  static List<PlacementResponseSizeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PlacementResponseSizeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PlacementResponseSizeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [PlacementResponseSizeEnum] to String,
/// and [decode] dynamic data back to [PlacementResponseSizeEnum].
class PlacementResponseSizeEnumTypeTransformer {
  factory PlacementResponseSizeEnumTypeTransformer() => _instance ??= const PlacementResponseSizeEnumTypeTransformer._();

  const PlacementResponseSizeEnumTypeTransformer._();

  String encode(PlacementResponseSizeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a PlacementResponseSizeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  PlacementResponseSizeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'CONFIG': return PlacementResponseSizeEnum.CONFIG;
        case r'BANNER': return PlacementResponseSizeEnum.BANNER;
        case r'LEADERBOARD': return PlacementResponseSizeEnum.LEADERBOARD;
        case r'SKYSCRAPER': return PlacementResponseSizeEnum.SKYSCRAPER;
        case r'VIDEO': return PlacementResponseSizeEnum.VIDEO;
        case r'ZIP': return PlacementResponseSizeEnum.ZIP;
        case r'INTERSTITIAL': return PlacementResponseSizeEnum.INTERSTITIAL;
        case r'CUSTOM1': return PlacementResponseSizeEnum.cUSTOM1;
        case r'CUSTOM2': return PlacementResponseSizeEnum.cUSTOM2;
        case r'CUSTOM3': return PlacementResponseSizeEnum.cUSTOM3;
        case r'CUSTOM4': return PlacementResponseSizeEnum.cUSTOM4;
        case r'CUSTOM5': return PlacementResponseSizeEnum.cUSTOM5;
        case r'CUSTOM6': return PlacementResponseSizeEnum.cUSTOM6;
        case r'CUSTOM7': return PlacementResponseSizeEnum.cUSTOM7;
        case r'CUSTOM8': return PlacementResponseSizeEnum.cUSTOM8;
        case r'CUSTOM9': return PlacementResponseSizeEnum.cUSTOM9;
        case r'CUSTOM10': return PlacementResponseSizeEnum.cUSTOM10;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [PlacementResponseSizeEnumTypeTransformer] instance.
  static PlacementResponseSizeEnumTypeTransformer? _instance;
}


