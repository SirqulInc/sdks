//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class TrilatCacheSample {
  /// Returns a new [TrilatCacheSample] instance.
  TrilatCacheSample({
    this.avatarId,
    this.deviceId,
    this.rssi = const [],
    this.filteredRssi,
    this.time,
    this.networkName,
    this.randomizedId,
    this.deviceSignature,
    this.alternateId,
    this.type,
    this.probeType,
    this.avgRssi,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? avatarId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? deviceId;

  List<int> rssi;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? filteredRssi;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? time;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? networkName;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? randomizedId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? deviceSignature;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? alternateId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? type;

  TrilatCacheSampleProbeTypeEnum? probeType;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? avgRssi;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TrilatCacheSample &&
    other.avatarId == avatarId &&
    other.deviceId == deviceId &&
    _deepEquality.equals(other.rssi, rssi) &&
    other.filteredRssi == filteredRssi &&
    other.time == time &&
    other.networkName == networkName &&
    other.randomizedId == randomizedId &&
    other.deviceSignature == deviceSignature &&
    other.alternateId == alternateId &&
    other.type == type &&
    other.probeType == probeType &&
    other.avgRssi == avgRssi;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (avatarId == null ? 0 : avatarId!.hashCode) +
    (deviceId == null ? 0 : deviceId!.hashCode) +
    (rssi.hashCode) +
    (filteredRssi == null ? 0 : filteredRssi!.hashCode) +
    (time == null ? 0 : time!.hashCode) +
    (networkName == null ? 0 : networkName!.hashCode) +
    (randomizedId == null ? 0 : randomizedId!.hashCode) +
    (deviceSignature == null ? 0 : deviceSignature!.hashCode) +
    (alternateId == null ? 0 : alternateId!.hashCode) +
    (type == null ? 0 : type!.hashCode) +
    (probeType == null ? 0 : probeType!.hashCode) +
    (avgRssi == null ? 0 : avgRssi!.hashCode);

  @override
  String toString() => 'TrilatCacheSample[avatarId=$avatarId, deviceId=$deviceId, rssi=$rssi, filteredRssi=$filteredRssi, time=$time, networkName=$networkName, randomizedId=$randomizedId, deviceSignature=$deviceSignature, alternateId=$alternateId, type=$type, probeType=$probeType, avgRssi=$avgRssi]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.avatarId != null) {
      json[r'avatarId'] = this.avatarId;
    } else {
      json[r'avatarId'] = null;
    }
    if (this.deviceId != null) {
      json[r'deviceId'] = this.deviceId;
    } else {
      json[r'deviceId'] = null;
    }
      json[r'rssi'] = this.rssi;
    if (this.filteredRssi != null) {
      json[r'filteredRssi'] = this.filteredRssi;
    } else {
      json[r'filteredRssi'] = null;
    }
    if (this.time != null) {
      json[r'time'] = this.time;
    } else {
      json[r'time'] = null;
    }
    if (this.networkName != null) {
      json[r'networkName'] = this.networkName;
    } else {
      json[r'networkName'] = null;
    }
    if (this.randomizedId != null) {
      json[r'randomizedId'] = this.randomizedId;
    } else {
      json[r'randomizedId'] = null;
    }
    if (this.deviceSignature != null) {
      json[r'deviceSignature'] = this.deviceSignature;
    } else {
      json[r'deviceSignature'] = null;
    }
    if (this.alternateId != null) {
      json[r'alternateId'] = this.alternateId;
    } else {
      json[r'alternateId'] = null;
    }
    if (this.type != null) {
      json[r'type'] = this.type;
    } else {
      json[r'type'] = null;
    }
    if (this.probeType != null) {
      json[r'probeType'] = this.probeType;
    } else {
      json[r'probeType'] = null;
    }
    if (this.avgRssi != null) {
      json[r'avgRssi'] = this.avgRssi;
    } else {
      json[r'avgRssi'] = null;
    }
    return json;
  }

  /// Returns a new [TrilatCacheSample] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TrilatCacheSample? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "TrilatCacheSample[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "TrilatCacheSample[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return TrilatCacheSample(
        avatarId: mapValueOfType<String>(json, r'avatarId'),
        deviceId: mapValueOfType<String>(json, r'deviceId'),
        rssi: json[r'rssi'] is Iterable
            ? (json[r'rssi'] as Iterable).cast<int>().toList(growable: false)
            : const [],
        filteredRssi: mapValueOfType<double>(json, r'filteredRssi'),
        time: mapValueOfType<int>(json, r'time'),
        networkName: mapValueOfType<String>(json, r'networkName'),
        randomizedId: mapValueOfType<bool>(json, r'randomizedId'),
        deviceSignature: mapValueOfType<String>(json, r'deviceSignature'),
        alternateId: mapValueOfType<String>(json, r'alternateId'),
        type: mapValueOfType<String>(json, r'type'),
        probeType: TrilatCacheSampleProbeTypeEnum.fromJson(json[r'probeType']),
        avgRssi: mapValueOfType<double>(json, r'avgRssi'),
      );
    }
    return null;
  }

  static List<TrilatCacheSample> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TrilatCacheSample>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TrilatCacheSample.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TrilatCacheSample> mapFromJson(dynamic json) {
    final map = <String, TrilatCacheSample>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TrilatCacheSample.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TrilatCacheSample-objects as value to a dart map
  static Map<String, List<TrilatCacheSample>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<TrilatCacheSample>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = TrilatCacheSample.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}


class TrilatCacheSampleProbeTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const TrilatCacheSampleProbeTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const WIFI_PROBE_REQUEST = TrilatCacheSampleProbeTypeEnum._(r'WIFI_PROBE_REQUEST');
  static const IBEACON = TrilatCacheSampleProbeTypeEnum._(r'IBEACON');
  static const BLE = TrilatCacheSampleProbeTypeEnum._(r'BLE');
  static const UNKNOWN = TrilatCacheSampleProbeTypeEnum._(r'UNKNOWN');

  /// List of all possible values in this [enum][TrilatCacheSampleProbeTypeEnum].
  static const values = <TrilatCacheSampleProbeTypeEnum>[
    WIFI_PROBE_REQUEST,
    IBEACON,
    BLE,
    UNKNOWN,
  ];

  static TrilatCacheSampleProbeTypeEnum? fromJson(dynamic value) => TrilatCacheSampleProbeTypeEnumTypeTransformer().decode(value);

  static List<TrilatCacheSampleProbeTypeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TrilatCacheSampleProbeTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TrilatCacheSampleProbeTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [TrilatCacheSampleProbeTypeEnum] to String,
/// and [decode] dynamic data back to [TrilatCacheSampleProbeTypeEnum].
class TrilatCacheSampleProbeTypeEnumTypeTransformer {
  factory TrilatCacheSampleProbeTypeEnumTypeTransformer() => _instance ??= const TrilatCacheSampleProbeTypeEnumTypeTransformer._();

  const TrilatCacheSampleProbeTypeEnumTypeTransformer._();

  String encode(TrilatCacheSampleProbeTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a TrilatCacheSampleProbeTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  TrilatCacheSampleProbeTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'WIFI_PROBE_REQUEST': return TrilatCacheSampleProbeTypeEnum.WIFI_PROBE_REQUEST;
        case r'IBEACON': return TrilatCacheSampleProbeTypeEnum.IBEACON;
        case r'BLE': return TrilatCacheSampleProbeTypeEnum.BLE;
        case r'UNKNOWN': return TrilatCacheSampleProbeTypeEnum.UNKNOWN;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [TrilatCacheSampleProbeTypeEnumTypeTransformer] instance.
  static TrilatCacheSampleProbeTypeEnumTypeTransformer? _instance;
}


