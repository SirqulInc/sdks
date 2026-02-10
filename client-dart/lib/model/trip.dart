//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Trip {
  /// Returns a new [Trip] instance.
  Trip({
    this.id,
    this.active,
    this.valid,
    this.owner,
    this.pickupLocation,
    this.pickupTime,
    this.dropOffLocation,
    this.dropOffTime,
    this.shipments = const [],
    this.recurrence,
    this.timeZone,
    this.route,
    this.preference,
    this.notifications,
    this.matches = const [],
    this.ownerConnection,
    this.originalId,
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
  Account? owner;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Location? pickupLocation;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? pickupTime;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Location? dropOffLocation;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? dropOffTime;

  List<Shipment> shipments;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Recurrence? recurrence;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? timeZone;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Route? route;

  TripPreferenceEnum? preference;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? notifications;

  List<Trip> matches;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Connection? ownerConnection;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? originalId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Trip &&
    other.id == id &&
    other.active == active &&
    other.valid == valid &&
    other.owner == owner &&
    other.pickupLocation == pickupLocation &&
    other.pickupTime == pickupTime &&
    other.dropOffLocation == dropOffLocation &&
    other.dropOffTime == dropOffTime &&
    _deepEquality.equals(other.shipments, shipments) &&
    other.recurrence == recurrence &&
    other.timeZone == timeZone &&
    other.route == route &&
    other.preference == preference &&
    other.notifications == notifications &&
    _deepEquality.equals(other.matches, matches) &&
    other.ownerConnection == ownerConnection &&
    other.originalId == originalId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (active == null ? 0 : active!.hashCode) +
    (valid == null ? 0 : valid!.hashCode) +
    (owner == null ? 0 : owner!.hashCode) +
    (pickupLocation == null ? 0 : pickupLocation!.hashCode) +
    (pickupTime == null ? 0 : pickupTime!.hashCode) +
    (dropOffLocation == null ? 0 : dropOffLocation!.hashCode) +
    (dropOffTime == null ? 0 : dropOffTime!.hashCode) +
    (shipments.hashCode) +
    (recurrence == null ? 0 : recurrence!.hashCode) +
    (timeZone == null ? 0 : timeZone!.hashCode) +
    (route == null ? 0 : route!.hashCode) +
    (preference == null ? 0 : preference!.hashCode) +
    (notifications == null ? 0 : notifications!.hashCode) +
    (matches.hashCode) +
    (ownerConnection == null ? 0 : ownerConnection!.hashCode) +
    (originalId == null ? 0 : originalId!.hashCode);

  @override
  String toString() => 'Trip[id=$id, active=$active, valid=$valid, owner=$owner, pickupLocation=$pickupLocation, pickupTime=$pickupTime, dropOffLocation=$dropOffLocation, dropOffTime=$dropOffTime, shipments=$shipments, recurrence=$recurrence, timeZone=$timeZone, route=$route, preference=$preference, notifications=$notifications, matches=$matches, ownerConnection=$ownerConnection, originalId=$originalId]';

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
    if (this.owner != null) {
      json[r'owner'] = this.owner;
    } else {
      json[r'owner'] = null;
    }
    if (this.pickupLocation != null) {
      json[r'pickupLocation'] = this.pickupLocation;
    } else {
      json[r'pickupLocation'] = null;
    }
    if (this.pickupTime != null) {
      json[r'pickupTime'] = this.pickupTime!.toUtc().toIso8601String();
    } else {
      json[r'pickupTime'] = null;
    }
    if (this.dropOffLocation != null) {
      json[r'dropOffLocation'] = this.dropOffLocation;
    } else {
      json[r'dropOffLocation'] = null;
    }
    if (this.dropOffTime != null) {
      json[r'dropOffTime'] = this.dropOffTime!.toUtc().toIso8601String();
    } else {
      json[r'dropOffTime'] = null;
    }
      json[r'shipments'] = this.shipments;
    if (this.recurrence != null) {
      json[r'recurrence'] = this.recurrence;
    } else {
      json[r'recurrence'] = null;
    }
    if (this.timeZone != null) {
      json[r'timeZone'] = this.timeZone;
    } else {
      json[r'timeZone'] = null;
    }
    if (this.route != null) {
      json[r'route'] = this.route;
    } else {
      json[r'route'] = null;
    }
    if (this.preference != null) {
      json[r'preference'] = this.preference;
    } else {
      json[r'preference'] = null;
    }
    if (this.notifications != null) {
      json[r'notifications'] = this.notifications;
    } else {
      json[r'notifications'] = null;
    }
      json[r'matches'] = this.matches;
    if (this.ownerConnection != null) {
      json[r'ownerConnection'] = this.ownerConnection;
    } else {
      json[r'ownerConnection'] = null;
    }
    if (this.originalId != null) {
      json[r'originalId'] = this.originalId;
    } else {
      json[r'originalId'] = null;
    }
    return json;
  }

  /// Returns a new [Trip] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Trip? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Trip[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Trip[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Trip(
        id: mapValueOfType<int>(json, r'id'),
        active: mapValueOfType<bool>(json, r'active'),
        valid: mapValueOfType<bool>(json, r'valid'),
        owner: Account.fromJson(json[r'owner']),
        pickupLocation: Location.fromJson(json[r'pickupLocation']),
        pickupTime: mapDateTime(json, r'pickupTime', r''),
        dropOffLocation: Location.fromJson(json[r'dropOffLocation']),
        dropOffTime: mapDateTime(json, r'dropOffTime', r''),
        shipments: Shipment.listFromJson(json[r'shipments']),
        recurrence: Recurrence.fromJson(json[r'recurrence']),
        timeZone: mapValueOfType<String>(json, r'timeZone'),
        route: Route.fromJson(json[r'route']),
        preference: TripPreferenceEnum.fromJson(json[r'preference']),
        notifications: mapValueOfType<String>(json, r'notifications'),
        matches: Trip.listFromJson(json[r'matches']),
        ownerConnection: Connection.fromJson(json[r'ownerConnection']),
        originalId: mapValueOfType<int>(json, r'originalId'),
      );
    }
    return null;
  }

  static List<Trip> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Trip>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Trip.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Trip> mapFromJson(dynamic json) {
    final map = <String, Trip>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Trip.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Trip-objects as value to a dart map
  static Map<String, List<Trip>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Trip>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Trip.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}


class TripPreferenceEnum {
  /// Instantiate a new enum with the provided [value].
  const TripPreferenceEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const DRIVE = TripPreferenceEnum._(r'DRIVE');
  static const FLEXIBLE = TripPreferenceEnum._(r'FLEXIBLE');
  static const RIDE = TripPreferenceEnum._(r'RIDE');

  /// List of all possible values in this [enum][TripPreferenceEnum].
  static const values = <TripPreferenceEnum>[
    DRIVE,
    FLEXIBLE,
    RIDE,
  ];

  static TripPreferenceEnum? fromJson(dynamic value) => TripPreferenceEnumTypeTransformer().decode(value);

  static List<TripPreferenceEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TripPreferenceEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TripPreferenceEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [TripPreferenceEnum] to String,
/// and [decode] dynamic data back to [TripPreferenceEnum].
class TripPreferenceEnumTypeTransformer {
  factory TripPreferenceEnumTypeTransformer() => _instance ??= const TripPreferenceEnumTypeTransformer._();

  const TripPreferenceEnumTypeTransformer._();

  String encode(TripPreferenceEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a TripPreferenceEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  TripPreferenceEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'DRIVE': return TripPreferenceEnum.DRIVE;
        case r'FLEXIBLE': return TripPreferenceEnum.FLEXIBLE;
        case r'RIDE': return TripPreferenceEnum.RIDE;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [TripPreferenceEnumTypeTransformer] instance.
  static TripPreferenceEnumTypeTransformer? _instance;
}


