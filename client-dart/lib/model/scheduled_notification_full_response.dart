//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ScheduledNotificationFullResponse {
  /// Returns a new [ScheduledNotificationFullResponse] instance.
  ScheduledNotificationFullResponse({
    this.scheduledNotificationId,
    this.active,
    this.status,
    this.type,
    this.name,
    this.message,
    this.groupingId,
    this.scheduledDate,
    this.startDate,
    this.endDate,
    this.owner,
    this.billableEntity,
    this.contentId,
    this.contentName,
    this.contentType,
    this.parentId,
    this.parentType,
    this.application,
    this.targetId,
    this.targetName,
    this.targetType,
    this.targetParams,
    this.deliverEstimate,
    this.deliverCount,
    this.deliverTotal,
    this.deliverFailed,
    this.processingTime,
    this.sendingTime,
    this.updated,
    this.created,
    this.cronExpression,
    this.endpointURL,
    this.payload,
    this.conditionalInput,
    this.connectionAccountIds = const [],
    this.templateType,
    this.groupedTypes = const [],
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? scheduledNotificationId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? active;

  ScheduledNotificationFullResponseStatusEnum? status;

  ScheduledNotificationFullResponseTypeEnum? type;

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
  String? message;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? groupingId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? scheduledDate;

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
  AccountShortResponse? owner;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  BillableEntityShortResponse? billableEntity;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? contentId;

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
  String? contentType;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? parentId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? parentType;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  ApplicationMiniResponse? application;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? targetId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? targetName;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? targetType;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? targetParams;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? deliverEstimate;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? deliverCount;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? deliverTotal;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? deliverFailed;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? processingTime;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? sendingTime;

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
  int? created;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? cronExpression;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? endpointURL;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? payload;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? conditionalInput;

  List<int> connectionAccountIds;

  ScheduledNotificationFullResponseTemplateTypeEnum? templateType;

  List<ScheduledNotificationFullResponseGroupedTypesEnum> groupedTypes;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ScheduledNotificationFullResponse &&
    other.scheduledNotificationId == scheduledNotificationId &&
    other.active == active &&
    other.status == status &&
    other.type == type &&
    other.name == name &&
    other.message == message &&
    other.groupingId == groupingId &&
    other.scheduledDate == scheduledDate &&
    other.startDate == startDate &&
    other.endDate == endDate &&
    other.owner == owner &&
    other.billableEntity == billableEntity &&
    other.contentId == contentId &&
    other.contentName == contentName &&
    other.contentType == contentType &&
    other.parentId == parentId &&
    other.parentType == parentType &&
    other.application == application &&
    other.targetId == targetId &&
    other.targetName == targetName &&
    other.targetType == targetType &&
    other.targetParams == targetParams &&
    other.deliverEstimate == deliverEstimate &&
    other.deliverCount == deliverCount &&
    other.deliverTotal == deliverTotal &&
    other.deliverFailed == deliverFailed &&
    other.processingTime == processingTime &&
    other.sendingTime == sendingTime &&
    other.updated == updated &&
    other.created == created &&
    other.cronExpression == cronExpression &&
    other.endpointURL == endpointURL &&
    other.payload == payload &&
    other.conditionalInput == conditionalInput &&
    _deepEquality.equals(other.connectionAccountIds, connectionAccountIds) &&
    other.templateType == templateType &&
    _deepEquality.equals(other.groupedTypes, groupedTypes);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (scheduledNotificationId == null ? 0 : scheduledNotificationId!.hashCode) +
    (active == null ? 0 : active!.hashCode) +
    (status == null ? 0 : status!.hashCode) +
    (type == null ? 0 : type!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (message == null ? 0 : message!.hashCode) +
    (groupingId == null ? 0 : groupingId!.hashCode) +
    (scheduledDate == null ? 0 : scheduledDate!.hashCode) +
    (startDate == null ? 0 : startDate!.hashCode) +
    (endDate == null ? 0 : endDate!.hashCode) +
    (owner == null ? 0 : owner!.hashCode) +
    (billableEntity == null ? 0 : billableEntity!.hashCode) +
    (contentId == null ? 0 : contentId!.hashCode) +
    (contentName == null ? 0 : contentName!.hashCode) +
    (contentType == null ? 0 : contentType!.hashCode) +
    (parentId == null ? 0 : parentId!.hashCode) +
    (parentType == null ? 0 : parentType!.hashCode) +
    (application == null ? 0 : application!.hashCode) +
    (targetId == null ? 0 : targetId!.hashCode) +
    (targetName == null ? 0 : targetName!.hashCode) +
    (targetType == null ? 0 : targetType!.hashCode) +
    (targetParams == null ? 0 : targetParams!.hashCode) +
    (deliverEstimate == null ? 0 : deliverEstimate!.hashCode) +
    (deliverCount == null ? 0 : deliverCount!.hashCode) +
    (deliverTotal == null ? 0 : deliverTotal!.hashCode) +
    (deliverFailed == null ? 0 : deliverFailed!.hashCode) +
    (processingTime == null ? 0 : processingTime!.hashCode) +
    (sendingTime == null ? 0 : sendingTime!.hashCode) +
    (updated == null ? 0 : updated!.hashCode) +
    (created == null ? 0 : created!.hashCode) +
    (cronExpression == null ? 0 : cronExpression!.hashCode) +
    (endpointURL == null ? 0 : endpointURL!.hashCode) +
    (payload == null ? 0 : payload!.hashCode) +
    (conditionalInput == null ? 0 : conditionalInput!.hashCode) +
    (connectionAccountIds.hashCode) +
    (templateType == null ? 0 : templateType!.hashCode) +
    (groupedTypes.hashCode);

  @override
  String toString() => 'ScheduledNotificationFullResponse[scheduledNotificationId=$scheduledNotificationId, active=$active, status=$status, type=$type, name=$name, message=$message, groupingId=$groupingId, scheduledDate=$scheduledDate, startDate=$startDate, endDate=$endDate, owner=$owner, billableEntity=$billableEntity, contentId=$contentId, contentName=$contentName, contentType=$contentType, parentId=$parentId, parentType=$parentType, application=$application, targetId=$targetId, targetName=$targetName, targetType=$targetType, targetParams=$targetParams, deliverEstimate=$deliverEstimate, deliverCount=$deliverCount, deliverTotal=$deliverTotal, deliverFailed=$deliverFailed, processingTime=$processingTime, sendingTime=$sendingTime, updated=$updated, created=$created, cronExpression=$cronExpression, endpointURL=$endpointURL, payload=$payload, conditionalInput=$conditionalInput, connectionAccountIds=$connectionAccountIds, templateType=$templateType, groupedTypes=$groupedTypes]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.scheduledNotificationId != null) {
      json[r'scheduledNotificationId'] = this.scheduledNotificationId;
    } else {
      json[r'scheduledNotificationId'] = null;
    }
    if (this.active != null) {
      json[r'active'] = this.active;
    } else {
      json[r'active'] = null;
    }
    if (this.status != null) {
      json[r'status'] = this.status;
    } else {
      json[r'status'] = null;
    }
    if (this.type != null) {
      json[r'type'] = this.type;
    } else {
      json[r'type'] = null;
    }
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.message != null) {
      json[r'message'] = this.message;
    } else {
      json[r'message'] = null;
    }
    if (this.groupingId != null) {
      json[r'groupingId'] = this.groupingId;
    } else {
      json[r'groupingId'] = null;
    }
    if (this.scheduledDate != null) {
      json[r'scheduledDate'] = this.scheduledDate;
    } else {
      json[r'scheduledDate'] = null;
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
    if (this.owner != null) {
      json[r'owner'] = this.owner;
    } else {
      json[r'owner'] = null;
    }
    if (this.billableEntity != null) {
      json[r'billableEntity'] = this.billableEntity;
    } else {
      json[r'billableEntity'] = null;
    }
    if (this.contentId != null) {
      json[r'contentId'] = this.contentId;
    } else {
      json[r'contentId'] = null;
    }
    if (this.contentName != null) {
      json[r'contentName'] = this.contentName;
    } else {
      json[r'contentName'] = null;
    }
    if (this.contentType != null) {
      json[r'contentType'] = this.contentType;
    } else {
      json[r'contentType'] = null;
    }
    if (this.parentId != null) {
      json[r'parentId'] = this.parentId;
    } else {
      json[r'parentId'] = null;
    }
    if (this.parentType != null) {
      json[r'parentType'] = this.parentType;
    } else {
      json[r'parentType'] = null;
    }
    if (this.application != null) {
      json[r'application'] = this.application;
    } else {
      json[r'application'] = null;
    }
    if (this.targetId != null) {
      json[r'targetId'] = this.targetId;
    } else {
      json[r'targetId'] = null;
    }
    if (this.targetName != null) {
      json[r'targetName'] = this.targetName;
    } else {
      json[r'targetName'] = null;
    }
    if (this.targetType != null) {
      json[r'targetType'] = this.targetType;
    } else {
      json[r'targetType'] = null;
    }
    if (this.targetParams != null) {
      json[r'targetParams'] = this.targetParams;
    } else {
      json[r'targetParams'] = null;
    }
    if (this.deliverEstimate != null) {
      json[r'deliverEstimate'] = this.deliverEstimate;
    } else {
      json[r'deliverEstimate'] = null;
    }
    if (this.deliverCount != null) {
      json[r'deliverCount'] = this.deliverCount;
    } else {
      json[r'deliverCount'] = null;
    }
    if (this.deliverTotal != null) {
      json[r'deliverTotal'] = this.deliverTotal;
    } else {
      json[r'deliverTotal'] = null;
    }
    if (this.deliverFailed != null) {
      json[r'deliverFailed'] = this.deliverFailed;
    } else {
      json[r'deliverFailed'] = null;
    }
    if (this.processingTime != null) {
      json[r'processingTime'] = this.processingTime;
    } else {
      json[r'processingTime'] = null;
    }
    if (this.sendingTime != null) {
      json[r'sendingTime'] = this.sendingTime;
    } else {
      json[r'sendingTime'] = null;
    }
    if (this.updated != null) {
      json[r'updated'] = this.updated;
    } else {
      json[r'updated'] = null;
    }
    if (this.created != null) {
      json[r'created'] = this.created;
    } else {
      json[r'created'] = null;
    }
    if (this.cronExpression != null) {
      json[r'cronExpression'] = this.cronExpression;
    } else {
      json[r'cronExpression'] = null;
    }
    if (this.endpointURL != null) {
      json[r'endpointURL'] = this.endpointURL;
    } else {
      json[r'endpointURL'] = null;
    }
    if (this.payload != null) {
      json[r'payload'] = this.payload;
    } else {
      json[r'payload'] = null;
    }
    if (this.conditionalInput != null) {
      json[r'conditionalInput'] = this.conditionalInput;
    } else {
      json[r'conditionalInput'] = null;
    }
      json[r'connectionAccountIds'] = this.connectionAccountIds;
    if (this.templateType != null) {
      json[r'templateType'] = this.templateType;
    } else {
      json[r'templateType'] = null;
    }
      json[r'groupedTypes'] = this.groupedTypes;
    return json;
  }

  /// Returns a new [ScheduledNotificationFullResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ScheduledNotificationFullResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ScheduledNotificationFullResponse[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ScheduledNotificationFullResponse[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ScheduledNotificationFullResponse(
        scheduledNotificationId: mapValueOfType<int>(json, r'scheduledNotificationId'),
        active: mapValueOfType<bool>(json, r'active'),
        status: ScheduledNotificationFullResponseStatusEnum.fromJson(json[r'status']),
        type: ScheduledNotificationFullResponseTypeEnum.fromJson(json[r'type']),
        name: mapValueOfType<String>(json, r'name'),
        message: mapValueOfType<String>(json, r'message'),
        groupingId: mapValueOfType<String>(json, r'groupingId'),
        scheduledDate: mapValueOfType<int>(json, r'scheduledDate'),
        startDate: mapValueOfType<int>(json, r'startDate'),
        endDate: mapValueOfType<int>(json, r'endDate'),
        owner: AccountShortResponse.fromJson(json[r'owner']),
        billableEntity: BillableEntityShortResponse.fromJson(json[r'billableEntity']),
        contentId: mapValueOfType<int>(json, r'contentId'),
        contentName: mapValueOfType<String>(json, r'contentName'),
        contentType: mapValueOfType<String>(json, r'contentType'),
        parentId: mapValueOfType<int>(json, r'parentId'),
        parentType: mapValueOfType<String>(json, r'parentType'),
        application: ApplicationMiniResponse.fromJson(json[r'application']),
        targetId: mapValueOfType<int>(json, r'targetId'),
        targetName: mapValueOfType<String>(json, r'targetName'),
        targetType: mapValueOfType<String>(json, r'targetType'),
        targetParams: mapValueOfType<String>(json, r'targetParams'),
        deliverEstimate: mapValueOfType<int>(json, r'deliverEstimate'),
        deliverCount: mapValueOfType<int>(json, r'deliverCount'),
        deliverTotal: mapValueOfType<int>(json, r'deliverTotal'),
        deliverFailed: mapValueOfType<int>(json, r'deliverFailed'),
        processingTime: mapValueOfType<int>(json, r'processingTime'),
        sendingTime: mapValueOfType<int>(json, r'sendingTime'),
        updated: mapValueOfType<int>(json, r'updated'),
        created: mapValueOfType<int>(json, r'created'),
        cronExpression: mapValueOfType<String>(json, r'cronExpression'),
        endpointURL: mapValueOfType<String>(json, r'endpointURL'),
        payload: mapValueOfType<String>(json, r'payload'),
        conditionalInput: mapValueOfType<String>(json, r'conditionalInput'),
        connectionAccountIds: json[r'connectionAccountIds'] is Iterable
            ? (json[r'connectionAccountIds'] as Iterable).cast<int>().toList(growable: false)
            : const [],
        templateType: ScheduledNotificationFullResponseTemplateTypeEnum.fromJson(json[r'templateType']),
        groupedTypes: ScheduledNotificationFullResponseGroupedTypesEnum.listFromJson(json[r'groupedTypes']),
      );
    }
    return null;
  }

  static List<ScheduledNotificationFullResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ScheduledNotificationFullResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ScheduledNotificationFullResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ScheduledNotificationFullResponse> mapFromJson(dynamic json) {
    final map = <String, ScheduledNotificationFullResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ScheduledNotificationFullResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ScheduledNotificationFullResponse-objects as value to a dart map
  static Map<String, List<ScheduledNotificationFullResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ScheduledNotificationFullResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ScheduledNotificationFullResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}


class ScheduledNotificationFullResponseStatusEnum {
  /// Instantiate a new enum with the provided [value].
  const ScheduledNotificationFullResponseStatusEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const NEW = ScheduledNotificationFullResponseStatusEnum._(r'NEW');
  static const ERROR = ScheduledNotificationFullResponseStatusEnum._(r'ERROR');
  static const COMPLETE = ScheduledNotificationFullResponseStatusEnum._(r'COMPLETE');
  static const PROCESSING = ScheduledNotificationFullResponseStatusEnum._(r'PROCESSING');
  static const TEMPLATE = ScheduledNotificationFullResponseStatusEnum._(r'TEMPLATE');

  /// List of all possible values in this [enum][ScheduledNotificationFullResponseStatusEnum].
  static const values = <ScheduledNotificationFullResponseStatusEnum>[
    NEW,
    ERROR,
    COMPLETE,
    PROCESSING,
    TEMPLATE,
  ];

  static ScheduledNotificationFullResponseStatusEnum? fromJson(dynamic value) => ScheduledNotificationFullResponseStatusEnumTypeTransformer().decode(value);

  static List<ScheduledNotificationFullResponseStatusEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ScheduledNotificationFullResponseStatusEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ScheduledNotificationFullResponseStatusEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [ScheduledNotificationFullResponseStatusEnum] to String,
/// and [decode] dynamic data back to [ScheduledNotificationFullResponseStatusEnum].
class ScheduledNotificationFullResponseStatusEnumTypeTransformer {
  factory ScheduledNotificationFullResponseStatusEnumTypeTransformer() => _instance ??= const ScheduledNotificationFullResponseStatusEnumTypeTransformer._();

  const ScheduledNotificationFullResponseStatusEnumTypeTransformer._();

  String encode(ScheduledNotificationFullResponseStatusEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a ScheduledNotificationFullResponseStatusEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ScheduledNotificationFullResponseStatusEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'NEW': return ScheduledNotificationFullResponseStatusEnum.NEW;
        case r'ERROR': return ScheduledNotificationFullResponseStatusEnum.ERROR;
        case r'COMPLETE': return ScheduledNotificationFullResponseStatusEnum.COMPLETE;
        case r'PROCESSING': return ScheduledNotificationFullResponseStatusEnum.PROCESSING;
        case r'TEMPLATE': return ScheduledNotificationFullResponseStatusEnum.TEMPLATE;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [ScheduledNotificationFullResponseStatusEnumTypeTransformer] instance.
  static ScheduledNotificationFullResponseStatusEnumTypeTransformer? _instance;
}



class ScheduledNotificationFullResponseTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const ScheduledNotificationFullResponseTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const HTTP = ScheduledNotificationFullResponseTypeEnum._(r'HTTP');
  static const SAVE = ScheduledNotificationFullResponseTypeEnum._(r'SAVE');
  static const EMAIL = ScheduledNotificationFullResponseTypeEnum._(r'EMAIL');
  static const SMS = ScheduledNotificationFullResponseTypeEnum._(r'SMS');
  static const APNS = ScheduledNotificationFullResponseTypeEnum._(r'APNS');
  static const GCM = ScheduledNotificationFullResponseTypeEnum._(r'GCM');
  static const PUSH = ScheduledNotificationFullResponseTypeEnum._(r'PUSH');
  static const MOBILE_NOTIFICATION = ScheduledNotificationFullResponseTypeEnum._(r'MOBILE_NOTIFICATION');

  /// List of all possible values in this [enum][ScheduledNotificationFullResponseTypeEnum].
  static const values = <ScheduledNotificationFullResponseTypeEnum>[
    HTTP,
    SAVE,
    EMAIL,
    SMS,
    APNS,
    GCM,
    PUSH,
    MOBILE_NOTIFICATION,
  ];

  static ScheduledNotificationFullResponseTypeEnum? fromJson(dynamic value) => ScheduledNotificationFullResponseTypeEnumTypeTransformer().decode(value);

  static List<ScheduledNotificationFullResponseTypeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ScheduledNotificationFullResponseTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ScheduledNotificationFullResponseTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [ScheduledNotificationFullResponseTypeEnum] to String,
/// and [decode] dynamic data back to [ScheduledNotificationFullResponseTypeEnum].
class ScheduledNotificationFullResponseTypeEnumTypeTransformer {
  factory ScheduledNotificationFullResponseTypeEnumTypeTransformer() => _instance ??= const ScheduledNotificationFullResponseTypeEnumTypeTransformer._();

  const ScheduledNotificationFullResponseTypeEnumTypeTransformer._();

  String encode(ScheduledNotificationFullResponseTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a ScheduledNotificationFullResponseTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ScheduledNotificationFullResponseTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'HTTP': return ScheduledNotificationFullResponseTypeEnum.HTTP;
        case r'SAVE': return ScheduledNotificationFullResponseTypeEnum.SAVE;
        case r'EMAIL': return ScheduledNotificationFullResponseTypeEnum.EMAIL;
        case r'SMS': return ScheduledNotificationFullResponseTypeEnum.SMS;
        case r'APNS': return ScheduledNotificationFullResponseTypeEnum.APNS;
        case r'GCM': return ScheduledNotificationFullResponseTypeEnum.GCM;
        case r'PUSH': return ScheduledNotificationFullResponseTypeEnum.PUSH;
        case r'MOBILE_NOTIFICATION': return ScheduledNotificationFullResponseTypeEnum.MOBILE_NOTIFICATION;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [ScheduledNotificationFullResponseTypeEnumTypeTransformer] instance.
  static ScheduledNotificationFullResponseTypeEnumTypeTransformer? _instance;
}



class ScheduledNotificationFullResponseTemplateTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const ScheduledNotificationFullResponseTemplateTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const REPORTING = ScheduledNotificationFullResponseTemplateTypeEnum._(r'REPORTING');
  static const ACHIEVEMENT_OWNER = ScheduledNotificationFullResponseTemplateTypeEnum._(r'ACHIEVEMENT_OWNER');
  static const ACHIEVEMENT_TRIGGER = ScheduledNotificationFullResponseTemplateTypeEnum._(r'ACHIEVEMENT_TRIGGER');
  static const GEOFENCE_OWNER = ScheduledNotificationFullResponseTemplateTypeEnum._(r'GEOFENCE_OWNER');
  static const GEOFENCE_TARGET = ScheduledNotificationFullResponseTemplateTypeEnum._(r'GEOFENCE_TARGET');
  static const GEOFENCE_TRIGGER = ScheduledNotificationFullResponseTemplateTypeEnum._(r'GEOFENCE_TRIGGER');
  static const GEOFENCE_HTTP_CALL = ScheduledNotificationFullResponseTemplateTypeEnum._(r'GEOFENCE_HTTP_CALL');

  /// List of all possible values in this [enum][ScheduledNotificationFullResponseTemplateTypeEnum].
  static const values = <ScheduledNotificationFullResponseTemplateTypeEnum>[
    REPORTING,
    ACHIEVEMENT_OWNER,
    ACHIEVEMENT_TRIGGER,
    GEOFENCE_OWNER,
    GEOFENCE_TARGET,
    GEOFENCE_TRIGGER,
    GEOFENCE_HTTP_CALL,
  ];

  static ScheduledNotificationFullResponseTemplateTypeEnum? fromJson(dynamic value) => ScheduledNotificationFullResponseTemplateTypeEnumTypeTransformer().decode(value);

  static List<ScheduledNotificationFullResponseTemplateTypeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ScheduledNotificationFullResponseTemplateTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ScheduledNotificationFullResponseTemplateTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [ScheduledNotificationFullResponseTemplateTypeEnum] to String,
/// and [decode] dynamic data back to [ScheduledNotificationFullResponseTemplateTypeEnum].
class ScheduledNotificationFullResponseTemplateTypeEnumTypeTransformer {
  factory ScheduledNotificationFullResponseTemplateTypeEnumTypeTransformer() => _instance ??= const ScheduledNotificationFullResponseTemplateTypeEnumTypeTransformer._();

  const ScheduledNotificationFullResponseTemplateTypeEnumTypeTransformer._();

  String encode(ScheduledNotificationFullResponseTemplateTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a ScheduledNotificationFullResponseTemplateTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ScheduledNotificationFullResponseTemplateTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'REPORTING': return ScheduledNotificationFullResponseTemplateTypeEnum.REPORTING;
        case r'ACHIEVEMENT_OWNER': return ScheduledNotificationFullResponseTemplateTypeEnum.ACHIEVEMENT_OWNER;
        case r'ACHIEVEMENT_TRIGGER': return ScheduledNotificationFullResponseTemplateTypeEnum.ACHIEVEMENT_TRIGGER;
        case r'GEOFENCE_OWNER': return ScheduledNotificationFullResponseTemplateTypeEnum.GEOFENCE_OWNER;
        case r'GEOFENCE_TARGET': return ScheduledNotificationFullResponseTemplateTypeEnum.GEOFENCE_TARGET;
        case r'GEOFENCE_TRIGGER': return ScheduledNotificationFullResponseTemplateTypeEnum.GEOFENCE_TRIGGER;
        case r'GEOFENCE_HTTP_CALL': return ScheduledNotificationFullResponseTemplateTypeEnum.GEOFENCE_HTTP_CALL;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [ScheduledNotificationFullResponseTemplateTypeEnumTypeTransformer] instance.
  static ScheduledNotificationFullResponseTemplateTypeEnumTypeTransformer? _instance;
}



class ScheduledNotificationFullResponseGroupedTypesEnum {
  /// Instantiate a new enum with the provided [value].
  const ScheduledNotificationFullResponseGroupedTypesEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const HTTP = ScheduledNotificationFullResponseGroupedTypesEnum._(r'HTTP');
  static const SAVE = ScheduledNotificationFullResponseGroupedTypesEnum._(r'SAVE');
  static const EMAIL = ScheduledNotificationFullResponseGroupedTypesEnum._(r'EMAIL');
  static const SMS = ScheduledNotificationFullResponseGroupedTypesEnum._(r'SMS');
  static const APNS = ScheduledNotificationFullResponseGroupedTypesEnum._(r'APNS');
  static const GCM = ScheduledNotificationFullResponseGroupedTypesEnum._(r'GCM');
  static const PUSH = ScheduledNotificationFullResponseGroupedTypesEnum._(r'PUSH');
  static const MOBILE_NOTIFICATION = ScheduledNotificationFullResponseGroupedTypesEnum._(r'MOBILE_NOTIFICATION');

  /// List of all possible values in this [enum][ScheduledNotificationFullResponseGroupedTypesEnum].
  static const values = <ScheduledNotificationFullResponseGroupedTypesEnum>[
    HTTP,
    SAVE,
    EMAIL,
    SMS,
    APNS,
    GCM,
    PUSH,
    MOBILE_NOTIFICATION,
  ];

  static ScheduledNotificationFullResponseGroupedTypesEnum? fromJson(dynamic value) => ScheduledNotificationFullResponseGroupedTypesEnumTypeTransformer().decode(value);

  static List<ScheduledNotificationFullResponseGroupedTypesEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ScheduledNotificationFullResponseGroupedTypesEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ScheduledNotificationFullResponseGroupedTypesEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [ScheduledNotificationFullResponseGroupedTypesEnum] to String,
/// and [decode] dynamic data back to [ScheduledNotificationFullResponseGroupedTypesEnum].
class ScheduledNotificationFullResponseGroupedTypesEnumTypeTransformer {
  factory ScheduledNotificationFullResponseGroupedTypesEnumTypeTransformer() => _instance ??= const ScheduledNotificationFullResponseGroupedTypesEnumTypeTransformer._();

  const ScheduledNotificationFullResponseGroupedTypesEnumTypeTransformer._();

  String encode(ScheduledNotificationFullResponseGroupedTypesEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a ScheduledNotificationFullResponseGroupedTypesEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ScheduledNotificationFullResponseGroupedTypesEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'HTTP': return ScheduledNotificationFullResponseGroupedTypesEnum.HTTP;
        case r'SAVE': return ScheduledNotificationFullResponseGroupedTypesEnum.SAVE;
        case r'EMAIL': return ScheduledNotificationFullResponseGroupedTypesEnum.EMAIL;
        case r'SMS': return ScheduledNotificationFullResponseGroupedTypesEnum.SMS;
        case r'APNS': return ScheduledNotificationFullResponseGroupedTypesEnum.APNS;
        case r'GCM': return ScheduledNotificationFullResponseGroupedTypesEnum.GCM;
        case r'PUSH': return ScheduledNotificationFullResponseGroupedTypesEnum.PUSH;
        case r'MOBILE_NOTIFICATION': return ScheduledNotificationFullResponseGroupedTypesEnum.MOBILE_NOTIFICATION;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [ScheduledNotificationFullResponseGroupedTypesEnumTypeTransformer] instance.
  static ScheduledNotificationFullResponseGroupedTypesEnumTypeTransformer? _instance;
}


