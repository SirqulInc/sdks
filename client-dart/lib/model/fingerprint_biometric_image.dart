//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class FingerprintBiometricImage {
  /// Returns a new [FingerprintBiometricImage] instance.
  FingerprintBiometricImage({
    this.position,
    this.data,
    this.imageFormat,
  });

  FingerprintBiometricImagePositionEnum? position;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? data;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? imageFormat;

  @override
  bool operator ==(Object other) => identical(this, other) || other is FingerprintBiometricImage &&
    other.position == position &&
    other.data == data &&
    other.imageFormat == imageFormat;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (position == null ? 0 : position!.hashCode) +
    (data == null ? 0 : data!.hashCode) +
    (imageFormat == null ? 0 : imageFormat!.hashCode);

  @override
  String toString() => 'FingerprintBiometricImage[position=$position, data=$data, imageFormat=$imageFormat]';

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
    if (this.imageFormat != null) {
      json[r'imageFormat'] = this.imageFormat;
    } else {
      json[r'imageFormat'] = null;
    }
    return json;
  }

  /// Returns a new [FingerprintBiometricImage] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static FingerprintBiometricImage? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "FingerprintBiometricImage[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "FingerprintBiometricImage[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return FingerprintBiometricImage(
        position: FingerprintBiometricImagePositionEnum.fromJson(json[r'position']),
        data: mapValueOfType<String>(json, r'data'),
        imageFormat: mapValueOfType<String>(json, r'imageFormat'),
      );
    }
    return null;
  }

  static List<FingerprintBiometricImage> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <FingerprintBiometricImage>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = FingerprintBiometricImage.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, FingerprintBiometricImage> mapFromJson(dynamic json) {
    final map = <String, FingerprintBiometricImage>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = FingerprintBiometricImage.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of FingerprintBiometricImage-objects as value to a dart map
  static Map<String, List<FingerprintBiometricImage>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<FingerprintBiometricImage>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = FingerprintBiometricImage.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}


class FingerprintBiometricImagePositionEnum {
  /// Instantiate a new enum with the provided [value].
  const FingerprintBiometricImagePositionEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const UNKNOWN = FingerprintBiometricImagePositionEnum._(r'UNKNOWN');
  static const LEFT_INDEX = FingerprintBiometricImagePositionEnum._(r'LEFT_INDEX');
  static const LEFT_MIDDLE = FingerprintBiometricImagePositionEnum._(r'LEFT_MIDDLE');
  static const LEFT_RING = FingerprintBiometricImagePositionEnum._(r'LEFT_RING');
  static const LEFT_LITTLE = FingerprintBiometricImagePositionEnum._(r'LEFT_LITTLE');
  static const LEFT_THUMB = FingerprintBiometricImagePositionEnum._(r'LEFT_THUMB');
  static const RIGHT_INDEX = FingerprintBiometricImagePositionEnum._(r'RIGHT_INDEX');
  static const RIGHT_MIDDLE = FingerprintBiometricImagePositionEnum._(r'RIGHT_MIDDLE');
  static const RIGHT_RING = FingerprintBiometricImagePositionEnum._(r'RIGHT_RING');
  static const RIGHT_LITTLE = FingerprintBiometricImagePositionEnum._(r'RIGHT_LITTLE');
  static const RIGHT_THUMB = FingerprintBiometricImagePositionEnum._(r'RIGHT_THUMB');
  static const LEFT = FingerprintBiometricImagePositionEnum._(r'LEFT');
  static const RIGHT = FingerprintBiometricImagePositionEnum._(r'RIGHT');

  /// List of all possible values in this [enum][FingerprintBiometricImagePositionEnum].
  static const values = <FingerprintBiometricImagePositionEnum>[
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

  static FingerprintBiometricImagePositionEnum? fromJson(dynamic value) => FingerprintBiometricImagePositionEnumTypeTransformer().decode(value);

  static List<FingerprintBiometricImagePositionEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <FingerprintBiometricImagePositionEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = FingerprintBiometricImagePositionEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [FingerprintBiometricImagePositionEnum] to String,
/// and [decode] dynamic data back to [FingerprintBiometricImagePositionEnum].
class FingerprintBiometricImagePositionEnumTypeTransformer {
  factory FingerprintBiometricImagePositionEnumTypeTransformer() => _instance ??= const FingerprintBiometricImagePositionEnumTypeTransformer._();

  const FingerprintBiometricImagePositionEnumTypeTransformer._();

  String encode(FingerprintBiometricImagePositionEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a FingerprintBiometricImagePositionEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  FingerprintBiometricImagePositionEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'UNKNOWN': return FingerprintBiometricImagePositionEnum.UNKNOWN;
        case r'LEFT_INDEX': return FingerprintBiometricImagePositionEnum.LEFT_INDEX;
        case r'LEFT_MIDDLE': return FingerprintBiometricImagePositionEnum.LEFT_MIDDLE;
        case r'LEFT_RING': return FingerprintBiometricImagePositionEnum.LEFT_RING;
        case r'LEFT_LITTLE': return FingerprintBiometricImagePositionEnum.LEFT_LITTLE;
        case r'LEFT_THUMB': return FingerprintBiometricImagePositionEnum.LEFT_THUMB;
        case r'RIGHT_INDEX': return FingerprintBiometricImagePositionEnum.RIGHT_INDEX;
        case r'RIGHT_MIDDLE': return FingerprintBiometricImagePositionEnum.RIGHT_MIDDLE;
        case r'RIGHT_RING': return FingerprintBiometricImagePositionEnum.RIGHT_RING;
        case r'RIGHT_LITTLE': return FingerprintBiometricImagePositionEnum.RIGHT_LITTLE;
        case r'RIGHT_THUMB': return FingerprintBiometricImagePositionEnum.RIGHT_THUMB;
        case r'LEFT': return FingerprintBiometricImagePositionEnum.LEFT;
        case r'RIGHT': return FingerprintBiometricImagePositionEnum.RIGHT;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [FingerprintBiometricImagePositionEnumTypeTransformer] instance.
  static FingerprintBiometricImagePositionEnumTypeTransformer? _instance;
}


