//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class TriggerApi {
  TriggerApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Create Trigger
  ///
  /// Create a trigger
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] accountId (required):
  ///   The logged in user
  ///
  /// * [String] name (required):
  ///   The name of the trigger
  ///
  /// * [String] appKey:
  ///   The application to target
  ///
  /// * [String] groupingId:
  ///   Client defined identifier for grouping triggers
  ///
  /// * [String] endpointURL:
  ///   The URL for making an HTTP call
  ///
  /// * [String] payload:
  ///   The parameters for making an HTTP call
  ///
  /// * [int] scheduledDate:
  ///   The date and time of the next trigger
  ///
  /// * [int] startDate:
  ///   The starting date of the trigger
  ///
  /// * [int] endDate:
  ///   The ending date of the trigger
  ///
  /// * [String] cronExpression:
  ///   The cron expression that represents the trigger's schedule
  ///
  /// * [String] conditionalInput:
  ///   Json input representing conditional logic that has to be met before running the trigger
  ///
  /// * [String] visibility:
  ///   The determines the scope of who is able to find and view the scheduled notification (PUBLIC - openly available to all Sirqul users, PRIVATE - only available to users that have been invited)
  ///
  /// * [bool] active:
  ///   Sets whether the Trigger is active or not (inactive Triggers are not processed)
  Future<Response> createTriggerWithHttpInfo(num version, int accountId, String name, { String? appKey, String? groupingId, String? endpointURL, String? payload, int? scheduledDate, int? startDate, int? endDate, String? cronExpression, String? conditionalInput, String? visibility, bool? active, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/trigger/create'
      .replaceAll('{version}', version.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'accountId', accountId));
      queryParams.addAll(_queryParams('', 'name', name));
    if (appKey != null) {
      queryParams.addAll(_queryParams('', 'appKey', appKey));
    }
    if (groupingId != null) {
      queryParams.addAll(_queryParams('', 'groupingId', groupingId));
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
    if (conditionalInput != null) {
      queryParams.addAll(_queryParams('', 'conditionalInput', conditionalInput));
    }
    if (visibility != null) {
      queryParams.addAll(_queryParams('', 'visibility', visibility));
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

  /// Create Trigger
  ///
  /// Create a trigger
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] accountId (required):
  ///   The logged in user
  ///
  /// * [String] name (required):
  ///   The name of the trigger
  ///
  /// * [String] appKey:
  ///   The application to target
  ///
  /// * [String] groupingId:
  ///   Client defined identifier for grouping triggers
  ///
  /// * [String] endpointURL:
  ///   The URL for making an HTTP call
  ///
  /// * [String] payload:
  ///   The parameters for making an HTTP call
  ///
  /// * [int] scheduledDate:
  ///   The date and time of the next trigger
  ///
  /// * [int] startDate:
  ///   The starting date of the trigger
  ///
  /// * [int] endDate:
  ///   The ending date of the trigger
  ///
  /// * [String] cronExpression:
  ///   The cron expression that represents the trigger's schedule
  ///
  /// * [String] conditionalInput:
  ///   Json input representing conditional logic that has to be met before running the trigger
  ///
  /// * [String] visibility:
  ///   The determines the scope of who is able to find and view the scheduled notification (PUBLIC - openly available to all Sirqul users, PRIVATE - only available to users that have been invited)
  ///
  /// * [bool] active:
  ///   Sets whether the Trigger is active or not (inactive Triggers are not processed)
  Future<TriggerResponse?> createTrigger(num version, int accountId, String name, { String? appKey, String? groupingId, String? endpointURL, String? payload, int? scheduledDate, int? startDate, int? endDate, String? cronExpression, String? conditionalInput, String? visibility, bool? active, }) async {
    final response = await createTriggerWithHttpInfo(version, accountId, name,  appKey: appKey, groupingId: groupingId, endpointURL: endpointURL, payload: payload, scheduledDate: scheduledDate, startDate: startDate, endDate: endDate, cronExpression: cronExpression, conditionalInput: conditionalInput, visibility: visibility, active: active, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'TriggerResponse',) as TriggerResponse;
    
    }
    return null;
  }

  /// Delete Trigger
  ///
  /// Mark a trigger as deleted.
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
  /// * [int] triggerId (required):
  ///   The id of the trigger to delete.
  Future<Response> deleteTriggerWithHttpInfo(num version, int accountId, int triggerId,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/trigger/delete'
      .replaceAll('{version}', version.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'accountId', accountId));
      queryParams.addAll(_queryParams('', 'triggerId', triggerId));

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

  /// Delete Trigger
  ///
  /// Mark a trigger as deleted.
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] accountId (required):
  ///   The logged in user.
  ///
  /// * [int] triggerId (required):
  ///   The id of the trigger to delete.
  Future<SirqulResponse?> deleteTrigger(num version, int accountId, int triggerId,) async {
    final response = await deleteTriggerWithHttpInfo(version, accountId, triggerId,);
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

  /// Get Trigger
  ///
  /// Get a trigger
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
  /// * [int] triggerId (required):
  ///   The id of the Trigger to return.
  Future<Response> getTriggerWithHttpInfo(num version, int accountId, int triggerId,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/trigger/get'
      .replaceAll('{version}', version.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'accountId', accountId));
      queryParams.addAll(_queryParams('', 'triggerId', triggerId));

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

  /// Get Trigger
  ///
  /// Get a trigger
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] accountId (required):
  ///   The logged in user.
  ///
  /// * [int] triggerId (required):
  ///   The id of the Trigger to return.
  Future<TriggerResponse?> getTrigger(num version, int accountId, int triggerId,) async {
    final response = await getTriggerWithHttpInfo(version, accountId, triggerId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'TriggerResponse',) as TriggerResponse;
    
    }
    return null;
  }

  /// Search Triggers
  ///
  /// Search for triggers
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
  /// * [String] filter:
  ///   A comma separated list of filters. * MINE - Return triggers that the user has created * SHARED - Return triggers that have been shared to the user * FOLLOWER - Return triggers that have been created by the user''s followers (the content needs to have been APPROVED or FEATURED) * FOLLOWING - Return triggers that have been created by people who the user is following (the content needs to have been APPROVED or FEATURED) * PUBLIC - Return all PUBLIC triggers that have been APPROVED or FEATURED * ALL_PUBLIC - Return all PUBLIC triggers regardless of whether they are approved or not (ignores the approval status) * LIKED - Return all triggers that the user has liked * FEATURED - Return all triggers that have been featured * PENDING - Return all pending triggers 
  ///
  /// * [String] statuses:
  ///   Filter results by status (comma separated list). Values include: NEW, ERROR, COMPLETE, PROCESSING, TEMPLATE
  ///
  /// * [String] templateTypes:
  ///   Template Types
  ///
  /// * [String] appKey:
  ///   Filter the list by a specific application
  ///
  /// * [String] keyword:
  ///   Keyword search on the trigger names.
  ///
  /// * [String] sortField:
  ///   The field to sort by. Possible values include: ID, CREATED, UPDATED, ACTIVE, NAME, SCHEDULED_DATE, START_DATE, END_DATE
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
  Future<Response> searchTriggersWithHttpInfo(num version, int accountId, { String? groupingId, String? filter, String? statuses, String? templateTypes, String? appKey, String? keyword, String? sortField, bool? descending, int? start, int? limit, bool? activeOnly, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/trigger/search'
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
    if (filter != null) {
      queryParams.addAll(_queryParams('', 'filter', filter));
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

  /// Search Triggers
  ///
  /// Search for triggers
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
  /// * [String] filter:
  ///   A comma separated list of filters. * MINE - Return triggers that the user has created * SHARED - Return triggers that have been shared to the user * FOLLOWER - Return triggers that have been created by the user''s followers (the content needs to have been APPROVED or FEATURED) * FOLLOWING - Return triggers that have been created by people who the user is following (the content needs to have been APPROVED or FEATURED) * PUBLIC - Return all PUBLIC triggers that have been APPROVED or FEATURED * ALL_PUBLIC - Return all PUBLIC triggers regardless of whether they are approved or not (ignores the approval status) * LIKED - Return all triggers that the user has liked * FEATURED - Return all triggers that have been featured * PENDING - Return all pending triggers 
  ///
  /// * [String] statuses:
  ///   Filter results by status (comma separated list). Values include: NEW, ERROR, COMPLETE, PROCESSING, TEMPLATE
  ///
  /// * [String] templateTypes:
  ///   Template Types
  ///
  /// * [String] appKey:
  ///   Filter the list by a specific application
  ///
  /// * [String] keyword:
  ///   Keyword search on the trigger names.
  ///
  /// * [String] sortField:
  ///   The field to sort by. Possible values include: ID, CREATED, UPDATED, ACTIVE, NAME, SCHEDULED_DATE, START_DATE, END_DATE
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
  Future<List<TriggerResponse>?> searchTriggers(num version, int accountId, { String? groupingId, String? filter, String? statuses, String? templateTypes, String? appKey, String? keyword, String? sortField, bool? descending, int? start, int? limit, bool? activeOnly, }) async {
    final response = await searchTriggersWithHttpInfo(version, accountId,  groupingId: groupingId, filter: filter, statuses: statuses, templateTypes: templateTypes, appKey: appKey, keyword: keyword, sortField: sortField, descending: descending, start: start, limit: limit, activeOnly: activeOnly, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<TriggerResponse>') as List)
        .cast<TriggerResponse>()
        .toList(growable: false);

    }
    return null;
  }

  /// Update Trigger
  ///
  /// Update a trigger
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] triggerId (required):
  ///   The trigger to update
  ///
  /// * [int] accountId (required):
  ///   The logged in user
  ///
  /// * [String] name:
  ///   The name of the trigger
  ///
  /// * [String] appKey:
  ///   The application to target
  ///
  /// * [String] groupingId:
  ///   Client defined identifier for grouping triggers
  ///
  /// * [String] endpointURL:
  ///   The URL for making an HTTP call
  ///
  /// * [String] payload:
  ///   The parameters for making an HTTP call
  ///
  /// * [int] scheduledDate:
  ///   The date and time of the next trigger
  ///
  /// * [int] startDate:
  ///   The starting date of the trigger
  ///
  /// * [int] endDate:
  ///   The ending date of the trigger
  ///
  /// * [String] cronExpression:
  ///   The cron expression that represents the trigger's schedule
  ///
  /// * [String] conditionalInput:
  ///   Json input representing conditional logic that has to be met before running the trigger
  ///
  /// * [String] visibility:
  ///   The determines the scope of who is able to find and view the scheduled notification (PUBLIC - openly available to all Sirqul users, PRIVATE - only available to users that have been invited)
  ///
  /// * [bool] active:
  ///   Sets whether the Trigger is active or not (inactive Triggers are not processed)
  Future<Response> updateTriggerWithHttpInfo(num version, int triggerId, int accountId, { String? name, String? appKey, String? groupingId, String? endpointURL, String? payload, int? scheduledDate, int? startDate, int? endDate, String? cronExpression, String? conditionalInput, String? visibility, bool? active, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/trigger/update'
      .replaceAll('{version}', version.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'triggerId', triggerId));
      queryParams.addAll(_queryParams('', 'accountId', accountId));
    if (name != null) {
      queryParams.addAll(_queryParams('', 'name', name));
    }
    if (appKey != null) {
      queryParams.addAll(_queryParams('', 'appKey', appKey));
    }
    if (groupingId != null) {
      queryParams.addAll(_queryParams('', 'groupingId', groupingId));
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
    if (conditionalInput != null) {
      queryParams.addAll(_queryParams('', 'conditionalInput', conditionalInput));
    }
    if (visibility != null) {
      queryParams.addAll(_queryParams('', 'visibility', visibility));
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

  /// Update Trigger
  ///
  /// Update a trigger
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] triggerId (required):
  ///   The trigger to update
  ///
  /// * [int] accountId (required):
  ///   The logged in user
  ///
  /// * [String] name:
  ///   The name of the trigger
  ///
  /// * [String] appKey:
  ///   The application to target
  ///
  /// * [String] groupingId:
  ///   Client defined identifier for grouping triggers
  ///
  /// * [String] endpointURL:
  ///   The URL for making an HTTP call
  ///
  /// * [String] payload:
  ///   The parameters for making an HTTP call
  ///
  /// * [int] scheduledDate:
  ///   The date and time of the next trigger
  ///
  /// * [int] startDate:
  ///   The starting date of the trigger
  ///
  /// * [int] endDate:
  ///   The ending date of the trigger
  ///
  /// * [String] cronExpression:
  ///   The cron expression that represents the trigger's schedule
  ///
  /// * [String] conditionalInput:
  ///   Json input representing conditional logic that has to be met before running the trigger
  ///
  /// * [String] visibility:
  ///   The determines the scope of who is able to find and view the scheduled notification (PUBLIC - openly available to all Sirqul users, PRIVATE - only available to users that have been invited)
  ///
  /// * [bool] active:
  ///   Sets whether the Trigger is active or not (inactive Triggers are not processed)
  Future<TriggerResponse?> updateTrigger(num version, int triggerId, int accountId, { String? name, String? appKey, String? groupingId, String? endpointURL, String? payload, int? scheduledDate, int? startDate, int? endDate, String? cronExpression, String? conditionalInput, String? visibility, bool? active, }) async {
    final response = await updateTriggerWithHttpInfo(version, triggerId, accountId,  name: name, appKey: appKey, groupingId: groupingId, endpointURL: endpointURL, payload: payload, scheduledDate: scheduledDate, startDate: startDate, endDate: endDate, cronExpression: cronExpression, conditionalInput: conditionalInput, visibility: visibility, active: active, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'TriggerResponse',) as TriggerResponse;
    
    }
    return null;
  }
}
