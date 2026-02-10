//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ScheduledNotification {
  /// Returns a new [ScheduledNotification] instance.
  ScheduledNotification({
    this.id,
    this.active,
    this.valid,
    this.owner,
    this.billableEntity,
    this.type,
    this.status,
    this.templateType,
    this.name,
    this.errorMessage,
    this.message,
    this.payload,
    this.contentName,
    this.contentId,
    this.contentType,
    this.parentId,
    this.parentType,
    this.application,
    this.connectionGroups = const [],
    this.accountIds = const {},
    this.audiences = const [],
    this.report,
    this.reportParams,
    this.endpointURL,
    this.lastActionDate,
    this.scheduledDate,
    this.startDate,
    this.endDate,
    this.cronExpression,
    this.deliverEstimate,
    this.deliverCount,
    this.deliverFailed,
    this.deliverTotal,
    this.deliverStart,
    this.deliverLimit,
    this.processingTime,
    this.sendingTime,
    this.groupingId,
    this.conditionalInput,
    this.conditionalCode,
    this.publicPermissions,
    this.userPermissions = const [],
    this.visibility,
    this.approvalStatus,
    this.contentAsset,
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
  BillableEntity? billableEntity;

  ScheduledNotificationTypeEnum? type;

  ScheduledNotificationStatusEnum? status;

  ScheduledNotificationTemplateTypeEnum? templateType;

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
  String? errorMessage;

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
  String? payload;

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
  int? contentId;

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
  Application? application;

  List<ConnectionGroup> connectionGroups;

  Set<int> accountIds;

  List<Audience> audiences;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  ReportDefinition? report;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? reportParams;

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
  DateTime? lastActionDate;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? scheduledDate;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? startDate;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? endDate;

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
  int? deliverFailed;

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
  int? deliverStart;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? deliverLimit;

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
  String? groupingId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? conditionalInput;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? conditionalCode;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Permissions? publicPermissions;

  List<UserPermissions> userPermissions;

  ScheduledNotificationVisibilityEnum? visibility;

  ScheduledNotificationApprovalStatusEnum? approvalStatus;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Asset? contentAsset;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ScheduledNotification &&
    other.id == id &&
    other.active == active &&
    other.valid == valid &&
    other.owner == owner &&
    other.billableEntity == billableEntity &&
    other.type == type &&
    other.status == status &&
    other.templateType == templateType &&
    other.name == name &&
    other.errorMessage == errorMessage &&
    other.message == message &&
    other.payload == payload &&
    other.contentName == contentName &&
    other.contentId == contentId &&
    other.contentType == contentType &&
    other.parentId == parentId &&
    other.parentType == parentType &&
    other.application == application &&
    _deepEquality.equals(other.connectionGroups, connectionGroups) &&
    _deepEquality.equals(other.accountIds, accountIds) &&
    _deepEquality.equals(other.audiences, audiences) &&
    other.report == report &&
    other.reportParams == reportParams &&
    other.endpointURL == endpointURL &&
    other.lastActionDate == lastActionDate &&
    other.scheduledDate == scheduledDate &&
    other.startDate == startDate &&
    other.endDate == endDate &&
    other.cronExpression == cronExpression &&
    other.deliverEstimate == deliverEstimate &&
    other.deliverCount == deliverCount &&
    other.deliverFailed == deliverFailed &&
    other.deliverTotal == deliverTotal &&
    other.deliverStart == deliverStart &&
    other.deliverLimit == deliverLimit &&
    other.processingTime == processingTime &&
    other.sendingTime == sendingTime &&
    other.groupingId == groupingId &&
    other.conditionalInput == conditionalInput &&
    other.conditionalCode == conditionalCode &&
    other.publicPermissions == publicPermissions &&
    _deepEquality.equals(other.userPermissions, userPermissions) &&
    other.visibility == visibility &&
    other.approvalStatus == approvalStatus &&
    other.contentAsset == contentAsset;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (active == null ? 0 : active!.hashCode) +
    (valid == null ? 0 : valid!.hashCode) +
    (owner == null ? 0 : owner!.hashCode) +
    (billableEntity == null ? 0 : billableEntity!.hashCode) +
    (type == null ? 0 : type!.hashCode) +
    (status == null ? 0 : status!.hashCode) +
    (templateType == null ? 0 : templateType!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (errorMessage == null ? 0 : errorMessage!.hashCode) +
    (message == null ? 0 : message!.hashCode) +
    (payload == null ? 0 : payload!.hashCode) +
    (contentName == null ? 0 : contentName!.hashCode) +
    (contentId == null ? 0 : contentId!.hashCode) +
    (contentType == null ? 0 : contentType!.hashCode) +
    (parentId == null ? 0 : parentId!.hashCode) +
    (parentType == null ? 0 : parentType!.hashCode) +
    (application == null ? 0 : application!.hashCode) +
    (connectionGroups.hashCode) +
    (accountIds.hashCode) +
    (audiences.hashCode) +
    (report == null ? 0 : report!.hashCode) +
    (reportParams == null ? 0 : reportParams!.hashCode) +
    (endpointURL == null ? 0 : endpointURL!.hashCode) +
    (lastActionDate == null ? 0 : lastActionDate!.hashCode) +
    (scheduledDate == null ? 0 : scheduledDate!.hashCode) +
    (startDate == null ? 0 : startDate!.hashCode) +
    (endDate == null ? 0 : endDate!.hashCode) +
    (cronExpression == null ? 0 : cronExpression!.hashCode) +
    (deliverEstimate == null ? 0 : deliverEstimate!.hashCode) +
    (deliverCount == null ? 0 : deliverCount!.hashCode) +
    (deliverFailed == null ? 0 : deliverFailed!.hashCode) +
    (deliverTotal == null ? 0 : deliverTotal!.hashCode) +
    (deliverStart == null ? 0 : deliverStart!.hashCode) +
    (deliverLimit == null ? 0 : deliverLimit!.hashCode) +
    (processingTime == null ? 0 : processingTime!.hashCode) +
    (sendingTime == null ? 0 : sendingTime!.hashCode) +
    (groupingId == null ? 0 : groupingId!.hashCode) +
    (conditionalInput == null ? 0 : conditionalInput!.hashCode) +
    (conditionalCode == null ? 0 : conditionalCode!.hashCode) +
    (publicPermissions == null ? 0 : publicPermissions!.hashCode) +
    (userPermissions.hashCode) +
    (visibility == null ? 0 : visibility!.hashCode) +
    (approvalStatus == null ? 0 : approvalStatus!.hashCode) +
    (contentAsset == null ? 0 : contentAsset!.hashCode);

  @override
  String toString() => 'ScheduledNotification[id=$id, active=$active, valid=$valid, owner=$owner, billableEntity=$billableEntity, type=$type, status=$status, templateType=$templateType, name=$name, errorMessage=$errorMessage, message=$message, payload=$payload, contentName=$contentName, contentId=$contentId, contentType=$contentType, parentId=$parentId, parentType=$parentType, application=$application, connectionGroups=$connectionGroups, accountIds=$accountIds, audiences=$audiences, report=$report, reportParams=$reportParams, endpointURL=$endpointURL, lastActionDate=$lastActionDate, scheduledDate=$scheduledDate, startDate=$startDate, endDate=$endDate, cronExpression=$cronExpression, deliverEstimate=$deliverEstimate, deliverCount=$deliverCount, deliverFailed=$deliverFailed, deliverTotal=$deliverTotal, deliverStart=$deliverStart, deliverLimit=$deliverLimit, processingTime=$processingTime, sendingTime=$sendingTime, groupingId=$groupingId, conditionalInput=$conditionalInput, conditionalCode=$conditionalCode, publicPermissions=$publicPermissions, userPermissions=$userPermissions, visibility=$visibility, approvalStatus=$approvalStatus, contentAsset=$contentAsset]';

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
    if (this.billableEntity != null) {
      json[r'billableEntity'] = this.billableEntity;
    } else {
      json[r'billableEntity'] = null;
    }
    if (this.type != null) {
      json[r'type'] = this.type;
    } else {
      json[r'type'] = null;
    }
    if (this.status != null) {
      json[r'status'] = this.status;
    } else {
      json[r'status'] = null;
    }
    if (this.templateType != null) {
      json[r'templateType'] = this.templateType;
    } else {
      json[r'templateType'] = null;
    }
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.errorMessage != null) {
      json[r'errorMessage'] = this.errorMessage;
    } else {
      json[r'errorMessage'] = null;
    }
    if (this.message != null) {
      json[r'message'] = this.message;
    } else {
      json[r'message'] = null;
    }
    if (this.payload != null) {
      json[r'payload'] = this.payload;
    } else {
      json[r'payload'] = null;
    }
    if (this.contentName != null) {
      json[r'contentName'] = this.contentName;
    } else {
      json[r'contentName'] = null;
    }
    if (this.contentId != null) {
      json[r'contentId'] = this.contentId;
    } else {
      json[r'contentId'] = null;
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
      json[r'connectionGroups'] = this.connectionGroups;
      json[r'accountIds'] = this.accountIds.toList(growable: false);
      json[r'audiences'] = this.audiences;
    if (this.report != null) {
      json[r'report'] = this.report;
    } else {
      json[r'report'] = null;
    }
    if (this.reportParams != null) {
      json[r'reportParams'] = this.reportParams;
    } else {
      json[r'reportParams'] = null;
    }
    if (this.endpointURL != null) {
      json[r'endpointURL'] = this.endpointURL;
    } else {
      json[r'endpointURL'] = null;
    }
    if (this.lastActionDate != null) {
      json[r'lastActionDate'] = this.lastActionDate!.toUtc().toIso8601String();
    } else {
      json[r'lastActionDate'] = null;
    }
    if (this.scheduledDate != null) {
      json[r'scheduledDate'] = this.scheduledDate!.toUtc().toIso8601String();
    } else {
      json[r'scheduledDate'] = null;
    }
    if (this.startDate != null) {
      json[r'startDate'] = this.startDate!.toUtc().toIso8601String();
    } else {
      json[r'startDate'] = null;
    }
    if (this.endDate != null) {
      json[r'endDate'] = this.endDate!.toUtc().toIso8601String();
    } else {
      json[r'endDate'] = null;
    }
    if (this.cronExpression != null) {
      json[r'cronExpression'] = this.cronExpression;
    } else {
      json[r'cronExpression'] = null;
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
    if (this.deliverFailed != null) {
      json[r'deliverFailed'] = this.deliverFailed;
    } else {
      json[r'deliverFailed'] = null;
    }
    if (this.deliverTotal != null) {
      json[r'deliverTotal'] = this.deliverTotal;
    } else {
      json[r'deliverTotal'] = null;
    }
    if (this.deliverStart != null) {
      json[r'deliverStart'] = this.deliverStart;
    } else {
      json[r'deliverStart'] = null;
    }
    if (this.deliverLimit != null) {
      json[r'deliverLimit'] = this.deliverLimit;
    } else {
      json[r'deliverLimit'] = null;
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
    if (this.groupingId != null) {
      json[r'groupingId'] = this.groupingId;
    } else {
      json[r'groupingId'] = null;
    }
    if (this.conditionalInput != null) {
      json[r'conditionalInput'] = this.conditionalInput;
    } else {
      json[r'conditionalInput'] = null;
    }
    if (this.conditionalCode != null) {
      json[r'conditionalCode'] = this.conditionalCode;
    } else {
      json[r'conditionalCode'] = null;
    }
    if (this.publicPermissions != null) {
      json[r'publicPermissions'] = this.publicPermissions;
    } else {
      json[r'publicPermissions'] = null;
    }
      json[r'userPermissions'] = this.userPermissions;
    if (this.visibility != null) {
      json[r'visibility'] = this.visibility;
    } else {
      json[r'visibility'] = null;
    }
    if (this.approvalStatus != null) {
      json[r'approvalStatus'] = this.approvalStatus;
    } else {
      json[r'approvalStatus'] = null;
    }
    if (this.contentAsset != null) {
      json[r'contentAsset'] = this.contentAsset;
    } else {
      json[r'contentAsset'] = null;
    }
    return json;
  }

  /// Returns a new [ScheduledNotification] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ScheduledNotification? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ScheduledNotification[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ScheduledNotification[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ScheduledNotification(
        id: mapValueOfType<int>(json, r'id'),
        active: mapValueOfType<bool>(json, r'active'),
        valid: mapValueOfType<bool>(json, r'valid'),
        owner: Account.fromJson(json[r'owner']),
        billableEntity: BillableEntity.fromJson(json[r'billableEntity']),
        type: ScheduledNotificationTypeEnum.fromJson(json[r'type']),
        status: ScheduledNotificationStatusEnum.fromJson(json[r'status']),
        templateType: ScheduledNotificationTemplateTypeEnum.fromJson(json[r'templateType']),
        name: mapValueOfType<String>(json, r'name'),
        errorMessage: mapValueOfType<String>(json, r'errorMessage'),
        message: mapValueOfType<String>(json, r'message'),
        payload: mapValueOfType<String>(json, r'payload'),
        contentName: mapValueOfType<String>(json, r'contentName'),
        contentId: mapValueOfType<int>(json, r'contentId'),
        contentType: mapValueOfType<String>(json, r'contentType'),
        parentId: mapValueOfType<int>(json, r'parentId'),
        parentType: mapValueOfType<String>(json, r'parentType'),
        application: Application.fromJson(json[r'application']),
        connectionGroups: ConnectionGroup.listFromJson(json[r'connectionGroups']),
        accountIds: json[r'accountIds'] is Iterable
            ? (json[r'accountIds'] as Iterable).cast<int>().toSet()
            : const {},
        audiences: Audience.listFromJson(json[r'audiences']),
        report: ReportDefinition.fromJson(json[r'report']),
        reportParams: mapValueOfType<String>(json, r'reportParams'),
        endpointURL: mapValueOfType<String>(json, r'endpointURL'),
        lastActionDate: mapDateTime(json, r'lastActionDate', r''),
        scheduledDate: mapDateTime(json, r'scheduledDate', r''),
        startDate: mapDateTime(json, r'startDate', r''),
        endDate: mapDateTime(json, r'endDate', r''),
        cronExpression: mapValueOfType<String>(json, r'cronExpression'),
        deliverEstimate: mapValueOfType<int>(json, r'deliverEstimate'),
        deliverCount: mapValueOfType<int>(json, r'deliverCount'),
        deliverFailed: mapValueOfType<int>(json, r'deliverFailed'),
        deliverTotal: mapValueOfType<int>(json, r'deliverTotal'),
        deliverStart: mapValueOfType<int>(json, r'deliverStart'),
        deliverLimit: mapValueOfType<int>(json, r'deliverLimit'),
        processingTime: mapValueOfType<int>(json, r'processingTime'),
        sendingTime: mapValueOfType<int>(json, r'sendingTime'),
        groupingId: mapValueOfType<String>(json, r'groupingId'),
        conditionalInput: mapValueOfType<String>(json, r'conditionalInput'),
        conditionalCode: mapValueOfType<String>(json, r'conditionalCode'),
        publicPermissions: Permissions.fromJson(json[r'publicPermissions']),
        userPermissions: UserPermissions.listFromJson(json[r'userPermissions']),
        visibility: ScheduledNotificationVisibilityEnum.fromJson(json[r'visibility']),
        approvalStatus: ScheduledNotificationApprovalStatusEnum.fromJson(json[r'approvalStatus']),
        contentAsset: Asset.fromJson(json[r'contentAsset']),
      );
    }
    return null;
  }

  static List<ScheduledNotification> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ScheduledNotification>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ScheduledNotification.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ScheduledNotification> mapFromJson(dynamic json) {
    final map = <String, ScheduledNotification>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ScheduledNotification.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ScheduledNotification-objects as value to a dart map
  static Map<String, List<ScheduledNotification>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ScheduledNotification>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ScheduledNotification.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}


class ScheduledNotificationTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const ScheduledNotificationTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const HTTP = ScheduledNotificationTypeEnum._(r'HTTP');
  static const SAVE = ScheduledNotificationTypeEnum._(r'SAVE');
  static const EMAIL = ScheduledNotificationTypeEnum._(r'EMAIL');
  static const SMS = ScheduledNotificationTypeEnum._(r'SMS');
  static const APNS = ScheduledNotificationTypeEnum._(r'APNS');
  static const GCM = ScheduledNotificationTypeEnum._(r'GCM');
  static const PUSH = ScheduledNotificationTypeEnum._(r'PUSH');
  static const MOBILE_NOTIFICATION = ScheduledNotificationTypeEnum._(r'MOBILE_NOTIFICATION');

  /// List of all possible values in this [enum][ScheduledNotificationTypeEnum].
  static const values = <ScheduledNotificationTypeEnum>[
    HTTP,
    SAVE,
    EMAIL,
    SMS,
    APNS,
    GCM,
    PUSH,
    MOBILE_NOTIFICATION,
  ];

  static ScheduledNotificationTypeEnum? fromJson(dynamic value) => ScheduledNotificationTypeEnumTypeTransformer().decode(value);

  static List<ScheduledNotificationTypeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ScheduledNotificationTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ScheduledNotificationTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [ScheduledNotificationTypeEnum] to String,
/// and [decode] dynamic data back to [ScheduledNotificationTypeEnum].
class ScheduledNotificationTypeEnumTypeTransformer {
  factory ScheduledNotificationTypeEnumTypeTransformer() => _instance ??= const ScheduledNotificationTypeEnumTypeTransformer._();

  const ScheduledNotificationTypeEnumTypeTransformer._();

  String encode(ScheduledNotificationTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a ScheduledNotificationTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ScheduledNotificationTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'HTTP': return ScheduledNotificationTypeEnum.HTTP;
        case r'SAVE': return ScheduledNotificationTypeEnum.SAVE;
        case r'EMAIL': return ScheduledNotificationTypeEnum.EMAIL;
        case r'SMS': return ScheduledNotificationTypeEnum.SMS;
        case r'APNS': return ScheduledNotificationTypeEnum.APNS;
        case r'GCM': return ScheduledNotificationTypeEnum.GCM;
        case r'PUSH': return ScheduledNotificationTypeEnum.PUSH;
        case r'MOBILE_NOTIFICATION': return ScheduledNotificationTypeEnum.MOBILE_NOTIFICATION;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [ScheduledNotificationTypeEnumTypeTransformer] instance.
  static ScheduledNotificationTypeEnumTypeTransformer? _instance;
}



class ScheduledNotificationStatusEnum {
  /// Instantiate a new enum with the provided [value].
  const ScheduledNotificationStatusEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const NEW = ScheduledNotificationStatusEnum._(r'NEW');
  static const ERROR = ScheduledNotificationStatusEnum._(r'ERROR');
  static const COMPLETE = ScheduledNotificationStatusEnum._(r'COMPLETE');
  static const PROCESSING = ScheduledNotificationStatusEnum._(r'PROCESSING');
  static const TEMPLATE = ScheduledNotificationStatusEnum._(r'TEMPLATE');

  /// List of all possible values in this [enum][ScheduledNotificationStatusEnum].
  static const values = <ScheduledNotificationStatusEnum>[
    NEW,
    ERROR,
    COMPLETE,
    PROCESSING,
    TEMPLATE,
  ];

  static ScheduledNotificationStatusEnum? fromJson(dynamic value) => ScheduledNotificationStatusEnumTypeTransformer().decode(value);

  static List<ScheduledNotificationStatusEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ScheduledNotificationStatusEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ScheduledNotificationStatusEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [ScheduledNotificationStatusEnum] to String,
/// and [decode] dynamic data back to [ScheduledNotificationStatusEnum].
class ScheduledNotificationStatusEnumTypeTransformer {
  factory ScheduledNotificationStatusEnumTypeTransformer() => _instance ??= const ScheduledNotificationStatusEnumTypeTransformer._();

  const ScheduledNotificationStatusEnumTypeTransformer._();

  String encode(ScheduledNotificationStatusEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a ScheduledNotificationStatusEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ScheduledNotificationStatusEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'NEW': return ScheduledNotificationStatusEnum.NEW;
        case r'ERROR': return ScheduledNotificationStatusEnum.ERROR;
        case r'COMPLETE': return ScheduledNotificationStatusEnum.COMPLETE;
        case r'PROCESSING': return ScheduledNotificationStatusEnum.PROCESSING;
        case r'TEMPLATE': return ScheduledNotificationStatusEnum.TEMPLATE;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [ScheduledNotificationStatusEnumTypeTransformer] instance.
  static ScheduledNotificationStatusEnumTypeTransformer? _instance;
}



class ScheduledNotificationTemplateTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const ScheduledNotificationTemplateTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const REPORTING = ScheduledNotificationTemplateTypeEnum._(r'REPORTING');
  static const ACHIEVEMENT_OWNER = ScheduledNotificationTemplateTypeEnum._(r'ACHIEVEMENT_OWNER');
  static const ACHIEVEMENT_TRIGGER = ScheduledNotificationTemplateTypeEnum._(r'ACHIEVEMENT_TRIGGER');
  static const GEOFENCE_OWNER = ScheduledNotificationTemplateTypeEnum._(r'GEOFENCE_OWNER');
  static const GEOFENCE_TARGET = ScheduledNotificationTemplateTypeEnum._(r'GEOFENCE_TARGET');
  static const GEOFENCE_TRIGGER = ScheduledNotificationTemplateTypeEnum._(r'GEOFENCE_TRIGGER');
  static const GEOFENCE_HTTP_CALL = ScheduledNotificationTemplateTypeEnum._(r'GEOFENCE_HTTP_CALL');

  /// List of all possible values in this [enum][ScheduledNotificationTemplateTypeEnum].
  static const values = <ScheduledNotificationTemplateTypeEnum>[
    REPORTING,
    ACHIEVEMENT_OWNER,
    ACHIEVEMENT_TRIGGER,
    GEOFENCE_OWNER,
    GEOFENCE_TARGET,
    GEOFENCE_TRIGGER,
    GEOFENCE_HTTP_CALL,
  ];

  static ScheduledNotificationTemplateTypeEnum? fromJson(dynamic value) => ScheduledNotificationTemplateTypeEnumTypeTransformer().decode(value);

  static List<ScheduledNotificationTemplateTypeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ScheduledNotificationTemplateTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ScheduledNotificationTemplateTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [ScheduledNotificationTemplateTypeEnum] to String,
/// and [decode] dynamic data back to [ScheduledNotificationTemplateTypeEnum].
class ScheduledNotificationTemplateTypeEnumTypeTransformer {
  factory ScheduledNotificationTemplateTypeEnumTypeTransformer() => _instance ??= const ScheduledNotificationTemplateTypeEnumTypeTransformer._();

  const ScheduledNotificationTemplateTypeEnumTypeTransformer._();

  String encode(ScheduledNotificationTemplateTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a ScheduledNotificationTemplateTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ScheduledNotificationTemplateTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'REPORTING': return ScheduledNotificationTemplateTypeEnum.REPORTING;
        case r'ACHIEVEMENT_OWNER': return ScheduledNotificationTemplateTypeEnum.ACHIEVEMENT_OWNER;
        case r'ACHIEVEMENT_TRIGGER': return ScheduledNotificationTemplateTypeEnum.ACHIEVEMENT_TRIGGER;
        case r'GEOFENCE_OWNER': return ScheduledNotificationTemplateTypeEnum.GEOFENCE_OWNER;
        case r'GEOFENCE_TARGET': return ScheduledNotificationTemplateTypeEnum.GEOFENCE_TARGET;
        case r'GEOFENCE_TRIGGER': return ScheduledNotificationTemplateTypeEnum.GEOFENCE_TRIGGER;
        case r'GEOFENCE_HTTP_CALL': return ScheduledNotificationTemplateTypeEnum.GEOFENCE_HTTP_CALL;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [ScheduledNotificationTemplateTypeEnumTypeTransformer] instance.
  static ScheduledNotificationTemplateTypeEnumTypeTransformer? _instance;
}



class ScheduledNotificationVisibilityEnum {
  /// Instantiate a new enum with the provided [value].
  const ScheduledNotificationVisibilityEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const PUBLIC = ScheduledNotificationVisibilityEnum._(r'PUBLIC');
  static const PRIVATE = ScheduledNotificationVisibilityEnum._(r'PRIVATE');
  static const FRIENDS = ScheduledNotificationVisibilityEnum._(r'FRIENDS');

  /// List of all possible values in this [enum][ScheduledNotificationVisibilityEnum].
  static const values = <ScheduledNotificationVisibilityEnum>[
    PUBLIC,
    PRIVATE,
    FRIENDS,
  ];

  static ScheduledNotificationVisibilityEnum? fromJson(dynamic value) => ScheduledNotificationVisibilityEnumTypeTransformer().decode(value);

  static List<ScheduledNotificationVisibilityEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ScheduledNotificationVisibilityEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ScheduledNotificationVisibilityEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [ScheduledNotificationVisibilityEnum] to String,
/// and [decode] dynamic data back to [ScheduledNotificationVisibilityEnum].
class ScheduledNotificationVisibilityEnumTypeTransformer {
  factory ScheduledNotificationVisibilityEnumTypeTransformer() => _instance ??= const ScheduledNotificationVisibilityEnumTypeTransformer._();

  const ScheduledNotificationVisibilityEnumTypeTransformer._();

  String encode(ScheduledNotificationVisibilityEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a ScheduledNotificationVisibilityEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ScheduledNotificationVisibilityEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'PUBLIC': return ScheduledNotificationVisibilityEnum.PUBLIC;
        case r'PRIVATE': return ScheduledNotificationVisibilityEnum.PRIVATE;
        case r'FRIENDS': return ScheduledNotificationVisibilityEnum.FRIENDS;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [ScheduledNotificationVisibilityEnumTypeTransformer] instance.
  static ScheduledNotificationVisibilityEnumTypeTransformer? _instance;
}



class ScheduledNotificationApprovalStatusEnum {
  /// Instantiate a new enum with the provided [value].
  const ScheduledNotificationApprovalStatusEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const PENDING = ScheduledNotificationApprovalStatusEnum._(r'PENDING');
  static const REJECTED = ScheduledNotificationApprovalStatusEnum._(r'REJECTED');
  static const APPROVED = ScheduledNotificationApprovalStatusEnum._(r'APPROVED');
  static const FEATURED = ScheduledNotificationApprovalStatusEnum._(r'FEATURED');

  /// List of all possible values in this [enum][ScheduledNotificationApprovalStatusEnum].
  static const values = <ScheduledNotificationApprovalStatusEnum>[
    PENDING,
    REJECTED,
    APPROVED,
    FEATURED,
  ];

  static ScheduledNotificationApprovalStatusEnum? fromJson(dynamic value) => ScheduledNotificationApprovalStatusEnumTypeTransformer().decode(value);

  static List<ScheduledNotificationApprovalStatusEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ScheduledNotificationApprovalStatusEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ScheduledNotificationApprovalStatusEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [ScheduledNotificationApprovalStatusEnum] to String,
/// and [decode] dynamic data back to [ScheduledNotificationApprovalStatusEnum].
class ScheduledNotificationApprovalStatusEnumTypeTransformer {
  factory ScheduledNotificationApprovalStatusEnumTypeTransformer() => _instance ??= const ScheduledNotificationApprovalStatusEnumTypeTransformer._();

  const ScheduledNotificationApprovalStatusEnumTypeTransformer._();

  String encode(ScheduledNotificationApprovalStatusEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a ScheduledNotificationApprovalStatusEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ScheduledNotificationApprovalStatusEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'PENDING': return ScheduledNotificationApprovalStatusEnum.PENDING;
        case r'REJECTED': return ScheduledNotificationApprovalStatusEnum.REJECTED;
        case r'APPROVED': return ScheduledNotificationApprovalStatusEnum.APPROVED;
        case r'FEATURED': return ScheduledNotificationApprovalStatusEnum.FEATURED;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [ScheduledNotificationApprovalStatusEnumTypeTransformer] instance.
  static ScheduledNotificationApprovalStatusEnumTypeTransformer? _instance;
}


