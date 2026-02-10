//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ShipmentBatch {
  /// Returns a new [ShipmentBatch] instance.
  ShipmentBatch({
    this.id,
    this.created,
    this.updated,
    this.active,
    this.valid,
    this.retailer,
    this.hub,
    this.program,
    this.shipmentImportStatuses = const [],
    this.shipments = const [],
    this.uploaded,
    this.started,
    this.optimizationStarted,
    this.completed,
    this.optimizationCompleted,
    this.source_,
    this.externalId,
    this.total,
    this.processedCount,
    this.successCount,
    this.failedCount,
    this.validCount,
    this.invalidCount,
    this.averageTravelSpeed,
    this.maxSeconds,
    this.importStatus,
    this.totalRoutes,
    this.routesCreated,
    this.totalLegsRequests,
    this.legsRequested,
    this.initScore,
    this.hardScore,
    this.mediumScore,
    this.softScore,
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
  DateTime? created;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? updated;

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
  Retailer? retailer;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  ServiceHub? hub;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Program? program;

  List<ShipmentImportStatus> shipmentImportStatuses;

  List<Shipment> shipments;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? uploaded;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? started;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? optimizationStarted;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? completed;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? optimizationCompleted;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? source_;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? externalId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? total;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? processedCount;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? successCount;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? failedCount;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? validCount;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? invalidCount;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? averageTravelSpeed;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? maxSeconds;

  ShipmentBatchImportStatusEnum? importStatus;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? totalRoutes;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? routesCreated;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? totalLegsRequests;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? legsRequested;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? initScore;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? hardScore;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? mediumScore;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? softScore;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ShipmentBatch &&
    other.id == id &&
    other.created == created &&
    other.updated == updated &&
    other.active == active &&
    other.valid == valid &&
    other.retailer == retailer &&
    other.hub == hub &&
    other.program == program &&
    _deepEquality.equals(other.shipmentImportStatuses, shipmentImportStatuses) &&
    _deepEquality.equals(other.shipments, shipments) &&
    other.uploaded == uploaded &&
    other.started == started &&
    other.optimizationStarted == optimizationStarted &&
    other.completed == completed &&
    other.optimizationCompleted == optimizationCompleted &&
    other.source_ == source_ &&
    other.externalId == externalId &&
    other.total == total &&
    other.processedCount == processedCount &&
    other.successCount == successCount &&
    other.failedCount == failedCount &&
    other.validCount == validCount &&
    other.invalidCount == invalidCount &&
    other.averageTravelSpeed == averageTravelSpeed &&
    other.maxSeconds == maxSeconds &&
    other.importStatus == importStatus &&
    other.totalRoutes == totalRoutes &&
    other.routesCreated == routesCreated &&
    other.totalLegsRequests == totalLegsRequests &&
    other.legsRequested == legsRequested &&
    other.initScore == initScore &&
    other.hardScore == hardScore &&
    other.mediumScore == mediumScore &&
    other.softScore == softScore;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (created == null ? 0 : created!.hashCode) +
    (updated == null ? 0 : updated!.hashCode) +
    (active == null ? 0 : active!.hashCode) +
    (valid == null ? 0 : valid!.hashCode) +
    (retailer == null ? 0 : retailer!.hashCode) +
    (hub == null ? 0 : hub!.hashCode) +
    (program == null ? 0 : program!.hashCode) +
    (shipmentImportStatuses.hashCode) +
    (shipments.hashCode) +
    (uploaded == null ? 0 : uploaded!.hashCode) +
    (started == null ? 0 : started!.hashCode) +
    (optimizationStarted == null ? 0 : optimizationStarted!.hashCode) +
    (completed == null ? 0 : completed!.hashCode) +
    (optimizationCompleted == null ? 0 : optimizationCompleted!.hashCode) +
    (source_ == null ? 0 : source_!.hashCode) +
    (externalId == null ? 0 : externalId!.hashCode) +
    (total == null ? 0 : total!.hashCode) +
    (processedCount == null ? 0 : processedCount!.hashCode) +
    (successCount == null ? 0 : successCount!.hashCode) +
    (failedCount == null ? 0 : failedCount!.hashCode) +
    (validCount == null ? 0 : validCount!.hashCode) +
    (invalidCount == null ? 0 : invalidCount!.hashCode) +
    (averageTravelSpeed == null ? 0 : averageTravelSpeed!.hashCode) +
    (maxSeconds == null ? 0 : maxSeconds!.hashCode) +
    (importStatus == null ? 0 : importStatus!.hashCode) +
    (totalRoutes == null ? 0 : totalRoutes!.hashCode) +
    (routesCreated == null ? 0 : routesCreated!.hashCode) +
    (totalLegsRequests == null ? 0 : totalLegsRequests!.hashCode) +
    (legsRequested == null ? 0 : legsRequested!.hashCode) +
    (initScore == null ? 0 : initScore!.hashCode) +
    (hardScore == null ? 0 : hardScore!.hashCode) +
    (mediumScore == null ? 0 : mediumScore!.hashCode) +
    (softScore == null ? 0 : softScore!.hashCode);

  @override
  String toString() => 'ShipmentBatch[id=$id, created=$created, updated=$updated, active=$active, valid=$valid, retailer=$retailer, hub=$hub, program=$program, shipmentImportStatuses=$shipmentImportStatuses, shipments=$shipments, uploaded=$uploaded, started=$started, optimizationStarted=$optimizationStarted, completed=$completed, optimizationCompleted=$optimizationCompleted, source_=$source_, externalId=$externalId, total=$total, processedCount=$processedCount, successCount=$successCount, failedCount=$failedCount, validCount=$validCount, invalidCount=$invalidCount, averageTravelSpeed=$averageTravelSpeed, maxSeconds=$maxSeconds, importStatus=$importStatus, totalRoutes=$totalRoutes, routesCreated=$routesCreated, totalLegsRequests=$totalLegsRequests, legsRequested=$legsRequested, initScore=$initScore, hardScore=$hardScore, mediumScore=$mediumScore, softScore=$softScore]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.created != null) {
      json[r'created'] = this.created!.toUtc().toIso8601String();
    } else {
      json[r'created'] = null;
    }
    if (this.updated != null) {
      json[r'updated'] = this.updated!.toUtc().toIso8601String();
    } else {
      json[r'updated'] = null;
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
    if (this.retailer != null) {
      json[r'retailer'] = this.retailer;
    } else {
      json[r'retailer'] = null;
    }
    if (this.hub != null) {
      json[r'hub'] = this.hub;
    } else {
      json[r'hub'] = null;
    }
    if (this.program != null) {
      json[r'program'] = this.program;
    } else {
      json[r'program'] = null;
    }
      json[r'shipmentImportStatuses'] = this.shipmentImportStatuses;
      json[r'shipments'] = this.shipments;
    if (this.uploaded != null) {
      json[r'uploaded'] = this.uploaded!.toUtc().toIso8601String();
    } else {
      json[r'uploaded'] = null;
    }
    if (this.started != null) {
      json[r'started'] = this.started!.toUtc().toIso8601String();
    } else {
      json[r'started'] = null;
    }
    if (this.optimizationStarted != null) {
      json[r'optimizationStarted'] = this.optimizationStarted!.toUtc().toIso8601String();
    } else {
      json[r'optimizationStarted'] = null;
    }
    if (this.completed != null) {
      json[r'completed'] = this.completed!.toUtc().toIso8601String();
    } else {
      json[r'completed'] = null;
    }
    if (this.optimizationCompleted != null) {
      json[r'optimizationCompleted'] = this.optimizationCompleted!.toUtc().toIso8601String();
    } else {
      json[r'optimizationCompleted'] = null;
    }
    if (this.source_ != null) {
      json[r'source'] = this.source_;
    } else {
      json[r'source'] = null;
    }
    if (this.externalId != null) {
      json[r'externalId'] = this.externalId;
    } else {
      json[r'externalId'] = null;
    }
    if (this.total != null) {
      json[r'total'] = this.total;
    } else {
      json[r'total'] = null;
    }
    if (this.processedCount != null) {
      json[r'processedCount'] = this.processedCount;
    } else {
      json[r'processedCount'] = null;
    }
    if (this.successCount != null) {
      json[r'successCount'] = this.successCount;
    } else {
      json[r'successCount'] = null;
    }
    if (this.failedCount != null) {
      json[r'failedCount'] = this.failedCount;
    } else {
      json[r'failedCount'] = null;
    }
    if (this.validCount != null) {
      json[r'validCount'] = this.validCount;
    } else {
      json[r'validCount'] = null;
    }
    if (this.invalidCount != null) {
      json[r'invalidCount'] = this.invalidCount;
    } else {
      json[r'invalidCount'] = null;
    }
    if (this.averageTravelSpeed != null) {
      json[r'averageTravelSpeed'] = this.averageTravelSpeed;
    } else {
      json[r'averageTravelSpeed'] = null;
    }
    if (this.maxSeconds != null) {
      json[r'maxSeconds'] = this.maxSeconds;
    } else {
      json[r'maxSeconds'] = null;
    }
    if (this.importStatus != null) {
      json[r'importStatus'] = this.importStatus;
    } else {
      json[r'importStatus'] = null;
    }
    if (this.totalRoutes != null) {
      json[r'totalRoutes'] = this.totalRoutes;
    } else {
      json[r'totalRoutes'] = null;
    }
    if (this.routesCreated != null) {
      json[r'routesCreated'] = this.routesCreated;
    } else {
      json[r'routesCreated'] = null;
    }
    if (this.totalLegsRequests != null) {
      json[r'totalLegsRequests'] = this.totalLegsRequests;
    } else {
      json[r'totalLegsRequests'] = null;
    }
    if (this.legsRequested != null) {
      json[r'legsRequested'] = this.legsRequested;
    } else {
      json[r'legsRequested'] = null;
    }
    if (this.initScore != null) {
      json[r'initScore'] = this.initScore;
    } else {
      json[r'initScore'] = null;
    }
    if (this.hardScore != null) {
      json[r'hardScore'] = this.hardScore;
    } else {
      json[r'hardScore'] = null;
    }
    if (this.mediumScore != null) {
      json[r'mediumScore'] = this.mediumScore;
    } else {
      json[r'mediumScore'] = null;
    }
    if (this.softScore != null) {
      json[r'softScore'] = this.softScore;
    } else {
      json[r'softScore'] = null;
    }
    return json;
  }

  /// Returns a new [ShipmentBatch] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ShipmentBatch? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ShipmentBatch[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ShipmentBatch[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ShipmentBatch(
        id: mapValueOfType<int>(json, r'id'),
        created: mapDateTime(json, r'created', r''),
        updated: mapDateTime(json, r'updated', r''),
        active: mapValueOfType<bool>(json, r'active'),
        valid: mapValueOfType<bool>(json, r'valid'),
        retailer: Retailer.fromJson(json[r'retailer']),
        hub: ServiceHub.fromJson(json[r'hub']),
        program: Program.fromJson(json[r'program']),
        shipmentImportStatuses: ShipmentImportStatus.listFromJson(json[r'shipmentImportStatuses']),
        shipments: Shipment.listFromJson(json[r'shipments']),
        uploaded: mapDateTime(json, r'uploaded', r''),
        started: mapDateTime(json, r'started', r''),
        optimizationStarted: mapDateTime(json, r'optimizationStarted', r''),
        completed: mapDateTime(json, r'completed', r''),
        optimizationCompleted: mapDateTime(json, r'optimizationCompleted', r''),
        source_: mapValueOfType<String>(json, r'source'),
        externalId: mapValueOfType<String>(json, r'externalId'),
        total: mapValueOfType<int>(json, r'total'),
        processedCount: mapValueOfType<int>(json, r'processedCount'),
        successCount: mapValueOfType<int>(json, r'successCount'),
        failedCount: mapValueOfType<int>(json, r'failedCount'),
        validCount: mapValueOfType<int>(json, r'validCount'),
        invalidCount: mapValueOfType<int>(json, r'invalidCount'),
        averageTravelSpeed: mapValueOfType<double>(json, r'averageTravelSpeed'),
        maxSeconds: mapValueOfType<int>(json, r'maxSeconds'),
        importStatus: ShipmentBatchImportStatusEnum.fromJson(json[r'importStatus']),
        totalRoutes: mapValueOfType<int>(json, r'totalRoutes'),
        routesCreated: mapValueOfType<int>(json, r'routesCreated'),
        totalLegsRequests: mapValueOfType<int>(json, r'totalLegsRequests'),
        legsRequested: mapValueOfType<int>(json, r'legsRequested'),
        initScore: mapValueOfType<int>(json, r'initScore'),
        hardScore: mapValueOfType<int>(json, r'hardScore'),
        mediumScore: mapValueOfType<int>(json, r'mediumScore'),
        softScore: mapValueOfType<int>(json, r'softScore'),
      );
    }
    return null;
  }

  static List<ShipmentBatch> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ShipmentBatch>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ShipmentBatch.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ShipmentBatch> mapFromJson(dynamic json) {
    final map = <String, ShipmentBatch>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ShipmentBatch.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ShipmentBatch-objects as value to a dart map
  static Map<String, List<ShipmentBatch>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ShipmentBatch>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ShipmentBatch.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}


class ShipmentBatchImportStatusEnum {
  /// Instantiate a new enum with the provided [value].
  const ShipmentBatchImportStatusEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const NEW = ShipmentBatchImportStatusEnum._(r'NEW');
  static const STARTED = ShipmentBatchImportStatusEnum._(r'STARTED');
  static const FETCHING_DISTANCE_DATA = ShipmentBatchImportStatusEnum._(r'FETCHING_DISTANCE_DATA');
  static const OPTIMIZING = ShipmentBatchImportStatusEnum._(r'OPTIMIZING');
  static const CREATING_ROUTES = ShipmentBatchImportStatusEnum._(r'CREATING_ROUTES');
  static const COMPLETED = ShipmentBatchImportStatusEnum._(r'COMPLETED');
  static const INCOMPLETE = ShipmentBatchImportStatusEnum._(r'INCOMPLETE');

  /// List of all possible values in this [enum][ShipmentBatchImportStatusEnum].
  static const values = <ShipmentBatchImportStatusEnum>[
    NEW,
    STARTED,
    FETCHING_DISTANCE_DATA,
    OPTIMIZING,
    CREATING_ROUTES,
    COMPLETED,
    INCOMPLETE,
  ];

  static ShipmentBatchImportStatusEnum? fromJson(dynamic value) => ShipmentBatchImportStatusEnumTypeTransformer().decode(value);

  static List<ShipmentBatchImportStatusEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ShipmentBatchImportStatusEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ShipmentBatchImportStatusEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [ShipmentBatchImportStatusEnum] to String,
/// and [decode] dynamic data back to [ShipmentBatchImportStatusEnum].
class ShipmentBatchImportStatusEnumTypeTransformer {
  factory ShipmentBatchImportStatusEnumTypeTransformer() => _instance ??= const ShipmentBatchImportStatusEnumTypeTransformer._();

  const ShipmentBatchImportStatusEnumTypeTransformer._();

  String encode(ShipmentBatchImportStatusEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a ShipmentBatchImportStatusEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ShipmentBatchImportStatusEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'NEW': return ShipmentBatchImportStatusEnum.NEW;
        case r'STARTED': return ShipmentBatchImportStatusEnum.STARTED;
        case r'FETCHING_DISTANCE_DATA': return ShipmentBatchImportStatusEnum.FETCHING_DISTANCE_DATA;
        case r'OPTIMIZING': return ShipmentBatchImportStatusEnum.OPTIMIZING;
        case r'CREATING_ROUTES': return ShipmentBatchImportStatusEnum.CREATING_ROUTES;
        case r'COMPLETED': return ShipmentBatchImportStatusEnum.COMPLETED;
        case r'INCOMPLETE': return ShipmentBatchImportStatusEnum.INCOMPLETE;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [ShipmentBatchImportStatusEnumTypeTransformer] instance.
  static ShipmentBatchImportStatusEnumTypeTransformer? _instance;
}


