//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ReportBatchResponse {
  /// Returns a new [ReportBatchResponse] instance.
  ReportBatchResponse({
    this.valid,
    this.message,
    this.version,
    this.serializeNulls,
    this.startTimeLog,
    this.errorCode,
    this.request = const [],
    this.batchId,
    this.reportBatchStatus,
    this.errorMessage,
    this.endpoint,
    this.pageUrl,
    this.name,
    this.description,
    this.created,
    this.updated,
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

  ReportBatchResponseReportBatchStatusEnum? reportBatchStatus;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? errorMessage;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? endpoint;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? pageUrl;

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
  int? created;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? updated;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? returning;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ReportBatchResponse &&
    other.valid == valid &&
    other.message == message &&
    other.version == version &&
    other.serializeNulls == serializeNulls &&
    other.startTimeLog == startTimeLog &&
    other.errorCode == errorCode &&
    _deepEquality.equals(other.request, request) &&
    other.batchId == batchId &&
    other.reportBatchStatus == reportBatchStatus &&
    other.errorMessage == errorMessage &&
    other.endpoint == endpoint &&
    other.pageUrl == pageUrl &&
    other.name == name &&
    other.description == description &&
    other.created == created &&
    other.updated == updated &&
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
    (reportBatchStatus == null ? 0 : reportBatchStatus!.hashCode) +
    (errorMessage == null ? 0 : errorMessage!.hashCode) +
    (endpoint == null ? 0 : endpoint!.hashCode) +
    (pageUrl == null ? 0 : pageUrl!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (description == null ? 0 : description!.hashCode) +
    (created == null ? 0 : created!.hashCode) +
    (updated == null ? 0 : updated!.hashCode) +
    (returning == null ? 0 : returning!.hashCode);

  @override
  String toString() => 'ReportBatchResponse[valid=$valid, message=$message, version=$version, serializeNulls=$serializeNulls, startTimeLog=$startTimeLog, errorCode=$errorCode, request=$request, batchId=$batchId, reportBatchStatus=$reportBatchStatus, errorMessage=$errorMessage, endpoint=$endpoint, pageUrl=$pageUrl, name=$name, description=$description, created=$created, updated=$updated, returning=$returning]';

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
    if (this.reportBatchStatus != null) {
      json[r'reportBatchStatus'] = this.reportBatchStatus;
    } else {
      json[r'reportBatchStatus'] = null;
    }
    if (this.errorMessage != null) {
      json[r'errorMessage'] = this.errorMessage;
    } else {
      json[r'errorMessage'] = null;
    }
    if (this.endpoint != null) {
      json[r'endpoint'] = this.endpoint;
    } else {
      json[r'endpoint'] = null;
    }
    if (this.pageUrl != null) {
      json[r'pageUrl'] = this.pageUrl;
    } else {
      json[r'pageUrl'] = null;
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
    if (this.created != null) {
      json[r'created'] = this.created;
    } else {
      json[r'created'] = null;
    }
    if (this.updated != null) {
      json[r'updated'] = this.updated;
    } else {
      json[r'updated'] = null;
    }
    if (this.returning != null) {
      json[r'returning'] = this.returning;
    } else {
      json[r'returning'] = null;
    }
    return json;
  }

  /// Returns a new [ReportBatchResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ReportBatchResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ReportBatchResponse[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ReportBatchResponse[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ReportBatchResponse(
        valid: mapValueOfType<bool>(json, r'valid'),
        message: mapValueOfType<String>(json, r'message'),
        version: mapValueOfType<double>(json, r'version'),
        serializeNulls: mapValueOfType<bool>(json, r'serializeNulls'),
        startTimeLog: mapValueOfType<int>(json, r'startTimeLog'),
        errorCode: mapValueOfType<String>(json, r'errorCode'),
        request: NameStringValueResponse.listFromJson(json[r'request']),
        batchId: mapValueOfType<int>(json, r'batchId'),
        reportBatchStatus: ReportBatchResponseReportBatchStatusEnum.fromJson(json[r'reportBatchStatus']),
        errorMessage: mapValueOfType<String>(json, r'errorMessage'),
        endpoint: mapValueOfType<String>(json, r'endpoint'),
        pageUrl: mapValueOfType<String>(json, r'pageUrl'),
        name: mapValueOfType<String>(json, r'name'),
        description: mapValueOfType<String>(json, r'description'),
        created: mapValueOfType<int>(json, r'created'),
        updated: mapValueOfType<int>(json, r'updated'),
        returning: mapValueOfType<String>(json, r'returning'),
      );
    }
    return null;
  }

  static List<ReportBatchResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ReportBatchResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ReportBatchResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ReportBatchResponse> mapFromJson(dynamic json) {
    final map = <String, ReportBatchResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ReportBatchResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ReportBatchResponse-objects as value to a dart map
  static Map<String, List<ReportBatchResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ReportBatchResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ReportBatchResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}


class ReportBatchResponseReportBatchStatusEnum {
  /// Instantiate a new enum with the provided [value].
  const ReportBatchResponseReportBatchStatusEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const NEW = ReportBatchResponseReportBatchStatusEnum._(r'NEW');
  static const ERROR = ReportBatchResponseReportBatchStatusEnum._(r'ERROR');
  static const COMPLETE = ReportBatchResponseReportBatchStatusEnum._(r'COMPLETE');
  static const PARSE_ERROR = ReportBatchResponseReportBatchStatusEnum._(r'PARSE_ERROR');
  static const PROCESSING = ReportBatchResponseReportBatchStatusEnum._(r'PROCESSING');
  static const DUPLICATE = ReportBatchResponseReportBatchStatusEnum._(r'DUPLICATE');
  static const SAVEONLY = ReportBatchResponseReportBatchStatusEnum._(r'SAVEONLY');

  /// List of all possible values in this [enum][ReportBatchResponseReportBatchStatusEnum].
  static const values = <ReportBatchResponseReportBatchStatusEnum>[
    NEW,
    ERROR,
    COMPLETE,
    PARSE_ERROR,
    PROCESSING,
    DUPLICATE,
    SAVEONLY,
  ];

  static ReportBatchResponseReportBatchStatusEnum? fromJson(dynamic value) => ReportBatchResponseReportBatchStatusEnumTypeTransformer().decode(value);

  static List<ReportBatchResponseReportBatchStatusEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ReportBatchResponseReportBatchStatusEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ReportBatchResponseReportBatchStatusEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [ReportBatchResponseReportBatchStatusEnum] to String,
/// and [decode] dynamic data back to [ReportBatchResponseReportBatchStatusEnum].
class ReportBatchResponseReportBatchStatusEnumTypeTransformer {
  factory ReportBatchResponseReportBatchStatusEnumTypeTransformer() => _instance ??= const ReportBatchResponseReportBatchStatusEnumTypeTransformer._();

  const ReportBatchResponseReportBatchStatusEnumTypeTransformer._();

  String encode(ReportBatchResponseReportBatchStatusEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a ReportBatchResponseReportBatchStatusEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ReportBatchResponseReportBatchStatusEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'NEW': return ReportBatchResponseReportBatchStatusEnum.NEW;
        case r'ERROR': return ReportBatchResponseReportBatchStatusEnum.ERROR;
        case r'COMPLETE': return ReportBatchResponseReportBatchStatusEnum.COMPLETE;
        case r'PARSE_ERROR': return ReportBatchResponseReportBatchStatusEnum.PARSE_ERROR;
        case r'PROCESSING': return ReportBatchResponseReportBatchStatusEnum.PROCESSING;
        case r'DUPLICATE': return ReportBatchResponseReportBatchStatusEnum.DUPLICATE;
        case r'SAVEONLY': return ReportBatchResponseReportBatchStatusEnum.SAVEONLY;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [ReportBatchResponseReportBatchStatusEnumTypeTransformer] instance.
  static ReportBatchResponseReportBatchStatusEnumTypeTransformer? _instance;
}


