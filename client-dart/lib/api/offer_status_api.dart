//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class OfferStatusApi {
  OfferStatusApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Create Offer Status
  ///
  /// Create an offer status record
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   The name of the status
  ///
  /// * [int] code (required):
  ///   The status code, must be unique 
  ///
  /// * [String] deviceId:
  ///   The device id (deviceId or accountId required)
  ///
  /// * [int] accountId:
  ///   The account id of the user (deviceId or accountId required)
  ///
  /// * [double] latitude:
  ///   Used to update the user's current location
  ///
  /// * [double] longitude:
  ///   Used to update the user's current location
  ///
  /// * [String] description:
  ///   The description of the status
  ///
  /// * [String] role:
  ///   The actor that uses the status
  ///
  /// * [bool] active:
  ///   The active status
  ///
  /// * [String] applicationIds:
  ///   The applications to associate the status with, if null then for all.
  Future<Response> createOfferTransactionStatusWithHttpInfo(String name, int code, { String? deviceId, int? accountId, double? latitude, double? longitude, String? description, String? role, bool? active, String? applicationIds, }) async {
    // ignore: prefer_const_declarations
    final path = r'/offer/status/create';

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
    if (latitude != null) {
      queryParams.addAll(_queryParams('', 'latitude', latitude));
    }
    if (longitude != null) {
      queryParams.addAll(_queryParams('', 'longitude', longitude));
    }
      queryParams.addAll(_queryParams('', 'name', name));
    if (description != null) {
      queryParams.addAll(_queryParams('', 'description', description));
    }
      queryParams.addAll(_queryParams('', 'code', code));
    if (role != null) {
      queryParams.addAll(_queryParams('', 'role', role));
    }
    if (active != null) {
      queryParams.addAll(_queryParams('', 'active', active));
    }
    if (applicationIds != null) {
      queryParams.addAll(_queryParams('', 'applicationIds', applicationIds));
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

  /// Create Offer Status
  ///
  /// Create an offer status record
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   The name of the status
  ///
  /// * [int] code (required):
  ///   The status code, must be unique 
  ///
  /// * [String] deviceId:
  ///   The device id (deviceId or accountId required)
  ///
  /// * [int] accountId:
  ///   The account id of the user (deviceId or accountId required)
  ///
  /// * [double] latitude:
  ///   Used to update the user's current location
  ///
  /// * [double] longitude:
  ///   Used to update the user's current location
  ///
  /// * [String] description:
  ///   The description of the status
  ///
  /// * [String] role:
  ///   The actor that uses the status
  ///
  /// * [bool] active:
  ///   The active status
  ///
  /// * [String] applicationIds:
  ///   The applications to associate the status with, if null then for all.
  Future<OfferTransactionStatusResponse?> createOfferTransactionStatus(String name, int code, { String? deviceId, int? accountId, double? latitude, double? longitude, String? description, String? role, bool? active, String? applicationIds, }) async {
    final response = await createOfferTransactionStatusWithHttpInfo(name, code,  deviceId: deviceId, accountId: accountId, latitude: latitude, longitude: longitude, description: description, role: role, active: active, applicationIds: applicationIds, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'OfferTransactionStatusResponse',) as OfferTransactionStatusResponse;
    
    }
    return null;
  }

  /// Delete Offer Status
  ///
  /// Mark an offer status record as deleted
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] statusId (required):
  ///   The id of the record to delete
  ///
  /// * [String] deviceId:
  ///   The device id (deviceId or accountId required)
  ///
  /// * [int] accountId:
  ///   The account id of the user (deviceId or accountId required)
  ///
  /// * [double] latitude:
  ///   Used to update the user's current location
  ///
  /// * [double] longitude:
  ///   Used to update the user's current location
  Future<Response> deleteOfferTransactionStatusWithHttpInfo(int statusId, { String? deviceId, int? accountId, double? latitude, double? longitude, }) async {
    // ignore: prefer_const_declarations
    final path = r'/offer/status/delete';

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
    if (latitude != null) {
      queryParams.addAll(_queryParams('', 'latitude', latitude));
    }
    if (longitude != null) {
      queryParams.addAll(_queryParams('', 'longitude', longitude));
    }
      queryParams.addAll(_queryParams('', 'statusId', statusId));

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

  /// Delete Offer Status
  ///
  /// Mark an offer status record as deleted
  ///
  /// Parameters:
  ///
  /// * [int] statusId (required):
  ///   The id of the record to delete
  ///
  /// * [String] deviceId:
  ///   The device id (deviceId or accountId required)
  ///
  /// * [int] accountId:
  ///   The account id of the user (deviceId or accountId required)
  ///
  /// * [double] latitude:
  ///   Used to update the user's current location
  ///
  /// * [double] longitude:
  ///   Used to update the user's current location
  Future<SirqulResponse?> deleteOfferTransactionStatus(int statusId, { String? deviceId, int? accountId, double? latitude, double? longitude, }) async {
    final response = await deleteOfferTransactionStatusWithHttpInfo(statusId,  deviceId: deviceId, accountId: accountId, latitude: latitude, longitude: longitude, );
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

  /// Get Offer Status
  ///
  /// Get an offer status record
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] statusId (required):
  ///   The id of the record to get 
  ///
  /// * [String] deviceId:
  ///   The device id (deviceId or accountId required)
  ///
  /// * [int] accountId:
  ///   The account id of the user (deviceId or accountId required)
  ///
  /// * [double] latitude:
  ///   Used to update the user's current location
  ///
  /// * [double] longitude:
  ///   Used to update the user's current location
  Future<Response> getOfferTransactionStatusWithHttpInfo(int statusId, { String? deviceId, int? accountId, double? latitude, double? longitude, }) async {
    // ignore: prefer_const_declarations
    final path = r'/offer/status/get';

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
    if (latitude != null) {
      queryParams.addAll(_queryParams('', 'latitude', latitude));
    }
    if (longitude != null) {
      queryParams.addAll(_queryParams('', 'longitude', longitude));
    }
      queryParams.addAll(_queryParams('', 'statusId', statusId));

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

  /// Get Offer Status
  ///
  /// Get an offer status record
  ///
  /// Parameters:
  ///
  /// * [int] statusId (required):
  ///   The id of the record to get 
  ///
  /// * [String] deviceId:
  ///   The device id (deviceId or accountId required)
  ///
  /// * [int] accountId:
  ///   The account id of the user (deviceId or accountId required)
  ///
  /// * [double] latitude:
  ///   Used to update the user's current location
  ///
  /// * [double] longitude:
  ///   Used to update the user's current location
  Future<OfferTransactionStatusResponse?> getOfferTransactionStatus(int statusId, { String? deviceId, int? accountId, double? latitude, double? longitude, }) async {
    final response = await getOfferTransactionStatusWithHttpInfo(statusId,  deviceId: deviceId, accountId: accountId, latitude: latitude, longitude: longitude, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'OfferTransactionStatusResponse',) as OfferTransactionStatusResponse;
    
    }
    return null;
  }

  /// Search Offer Status
  ///
  /// Search for the available offer statuses
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] deviceId:
  ///   The device id (deviceId or accountId required)
  ///
  /// * [int] accountId:
  ///   The account id of the user (deviceId or accountId required)
  ///
  /// * [double] latitude:
  ///   Used to update the user's current location
  ///
  /// * [double] longitude:
  ///   Used to update the user's current location
  ///
  /// * [String] keyword:
  ///   Search the name and description fields
  ///
  /// * [String] role:
  ///   The actors role, possible values are: CUSTOMER, RETAILER, or ANY
  ///
  /// * [String] appKey:
  ///   The application making the request
  ///
  /// * [String] sortField:
  ///   The field to sort on, possible values are: ID, CREATED, UPDATED, DELETED, SEARCH_TAGS, ACTIVE, NAME, DESCRIPTION, CODE, ROLE
  ///
  /// * [bool] descending:
  ///   Determines whether the results are in descending order
  ///
  /// * [int] start:
  ///   The start index for pagination
  ///
  /// * [int] limit:
  ///   The limit for pagination
  ///
  /// * [bool] includeInactive:
  ///   If true include inactive items
  Future<Response> searchOfferTransactionStatusesWithHttpInfo({ String? deviceId, int? accountId, double? latitude, double? longitude, String? keyword, String? role, String? appKey, String? sortField, bool? descending, int? start, int? limit, bool? includeInactive, }) async {
    // ignore: prefer_const_declarations
    final path = r'/offer/status/search';

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
    if (latitude != null) {
      queryParams.addAll(_queryParams('', 'latitude', latitude));
    }
    if (longitude != null) {
      queryParams.addAll(_queryParams('', 'longitude', longitude));
    }
    if (keyword != null) {
      queryParams.addAll(_queryParams('', 'keyword', keyword));
    }
    if (role != null) {
      queryParams.addAll(_queryParams('', 'role', role));
    }
    if (appKey != null) {
      queryParams.addAll(_queryParams('', 'appKey', appKey));
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
    if (includeInactive != null) {
      queryParams.addAll(_queryParams('', 'includeInactive', includeInactive));
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

  /// Search Offer Status
  ///
  /// Search for the available offer statuses
  ///
  /// Parameters:
  ///
  /// * [String] deviceId:
  ///   The device id (deviceId or accountId required)
  ///
  /// * [int] accountId:
  ///   The account id of the user (deviceId or accountId required)
  ///
  /// * [double] latitude:
  ///   Used to update the user's current location
  ///
  /// * [double] longitude:
  ///   Used to update the user's current location
  ///
  /// * [String] keyword:
  ///   Search the name and description fields
  ///
  /// * [String] role:
  ///   The actors role, possible values are: CUSTOMER, RETAILER, or ANY
  ///
  /// * [String] appKey:
  ///   The application making the request
  ///
  /// * [String] sortField:
  ///   The field to sort on, possible values are: ID, CREATED, UPDATED, DELETED, SEARCH_TAGS, ACTIVE, NAME, DESCRIPTION, CODE, ROLE
  ///
  /// * [bool] descending:
  ///   Determines whether the results are in descending order
  ///
  /// * [int] start:
  ///   The start index for pagination
  ///
  /// * [int] limit:
  ///   The limit for pagination
  ///
  /// * [bool] includeInactive:
  ///   If true include inactive items
  Future<List<OfferTransactionStatusResponse>?> searchOfferTransactionStatuses({ String? deviceId, int? accountId, double? latitude, double? longitude, String? keyword, String? role, String? appKey, String? sortField, bool? descending, int? start, int? limit, bool? includeInactive, }) async {
    final response = await searchOfferTransactionStatusesWithHttpInfo( deviceId: deviceId, accountId: accountId, latitude: latitude, longitude: longitude, keyword: keyword, role: role, appKey: appKey, sortField: sortField, descending: descending, start: start, limit: limit, includeInactive: includeInactive, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<OfferTransactionStatusResponse>') as List)
        .cast<OfferTransactionStatusResponse>()
        .toList(growable: false);

    }
    return null;
  }

  /// Update Offer Status
  ///
  /// Update an offer status record
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] deviceId:
  ///   The device id (deviceId or accountId required)
  ///
  /// * [int] accountId:
  ///   The account id of the user (deviceId or accountId required)
  ///
  /// * [double] latitude:
  ///   Used to update the user's current location
  ///
  /// * [double] longitude:
  ///   Used to update the user's current location
  ///
  /// * [int] statusId:
  ///   The id of the record to update 
  ///
  /// * [String] name:
  ///   The name of th status
  ///
  /// * [String] description:
  ///   The description of the status
  ///
  /// * [int] code:
  ///   The status code, must be unique 
  ///
  /// * [String] role:
  ///   The actor that uses the status
  ///
  /// * [bool] active:
  ///   The active status
  ///
  /// * [String] applicationIds:
  ///   The applications to associate the status with, if null then for all.
  Future<Response> updateOfferTransactionStatusWithHttpInfo({ String? deviceId, int? accountId, double? latitude, double? longitude, int? statusId, String? name, String? description, int? code, String? role, bool? active, String? applicationIds, }) async {
    // ignore: prefer_const_declarations
    final path = r'/offer/status/update';

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
    if (latitude != null) {
      queryParams.addAll(_queryParams('', 'latitude', latitude));
    }
    if (longitude != null) {
      queryParams.addAll(_queryParams('', 'longitude', longitude));
    }
    if (statusId != null) {
      queryParams.addAll(_queryParams('', 'statusId', statusId));
    }
    if (name != null) {
      queryParams.addAll(_queryParams('', 'name', name));
    }
    if (description != null) {
      queryParams.addAll(_queryParams('', 'description', description));
    }
    if (code != null) {
      queryParams.addAll(_queryParams('', 'code', code));
    }
    if (role != null) {
      queryParams.addAll(_queryParams('', 'role', role));
    }
    if (active != null) {
      queryParams.addAll(_queryParams('', 'active', active));
    }
    if (applicationIds != null) {
      queryParams.addAll(_queryParams('', 'applicationIds', applicationIds));
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

  /// Update Offer Status
  ///
  /// Update an offer status record
  ///
  /// Parameters:
  ///
  /// * [String] deviceId:
  ///   The device id (deviceId or accountId required)
  ///
  /// * [int] accountId:
  ///   The account id of the user (deviceId or accountId required)
  ///
  /// * [double] latitude:
  ///   Used to update the user's current location
  ///
  /// * [double] longitude:
  ///   Used to update the user's current location
  ///
  /// * [int] statusId:
  ///   The id of the record to update 
  ///
  /// * [String] name:
  ///   The name of th status
  ///
  /// * [String] description:
  ///   The description of the status
  ///
  /// * [int] code:
  ///   The status code, must be unique 
  ///
  /// * [String] role:
  ///   The actor that uses the status
  ///
  /// * [bool] active:
  ///   The active status
  ///
  /// * [String] applicationIds:
  ///   The applications to associate the status with, if null then for all.
  Future<OfferTransactionStatusResponse?> updateOfferTransactionStatus({ String? deviceId, int? accountId, double? latitude, double? longitude, int? statusId, String? name, String? description, int? code, String? role, bool? active, String? applicationIds, }) async {
    final response = await updateOfferTransactionStatusWithHttpInfo( deviceId: deviceId, accountId: accountId, latitude: latitude, longitude: longitude, statusId: statusId, name: name, description: description, code: code, role: role, active: active, applicationIds: applicationIds, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'OfferTransactionStatusResponse',) as OfferTransactionStatusResponse;
    
    }
    return null;
  }
}
