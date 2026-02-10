//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Direction {
  /// Returns a new [Direction] instance.
  Direction({
    this.id,
    this.active,
    this.valid,
    this.distance,
    this.duration,
    this.endLatitude,
    this.endLongitude,
    this.startLatitude,
    this.startLongitude,
    this.instruction,
    this.polyline,
    this.progressStatus,
    this.highlight,
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
  String? distance;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? duration;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? endLatitude;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? endLongitude;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? startLatitude;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? startLongitude;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? instruction;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? polyline;

  DirectionProgressStatusEnum? progressStatus;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? highlight;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Direction &&
    other.id == id &&
    other.active == active &&
    other.valid == valid &&
    other.distance == distance &&
    other.duration == duration &&
    other.endLatitude == endLatitude &&
    other.endLongitude == endLongitude &&
    other.startLatitude == startLatitude &&
    other.startLongitude == startLongitude &&
    other.instruction == instruction &&
    other.polyline == polyline &&
    other.progressStatus == progressStatus &&
    other.highlight == highlight;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (active == null ? 0 : active!.hashCode) +
    (valid == null ? 0 : valid!.hashCode) +
    (distance == null ? 0 : distance!.hashCode) +
    (duration == null ? 0 : duration!.hashCode) +
    (endLatitude == null ? 0 : endLatitude!.hashCode) +
    (endLongitude == null ? 0 : endLongitude!.hashCode) +
    (startLatitude == null ? 0 : startLatitude!.hashCode) +
    (startLongitude == null ? 0 : startLongitude!.hashCode) +
    (instruction == null ? 0 : instruction!.hashCode) +
    (polyline == null ? 0 : polyline!.hashCode) +
    (progressStatus == null ? 0 : progressStatus!.hashCode) +
    (highlight == null ? 0 : highlight!.hashCode);

  @override
  String toString() => 'Direction[id=$id, active=$active, valid=$valid, distance=$distance, duration=$duration, endLatitude=$endLatitude, endLongitude=$endLongitude, startLatitude=$startLatitude, startLongitude=$startLongitude, instruction=$instruction, polyline=$polyline, progressStatus=$progressStatus, highlight=$highlight]';

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
    if (this.distance != null) {
      json[r'distance'] = this.distance;
    } else {
      json[r'distance'] = null;
    }
    if (this.duration != null) {
      json[r'duration'] = this.duration;
    } else {
      json[r'duration'] = null;
    }
    if (this.endLatitude != null) {
      json[r'endLatitude'] = this.endLatitude;
    } else {
      json[r'endLatitude'] = null;
    }
    if (this.endLongitude != null) {
      json[r'endLongitude'] = this.endLongitude;
    } else {
      json[r'endLongitude'] = null;
    }
    if (this.startLatitude != null) {
      json[r'startLatitude'] = this.startLatitude;
    } else {
      json[r'startLatitude'] = null;
    }
    if (this.startLongitude != null) {
      json[r'startLongitude'] = this.startLongitude;
    } else {
      json[r'startLongitude'] = null;
    }
    if (this.instruction != null) {
      json[r'instruction'] = this.instruction;
    } else {
      json[r'instruction'] = null;
    }
    if (this.polyline != null) {
      json[r'polyline'] = this.polyline;
    } else {
      json[r'polyline'] = null;
    }
    if (this.progressStatus != null) {
      json[r'progressStatus'] = this.progressStatus;
    } else {
      json[r'progressStatus'] = null;
    }
    if (this.highlight != null) {
      json[r'highlight'] = this.highlight;
    } else {
      json[r'highlight'] = null;
    }
    return json;
  }

  /// Returns a new [Direction] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Direction? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Direction[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Direction[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Direction(
        id: mapValueOfType<int>(json, r'id'),
        active: mapValueOfType<bool>(json, r'active'),
        valid: mapValueOfType<bool>(json, r'valid'),
        distance: mapValueOfType<String>(json, r'distance'),
        duration: mapValueOfType<String>(json, r'duration'),
        endLatitude: mapValueOfType<double>(json, r'endLatitude'),
        endLongitude: mapValueOfType<double>(json, r'endLongitude'),
        startLatitude: mapValueOfType<double>(json, r'startLatitude'),
        startLongitude: mapValueOfType<double>(json, r'startLongitude'),
        instruction: mapValueOfType<String>(json, r'instruction'),
        polyline: mapValueOfType<String>(json, r'polyline'),
        progressStatus: DirectionProgressStatusEnum.fromJson(json[r'progressStatus']),
        highlight: mapValueOfType<bool>(json, r'highlight'),
      );
    }
    return null;
  }

  static List<Direction> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Direction>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Direction.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Direction> mapFromJson(dynamic json) {
    final map = <String, Direction>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Direction.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Direction-objects as value to a dart map
  static Map<String, List<Direction>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Direction>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Direction.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}


class DirectionProgressStatusEnum {
  /// Instantiate a new enum with the provided [value].
  const DirectionProgressStatusEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const PENDING = DirectionProgressStatusEnum._(r'PENDING');
  static const COMPLETE = DirectionProgressStatusEnum._(r'COMPLETE');
  static const INVALID = DirectionProgressStatusEnum._(r'INVALID');

  /// List of all possible values in this [enum][DirectionProgressStatusEnum].
  static const values = <DirectionProgressStatusEnum>[
    PENDING,
    COMPLETE,
    INVALID,
  ];

  static DirectionProgressStatusEnum? fromJson(dynamic value) => DirectionProgressStatusEnumTypeTransformer().decode(value);

  static List<DirectionProgressStatusEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DirectionProgressStatusEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DirectionProgressStatusEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [DirectionProgressStatusEnum] to String,
/// and [decode] dynamic data back to [DirectionProgressStatusEnum].
class DirectionProgressStatusEnumTypeTransformer {
  factory DirectionProgressStatusEnumTypeTransformer() => _instance ??= const DirectionProgressStatusEnumTypeTransformer._();

  const DirectionProgressStatusEnumTypeTransformer._();

  String encode(DirectionProgressStatusEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a DirectionProgressStatusEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  DirectionProgressStatusEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'PENDING': return DirectionProgressStatusEnum.PENDING;
        case r'COMPLETE': return DirectionProgressStatusEnum.COMPLETE;
        case r'INVALID': return DirectionProgressStatusEnum.INVALID;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [DirectionProgressStatusEnumTypeTransformer] instance.
  static DirectionProgressStatusEnumTypeTransformer? _instance;
}


