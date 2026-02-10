//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class ScheduledNotificationApi {
  ScheduledNotificationApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Create Scheduled Notification
  ///
  /// This endpoint creates a Scheduled Notification message that can be configured to process and send periodically at set time periods
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] accountId (required):
  ///   The logged in user.
  ///
  /// * [String] name (required):
  ///   The name of the scheduled notification
  ///
  /// * [String] type (required):
  ///   The type of scheduled notification. Supported values include: MOBILE_NOTIFICATION - sends push notifications via APNS and GCM EMAIL - sends email messages SMS - sends text messages
  ///
  /// * [String] message (required):
  ///   The message to send
  ///
  /// * [int] contentId:
  ///   The payload content ID that gets sent along with the message. For push notification, this could be used in client apps to know what the message is referring to and open up the related view.
  ///
  /// * [String] contentName:
  ///   The payload content name that gets sent along with the message. For push notification, this could be used in client apps to know what the message is referring to and open up the related view.
  ///
  /// * [String] contentType:
  ///   The payload content type that gets sent along with the message. For push notification, this could be used in client apps to know what the message is referring to and open up the related view.
  ///
  /// * [int] parentId:
  ///   The payload parent ID that gets sent along with the message. For push notification, this could be used in client apps to know what the message is referring to and open up the related view.
  ///
  /// * [String] parentType:
  ///   The payload parent type that gets sent along with the message. For push notification, this could be used in client apps to know what the message is referring to and open up the related view.
  ///
  /// * [String] appKey:
  ///   The application that the notifications will send to. If connectionGroupIds, connectionAccountIds, and audienceIds is not set, this will send to all users who have used the application. This parameter is also required when sending push notifications via the MOBILE_NOTIFICATION type.
  ///
  /// * [String] groupingId:
  ///   Client defined identifier for grouping multiple scheduled notifications. This can be used with the search endpoint to return scheduled notifications with the same groupingId for display purposes. Only results that have been created by the user will be returned when using this feature.
  ///
  /// * [String] connectionGroupIds:
  ///   The connection groups to use to generate the list of recipients (comma separated list of connection group IDs)
  ///
  /// * [String] connectionAccountIds:
  ///   The connection accounts to use to generate the list of recipients (comma separated list of user account ids)
  ///
  /// * [int] audienceId:
  ///   This parameter is deprecated. The audience used to generate the list of recipients
  ///
  /// * [String] audienceIds:
  ///   The audiences used to generate the list of recipients (comma separated list of audience IDs)
  ///
  /// * [String] albumIds:
  ///   The album ids to associate with the scheduled notification (comma separated list of album IDs)
  ///
  /// * [int] reportId:
  ///   The report used to generate the the list of recipients
  ///
  /// * [String] reportParams:
  ///   The parameters to supply to the report used to generate the the list of recipients
  ///
  /// * [String] endpointURL:
  ///   The URL for making an HTTP call
  ///
  /// * [String] payload:
  ///   The parameters for making an HTTP call
  ///
  /// * [int] scheduledDate:
  ///   The next time when the scheduled notification should begin processing (time in milliseconds). If this is left empty, then the startDate will be used.
  ///
  /// * [int] startDate:
  ///   The start time when the scheduled notification should be available to process (time in milliseconds). If this is left empty, then it will be assumed to be available now.
  ///
  /// * [int] endDate:
  ///   The end time when the scheduled notification should be available to process (time in milliseconds). If this is left empty, then it will be assumed to not have an expiration date.
  ///
  /// * [String] cronExpression:
  ///   The cron expression that represents the processing schedule. This uses the unix cron expression format. For example: 0 0 * * * will run once a day at midnight UTC.
  ///
  /// * [String] cronType:
  ///   The cron expression type: UNIX, CRON4J, QUARTZ
  ///
  /// * [String] metaData:
  ///   Additional metadata for the scheduled notification
  ///
  /// * [String] conditionalInput:
  ///   Json input representing conditional logic that has to be met before running the scheduled notification
  ///
  /// * [String] templateType:
  ///   This determines if the Scheduled Notification is a template which is used as a basis for dynamically generating re-occurring Scheduled Notifications. The available types include: REPORTING - saves an adhoc report to be able to run again at another time GEOFENCE_OWNER - template for sending notifications to the geofence/audience owner (i.e. the business owner) GEOFENCE_OWNER - template for sending notifications to the geofence/audience owner (i.e. the business employee, retailer location, etc) GEOFENCE_TRIGGER - template for sending notifications to the account that triggered the geofence/audience (i.e. the customer) GEOFENCE_HTTP_CALL - template for making http calls when the geofences are triggered
  ///
  /// * [String] visibility:
  ///   Determines the scope of who is able to find and view the scheduled notification (PUBLIC - openly available to all Sirqul users, PRIVATE - only available to users that have been invited)
  ///
  /// * [bool] active:
  ///   Sets whether the Scheduled Notification is active or not (inactive Scheduled Notifications are not processed). This is a quick way to toggle on or off without altering its schedule. The default value is 'true'.
  ///
  /// * [bool] sendNow:
  ///   
  ///
  /// * [String] eventType:
  ///   Sets the event type for the notification
  ///
  /// * [String] deepLinkURI:
  ///   The payload deep link URI that can be used by the client app to direct users to a screen in the app
  ///
  /// * [bool] sendToAll:
  ///   Determines whether to send to all users of the app if set to true for push notifications (appKey is required)
  Future<Response> createScheduledNotificationWithHttpInfo(num version, int accountId, String name, String type, String message, { int? contentId, String? contentName, String? contentType, int? parentId, String? parentType, String? appKey, String? groupingId, String? connectionGroupIds, String? connectionAccountIds, int? audienceId, String? audienceIds, String? albumIds, int? reportId, String? reportParams, String? endpointURL, String? payload, int? scheduledDate, int? startDate, int? endDate, String? cronExpression, String? cronType, String? metaData, String? conditionalInput, String? templateType, String? visibility, bool? active, bool? sendNow, String? eventType, String? deepLinkURI, bool? sendToAll, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/notification/schedule/create'
      .replaceAll('{version}', version.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'accountId', accountId));
      queryParams.addAll(_queryParams('', 'name', name));
      queryParams.addAll(_queryParams('', 'type', type));
      queryParams.addAll(_queryParams('', 'message', message));
    if (contentId != null) {
      queryParams.addAll(_queryParams('', 'contentId', contentId));
    }
    if (contentName != null) {
      queryParams.addAll(_queryParams('', 'contentName', contentName));
    }
    if (contentType != null) {
      queryParams.addAll(_queryParams('', 'contentType', contentType));
    }
    if (parentId != null) {
      queryParams.addAll(_queryParams('', 'parentId', parentId));
    }
    if (parentType != null) {
      queryParams.addAll(_queryParams('', 'parentType', parentType));
    }
    if (appKey != null) {
      queryParams.addAll(_queryParams('', 'appKey', appKey));
    }
    if (groupingId != null) {
      queryParams.addAll(_queryParams('', 'groupingId', groupingId));
    }
    if (connectionGroupIds != null) {
      queryParams.addAll(_queryParams('', 'connectionGroupIds', connectionGroupIds));
    }
    if (connectionAccountIds != null) {
      queryParams.addAll(_queryParams('', 'connectionAccountIds', connectionAccountIds));
    }
    if (audienceId != null) {
      queryParams.addAll(_queryParams('', 'audienceId', audienceId));
    }
    if (audienceIds != null) {
      queryParams.addAll(_queryParams('', 'audienceIds', audienceIds));
    }
    if (albumIds != null) {
      queryParams.addAll(_queryParams('', 'albumIds', albumIds));
    }
    if (reportId != null) {
      queryParams.addAll(_queryParams('', 'reportId', reportId));
    }
    if (reportParams != null) {
      queryParams.addAll(_queryParams('', 'reportParams', reportParams));
    }
    if (endpointURL != null) {
      queryParams.addAll(_queryParams('', 'endpointURL', endpointURL));
    }
    if (payload != null) {
      queryParams.addAll(_queryParams('', 'payload', payload));
    }
    if (scheduledDate != null) {
      queryParams.addAll(_queryParams('', 'scheduledDate', scheduledDate));
    }
    if (startDate != null) {
      queryParams.addAll(_queryParams('', 'startDate', startDate));
    }
    if (endDate != null) {
      queryParams.addAll(_queryParams('', 'endDate', endDate));
    }
    if (cronExpression != null) {
      queryParams.addAll(_queryParams('', 'cronExpression', cronExpression));
    }
    if (cronType != null) {
      queryParams.addAll(_queryParams('', 'cronType', cronType));
    }
    if (metaData != null) {
      queryParams.addAll(_queryParams('', 'metaData', metaData));
    }
    if (conditionalInput != null) {
      queryParams.addAll(_queryParams('', 'conditionalInput', conditionalInput));
    }
    if (templateType != null) {
      queryParams.addAll(_queryParams('', 'templateType', templateType));
    }
    if (visibility != null) {
      queryParams.addAll(_queryParams('', 'visibility', visibility));
    }
    if (active != null) {
      queryParams.addAll(_queryParams('', 'active', active));
    }
    if (sendNow != null) {
      queryParams.addAll(_queryParams('', 'sendNow', sendNow));
    }
    if (eventType != null) {
      queryParams.addAll(_queryParams('', 'eventType', eventType));
    }
    if (deepLinkURI != null) {
      queryParams.addAll(_queryParams('', 'deepLinkURI', deepLinkURI));
    }
    if (sendToAll != null) {
      queryParams.addAll(_queryParams('', 'sendToAll', sendToAll));
    }

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Create Scheduled Notification
  ///
  /// This endpoint creates a Scheduled Notification message that can be configured to process and send periodically at set time periods
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] accountId (required):
  ///   The logged in user.
  ///
  /// * [String] name (required):
  ///   The name of the scheduled notification
  ///
  /// * [String] type (required):
  ///   The type of scheduled notification. Supported values include: MOBILE_NOTIFICATION - sends push notifications via APNS and GCM EMAIL - sends email messages SMS - sends text messages
  ///
  /// * [String] message (required):
  ///   The message to send
  ///
  /// * [int] contentId:
  ///   The payload content ID that gets sent along with the message. For push notification, this could be used in client apps to know what the message is referring to and open up the related view.
  ///
  /// * [String] contentName:
  ///   The payload content name that gets sent along with the message. For push notification, this could be used in client apps to know what the message is referring to and open up the related view.
  ///
  /// * [String] contentType:
  ///   The payload content type that gets sent along with the message. For push notification, this could be used in client apps to know what the message is referring to and open up the related view.
  ///
  /// * [int] parentId:
  ///   The payload parent ID that gets sent along with the message. For push notification, this could be used in client apps to know what the message is referring to and open up the related view.
  ///
  /// * [String] parentType:
  ///   The payload parent type that gets sent along with the message. For push notification, this could be used in client apps to know what the message is referring to and open up the related view.
  ///
  /// * [String] appKey:
  ///   The application that the notifications will send to. If connectionGroupIds, connectionAccountIds, and audienceIds is not set, this will send to all users who have used the application. This parameter is also required when sending push notifications via the MOBILE_NOTIFICATION type.
  ///
  /// * [String] groupingId:
  ///   Client defined identifier for grouping multiple scheduled notifications. This can be used with the search endpoint to return scheduled notifications with the same groupingId for display purposes. Only results that have been created by the user will be returned when using this feature.
  ///
  /// * [String] connectionGroupIds:
  ///   The connection groups to use to generate the list of recipients (comma separated list of connection group IDs)
  ///
  /// * [String] connectionAccountIds:
  ///   The connection accounts to use to generate the list of recipients (comma separated list of user account ids)
  ///
  /// * [int] audienceId:
  ///   This parameter is deprecated. The audience used to generate the list of recipients
  ///
  /// * [String] audienceIds:
  ///   The audiences used to generate the list of recipients (comma separated list of audience IDs)
  ///
  /// * [String] albumIds:
  ///   The album ids to associate with the scheduled notification (comma separated list of album IDs)
  ///
  /// * [int] reportId:
  ///   The report used to generate the the list of recipients
  ///
  /// * [String] reportParams:
  ///   The parameters to supply to the report used to generate the the list of recipients
  ///
  /// * [String] endpointURL:
  ///   The URL for making an HTTP call
  ///
  /// * [String] payload:
  ///   The parameters for making an HTTP call
  ///
  /// * [int] scheduledDate:
  ///   The next time when the scheduled notification should begin processing (time in milliseconds). If this is left empty, then the startDate will be used.
  ///
  /// * [int] startDate:
  ///   The start time when the scheduled notification should be available to process (time in milliseconds). If this is left empty, then it will be assumed to be available now.
  ///
  /// * [int] endDate:
  ///   The end time when the scheduled notification should be available to process (time in milliseconds). If this is left empty, then it will be assumed to not have an expiration date.
  ///
  /// * [String] cronExpression:
  ///   The cron expression that represents the processing schedule. This uses the unix cron expression format. For example: 0 0 * * * will run once a day at midnight UTC.
  ///
  /// * [String] cronType:
  ///   The cron expression type: UNIX, CRON4J, QUARTZ
  ///
  /// * [String] metaData:
  ///   Additional metadata for the scheduled notification
  ///
  /// * [String] conditionalInput:
  ///   Json input representing conditional logic that has to be met before running the scheduled notification
  ///
  /// * [String] templateType:
  ///   This determines if the Scheduled Notification is a template which is used as a basis for dynamically generating re-occurring Scheduled Notifications. The available types include: REPORTING - saves an adhoc report to be able to run again at another time GEOFENCE_OWNER - template for sending notifications to the geofence/audience owner (i.e. the business owner) GEOFENCE_OWNER - template for sending notifications to the geofence/audience owner (i.e. the business employee, retailer location, etc) GEOFENCE_TRIGGER - template for sending notifications to the account that triggered the geofence/audience (i.e. the customer) GEOFENCE_HTTP_CALL - template for making http calls when the geofences are triggered
  ///
  /// * [String] visibility:
  ///   Determines the scope of who is able to find and view the scheduled notification (PUBLIC - openly available to all Sirqul users, PRIVATE - only available to users that have been invited)
  ///
  /// * [bool] active:
  ///   Sets whether the Scheduled Notification is active or not (inactive Scheduled Notifications are not processed). This is a quick way to toggle on or off without altering its schedule. The default value is 'true'.
  ///
  /// * [bool] sendNow:
  ///   
  ///
  /// * [String] eventType:
  ///   Sets the event type for the notification
  ///
  /// * [String] deepLinkURI:
  ///   The payload deep link URI that can be used by the client app to direct users to a screen in the app
  ///
  /// * [bool] sendToAll:
  ///   Determines whether to send to all users of the app if set to true for push notifications (appKey is required)
  Future<ScheduledNotificationFullResponse?> createScheduledNotification(num version, int accountId, String name, String type, String message, { int? contentId, String? contentName, String? contentType, int? parentId, String? parentType, String? appKey, String? groupingId, String? connectionGroupIds, String? connectionAccountIds, int? audienceId, String? audienceIds, String? albumIds, int? reportId, String? reportParams, String? endpointURL, String? payload, int? scheduledDate, int? startDate, int? endDate, String? cronExpression, String? cronType, String? metaData, String? conditionalInput, String? templateType, String? visibility, bool? active, bool? sendNow, String? eventType, String? deepLinkURI, bool? sendToAll, }) async {
    final response = await createScheduledNotificationWithHttpInfo(version, accountId, name, type, message,  contentId: contentId, contentName: contentName, contentType: contentType, parentId: parentId, parentType: parentType, appKey: appKey, groupingId: groupingId, connectionGroupIds: connectionGroupIds, connectionAccountIds: connectionAccountIds, audienceId: audienceId, audienceIds: audienceIds, albumIds: albumIds, reportId: reportId, reportParams: reportParams, endpointURL: endpointURL, payload: payload, scheduledDate: scheduledDate, startDate: startDate, endDate: endDate, cronExpression: cronExpression, cronType: cronType, metaData: metaData, conditionalInput: conditionalInput, templateType: templateType, visibility: visibility, active: active, sendNow: sendNow, eventType: eventType, deepLinkURI: deepLinkURI, sendToAll: sendToAll, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ScheduledNotificationFullResponse',) as ScheduledNotificationFullResponse;
    
    }
    return null;
  }

  /// Delete Scheduled Notification
  ///
  /// This endpoint deletes a Scheduled Notification. Only the original owner of the Scheduled Notification or someone with write permissions can use this endpoint. Permissions can be granted to other users by using the UserPermissionsApi.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] accountId (required):
  ///   the id of the logged in user
  ///
  /// * [int] scheduledNotificationId (required):
  ///   the id of the scheduled notification to delete
  ///
  /// * [bool] deleteByGroupingId:
  ///   If set to true, also deletes Scheduled Notifications under the same account with the same groupingId.
  Future<Response> deleteScheduledNotificationWithHttpInfo(num version, int accountId, int scheduledNotificationId, { bool? deleteByGroupingId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/notification/schedule/delete'
      .replaceAll('{version}', version.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'accountId', accountId));
      queryParams.addAll(_queryParams('', 'scheduledNotificationId', scheduledNotificationId));
    if (deleteByGroupingId != null) {
      queryParams.addAll(_queryParams('', 'deleteByGroupingId', deleteByGroupingId));
    }

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Delete Scheduled Notification
  ///
  /// This endpoint deletes a Scheduled Notification. Only the original owner of the Scheduled Notification or someone with write permissions can use this endpoint. Permissions can be granted to other users by using the UserPermissionsApi.
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] accountId (required):
  ///   the id of the logged in user
  ///
  /// * [int] scheduledNotificationId (required):
  ///   the id of the scheduled notification to delete
  ///
  /// * [bool] deleteByGroupingId:
  ///   If set to true, also deletes Scheduled Notifications under the same account with the same groupingId.
  Future<ScheduledNotificationFullResponse?> deleteScheduledNotification(num version, int accountId, int scheduledNotificationId, { bool? deleteByGroupingId, }) async {
    final response = await deleteScheduledNotificationWithHttpInfo(version, accountId, scheduledNotificationId,  deleteByGroupingId: deleteByGroupingId, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ScheduledNotificationFullResponse',) as ScheduledNotificationFullResponse;
    
    }
    return null;
  }

  /// Get Scheduled Notification
  ///
  /// Get a ScheduledNotification
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] accountId (required):
  ///   the id of the account logged in
  ///
  /// * [int] scheduledNotificationId (required):
  ///   the id of the scheduled notification to get
  Future<Response> getScheduledNotificationWithHttpInfo(num version, int accountId, int scheduledNotificationId,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/notification/schedule/get'
      .replaceAll('{version}', version.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'accountId', accountId));
      queryParams.addAll(_queryParams('', 'scheduledNotificationId', scheduledNotificationId));

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Get Scheduled Notification
  ///
  /// Get a ScheduledNotification
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] accountId (required):
  ///   the id of the account logged in
  ///
  /// * [int] scheduledNotificationId (required):
  ///   the id of the scheduled notification to get
  Future<ScheduledNotificationFullResponse?> getScheduledNotification(num version, int accountId, int scheduledNotificationId,) async {
    final response = await getScheduledNotificationWithHttpInfo(version, accountId, scheduledNotificationId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ScheduledNotificationFullResponse',) as ScheduledNotificationFullResponse;
    
    }
    return null;
  }

  /// Generate Schedule Notifications
  ///
  /// Use a report to identify events that are starting soon and then create a scheduled notification to push a message to matching users.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] accountId (required):
  ///   The logged in user.
  ///
  /// * [String] appKey (required):
  ///   The application to target
  ///
  /// * [String] reportName (required):
  ///   The name of the report used to identify events. The report must return columns named: id, name, date, params, and type otherwise it will fail
  ///
  /// * [String] message (required):
  ///   The message to be sent to the recipients. If you set %name% the report row name value will be swapped in. If you set %time% or %date% the report row start date/time value will be swapped in
  ///
  /// * [int] offset (required):
  ///   Time in munites before the event starts to notify recipients
  ///
  /// * [int] recipientReportId (required):
  ///   The report id used to generate the recipient list
  ///
  /// * [String] reportParams:
  ///   The parameters of the report used to identify events in a json structure, example: ```json {   \"string\": \"value\",   \"number\": 3.345,   \"date\": \"2014-05-01 00:00:00\" } ``` 
  ///
  /// * [String] type:
  ///   The type of scheduled notification; supported values are: MOBILE_NOTIFICATION
  Future<Response> scheduleNotificationListingsWithHttpInfo(num version, int accountId, String appKey, String reportName, String message, int offset, int recipientReportId, { String? reportParams, String? type, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/notification/schedule/generate'
      .replaceAll('{version}', version.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'accountId', accountId));
      queryParams.addAll(_queryParams('', 'appKey', appKey));
      queryParams.addAll(_queryParams('', 'reportName', reportName));
    if (reportParams != null) {
      queryParams.addAll(_queryParams('', 'reportParams', reportParams));
    }
      queryParams.addAll(_queryParams('', 'message', message));
      queryParams.addAll(_queryParams('', 'offset', offset));
    if (type != null) {
      queryParams.addAll(_queryParams('', 'type', type));
    }
      queryParams.addAll(_queryParams('', 'recipientReportId', recipientReportId));

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Generate Schedule Notifications
  ///
  /// Use a report to identify events that are starting soon and then create a scheduled notification to push a message to matching users.
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] accountId (required):
  ///   The logged in user.
  ///
  /// * [String] appKey (required):
  ///   The application to target
  ///
  /// * [String] reportName (required):
  ///   The name of the report used to identify events. The report must return columns named: id, name, date, params, and type otherwise it will fail
  ///
  /// * [String] message (required):
  ///   The message to be sent to the recipients. If you set %name% the report row name value will be swapped in. If you set %time% or %date% the report row start date/time value will be swapped in
  ///
  /// * [int] offset (required):
  ///   Time in munites before the event starts to notify recipients
  ///
  /// * [int] recipientReportId (required):
  ///   The report id used to generate the recipient list
  ///
  /// * [String] reportParams:
  ///   The parameters of the report used to identify events in a json structure, example: ```json {   \"string\": \"value\",   \"number\": 3.345,   \"date\": \"2014-05-01 00:00:00\" } ``` 
  ///
  /// * [String] type:
  ///   The type of scheduled notification; supported values are: MOBILE_NOTIFICATION
  Future<SirqulResponse?> scheduleNotificationListings(num version, int accountId, String appKey, String reportName, String message, int offset, int recipientReportId, { String? reportParams, String? type, }) async {
    final response = await scheduleNotificationListingsWithHttpInfo(version, accountId, appKey, reportName, message, offset, recipientReportId,  reportParams: reportParams, type: type, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'SirqulResponse',) as SirqulResponse;
    
    }
    return null;
  }

  /// Search Scheduled Notifications
  ///
  /// This endpoint searches on Scheduled Notifications. If a scheduled notification was created with the visibility parameter set to PUBLIC, then anyone can search on it if the filter parameter includes the PUBLIC value. PRIVATE visibility means that it can only be searched on by the owner or if it has been shared to the user using the UserPermissionsApi.  In addition, if a PUBLIC Scheduled Notification was created for an application that requires content approval (using the publicContentApproval parameter), then an administrator of the application needs to approve it before it can be search on by other users. Before this happens, it is in a PENDING state, and only the original creator or the owner of the application can search and see it. Also, only the owner of the application can use the UserPermissionsApi to approve or reject it. Scheduled notifications that have been rejected are only visible to the original creators.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] accountId (required):
  ///   The logged in user.
  ///
  /// * [String] groupingId:
  ///   Filter results by a grouping identifier defined by the client
  ///
  /// * [int] audienceId:
  ///   Filter results by audience
  ///
  /// * [String] filter:
  ///   a comma separated list of filters: MINE - Return scheduled notifications that the user has created. SHARED - Return scheduled notifications that have been shared to the user via addUsersToPermissionable. FOLLOWER - Return scheduled notifications that have been created by the users followers (the content needs to have been APPROVED or FEATURED). FOLLOWING - Return scheduled notifications that have been created by people who the user is following (the content needs to have been APPROVED or FEATURED). PUBLIC - Return all PUBLIC scheduled notifications that have been APPROVED or FEATURED. ALL_PUBLIC - Return all PUBLIC scheduled notifications regardless of whether they are approved or not (ignores the approval status). LIKED - Return all scheduled notifications that the user has liked. FEATURED - Return all scheduled notifications that have been featured. PENDING - Return all pending scheduled notifications.
  ///
  /// * [String] types:
  ///   Filter results by notification types (comma separated list). Values include: HTTP, EMAIL, SMS, MOBILE_NOTIFICATION
  ///
  /// * [String] contentIds:
  ///   search using content IDs
  ///
  /// * [String] contentTypes:
  ///   search using content types
  ///
  /// * [String] parentIds:
  ///   search using parent IDs
  ///
  /// * [String] parentTypes:
  ///   search using parent types
  ///
  /// * [String] statuses:
  ///   Filter results by status (comma separated list). Possible values include: NEW - scheduled to run ERROR - encountered an error during processing COMPLETE - processing has completed and it is no longer scheduled to run PROCESSING - currently processing/sending
  ///
  /// * [String] templateTypes:
  ///   
  ///
  /// * [String] appKey:
  ///   Filter the list by a specific application
  ///
  /// * [String] keyword:
  ///   Keyword search on the scheduled notification names.
  ///
  /// * [String] sortField:
  ///   The field to sort by. Possible values include: ID - order by the scheduledNotificationId CREATED - order by the timestamp it was created UPDATED - order by the timestamp it was last updated ACTIVE - order by whether it is active or inactive NAME - order by the scheduled notification name SCHEDULED_DATE - order by the next scheduled date START_DATE - order by the start date END_DATE - order by the end date
  ///
  /// * [bool] descending:
  ///   Determines whether the sorted list is in descending or ascending order
  ///
  /// * [int] start:
  ///   Start the result set at some index.
  ///
  /// * [int] limit:
  ///   Limit the result to some number.
  ///
  /// * [bool] activeOnly:
  ///   Determines whether to return only active results
  ///
  /// * [bool] groupByGroupingId:
  ///   Determines whether to group results with the same groupingId together.
  ///
  /// * [bool] returnAudienceAccountCount:
  ///   If true, include audience account counts in the response
  Future<Response> searchScheduledNotificationsWithHttpInfo(num version, int accountId, { String? groupingId, int? audienceId, String? filter, String? types, String? contentIds, String? contentTypes, String? parentIds, String? parentTypes, String? statuses, String? templateTypes, String? appKey, String? keyword, String? sortField, bool? descending, int? start, int? limit, bool? activeOnly, bool? groupByGroupingId, bool? returnAudienceAccountCount, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/notification/schedule/search'
      .replaceAll('{version}', version.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'accountId', accountId));
    if (groupingId != null) {
      queryParams.addAll(_queryParams('', 'groupingId', groupingId));
    }
    if (audienceId != null) {
      queryParams.addAll(_queryParams('', 'audienceId', audienceId));
    }
    if (filter != null) {
      queryParams.addAll(_queryParams('', 'filter', filter));
    }
    if (types != null) {
      queryParams.addAll(_queryParams('', 'types', types));
    }
    if (contentIds != null) {
      queryParams.addAll(_queryParams('', 'contentIds', contentIds));
    }
    if (contentTypes != null) {
      queryParams.addAll(_queryParams('', 'contentTypes', contentTypes));
    }
    if (parentIds != null) {
      queryParams.addAll(_queryParams('', 'parentIds', parentIds));
    }
    if (parentTypes != null) {
      queryParams.addAll(_queryParams('', 'parentTypes', parentTypes));
    }
    if (statuses != null) {
      queryParams.addAll(_queryParams('', 'statuses', statuses));
    }
    if (templateTypes != null) {
      queryParams.addAll(_queryParams('', 'templateTypes', templateTypes));
    }
    if (appKey != null) {
      queryParams.addAll(_queryParams('', 'appKey', appKey));
    }
    if (keyword != null) {
      queryParams.addAll(_queryParams('', 'keyword', keyword));
    }
    if (sortField != null) {
      queryParams.addAll(_queryParams('', 'sortField', sortField));
    }
    if (descending != null) {
      queryParams.addAll(_queryParams('', 'descending', descending));
    }
    if (start != null) {
      queryParams.addAll(_queryParams('', 'start', start));
    }
    if (limit != null) {
      queryParams.addAll(_queryParams('', 'limit', limit));
    }
    if (activeOnly != null) {
      queryParams.addAll(_queryParams('', 'activeOnly', activeOnly));
    }
    if (groupByGroupingId != null) {
      queryParams.addAll(_queryParams('', 'groupByGroupingId', groupByGroupingId));
    }
    if (returnAudienceAccountCount != null) {
      queryParams.addAll(_queryParams('', 'returnAudienceAccountCount', returnAudienceAccountCount));
    }

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Search Scheduled Notifications
  ///
  /// This endpoint searches on Scheduled Notifications. If a scheduled notification was created with the visibility parameter set to PUBLIC, then anyone can search on it if the filter parameter includes the PUBLIC value. PRIVATE visibility means that it can only be searched on by the owner or if it has been shared to the user using the UserPermissionsApi.  In addition, if a PUBLIC Scheduled Notification was created for an application that requires content approval (using the publicContentApproval parameter), then an administrator of the application needs to approve it before it can be search on by other users. Before this happens, it is in a PENDING state, and only the original creator or the owner of the application can search and see it. Also, only the owner of the application can use the UserPermissionsApi to approve or reject it. Scheduled notifications that have been rejected are only visible to the original creators.
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] accountId (required):
  ///   The logged in user.
  ///
  /// * [String] groupingId:
  ///   Filter results by a grouping identifier defined by the client
  ///
  /// * [int] audienceId:
  ///   Filter results by audience
  ///
  /// * [String] filter:
  ///   a comma separated list of filters: MINE - Return scheduled notifications that the user has created. SHARED - Return scheduled notifications that have been shared to the user via addUsersToPermissionable. FOLLOWER - Return scheduled notifications that have been created by the users followers (the content needs to have been APPROVED or FEATURED). FOLLOWING - Return scheduled notifications that have been created by people who the user is following (the content needs to have been APPROVED or FEATURED). PUBLIC - Return all PUBLIC scheduled notifications that have been APPROVED or FEATURED. ALL_PUBLIC - Return all PUBLIC scheduled notifications regardless of whether they are approved or not (ignores the approval status). LIKED - Return all scheduled notifications that the user has liked. FEATURED - Return all scheduled notifications that have been featured. PENDING - Return all pending scheduled notifications.
  ///
  /// * [String] types:
  ///   Filter results by notification types (comma separated list). Values include: HTTP, EMAIL, SMS, MOBILE_NOTIFICATION
  ///
  /// * [String] contentIds:
  ///   search using content IDs
  ///
  /// * [String] contentTypes:
  ///   search using content types
  ///
  /// * [String] parentIds:
  ///   search using parent IDs
  ///
  /// * [String] parentTypes:
  ///   search using parent types
  ///
  /// * [String] statuses:
  ///   Filter results by status (comma separated list). Possible values include: NEW - scheduled to run ERROR - encountered an error during processing COMPLETE - processing has completed and it is no longer scheduled to run PROCESSING - currently processing/sending
  ///
  /// * [String] templateTypes:
  ///   
  ///
  /// * [String] appKey:
  ///   Filter the list by a specific application
  ///
  /// * [String] keyword:
  ///   Keyword search on the scheduled notification names.
  ///
  /// * [String] sortField:
  ///   The field to sort by. Possible values include: ID - order by the scheduledNotificationId CREATED - order by the timestamp it was created UPDATED - order by the timestamp it was last updated ACTIVE - order by whether it is active or inactive NAME - order by the scheduled notification name SCHEDULED_DATE - order by the next scheduled date START_DATE - order by the start date END_DATE - order by the end date
  ///
  /// * [bool] descending:
  ///   Determines whether the sorted list is in descending or ascending order
  ///
  /// * [int] start:
  ///   Start the result set at some index.
  ///
  /// * [int] limit:
  ///   Limit the result to some number.
  ///
  /// * [bool] activeOnly:
  ///   Determines whether to return only active results
  ///
  /// * [bool] groupByGroupingId:
  ///   Determines whether to group results with the same groupingId together.
  ///
  /// * [bool] returnAudienceAccountCount:
  ///   If true, include audience account counts in the response
  Future<ScheduledNotificationFullResponse?> searchScheduledNotifications(num version, int accountId, { String? groupingId, int? audienceId, String? filter, String? types, String? contentIds, String? contentTypes, String? parentIds, String? parentTypes, String? statuses, String? templateTypes, String? appKey, String? keyword, String? sortField, bool? descending, int? start, int? limit, bool? activeOnly, bool? groupByGroupingId, bool? returnAudienceAccountCount, }) async {
    final response = await searchScheduledNotificationsWithHttpInfo(version, accountId,  groupingId: groupingId, audienceId: audienceId, filter: filter, types: types, contentIds: contentIds, contentTypes: contentTypes, parentIds: parentIds, parentTypes: parentTypes, statuses: statuses, templateTypes: templateTypes, appKey: appKey, keyword: keyword, sortField: sortField, descending: descending, start: start, limit: limit, activeOnly: activeOnly, groupByGroupingId: groupByGroupingId, returnAudienceAccountCount: returnAudienceAccountCount, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ScheduledNotificationFullResponse',) as ScheduledNotificationFullResponse;
    
    }
    return null;
  }

  /// Update Scheduled Notification
  ///
  /// This endpoint updates a Scheduled Notification message that can be configured to process and send periodically at set time periods. Please see createScheduledNotification for more details.  Only the original owner of the Scheduled Notification or someone with write permissions can use this endpoint. Permissions can be granted to other users by using theUserPermissionsApi.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] scheduledNotificationId (required):
  ///   The id of scheduled notification to update
  ///
  /// * [int] accountId (required):
  ///   The logged in user.
  ///
  /// * [String] name:
  ///   The name of the scheduled notification
  ///
  /// * [String] type:
  ///   The type of scheduled notification. Supported values include: MOBILE_NOTIFICATION - sends push notifications via APNS and GCM EMAIL - sends email messages SMS - sends text messages
  ///
  /// * [String] message:
  ///   The message to send
  ///
  /// * [String] payload:
  ///   The parameters for making an HTTP call
  ///
  /// * [int] contentId:
  ///   The payload content ID that gets sent along with the message. For push notification, this could be used in client apps to know what the message is referring to and open up the related view.
  ///
  /// * [String] contentName:
  ///   The payload content name that gets sent along with the message. For push notification, this could be used in client apps to know what the message is referring to and open up the related view.
  ///
  /// * [String] contentType:
  ///   The payload content type that gets sent along with the message. For push notification, this could be used in client apps to know what the message is referring to and open up the related view.
  ///
  /// * [int] parentId:
  ///   The payload parent ID that gets sent along with the message. For push notification, this could be used in client apps to know what the message is referring to and open up the related view.
  ///
  /// * [String] parentType:
  ///   The payload parent type that gets sent along with the message. For push notification, this could be used in client apps to know what the message is referring to and open up the related view.
  ///
  /// * [String] appKey:
  ///   The application that the notifications will send to. If connectionGroupIds, connectionAccountIds, and audienceIds is not set, this will send to all users who have used the application. This parameter is also required when sending push notifications via the MOBILE_NOTIFICATION type.
  ///
  /// * [String] groupingId:
  ///   Client defined identifier for grouping multiple scheduled notifications. This can be used with the search endpoint to return scheduled notifications with the same groupingId for display purposes. Only results that have been created by the user will be returned when using this feature.
  ///
  /// * [String] connectionGroupIds:
  ///   The connection groups to use to generate the list of recipients (comma separated list of connection group IDs)
  ///
  /// * [String] connectionAccountIds:
  ///   The connection accounts to use to generate the list of recipients (comma separated list of user account ids)
  ///
  /// * [int] audienceId:
  ///   This parameter is deprecated. The audience used to generate the list of recipients
  ///
  /// * [String] audienceIds:
  ///   The audiences used to generate the list of recipients (comma separated list of audience IDs)
  ///
  /// * [String] albumIds:
  ///   The album ids to associate with the scheduled notification (comma separated list of album IDs)
  ///
  /// * [int] reportId:
  ///   The report used to generate the the list of recipients
  ///
  /// * [String] reportParams:
  ///   The parameters to supply to the report used to generate the the list of recipients
  ///
  /// * [String] endpointURL:
  ///   The URL for making an HTTP call
  ///
  /// * [int] scheduledDate:
  ///   The next time when the scheduled notification should begin processing (time in milliseconds). If this is left empty, then the startDate will be used.
  ///
  /// * [int] startDate:
  ///   The start time when the scheduled notification should be available to process (time in milliseconds). If this is left empty, then it will be assumed to be available now.
  ///
  /// * [int] endDate:
  ///   The end time when the scheduled notification should be available to process (time in milliseconds). If this is left empty, then it will be assumed to not have an expiration date.
  ///
  /// * [String] cronExpression:
  ///   The cron expression that represents the processing schedule. This uses the unix cron expression format. For example: 0 0 * * * will run once a day at midnight UTC.
  ///
  /// * [String] cronType:
  ///   The cron expression type: UNIX, CRON4J, QUARTZ
  ///
  /// * [String] metaData:
  ///   Additional metadata for the scheduled notification
  ///
  /// * [String] conditionalInput:
  ///   Json input representing conditional logic that has to be met before running the scheduled notification
  ///
  /// * [String] templateType:
  ///   This determines if the Scheduled Notification is a template which is used as a basis for dynamically generating re-occurring Scheduled Notifications. The available types include: REPORTING - saves an adhoc report to be able to run again at another time GEOFENCE_OWNER - template for sending notifications to the geofence/audience owner (i.e. the business owner) GEOFENCE_OWNER - template for sending notifications to the geofence/audience owner (i.e. the business employee, retailer location, etc) GEOFENCE_TRIGGER - template for sending notifications to the account that triggered the geofence/audience (i.e. the customer) GEOFENCE_HTTP_CALL - template for making http calls when the geofences are triggered
  ///
  /// * [String] visibility:
  ///   Determines the scope of who is able to find and view the scheduled notification (PUBLIC - openly available to all Sirqul users, PRIVATE - only available to users that have been invited)
  ///
  /// * [bool] active:
  ///   Sets whether the Scheduled Notification is active or not (inactive Scheduled Notifications are not processed). This is a quick way to toggle on or off without altering its schedule.
  ///
  /// * [String] errorMessage:
  ///   the error message associated with the scheduled notification
  ///
  /// * [String] status:
  ///   the status of the scheduled notification
  ///
  /// * [bool] updateByGroupingId:
  ///   also updates ScheduledNotifications with the same groupingId and account
  ///
  /// * [bool] sendNow:
  ///   whether to send the scheduled notification now or not
  ///
  /// * [String] eventType:
  ///   Sets the event type for the notification
  ///
  /// * [String] deepLinkURI:
  ///   The payload deep link URI that can be used by the client app to direct users to a screen in the app
  ///
  /// * [bool] sendToAll:
  ///   Determines whether to send to all users of the app if set to true for push notifications (appKey is required)
  Future<Response> updateScheduledNotificationWithHttpInfo(num version, int scheduledNotificationId, int accountId, { String? name, String? type, String? message, String? payload, int? contentId, String? contentName, String? contentType, int? parentId, String? parentType, String? appKey, String? groupingId, String? connectionGroupIds, String? connectionAccountIds, int? audienceId, String? audienceIds, String? albumIds, int? reportId, String? reportParams, String? endpointURL, int? scheduledDate, int? startDate, int? endDate, String? cronExpression, String? cronType, String? metaData, String? conditionalInput, String? templateType, String? visibility, bool? active, String? errorMessage, String? status, bool? updateByGroupingId, bool? sendNow, String? eventType, String? deepLinkURI, bool? sendToAll, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/notification/schedule/update'
      .replaceAll('{version}', version.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'scheduledNotificationId', scheduledNotificationId));
      queryParams.addAll(_queryParams('', 'accountId', accountId));
    if (name != null) {
      queryParams.addAll(_queryParams('', 'name', name));
    }
    if (type != null) {
      queryParams.addAll(_queryParams('', 'type', type));
    }
    if (message != null) {
      queryParams.addAll(_queryParams('', 'message', message));
    }
    if (payload != null) {
      queryParams.addAll(_queryParams('', 'payload', payload));
    }
    if (contentId != null) {
      queryParams.addAll(_queryParams('', 'contentId', contentId));
    }
    if (contentName != null) {
      queryParams.addAll(_queryParams('', 'contentName', contentName));
    }
    if (contentType != null) {
      queryParams.addAll(_queryParams('', 'contentType', contentType));
    }
    if (parentId != null) {
      queryParams.addAll(_queryParams('', 'parentId', parentId));
    }
    if (parentType != null) {
      queryParams.addAll(_queryParams('', 'parentType', parentType));
    }
    if (appKey != null) {
      queryParams.addAll(_queryParams('', 'appKey', appKey));
    }
    if (groupingId != null) {
      queryParams.addAll(_queryParams('', 'groupingId', groupingId));
    }
    if (connectionGroupIds != null) {
      queryParams.addAll(_queryParams('', 'connectionGroupIds', connectionGroupIds));
    }
    if (connectionAccountIds != null) {
      queryParams.addAll(_queryParams('', 'connectionAccountIds', connectionAccountIds));
    }
    if (audienceId != null) {
      queryParams.addAll(_queryParams('', 'audienceId', audienceId));
    }
    if (audienceIds != null) {
      queryParams.addAll(_queryParams('', 'audienceIds', audienceIds));
    }
    if (albumIds != null) {
      queryParams.addAll(_queryParams('', 'albumIds', albumIds));
    }
    if (reportId != null) {
      queryParams.addAll(_queryParams('', 'reportId', reportId));
    }
    if (reportParams != null) {
      queryParams.addAll(_queryParams('', 'reportParams', reportParams));
    }
    if (endpointURL != null) {
      queryParams.addAll(_queryParams('', 'endpointURL', endpointURL));
    }
    if (scheduledDate != null) {
      queryParams.addAll(_queryParams('', 'scheduledDate', scheduledDate));
    }
    if (startDate != null) {
      queryParams.addAll(_queryParams('', 'startDate', startDate));
    }
    if (endDate != null) {
      queryParams.addAll(_queryParams('', 'endDate', endDate));
    }
    if (cronExpression != null) {
      queryParams.addAll(_queryParams('', 'cronExpression', cronExpression));
    }
    if (cronType != null) {
      queryParams.addAll(_queryParams('', 'cronType', cronType));
    }
    if (metaData != null) {
      queryParams.addAll(_queryParams('', 'metaData', metaData));
    }
    if (conditionalInput != null) {
      queryParams.addAll(_queryParams('', 'conditionalInput', conditionalInput));
    }
    if (templateType != null) {
      queryParams.addAll(_queryParams('', 'templateType', templateType));
    }
    if (visibility != null) {
      queryParams.addAll(_queryParams('', 'visibility', visibility));
    }
    if (active != null) {
      queryParams.addAll(_queryParams('', 'active', active));
    }
    if (errorMessage != null) {
      queryParams.addAll(_queryParams('', 'errorMessage', errorMessage));
    }
    if (status != null) {
      queryParams.addAll(_queryParams('', 'status', status));
    }
    if (updateByGroupingId != null) {
      queryParams.addAll(_queryParams('', 'updateByGroupingId', updateByGroupingId));
    }
    if (sendNow != null) {
      queryParams.addAll(_queryParams('', 'sendNow', sendNow));
    }
    if (eventType != null) {
      queryParams.addAll(_queryParams('', 'eventType', eventType));
    }
    if (deepLinkURI != null) {
      queryParams.addAll(_queryParams('', 'deepLinkURI', deepLinkURI));
    }
    if (sendToAll != null) {
      queryParams.addAll(_queryParams('', 'sendToAll', sendToAll));
    }

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Update Scheduled Notification
  ///
  /// This endpoint updates a Scheduled Notification message that can be configured to process and send periodically at set time periods. Please see createScheduledNotification for more details.  Only the original owner of the Scheduled Notification or someone with write permissions can use this endpoint. Permissions can be granted to other users by using theUserPermissionsApi.
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] scheduledNotificationId (required):
  ///   The id of scheduled notification to update
  ///
  /// * [int] accountId (required):
  ///   The logged in user.
  ///
  /// * [String] name:
  ///   The name of the scheduled notification
  ///
  /// * [String] type:
  ///   The type of scheduled notification. Supported values include: MOBILE_NOTIFICATION - sends push notifications via APNS and GCM EMAIL - sends email messages SMS - sends text messages
  ///
  /// * [String] message:
  ///   The message to send
  ///
  /// * [String] payload:
  ///   The parameters for making an HTTP call
  ///
  /// * [int] contentId:
  ///   The payload content ID that gets sent along with the message. For push notification, this could be used in client apps to know what the message is referring to and open up the related view.
  ///
  /// * [String] contentName:
  ///   The payload content name that gets sent along with the message. For push notification, this could be used in client apps to know what the message is referring to and open up the related view.
  ///
  /// * [String] contentType:
  ///   The payload content type that gets sent along with the message. For push notification, this could be used in client apps to know what the message is referring to and open up the related view.
  ///
  /// * [int] parentId:
  ///   The payload parent ID that gets sent along with the message. For push notification, this could be used in client apps to know what the message is referring to and open up the related view.
  ///
  /// * [String] parentType:
  ///   The payload parent type that gets sent along with the message. For push notification, this could be used in client apps to know what the message is referring to and open up the related view.
  ///
  /// * [String] appKey:
  ///   The application that the notifications will send to. If connectionGroupIds, connectionAccountIds, and audienceIds is not set, this will send to all users who have used the application. This parameter is also required when sending push notifications via the MOBILE_NOTIFICATION type.
  ///
  /// * [String] groupingId:
  ///   Client defined identifier for grouping multiple scheduled notifications. This can be used with the search endpoint to return scheduled notifications with the same groupingId for display purposes. Only results that have been created by the user will be returned when using this feature.
  ///
  /// * [String] connectionGroupIds:
  ///   The connection groups to use to generate the list of recipients (comma separated list of connection group IDs)
  ///
  /// * [String] connectionAccountIds:
  ///   The connection accounts to use to generate the list of recipients (comma separated list of user account ids)
  ///
  /// * [int] audienceId:
  ///   This parameter is deprecated. The audience used to generate the list of recipients
  ///
  /// * [String] audienceIds:
  ///   The audiences used to generate the list of recipients (comma separated list of audience IDs)
  ///
  /// * [String] albumIds:
  ///   The album ids to associate with the scheduled notification (comma separated list of album IDs)
  ///
  /// * [int] reportId:
  ///   The report used to generate the the list of recipients
  ///
  /// * [String] reportParams:
  ///   The parameters to supply to the report used to generate the the list of recipients
  ///
  /// * [String] endpointURL:
  ///   The URL for making an HTTP call
  ///
  /// * [int] scheduledDate:
  ///   The next time when the scheduled notification should begin processing (time in milliseconds). If this is left empty, then the startDate will be used.
  ///
  /// * [int] startDate:
  ///   The start time when the scheduled notification should be available to process (time in milliseconds). If this is left empty, then it will be assumed to be available now.
  ///
  /// * [int] endDate:
  ///   The end time when the scheduled notification should be available to process (time in milliseconds). If this is left empty, then it will be assumed to not have an expiration date.
  ///
  /// * [String] cronExpression:
  ///   The cron expression that represents the processing schedule. This uses the unix cron expression format. For example: 0 0 * * * will run once a day at midnight UTC.
  ///
  /// * [String] cronType:
  ///   The cron expression type: UNIX, CRON4J, QUARTZ
  ///
  /// * [String] metaData:
  ///   Additional metadata for the scheduled notification
  ///
  /// * [String] conditionalInput:
  ///   Json input representing conditional logic that has to be met before running the scheduled notification
  ///
  /// * [String] templateType:
  ///   This determines if the Scheduled Notification is a template which is used as a basis for dynamically generating re-occurring Scheduled Notifications. The available types include: REPORTING - saves an adhoc report to be able to run again at another time GEOFENCE_OWNER - template for sending notifications to the geofence/audience owner (i.e. the business owner) GEOFENCE_OWNER - template for sending notifications to the geofence/audience owner (i.e. the business employee, retailer location, etc) GEOFENCE_TRIGGER - template for sending notifications to the account that triggered the geofence/audience (i.e. the customer) GEOFENCE_HTTP_CALL - template for making http calls when the geofences are triggered
  ///
  /// * [String] visibility:
  ///   Determines the scope of who is able to find and view the scheduled notification (PUBLIC - openly available to all Sirqul users, PRIVATE - only available to users that have been invited)
  ///
  /// * [bool] active:
  ///   Sets whether the Scheduled Notification is active or not (inactive Scheduled Notifications are not processed). This is a quick way to toggle on or off without altering its schedule.
  ///
  /// * [String] errorMessage:
  ///   the error message associated with the scheduled notification
  ///
  /// * [String] status:
  ///   the status of the scheduled notification
  ///
  /// * [bool] updateByGroupingId:
  ///   also updates ScheduledNotifications with the same groupingId and account
  ///
  /// * [bool] sendNow:
  ///   whether to send the scheduled notification now or not
  ///
  /// * [String] eventType:
  ///   Sets the event type for the notification
  ///
  /// * [String] deepLinkURI:
  ///   The payload deep link URI that can be used by the client app to direct users to a screen in the app
  ///
  /// * [bool] sendToAll:
  ///   Determines whether to send to all users of the app if set to true for push notifications (appKey is required)
  Future<ScheduledNotificationFullResponse?> updateScheduledNotification(num version, int scheduledNotificationId, int accountId, { String? name, String? type, String? message, String? payload, int? contentId, String? contentName, String? contentType, int? parentId, String? parentType, String? appKey, String? groupingId, String? connectionGroupIds, String? connectionAccountIds, int? audienceId, String? audienceIds, String? albumIds, int? reportId, String? reportParams, String? endpointURL, int? scheduledDate, int? startDate, int? endDate, String? cronExpression, String? cronType, String? metaData, String? conditionalInput, String? templateType, String? visibility, bool? active, String? errorMessage, String? status, bool? updateByGroupingId, bool? sendNow, String? eventType, String? deepLinkURI, bool? sendToAll, }) async {
    final response = await updateScheduledNotificationWithHttpInfo(version, scheduledNotificationId, accountId,  name: name, type: type, message: message, payload: payload, contentId: contentId, contentName: contentName, contentType: contentType, parentId: parentId, parentType: parentType, appKey: appKey, groupingId: groupingId, connectionGroupIds: connectionGroupIds, connectionAccountIds: connectionAccountIds, audienceId: audienceId, audienceIds: audienceIds, albumIds: albumIds, reportId: reportId, reportParams: reportParams, endpointURL: endpointURL, scheduledDate: scheduledDate, startDate: startDate, endDate: endDate, cronExpression: cronExpression, cronType: cronType, metaData: metaData, conditionalInput: conditionalInput, templateType: templateType, visibility: visibility, active: active, errorMessage: errorMessage, status: status, updateByGroupingId: updateByGroupingId, sendNow: sendNow, eventType: eventType, deepLinkURI: deepLinkURI, sendToAll: sendToAll, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ScheduledNotificationFullResponse',) as ScheduledNotificationFullResponse;
    
    }
    return null;
  }
}
