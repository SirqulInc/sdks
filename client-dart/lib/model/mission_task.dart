//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class MissionTask {
  /// Returns a new [MissionTask] instance.
  MissionTask({
    this.id,
    this.active,
    this.valid,
    this.name,
    this.description,
    this.format,
    this.suffix,
    this.taskType,
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

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? format;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? suffix;

  MissionTaskTaskTypeEnum? taskType;

  @override
  bool operator ==(Object other) => identical(this, other) || other is MissionTask &&
    other.id == id &&
    other.active == active &&
    other.valid == valid &&
    other.name == name &&
    other.description == description &&
    other.format == format &&
    other.suffix == suffix &&
    other.taskType == taskType;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (active == null ? 0 : active!.hashCode) +
    (valid == null ? 0 : valid!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (description == null ? 0 : description!.hashCode) +
    (format == null ? 0 : format!.hashCode) +
    (suffix == null ? 0 : suffix!.hashCode) +
    (taskType == null ? 0 : taskType!.hashCode);

  @override
  String toString() => 'MissionTask[id=$id, active=$active, valid=$valid, name=$name, description=$description, format=$format, suffix=$suffix, taskType=$taskType]';

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
    if (this.format != null) {
      json[r'format'] = this.format;
    } else {
      json[r'format'] = null;
    }
    if (this.suffix != null) {
      json[r'suffix'] = this.suffix;
    } else {
      json[r'suffix'] = null;
    }
    if (this.taskType != null) {
      json[r'taskType'] = this.taskType;
    } else {
      json[r'taskType'] = null;
    }
    return json;
  }

  /// Returns a new [MissionTask] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MissionTask? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "MissionTask[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "MissionTask[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MissionTask(
        id: mapValueOfType<int>(json, r'id'),
        active: mapValueOfType<bool>(json, r'active'),
        valid: mapValueOfType<bool>(json, r'valid'),
        name: mapValueOfType<String>(json, r'name'),
        description: mapValueOfType<String>(json, r'description'),
        format: mapValueOfType<String>(json, r'format'),
        suffix: mapValueOfType<String>(json, r'suffix'),
        taskType: MissionTaskTaskTypeEnum.fromJson(json[r'taskType']),
      );
    }
    return null;
  }

  static List<MissionTask> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <MissionTask>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MissionTask.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MissionTask> mapFromJson(dynamic json) {
    final map = <String, MissionTask>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MissionTask.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MissionTask-objects as value to a dart map
  static Map<String, List<MissionTask>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<MissionTask>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = MissionTask.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}


class MissionTaskTaskTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const MissionTaskTaskTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const PHOTO = MissionTaskTaskTypeEnum._(r'PHOTO');
  static const VOTE = MissionTaskTaskTypeEnum._(r'VOTE');
  static const ASK = MissionTaskTaskTypeEnum._(r'ASK');
  static const ANSWER = MissionTaskTaskTypeEnum._(r'ANSWER');
  static const GROUP = MissionTaskTaskTypeEnum._(r'GROUP');
  static const INVITE = MissionTaskTaskTypeEnum._(r'INVITE');
  static const OFFER = MissionTaskTaskTypeEnum._(r'OFFER');
  static const AD = MissionTaskTaskTypeEnum._(r'AD');
  static const CUSTOM = MissionTaskTaskTypeEnum._(r'CUSTOM');
  static const GAME = MissionTaskTaskTypeEnum._(r'GAME');

  /// List of all possible values in this [enum][MissionTaskTaskTypeEnum].
  static const values = <MissionTaskTaskTypeEnum>[
    PHOTO,
    VOTE,
    ASK,
    ANSWER,
    GROUP,
    INVITE,
    OFFER,
    AD,
    CUSTOM,
    GAME,
  ];

  static MissionTaskTaskTypeEnum? fromJson(dynamic value) => MissionTaskTaskTypeEnumTypeTransformer().decode(value);

  static List<MissionTaskTaskTypeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <MissionTaskTaskTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MissionTaskTaskTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [MissionTaskTaskTypeEnum] to String,
/// and [decode] dynamic data back to [MissionTaskTaskTypeEnum].
class MissionTaskTaskTypeEnumTypeTransformer {
  factory MissionTaskTaskTypeEnumTypeTransformer() => _instance ??= const MissionTaskTaskTypeEnumTypeTransformer._();

  const MissionTaskTaskTypeEnumTypeTransformer._();

  String encode(MissionTaskTaskTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a MissionTaskTaskTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  MissionTaskTaskTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'PHOTO': return MissionTaskTaskTypeEnum.PHOTO;
        case r'VOTE': return MissionTaskTaskTypeEnum.VOTE;
        case r'ASK': return MissionTaskTaskTypeEnum.ASK;
        case r'ANSWER': return MissionTaskTaskTypeEnum.ANSWER;
        case r'GROUP': return MissionTaskTaskTypeEnum.GROUP;
        case r'INVITE': return MissionTaskTaskTypeEnum.INVITE;
        case r'OFFER': return MissionTaskTaskTypeEnum.OFFER;
        case r'AD': return MissionTaskTaskTypeEnum.AD;
        case r'CUSTOM': return MissionTaskTaskTypeEnum.CUSTOM;
        case r'GAME': return MissionTaskTaskTypeEnum.GAME;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [MissionTaskTaskTypeEnumTypeTransformer] instance.
  static MissionTaskTaskTypeEnumTypeTransformer? _instance;
}


