//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class AssignmentApi {
  AssignmentApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Search Assignment Assignees
  ///
  /// Search for avaiable users for creating or updating assignment.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] accountId (required):
  ///   The account id sending the request
  ///
  /// * [String] keyword:
  ///   The keyword to filter the returned results
  Future<Response> assigmentAssigneeAccountSearchWithHttpInfo(int accountId, { String? keyword, }) async {
    // ignore: prefer_const_declarations
    final path = r'/assignment/assignee/search';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'accountId', accountId));
    if (keyword != null) {
      queryParams.addAll(_queryParams('', 'keyword', keyword));
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

  /// Search Assignment Assignees
  ///
  /// Search for avaiable users for creating or updating assignment.
  ///
  /// Parameters:
  ///
  /// * [int] accountId (required):
  ///   The account id sending the request
  ///
  /// * [String] keyword:
  ///   The keyword to filter the returned results
  Future<List<AccountMiniResponse>?> assigmentAssigneeAccountSearch(int accountId, { String? keyword, }) async {
    final response = await assigmentAssigneeAccountSearchWithHttpInfo(accountId,  keyword: keyword, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<AccountMiniResponse>') as List)
        .cast<AccountMiniResponse>()
        .toList(growable: false);

    }
    return null;
  }

  /// Create Assignment
  ///
  /// Create an assignment.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] accountId (required):
  ///   the user account id
  ///
  /// * [String] name (required):
  ///   the name for the assignment
  ///
  /// * [int] assigneeAccountId (required):
  ///   the account id to assign to
  ///
  /// * [String] description:
  ///   the desciprtion for the assignment
  ///
  /// * [int] retailerLocationId:
  ///   the retailer location id
  ///
  /// * [String] tags:
  ///   the tags
  ///
  /// * [bool] active:
  ///   determines whether the assignment is active or inactive
  Future<Response> assignmentCreateWithHttpInfo(int accountId, String name, int assigneeAccountId, { String? description, int? retailerLocationId, String? tags, bool? active, }) async {
    // ignore: prefer_const_declarations
    final path = r'/assignment/create';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'accountId', accountId));
      queryParams.addAll(_queryParams('', 'name', name));
    if (description != null) {
      queryParams.addAll(_queryParams('', 'description', description));
    }
      queryParams.addAll(_queryParams('', 'assigneeAccountId', assigneeAccountId));
    if (retailerLocationId != null) {
      queryParams.addAll(_queryParams('', 'retailerLocationId', retailerLocationId));
    }
    if (tags != null) {
      queryParams.addAll(_queryParams('', 'tags', tags));
    }
    if (active != null) {
      queryParams.addAll(_queryParams('', 'active', active));
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

  /// Create Assignment
  ///
  /// Create an assignment.
  ///
  /// Parameters:
  ///
  /// * [int] accountId (required):
  ///   the user account id
  ///
  /// * [String] name (required):
  ///   the name for the assignment
  ///
  /// * [int] assigneeAccountId (required):
  ///   the account id to assign to
  ///
  /// * [String] description:
  ///   the desciprtion for the assignment
  ///
  /// * [int] retailerLocationId:
  ///   the retailer location id
  ///
  /// * [String] tags:
  ///   the tags
  ///
  /// * [bool] active:
  ///   determines whether the assignment is active or inactive
  Future<AssignmentResponse?> assignmentCreate(int accountId, String name, int assigneeAccountId, { String? description, int? retailerLocationId, String? tags, bool? active, }) async {
    final response = await assignmentCreateWithHttpInfo(accountId, name, assigneeAccountId,  description: description, retailerLocationId: retailerLocationId, tags: tags, active: active, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'AssignmentResponse',) as AssignmentResponse;
    
    }
    return null;
  }

  /// Delete Assignment
  ///
  /// Delete an assignment.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] accountId (required):
  ///   the user account id
  ///
  /// * [int] assignmentId (required):
  ///   the assignment id
  Future<Response> assignmentDeleteWithHttpInfo(int accountId, int assignmentId,) async {
    // ignore: prefer_const_declarations
    final path = r'/assignment/delete';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'accountId', accountId));
      queryParams.addAll(_queryParams('', 'assignmentId', assignmentId));

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

  /// Delete Assignment
  ///
  /// Delete an assignment.
  ///
  /// Parameters:
  ///
  /// * [int] accountId (required):
  ///   the user account id
  ///
  /// * [int] assignmentId (required):
  ///   the assignment id
  Future<SirqulResponse?> assignmentDelete(int accountId, int assignmentId,) async {
    final response = await assignmentDeleteWithHttpInfo(accountId, assignmentId,);
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

  /// Get Assignment
  ///
  /// Get the details of an assignment.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] accountId (required):
  ///   the user account id
  ///
  /// * [int] assignmentId (required):
  ///   the assignment id
  Future<Response> assignmentGetWithHttpInfo(int accountId, int assignmentId,) async {
    // ignore: prefer_const_declarations
    final path = r'/assignment/get';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'accountId', accountId));
      queryParams.addAll(_queryParams('', 'assignmentId', assignmentId));

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

  /// Get Assignment
  ///
  /// Get the details of an assignment.
  ///
  /// Parameters:
  ///
  /// * [int] accountId (required):
  ///   the user account id
  ///
  /// * [int] assignmentId (required):
  ///   the assignment id
  Future<AssignmentResponse?> assignmentGet(int accountId, int assignmentId,) async {
    final response = await assignmentGetWithHttpInfo(accountId, assignmentId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'AssignmentResponse',) as AssignmentResponse;
    
    }
    return null;
  }

  /// Search Assignments
  ///
  /// Search for assignments by the given parameters.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] accountId (required):
  ///   the account sending the request
  ///
  /// * [String] sortField (required):
  ///   sort by table field
  ///
  /// * [bool] descending (required):
  ///   return results in descending order or not
  ///
  /// * [bool] activeOnly (required):
  ///   return active results only or not
  ///
  /// * [int] start (required):
  ///   The record to begin the return set on
  ///
  /// * [int] limit (required):
  ///   The number of records to return
  ///
  /// * [int] creatorAccountId:
  ///   the creator of the assignment
  ///
  /// * [String] assigneeAccountIds:
  ///   filter results by assignee accounts. If not provided, all assignments that are assigned to accounts that are managed by the requested account will be returned.
  ///
  /// * [String] retailerLocationIds:
  ///   filter results by retailer locations
  ///
  /// * [String] currentStatusType:
  ///   filter results by assignment status
  ///
  /// * [String] keyword:
  ///   filter results by keyword search that matches the assignee, creator, or retailer location name
  Future<Response> assignmentSearchWithHttpInfo(int accountId, String sortField, bool descending, bool activeOnly, int start, int limit, { int? creatorAccountId, String? assigneeAccountIds, String? retailerLocationIds, String? currentStatusType, String? keyword, }) async {
    // ignore: prefer_const_declarations
    final path = r'/assignment/search';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'accountId', accountId));
    if (creatorAccountId != null) {
      queryParams.addAll(_queryParams('', 'creatorAccountId', creatorAccountId));
    }
    if (assigneeAccountIds != null) {
      queryParams.addAll(_queryParams('', 'assigneeAccountIds', assigneeAccountIds));
    }
    if (retailerLocationIds != null) {
      queryParams.addAll(_queryParams('', 'retailerLocationIds', retailerLocationIds));
    }
    if (currentStatusType != null) {
      queryParams.addAll(_queryParams('', 'currentStatusType', currentStatusType));
    }
    if (keyword != null) {
      queryParams.addAll(_queryParams('', 'keyword', keyword));
    }
      queryParams.addAll(_queryParams('', 'sortField', sortField));
      queryParams.addAll(_queryParams('', 'descending', descending));
      queryParams.addAll(_queryParams('', 'activeOnly', activeOnly));
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

  /// Search Assignments
  ///
  /// Search for assignments by the given parameters.
  ///
  /// Parameters:
  ///
  /// * [int] accountId (required):
  ///   the account sending the request
  ///
  /// * [String] sortField (required):
  ///   sort by table field
  ///
  /// * [bool] descending (required):
  ///   return results in descending order or not
  ///
  /// * [bool] activeOnly (required):
  ///   return active results only or not
  ///
  /// * [int] start (required):
  ///   The record to begin the return set on
  ///
  /// * [int] limit (required):
  ///   The number of records to return
  ///
  /// * [int] creatorAccountId:
  ///   the creator of the assignment
  ///
  /// * [String] assigneeAccountIds:
  ///   filter results by assignee accounts. If not provided, all assignments that are assigned to accounts that are managed by the requested account will be returned.
  ///
  /// * [String] retailerLocationIds:
  ///   filter results by retailer locations
  ///
  /// * [String] currentStatusType:
  ///   filter results by assignment status
  ///
  /// * [String] keyword:
  ///   filter results by keyword search that matches the assignee, creator, or retailer location name
  Future<List<AssignmentResponse>?> assignmentSearch(int accountId, String sortField, bool descending, bool activeOnly, int start, int limit, { int? creatorAccountId, String? assigneeAccountIds, String? retailerLocationIds, String? currentStatusType, String? keyword, }) async {
    final response = await assignmentSearchWithHttpInfo(accountId, sortField, descending, activeOnly, start, limit,  creatorAccountId: creatorAccountId, assigneeAccountIds: assigneeAccountIds, retailerLocationIds: retailerLocationIds, currentStatusType: currentStatusType, keyword: keyword, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<AssignmentResponse>') as List)
        .cast<AssignmentResponse>()
        .toList(growable: false);

    }
    return null;
  }

  /// Create Assignment Status
  ///
  /// Create an assignment status.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] accountId (required):
  ///   the user account id
  ///
  /// * [int] assignmentId (required):
  ///   the assignment id
  ///
  /// * [int] scheduledNotificationId:
  ///   the scheduled notification id for reminders
  ///
  /// * [String] toDo:
  ///   the type of to do. Possible values include: SITE_VISIT, PHONE, RECONTACT, RENEWAL, CREDIT
  ///
  /// * [String] connection:
  ///   the connection type. Possible values include: INITIAL, FOLLOW_UP, DECLINED
  ///
  /// * [String] method:
  ///   the communication method type. Possible values include: PHONE, SITE_VISIT, EMAIL
  ///
  /// * [String] status:
  ///   the status type. Possible values include: ARCHIVED, SUBSCRIBED, UNSUBSCRIBED, CONTACTED, DECLINED, NOT_CONTACTED
  ///
  /// * [String] closure:
  ///   the closure type. Possible values include: PHONE, SITE_VISIT, PHONE_SITE, WEB
  ///
  /// * [String] message:
  ///   the message from the assignee
  ///
  /// * [int] followUp:
  ///   the date to follow up by
  ///
  /// * [bool] active:
  ///   determines whether the assignment status is active or inactive
  Future<Response> assignmentStatusCreateWithHttpInfo(int accountId, int assignmentId, { int? scheduledNotificationId, String? toDo, String? connection, String? method, String? status, String? closure, String? message, int? followUp, bool? active, }) async {
    // ignore: prefer_const_declarations
    final path = r'/assignment/status/create';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'accountId', accountId));
      queryParams.addAll(_queryParams('', 'assignmentId', assignmentId));
    if (scheduledNotificationId != null) {
      queryParams.addAll(_queryParams('', 'scheduledNotificationId', scheduledNotificationId));
    }
    if (toDo != null) {
      queryParams.addAll(_queryParams('', 'toDo', toDo));
    }
    if (connection != null) {
      queryParams.addAll(_queryParams('', 'connection', connection));
    }
    if (method != null) {
      queryParams.addAll(_queryParams('', 'method', method));
    }
    if (status != null) {
      queryParams.addAll(_queryParams('', 'status', status));
    }
    if (closure != null) {
      queryParams.addAll(_queryParams('', 'closure', closure));
    }
    if (message != null) {
      queryParams.addAll(_queryParams('', 'message', message));
    }
    if (followUp != null) {
      queryParams.addAll(_queryParams('', 'followUp', followUp));
    }
    if (active != null) {
      queryParams.addAll(_queryParams('', 'active', active));
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

  /// Create Assignment Status
  ///
  /// Create an assignment status.
  ///
  /// Parameters:
  ///
  /// * [int] accountId (required):
  ///   the user account id
  ///
  /// * [int] assignmentId (required):
  ///   the assignment id
  ///
  /// * [int] scheduledNotificationId:
  ///   the scheduled notification id for reminders
  ///
  /// * [String] toDo:
  ///   the type of to do. Possible values include: SITE_VISIT, PHONE, RECONTACT, RENEWAL, CREDIT
  ///
  /// * [String] connection:
  ///   the connection type. Possible values include: INITIAL, FOLLOW_UP, DECLINED
  ///
  /// * [String] method:
  ///   the communication method type. Possible values include: PHONE, SITE_VISIT, EMAIL
  ///
  /// * [String] status:
  ///   the status type. Possible values include: ARCHIVED, SUBSCRIBED, UNSUBSCRIBED, CONTACTED, DECLINED, NOT_CONTACTED
  ///
  /// * [String] closure:
  ///   the closure type. Possible values include: PHONE, SITE_VISIT, PHONE_SITE, WEB
  ///
  /// * [String] message:
  ///   the message from the assignee
  ///
  /// * [int] followUp:
  ///   the date to follow up by
  ///
  /// * [bool] active:
  ///   determines whether the assignment status is active or inactive
  Future<AssignmentStatusResponse?> assignmentStatusCreate(int accountId, int assignmentId, { int? scheduledNotificationId, String? toDo, String? connection, String? method, String? status, String? closure, String? message, int? followUp, bool? active, }) async {
    final response = await assignmentStatusCreateWithHttpInfo(accountId, assignmentId,  scheduledNotificationId: scheduledNotificationId, toDo: toDo, connection: connection, method: method, status: status, closure: closure, message: message, followUp: followUp, active: active, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'AssignmentStatusResponse',) as AssignmentStatusResponse;
    
    }
    return null;
  }

  /// Deletes Assignment Status
  ///
  /// Deletes an assignment status.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] accountId (required):
  ///   the user account id
  ///
  /// * [int] assignmentStatusId (required):
  ///   the assignment status id
  Future<Response> assignmentStatusDeleteWithHttpInfo(int accountId, int assignmentStatusId,) async {
    // ignore: prefer_const_declarations
    final path = r'/assignment/status/delete';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'accountId', accountId));
      queryParams.addAll(_queryParams('', 'assignmentStatusId', assignmentStatusId));

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

  /// Deletes Assignment Status
  ///
  /// Deletes an assignment status.
  ///
  /// Parameters:
  ///
  /// * [int] accountId (required):
  ///   the user account id
  ///
  /// * [int] assignmentStatusId (required):
  ///   the assignment status id
  Future<SirqulResponse?> assignmentStatusDelete(int accountId, int assignmentStatusId,) async {
    final response = await assignmentStatusDeleteWithHttpInfo(accountId, assignmentStatusId,);
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

  /// Get Assignment Status
  ///
  /// Get an assignment status.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] accountId (required):
  ///   the user account id
  ///
  /// * [int] assignmentStatusId (required):
  ///   the assignment status id
  Future<Response> assignmentStatusGetWithHttpInfo(int accountId, int assignmentStatusId,) async {
    // ignore: prefer_const_declarations
    final path = r'/assignment/status/get';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'accountId', accountId));
      queryParams.addAll(_queryParams('', 'assignmentStatusId', assignmentStatusId));

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

  /// Get Assignment Status
  ///
  /// Get an assignment status.
  ///
  /// Parameters:
  ///
  /// * [int] accountId (required):
  ///   the user account id
  ///
  /// * [int] assignmentStatusId (required):
  ///   the assignment status id
  Future<AssignmentStatusResponse?> assignmentStatusGet(int accountId, int assignmentStatusId,) async {
    final response = await assignmentStatusGetWithHttpInfo(accountId, assignmentStatusId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'AssignmentStatusResponse',) as AssignmentStatusResponse;
    
    }
    return null;
  }

  /// Search Assignment Statuses
  ///
  /// Search on assignment statuses.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] accountId (required):
  ///   the user account id
  ///
  /// * [String] sortField (required):
  ///   the field to sort by. Possible values include: ID, CREATED, UPDATED, DELETED, SEARCH_TAGS, ACTIVE, CURRENT_STATUS, TODO, CONNECTION, METHOD, STATUS, CLOSURE, MESSAGE, FOLLOW_UP
  ///
  /// * [bool] descending (required):
  ///   determines whether the sorted list is in descending or ascending order
  ///
  /// * [bool] activeOnly (required):
  ///   determines whether to only return active results
  ///
  /// * [int] start (required):
  ///   the start index for pagination
  ///
  /// * [int] limit (required):
  ///   the limit for pagination
  ///
  /// * [int] assignmentId:
  ///   the assignment id
  ///
  /// * [int] creatorAccountId:
  ///   filter results by the account who created the status
  ///
  /// * [int] assigneeAccountId:
  ///   filter results by the assignee account
  ///
  /// * [int] retailerLocationId:
  ///   filter results by by retailer location
  ///
  /// * [String] statusType:
  ///   filter results by the status type
  ///
  /// * [String] keyword:
  ///   filter results by keyword search
  Future<Response> assignmentStatusSearchWithHttpInfo(int accountId, String sortField, bool descending, bool activeOnly, int start, int limit, { int? assignmentId, int? creatorAccountId, int? assigneeAccountId, int? retailerLocationId, String? statusType, String? keyword, }) async {
    // ignore: prefer_const_declarations
    final path = r'/assignment/status/search';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'accountId', accountId));
    if (assignmentId != null) {
      queryParams.addAll(_queryParams('', 'assignmentId', assignmentId));
    }
    if (creatorAccountId != null) {
      queryParams.addAll(_queryParams('', 'creatorAccountId', creatorAccountId));
    }
    if (assigneeAccountId != null) {
      queryParams.addAll(_queryParams('', 'assigneeAccountId', assigneeAccountId));
    }
    if (retailerLocationId != null) {
      queryParams.addAll(_queryParams('', 'retailerLocationId', retailerLocationId));
    }
    if (statusType != null) {
      queryParams.addAll(_queryParams('', 'statusType', statusType));
    }
    if (keyword != null) {
      queryParams.addAll(_queryParams('', 'keyword', keyword));
    }
      queryParams.addAll(_queryParams('', 'sortField', sortField));
      queryParams.addAll(_queryParams('', 'descending', descending));
      queryParams.addAll(_queryParams('', 'activeOnly', activeOnly));
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

  /// Search Assignment Statuses
  ///
  /// Search on assignment statuses.
  ///
  /// Parameters:
  ///
  /// * [int] accountId (required):
  ///   the user account id
  ///
  /// * [String] sortField (required):
  ///   the field to sort by. Possible values include: ID, CREATED, UPDATED, DELETED, SEARCH_TAGS, ACTIVE, CURRENT_STATUS, TODO, CONNECTION, METHOD, STATUS, CLOSURE, MESSAGE, FOLLOW_UP
  ///
  /// * [bool] descending (required):
  ///   determines whether the sorted list is in descending or ascending order
  ///
  /// * [bool] activeOnly (required):
  ///   determines whether to only return active results
  ///
  /// * [int] start (required):
  ///   the start index for pagination
  ///
  /// * [int] limit (required):
  ///   the limit for pagination
  ///
  /// * [int] assignmentId:
  ///   the assignment id
  ///
  /// * [int] creatorAccountId:
  ///   filter results by the account who created the status
  ///
  /// * [int] assigneeAccountId:
  ///   filter results by the assignee account
  ///
  /// * [int] retailerLocationId:
  ///   filter results by by retailer location
  ///
  /// * [String] statusType:
  ///   filter results by the status type
  ///
  /// * [String] keyword:
  ///   filter results by keyword search
  Future<List<AssignmentStatusResponse>?> assignmentStatusSearch(int accountId, String sortField, bool descending, bool activeOnly, int start, int limit, { int? assignmentId, int? creatorAccountId, int? assigneeAccountId, int? retailerLocationId, String? statusType, String? keyword, }) async {
    final response = await assignmentStatusSearchWithHttpInfo(accountId, sortField, descending, activeOnly, start, limit,  assignmentId: assignmentId, creatorAccountId: creatorAccountId, assigneeAccountId: assigneeAccountId, retailerLocationId: retailerLocationId, statusType: statusType, keyword: keyword, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<AssignmentStatusResponse>') as List)
        .cast<AssignmentStatusResponse>()
        .toList(growable: false);

    }
    return null;
  }

  /// Update Assignment Status
  ///
  /// Updates an assignment status.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] accountId (required):
  ///   the user account id
  ///
  /// * [int] assignmentStatusId (required):
  ///   the assignment status id
  ///
  /// * [int] scheduledNotificationId:
  ///   the scheduled notification id for reminders
  ///
  /// * [String] toDo:
  ///   the type of to do. Possible values include: SITE_VISIT, PHONE, RECONTACT, RENEWAL, CREDIT
  ///
  /// * [String] connection:
  ///   the connection type. Possible values include: INITIAL, FOLLOW_UP, DECLINED
  ///
  /// * [String] method:
  ///   the communication method type. Possible values include: PHONE, SITE_VISIT, EMAIL
  ///
  /// * [String] status:
  ///   the status type. Possible values include: ARCHIVED, SUBSCRIBED, UNSUBSCRIBED, CONTACTED, DECLINED, NOT_CONTACTED
  ///
  /// * [String] closure:
  ///   the closure type. Possible values include: PHONE, SITE_VISIT, PHONE_SITE, WEB
  ///
  /// * [String] message:
  ///   the message from the assignee
  ///
  /// * [int] followUp:
  ///   the date to follow up by
  ///
  /// * [bool] active:
  ///   determines whether the assignment status is active or inactive
  Future<Response> assignmentStatusUpdateWithHttpInfo(int accountId, int assignmentStatusId, { int? scheduledNotificationId, String? toDo, String? connection, String? method, String? status, String? closure, String? message, int? followUp, bool? active, }) async {
    // ignore: prefer_const_declarations
    final path = r'/assignment/status/update';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'accountId', accountId));
      queryParams.addAll(_queryParams('', 'assignmentStatusId', assignmentStatusId));
    if (scheduledNotificationId != null) {
      queryParams.addAll(_queryParams('', 'scheduledNotificationId', scheduledNotificationId));
    }
    if (toDo != null) {
      queryParams.addAll(_queryParams('', 'toDo', toDo));
    }
    if (connection != null) {
      queryParams.addAll(_queryParams('', 'connection', connection));
    }
    if (method != null) {
      queryParams.addAll(_queryParams('', 'method', method));
    }
    if (status != null) {
      queryParams.addAll(_queryParams('', 'status', status));
    }
    if (closure != null) {
      queryParams.addAll(_queryParams('', 'closure', closure));
    }
    if (message != null) {
      queryParams.addAll(_queryParams('', 'message', message));
    }
    if (followUp != null) {
      queryParams.addAll(_queryParams('', 'followUp', followUp));
    }
    if (active != null) {
      queryParams.addAll(_queryParams('', 'active', active));
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

  /// Update Assignment Status
  ///
  /// Updates an assignment status.
  ///
  /// Parameters:
  ///
  /// * [int] accountId (required):
  ///   the user account id
  ///
  /// * [int] assignmentStatusId (required):
  ///   the assignment status id
  ///
  /// * [int] scheduledNotificationId:
  ///   the scheduled notification id for reminders
  ///
  /// * [String] toDo:
  ///   the type of to do. Possible values include: SITE_VISIT, PHONE, RECONTACT, RENEWAL, CREDIT
  ///
  /// * [String] connection:
  ///   the connection type. Possible values include: INITIAL, FOLLOW_UP, DECLINED
  ///
  /// * [String] method:
  ///   the communication method type. Possible values include: PHONE, SITE_VISIT, EMAIL
  ///
  /// * [String] status:
  ///   the status type. Possible values include: ARCHIVED, SUBSCRIBED, UNSUBSCRIBED, CONTACTED, DECLINED, NOT_CONTACTED
  ///
  /// * [String] closure:
  ///   the closure type. Possible values include: PHONE, SITE_VISIT, PHONE_SITE, WEB
  ///
  /// * [String] message:
  ///   the message from the assignee
  ///
  /// * [int] followUp:
  ///   the date to follow up by
  ///
  /// * [bool] active:
  ///   determines whether the assignment status is active or inactive
  Future<AssignmentStatusResponse?> assignmentStatusUpdate(int accountId, int assignmentStatusId, { int? scheduledNotificationId, String? toDo, String? connection, String? method, String? status, String? closure, String? message, int? followUp, bool? active, }) async {
    final response = await assignmentStatusUpdateWithHttpInfo(accountId, assignmentStatusId,  scheduledNotificationId: scheduledNotificationId, toDo: toDo, connection: connection, method: method, status: status, closure: closure, message: message, followUp: followUp, active: active, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'AssignmentStatusResponse',) as AssignmentStatusResponse;
    
    }
    return null;
  }

  /// Update Assignment
  ///
  /// Updates an assignment.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] accountId (required):
  ///   the user account id
  ///
  /// * [int] assignmentId (required):
  ///   the assignment id
  ///
  /// * [String] name:
  ///   the name of the assignment
  ///
  /// * [String] description:
  ///   the description of the assignment
  ///
  /// * [int] assigneeAccountId:
  ///   the account id to assign to
  ///
  /// * [int] retailerLocationId:
  ///   the retailer location id
  ///
  /// * [String] tags:
  ///   the tags
  ///
  /// * [bool] active:
  ///   determines whether the assignment is active or inactive
  Future<Response> assignmentUpdateWithHttpInfo(int accountId, int assignmentId, { String? name, String? description, int? assigneeAccountId, int? retailerLocationId, String? tags, bool? active, }) async {
    // ignore: prefer_const_declarations
    final path = r'/assignment/update';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'accountId', accountId));
      queryParams.addAll(_queryParams('', 'assignmentId', assignmentId));
    if (name != null) {
      queryParams.addAll(_queryParams('', 'name', name));
    }
    if (description != null) {
      queryParams.addAll(_queryParams('', 'description', description));
    }
    if (assigneeAccountId != null) {
      queryParams.addAll(_queryParams('', 'assigneeAccountId', assigneeAccountId));
    }
    if (retailerLocationId != null) {
      queryParams.addAll(_queryParams('', 'retailerLocationId', retailerLocationId));
    }
    if (tags != null) {
      queryParams.addAll(_queryParams('', 'tags', tags));
    }
    if (active != null) {
      queryParams.addAll(_queryParams('', 'active', active));
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

  /// Update Assignment
  ///
  /// Updates an assignment.
  ///
  /// Parameters:
  ///
  /// * [int] accountId (required):
  ///   the user account id
  ///
  /// * [int] assignmentId (required):
  ///   the assignment id
  ///
  /// * [String] name:
  ///   the name of the assignment
  ///
  /// * [String] description:
  ///   the description of the assignment
  ///
  /// * [int] assigneeAccountId:
  ///   the account id to assign to
  ///
  /// * [int] retailerLocationId:
  ///   the retailer location id
  ///
  /// * [String] tags:
  ///   the tags
  ///
  /// * [bool] active:
  ///   determines whether the assignment is active or inactive
  Future<AssignmentResponse?> assignmentUpdate(int accountId, int assignmentId, { String? name, String? description, int? assigneeAccountId, int? retailerLocationId, String? tags, bool? active, }) async {
    final response = await assignmentUpdateWithHttpInfo(accountId, assignmentId,  name: name, description: description, assigneeAccountId: assigneeAccountId, retailerLocationId: retailerLocationId, tags: tags, active: active, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'AssignmentResponse',) as AssignmentResponse;
    
    }
    return null;
  }
}
