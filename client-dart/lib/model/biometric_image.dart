//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class BiometricImage {
  /// Returns a new [BiometricImage] instance.
  BiometricImage({
    this.position,
    this.data,
  });

  BiometricImagePositionEnum? position;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? data;

  @override
  bool operator ==(Object other) => identical(this, other) || other is BiometricImage &&
    other.position == position &&
    other.data == data;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (position == null ? 0 : position!.hashCode) +
    (data == null ? 0 : data!.hashCode);

  @override
  String toString() => 'BiometricImage[position=$position, data=$data]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.position != null) {
      json[r'position'] = this.position;
    } else {
      json[r'position'] = null;
    }
    if (this.data != null) {
      json[r'data'] = this.data;
    } else {
      json[r'data'] = null;
    }
    return json;
  }

  /// Returns a new [BiometricImage] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static BiometricImage? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "BiometricImage[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "BiometricImage[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return BiometricImage(
        position: BiometricImagePositionEnum.fromJson(json[r'position']),
        data: mapValueOfType<String>(json, r'data'),
      );
    }
    return null;
  }

  static List<BiometricImage> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <BiometricImage>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = BiometricImage.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, BiometricImage> mapFromJson(dynamic json) {
    final map = <String, BiometricImage>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = BiometricImage.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of BiometricImage-objects as value to a dart map
  static Map<String, List<BiometricImage>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<BiometricImage>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = BiometricImage.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}


class BiometricImagePositionEnum {
  /// Instantiate a new enum with the provided [value].
  const BiometricImagePositionEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const UNKNOWN = BiometricImagePositionEnum._(r'UNKNOWN');
  static const LEFT_INDEX = BiometricImagePositionEnum._(r'LEFT_INDEX');
  static const LEFT_MIDDLE = BiometricImagePositionEnum._(r'LEFT_MIDDLE');
  static const LEFT_RING = BiometricImagePositionEnum._(r'LEFT_RING');
  static const LEFT_LITTLE = BiometricImagePositionEnum._(r'LEFT_LITTLE');
  static const LEFT_THUMB = BiometricImagePositionEnum._(r'LEFT_THUMB');
  static const RIGHT_INDEX = BiometricImagePositionEnum._(r'RIGHT_INDEX');
  static const RIGHT_MIDDLE = BiometricImagePositionEnum._(r'RIGHT_MIDDLE');
  static const RIGHT_RING = BiometricImagePositionEnum._(r'RIGHT_RING');
  static const RIGHT_LITTLE = BiometricImagePositionEnum._(r'RIGHT_LITTLE');
  static const RIGHT_THUMB = BiometricImagePositionEnum._(r'RIGHT_THUMB');
  static const LEFT = BiometricImagePositionEnum._(r'LEFT');
  static const RIGHT = BiometricImagePositionEnum._(r'RIGHT');

  /// List of all possible values in this [enum][BiometricImagePositionEnum].
  static const values = <BiometricImagePositionEnum>[
    UNKNOWN,
    LEFT_INDEX,
    LEFT_MIDDLE,
    LEFT_RING,
    LEFT_LITTLE,
    LEFT_THUMB,
    RIGHT_INDEX,
    RIGHT_MIDDLE,
    RIGHT_RING,
    RIGHT_LITTLE,
    RIGHT_THUMB,
    LEFT,
    RIGHT,
  ];

  static BiometricImagePositionEnum? fromJson(dynamic value) => BiometricImagePositionEnumTypeTransformer().decode(value);

  static List<BiometricImagePositionEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <BiometricImagePositionEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = BiometricImagePositionEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [BiometricImagePositionEnum] to String,
/// and [decode] dynamic data back to [BiometricImagePositionEnum].
class BiometricImagePositionEnumTypeTransformer {
  factory BiometricImagePositionEnumTypeTransformer() => _instance ??= const BiometricImagePositionEnumTypeTransformer._();

  const BiometricImagePositionEnumTypeTransformer._();

  String encode(BiometricImagePositionEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a BiometricImagePositionEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  BiometricImagePositionEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'UNKNOWN': return BiometricImagePositionEnum.UNKNOWN;
        case r'LEFT_INDEX': return BiometricImagePositionEnum.LEFT_INDEX;
        case r'LEFT_MIDDLE': return BiometricImagePositionEnum.LEFT_MIDDLE;
        case r'LEFT_RING': return BiometricImagePositionEnum.LEFT_RING;
        case r'LEFT_LITTLE': return BiometricImagePositionEnum.LEFT_LITTLE;
        case r'LEFT_THUMB': return BiometricImagePositionEnum.LEFT_THUMB;
        case r'RIGHT_INDEX': return BiometricImagePositionEnum.RIGHT_INDEX;
        case r'RIGHT_MIDDLE': return BiometricImagePositionEnum.RIGHT_MIDDLE;
        case r'RIGHT_RING': return BiometricImagePositionEnum.RIGHT_RING;
        case r'RIGHT_LITTLE': return BiometricImagePositionEnum.RIGHT_LITTLE;
        case r'RIGHT_THUMB': return BiometricImagePositionEnum.RIGHT_THUMB;
        case r'LEFT': return BiometricImagePositionEnum.LEFT;
        case r'RIGHT': return BiometricImagePositionEnum.RIGHT;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [BiometricImagePositionEnumTypeTransformer] instance.
  static BiometricImagePositionEnumTypeTransformer? _instance;
}


