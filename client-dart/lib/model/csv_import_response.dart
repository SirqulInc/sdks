//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CsvImportResponse {
  /// Returns a new [CsvImportResponse] instance.
  CsvImportResponse({
    this.valid,
    this.message,
    this.version,
    this.serializeNulls,
    this.startTimeLog,
    this.errorCode,
    this.request = const [],
    this.batchId,
    this.csvImportBatchStatus,
    this.errorMessage,
    this.objectType,
    this.returning,
  });

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
  String? message;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? version;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? serializeNulls;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? startTimeLog;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? errorCode;

  List<NameStringValueResponse> request;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? batchId;

  CsvImportResponseCsvImportBatchStatusEnum? csvImportBatchStatus;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? errorMessage;

  CsvImportResponseObjectTypeEnum? objectType;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? returning;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CsvImportResponse &&
    other.valid == valid &&
    other.message == message &&
    other.version == version &&
    other.serializeNulls == serializeNulls &&
    other.startTimeLog == startTimeLog &&
    other.errorCode == errorCode &&
    _deepEquality.equals(other.request, request) &&
    other.batchId == batchId &&
    other.csvImportBatchStatus == csvImportBatchStatus &&
    other.errorMessage == errorMessage &&
    other.objectType == objectType &&
    other.returning == returning;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (valid == null ? 0 : valid!.hashCode) +
    (message == null ? 0 : message!.hashCode) +
    (version == null ? 0 : version!.hashCode) +
    (serializeNulls == null ? 0 : serializeNulls!.hashCode) +
    (startTimeLog == null ? 0 : startTimeLog!.hashCode) +
    (errorCode == null ? 0 : errorCode!.hashCode) +
    (request.hashCode) +
    (batchId == null ? 0 : batchId!.hashCode) +
    (csvImportBatchStatus == null ? 0 : csvImportBatchStatus!.hashCode) +
    (errorMessage == null ? 0 : errorMessage!.hashCode) +
    (objectType == null ? 0 : objectType!.hashCode) +
    (returning == null ? 0 : returning!.hashCode);

  @override
  String toString() => 'CsvImportResponse[valid=$valid, message=$message, version=$version, serializeNulls=$serializeNulls, startTimeLog=$startTimeLog, errorCode=$errorCode, request=$request, batchId=$batchId, csvImportBatchStatus=$csvImportBatchStatus, errorMessage=$errorMessage, objectType=$objectType, returning=$returning]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.valid != null) {
      json[r'valid'] = this.valid;
    } else {
      json[r'valid'] = null;
    }
    if (this.message != null) {
      json[r'message'] = this.message;
    } else {
      json[r'message'] = null;
    }
    if (this.version != null) {
      json[r'version'] = this.version;
    } else {
      json[r'version'] = null;
    }
    if (this.serializeNulls != null) {
      json[r'serializeNulls'] = this.serializeNulls;
    } else {
      json[r'serializeNulls'] = null;
    }
    if (this.startTimeLog != null) {
      json[r'startTimeLog'] = this.startTimeLog;
    } else {
      json[r'startTimeLog'] = null;
    }
    if (this.errorCode != null) {
      json[r'errorCode'] = this.errorCode;
    } else {
      json[r'errorCode'] = null;
    }
      json[r'request'] = this.request;
    if (this.batchId != null) {
      json[r'batchId'] = this.batchId;
    } else {
      json[r'batchId'] = null;
    }
    if (this.csvImportBatchStatus != null) {
      json[r'csvImportBatchStatus'] = this.csvImportBatchStatus;
    } else {
      json[r'csvImportBatchStatus'] = null;
    }
    if (this.errorMessage != null) {
      json[r'errorMessage'] = this.errorMessage;
    } else {
      json[r'errorMessage'] = null;
    }
    if (this.objectType != null) {
      json[r'objectType'] = this.objectType;
    } else {
      json[r'objectType'] = null;
    }
    if (this.returning != null) {
      json[r'returning'] = this.returning;
    } else {
      json[r'returning'] = null;
    }
    return json;
  }

  /// Returns a new [CsvImportResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CsvImportResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CsvImportResponse[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CsvImportResponse[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CsvImportResponse(
        valid: mapValueOfType<bool>(json, r'valid'),
        message: mapValueOfType<String>(json, r'message'),
        version: mapValueOfType<double>(json, r'version'),
        serializeNulls: mapValueOfType<bool>(json, r'serializeNulls'),
        startTimeLog: mapValueOfType<int>(json, r'startTimeLog'),
        errorCode: mapValueOfType<String>(json, r'errorCode'),
        request: NameStringValueResponse.listFromJson(json[r'request']),
        batchId: mapValueOfType<int>(json, r'batchId'),
        csvImportBatchStatus: CsvImportResponseCsvImportBatchStatusEnum.fromJson(json[r'csvImportBatchStatus']),
        errorMessage: mapValueOfType<String>(json, r'errorMessage'),
        objectType: CsvImportResponseObjectTypeEnum.fromJson(json[r'objectType']),
        returning: mapValueOfType<String>(json, r'returning'),
      );
    }
    return null;
  }

  static List<CsvImportResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CsvImportResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CsvImportResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CsvImportResponse> mapFromJson(dynamic json) {
    final map = <String, CsvImportResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CsvImportResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CsvImportResponse-objects as value to a dart map
  static Map<String, List<CsvImportResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CsvImportResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CsvImportResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}


class CsvImportResponseCsvImportBatchStatusEnum {
  /// Instantiate a new enum with the provided [value].
  const CsvImportResponseCsvImportBatchStatusEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const NEW = CsvImportResponseCsvImportBatchStatusEnum._(r'NEW');
  static const ERROR = CsvImportResponseCsvImportBatchStatusEnum._(r'ERROR');
  static const COMPLETE = CsvImportResponseCsvImportBatchStatusEnum._(r'COMPLETE');
  static const PARSE_ERROR = CsvImportResponseCsvImportBatchStatusEnum._(r'PARSE_ERROR');
  static const PROCESSING = CsvImportResponseCsvImportBatchStatusEnum._(r'PROCESSING');
  static const DUPLICATE = CsvImportResponseCsvImportBatchStatusEnum._(r'DUPLICATE');

  /// List of all possible values in this [enum][CsvImportResponseCsvImportBatchStatusEnum].
  static const values = <CsvImportResponseCsvImportBatchStatusEnum>[
    NEW,
    ERROR,
    COMPLETE,
    PARSE_ERROR,
    PROCESSING,
    DUPLICATE,
  ];

  static CsvImportResponseCsvImportBatchStatusEnum? fromJson(dynamic value) => CsvImportResponseCsvImportBatchStatusEnumTypeTransformer().decode(value);

  static List<CsvImportResponseCsvImportBatchStatusEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CsvImportResponseCsvImportBatchStatusEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CsvImportResponseCsvImportBatchStatusEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [CsvImportResponseCsvImportBatchStatusEnum] to String,
/// and [decode] dynamic data back to [CsvImportResponseCsvImportBatchStatusEnum].
class CsvImportResponseCsvImportBatchStatusEnumTypeTransformer {
  factory CsvImportResponseCsvImportBatchStatusEnumTypeTransformer() => _instance ??= const CsvImportResponseCsvImportBatchStatusEnumTypeTransformer._();

  const CsvImportResponseCsvImportBatchStatusEnumTypeTransformer._();

  String encode(CsvImportResponseCsvImportBatchStatusEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a CsvImportResponseCsvImportBatchStatusEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  CsvImportResponseCsvImportBatchStatusEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'NEW': return CsvImportResponseCsvImportBatchStatusEnum.NEW;
        case r'ERROR': return CsvImportResponseCsvImportBatchStatusEnum.ERROR;
        case r'COMPLETE': return CsvImportResponseCsvImportBatchStatusEnum.COMPLETE;
        case r'PARSE_ERROR': return CsvImportResponseCsvImportBatchStatusEnum.PARSE_ERROR;
        case r'PROCESSING': return CsvImportResponseCsvImportBatchStatusEnum.PROCESSING;
        case r'DUPLICATE': return CsvImportResponseCsvImportBatchStatusEnum.DUPLICATE;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [CsvImportResponseCsvImportBatchStatusEnumTypeTransformer] instance.
  static CsvImportResponseCsvImportBatchStatusEnumTypeTransformer? _instance;
}



class CsvImportResponseObjectTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const CsvImportResponseObjectTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const OFFERS = CsvImportResponseObjectTypeEnum._(r'OFFERS');
  static const RETAILERS = CsvImportResponseObjectTypeEnum._(r'RETAILERS');
  static const RETAILERLOCATIONS = CsvImportResponseObjectTypeEnum._(r'RETAILERLOCATIONS');
  static const CATEGORIES = CsvImportResponseObjectTypeEnum._(r'CATEGORIES');
  static const FILTERS = CsvImportResponseObjectTypeEnum._(r'FILTERS');

  /// List of all possible values in this [enum][CsvImportResponseObjectTypeEnum].
  static const values = <CsvImportResponseObjectTypeEnum>[
    OFFERS,
    RETAILERS,
    RETAILERLOCATIONS,
    CATEGORIES,
    FILTERS,
  ];

  static CsvImportResponseObjectTypeEnum? fromJson(dynamic value) => CsvImportResponseObjectTypeEnumTypeTransformer().decode(value);

  static List<CsvImportResponseObjectTypeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CsvImportResponseObjectTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CsvImportResponseObjectTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [CsvImportResponseObjectTypeEnum] to String,
/// and [decode] dynamic data back to [CsvImportResponseObjectTypeEnum].
class CsvImportResponseObjectTypeEnumTypeTransformer {
  factory CsvImportResponseObjectTypeEnumTypeTransformer() => _instance ??= const CsvImportResponseObjectTypeEnumTypeTransformer._();

  const CsvImportResponseObjectTypeEnumTypeTransformer._();

  String encode(CsvImportResponseObjectTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a CsvImportResponseObjectTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  CsvImportResponseObjectTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'OFFERS': return CsvImportResponseObjectTypeEnum.OFFERS;
        case r'RETAILERS': return CsvImportResponseObjectTypeEnum.RETAILERS;
        case r'RETAILERLOCATIONS': return CsvImportResponseObjectTypeEnum.RETAILERLOCATIONS;
        case r'CATEGORIES': return CsvImportResponseObjectTypeEnum.CATEGORIES;
        case r'FILTERS': return CsvImportResponseObjectTypeEnum.FILTERS;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [CsvImportResponseObjectTypeEnumTypeTransformer] instance.
  static CsvImportResponseObjectTypeEnumTypeTransformer? _instance;
}


