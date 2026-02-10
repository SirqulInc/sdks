//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class TaskResponse {
  /// Returns a new [TaskResponse] instance.
  TaskResponse({
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
    this.taskId,
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

  TaskResponseStatusEnum? status;

  TaskResponseTypeEnum? type;

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

  TaskResponseTemplateTypeEnum? templateType;

  List<TaskResponseGroupedTypesEnum> groupedTypes;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? taskId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TaskResponse &&
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
    _deepEquality.equals(other.groupedTypes, groupedTypes) &&
    other.taskId == taskId;

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
    (groupedTypes.hashCode) +
    (taskId == null ? 0 : taskId!.hashCode);

  @override
  String toString() => 'TaskResponse[scheduledNotificationId=$scheduledNotificationId, active=$active, status=$status, type=$type, name=$name, message=$message, groupingId=$groupingId, scheduledDate=$scheduledDate, startDate=$startDate, endDate=$endDate, owner=$owner, billableEntity=$billableEntity, contentId=$contentId, contentName=$contentName, contentType=$contentType, parentId=$parentId, parentType=$parentType, application=$application, targetId=$targetId, targetName=$targetName, targetType=$targetType, targetParams=$targetParams, deliverEstimate=$deliverEstimate, deliverCount=$deliverCount, deliverTotal=$deliverTotal, deliverFailed=$deliverFailed, processingTime=$processingTime, sendingTime=$sendingTime, updated=$updated, created=$created, cronExpression=$cronExpression, endpointURL=$endpointURL, payload=$payload, conditionalInput=$conditionalInput, connectionAccountIds=$connectionAccountIds, templateType=$templateType, groupedTypes=$groupedTypes, taskId=$taskId]';

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
    if (this.taskId != null) {
      json[r'taskId'] = this.taskId;
    } else {
      json[r'taskId'] = null;
    }
    return json;
  }

  /// Returns a new [TaskResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TaskResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "TaskResponse[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "TaskResponse[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return TaskResponse(
        scheduledNotificationId: mapValueOfType<int>(json, r'scheduledNotificationId'),
        active: mapValueOfType<bool>(json, r'active'),
        status: TaskResponseStatusEnum.fromJson(json[r'status']),
        type: TaskResponseTypeEnum.fromJson(json[r'type']),
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
        templateType: TaskResponseTemplateTypeEnum.fromJson(json[r'templateType']),
        groupedTypes: TaskResponseGroupedTypesEnum.listFromJson(json[r'groupedTypes']),
        taskId: mapValueOfType<int>(json, r'taskId'),
      );
    }
    return null;
  }

  static List<TaskResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TaskResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TaskResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TaskResponse> mapFromJson(dynamic json) {
    final map = <String, TaskResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TaskResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TaskResponse-objects as value to a dart map
  static Map<String, List<TaskResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<TaskResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = TaskResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}


class TaskResponseStatusEnum {
  /// Instantiate a new enum with the provided [value].
  const TaskResponseStatusEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const NEW = TaskResponseStatusEnum._(r'NEW');
  static const ERROR = TaskResponseStatusEnum._(r'ERROR');
  static const COMPLETE = TaskResponseStatusEnum._(r'COMPLETE');
  static const PROCESSING = TaskResponseStatusEnum._(r'PROCESSING');
  static const TEMPLATE = TaskResponseStatusEnum._(r'TEMPLATE');

  /// List of all possible values in this [enum][TaskResponseStatusEnum].
  static const values = <TaskResponseStatusEnum>[
    NEW,
    ERROR,
    COMPLETE,
    PROCESSING,
    TEMPLATE,
  ];

  static TaskResponseStatusEnum? fromJson(dynamic value) => TaskResponseStatusEnumTypeTransformer().decode(value);

  static List<TaskResponseStatusEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TaskResponseStatusEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TaskResponseStatusEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [TaskResponseStatusEnum] to String,
/// and [decode] dynamic data back to [TaskResponseStatusEnum].
class TaskResponseStatusEnumTypeTransformer {
  factory TaskResponseStatusEnumTypeTransformer() => _instance ??= const TaskResponseStatusEnumTypeTransformer._();

  const TaskResponseStatusEnumTypeTransformer._();

  String encode(TaskResponseStatusEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a TaskResponseStatusEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  TaskResponseStatusEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'NEW': return TaskResponseStatusEnum.NEW;
        case r'ERROR': return TaskResponseStatusEnum.ERROR;
        case r'COMPLETE': return TaskResponseStatusEnum.COMPLETE;
        case r'PROCESSING': return TaskResponseStatusEnum.PROCESSING;
        case r'TEMPLATE': return TaskResponseStatusEnum.TEMPLATE;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [TaskResponseStatusEnumTypeTransformer] instance.
  static TaskResponseStatusEnumTypeTransformer? _instance;
}



class TaskResponseTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const TaskResponseTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const HTTP = TaskResponseTypeEnum._(r'HTTP');
  static const SAVE = TaskResponseTypeEnum._(r'SAVE');
  static const EMAIL = TaskResponseTypeEnum._(r'EMAIL');
  static const SMS = TaskResponseTypeEnum._(r'SMS');
  static const APNS = TaskResponseTypeEnum._(r'APNS');
  static const GCM = TaskResponseTypeEnum._(r'GCM');
  static const PUSH = TaskResponseTypeEnum._(r'PUSH');
  static const MOBILE_NOTIFICATION = TaskResponseTypeEnum._(r'MOBILE_NOTIFICATION');

  /// List of all possible values in this [enum][TaskResponseTypeEnum].
  static const values = <TaskResponseTypeEnum>[
    HTTP,
    SAVE,
    EMAIL,
    SMS,
    APNS,
    GCM,
    PUSH,
    MOBILE_NOTIFICATION,
  ];

  static TaskResponseTypeEnum? fromJson(dynamic value) => TaskResponseTypeEnumTypeTransformer().decode(value);

  static List<TaskResponseTypeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TaskResponseTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TaskResponseTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [TaskResponseTypeEnum] to String,
/// and [decode] dynamic data back to [TaskResponseTypeEnum].
class TaskResponseTypeEnumTypeTransformer {
  factory TaskResponseTypeEnumTypeTransformer() => _instance ??= const TaskResponseTypeEnumTypeTransformer._();

  const TaskResponseTypeEnumTypeTransformer._();

  String encode(TaskResponseTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a TaskResponseTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  TaskResponseTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'HTTP': return TaskResponseTypeEnum.HTTP;
        case r'SAVE': return TaskResponseTypeEnum.SAVE;
        case r'EMAIL': return TaskResponseTypeEnum.EMAIL;
        case r'SMS': return TaskResponseTypeEnum.SMS;
        case r'APNS': return TaskResponseTypeEnum.APNS;
        case r'GCM': return TaskResponseTypeEnum.GCM;
        case r'PUSH': return TaskResponseTypeEnum.PUSH;
        case r'MOBILE_NOTIFICATION': return TaskResponseTypeEnum.MOBILE_NOTIFICATION;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [TaskResponseTypeEnumTypeTransformer] instance.
  static TaskResponseTypeEnumTypeTransformer? _instance;
}



class TaskResponseTemplateTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const TaskResponseTemplateTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const REPORTING = TaskResponseTemplateTypeEnum._(r'REPORTING');
  static const ACHIEVEMENT_OWNER = TaskResponseTemplateTypeEnum._(r'ACHIEVEMENT_OWNER');
  static const ACHIEVEMENT_TRIGGER = TaskResponseTemplateTypeEnum._(r'ACHIEVEMENT_TRIGGER');
  static const GEOFENCE_OWNER = TaskResponseTemplateTypeEnum._(r'GEOFENCE_OWNER');
  static const GEOFENCE_TARGET = TaskResponseTemplateTypeEnum._(r'GEOFENCE_TARGET');
  static const GEOFENCE_TRIGGER = TaskResponseTemplateTypeEnum._(r'GEOFENCE_TRIGGER');
  static const GEOFENCE_HTTP_CALL = TaskResponseTemplateTypeEnum._(r'GEOFENCE_HTTP_CALL');

  /// List of all possible values in this [enum][TaskResponseTemplateTypeEnum].
  static const values = <TaskResponseTemplateTypeEnum>[
    REPORTING,
    ACHIEVEMENT_OWNER,
    ACHIEVEMENT_TRIGGER,
    GEOFENCE_OWNER,
    GEOFENCE_TARGET,
    GEOFENCE_TRIGGER,
    GEOFENCE_HTTP_CALL,
  ];

  static TaskResponseTemplateTypeEnum? fromJson(dynamic value) => TaskResponseTemplateTypeEnumTypeTransformer().decode(value);

  static List<TaskResponseTemplateTypeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TaskResponseTemplateTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TaskResponseTemplateTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [TaskResponseTemplateTypeEnum] to String,
/// and [decode] dynamic data back to [TaskResponseTemplateTypeEnum].
class TaskResponseTemplateTypeEnumTypeTransformer {
  factory TaskResponseTemplateTypeEnumTypeTransformer() => _instance ??= const TaskResponseTemplateTypeEnumTypeTransformer._();

  const TaskResponseTemplateTypeEnumTypeTransformer._();

  String encode(TaskResponseTemplateTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a TaskResponseTemplateTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  TaskResponseTemplateTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'REPORTING': return TaskResponseTemplateTypeEnum.REPORTING;
        case r'ACHIEVEMENT_OWNER': return TaskResponseTemplateTypeEnum.ACHIEVEMENT_OWNER;
        case r'ACHIEVEMENT_TRIGGER': return TaskResponseTemplateTypeEnum.ACHIEVEMENT_TRIGGER;
        case r'GEOFENCE_OWNER': return TaskResponseTemplateTypeEnum.GEOFENCE_OWNER;
        case r'GEOFENCE_TARGET': return TaskResponseTemplateTypeEnum.GEOFENCE_TARGET;
        case r'GEOFENCE_TRIGGER': return TaskResponseTemplateTypeEnum.GEOFENCE_TRIGGER;
        case r'GEOFENCE_HTTP_CALL': return TaskResponseTemplateTypeEnum.GEOFENCE_HTTP_CALL;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [TaskResponseTemplateTypeEnumTypeTransformer] instance.
  static TaskResponseTemplateTypeEnumTypeTransformer? _instance;
}



class TaskResponseGroupedTypesEnum {
  /// Instantiate a new enum with the provided [value].
  const TaskResponseGroupedTypesEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const HTTP = TaskResponseGroupedTypesEnum._(r'HTTP');
  static const SAVE = TaskResponseGroupedTypesEnum._(r'SAVE');
  static const EMAIL = TaskResponseGroupedTypesEnum._(r'EMAIL');
  static const SMS = TaskResponseGroupedTypesEnum._(r'SMS');
  static const APNS = TaskResponseGroupedTypesEnum._(r'APNS');
  static const GCM = TaskResponseGroupedTypesEnum._(r'GCM');
  static const PUSH = TaskResponseGroupedTypesEnum._(r'PUSH');
  static const MOBILE_NOTIFICATION = TaskResponseGroupedTypesEnum._(r'MOBILE_NOTIFICATION');

  /// List of all possible values in this [enum][TaskResponseGroupedTypesEnum].
  static const values = <TaskResponseGroupedTypesEnum>[
    HTTP,
    SAVE,
    EMAIL,
    SMS,
    APNS,
    GCM,
    PUSH,
    MOBILE_NOTIFICATION,
  ];

  static TaskResponseGroupedTypesEnum? fromJson(dynamic value) => TaskResponseGroupedTypesEnumTypeTransformer().decode(value);

  static List<TaskResponseGroupedTypesEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TaskResponseGroupedTypesEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TaskResponseGroupedTypesEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [TaskResponseGroupedTypesEnum] to String,
/// and [decode] dynamic data back to [TaskResponseGroupedTypesEnum].
class TaskResponseGroupedTypesEnumTypeTransformer {
  factory TaskResponseGroupedTypesEnumTypeTransformer() => _instance ??= const TaskResponseGroupedTypesEnumTypeTransformer._();

  const TaskResponseGroupedTypesEnumTypeTransformer._();

  String encode(TaskResponseGroupedTypesEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a TaskResponseGroupedTypesEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  TaskResponseGroupedTypesEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'HTTP': return TaskResponseGroupedTypesEnum.HTTP;
        case r'SAVE': return TaskResponseGroupedTypesEnum.SAVE;
        case r'EMAIL': return TaskResponseGroupedTypesEnum.EMAIL;
        case r'SMS': return TaskResponseGroupedTypesEnum.SMS;
        case r'APNS': return TaskResponseGroupedTypesEnum.APNS;
        case r'GCM': return TaskResponseGroupedTypesEnum.GCM;
        case r'PUSH': return TaskResponseGroupedTypesEnum.PUSH;
        case r'MOBILE_NOTIFICATION': return TaskResponseGroupedTypesEnum.MOBILE_NOTIFICATION;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [TaskResponseGroupedTypesEnumTypeTransformer] instance.
  static TaskResponseGroupedTypesEnumTypeTransformer? _instance;
}


