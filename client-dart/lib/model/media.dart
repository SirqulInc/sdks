//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Media {
  /// Returns a new [Media] instance.
  Media({
    this.mediaType,
    this.condition,
    this.isbn,
    this.asin,
    this.catalogNumbers = const [],
    this.duration,
    this.author,
    this.releaseDate,
    this.availabilityDate,
    this.parentalRating,
    this.collections = const [],
    this.collectionCount,
  });

  MediaMediaTypeEnum? mediaType;

  MediaConditionEnum? condition;

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
  int? duration;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? author;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? releaseDate;

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
  String? parentalRating;

  List<Album> collections;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? collectionCount;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Media &&
    other.mediaType == mediaType &&
    other.condition == condition &&
    other.isbn == isbn &&
    other.asin == asin &&
    _deepEquality.equals(other.catalogNumbers, catalogNumbers) &&
    other.duration == duration &&
    other.author == author &&
    other.releaseDate == releaseDate &&
    other.availabilityDate == availabilityDate &&
    other.parentalRating == parentalRating &&
    _deepEquality.equals(other.collections, collections) &&
    other.collectionCount == collectionCount;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (mediaType == null ? 0 : mediaType!.hashCode) +
    (condition == null ? 0 : condition!.hashCode) +
    (isbn == null ? 0 : isbn!.hashCode) +
    (asin == null ? 0 : asin!.hashCode) +
    (catalogNumbers.hashCode) +
    (duration == null ? 0 : duration!.hashCode) +
    (author == null ? 0 : author!.hashCode) +
    (releaseDate == null ? 0 : releaseDate!.hashCode) +
    (availabilityDate == null ? 0 : availabilityDate!.hashCode) +
    (parentalRating == null ? 0 : parentalRating!.hashCode) +
    (collections.hashCode) +
    (collectionCount == null ? 0 : collectionCount!.hashCode);

  @override
  String toString() => 'Media[mediaType=$mediaType, condition=$condition, isbn=$isbn, asin=$asin, catalogNumbers=$catalogNumbers, duration=$duration, author=$author, releaseDate=$releaseDate, availabilityDate=$availabilityDate, parentalRating=$parentalRating, collections=$collections, collectionCount=$collectionCount]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.mediaType != null) {
      json[r'mediaType'] = this.mediaType;
    } else {
      json[r'mediaType'] = null;
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
    if (this.duration != null) {
      json[r'duration'] = this.duration;
    } else {
      json[r'duration'] = null;
    }
    if (this.author != null) {
      json[r'author'] = this.author;
    } else {
      json[r'author'] = null;
    }
    if (this.releaseDate != null) {
      json[r'releaseDate'] = this.releaseDate;
    } else {
      json[r'releaseDate'] = null;
    }
    if (this.availabilityDate != null) {
      json[r'availabilityDate'] = this.availabilityDate;
    } else {
      json[r'availabilityDate'] = null;
    }
    if (this.parentalRating != null) {
      json[r'parentalRating'] = this.parentalRating;
    } else {
      json[r'parentalRating'] = null;
    }
      json[r'collections'] = this.collections;
    if (this.collectionCount != null) {
      json[r'collectionCount'] = this.collectionCount;
    } else {
      json[r'collectionCount'] = null;
    }
    return json;
  }

  /// Returns a new [Media] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Media? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Media[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Media[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Media(
        mediaType: MediaMediaTypeEnum.fromJson(json[r'mediaType']),
        condition: MediaConditionEnum.fromJson(json[r'condition']),
        isbn: mapValueOfType<String>(json, r'isbn'),
        asin: mapValueOfType<String>(json, r'asin'),
        catalogNumbers: json[r'catalogNumbers'] is Iterable
            ? (json[r'catalogNumbers'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        duration: mapValueOfType<int>(json, r'duration'),
        author: mapValueOfType<String>(json, r'author'),
        releaseDate: mapValueOfType<int>(json, r'releaseDate'),
        availabilityDate: mapValueOfType<int>(json, r'availabilityDate'),
        parentalRating: mapValueOfType<String>(json, r'parentalRating'),
        collections: Album.listFromJson(json[r'collections']),
        collectionCount: mapValueOfType<int>(json, r'collectionCount'),
      );
    }
    return null;
  }

  static List<Media> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Media>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Media.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Media> mapFromJson(dynamic json) {
    final map = <String, Media>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Media.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Media-objects as value to a dart map
  static Map<String, List<Media>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Media>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Media.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}


class MediaMediaTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const MediaMediaTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const APK = MediaMediaTypeEnum._(r'APK');
  static const APPLICATION = MediaMediaTypeEnum._(r'APPLICATION');
  static const IMAGE = MediaMediaTypeEnum._(r'IMAGE');
  static const AUDIO = MediaMediaTypeEnum._(r'AUDIO');
  static const VIDEO = MediaMediaTypeEnum._(r'VIDEO');
  static const MULTIPART = MediaMediaTypeEnum._(r'MULTIPART');
  static const BAR_CODE = MediaMediaTypeEnum._(r'BAR_CODE');
  static const TEXT = MediaMediaTypeEnum._(r'TEXT');
  static const OTHER = MediaMediaTypeEnum._(r'OTHER');

  /// List of all possible values in this [enum][MediaMediaTypeEnum].
  static const values = <MediaMediaTypeEnum>[
    APK,
    APPLICATION,
    IMAGE,
    AUDIO,
    VIDEO,
    MULTIPART,
    BAR_CODE,
    TEXT,
    OTHER,
  ];

  static MediaMediaTypeEnum? fromJson(dynamic value) => MediaMediaTypeEnumTypeTransformer().decode(value);

  static List<MediaMediaTypeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <MediaMediaTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MediaMediaTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [MediaMediaTypeEnum] to String,
/// and [decode] dynamic data back to [MediaMediaTypeEnum].
class MediaMediaTypeEnumTypeTransformer {
  factory MediaMediaTypeEnumTypeTransformer() => _instance ??= const MediaMediaTypeEnumTypeTransformer._();

  const MediaMediaTypeEnumTypeTransformer._();

  String encode(MediaMediaTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a MediaMediaTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  MediaMediaTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'APK': return MediaMediaTypeEnum.APK;
        case r'APPLICATION': return MediaMediaTypeEnum.APPLICATION;
        case r'IMAGE': return MediaMediaTypeEnum.IMAGE;
        case r'AUDIO': return MediaMediaTypeEnum.AUDIO;
        case r'VIDEO': return MediaMediaTypeEnum.VIDEO;
        case r'MULTIPART': return MediaMediaTypeEnum.MULTIPART;
        case r'BAR_CODE': return MediaMediaTypeEnum.BAR_CODE;
        case r'TEXT': return MediaMediaTypeEnum.TEXT;
        case r'OTHER': return MediaMediaTypeEnum.OTHER;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [MediaMediaTypeEnumTypeTransformer] instance.
  static MediaMediaTypeEnumTypeTransformer? _instance;
}



class MediaConditionEnum {
  /// Instantiate a new enum with the provided [value].
  const MediaConditionEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const NEW = MediaConditionEnum._(r'NEW');
  static const USED = MediaConditionEnum._(r'USED');
  static const REFURBISHED = MediaConditionEnum._(r'REFURBISHED');
  static const OTHER = MediaConditionEnum._(r'OTHER');

  /// List of all possible values in this [enum][MediaConditionEnum].
  static const values = <MediaConditionEnum>[
    NEW,
    USED,
    REFURBISHED,
    OTHER,
  ];

  static MediaConditionEnum? fromJson(dynamic value) => MediaConditionEnumTypeTransformer().decode(value);

  static List<MediaConditionEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <MediaConditionEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MediaConditionEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [MediaConditionEnum] to String,
/// and [decode] dynamic data back to [MediaConditionEnum].
class MediaConditionEnumTypeTransformer {
  factory MediaConditionEnumTypeTransformer() => _instance ??= const MediaConditionEnumTypeTransformer._();

  const MediaConditionEnumTypeTransformer._();

  String encode(MediaConditionEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a MediaConditionEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  MediaConditionEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'NEW': return MediaConditionEnum.NEW;
        case r'USED': return MediaConditionEnum.USED;
        case r'REFURBISHED': return MediaConditionEnum.REFURBISHED;
        case r'OTHER': return MediaConditionEnum.OTHER;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [MediaConditionEnumTypeTransformer] instance.
  static MediaConditionEnumTypeTransformer? _instance;
}


