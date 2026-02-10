//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Participant {
  /// Returns a new [Participant] instance.
  Participant({
    this.id,
    this.active,
    this.valid,
    this.account,
    this.availableStart,
    this.availableEnd,
    this.color1,
    this.color2,
    this.type,
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
  Account? account;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? availableStart;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? availableEnd;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? color1;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? color2;

  ParticipantTypeEnum? type;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Participant &&
    other.id == id &&
    other.active == active &&
    other.valid == valid &&
    other.account == account &&
    other.availableStart == availableStart &&
    other.availableEnd == availableEnd &&
    other.color1 == color1 &&
    other.color2 == color2 &&
    other.type == type;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (active == null ? 0 : active!.hashCode) +
    (valid == null ? 0 : valid!.hashCode) +
    (account == null ? 0 : account!.hashCode) +
    (availableStart == null ? 0 : availableStart!.hashCode) +
    (availableEnd == null ? 0 : availableEnd!.hashCode) +
    (color1 == null ? 0 : color1!.hashCode) +
    (color2 == null ? 0 : color2!.hashCode) +
    (type == null ? 0 : type!.hashCode);

  @override
  String toString() => 'Participant[id=$id, active=$active, valid=$valid, account=$account, availableStart=$availableStart, availableEnd=$availableEnd, color1=$color1, color2=$color2, type=$type]';

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
    if (this.account != null) {
      json[r'account'] = this.account;
    } else {
      json[r'account'] = null;
    }
    if (this.availableStart != null) {
      json[r'availableStart'] = this.availableStart!.toUtc().toIso8601String();
    } else {
      json[r'availableStart'] = null;
    }
    if (this.availableEnd != null) {
      json[r'availableEnd'] = this.availableEnd!.toUtc().toIso8601String();
    } else {
      json[r'availableEnd'] = null;
    }
    if (this.color1 != null) {
      json[r'color1'] = this.color1;
    } else {
      json[r'color1'] = null;
    }
    if (this.color2 != null) {
      json[r'color2'] = this.color2;
    } else {
      json[r'color2'] = null;
    }
    if (this.type != null) {
      json[r'type'] = this.type;
    } else {
      json[r'type'] = null;
    }
    return json;
  }

  /// Returns a new [Participant] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Participant? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Participant[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Participant[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Participant(
        id: mapValueOfType<int>(json, r'id'),
        active: mapValueOfType<bool>(json, r'active'),
        valid: mapValueOfType<bool>(json, r'valid'),
        account: Account.fromJson(json[r'account']),
        availableStart: mapDateTime(json, r'availableStart', r''),
        availableEnd: mapDateTime(json, r'availableEnd', r''),
        color1: mapValueOfType<String>(json, r'color1'),
        color2: mapValueOfType<String>(json, r'color2'),
        type: ParticipantTypeEnum.fromJson(json[r'type']),
      );
    }
    return null;
  }

  static List<Participant> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Participant>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Participant.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Participant> mapFromJson(dynamic json) {
    final map = <String, Participant>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Participant.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Participant-objects as value to a dart map
  static Map<String, List<Participant>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Participant>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Participant.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}


class ParticipantTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const ParticipantTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const TEAM = ParticipantTypeEnum._(r'TEAM');
  static const LEAGUE = ParticipantTypeEnum._(r'LEAGUE');
  static const SPORT = ParticipantTypeEnum._(r'SPORT');

  /// List of all possible values in this [enum][ParticipantTypeEnum].
  static const values = <ParticipantTypeEnum>[
    TEAM,
    LEAGUE,
    SPORT,
  ];

  static ParticipantTypeEnum? fromJson(dynamic value) => ParticipantTypeEnumTypeTransformer().decode(value);

  static List<ParticipantTypeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ParticipantTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ParticipantTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [ParticipantTypeEnum] to String,
/// and [decode] dynamic data back to [ParticipantTypeEnum].
class ParticipantTypeEnumTypeTransformer {
  factory ParticipantTypeEnumTypeTransformer() => _instance ??= const ParticipantTypeEnumTypeTransformer._();

  const ParticipantTypeEnumTypeTransformer._();

  String encode(ParticipantTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a ParticipantTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ParticipantTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'TEAM': return ParticipantTypeEnum.TEAM;
        case r'LEAGUE': return ParticipantTypeEnum.LEAGUE;
        case r'SPORT': return ParticipantTypeEnum.SPORT;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [ParticipantTypeEnumTypeTransformer] instance.
  static ParticipantTypeEnumTypeTransformer? _instance;
}


