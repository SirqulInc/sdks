//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Shipment {
  /// Returns a new [Shipment] instance.
  Shipment({
    this.id,
    this.active,
    this.valid,
    this.name,
    this.owner,
    this.rider,
    this.pickupStop,
    this.dropOffStop,
    this.notes = const [],
    this.noteCount,
    this.batchId,
    this.reserved,
    this.canceled,
    this.confirmed,
    this.route,
    this.polyline,
    this.replacePassenger,
    this.refunded,
    this.promoCode,
    this.quantity,
    this.pickupTimeWindow,
    this.dropOffTimeWindow,
    this.cargoType,
    this.serviceType,
    this.routeId,
    this.totalVolume,
    this.complete,
    this.contentName,
    this.riderName,
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
  Account? owner;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Account? rider;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Stop? pickupStop;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Stop? dropOffStop;

  List<Note> notes;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? noteCount;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? batchId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? reserved;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? canceled;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? confirmed;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Route? route;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? polyline;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Shipment? replacePassenger;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? refunded;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  PromoCode? promoCode;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? quantity;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTimeRange? pickupTimeWindow;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTimeRange? dropOffTimeWindow;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  CargoType? cargoType;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  ServiceType? serviceType;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? routeId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? totalVolume;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? complete;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? contentName;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? riderName;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Shipment &&
    other.id == id &&
    other.active == active &&
    other.valid == valid &&
    other.name == name &&
    other.owner == owner &&
    other.rider == rider &&
    other.pickupStop == pickupStop &&
    other.dropOffStop == dropOffStop &&
    _deepEquality.equals(other.notes, notes) &&
    other.noteCount == noteCount &&
    other.batchId == batchId &&
    other.reserved == reserved &&
    other.canceled == canceled &&
    other.confirmed == confirmed &&
    other.route == route &&
    other.polyline == polyline &&
    other.replacePassenger == replacePassenger &&
    other.refunded == refunded &&
    other.promoCode == promoCode &&
    other.quantity == quantity &&
    other.pickupTimeWindow == pickupTimeWindow &&
    other.dropOffTimeWindow == dropOffTimeWindow &&
    other.cargoType == cargoType &&
    other.serviceType == serviceType &&
    other.routeId == routeId &&
    other.totalVolume == totalVolume &&
    other.complete == complete &&
    other.contentName == contentName &&
    other.riderName == riderName;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (active == null ? 0 : active!.hashCode) +
    (valid == null ? 0 : valid!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (owner == null ? 0 : owner!.hashCode) +
    (rider == null ? 0 : rider!.hashCode) +
    (pickupStop == null ? 0 : pickupStop!.hashCode) +
    (dropOffStop == null ? 0 : dropOffStop!.hashCode) +
    (notes.hashCode) +
    (noteCount == null ? 0 : noteCount!.hashCode) +
    (batchId == null ? 0 : batchId!.hashCode) +
    (reserved == null ? 0 : reserved!.hashCode) +
    (canceled == null ? 0 : canceled!.hashCode) +
    (confirmed == null ? 0 : confirmed!.hashCode) +
    (route == null ? 0 : route!.hashCode) +
    (polyline == null ? 0 : polyline!.hashCode) +
    (replacePassenger == null ? 0 : replacePassenger!.hashCode) +
    (refunded == null ? 0 : refunded!.hashCode) +
    (promoCode == null ? 0 : promoCode!.hashCode) +
    (quantity == null ? 0 : quantity!.hashCode) +
    (pickupTimeWindow == null ? 0 : pickupTimeWindow!.hashCode) +
    (dropOffTimeWindow == null ? 0 : dropOffTimeWindow!.hashCode) +
    (cargoType == null ? 0 : cargoType!.hashCode) +
    (serviceType == null ? 0 : serviceType!.hashCode) +
    (routeId == null ? 0 : routeId!.hashCode) +
    (totalVolume == null ? 0 : totalVolume!.hashCode) +
    (complete == null ? 0 : complete!.hashCode) +
    (contentName == null ? 0 : contentName!.hashCode) +
    (riderName == null ? 0 : riderName!.hashCode);

  @override
  String toString() => 'Shipment[id=$id, active=$active, valid=$valid, name=$name, owner=$owner, rider=$rider, pickupStop=$pickupStop, dropOffStop=$dropOffStop, notes=$notes, noteCount=$noteCount, batchId=$batchId, reserved=$reserved, canceled=$canceled, confirmed=$confirmed, route=$route, polyline=$polyline, replacePassenger=$replacePassenger, refunded=$refunded, promoCode=$promoCode, quantity=$quantity, pickupTimeWindow=$pickupTimeWindow, dropOffTimeWindow=$dropOffTimeWindow, cargoType=$cargoType, serviceType=$serviceType, routeId=$routeId, totalVolume=$totalVolume, complete=$complete, contentName=$contentName, riderName=$riderName]';

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
    if (this.owner != null) {
      json[r'owner'] = this.owner;
    } else {
      json[r'owner'] = null;
    }
    if (this.rider != null) {
      json[r'rider'] = this.rider;
    } else {
      json[r'rider'] = null;
    }
    if (this.pickupStop != null) {
      json[r'pickupStop'] = this.pickupStop;
    } else {
      json[r'pickupStop'] = null;
    }
    if (this.dropOffStop != null) {
      json[r'dropOffStop'] = this.dropOffStop;
    } else {
      json[r'dropOffStop'] = null;
    }
      json[r'notes'] = this.notes;
    if (this.noteCount != null) {
      json[r'noteCount'] = this.noteCount;
    } else {
      json[r'noteCount'] = null;
    }
    if (this.batchId != null) {
      json[r'batchId'] = this.batchId;
    } else {
      json[r'batchId'] = null;
    }
    if (this.reserved != null) {
      json[r'reserved'] = this.reserved!.toUtc().toIso8601String();
    } else {
      json[r'reserved'] = null;
    }
    if (this.canceled != null) {
      json[r'canceled'] = this.canceled!.toUtc().toIso8601String();
    } else {
      json[r'canceled'] = null;
    }
    if (this.confirmed != null) {
      json[r'confirmed'] = this.confirmed!.toUtc().toIso8601String();
    } else {
      json[r'confirmed'] = null;
    }
    if (this.route != null) {
      json[r'route'] = this.route;
    } else {
      json[r'route'] = null;
    }
    if (this.polyline != null) {
      json[r'polyline'] = this.polyline;
    } else {
      json[r'polyline'] = null;
    }
    if (this.replacePassenger != null) {
      json[r'replacePassenger'] = this.replacePassenger;
    } else {
      json[r'replacePassenger'] = null;
    }
    if (this.refunded != null) {
      json[r'refunded'] = this.refunded;
    } else {
      json[r'refunded'] = null;
    }
    if (this.promoCode != null) {
      json[r'promoCode'] = this.promoCode;
    } else {
      json[r'promoCode'] = null;
    }
    if (this.quantity != null) {
      json[r'quantity'] = this.quantity;
    } else {
      json[r'quantity'] = null;
    }
    if (this.pickupTimeWindow != null) {
      json[r'pickupTimeWindow'] = this.pickupTimeWindow;
    } else {
      json[r'pickupTimeWindow'] = null;
    }
    if (this.dropOffTimeWindow != null) {
      json[r'dropOffTimeWindow'] = this.dropOffTimeWindow;
    } else {
      json[r'dropOffTimeWindow'] = null;
    }
    if (this.cargoType != null) {
      json[r'cargoType'] = this.cargoType;
    } else {
      json[r'cargoType'] = null;
    }
    if (this.serviceType != null) {
      json[r'serviceType'] = this.serviceType;
    } else {
      json[r'serviceType'] = null;
    }
    if (this.routeId != null) {
      json[r'routeId'] = this.routeId;
    } else {
      json[r'routeId'] = null;
    }
    if (this.totalVolume != null) {
      json[r'totalVolume'] = this.totalVolume;
    } else {
      json[r'totalVolume'] = null;
    }
    if (this.complete != null) {
      json[r'complete'] = this.complete;
    } else {
      json[r'complete'] = null;
    }
    if (this.contentName != null) {
      json[r'contentName'] = this.contentName;
    } else {
      json[r'contentName'] = null;
    }
    if (this.riderName != null) {
      json[r'riderName'] = this.riderName;
    } else {
      json[r'riderName'] = null;
    }
    return json;
  }

  /// Returns a new [Shipment] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Shipment? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Shipment[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Shipment[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Shipment(
        id: mapValueOfType<int>(json, r'id'),
        active: mapValueOfType<bool>(json, r'active'),
        valid: mapValueOfType<bool>(json, r'valid'),
        name: mapValueOfType<String>(json, r'name'),
        owner: Account.fromJson(json[r'owner']),
        rider: Account.fromJson(json[r'rider']),
        pickupStop: Stop.fromJson(json[r'pickupStop']),
        dropOffStop: Stop.fromJson(json[r'dropOffStop']),
        notes: Note.listFromJson(json[r'notes']),
        noteCount: mapValueOfType<int>(json, r'noteCount'),
        batchId: mapValueOfType<String>(json, r'batchId'),
        reserved: mapDateTime(json, r'reserved', r''),
        canceled: mapDateTime(json, r'canceled', r''),
        confirmed: mapDateTime(json, r'confirmed', r''),
        route: Route.fromJson(json[r'route']),
        polyline: mapValueOfType<String>(json, r'polyline'),
        replacePassenger: Shipment.fromJson(json[r'replacePassenger']),
        refunded: mapValueOfType<bool>(json, r'refunded'),
        promoCode: PromoCode.fromJson(json[r'promoCode']),
        quantity: mapValueOfType<int>(json, r'quantity'),
        pickupTimeWindow: DateTimeRange.fromJson(json[r'pickupTimeWindow']),
        dropOffTimeWindow: DateTimeRange.fromJson(json[r'dropOffTimeWindow']),
        cargoType: CargoType.fromJson(json[r'cargoType']),
        serviceType: ServiceType.fromJson(json[r'serviceType']),
        routeId: mapValueOfType<int>(json, r'routeId'),
        totalVolume: mapValueOfType<double>(json, r'totalVolume'),
        complete: mapValueOfType<bool>(json, r'complete'),
        contentName: mapValueOfType<String>(json, r'contentName'),
        riderName: mapValueOfType<String>(json, r'riderName'),
      );
    }
    return null;
  }

  static List<Shipment> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Shipment>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Shipment.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Shipment> mapFromJson(dynamic json) {
    final map = <String, Shipment>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Shipment.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Shipment-objects as value to a dart map
  static Map<String, List<Shipment>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Shipment>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Shipment.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

