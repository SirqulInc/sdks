//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Device {
  /// Returns a new [Device] instance.
  Device({
    this.rebootTimeHour,
    this.rebootTimeMinute,
    this.idleTimeoutInSecond,
    this.serialNumber,
    this.udid,
    this.deviceType,
    this.devicePower,
    this.deviceInterference,
    this.lastHeartbeatSent,
    this.lastDown,
    this.lastUp,
    this.lastNotificationSent,
    this.health,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? rebootTimeHour;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? rebootTimeMinute;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? idleTimeoutInSecond;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? serialNumber;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? udid;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? deviceType;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? devicePower;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? deviceInterference;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? lastHeartbeatSent;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? lastDown;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? lastUp;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? lastNotificationSent;

  DeviceHealthEnum? health;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Device &&
    other.rebootTimeHour == rebootTimeHour &&
    other.rebootTimeMinute == rebootTimeMinute &&
    other.idleTimeoutInSecond == idleTimeoutInSecond &&
    other.serialNumber == serialNumber &&
    other.udid == udid &&
    other.deviceType == deviceType &&
    other.devicePower == devicePower &&
    other.deviceInterference == deviceInterference &&
    other.lastHeartbeatSent == lastHeartbeatSent &&
    other.lastDown == lastDown &&
    other.lastUp == lastUp &&
    other.lastNotificationSent == lastNotificationSent &&
    other.health == health;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (rebootTimeHour == null ? 0 : rebootTimeHour!.hashCode) +
    (rebootTimeMinute == null ? 0 : rebootTimeMinute!.hashCode) +
    (idleTimeoutInSecond == null ? 0 : idleTimeoutInSecond!.hashCode) +
    (serialNumber == null ? 0 : serialNumber!.hashCode) +
    (udid == null ? 0 : udid!.hashCode) +
    (deviceType == null ? 0 : deviceType!.hashCode) +
    (devicePower == null ? 0 : devicePower!.hashCode) +
    (deviceInterference == null ? 0 : deviceInterference!.hashCode) +
    (lastHeartbeatSent == null ? 0 : lastHeartbeatSent!.hashCode) +
    (lastDown == null ? 0 : lastDown!.hashCode) +
    (lastUp == null ? 0 : lastUp!.hashCode) +
    (lastNotificationSent == null ? 0 : lastNotificationSent!.hashCode) +
    (health == null ? 0 : health!.hashCode);

  @override
  String toString() => 'Device[rebootTimeHour=$rebootTimeHour, rebootTimeMinute=$rebootTimeMinute, idleTimeoutInSecond=$idleTimeoutInSecond, serialNumber=$serialNumber, udid=$udid, deviceType=$deviceType, devicePower=$devicePower, deviceInterference=$deviceInterference, lastHeartbeatSent=$lastHeartbeatSent, lastDown=$lastDown, lastUp=$lastUp, lastNotificationSent=$lastNotificationSent, health=$health]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.rebootTimeHour != null) {
      json[r'rebootTimeHour'] = this.rebootTimeHour;
    } else {
      json[r'rebootTimeHour'] = null;
    }
    if (this.rebootTimeMinute != null) {
      json[r'rebootTimeMinute'] = this.rebootTimeMinute;
    } else {
      json[r'rebootTimeMinute'] = null;
    }
    if (this.idleTimeoutInSecond != null) {
      json[r'idleTimeoutInSecond'] = this.idleTimeoutInSecond;
    } else {
      json[r'idleTimeoutInSecond'] = null;
    }
    if (this.serialNumber != null) {
      json[r'serialNumber'] = this.serialNumber;
    } else {
      json[r'serialNumber'] = null;
    }
    if (this.udid != null) {
      json[r'udid'] = this.udid;
    } else {
      json[r'udid'] = null;
    }
    if (this.deviceType != null) {
      json[r'deviceType'] = this.deviceType;
    } else {
      json[r'deviceType'] = null;
    }
    if (this.devicePower != null) {
      json[r'devicePower'] = this.devicePower;
    } else {
      json[r'devicePower'] = null;
    }
    if (this.deviceInterference != null) {
      json[r'deviceInterference'] = this.deviceInterference;
    } else {
      json[r'deviceInterference'] = null;
    }
    if (this.lastHeartbeatSent != null) {
      json[r'lastHeartbeatSent'] = this.lastHeartbeatSent!.toUtc().toIso8601String();
    } else {
      json[r'lastHeartbeatSent'] = null;
    }
    if (this.lastDown != null) {
      json[r'lastDown'] = this.lastDown!.toUtc().toIso8601String();
    } else {
      json[r'lastDown'] = null;
    }
    if (this.lastUp != null) {
      json[r'lastUp'] = this.lastUp!.toUtc().toIso8601String();
    } else {
      json[r'lastUp'] = null;
    }
    if (this.lastNotificationSent != null) {
      json[r'lastNotificationSent'] = this.lastNotificationSent!.toUtc().toIso8601String();
    } else {
      json[r'lastNotificationSent'] = null;
    }
    if (this.health != null) {
      json[r'health'] = this.health;
    } else {
      json[r'health'] = null;
    }
    return json;
  }

  /// Returns a new [Device] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Device? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Device[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Device[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Device(
        rebootTimeHour: mapValueOfType<int>(json, r'rebootTimeHour'),
        rebootTimeMinute: mapValueOfType<int>(json, r'rebootTimeMinute'),
        idleTimeoutInSecond: mapValueOfType<int>(json, r'idleTimeoutInSecond'),
        serialNumber: mapValueOfType<String>(json, r'serialNumber'),
        udid: mapValueOfType<String>(json, r'udid'),
        deviceType: mapValueOfType<String>(json, r'deviceType'),
        devicePower: mapValueOfType<double>(json, r'devicePower'),
        deviceInterference: mapValueOfType<double>(json, r'deviceInterference'),
        lastHeartbeatSent: mapDateTime(json, r'lastHeartbeatSent', r''),
        lastDown: mapDateTime(json, r'lastDown', r''),
        lastUp: mapDateTime(json, r'lastUp', r''),
        lastNotificationSent: mapDateTime(json, r'lastNotificationSent', r''),
        health: DeviceHealthEnum.fromJson(json[r'health']),
      );
    }
    return null;
  }

  static List<Device> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Device>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Device.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Device> mapFromJson(dynamic json) {
    final map = <String, Device>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Device.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Device-objects as value to a dart map
  static Map<String, List<Device>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Device>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Device.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}


class DeviceHealthEnum {
  /// Instantiate a new enum with the provided [value].
  const DeviceHealthEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const RUNNING = DeviceHealthEnum._(r'RUNNING');
  static const WARNING = DeviceHealthEnum._(r'WARNING');
  static const DOWN = DeviceHealthEnum._(r'DOWN');

  /// List of all possible values in this [enum][DeviceHealthEnum].
  static const values = <DeviceHealthEnum>[
    RUNNING,
    WARNING,
    DOWN,
  ];

  static DeviceHealthEnum? fromJson(dynamic value) => DeviceHealthEnumTypeTransformer().decode(value);

  static List<DeviceHealthEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DeviceHealthEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DeviceHealthEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [DeviceHealthEnum] to String,
/// and [decode] dynamic data back to [DeviceHealthEnum].
class DeviceHealthEnumTypeTransformer {
  factory DeviceHealthEnumTypeTransformer() => _instance ??= const DeviceHealthEnumTypeTransformer._();

  const DeviceHealthEnumTypeTransformer._();

  String encode(DeviceHealthEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a DeviceHealthEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  DeviceHealthEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'RUNNING': return DeviceHealthEnum.RUNNING;
        case r'WARNING': return DeviceHealthEnum.WARNING;
        case r'DOWN': return DeviceHealthEnum.DOWN;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [DeviceHealthEnumTypeTransformer] instance.
  static DeviceHealthEnumTypeTransformer? _instance;
}


