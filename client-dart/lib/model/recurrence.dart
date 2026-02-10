//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Recurrence {
  /// Returns a new [Recurrence] instance.
  Recurrence({
    this.frequency,
    this.daysOfWeek = const [],
    this.start,
    this.count,
    this.until,
  });

  RecurrenceFrequencyEnum? frequency;

  List<int> daysOfWeek;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? start;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? count;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? until;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Recurrence &&
    other.frequency == frequency &&
    _deepEquality.equals(other.daysOfWeek, daysOfWeek) &&
    other.start == start &&
    other.count == count &&
    other.until == until;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (frequency == null ? 0 : frequency!.hashCode) +
    (daysOfWeek.hashCode) +
    (start == null ? 0 : start!.hashCode) +
    (count == null ? 0 : count!.hashCode) +
    (until == null ? 0 : until!.hashCode);

  @override
  String toString() => 'Recurrence[frequency=$frequency, daysOfWeek=$daysOfWeek, start=$start, count=$count, until=$until]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.frequency != null) {
      json[r'frequency'] = this.frequency;
    } else {
      json[r'frequency'] = null;
    }
      json[r'daysOfWeek'] = this.daysOfWeek;
    if (this.start != null) {
      json[r'start'] = _dateFormatter.format(this.start!.toUtc());
    } else {
      json[r'start'] = null;
    }
    if (this.count != null) {
      json[r'count'] = this.count;
    } else {
      json[r'count'] = null;
    }
    if (this.until != null) {
      json[r'until'] = _dateFormatter.format(this.until!.toUtc());
    } else {
      json[r'until'] = null;
    }
    return json;
  }

  /// Returns a new [Recurrence] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Recurrence? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Recurrence[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Recurrence[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Recurrence(
        frequency: RecurrenceFrequencyEnum.fromJson(json[r'frequency']),
        daysOfWeek: json[r'daysOfWeek'] is Iterable
            ? (json[r'daysOfWeek'] as Iterable).cast<int>().toList(growable: false)
            : const [],
        start: mapDateTime(json, r'start', r''),
        count: mapValueOfType<int>(json, r'count'),
        until: mapDateTime(json, r'until', r''),
      );
    }
    return null;
  }

  static List<Recurrence> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Recurrence>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Recurrence.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Recurrence> mapFromJson(dynamic json) {
    final map = <String, Recurrence>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Recurrence.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Recurrence-objects as value to a dart map
  static Map<String, List<Recurrence>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Recurrence>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Recurrence.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}


class RecurrenceFrequencyEnum {
  /// Instantiate a new enum with the provided [value].
  const RecurrenceFrequencyEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const DAILY = RecurrenceFrequencyEnum._(r'DAILY');
  static const WEEKLY = RecurrenceFrequencyEnum._(r'WEEKLY');
  static const MONTHLY = RecurrenceFrequencyEnum._(r'MONTHLY');
  static const ANNUALLY = RecurrenceFrequencyEnum._(r'ANNUALLY');
  static const WEEK_DAY_ONLY = RecurrenceFrequencyEnum._(r'WEEK_DAY_ONLY');

  /// List of all possible values in this [enum][RecurrenceFrequencyEnum].
  static const values = <RecurrenceFrequencyEnum>[
    DAILY,
    WEEKLY,
    MONTHLY,
    ANNUALLY,
    WEEK_DAY_ONLY,
  ];

  static RecurrenceFrequencyEnum? fromJson(dynamic value) => RecurrenceFrequencyEnumTypeTransformer().decode(value);

  static List<RecurrenceFrequencyEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <RecurrenceFrequencyEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RecurrenceFrequencyEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [RecurrenceFrequencyEnum] to String,
/// and [decode] dynamic data back to [RecurrenceFrequencyEnum].
class RecurrenceFrequencyEnumTypeTransformer {
  factory RecurrenceFrequencyEnumTypeTransformer() => _instance ??= const RecurrenceFrequencyEnumTypeTransformer._();

  const RecurrenceFrequencyEnumTypeTransformer._();

  String encode(RecurrenceFrequencyEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a RecurrenceFrequencyEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  RecurrenceFrequencyEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'DAILY': return RecurrenceFrequencyEnum.DAILY;
        case r'WEEKLY': return RecurrenceFrequencyEnum.WEEKLY;
        case r'MONTHLY': return RecurrenceFrequencyEnum.MONTHLY;
        case r'ANNUALLY': return RecurrenceFrequencyEnum.ANNUALLY;
        case r'WEEK_DAY_ONLY': return RecurrenceFrequencyEnum.WEEK_DAY_ONLY;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [RecurrenceFrequencyEnumTypeTransformer] instance.
  static RecurrenceFrequencyEnumTypeTransformer? _instance;
}


