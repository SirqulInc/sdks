//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class StopResponse {
  /// Returns a new [StopResponse] instance.
  StopResponse({
    this.geoId,
    this.latitude,
    this.longitude,
    this.startWindow,
    this.endWindow,
    this.type,
    this.eta,
    this.etd,
    this.score,
    this.errorCode,
    this.error,
    this.itemId,
    this.itemSize,
    this.load,
    this.floorPlanPath = const [],
    this.valid,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? geoId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? latitude;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? longitude;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? startWindow;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? endWindow;

  StopResponseTypeEnum? type;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? eta;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? etd;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? score;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? errorCode;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? error;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? itemId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? itemSize;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  LoadShortResponse? load;

  List<NodeRequest> floorPlanPath;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? valid;

  @override
  bool operator ==(Object other) => identical(this, other) || other is StopResponse &&
    other.geoId == geoId &&
    other.latitude == latitude &&
    other.longitude == longitude &&
    other.startWindow == startWindow &&
    other.endWindow == endWindow &&
    other.type == type &&
    other.eta == eta &&
    other.etd == etd &&
    other.score == score &&
    other.errorCode == errorCode &&
    other.error == error &&
    other.itemId == itemId &&
    other.itemSize == itemSize &&
    other.load == load &&
    _deepEquality.equals(other.floorPlanPath, floorPlanPath) &&
    other.valid == valid;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (geoId == null ? 0 : geoId!.hashCode) +
    (latitude == null ? 0 : latitude!.hashCode) +
    (longitude == null ? 0 : longitude!.hashCode) +
    (startWindow == null ? 0 : startWindow!.hashCode) +
    (endWindow == null ? 0 : endWindow!.hashCode) +
    (type == null ? 0 : type!.hashCode) +
    (eta == null ? 0 : eta!.hashCode) +
    (etd == null ? 0 : etd!.hashCode) +
    (score == null ? 0 : score!.hashCode) +
    (errorCode == null ? 0 : errorCode!.hashCode) +
    (error == null ? 0 : error!.hashCode) +
    (itemId == null ? 0 : itemId!.hashCode) +
    (itemSize == null ? 0 : itemSize!.hashCode) +
    (load == null ? 0 : load!.hashCode) +
    (floorPlanPath.hashCode) +
    (valid == null ? 0 : valid!.hashCode);

  @override
  String toString() => 'StopResponse[geoId=$geoId, latitude=$latitude, longitude=$longitude, startWindow=$startWindow, endWindow=$endWindow, type=$type, eta=$eta, etd=$etd, score=$score, errorCode=$errorCode, error=$error, itemId=$itemId, itemSize=$itemSize, load=$load, floorPlanPath=$floorPlanPath, valid=$valid]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.geoId != null) {
      json[r'geoId'] = this.geoId;
    } else {
      json[r'geoId'] = null;
    }
    if (this.latitude != null) {
      json[r'latitude'] = this.latitude;
    } else {
      json[r'latitude'] = null;
    }
    if (this.longitude != null) {
      json[r'longitude'] = this.longitude;
    } else {
      json[r'longitude'] = null;
    }
    if (this.startWindow != null) {
      json[r'startWindow'] = this.startWindow;
    } else {
      json[r'startWindow'] = null;
    }
    if (this.endWindow != null) {
      json[r'endWindow'] = this.endWindow;
    } else {
      json[r'endWindow'] = null;
    }
    if (this.type != null) {
      json[r'type'] = this.type;
    } else {
      json[r'type'] = null;
    }
    if (this.eta != null) {
      json[r'eta'] = this.eta;
    } else {
      json[r'eta'] = null;
    }
    if (this.etd != null) {
      json[r'etd'] = this.etd;
    } else {
      json[r'etd'] = null;
    }
    if (this.score != null) {
      json[r'score'] = this.score;
    } else {
      json[r'score'] = null;
    }
    if (this.errorCode != null) {
      json[r'errorCode'] = this.errorCode;
    } else {
      json[r'errorCode'] = null;
    }
    if (this.error != null) {
      json[r'error'] = this.error;
    } else {
      json[r'error'] = null;
    }
    if (this.itemId != null) {
      json[r'itemId'] = this.itemId;
    } else {
      json[r'itemId'] = null;
    }
    if (this.itemSize != null) {
      json[r'itemSize'] = this.itemSize;
    } else {
      json[r'itemSize'] = null;
    }
    if (this.load != null) {
      json[r'load'] = this.load;
    } else {
      json[r'load'] = null;
    }
      json[r'floorPlanPath'] = this.floorPlanPath;
    if (this.valid != null) {
      json[r'valid'] = this.valid;
    } else {
      json[r'valid'] = null;
    }
    return json;
  }

  /// Returns a new [StopResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static StopResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "StopResponse[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "StopResponse[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return StopResponse(
        geoId: mapValueOfType<String>(json, r'geoId'),
        latitude: mapValueOfType<double>(json, r'latitude'),
        longitude: mapValueOfType<double>(json, r'longitude'),
        startWindow: mapValueOfType<int>(json, r'startWindow'),
        endWindow: mapValueOfType<int>(json, r'endWindow'),
        type: StopResponseTypeEnum.fromJson(json[r'type']),
        eta: mapValueOfType<int>(json, r'eta'),
        etd: mapValueOfType<int>(json, r'etd'),
        score: mapValueOfType<int>(json, r'score'),
        errorCode: mapValueOfType<String>(json, r'errorCode'),
        error: mapValueOfType<String>(json, r'error'),
        itemId: mapValueOfType<String>(json, r'itemId'),
        itemSize: mapValueOfType<int>(json, r'itemSize'),
        load: LoadShortResponse.fromJson(json[r'load']),
        floorPlanPath: NodeRequest.listFromJson(json[r'floorPlanPath']),
        valid: mapValueOfType<bool>(json, r'valid'),
      );
    }
    return null;
  }

  static List<StopResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <StopResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = StopResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, StopResponse> mapFromJson(dynamic json) {
    final map = <String, StopResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = StopResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of StopResponse-objects as value to a dart map
  static Map<String, List<StopResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<StopResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = StopResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}


class StopResponseTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const StopResponseTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const PICKUP = StopResponseTypeEnum._(r'PICKUP');
  static const DROPOFF = StopResponseTypeEnum._(r'DROPOFF');
  static const START = StopResponseTypeEnum._(r'START');
  static const END = StopResponseTypeEnum._(r'END');
  static const ROUTING = StopResponseTypeEnum._(r'ROUTING');

  /// List of all possible values in this [enum][StopResponseTypeEnum].
  static const values = <StopResponseTypeEnum>[
    PICKUP,
    DROPOFF,
    START,
    END,
    ROUTING,
  ];

  static StopResponseTypeEnum? fromJson(dynamic value) => StopResponseTypeEnumTypeTransformer().decode(value);

  static List<StopResponseTypeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <StopResponseTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = StopResponseTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [StopResponseTypeEnum] to String,
/// and [decode] dynamic data back to [StopResponseTypeEnum].
class StopResponseTypeEnumTypeTransformer {
  factory StopResponseTypeEnumTypeTransformer() => _instance ??= const StopResponseTypeEnumTypeTransformer._();

  const StopResponseTypeEnumTypeTransformer._();

  String encode(StopResponseTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a StopResponseTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  StopResponseTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'PICKUP': return StopResponseTypeEnum.PICKUP;
        case r'DROPOFF': return StopResponseTypeEnum.DROPOFF;
        case r'START': return StopResponseTypeEnum.START;
        case r'END': return StopResponseTypeEnum.END;
        case r'ROUTING': return StopResponseTypeEnum.ROUTING;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [StopResponseTypeEnumTypeTransformer] instance.
  static StopResponseTypeEnumTypeTransformer? _instance;
}


