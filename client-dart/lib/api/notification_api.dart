//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class NotificationApi {
  NotificationApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Create Notification Template
  ///
  /// Create a notification template. Developers will only be able to create notification templates for their own applications.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] accountId (required):
  ///   The account ID of the user.
  ///
  /// * [String] conduit (required):
  ///   Filter results by notification type: EMAIL, SMS, PUSH, MOBILE_NOTIFICATION.
  ///
  /// * [String] title (required):
  ///   title of the notification template
  ///
  /// * [String] body (required):
  ///   body of the notification template
  ///
  /// * [String] appKey:
  ///   Filter results by application.
  ///
  /// * [String] event:
  ///   Filter results by event.
  ///
  /// * [String] tags:
  ///   tags associated with the note template
  Future<Response> createNotificationTemplateWithHttpInfo(num version, int accountId, String conduit, String title, String body, { String? appKey, String? event, String? tags, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/notification/template/create'
      .replaceAll('{version}', version.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'accountId', accountId));
    if (appKey != null) {
      queryParams.addAll(_queryParams('', 'appKey', appKey));
    }
    if (event != null) {
      queryParams.addAll(_queryParams('', 'event', event));
    }
      queryParams.addAll(_queryParams('', 'conduit', conduit));
      queryParams.addAll(_queryParams('', 'title', title));
      queryParams.addAll(_queryParams('', 'body', body));
    if (tags != null) {
      queryParams.addAll(_queryParams('', 'tags', tags));
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

  /// Create Notification Template
  ///
  /// Create a notification template. Developers will only be able to create notification templates for their own applications.
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] accountId (required):
  ///   The account ID of the user.
  ///
  /// * [String] conduit (required):
  ///   Filter results by notification type: EMAIL, SMS, PUSH, MOBILE_NOTIFICATION.
  ///
  /// * [String] title (required):
  ///   title of the notification template
  ///
  /// * [String] body (required):
  ///   body of the notification template
  ///
  /// * [String] appKey:
  ///   Filter results by application.
  ///
  /// * [String] event:
  ///   Filter results by event.
  ///
  /// * [String] tags:
  ///   tags associated with the note template
  Future<NotificationTemplateResponse?> createNotificationTemplate(num version, int accountId, String conduit, String title, String body, { String? appKey, String? event, String? tags, }) async {
    final response = await createNotificationTemplateWithHttpInfo(version, accountId, conduit, title, body,  appKey: appKey, event: event, tags: tags, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'NotificationTemplateResponse',) as NotificationTemplateResponse;
    
    }
    return null;
  }

  /// Create or update blocked notification settings
  ///
  /// Create or update blocked notification settings
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [String] appKey (required):
  ///   The application key
  ///
  /// * [String] data (required):
  ///   batch data payload (application specific)
  ///
  /// * [int] accountId:
  ///   the account id of the user
  Future<Response> createOrUpdateBlockedNotificationsWithHttpInfo(num version, String appKey, String data, { int? accountId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/notification/blocked/batch'
      .replaceAll('{version}', version.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (accountId != null) {
      queryParams.addAll(_queryParams('', 'accountId', accountId));
    }
      queryParams.addAll(_queryParams('', 'appKey', appKey));
      queryParams.addAll(_queryParams('', 'data', data));

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

  /// Create or update blocked notification settings
  ///
  /// Create or update blocked notification settings
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [String] appKey (required):
  ///   The application key
  ///
  /// * [String] data (required):
  ///   batch data payload (application specific)
  ///
  /// * [int] accountId:
  ///   the account id of the user
  Future<BlockedNotificationResponse?> createOrUpdateBlockedNotifications(num version, String appKey, String data, { int? accountId, }) async {
    final response = await createOrUpdateBlockedNotificationsWithHttpInfo(version, appKey, data,  accountId: accountId, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'BlockedNotificationResponse',) as BlockedNotificationResponse;
    
    }
    return null;
  }

  /// Delete Notification Template
  ///
  /// Deletes a notification template. Developers will only be able to delete notification templates for their own applications.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] accountId (required):
  ///   the account id of the user
  ///
  /// * [int] notificationTemplateId (required):
  ///   the id of the notification template to delete
  Future<Response> deleteNotificationTemplateWithHttpInfo(num version, int accountId, int notificationTemplateId,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/notification/template/delete'
      .replaceAll('{version}', version.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'accountId', accountId));
      queryParams.addAll(_queryParams('', 'notificationTemplateId', notificationTemplateId));

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

  /// Delete Notification Template
  ///
  /// Deletes a notification template. Developers will only be able to delete notification templates for their own applications.
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] accountId (required):
  ///   the account id of the user
  ///
  /// * [int] notificationTemplateId (required):
  ///   the id of the notification template to delete
  Future<NotificationTemplateResponse?> deleteNotificationTemplate(num version, int accountId, int notificationTemplateId,) async {
    final response = await deleteNotificationTemplateWithHttpInfo(version, accountId, notificationTemplateId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'NotificationTemplateResponse',) as NotificationTemplateResponse;
    
    }
    return null;
  }

  /// Get Notification Template
  ///
  /// Get the details of a notification template. Developers will only be able to see notification templates for their own applications.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] accountId (required):
  ///   the id of the account
  ///
  /// * [int] notificationTemplateId (required):
  ///   the id of the notification template to get
  Future<Response> getNotificationTemplateWithHttpInfo(num version, int accountId, int notificationTemplateId,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/notification/template/get'
      .replaceAll('{version}', version.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'accountId', accountId));
      queryParams.addAll(_queryParams('', 'notificationTemplateId', notificationTemplateId));

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

  /// Get Notification Template
  ///
  /// Get the details of a notification template. Developers will only be able to see notification templates for their own applications.
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] accountId (required):
  ///   the id of the account
  ///
  /// * [int] notificationTemplateId (required):
  ///   the id of the notification template to get
  Future<NotificationTemplateResponse?> getNotificationTemplate(num version, int accountId, int notificationTemplateId,) async {
    final response = await getNotificationTemplateWithHttpInfo(version, accountId, notificationTemplateId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'NotificationTemplateResponse',) as NotificationTemplateResponse;
    
    }
    return null;
  }

  /// Get Notifications
  ///
  /// Get a list of notifications for a user. If the \"markAsRead\" parameter is set to true, the returned notifications will be marked as \"read\" after the response has been sent. By default, read messages will not be returned, so to see read messages, set \"returnReadMessages\" to true.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [String] deviceId:
  ///   the unique id of the device making the request (deviceId or accountId required)
  ///
  /// * [int] accountId:
  ///   the account id of the user (deviceId or accountId required)
  ///
  /// * [int] connectionAccountId:
  ///   the account id used to view another person's notifications
  ///
  /// * [String] appKey:
  ///   the application key to filter messages by application
  ///
  /// * [String] eventType:
  ///   comma separated list of EVENTS. Filters search results to only include these events. Don't include this parameter or pass in an empty string to return all event types.
  ///
  /// * [String] contentIds:
  ///   comma separated list of content ids to search notifications on
  ///
  /// * [String] contentTypes:
  ///   comma separated list of content types to search notifications on
  ///
  /// * [String] parentIds:
  ///   comma separated list of parent ids to search notifications on
  ///
  /// * [String] parentTypes:
  ///   comma separated list of parent types to search notifications on
  ///
  /// * [String] actionCategory:
  ///   Action category used to filter notifications
  ///
  /// * [String] conduits:
  ///   comma separated list of conduits to search notifications on
  ///
  /// * [String] keyword:
  ///   search notifications via keyword
  ///
  /// * [bool] returnReadMessages:
  ///   if set to true, will return notifications that have been marked as read
  ///
  /// * [bool] markAsRead:
  ///   if set to true, the returned notifications will be marked as \\\"read\\\" after the response has been sent
  ///
  /// * [int] fromDate:
  ///   filter notifications from this date
  ///
  /// * [double] latitude:
  ///   latitude used to update the user's current location
  ///
  /// * [double] longitude:
  ///   longitude used to update the user's current location
  ///
  /// * [bool] returnSent:
  ///   whether to include notifications sent by the requester in the response
  ///
  /// * [bool] ignoreFlagged:
  ///   whether to ignore flagged notifications
  ///
  /// * [int] start:
  ///   start of the pagination
  ///
  /// * [int] limit:
  ///   limit of the pagination
  Future<Response> getNotificationsWithHttpInfo(num version, { String? deviceId, int? accountId, int? connectionAccountId, String? appKey, String? eventType, String? contentIds, String? contentTypes, String? parentIds, String? parentTypes, String? actionCategory, String? conduits, String? keyword, bool? returnReadMessages, bool? markAsRead, int? fromDate, double? latitude, double? longitude, bool? returnSent, bool? ignoreFlagged, int? start, int? limit, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/notification/search'
      .replaceAll('{version}', version.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (deviceId != null) {
      queryParams.addAll(_queryParams('', 'deviceId', deviceId));
    }
    if (accountId != null) {
      queryParams.addAll(_queryParams('', 'accountId', accountId));
    }
    if (connectionAccountId != null) {
      queryParams.addAll(_queryParams('', 'connectionAccountId', connectionAccountId));
    }
    if (appKey != null) {
      queryParams.addAll(_queryParams('', 'appKey', appKey));
    }
    if (eventType != null) {
      queryParams.addAll(_queryParams('', 'eventType', eventType));
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
    if (actionCategory != null) {
      queryParams.addAll(_queryParams('', 'actionCategory', actionCategory));
    }
    if (conduits != null) {
      queryParams.addAll(_queryParams('', 'conduits', conduits));
    }
    if (keyword != null) {
      queryParams.addAll(_queryParams('', 'keyword', keyword));
    }
    if (returnReadMessages != null) {
      queryParams.addAll(_queryParams('', 'returnReadMessages', returnReadMessages));
    }
    if (markAsRead != null) {
      queryParams.addAll(_queryParams('', 'markAsRead', markAsRead));
    }
    if (fromDate != null) {
      queryParams.addAll(_queryParams('', 'fromDate', fromDate));
    }
    if (latitude != null) {
      queryParams.addAll(_queryParams('', 'latitude', latitude));
    }
    if (longitude != null) {
      queryParams.addAll(_queryParams('', 'longitude', longitude));
    }
    if (returnSent != null) {
      queryParams.addAll(_queryParams('', 'returnSent', returnSent));
    }
    if (ignoreFlagged != null) {
      queryParams.addAll(_queryParams('', 'ignoreFlagged', ignoreFlagged));
    }
    if (start != null) {
      queryParams.addAll(_queryParams('', 'start', start));
    }
    if (limit != null) {
      queryParams.addAll(_queryParams('', 'limit', limit));
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

  /// Get Notifications
  ///
  /// Get a list of notifications for a user. If the \"markAsRead\" parameter is set to true, the returned notifications will be marked as \"read\" after the response has been sent. By default, read messages will not be returned, so to see read messages, set \"returnReadMessages\" to true.
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [String] deviceId:
  ///   the unique id of the device making the request (deviceId or accountId required)
  ///
  /// * [int] accountId:
  ///   the account id of the user (deviceId or accountId required)
  ///
  /// * [int] connectionAccountId:
  ///   the account id used to view another person's notifications
  ///
  /// * [String] appKey:
  ///   the application key to filter messages by application
  ///
  /// * [String] eventType:
  ///   comma separated list of EVENTS. Filters search results to only include these events. Don't include this parameter or pass in an empty string to return all event types.
  ///
  /// * [String] contentIds:
  ///   comma separated list of content ids to search notifications on
  ///
  /// * [String] contentTypes:
  ///   comma separated list of content types to search notifications on
  ///
  /// * [String] parentIds:
  ///   comma separated list of parent ids to search notifications on
  ///
  /// * [String] parentTypes:
  ///   comma separated list of parent types to search notifications on
  ///
  /// * [String] actionCategory:
  ///   Action category used to filter notifications
  ///
  /// * [String] conduits:
  ///   comma separated list of conduits to search notifications on
  ///
  /// * [String] keyword:
  ///   search notifications via keyword
  ///
  /// * [bool] returnReadMessages:
  ///   if set to true, will return notifications that have been marked as read
  ///
  /// * [bool] markAsRead:
  ///   if set to true, the returned notifications will be marked as \\\"read\\\" after the response has been sent
  ///
  /// * [int] fromDate:
  ///   filter notifications from this date
  ///
  /// * [double] latitude:
  ///   latitude used to update the user's current location
  ///
  /// * [double] longitude:
  ///   longitude used to update the user's current location
  ///
  /// * [bool] returnSent:
  ///   whether to include notifications sent by the requester in the response
  ///
  /// * [bool] ignoreFlagged:
  ///   whether to ignore flagged notifications
  ///
  /// * [int] start:
  ///   start of the pagination
  ///
  /// * [int] limit:
  ///   limit of the pagination
  Future<NotificationMessageListResponse?> getNotifications(num version, { String? deviceId, int? accountId, int? connectionAccountId, String? appKey, String? eventType, String? contentIds, String? contentTypes, String? parentIds, String? parentTypes, String? actionCategory, String? conduits, String? keyword, bool? returnReadMessages, bool? markAsRead, int? fromDate, double? latitude, double? longitude, bool? returnSent, bool? ignoreFlagged, int? start, int? limit, }) async {
    final response = await getNotificationsWithHttpInfo(version,  deviceId: deviceId, accountId: accountId, connectionAccountId: connectionAccountId, appKey: appKey, eventType: eventType, contentIds: contentIds, contentTypes: contentTypes, parentIds: parentIds, parentTypes: parentTypes, actionCategory: actionCategory, conduits: conduits, keyword: keyword, returnReadMessages: returnReadMessages, markAsRead: markAsRead, fromDate: fromDate, latitude: latitude, longitude: longitude, returnSent: returnSent, ignoreFlagged: ignoreFlagged, start: start, limit: limit, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'NotificationMessageListResponse',) as NotificationMessageListResponse;
    
    }
    return null;
  }

  /// Register Notification Token
  ///
  /// Register a token to send application dependent notifications like Google Cloud Messaging, or Apple Push Notifications.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [String] token (required):
  ///   A token that is generated by the device to sign requests for the notification service providers
  ///
  /// * [String] pushType (required):
  ///   The type of push notification. Possible values include: APNS, GCM
  ///
  /// * [String] deviceId:
  ///   The unique id of the device making the request (deviceId or accountId required)
  ///
  /// * [int] accountId:
  ///   The account id of the user (deviceId or accountId required)
  ///
  /// * [String] environment:
  ///   Determines if the token is a DEVELOPMENT or PRODUCTION token
  ///
  /// * [String] appKey:
  ///   The application key
  ///
  /// * [String] gameType:
  ///   This parameter is deprecated (use appKey instead)
  ///
  /// * [bool] active:
  ///   Sets whether the token is active or not (non-active tokens are not used)
  ///
  /// * [double] latitude:
  ///   Latitude used to update the user's current location
  ///
  /// * [double] longitude:
  ///   Longitude used to update the user's current location
  Future<Response> registerNotificationTokenWithHttpInfo(num version, String token, String pushType, { String? deviceId, int? accountId, String? environment, String? appKey, String? gameType, bool? active, double? latitude, double? longitude, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/notification/token'
      .replaceAll('{version}', version.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (deviceId != null) {
      queryParams.addAll(_queryParams('', 'deviceId', deviceId));
    }
    if (accountId != null) {
      queryParams.addAll(_queryParams('', 'accountId', accountId));
    }
      queryParams.addAll(_queryParams('', 'token', token));
      queryParams.addAll(_queryParams('', 'pushType', pushType));
    if (environment != null) {
      queryParams.addAll(_queryParams('', 'environment', environment));
    }
    if (appKey != null) {
      queryParams.addAll(_queryParams('', 'appKey', appKey));
    }
    if (gameType != null) {
      queryParams.addAll(_queryParams('', 'gameType', gameType));
    }
    if (active != null) {
      queryParams.addAll(_queryParams('', 'active', active));
    }
    if (latitude != null) {
      queryParams.addAll(_queryParams('', 'latitude', latitude));
    }
    if (longitude != null) {
      queryParams.addAll(_queryParams('', 'longitude', longitude));
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

  /// Register Notification Token
  ///
  /// Register a token to send application dependent notifications like Google Cloud Messaging, or Apple Push Notifications.
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [String] token (required):
  ///   A token that is generated by the device to sign requests for the notification service providers
  ///
  /// * [String] pushType (required):
  ///   The type of push notification. Possible values include: APNS, GCM
  ///
  /// * [String] deviceId:
  ///   The unique id of the device making the request (deviceId or accountId required)
  ///
  /// * [int] accountId:
  ///   The account id of the user (deviceId or accountId required)
  ///
  /// * [String] environment:
  ///   Determines if the token is a DEVELOPMENT or PRODUCTION token
  ///
  /// * [String] appKey:
  ///   The application key
  ///
  /// * [String] gameType:
  ///   This parameter is deprecated (use appKey instead)
  ///
  /// * [bool] active:
  ///   Sets whether the token is active or not (non-active tokens are not used)
  ///
  /// * [double] latitude:
  ///   Latitude used to update the user's current location
  ///
  /// * [double] longitude:
  ///   Longitude used to update the user's current location
  Future<SirqulResponse?> registerNotificationToken(num version, String token, String pushType, { String? deviceId, int? accountId, String? environment, String? appKey, String? gameType, bool? active, double? latitude, double? longitude, }) async {
    final response = await registerNotificationTokenWithHttpInfo(version, token, pushType,  deviceId: deviceId, accountId: accountId, environment: environment, appKey: appKey, gameType: gameType, active: active, latitude: latitude, longitude: longitude, );
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

  /// Search on the user's blocked notification settings
  ///
  /// Search on the user's blocked notification settings
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [String] appKey (required):
  ///   The application key
  ///
  /// * [int] accountId:
  ///   the account id of the user
  ///
  /// * [String] searchTags:
  ///   search tags to filter results
  ///
  /// * [String] events:
  ///   events to filter by (comma separated)
  ///
  /// * [String] conduits:
  ///   conduits to filter by (comma separated)
  ///
  /// * [String] customTypes:
  ///   custom types to filter by (comma separated)
  ///
  /// * [String] contentTypes:
  ///   content types to filter by (comma separated)
  ///
  /// * [String] contentIds:
  ///   content ids to filter by (comma separated)
  ///
  /// * [String] sortField:
  ///   sort field for results
  ///
  /// * [bool] descending:
  ///   whether to sort descending
  ///
  /// * [int] start:
  ///   start of the pagination
  ///
  /// * [int] limit:
  ///   limit of the pagination
  Future<Response> searchBlockedNotificationsWithHttpInfo(num version, String appKey, { int? accountId, String? searchTags, String? events, String? conduits, String? customTypes, String? contentTypes, String? contentIds, String? sortField, bool? descending, int? start, int? limit, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/notification/blocked/search'
      .replaceAll('{version}', version.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (accountId != null) {
      queryParams.addAll(_queryParams('', 'accountId', accountId));
    }
      queryParams.addAll(_queryParams('', 'appKey', appKey));
    if (searchTags != null) {
      queryParams.addAll(_queryParams('', 'searchTags', searchTags));
    }
    if (events != null) {
      queryParams.addAll(_queryParams('', 'events', events));
    }
    if (conduits != null) {
      queryParams.addAll(_queryParams('', 'conduits', conduits));
    }
    if (customTypes != null) {
      queryParams.addAll(_queryParams('', 'customTypes', customTypes));
    }
    if (contentTypes != null) {
      queryParams.addAll(_queryParams('', 'contentTypes', contentTypes));
    }
    if (contentIds != null) {
      queryParams.addAll(_queryParams('', 'contentIds', contentIds));
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

  /// Search on the user's blocked notification settings
  ///
  /// Search on the user's blocked notification settings
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [String] appKey (required):
  ///   The application key
  ///
  /// * [int] accountId:
  ///   the account id of the user
  ///
  /// * [String] searchTags:
  ///   search tags to filter results
  ///
  /// * [String] events:
  ///   events to filter by (comma separated)
  ///
  /// * [String] conduits:
  ///   conduits to filter by (comma separated)
  ///
  /// * [String] customTypes:
  ///   custom types to filter by (comma separated)
  ///
  /// * [String] contentTypes:
  ///   content types to filter by (comma separated)
  ///
  /// * [String] contentIds:
  ///   content ids to filter by (comma separated)
  ///
  /// * [String] sortField:
  ///   sort field for results
  ///
  /// * [bool] descending:
  ///   whether to sort descending
  ///
  /// * [int] start:
  ///   start of the pagination
  ///
  /// * [int] limit:
  ///   limit of the pagination
  Future<BlockedNotificationResponse?> searchBlockedNotifications(num version, String appKey, { int? accountId, String? searchTags, String? events, String? conduits, String? customTypes, String? contentTypes, String? contentIds, String? sortField, bool? descending, int? start, int? limit, }) async {
    final response = await searchBlockedNotificationsWithHttpInfo(version, appKey,  accountId: accountId, searchTags: searchTags, events: events, conduits: conduits, customTypes: customTypes, contentTypes: contentTypes, contentIds: contentIds, sortField: sortField, descending: descending, start: start, limit: limit, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'BlockedNotificationResponse',) as BlockedNotificationResponse;
    
    }
    return null;
  }

  /// Search Notification Templates
  ///
  /// Search for notification templates on owned applications.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] accountId (required):
  ///   The account ID of the user.
  ///
  /// * [String] sortField (required):
  ///   Specifies how results are ordered.ID - order results by the notificationTemplateId CREATED - order results by the created date UPDATED - order results by the updated date TITLE - order results by title EVENT - order results by event CONDUIT - order results by conduit APP_NAME - order results by the application name ('global' templates will not have an application and will be returned last if 'descending' is set to false.
  ///
  /// * [bool] descending (required):
  ///   Specified whether the results are returned in descending or ascending order.
  ///
  /// * [int] start (required):
  ///   The start of the pagination.
  ///
  /// * [int] limit (required):
  ///   The limit of the pagination.
  ///
  /// * [String] appKey:
  ///   Filter results by application.
  ///
  /// * [String] event:
  ///   Filter results by event.
  ///
  /// * [String] conduit:
  ///   Filter results by notification type: EMAIL, SMS, PUSH, MOBILE_NOTIFICATION.
  ///
  /// * [bool] globalOnly:
  ///   Returns only templates that have been reserved for system use on all applications (only for admin accounts).
  ///
  /// * [bool] reservedOnly:
  ///   Returns only templates that use reserved events.
  ///
  /// * [String] keyword:
  ///   Filter results by keyword on the title, tags.
  Future<Response> searchNotificationTemplateWithHttpInfo(num version, int accountId, String sortField, bool descending, int start, int limit, { String? appKey, String? event, String? conduit, bool? globalOnly, bool? reservedOnly, String? keyword, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/notification/template/search'
      .replaceAll('{version}', version.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'accountId', accountId));
    if (appKey != null) {
      queryParams.addAll(_queryParams('', 'appKey', appKey));
    }
    if (event != null) {
      queryParams.addAll(_queryParams('', 'event', event));
    }
    if (conduit != null) {
      queryParams.addAll(_queryParams('', 'conduit', conduit));
    }
    if (globalOnly != null) {
      queryParams.addAll(_queryParams('', 'globalOnly', globalOnly));
    }
    if (reservedOnly != null) {
      queryParams.addAll(_queryParams('', 'reservedOnly', reservedOnly));
    }
    if (keyword != null) {
      queryParams.addAll(_queryParams('', 'keyword', keyword));
    }
      queryParams.addAll(_queryParams('', 'sortField', sortField));
      queryParams.addAll(_queryParams('', 'descending', descending));
      queryParams.addAll(_queryParams('', 'start', start));
      queryParams.addAll(_queryParams('', 'limit', limit));

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

  /// Search Notification Templates
  ///
  /// Search for notification templates on owned applications.
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] accountId (required):
  ///   The account ID of the user.
  ///
  /// * [String] sortField (required):
  ///   Specifies how results are ordered.ID - order results by the notificationTemplateId CREATED - order results by the created date UPDATED - order results by the updated date TITLE - order results by title EVENT - order results by event CONDUIT - order results by conduit APP_NAME - order results by the application name ('global' templates will not have an application and will be returned last if 'descending' is set to false.
  ///
  /// * [bool] descending (required):
  ///   Specified whether the results are returned in descending or ascending order.
  ///
  /// * [int] start (required):
  ///   The start of the pagination.
  ///
  /// * [int] limit (required):
  ///   The limit of the pagination.
  ///
  /// * [String] appKey:
  ///   Filter results by application.
  ///
  /// * [String] event:
  ///   Filter results by event.
  ///
  /// * [String] conduit:
  ///   Filter results by notification type: EMAIL, SMS, PUSH, MOBILE_NOTIFICATION.
  ///
  /// * [bool] globalOnly:
  ///   Returns only templates that have been reserved for system use on all applications (only for admin accounts).
  ///
  /// * [bool] reservedOnly:
  ///   Returns only templates that use reserved events.
  ///
  /// * [String] keyword:
  ///   Filter results by keyword on the title, tags.
  Future<NotificationTemplateResponse?> searchNotificationTemplate(num version, int accountId, String sortField, bool descending, int start, int limit, { String? appKey, String? event, String? conduit, bool? globalOnly, bool? reservedOnly, String? keyword, }) async {
    final response = await searchNotificationTemplateWithHttpInfo(version, accountId, sortField, descending, start, limit,  appKey: appKey, event: event, conduit: conduit, globalOnly: globalOnly, reservedOnly: reservedOnly, keyword: keyword, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'NotificationTemplateResponse',) as NotificationTemplateResponse;
    
    }
    return null;
  }

  /// Search for Recipients
  ///
  /// Search for application users to send notifications.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [String] sortField (required):
  ///   The field to sort by. Possible values include: {ACCOUNT_DISPLAY, CREATED, UPDATED, ACTIVE, DELETED, LAST_LOGGED_IN, CONTACT_EMAIL, RETAILER_LOCATION_NAME, RETAILER_NAME, APPLICATION_NAME}
  ///
  /// * [String] deviceId:
  ///   the unique id of the device making the request (deviceId or accountId required)
  ///
  /// * [int] accountId:
  ///   the account id of the user (deviceId or accountId required)
  ///
  /// * [String] appKey:
  ///   filters results by application. If this is empty, will return all recipients for all applications that the user has access to.
  ///
  /// * [String] conduit:
  ///   the type of notification to send: EMAIL, SMS, PUSH, MOBILE_NOTIFICATION.
  ///
  /// * [String] keyword:
  ///   search by keyword on user's display name and email
  ///
  /// * [int] audienceId:
  ///   This parameter is deprecated. filter results by audience
  ///
  /// * [String] audienceIds:
  ///   filter results by audiences (comma separated list of audience ids)
  ///
  /// * [String] connectionGroupIds:
  ///   filter results by connection groups (comma separated list of connection group ids)
  ///
  /// * [String] recipientAccountIds:
  ///   filter results by accounts (comma separated list of account ids)
  ///
  /// * [bool] descending:
  ///   Determines whether the sorted list is in descending or ascending order
  ///
  /// * [int] start:
  ///   start of the pagination
  ///
  /// * [int] limit:
  ///   limit of the pagination (hard limit of 1000)
  Future<Response> searchRecipientsWithHttpInfo(num version, String sortField, { String? deviceId, int? accountId, String? appKey, String? conduit, String? keyword, int? audienceId, String? audienceIds, String? connectionGroupIds, String? recipientAccountIds, bool? descending, int? start, int? limit, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/notification/recipient/search'
      .replaceAll('{version}', version.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (deviceId != null) {
      queryParams.addAll(_queryParams('', 'deviceId', deviceId));
    }
    if (accountId != null) {
      queryParams.addAll(_queryParams('', 'accountId', accountId));
    }
    if (appKey != null) {
      queryParams.addAll(_queryParams('', 'appKey', appKey));
    }
    if (conduit != null) {
      queryParams.addAll(_queryParams('', 'conduit', conduit));
    }
    if (keyword != null) {
      queryParams.addAll(_queryParams('', 'keyword', keyword));
    }
    if (audienceId != null) {
      queryParams.addAll(_queryParams('', 'audienceId', audienceId));
    }
    if (audienceIds != null) {
      queryParams.addAll(_queryParams('', 'audienceIds', audienceIds));
    }
    if (connectionGroupIds != null) {
      queryParams.addAll(_queryParams('', 'connectionGroupIds', connectionGroupIds));
    }
    if (recipientAccountIds != null) {
      queryParams.addAll(_queryParams('', 'recipientAccountIds', recipientAccountIds));
    }
      queryParams.addAll(_queryParams('', 'sortField', sortField));
    if (descending != null) {
      queryParams.addAll(_queryParams('', 'descending', descending));
    }
    if (start != null) {
      queryParams.addAll(_queryParams('', 'start', start));
    }
    if (limit != null) {
      queryParams.addAll(_queryParams('', 'limit', limit));
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

  /// Search for Recipients
  ///
  /// Search for application users to send notifications.
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [String] sortField (required):
  ///   The field to sort by. Possible values include: {ACCOUNT_DISPLAY, CREATED, UPDATED, ACTIVE, DELETED, LAST_LOGGED_IN, CONTACT_EMAIL, RETAILER_LOCATION_NAME, RETAILER_NAME, APPLICATION_NAME}
  ///
  /// * [String] deviceId:
  ///   the unique id of the device making the request (deviceId or accountId required)
  ///
  /// * [int] accountId:
  ///   the account id of the user (deviceId or accountId required)
  ///
  /// * [String] appKey:
  ///   filters results by application. If this is empty, will return all recipients for all applications that the user has access to.
  ///
  /// * [String] conduit:
  ///   the type of notification to send: EMAIL, SMS, PUSH, MOBILE_NOTIFICATION.
  ///
  /// * [String] keyword:
  ///   search by keyword on user's display name and email
  ///
  /// * [int] audienceId:
  ///   This parameter is deprecated. filter results by audience
  ///
  /// * [String] audienceIds:
  ///   filter results by audiences (comma separated list of audience ids)
  ///
  /// * [String] connectionGroupIds:
  ///   filter results by connection groups (comma separated list of connection group ids)
  ///
  /// * [String] recipientAccountIds:
  ///   filter results by accounts (comma separated list of account ids)
  ///
  /// * [bool] descending:
  ///   Determines whether the sorted list is in descending or ascending order
  ///
  /// * [int] start:
  ///   start of the pagination
  ///
  /// * [int] limit:
  ///   limit of the pagination (hard limit of 1000)
  Future<List<NotificationRecipientResponse>?> searchRecipients(num version, String sortField, { String? deviceId, int? accountId, String? appKey, String? conduit, String? keyword, int? audienceId, String? audienceIds, String? connectionGroupIds, String? recipientAccountIds, bool? descending, int? start, int? limit, }) async {
    final response = await searchRecipientsWithHttpInfo(version, sortField,  deviceId: deviceId, accountId: accountId, appKey: appKey, conduit: conduit, keyword: keyword, audienceId: audienceId, audienceIds: audienceIds, connectionGroupIds: connectionGroupIds, recipientAccountIds: recipientAccountIds, descending: descending, start: start, limit: limit, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<NotificationRecipientResponse>') as List)
        .cast<NotificationRecipientResponse>()
        .toList(growable: false);

    }
    return null;
  }

  /// Search for Recipients (Counts/Grouped)
  ///
  /// Search for application users to send notifications (count/grouped variant).
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [String] deviceId:
  ///   the unique id of the device making the request (deviceId or accountId required)
  ///
  /// * [int] accountId:
  ///   the account id of the user (deviceId or accountId required)
  ///
  /// * [String] appKey:
  ///   filters results by application. If this is empty, will return all recipients for all applications that the user has access to.
  ///
  /// * [String] conduit:
  ///   the type of notification to send: EMAIL, SMS, PUSH, MOBILE_NOTIFICATION.
  ///
  /// * [String] keyword:
  ///   search by keyword on user's display name and email
  ///
  /// * [int] audienceId:
  ///   This parameter is deprecated. filter results by audience
  ///
  /// * [String] audienceIds:
  ///   filter results by audiences (comma separated list of audience ids)
  ///
  /// * [String] connectionGroupIds:
  ///   filter results by connection groups (comma separated list of connection group ids)
  ///
  /// * [String] sortField:
  ///   The field to sort by (see API docs for allowed values).
  ///
  /// * [bool] descending:
  ///   Determines whether the sorted list is in descending or ascending order
  ///
  /// * [int] start:
  ///   start of the pagination
  ///
  /// * [int] limit:
  ///   limit of the pagination
  Future<Response> searchRecipientsCountWithHttpInfo(num version, { String? deviceId, int? accountId, String? appKey, String? conduit, String? keyword, int? audienceId, String? audienceIds, String? connectionGroupIds, String? sortField, bool? descending, int? start, int? limit, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/notification/recipient/search/count'
      .replaceAll('{version}', version.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (deviceId != null) {
      queryParams.addAll(_queryParams('', 'deviceId', deviceId));
    }
    if (accountId != null) {
      queryParams.addAll(_queryParams('', 'accountId', accountId));
    }
    if (appKey != null) {
      queryParams.addAll(_queryParams('', 'appKey', appKey));
    }
    if (conduit != null) {
      queryParams.addAll(_queryParams('', 'conduit', conduit));
    }
    if (keyword != null) {
      queryParams.addAll(_queryParams('', 'keyword', keyword));
    }
    if (audienceId != null) {
      queryParams.addAll(_queryParams('', 'audienceId', audienceId));
    }
    if (audienceIds != null) {
      queryParams.addAll(_queryParams('', 'audienceIds', audienceIds));
    }
    if (connectionGroupIds != null) {
      queryParams.addAll(_queryParams('', 'connectionGroupIds', connectionGroupIds));
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

  /// Search for Recipients (Counts/Grouped)
  ///
  /// Search for application users to send notifications (count/grouped variant).
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [String] deviceId:
  ///   the unique id of the device making the request (deviceId or accountId required)
  ///
  /// * [int] accountId:
  ///   the account id of the user (deviceId or accountId required)
  ///
  /// * [String] appKey:
  ///   filters results by application. If this is empty, will return all recipients for all applications that the user has access to.
  ///
  /// * [String] conduit:
  ///   the type of notification to send: EMAIL, SMS, PUSH, MOBILE_NOTIFICATION.
  ///
  /// * [String] keyword:
  ///   search by keyword on user's display name and email
  ///
  /// * [int] audienceId:
  ///   This parameter is deprecated. filter results by audience
  ///
  /// * [String] audienceIds:
  ///   filter results by audiences (comma separated list of audience ids)
  ///
  /// * [String] connectionGroupIds:
  ///   filter results by connection groups (comma separated list of connection group ids)
  ///
  /// * [String] sortField:
  ///   The field to sort by (see API docs for allowed values).
  ///
  /// * [bool] descending:
  ///   Determines whether the sorted list is in descending or ascending order
  ///
  /// * [int] start:
  ///   start of the pagination
  ///
  /// * [int] limit:
  ///   limit of the pagination
  Future<NotificationRecipientResponseListResponse?> searchRecipientsCount(num version, { String? deviceId, int? accountId, String? appKey, String? conduit, String? keyword, int? audienceId, String? audienceIds, String? connectionGroupIds, String? sortField, bool? descending, int? start, int? limit, }) async {
    final response = await searchRecipientsCountWithHttpInfo(version,  deviceId: deviceId, accountId: accountId, appKey: appKey, conduit: conduit, keyword: keyword, audienceId: audienceId, audienceIds: audienceIds, connectionGroupIds: connectionGroupIds, sortField: sortField, descending: descending, start: start, limit: limit, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'NotificationRecipientResponseListResponse',) as NotificationRecipientResponseListResponse;
    
    }
    return null;
  }

  /// Send Batch Notifications
  ///
  /// Send notifications to all users of an application. Only someone with permissions to the application can do this.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] accountId (required):
  ///   The account id of the application owner/manager
  ///
  /// * [String] appKey (required):
  ///   The application key for updating an existing application
  ///
  /// * [String] customMessage (required):
  ///   Message string that will be displayed in on the notification
  ///
  /// * [String] conduit:
  ///   The type of notification to send: EMAIL, SMS, PUSH, MOBILE_NOTIFICATION.
  ///
  /// * [int] contentId:
  ///   Default notification pay-load field (usage is dependent on the app and the type of event)
  ///
  /// * [String] contentName:
  ///   Default notification pay-load field (usage is dependent on the app and the type of event)
  ///
  /// * [String] contentType:
  ///   Default notification pay-load field (usage is dependent on the app and the type of event)
  ///
  /// * [int] parentId:
  ///   Default notification pay-load field (usage is dependent on the app and the type of event)
  ///
  /// * [String] parentType:
  ///   Default notification pay-load field (usage is dependent on the app and the type of event)
  Future<Response> sendBatchNotificationsWithHttpInfo(num version, int accountId, String appKey, String customMessage, { String? conduit, int? contentId, String? contentName, String? contentType, int? parentId, String? parentType, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/notification/batch'
      .replaceAll('{version}', version.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'accountId', accountId));
      queryParams.addAll(_queryParams('', 'appKey', appKey));
    if (conduit != null) {
      queryParams.addAll(_queryParams('', 'conduit', conduit));
    }
      queryParams.addAll(_queryParams('', 'customMessage', customMessage));
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

  /// Send Batch Notifications
  ///
  /// Send notifications to all users of an application. Only someone with permissions to the application can do this.
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] accountId (required):
  ///   The account id of the application owner/manager
  ///
  /// * [String] appKey (required):
  ///   The application key for updating an existing application
  ///
  /// * [String] customMessage (required):
  ///   Message string that will be displayed in on the notification
  ///
  /// * [String] conduit:
  ///   The type of notification to send: EMAIL, SMS, PUSH, MOBILE_NOTIFICATION.
  ///
  /// * [int] contentId:
  ///   Default notification pay-load field (usage is dependent on the app and the type of event)
  ///
  /// * [String] contentName:
  ///   Default notification pay-load field (usage is dependent on the app and the type of event)
  ///
  /// * [String] contentType:
  ///   Default notification pay-load field (usage is dependent on the app and the type of event)
  ///
  /// * [int] parentId:
  ///   Default notification pay-load field (usage is dependent on the app and the type of event)
  ///
  /// * [String] parentType:
  ///   Default notification pay-load field (usage is dependent on the app and the type of event)
  Future<SirqulResponse?> sendBatchNotifications(num version, int accountId, String appKey, String customMessage, { String? conduit, int? contentId, String? contentName, String? contentType, int? parentId, String? parentType, }) async {
    final response = await sendBatchNotificationsWithHttpInfo(version, accountId, appKey, customMessage,  conduit: conduit, contentId: contentId, contentName: contentName, contentType: contentType, parentId: parentId, parentType: parentType, );
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

  /// Send Custom Notifications
  ///
  /// Send your own custom notification to a user. NOTE: the EventType of these notifications will be CUSTOM. Notifications sent to yourself will currently be ignored.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [String] deviceId:
  ///   the unique id of the device making the request (deviceId or accountId required)
  ///
  /// * [int] accountId:
  ///   the account id of the user (deviceId or accountId required)
  ///
  /// * [String] receiverAccountIds:
  ///   comma separated list of account IDs that will receive the notification
  ///
  /// * [bool] includeFriendGroup:
  ///   determines whether to send to all of the user's friends, this flag must be true or receiverAccountIds must not be empty
  ///
  /// * [String] appKey:
  ///   the application key
  ///
  /// * [String] gameType:
  ///   This parameter is deprecated.
  ///
  /// * [String] conduit:
  ///   the type of notification to send: EMAIL, SMS, PUSH, MOBILE_NOTIFICATION.
  ///
  /// * [int] contentId:
  ///   default notification pay-load field (usage is dependent on the app and the type of event)
  ///
  /// * [String] contentName:
  ///   default notification pay-load field (usage is dependent on the app and the type of event)
  ///
  /// * [String] contentType:
  ///   default notification pay-load field (usage is dependent on the app and the type of event)
  ///
  /// * [int] parentId:
  ///   default notification pay-load field (usage is dependent on the app and the type of event)
  ///
  /// * [String] parentType:
  ///   default notification pay-load field (usage is dependent on the app and the type of event)
  ///
  /// * [String] actionCategory:
  ///   
  ///
  /// * [String] subject:
  ///   the subject line of an email #@param customPayload custom json definition of notification pay-load (usage is dependent on the app and the type of event)
  ///
  /// * [String] customMessage:
  ///   message string that will be displayed in on the notification
  ///
  /// * [bool] friendOnlyAPNS:
  ///   only sends APNS to people who are friends of the user (still saves the notification message for feed polling)
  ///
  /// * [double] latitude:
  ///   latitude used to update the user's current location
  ///
  /// * [double] longitude:
  ///   longitude used to update the user's current location
  Future<Response> sendCustomNotificationsWithHttpInfo(num version, { String? deviceId, int? accountId, String? receiverAccountIds, bool? includeFriendGroup, String? appKey, String? gameType, String? conduit, int? contentId, String? contentName, String? contentType, int? parentId, String? parentType, String? actionCategory, String? subject, String? customMessage, bool? friendOnlyAPNS, double? latitude, double? longitude, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/notification/custom'
      .replaceAll('{version}', version.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (deviceId != null) {
      queryParams.addAll(_queryParams('', 'deviceId', deviceId));
    }
    if (accountId != null) {
      queryParams.addAll(_queryParams('', 'accountId', accountId));
    }
    if (receiverAccountIds != null) {
      queryParams.addAll(_queryParams('', 'receiverAccountIds', receiverAccountIds));
    }
    if (includeFriendGroup != null) {
      queryParams.addAll(_queryParams('', 'includeFriendGroup', includeFriendGroup));
    }
    if (appKey != null) {
      queryParams.addAll(_queryParams('', 'appKey', appKey));
    }
    if (gameType != null) {
      queryParams.addAll(_queryParams('', 'gameType', gameType));
    }
    if (conduit != null) {
      queryParams.addAll(_queryParams('', 'conduit', conduit));
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
    if (actionCategory != null) {
      queryParams.addAll(_queryParams('', 'actionCategory', actionCategory));
    }
    if (subject != null) {
      queryParams.addAll(_queryParams('', 'subject', subject));
    }
    if (customMessage != null) {
      queryParams.addAll(_queryParams('', 'customMessage', customMessage));
    }
    if (friendOnlyAPNS != null) {
      queryParams.addAll(_queryParams('', 'friendOnlyAPNS', friendOnlyAPNS));
    }
    if (latitude != null) {
      queryParams.addAll(_queryParams('', 'latitude', latitude));
    }
    if (longitude != null) {
      queryParams.addAll(_queryParams('', 'longitude', longitude));
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

  /// Send Custom Notifications
  ///
  /// Send your own custom notification to a user. NOTE: the EventType of these notifications will be CUSTOM. Notifications sent to yourself will currently be ignored.
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [String] deviceId:
  ///   the unique id of the device making the request (deviceId or accountId required)
  ///
  /// * [int] accountId:
  ///   the account id of the user (deviceId or accountId required)
  ///
  /// * [String] receiverAccountIds:
  ///   comma separated list of account IDs that will receive the notification
  ///
  /// * [bool] includeFriendGroup:
  ///   determines whether to send to all of the user's friends, this flag must be true or receiverAccountIds must not be empty
  ///
  /// * [String] appKey:
  ///   the application key
  ///
  /// * [String] gameType:
  ///   This parameter is deprecated.
  ///
  /// * [String] conduit:
  ///   the type of notification to send: EMAIL, SMS, PUSH, MOBILE_NOTIFICATION.
  ///
  /// * [int] contentId:
  ///   default notification pay-load field (usage is dependent on the app and the type of event)
  ///
  /// * [String] contentName:
  ///   default notification pay-load field (usage is dependent on the app and the type of event)
  ///
  /// * [String] contentType:
  ///   default notification pay-load field (usage is dependent on the app and the type of event)
  ///
  /// * [int] parentId:
  ///   default notification pay-load field (usage is dependent on the app and the type of event)
  ///
  /// * [String] parentType:
  ///   default notification pay-load field (usage is dependent on the app and the type of event)
  ///
  /// * [String] actionCategory:
  ///   
  ///
  /// * [String] subject:
  ///   the subject line of an email #@param customPayload custom json definition of notification pay-load (usage is dependent on the app and the type of event)
  ///
  /// * [String] customMessage:
  ///   message string that will be displayed in on the notification
  ///
  /// * [bool] friendOnlyAPNS:
  ///   only sends APNS to people who are friends of the user (still saves the notification message for feed polling)
  ///
  /// * [double] latitude:
  ///   latitude used to update the user's current location
  ///
  /// * [double] longitude:
  ///   longitude used to update the user's current location
  Future<SirqulResponse?> sendCustomNotifications(num version, { String? deviceId, int? accountId, String? receiverAccountIds, bool? includeFriendGroup, String? appKey, String? gameType, String? conduit, int? contentId, String? contentName, String? contentType, int? parentId, String? parentType, String? actionCategory, String? subject, String? customMessage, bool? friendOnlyAPNS, double? latitude, double? longitude, }) async {
    final response = await sendCustomNotificationsWithHttpInfo(version,  deviceId: deviceId, accountId: accountId, receiverAccountIds: receiverAccountIds, includeFriendGroup: includeFriendGroup, appKey: appKey, gameType: gameType, conduit: conduit, contentId: contentId, contentName: contentName, contentType: contentType, parentId: parentId, parentType: parentType, actionCategory: actionCategory, subject: subject, customMessage: customMessage, friendOnlyAPNS: friendOnlyAPNS, latitude: latitude, longitude: longitude, );
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

  /// Update Notification Template
  ///
  /// Update a notification template. Developers will only be able to update notification templates for their own applications.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] accountId (required):
  ///   The account ID of the user.
  ///
  /// * [int] notificationTemplateId (required):
  ///   The notification template ID to update.
  ///
  /// * [String] title:
  ///   The title of the message (this would become the subject title for emails). There is a 191 character limit.
  ///
  /// * [String] body:
  ///   The body of the message.
  ///
  /// * [String] tags:
  ///   The search tags on the template used during search queries.
  Future<Response> updateNotificationTemplateWithHttpInfo(num version, int accountId, int notificationTemplateId, { String? title, String? body, String? tags, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/notification/template/update'
      .replaceAll('{version}', version.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'accountId', accountId));
      queryParams.addAll(_queryParams('', 'notificationTemplateId', notificationTemplateId));
    if (title != null) {
      queryParams.addAll(_queryParams('', 'title', title));
    }
    if (body != null) {
      queryParams.addAll(_queryParams('', 'body', body));
    }
    if (tags != null) {
      queryParams.addAll(_queryParams('', 'tags', tags));
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

  /// Update Notification Template
  ///
  /// Update a notification template. Developers will only be able to update notification templates for their own applications.
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] accountId (required):
  ///   The account ID of the user.
  ///
  /// * [int] notificationTemplateId (required):
  ///   The notification template ID to update.
  ///
  /// * [String] title:
  ///   The title of the message (this would become the subject title for emails). There is a 191 character limit.
  ///
  /// * [String] body:
  ///   The body of the message.
  ///
  /// * [String] tags:
  ///   The search tags on the template used during search queries.
  Future<NotificationTemplateResponse?> updateNotificationTemplate(num version, int accountId, int notificationTemplateId, { String? title, String? body, String? tags, }) async {
    final response = await updateNotificationTemplateWithHttpInfo(version, accountId, notificationTemplateId,  title: title, body: body, tags: tags, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'NotificationTemplateResponse',) as NotificationTemplateResponse;
    
    }
    return null;
  }
}
