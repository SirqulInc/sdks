//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ApplicationUsageResponse {
  /// Returns a new [ApplicationUsageResponse] instance.
  ApplicationUsageResponse({
    this.billableEntity,
    this.applicationId,
    this.invoiceDate,
    this.balance,
    this.totalRequests,
    this.totalDataStorage,
    this.totalMediaStorage,
    this.totalNotifications,
    this.maxMissions,
    this.maxVouchers,
    this.maxCoupons,
    this.maxProducts,
    this.maxEvents,
    this.maxMedia,
    this.maxLocations,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  BillableEntityResponse? billableEntity;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? applicationId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? invoiceDate;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? balance;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? totalRequests;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? totalDataStorage;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? totalMediaStorage;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? totalNotifications;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? maxMissions;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? maxVouchers;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? maxCoupons;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? maxProducts;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? maxEvents;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? maxMedia;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? maxLocations;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ApplicationUsageResponse &&
    other.billableEntity == billableEntity &&
    other.applicationId == applicationId &&
    other.invoiceDate == invoiceDate &&
    other.balance == balance &&
    other.totalRequests == totalRequests &&
    other.totalDataStorage == totalDataStorage &&
    other.totalMediaStorage == totalMediaStorage &&
    other.totalNotifications == totalNotifications &&
    other.maxMissions == maxMissions &&
    other.maxVouchers == maxVouchers &&
    other.maxCoupons == maxCoupons &&
    other.maxProducts == maxProducts &&
    other.maxEvents == maxEvents &&
    other.maxMedia == maxMedia &&
    other.maxLocations == maxLocations;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (billableEntity == null ? 0 : billableEntity!.hashCode) +
    (applicationId == null ? 0 : applicationId!.hashCode) +
    (invoiceDate == null ? 0 : invoiceDate!.hashCode) +
    (balance == null ? 0 : balance!.hashCode) +
    (totalRequests == null ? 0 : totalRequests!.hashCode) +
    (totalDataStorage == null ? 0 : totalDataStorage!.hashCode) +
    (totalMediaStorage == null ? 0 : totalMediaStorage!.hashCode) +
    (totalNotifications == null ? 0 : totalNotifications!.hashCode) +
    (maxMissions == null ? 0 : maxMissions!.hashCode) +
    (maxVouchers == null ? 0 : maxVouchers!.hashCode) +
    (maxCoupons == null ? 0 : maxCoupons!.hashCode) +
    (maxProducts == null ? 0 : maxProducts!.hashCode) +
    (maxEvents == null ? 0 : maxEvents!.hashCode) +
    (maxMedia == null ? 0 : maxMedia!.hashCode) +
    (maxLocations == null ? 0 : maxLocations!.hashCode);

  @override
  String toString() => 'ApplicationUsageResponse[billableEntity=$billableEntity, applicationId=$applicationId, invoiceDate=$invoiceDate, balance=$balance, totalRequests=$totalRequests, totalDataStorage=$totalDataStorage, totalMediaStorage=$totalMediaStorage, totalNotifications=$totalNotifications, maxMissions=$maxMissions, maxVouchers=$maxVouchers, maxCoupons=$maxCoupons, maxProducts=$maxProducts, maxEvents=$maxEvents, maxMedia=$maxMedia, maxLocations=$maxLocations]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.billableEntity != null) {
      json[r'billableEntity'] = this.billableEntity;
    } else {
      json[r'billableEntity'] = null;
    }
    if (this.applicationId != null) {
      json[r'applicationId'] = this.applicationId;
    } else {
      json[r'applicationId'] = null;
    }
    if (this.invoiceDate != null) {
      json[r'invoiceDate'] = this.invoiceDate!.toUtc().toIso8601String();
    } else {
      json[r'invoiceDate'] = null;
    }
    if (this.balance != null) {
      json[r'balance'] = this.balance;
    } else {
      json[r'balance'] = null;
    }
    if (this.totalRequests != null) {
      json[r'totalRequests'] = this.totalRequests;
    } else {
      json[r'totalRequests'] = null;
    }
    if (this.totalDataStorage != null) {
      json[r'totalDataStorage'] = this.totalDataStorage;
    } else {
      json[r'totalDataStorage'] = null;
    }
    if (this.totalMediaStorage != null) {
      json[r'totalMediaStorage'] = this.totalMediaStorage;
    } else {
      json[r'totalMediaStorage'] = null;
    }
    if (this.totalNotifications != null) {
      json[r'totalNotifications'] = this.totalNotifications;
    } else {
      json[r'totalNotifications'] = null;
    }
    if (this.maxMissions != null) {
      json[r'maxMissions'] = this.maxMissions;
    } else {
      json[r'maxMissions'] = null;
    }
    if (this.maxVouchers != null) {
      json[r'maxVouchers'] = this.maxVouchers;
    } else {
      json[r'maxVouchers'] = null;
    }
    if (this.maxCoupons != null) {
      json[r'maxCoupons'] = this.maxCoupons;
    } else {
      json[r'maxCoupons'] = null;
    }
    if (this.maxProducts != null) {
      json[r'maxProducts'] = this.maxProducts;
    } else {
      json[r'maxProducts'] = null;
    }
    if (this.maxEvents != null) {
      json[r'maxEvents'] = this.maxEvents;
    } else {
      json[r'maxEvents'] = null;
    }
    if (this.maxMedia != null) {
      json[r'maxMedia'] = this.maxMedia;
    } else {
      json[r'maxMedia'] = null;
    }
    if (this.maxLocations != null) {
      json[r'maxLocations'] = this.maxLocations;
    } else {
      json[r'maxLocations'] = null;
    }
    return json;
  }

  /// Returns a new [ApplicationUsageResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ApplicationUsageResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ApplicationUsageResponse[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ApplicationUsageResponse[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ApplicationUsageResponse(
        billableEntity: BillableEntityResponse.fromJson(json[r'billableEntity']),
        applicationId: mapValueOfType<int>(json, r'applicationId'),
        invoiceDate: mapDateTime(json, r'invoiceDate', r''),
        balance: mapValueOfType<double>(json, r'balance'),
        totalRequests: mapValueOfType<int>(json, r'totalRequests'),
        totalDataStorage: mapValueOfType<int>(json, r'totalDataStorage'),
        totalMediaStorage: mapValueOfType<int>(json, r'totalMediaStorage'),
        totalNotifications: mapValueOfType<int>(json, r'totalNotifications'),
        maxMissions: mapValueOfType<int>(json, r'maxMissions'),
        maxVouchers: mapValueOfType<int>(json, r'maxVouchers'),
        maxCoupons: mapValueOfType<int>(json, r'maxCoupons'),
        maxProducts: mapValueOfType<int>(json, r'maxProducts'),
        maxEvents: mapValueOfType<int>(json, r'maxEvents'),
        maxMedia: mapValueOfType<int>(json, r'maxMedia'),
        maxLocations: mapValueOfType<int>(json, r'maxLocations'),
      );
    }
    return null;
  }

  static List<ApplicationUsageResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ApplicationUsageResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ApplicationUsageResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ApplicationUsageResponse> mapFromJson(dynamic json) {
    final map = <String, ApplicationUsageResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ApplicationUsageResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ApplicationUsageResponse-objects as value to a dart map
  static Map<String, List<ApplicationUsageResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ApplicationUsageResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ApplicationUsageResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

