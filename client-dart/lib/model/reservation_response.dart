//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ReservationResponse {
  /// Returns a new [ReservationResponse] instance.
  ReservationResponse({
    this.reservationId,
    this.reservableId,
    this.reservableType,
    this.account,
    this.createdDate,
    this.updatedDate,
    this.startDate,
    this.endDate,
    this.transaction,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? reservationId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? reservableId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? reservableType;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  AccountShortResponse? account;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? createdDate;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? updatedDate;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? startDate;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? endDate;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  OfferShortResponse? transaction;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ReservationResponse &&
    other.reservationId == reservationId &&
    other.reservableId == reservableId &&
    other.reservableType == reservableType &&
    other.account == account &&
    other.createdDate == createdDate &&
    other.updatedDate == updatedDate &&
    other.startDate == startDate &&
    other.endDate == endDate &&
    other.transaction == transaction;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (reservationId == null ? 0 : reservationId!.hashCode) +
    (reservableId == null ? 0 : reservableId!.hashCode) +
    (reservableType == null ? 0 : reservableType!.hashCode) +
    (account == null ? 0 : account!.hashCode) +
    (createdDate == null ? 0 : createdDate!.hashCode) +
    (updatedDate == null ? 0 : updatedDate!.hashCode) +
    (startDate == null ? 0 : startDate!.hashCode) +
    (endDate == null ? 0 : endDate!.hashCode) +
    (transaction == null ? 0 : transaction!.hashCode);

  @override
  String toString() => 'ReservationResponse[reservationId=$reservationId, reservableId=$reservableId, reservableType=$reservableType, account=$account, createdDate=$createdDate, updatedDate=$updatedDate, startDate=$startDate, endDate=$endDate, transaction=$transaction]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.reservationId != null) {
      json[r'reservationId'] = this.reservationId;
    } else {
      json[r'reservationId'] = null;
    }
    if (this.reservableId != null) {
      json[r'reservableId'] = this.reservableId;
    } else {
      json[r'reservableId'] = null;
    }
    if (this.reservableType != null) {
      json[r'reservableType'] = this.reservableType;
    } else {
      json[r'reservableType'] = null;
    }
    if (this.account != null) {
      json[r'account'] = this.account;
    } else {
      json[r'account'] = null;
    }
    if (this.createdDate != null) {
      json[r'createdDate'] = this.createdDate;
    } else {
      json[r'createdDate'] = null;
    }
    if (this.updatedDate != null) {
      json[r'updatedDate'] = this.updatedDate;
    } else {
      json[r'updatedDate'] = null;
    }
    if (this.startDate != null) {
      json[r'startDate'] = this.startDate;
    } else {
      json[r'startDate'] = null;
    }
    if (this.endDate != null) {
      json[r'endDate'] = this.endDate;
    } else {
      json[r'endDate'] = null;
    }
    if (this.transaction != null) {
      json[r'transaction'] = this.transaction;
    } else {
      json[r'transaction'] = null;
    }
    return json;
  }

  /// Returns a new [ReservationResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ReservationResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ReservationResponse[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ReservationResponse[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ReservationResponse(
        reservationId: mapValueOfType<int>(json, r'reservationId'),
        reservableId: mapValueOfType<int>(json, r'reservableId'),
        reservableType: mapValueOfType<String>(json, r'reservableType'),
        account: AccountShortResponse.fromJson(json[r'account']),
        createdDate: mapValueOfType<int>(json, r'createdDate'),
        updatedDate: mapValueOfType<int>(json, r'updatedDate'),
        startDate: mapValueOfType<int>(json, r'startDate'),
        endDate: mapValueOfType<int>(json, r'endDate'),
        transaction: OfferShortResponse.fromJson(json[r'transaction']),
      );
    }
    return null;
  }

  static List<ReservationResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ReservationResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ReservationResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ReservationResponse> mapFromJson(dynamic json) {
    final map = <String, ReservationResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ReservationResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ReservationResponse-objects as value to a dart map
  static Map<String, List<ReservationResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ReservationResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ReservationResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

