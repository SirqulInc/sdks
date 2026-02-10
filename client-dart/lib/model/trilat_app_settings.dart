//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class TrilatAppSettings {
  /// Returns a new [TrilatAppSettings] instance.
  TrilatAppSettings({
    this.processingType,
    this.maxSampleSize,
    this.minRSSI,
  });

  TrilatAppSettingsProcessingTypeEnum? processingType;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? maxSampleSize;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? minRSSI;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TrilatAppSettings &&
    other.processingType == processingType &&
    other.maxSampleSize == maxSampleSize &&
    other.minRSSI == minRSSI;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (processingType == null ? 0 : processingType!.hashCode) +
    (maxSampleSize == null ? 0 : maxSampleSize!.hashCode) +
    (minRSSI == null ? 0 : minRSSI!.hashCode);

  @override
  String toString() => 'TrilatAppSettings[processingType=$processingType, maxSampleSize=$maxSampleSize, minRSSI=$minRSSI]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.processingType != null) {
      json[r'processingType'] = this.processingType;
    } else {
      json[r'processingType'] = null;
    }
    if (this.maxSampleSize != null) {
      json[r'maxSampleSize'] = this.maxSampleSize;
    } else {
      json[r'maxSampleSize'] = null;
    }
    if (this.minRSSI != null) {
      json[r'minRSSI'] = this.minRSSI;
    } else {
      json[r'minRSSI'] = null;
    }
    return json;
  }

  /// Returns a new [TrilatAppSettings] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TrilatAppSettings? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "TrilatAppSettings[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "TrilatAppSettings[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return TrilatAppSettings(
        processingType: TrilatAppSettingsProcessingTypeEnum.fromJson(json[r'processingType']),
        maxSampleSize: mapValueOfType<int>(json, r'maxSampleSize'),
        minRSSI: mapValueOfType<double>(json, r'minRSSI'),
      );
    }
    return null;
  }

  static List<TrilatAppSettings> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TrilatAppSettings>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TrilatAppSettings.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TrilatAppSettings> mapFromJson(dynamic json) {
    final map = <String, TrilatAppSettings>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TrilatAppSettings.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TrilatAppSettings-objects as value to a dart map
  static Map<String, List<TrilatAppSettings>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<TrilatAppSettings>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = TrilatAppSettings.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}


class TrilatAppSettingsProcessingTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const TrilatAppSettingsProcessingTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const DEFAULT = TrilatAppSettingsProcessingTypeEnum._(r'DEFAULT');
  static const FINGERPRINT = TrilatAppSettingsProcessingTypeEnum._(r'FINGERPRINT');
  static const fINGERPRINTV2 = TrilatAppSettingsProcessingTypeEnum._(r'FINGERPRINT_V2');

  /// List of all possible values in this [enum][TrilatAppSettingsProcessingTypeEnum].
  static const values = <TrilatAppSettingsProcessingTypeEnum>[
    DEFAULT,
    FINGERPRINT,
    fINGERPRINTV2,
  ];

  static TrilatAppSettingsProcessingTypeEnum? fromJson(dynamic value) => TrilatAppSettingsProcessingTypeEnumTypeTransformer().decode(value);

  static List<TrilatAppSettingsProcessingTypeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TrilatAppSettingsProcessingTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TrilatAppSettingsProcessingTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [TrilatAppSettingsProcessingTypeEnum] to String,
/// and [decode] dynamic data back to [TrilatAppSettingsProcessingTypeEnum].
class TrilatAppSettingsProcessingTypeEnumTypeTransformer {
  factory TrilatAppSettingsProcessingTypeEnumTypeTransformer() => _instance ??= const TrilatAppSettingsProcessingTypeEnumTypeTransformer._();

  const TrilatAppSettingsProcessingTypeEnumTypeTransformer._();

  String encode(TrilatAppSettingsProcessingTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a TrilatAppSettingsProcessingTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  TrilatAppSettingsProcessingTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'DEFAULT': return TrilatAppSettingsProcessingTypeEnum.DEFAULT;
        case r'FINGERPRINT': return TrilatAppSettingsProcessingTypeEnum.FINGERPRINT;
        case r'FINGERPRINT_V2': return TrilatAppSettingsProcessingTypeEnum.fINGERPRINTV2;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [TrilatAppSettingsProcessingTypeEnumTypeTransformer] instance.
  static TrilatAppSettingsProcessingTypeEnumTypeTransformer? _instance;
}


