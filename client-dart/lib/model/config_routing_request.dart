//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ConfigRoutingRequest {
  /// Returns a new [ConfigRoutingRequest] instance.
  ConfigRoutingRequest({
    this.debugMode,
    this.threaded,
    this.threadType,
    this.maxRuntime,
    this.numberOfMatches,
    this.maxItineraryTime,
    this.maxStopsPerVehicle,
    this.averageCityTimePerMile,
    this.averageFreewayTimePerMile,
    this.freewayTravelDistance,
    this.sameStopBuffer,
    this.orderAlgorithm,
    this.scoreAlgorithm,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? debugMode;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? threaded;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? threadType;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? maxRuntime;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? numberOfMatches;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? maxItineraryTime;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? maxStopsPerVehicle;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? averageCityTimePerMile;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? averageFreewayTimePerMile;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? freewayTravelDistance;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? sameStopBuffer;

  ConfigRoutingRequestOrderAlgorithmEnum? orderAlgorithm;

  ConfigRoutingRequestScoreAlgorithmEnum? scoreAlgorithm;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ConfigRoutingRequest &&
    other.debugMode == debugMode &&
    other.threaded == threaded &&
    other.threadType == threadType &&
    other.maxRuntime == maxRuntime &&
    other.numberOfMatches == numberOfMatches &&
    other.maxItineraryTime == maxItineraryTime &&
    other.maxStopsPerVehicle == maxStopsPerVehicle &&
    other.averageCityTimePerMile == averageCityTimePerMile &&
    other.averageFreewayTimePerMile == averageFreewayTimePerMile &&
    other.freewayTravelDistance == freewayTravelDistance &&
    other.sameStopBuffer == sameStopBuffer &&
    other.orderAlgorithm == orderAlgorithm &&
    other.scoreAlgorithm == scoreAlgorithm;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (debugMode == null ? 0 : debugMode!.hashCode) +
    (threaded == null ? 0 : threaded!.hashCode) +
    (threadType == null ? 0 : threadType!.hashCode) +
    (maxRuntime == null ? 0 : maxRuntime!.hashCode) +
    (numberOfMatches == null ? 0 : numberOfMatches!.hashCode) +
    (maxItineraryTime == null ? 0 : maxItineraryTime!.hashCode) +
    (maxStopsPerVehicle == null ? 0 : maxStopsPerVehicle!.hashCode) +
    (averageCityTimePerMile == null ? 0 : averageCityTimePerMile!.hashCode) +
    (averageFreewayTimePerMile == null ? 0 : averageFreewayTimePerMile!.hashCode) +
    (freewayTravelDistance == null ? 0 : freewayTravelDistance!.hashCode) +
    (sameStopBuffer == null ? 0 : sameStopBuffer!.hashCode) +
    (orderAlgorithm == null ? 0 : orderAlgorithm!.hashCode) +
    (scoreAlgorithm == null ? 0 : scoreAlgorithm!.hashCode);

  @override
  String toString() => 'ConfigRoutingRequest[debugMode=$debugMode, threaded=$threaded, threadType=$threadType, maxRuntime=$maxRuntime, numberOfMatches=$numberOfMatches, maxItineraryTime=$maxItineraryTime, maxStopsPerVehicle=$maxStopsPerVehicle, averageCityTimePerMile=$averageCityTimePerMile, averageFreewayTimePerMile=$averageFreewayTimePerMile, freewayTravelDistance=$freewayTravelDistance, sameStopBuffer=$sameStopBuffer, orderAlgorithm=$orderAlgorithm, scoreAlgorithm=$scoreAlgorithm]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.debugMode != null) {
      json[r'debugMode'] = this.debugMode;
    } else {
      json[r'debugMode'] = null;
    }
    if (this.threaded != null) {
      json[r'threaded'] = this.threaded;
    } else {
      json[r'threaded'] = null;
    }
    if (this.threadType != null) {
      json[r'threadType'] = this.threadType;
    } else {
      json[r'threadType'] = null;
    }
    if (this.maxRuntime != null) {
      json[r'maxRuntime'] = this.maxRuntime;
    } else {
      json[r'maxRuntime'] = null;
    }
    if (this.numberOfMatches != null) {
      json[r'numberOfMatches'] = this.numberOfMatches;
    } else {
      json[r'numberOfMatches'] = null;
    }
    if (this.maxItineraryTime != null) {
      json[r'maxItineraryTime'] = this.maxItineraryTime;
    } else {
      json[r'maxItineraryTime'] = null;
    }
    if (this.maxStopsPerVehicle != null) {
      json[r'maxStopsPerVehicle'] = this.maxStopsPerVehicle;
    } else {
      json[r'maxStopsPerVehicle'] = null;
    }
    if (this.averageCityTimePerMile != null) {
      json[r'averageCityTimePerMile'] = this.averageCityTimePerMile;
    } else {
      json[r'averageCityTimePerMile'] = null;
    }
    if (this.averageFreewayTimePerMile != null) {
      json[r'averageFreewayTimePerMile'] = this.averageFreewayTimePerMile;
    } else {
      json[r'averageFreewayTimePerMile'] = null;
    }
    if (this.freewayTravelDistance != null) {
      json[r'freewayTravelDistance'] = this.freewayTravelDistance;
    } else {
      json[r'freewayTravelDistance'] = null;
    }
    if (this.sameStopBuffer != null) {
      json[r'sameStopBuffer'] = this.sameStopBuffer;
    } else {
      json[r'sameStopBuffer'] = null;
    }
    if (this.orderAlgorithm != null) {
      json[r'orderAlgorithm'] = this.orderAlgorithm;
    } else {
      json[r'orderAlgorithm'] = null;
    }
    if (this.scoreAlgorithm != null) {
      json[r'scoreAlgorithm'] = this.scoreAlgorithm;
    } else {
      json[r'scoreAlgorithm'] = null;
    }
    return json;
  }

  /// Returns a new [ConfigRoutingRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ConfigRoutingRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ConfigRoutingRequest[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ConfigRoutingRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ConfigRoutingRequest(
        debugMode: mapValueOfType<bool>(json, r'debugMode'),
        threaded: mapValueOfType<bool>(json, r'threaded'),
        threadType: mapValueOfType<String>(json, r'threadType'),
        maxRuntime: mapValueOfType<int>(json, r'maxRuntime'),
        numberOfMatches: mapValueOfType<int>(json, r'numberOfMatches'),
        maxItineraryTime: mapValueOfType<int>(json, r'maxItineraryTime'),
        maxStopsPerVehicle: mapValueOfType<int>(json, r'maxStopsPerVehicle'),
        averageCityTimePerMile: mapValueOfType<int>(json, r'averageCityTimePerMile'),
        averageFreewayTimePerMile: mapValueOfType<int>(json, r'averageFreewayTimePerMile'),
        freewayTravelDistance: mapValueOfType<double>(json, r'freewayTravelDistance'),
        sameStopBuffer: mapValueOfType<double>(json, r'sameStopBuffer'),
        orderAlgorithm: ConfigRoutingRequestOrderAlgorithmEnum.fromJson(json[r'orderAlgorithm']),
        scoreAlgorithm: ConfigRoutingRequestScoreAlgorithmEnum.fromJson(json[r'scoreAlgorithm']),
      );
    }
    return null;
  }

  static List<ConfigRoutingRequest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ConfigRoutingRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ConfigRoutingRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ConfigRoutingRequest> mapFromJson(dynamic json) {
    final map = <String, ConfigRoutingRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ConfigRoutingRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ConfigRoutingRequest-objects as value to a dart map
  static Map<String, List<ConfigRoutingRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ConfigRoutingRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ConfigRoutingRequest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}


class ConfigRoutingRequestOrderAlgorithmEnum {
  /// Instantiate a new enum with the provided [value].
  const ConfigRoutingRequestOrderAlgorithmEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const CLOSEST_FIRST = ConfigRoutingRequestOrderAlgorithmEnum._(r'CLOSEST_FIRST');
  static const FURTHEST_FIRST = ConfigRoutingRequestOrderAlgorithmEnum._(r'FURTHEST_FIRST');
  static const PICKUPS_FIRST = ConfigRoutingRequestOrderAlgorithmEnum._(r'PICKUPS_FIRST');

  /// List of all possible values in this [enum][ConfigRoutingRequestOrderAlgorithmEnum].
  static const values = <ConfigRoutingRequestOrderAlgorithmEnum>[
    CLOSEST_FIRST,
    FURTHEST_FIRST,
    PICKUPS_FIRST,
  ];

  static ConfigRoutingRequestOrderAlgorithmEnum? fromJson(dynamic value) => ConfigRoutingRequestOrderAlgorithmEnumTypeTransformer().decode(value);

  static List<ConfigRoutingRequestOrderAlgorithmEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ConfigRoutingRequestOrderAlgorithmEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ConfigRoutingRequestOrderAlgorithmEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [ConfigRoutingRequestOrderAlgorithmEnum] to String,
/// and [decode] dynamic data back to [ConfigRoutingRequestOrderAlgorithmEnum].
class ConfigRoutingRequestOrderAlgorithmEnumTypeTransformer {
  factory ConfigRoutingRequestOrderAlgorithmEnumTypeTransformer() => _instance ??= const ConfigRoutingRequestOrderAlgorithmEnumTypeTransformer._();

  const ConfigRoutingRequestOrderAlgorithmEnumTypeTransformer._();

  String encode(ConfigRoutingRequestOrderAlgorithmEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a ConfigRoutingRequestOrderAlgorithmEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ConfigRoutingRequestOrderAlgorithmEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'CLOSEST_FIRST': return ConfigRoutingRequestOrderAlgorithmEnum.CLOSEST_FIRST;
        case r'FURTHEST_FIRST': return ConfigRoutingRequestOrderAlgorithmEnum.FURTHEST_FIRST;
        case r'PICKUPS_FIRST': return ConfigRoutingRequestOrderAlgorithmEnum.PICKUPS_FIRST;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [ConfigRoutingRequestOrderAlgorithmEnumTypeTransformer] instance.
  static ConfigRoutingRequestOrderAlgorithmEnumTypeTransformer? _instance;
}



class ConfigRoutingRequestScoreAlgorithmEnum {
  /// Instantiate a new enum with the provided [value].
  const ConfigRoutingRequestScoreAlgorithmEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const FEWEST_VEHICLES = ConfigRoutingRequestScoreAlgorithmEnum._(r'FEWEST_VEHICLES');
  static const SHORTEST_PASSENGER_TIME = ConfigRoutingRequestScoreAlgorithmEnum._(r'SHORTEST_PASSENGER_TIME');

  /// List of all possible values in this [enum][ConfigRoutingRequestScoreAlgorithmEnum].
  static const values = <ConfigRoutingRequestScoreAlgorithmEnum>[
    FEWEST_VEHICLES,
    SHORTEST_PASSENGER_TIME,
  ];

  static ConfigRoutingRequestScoreAlgorithmEnum? fromJson(dynamic value) => ConfigRoutingRequestScoreAlgorithmEnumTypeTransformer().decode(value);

  static List<ConfigRoutingRequestScoreAlgorithmEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ConfigRoutingRequestScoreAlgorithmEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ConfigRoutingRequestScoreAlgorithmEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [ConfigRoutingRequestScoreAlgorithmEnum] to String,
/// and [decode] dynamic data back to [ConfigRoutingRequestScoreAlgorithmEnum].
class ConfigRoutingRequestScoreAlgorithmEnumTypeTransformer {
  factory ConfigRoutingRequestScoreAlgorithmEnumTypeTransformer() => _instance ??= const ConfigRoutingRequestScoreAlgorithmEnumTypeTransformer._();

  const ConfigRoutingRequestScoreAlgorithmEnumTypeTransformer._();

  String encode(ConfigRoutingRequestScoreAlgorithmEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a ConfigRoutingRequestScoreAlgorithmEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ConfigRoutingRequestScoreAlgorithmEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'FEWEST_VEHICLES': return ConfigRoutingRequestScoreAlgorithmEnum.FEWEST_VEHICLES;
        case r'SHORTEST_PASSENGER_TIME': return ConfigRoutingRequestScoreAlgorithmEnum.SHORTEST_PASSENGER_TIME;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [ConfigRoutingRequestScoreAlgorithmEnumTypeTransformer] instance.
  static ConfigRoutingRequestScoreAlgorithmEnumTypeTransformer? _instance;
}


