//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Tutorial {
  /// Returns a new [Tutorial] instance.
  Tutorial({
    this.id,
    this.active,
    this.valid,
    this.name,
    this.description,
    this.alignment,
    this.image,
    this.orderIndex,
    this.tutorialObjectType,
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
  String? name;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? description;

  TutorialAlignmentEnum? alignment;

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
  int? orderIndex;

  TutorialTutorialObjectTypeEnum? tutorialObjectType;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Tutorial &&
    other.id == id &&
    other.active == active &&
    other.valid == valid &&
    other.name == name &&
    other.description == description &&
    other.alignment == alignment &&
    other.image == image &&
    other.orderIndex == orderIndex &&
    other.tutorialObjectType == tutorialObjectType;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (active == null ? 0 : active!.hashCode) +
    (valid == null ? 0 : valid!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (description == null ? 0 : description!.hashCode) +
    (alignment == null ? 0 : alignment!.hashCode) +
    (image == null ? 0 : image!.hashCode) +
    (orderIndex == null ? 0 : orderIndex!.hashCode) +
    (tutorialObjectType == null ? 0 : tutorialObjectType!.hashCode);

  @override
  String toString() => 'Tutorial[id=$id, active=$active, valid=$valid, name=$name, description=$description, alignment=$alignment, image=$image, orderIndex=$orderIndex, tutorialObjectType=$tutorialObjectType]';

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
    if (this.alignment != null) {
      json[r'alignment'] = this.alignment;
    } else {
      json[r'alignment'] = null;
    }
    if (this.image != null) {
      json[r'image'] = this.image;
    } else {
      json[r'image'] = null;
    }
    if (this.orderIndex != null) {
      json[r'orderIndex'] = this.orderIndex;
    } else {
      json[r'orderIndex'] = null;
    }
    if (this.tutorialObjectType != null) {
      json[r'tutorialObjectType'] = this.tutorialObjectType;
    } else {
      json[r'tutorialObjectType'] = null;
    }
    return json;
  }

  /// Returns a new [Tutorial] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Tutorial? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Tutorial[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Tutorial[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Tutorial(
        id: mapValueOfType<int>(json, r'id'),
        active: mapValueOfType<bool>(json, r'active'),
        valid: mapValueOfType<bool>(json, r'valid'),
        name: mapValueOfType<String>(json, r'name'),
        description: mapValueOfType<String>(json, r'description'),
        alignment: TutorialAlignmentEnum.fromJson(json[r'alignment']),
        image: Asset.fromJson(json[r'image']),
        orderIndex: mapValueOfType<int>(json, r'orderIndex'),
        tutorialObjectType: TutorialTutorialObjectTypeEnum.fromJson(json[r'tutorialObjectType']),
      );
    }
    return null;
  }

  static List<Tutorial> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Tutorial>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Tutorial.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Tutorial> mapFromJson(dynamic json) {
    final map = <String, Tutorial>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Tutorial.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Tutorial-objects as value to a dart map
  static Map<String, List<Tutorial>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Tutorial>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Tutorial.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}


class TutorialAlignmentEnum {
  /// Instantiate a new enum with the provided [value].
  const TutorialAlignmentEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const NONE = TutorialAlignmentEnum._(r'NONE');
  static const IMAGE_ABOVE = TutorialAlignmentEnum._(r'IMAGE_ABOVE');
  static const IMAGE_BELOW = TutorialAlignmentEnum._(r'IMAGE_BELOW');
  static const IMAGE_LEFT = TutorialAlignmentEnum._(r'IMAGE_LEFT');
  static const IMAGE_RIGHT = TutorialAlignmentEnum._(r'IMAGE_RIGHT');
  static const IMAGE_ONLY = TutorialAlignmentEnum._(r'IMAGE_ONLY');
  static const TEXT_ONLY = TutorialAlignmentEnum._(r'TEXT_ONLY');

  /// List of all possible values in this [enum][TutorialAlignmentEnum].
  static const values = <TutorialAlignmentEnum>[
    NONE,
    IMAGE_ABOVE,
    IMAGE_BELOW,
    IMAGE_LEFT,
    IMAGE_RIGHT,
    IMAGE_ONLY,
    TEXT_ONLY,
  ];

  static TutorialAlignmentEnum? fromJson(dynamic value) => TutorialAlignmentEnumTypeTransformer().decode(value);

  static List<TutorialAlignmentEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TutorialAlignmentEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TutorialAlignmentEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [TutorialAlignmentEnum] to String,
/// and [decode] dynamic data back to [TutorialAlignmentEnum].
class TutorialAlignmentEnumTypeTransformer {
  factory TutorialAlignmentEnumTypeTransformer() => _instance ??= const TutorialAlignmentEnumTypeTransformer._();

  const TutorialAlignmentEnumTypeTransformer._();

  String encode(TutorialAlignmentEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a TutorialAlignmentEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  TutorialAlignmentEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'NONE': return TutorialAlignmentEnum.NONE;
        case r'IMAGE_ABOVE': return TutorialAlignmentEnum.IMAGE_ABOVE;
        case r'IMAGE_BELOW': return TutorialAlignmentEnum.IMAGE_BELOW;
        case r'IMAGE_LEFT': return TutorialAlignmentEnum.IMAGE_LEFT;
        case r'IMAGE_RIGHT': return TutorialAlignmentEnum.IMAGE_RIGHT;
        case r'IMAGE_ONLY': return TutorialAlignmentEnum.IMAGE_ONLY;
        case r'TEXT_ONLY': return TutorialAlignmentEnum.TEXT_ONLY;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [TutorialAlignmentEnumTypeTransformer] instance.
  static TutorialAlignmentEnumTypeTransformer? _instance;
}



class TutorialTutorialObjectTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const TutorialTutorialObjectTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const GAME_OBJECT = TutorialTutorialObjectTypeEnum._(r'GAME_OBJECT');
  static const GAME_LEVEL = TutorialTutorialObjectTypeEnum._(r'GAME_LEVEL');
  static const PACK = TutorialTutorialObjectTypeEnum._(r'PACK');
  static const GAME = TutorialTutorialObjectTypeEnum._(r'GAME');
  static const MISSION = TutorialTutorialObjectTypeEnum._(r'MISSION');
  static const PROFILE = TutorialTutorialObjectTypeEnum._(r'PROFILE');
  static const APPLICATION = TutorialTutorialObjectTypeEnum._(r'APPLICATION');
  static const TICKETS = TutorialTutorialObjectTypeEnum._(r'TICKETS');
  static const ASSET = TutorialTutorialObjectTypeEnum._(r'ASSET');
  static const CUSTOM = TutorialTutorialObjectTypeEnum._(r'CUSTOM');

  /// List of all possible values in this [enum][TutorialTutorialObjectTypeEnum].
  static const values = <TutorialTutorialObjectTypeEnum>[
    GAME_OBJECT,
    GAME_LEVEL,
    PACK,
    GAME,
    MISSION,
    PROFILE,
    APPLICATION,
    TICKETS,
    ASSET,
    CUSTOM,
  ];

  static TutorialTutorialObjectTypeEnum? fromJson(dynamic value) => TutorialTutorialObjectTypeEnumTypeTransformer().decode(value);

  static List<TutorialTutorialObjectTypeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TutorialTutorialObjectTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TutorialTutorialObjectTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [TutorialTutorialObjectTypeEnum] to String,
/// and [decode] dynamic data back to [TutorialTutorialObjectTypeEnum].
class TutorialTutorialObjectTypeEnumTypeTransformer {
  factory TutorialTutorialObjectTypeEnumTypeTransformer() => _instance ??= const TutorialTutorialObjectTypeEnumTypeTransformer._();

  const TutorialTutorialObjectTypeEnumTypeTransformer._();

  String encode(TutorialTutorialObjectTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a TutorialTutorialObjectTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  TutorialTutorialObjectTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'GAME_OBJECT': return TutorialTutorialObjectTypeEnum.GAME_OBJECT;
        case r'GAME_LEVEL': return TutorialTutorialObjectTypeEnum.GAME_LEVEL;
        case r'PACK': return TutorialTutorialObjectTypeEnum.PACK;
        case r'GAME': return TutorialTutorialObjectTypeEnum.GAME;
        case r'MISSION': return TutorialTutorialObjectTypeEnum.MISSION;
        case r'PROFILE': return TutorialTutorialObjectTypeEnum.PROFILE;
        case r'APPLICATION': return TutorialTutorialObjectTypeEnum.APPLICATION;
        case r'TICKETS': return TutorialTutorialObjectTypeEnum.TICKETS;
        case r'ASSET': return TutorialTutorialObjectTypeEnum.ASSET;
        case r'CUSTOM': return TutorialTutorialObjectTypeEnum.CUSTOM;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [TutorialTutorialObjectTypeEnumTypeTransformer] instance.
  static TutorialTutorialObjectTypeEnumTypeTransformer? _instance;
}


