//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Pack {
  /// Returns a new [Pack] instance.
  Pack({
    this.id,
    this.active,
    this.valid,
    this.newOwnerId,
    this.owner,
    this.application,
    this.sequenceType,
    this.title,
    this.description,
    this.startDate,
    this.endDate,
    this.packType,
    this.image,
    this.background,
    this.imageURL,
    this.gameLevels = const [],
    this.hasMoreItems,
    this.totalCount,
    this.downloaded,
    this.authorOverride,
    this.packOrder,
    this.inGame,
    this.highest,
    this.notificationCount,
    this.points,
    this.ticketType,
    this.ticketCount,
    this.priceType,
    this.price,
    this.allocateTickets,
    this.applicationTitle,
    this.levelNumberMap = const {},
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
  int? newOwnerId;

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
  Application? application;

  PackSequenceTypeEnum? sequenceType;

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
  DateTime? startDate;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? endDate;

  PackPackTypeEnum? packType;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Asset? image;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Asset? background;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? imageURL;

  List<GameLevel> gameLevels;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? hasMoreItems;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? totalCount;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? downloaded;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? authorOverride;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? packOrder;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? inGame;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? highest;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? notificationCount;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? points;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? ticketType;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? ticketCount;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? priceType;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? price;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? allocateTickets;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? applicationTitle;

  Map<String, GameLevel> levelNumberMap;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Pack &&
    other.id == id &&
    other.active == active &&
    other.valid == valid &&
    other.newOwnerId == newOwnerId &&
    other.owner == owner &&
    other.application == application &&
    other.sequenceType == sequenceType &&
    other.title == title &&
    other.description == description &&
    other.startDate == startDate &&
    other.endDate == endDate &&
    other.packType == packType &&
    other.image == image &&
    other.background == background &&
    other.imageURL == imageURL &&
    _deepEquality.equals(other.gameLevels, gameLevels) &&
    other.hasMoreItems == hasMoreItems &&
    other.totalCount == totalCount &&
    other.downloaded == downloaded &&
    other.authorOverride == authorOverride &&
    other.packOrder == packOrder &&
    other.inGame == inGame &&
    other.highest == highest &&
    other.notificationCount == notificationCount &&
    other.points == points &&
    other.ticketType == ticketType &&
    other.ticketCount == ticketCount &&
    other.priceType == priceType &&
    other.price == price &&
    other.allocateTickets == allocateTickets &&
    other.applicationTitle == applicationTitle &&
    _deepEquality.equals(other.levelNumberMap, levelNumberMap);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (active == null ? 0 : active!.hashCode) +
    (valid == null ? 0 : valid!.hashCode) +
    (newOwnerId == null ? 0 : newOwnerId!.hashCode) +
    (owner == null ? 0 : owner!.hashCode) +
    (application == null ? 0 : application!.hashCode) +
    (sequenceType == null ? 0 : sequenceType!.hashCode) +
    (title == null ? 0 : title!.hashCode) +
    (description == null ? 0 : description!.hashCode) +
    (startDate == null ? 0 : startDate!.hashCode) +
    (endDate == null ? 0 : endDate!.hashCode) +
    (packType == null ? 0 : packType!.hashCode) +
    (image == null ? 0 : image!.hashCode) +
    (background == null ? 0 : background!.hashCode) +
    (imageURL == null ? 0 : imageURL!.hashCode) +
    (gameLevels.hashCode) +
    (hasMoreItems == null ? 0 : hasMoreItems!.hashCode) +
    (totalCount == null ? 0 : totalCount!.hashCode) +
    (downloaded == null ? 0 : downloaded!.hashCode) +
    (authorOverride == null ? 0 : authorOverride!.hashCode) +
    (packOrder == null ? 0 : packOrder!.hashCode) +
    (inGame == null ? 0 : inGame!.hashCode) +
    (highest == null ? 0 : highest!.hashCode) +
    (notificationCount == null ? 0 : notificationCount!.hashCode) +
    (points == null ? 0 : points!.hashCode) +
    (ticketType == null ? 0 : ticketType!.hashCode) +
    (ticketCount == null ? 0 : ticketCount!.hashCode) +
    (priceType == null ? 0 : priceType!.hashCode) +
    (price == null ? 0 : price!.hashCode) +
    (allocateTickets == null ? 0 : allocateTickets!.hashCode) +
    (applicationTitle == null ? 0 : applicationTitle!.hashCode) +
    (levelNumberMap.hashCode);

  @override
  String toString() => 'Pack[id=$id, active=$active, valid=$valid, newOwnerId=$newOwnerId, owner=$owner, application=$application, sequenceType=$sequenceType, title=$title, description=$description, startDate=$startDate, endDate=$endDate, packType=$packType, image=$image, background=$background, imageURL=$imageURL, gameLevels=$gameLevels, hasMoreItems=$hasMoreItems, totalCount=$totalCount, downloaded=$downloaded, authorOverride=$authorOverride, packOrder=$packOrder, inGame=$inGame, highest=$highest, notificationCount=$notificationCount, points=$points, ticketType=$ticketType, ticketCount=$ticketCount, priceType=$priceType, price=$price, allocateTickets=$allocateTickets, applicationTitle=$applicationTitle, levelNumberMap=$levelNumberMap]';

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
    if (this.newOwnerId != null) {
      json[r'newOwnerId'] = this.newOwnerId;
    } else {
      json[r'newOwnerId'] = null;
    }
    if (this.owner != null) {
      json[r'owner'] = this.owner;
    } else {
      json[r'owner'] = null;
    }
    if (this.application != null) {
      json[r'application'] = this.application;
    } else {
      json[r'application'] = null;
    }
    if (this.sequenceType != null) {
      json[r'sequenceType'] = this.sequenceType;
    } else {
      json[r'sequenceType'] = null;
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
    if (this.startDate != null) {
      json[r'startDate'] = this.startDate!.toUtc().toIso8601String();
    } else {
      json[r'startDate'] = null;
    }
    if (this.endDate != null) {
      json[r'endDate'] = this.endDate!.toUtc().toIso8601String();
    } else {
      json[r'endDate'] = null;
    }
    if (this.packType != null) {
      json[r'packType'] = this.packType;
    } else {
      json[r'packType'] = null;
    }
    if (this.image != null) {
      json[r'image'] = this.image;
    } else {
      json[r'image'] = null;
    }
    if (this.background != null) {
      json[r'background'] = this.background;
    } else {
      json[r'background'] = null;
    }
    if (this.imageURL != null) {
      json[r'imageURL'] = this.imageURL;
    } else {
      json[r'imageURL'] = null;
    }
      json[r'gameLevels'] = this.gameLevels;
    if (this.hasMoreItems != null) {
      json[r'hasMoreItems'] = this.hasMoreItems;
    } else {
      json[r'hasMoreItems'] = null;
    }
    if (this.totalCount != null) {
      json[r'totalCount'] = this.totalCount;
    } else {
      json[r'totalCount'] = null;
    }
    if (this.downloaded != null) {
      json[r'downloaded'] = this.downloaded;
    } else {
      json[r'downloaded'] = null;
    }
    if (this.authorOverride != null) {
      json[r'authorOverride'] = this.authorOverride;
    } else {
      json[r'authorOverride'] = null;
    }
    if (this.packOrder != null) {
      json[r'packOrder'] = this.packOrder;
    } else {
      json[r'packOrder'] = null;
    }
    if (this.inGame != null) {
      json[r'inGame'] = this.inGame;
    } else {
      json[r'inGame'] = null;
    }
    if (this.highest != null) {
      json[r'highest'] = this.highest;
    } else {
      json[r'highest'] = null;
    }
    if (this.notificationCount != null) {
      json[r'notificationCount'] = this.notificationCount;
    } else {
      json[r'notificationCount'] = null;
    }
    if (this.points != null) {
      json[r'points'] = this.points;
    } else {
      json[r'points'] = null;
    }
    if (this.ticketType != null) {
      json[r'ticketType'] = this.ticketType;
    } else {
      json[r'ticketType'] = null;
    }
    if (this.ticketCount != null) {
      json[r'ticketCount'] = this.ticketCount;
    } else {
      json[r'ticketCount'] = null;
    }
    if (this.priceType != null) {
      json[r'priceType'] = this.priceType;
    } else {
      json[r'priceType'] = null;
    }
    if (this.price != null) {
      json[r'price'] = this.price;
    } else {
      json[r'price'] = null;
    }
    if (this.allocateTickets != null) {
      json[r'allocateTickets'] = this.allocateTickets;
    } else {
      json[r'allocateTickets'] = null;
    }
    if (this.applicationTitle != null) {
      json[r'applicationTitle'] = this.applicationTitle;
    } else {
      json[r'applicationTitle'] = null;
    }
      json[r'levelNumberMap'] = this.levelNumberMap;
    return json;
  }

  /// Returns a new [Pack] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Pack? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Pack[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Pack[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Pack(
        id: mapValueOfType<int>(json, r'id'),
        active: mapValueOfType<bool>(json, r'active'),
        valid: mapValueOfType<bool>(json, r'valid'),
        newOwnerId: mapValueOfType<int>(json, r'newOwnerId'),
        owner: Account.fromJson(json[r'owner']),
        application: Application.fromJson(json[r'application']),
        sequenceType: PackSequenceTypeEnum.fromJson(json[r'sequenceType']),
        title: mapValueOfType<String>(json, r'title'),
        description: mapValueOfType<String>(json, r'description'),
        startDate: mapDateTime(json, r'startDate', r''),
        endDate: mapDateTime(json, r'endDate', r''),
        packType: PackPackTypeEnum.fromJson(json[r'packType']),
        image: Asset.fromJson(json[r'image']),
        background: Asset.fromJson(json[r'background']),
        imageURL: mapValueOfType<String>(json, r'imageURL'),
        gameLevels: GameLevel.listFromJson(json[r'gameLevels']),
        hasMoreItems: mapValueOfType<bool>(json, r'hasMoreItems'),
        totalCount: mapValueOfType<int>(json, r'totalCount'),
        downloaded: mapValueOfType<bool>(json, r'downloaded'),
        authorOverride: mapValueOfType<String>(json, r'authorOverride'),
        packOrder: mapValueOfType<int>(json, r'packOrder'),
        inGame: mapValueOfType<bool>(json, r'inGame'),
        highest: mapValueOfType<bool>(json, r'highest'),
        notificationCount: mapValueOfType<int>(json, r'notificationCount'),
        points: mapValueOfType<int>(json, r'points'),
        ticketType: mapValueOfType<String>(json, r'ticketType'),
        ticketCount: mapValueOfType<int>(json, r'ticketCount'),
        priceType: mapValueOfType<String>(json, r'priceType'),
        price: mapValueOfType<int>(json, r'price'),
        allocateTickets: mapValueOfType<bool>(json, r'allocateTickets'),
        applicationTitle: mapValueOfType<String>(json, r'applicationTitle'),
        levelNumberMap: GameLevel.mapFromJson(json[r'levelNumberMap']),
      );
    }
    return null;
  }

  static List<Pack> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Pack>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Pack.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Pack> mapFromJson(dynamic json) {
    final map = <String, Pack>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Pack.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Pack-objects as value to a dart map
  static Map<String, List<Pack>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Pack>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Pack.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}


class PackSequenceTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const PackSequenceTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const FIRST_AVAILABLE = PackSequenceTypeEnum._(r'FIRST_AVAILABLE');
  static const ALL_AVAILABLE = PackSequenceTypeEnum._(r'ALL_AVAILABLE');

  /// List of all possible values in this [enum][PackSequenceTypeEnum].
  static const values = <PackSequenceTypeEnum>[
    FIRST_AVAILABLE,
    ALL_AVAILABLE,
  ];

  static PackSequenceTypeEnum? fromJson(dynamic value) => PackSequenceTypeEnumTypeTransformer().decode(value);

  static List<PackSequenceTypeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PackSequenceTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PackSequenceTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [PackSequenceTypeEnum] to String,
/// and [decode] dynamic data back to [PackSequenceTypeEnum].
class PackSequenceTypeEnumTypeTransformer {
  factory PackSequenceTypeEnumTypeTransformer() => _instance ??= const PackSequenceTypeEnumTypeTransformer._();

  const PackSequenceTypeEnumTypeTransformer._();

  String encode(PackSequenceTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a PackSequenceTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  PackSequenceTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'FIRST_AVAILABLE': return PackSequenceTypeEnum.FIRST_AVAILABLE;
        case r'ALL_AVAILABLE': return PackSequenceTypeEnum.ALL_AVAILABLE;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [PackSequenceTypeEnumTypeTransformer] instance.
  static PackSequenceTypeEnumTypeTransformer? _instance;
}



class PackPackTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const PackPackTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const TUTORIAL = PackPackTypeEnum._(r'TUTORIAL');
  static const BUILTIN = PackPackTypeEnum._(r'BUILTIN');
  static const DOWNLOAD = PackPackTypeEnum._(r'DOWNLOAD');
  static const THRESHOLD = PackPackTypeEnum._(r'THRESHOLD');
  static const THEME = PackPackTypeEnum._(r'THEME');
  static const TOURNAMENT = PackPackTypeEnum._(r'TOURNAMENT');

  /// List of all possible values in this [enum][PackPackTypeEnum].
  static const values = <PackPackTypeEnum>[
    TUTORIAL,
    BUILTIN,
    DOWNLOAD,
    THRESHOLD,
    THEME,
    TOURNAMENT,
  ];

  static PackPackTypeEnum? fromJson(dynamic value) => PackPackTypeEnumTypeTransformer().decode(value);

  static List<PackPackTypeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PackPackTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PackPackTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [PackPackTypeEnum] to String,
/// and [decode] dynamic data back to [PackPackTypeEnum].
class PackPackTypeEnumTypeTransformer {
  factory PackPackTypeEnumTypeTransformer() => _instance ??= const PackPackTypeEnumTypeTransformer._();

  const PackPackTypeEnumTypeTransformer._();

  String encode(PackPackTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a PackPackTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  PackPackTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'TUTORIAL': return PackPackTypeEnum.TUTORIAL;
        case r'BUILTIN': return PackPackTypeEnum.BUILTIN;
        case r'DOWNLOAD': return PackPackTypeEnum.DOWNLOAD;
        case r'THRESHOLD': return PackPackTypeEnum.THRESHOLD;
        case r'THEME': return PackPackTypeEnum.THEME;
        case r'TOURNAMENT': return PackPackTypeEnum.TOURNAMENT;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [PackPackTypeEnumTypeTransformer] instance.
  static PackPackTypeEnumTypeTransformer? _instance;
}


