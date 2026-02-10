//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class RouteSettings {
  /// Returns a new [RouteSettings] instance.
  RouteSettings({
    this.id,
    this.active,
    this.valid,
    this.name,
    this.description,
    this.setting,
    this.settingType,
    this.program,
    this.hub,
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
  String? setting;

  RouteSettingsSettingTypeEnum? settingType;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Program? program;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  ServiceHub? hub;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RouteSettings &&
    other.id == id &&
    other.active == active &&
    other.valid == valid &&
    other.name == name &&
    other.description == description &&
    other.setting == setting &&
    other.settingType == settingType &&
    other.program == program &&
    other.hub == hub;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (active == null ? 0 : active!.hashCode) +
    (valid == null ? 0 : valid!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (description == null ? 0 : description!.hashCode) +
    (setting == null ? 0 : setting!.hashCode) +
    (settingType == null ? 0 : settingType!.hashCode) +
    (program == null ? 0 : program!.hashCode) +
    (hub == null ? 0 : hub!.hashCode);

  @override
  String toString() => 'RouteSettings[id=$id, active=$active, valid=$valid, name=$name, description=$description, setting=$setting, settingType=$settingType, program=$program, hub=$hub]';

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
    if (this.setting != null) {
      json[r'setting'] = this.setting;
    } else {
      json[r'setting'] = null;
    }
    if (this.settingType != null) {
      json[r'settingType'] = this.settingType;
    } else {
      json[r'settingType'] = null;
    }
    if (this.program != null) {
      json[r'program'] = this.program;
    } else {
      json[r'program'] = null;
    }
    if (this.hub != null) {
      json[r'hub'] = this.hub;
    } else {
      json[r'hub'] = null;
    }
    return json;
  }

  /// Returns a new [RouteSettings] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RouteSettings? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "RouteSettings[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "RouteSettings[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return RouteSettings(
        id: mapValueOfType<int>(json, r'id'),
        active: mapValueOfType<bool>(json, r'active'),
        valid: mapValueOfType<bool>(json, r'valid'),
        name: mapValueOfType<String>(json, r'name'),
        description: mapValueOfType<String>(json, r'description'),
        setting: mapValueOfType<String>(json, r'setting'),
        settingType: RouteSettingsSettingTypeEnum.fromJson(json[r'settingType']),
        program: Program.fromJson(json[r'program']),
        hub: ServiceHub.fromJson(json[r'hub']),
      );
    }
    return null;
  }

  static List<RouteSettings> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <RouteSettings>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RouteSettings.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, RouteSettings> mapFromJson(dynamic json) {
    final map = <String, RouteSettings>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RouteSettings.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of RouteSettings-objects as value to a dart map
  static Map<String, List<RouteSettings>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<RouteSettings>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = RouteSettings.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}


class RouteSettingsSettingTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const RouteSettingsSettingTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const FLOAT = RouteSettingsSettingTypeEnum._(r'FLOAT');
  static const DOUBLE = RouteSettingsSettingTypeEnum._(r'DOUBLE');
  static const INTEGER = RouteSettingsSettingTypeEnum._(r'INTEGER');
  static const LONG = RouteSettingsSettingTypeEnum._(r'LONG');
  static const BOOLEAN = RouteSettingsSettingTypeEnum._(r'BOOLEAN');
  static const STRING = RouteSettingsSettingTypeEnum._(r'STRING');

  /// List of all possible values in this [enum][RouteSettingsSettingTypeEnum].
  static const values = <RouteSettingsSettingTypeEnum>[
    FLOAT,
    DOUBLE,
    INTEGER,
    LONG,
    BOOLEAN,
    STRING,
  ];

  static RouteSettingsSettingTypeEnum? fromJson(dynamic value) => RouteSettingsSettingTypeEnumTypeTransformer().decode(value);

  static List<RouteSettingsSettingTypeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <RouteSettingsSettingTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RouteSettingsSettingTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [RouteSettingsSettingTypeEnum] to String,
/// and [decode] dynamic data back to [RouteSettingsSettingTypeEnum].
class RouteSettingsSettingTypeEnumTypeTransformer {
  factory RouteSettingsSettingTypeEnumTypeTransformer() => _instance ??= const RouteSettingsSettingTypeEnumTypeTransformer._();

  const RouteSettingsSettingTypeEnumTypeTransformer._();

  String encode(RouteSettingsSettingTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a RouteSettingsSettingTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  RouteSettingsSettingTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'FLOAT': return RouteSettingsSettingTypeEnum.FLOAT;
        case r'DOUBLE': return RouteSettingsSettingTypeEnum.DOUBLE;
        case r'INTEGER': return RouteSettingsSettingTypeEnum.INTEGER;
        case r'LONG': return RouteSettingsSettingTypeEnum.LONG;
        case r'BOOLEAN': return RouteSettingsSettingTypeEnum.BOOLEAN;
        case r'STRING': return RouteSettingsSettingTypeEnum.STRING;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [RouteSettingsSettingTypeEnumTypeTransformer] instance.
  static RouteSettingsSettingTypeEnumTypeTransformer? _instance;
}


