//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class RatingIndexResponse {
  /// Returns a new [RatingIndexResponse] instance.
  RatingIndexResponse({
    this.ratingIndexId,
    this.ratingCount,
    this.ratingAverage,
    this.value,
    this.display,
    this.ratableType,
    this.ratableId,
    this.category,
    this.ratable,
    this.secondaryType,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? ratingIndexId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? ratingCount;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? ratingAverage;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? value;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? display;

  RatingIndexResponseRatableTypeEnum? ratableType;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? ratableId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  CategoryResponse? category;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Object? ratable;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? secondaryType;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RatingIndexResponse &&
    other.ratingIndexId == ratingIndexId &&
    other.ratingCount == ratingCount &&
    other.ratingAverage == ratingAverage &&
    other.value == value &&
    other.display == display &&
    other.ratableType == ratableType &&
    other.ratableId == ratableId &&
    other.category == category &&
    other.ratable == ratable &&
    other.secondaryType == secondaryType;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (ratingIndexId == null ? 0 : ratingIndexId!.hashCode) +
    (ratingCount == null ? 0 : ratingCount!.hashCode) +
    (ratingAverage == null ? 0 : ratingAverage!.hashCode) +
    (value == null ? 0 : value!.hashCode) +
    (display == null ? 0 : display!.hashCode) +
    (ratableType == null ? 0 : ratableType!.hashCode) +
    (ratableId == null ? 0 : ratableId!.hashCode) +
    (category == null ? 0 : category!.hashCode) +
    (ratable == null ? 0 : ratable!.hashCode) +
    (secondaryType == null ? 0 : secondaryType!.hashCode);

  @override
  String toString() => 'RatingIndexResponse[ratingIndexId=$ratingIndexId, ratingCount=$ratingCount, ratingAverage=$ratingAverage, value=$value, display=$display, ratableType=$ratableType, ratableId=$ratableId, category=$category, ratable=$ratable, secondaryType=$secondaryType]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.ratingIndexId != null) {
      json[r'ratingIndexId'] = this.ratingIndexId;
    } else {
      json[r'ratingIndexId'] = null;
    }
    if (this.ratingCount != null) {
      json[r'ratingCount'] = this.ratingCount;
    } else {
      json[r'ratingCount'] = null;
    }
    if (this.ratingAverage != null) {
      json[r'ratingAverage'] = this.ratingAverage;
    } else {
      json[r'ratingAverage'] = null;
    }
    if (this.value != null) {
      json[r'value'] = this.value;
    } else {
      json[r'value'] = null;
    }
    if (this.display != null) {
      json[r'display'] = this.display;
    } else {
      json[r'display'] = null;
    }
    if (this.ratableType != null) {
      json[r'ratableType'] = this.ratableType;
    } else {
      json[r'ratableType'] = null;
    }
    if (this.ratableId != null) {
      json[r'ratableId'] = this.ratableId;
    } else {
      json[r'ratableId'] = null;
    }
    if (this.category != null) {
      json[r'category'] = this.category;
    } else {
      json[r'category'] = null;
    }
    if (this.ratable != null) {
      json[r'ratable'] = this.ratable;
    } else {
      json[r'ratable'] = null;
    }
    if (this.secondaryType != null) {
      json[r'secondaryType'] = this.secondaryType;
    } else {
      json[r'secondaryType'] = null;
    }
    return json;
  }

  /// Returns a new [RatingIndexResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RatingIndexResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "RatingIndexResponse[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "RatingIndexResponse[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return RatingIndexResponse(
        ratingIndexId: mapValueOfType<int>(json, r'ratingIndexId'),
        ratingCount: mapValueOfType<int>(json, r'ratingCount'),
        ratingAverage: mapValueOfType<double>(json, r'ratingAverage'),
        value: mapValueOfType<double>(json, r'value'),
        display: mapValueOfType<String>(json, r'display'),
        ratableType: RatingIndexResponseRatableTypeEnum.fromJson(json[r'ratableType']),
        ratableId: mapValueOfType<int>(json, r'ratableId'),
        category: CategoryResponse.fromJson(json[r'category']),
        ratable: mapValueOfType<Object>(json, r'ratable'),
        secondaryType: mapValueOfType<String>(json, r'secondaryType'),
      );
    }
    return null;
  }

  static List<RatingIndexResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <RatingIndexResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RatingIndexResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, RatingIndexResponse> mapFromJson(dynamic json) {
    final map = <String, RatingIndexResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RatingIndexResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of RatingIndexResponse-objects as value to a dart map
  static Map<String, List<RatingIndexResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<RatingIndexResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = RatingIndexResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}


class RatingIndexResponseRatableTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const RatingIndexResponseRatableTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const LOCATABLE = RatingIndexResponseRatableTypeEnum._(r'LOCATABLE');
  static const RESERVABLE = RatingIndexResponseRatableTypeEnum._(r'RESERVABLE');
  static const PERMISSIONABLE = RatingIndexResponseRatableTypeEnum._(r'PERMISSIONABLE');
  static const NOTABLE = RatingIndexResponseRatableTypeEnum._(r'NOTABLE');
  static const ASSETABLE = RatingIndexResponseRatableTypeEnum._(r'ASSETABLE');
  static const LIKABLE = RatingIndexResponseRatableTypeEnum._(r'LIKABLE');
  static const FLAGABLE = RatingIndexResponseRatableTypeEnum._(r'FLAGABLE');
  static const FAVORITABLE = RatingIndexResponseRatableTypeEnum._(r'FAVORITABLE');
  static const RATABLE = RatingIndexResponseRatableTypeEnum._(r'RATABLE');
  static const ALBUM = RatingIndexResponseRatableTypeEnum._(r'ALBUM');
  static const COLLECTION = RatingIndexResponseRatableTypeEnum._(r'COLLECTION');
  static const APPLICATION = RatingIndexResponseRatableTypeEnum._(r'APPLICATION');
  static const APPLICATION_SETTING = RatingIndexResponseRatableTypeEnum._(r'APPLICATION_SETTING');
  static const APPLICATION_CERT = RatingIndexResponseRatableTypeEnum._(r'APPLICATION_CERT');
  static const APPLICATION_PLACEMENT = RatingIndexResponseRatableTypeEnum._(r'APPLICATION_PLACEMENT');
  static const ACCOUNT = RatingIndexResponseRatableTypeEnum._(r'ACCOUNT');
  static const ACCOUNT_SETTING = RatingIndexResponseRatableTypeEnum._(r'ACCOUNT_SETTING');
  static const GAME_LEVEL = RatingIndexResponseRatableTypeEnum._(r'GAME_LEVEL');
  static const PACK = RatingIndexResponseRatableTypeEnum._(r'PACK');
  static const MISSION = RatingIndexResponseRatableTypeEnum._(r'MISSION');
  static const TOURNAMENT = RatingIndexResponseRatableTypeEnum._(r'TOURNAMENT');
  static const ASSET = RatingIndexResponseRatableTypeEnum._(r'ASSET');
  static const ALBUM_CONTEST = RatingIndexResponseRatableTypeEnum._(r'ALBUM_CONTEST');
  static const THEME_DESCRIPTOR = RatingIndexResponseRatableTypeEnum._(r'THEME_DESCRIPTOR');
  static const OFFER = RatingIndexResponseRatableTypeEnum._(r'OFFER');
  static const OFFER_LOCATION = RatingIndexResponseRatableTypeEnum._(r'OFFER_LOCATION');
  static const EVENT = RatingIndexResponseRatableTypeEnum._(r'EVENT');
  static const RETAILER = RatingIndexResponseRatableTypeEnum._(r'RETAILER');
  static const RETAILER_LOCATION = RatingIndexResponseRatableTypeEnum._(r'RETAILER_LOCATION');
  static const NOTE = RatingIndexResponseRatableTypeEnum._(r'NOTE');
  static const CREATIVE = RatingIndexResponseRatableTypeEnum._(r'CREATIVE');
  static const FAVORITE = RatingIndexResponseRatableTypeEnum._(r'FAVORITE');
  static const LIKE = RatingIndexResponseRatableTypeEnum._(r'LIKE');
  static const RATING = RatingIndexResponseRatableTypeEnum._(r'RATING');
  static const ANALYTIC = RatingIndexResponseRatableTypeEnum._(r'ANALYTIC');
  static const THIRD_PARTY_CREDENTIAL = RatingIndexResponseRatableTypeEnum._(r'THIRD_PARTY_CREDENTIAL');
  static const THIRD_PARTY_NETWORK = RatingIndexResponseRatableTypeEnum._(r'THIRD_PARTY_NETWORK');
  static const REGION = RatingIndexResponseRatableTypeEnum._(r'REGION');

  /// List of all possible values in this [enum][RatingIndexResponseRatableTypeEnum].
  static const values = <RatingIndexResponseRatableTypeEnum>[
    LOCATABLE,
    RESERVABLE,
    PERMISSIONABLE,
    NOTABLE,
    ASSETABLE,
    LIKABLE,
    FLAGABLE,
    FAVORITABLE,
    RATABLE,
    ALBUM,
    COLLECTION,
    APPLICATION,
    APPLICATION_SETTING,
    APPLICATION_CERT,
    APPLICATION_PLACEMENT,
    ACCOUNT,
    ACCOUNT_SETTING,
    GAME_LEVEL,
    PACK,
    MISSION,
    TOURNAMENT,
    ASSET,
    ALBUM_CONTEST,
    THEME_DESCRIPTOR,
    OFFER,
    OFFER_LOCATION,
    EVENT,
    RETAILER,
    RETAILER_LOCATION,
    NOTE,
    CREATIVE,
    FAVORITE,
    LIKE,
    RATING,
    ANALYTIC,
    THIRD_PARTY_CREDENTIAL,
    THIRD_PARTY_NETWORK,
    REGION,
  ];

  static RatingIndexResponseRatableTypeEnum? fromJson(dynamic value) => RatingIndexResponseRatableTypeEnumTypeTransformer().decode(value);

  static List<RatingIndexResponseRatableTypeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <RatingIndexResponseRatableTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RatingIndexResponseRatableTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [RatingIndexResponseRatableTypeEnum] to String,
/// and [decode] dynamic data back to [RatingIndexResponseRatableTypeEnum].
class RatingIndexResponseRatableTypeEnumTypeTransformer {
  factory RatingIndexResponseRatableTypeEnumTypeTransformer() => _instance ??= const RatingIndexResponseRatableTypeEnumTypeTransformer._();

  const RatingIndexResponseRatableTypeEnumTypeTransformer._();

  String encode(RatingIndexResponseRatableTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a RatingIndexResponseRatableTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  RatingIndexResponseRatableTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'LOCATABLE': return RatingIndexResponseRatableTypeEnum.LOCATABLE;
        case r'RESERVABLE': return RatingIndexResponseRatableTypeEnum.RESERVABLE;
        case r'PERMISSIONABLE': return RatingIndexResponseRatableTypeEnum.PERMISSIONABLE;
        case r'NOTABLE': return RatingIndexResponseRatableTypeEnum.NOTABLE;
        case r'ASSETABLE': return RatingIndexResponseRatableTypeEnum.ASSETABLE;
        case r'LIKABLE': return RatingIndexResponseRatableTypeEnum.LIKABLE;
        case r'FLAGABLE': return RatingIndexResponseRatableTypeEnum.FLAGABLE;
        case r'FAVORITABLE': return RatingIndexResponseRatableTypeEnum.FAVORITABLE;
        case r'RATABLE': return RatingIndexResponseRatableTypeEnum.RATABLE;
        case r'ALBUM': return RatingIndexResponseRatableTypeEnum.ALBUM;
        case r'COLLECTION': return RatingIndexResponseRatableTypeEnum.COLLECTION;
        case r'APPLICATION': return RatingIndexResponseRatableTypeEnum.APPLICATION;
        case r'APPLICATION_SETTING': return RatingIndexResponseRatableTypeEnum.APPLICATION_SETTING;
        case r'APPLICATION_CERT': return RatingIndexResponseRatableTypeEnum.APPLICATION_CERT;
        case r'APPLICATION_PLACEMENT': return RatingIndexResponseRatableTypeEnum.APPLICATION_PLACEMENT;
        case r'ACCOUNT': return RatingIndexResponseRatableTypeEnum.ACCOUNT;
        case r'ACCOUNT_SETTING': return RatingIndexResponseRatableTypeEnum.ACCOUNT_SETTING;
        case r'GAME_LEVEL': return RatingIndexResponseRatableTypeEnum.GAME_LEVEL;
        case r'PACK': return RatingIndexResponseRatableTypeEnum.PACK;
        case r'MISSION': return RatingIndexResponseRatableTypeEnum.MISSION;
        case r'TOURNAMENT': return RatingIndexResponseRatableTypeEnum.TOURNAMENT;
        case r'ASSET': return RatingIndexResponseRatableTypeEnum.ASSET;
        case r'ALBUM_CONTEST': return RatingIndexResponseRatableTypeEnum.ALBUM_CONTEST;
        case r'THEME_DESCRIPTOR': return RatingIndexResponseRatableTypeEnum.THEME_DESCRIPTOR;
        case r'OFFER': return RatingIndexResponseRatableTypeEnum.OFFER;
        case r'OFFER_LOCATION': return RatingIndexResponseRatableTypeEnum.OFFER_LOCATION;
        case r'EVENT': return RatingIndexResponseRatableTypeEnum.EVENT;
        case r'RETAILER': return RatingIndexResponseRatableTypeEnum.RETAILER;
        case r'RETAILER_LOCATION': return RatingIndexResponseRatableTypeEnum.RETAILER_LOCATION;
        case r'NOTE': return RatingIndexResponseRatableTypeEnum.NOTE;
        case r'CREATIVE': return RatingIndexResponseRatableTypeEnum.CREATIVE;
        case r'FAVORITE': return RatingIndexResponseRatableTypeEnum.FAVORITE;
        case r'LIKE': return RatingIndexResponseRatableTypeEnum.LIKE;
        case r'RATING': return RatingIndexResponseRatableTypeEnum.RATING;
        case r'ANALYTIC': return RatingIndexResponseRatableTypeEnum.ANALYTIC;
        case r'THIRD_PARTY_CREDENTIAL': return RatingIndexResponseRatableTypeEnum.THIRD_PARTY_CREDENTIAL;
        case r'THIRD_PARTY_NETWORK': return RatingIndexResponseRatableTypeEnum.THIRD_PARTY_NETWORK;
        case r'REGION': return RatingIndexResponseRatableTypeEnum.REGION;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [RatingIndexResponseRatableTypeEnumTypeTransformer] instance.
  static RatingIndexResponseRatableTypeEnumTypeTransformer? _instance;
}


