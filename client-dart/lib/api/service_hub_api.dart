//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class ServiceHubApi {
  ServiceHubApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Create Service Hub
  ///
  /// Create new service hub
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [ServiceHub] body:
  Future<Response> createServiceHubWithHttpInfo(num version, { ServiceHub? body, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/hub'
      .replaceAll('{version}', version.toString());

    // ignore: prefer_final_locals
    Object? postBody = body;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

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

  /// Create Service Hub
  ///
  /// Create new service hub
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [ServiceHub] body:
  Future<ServiceHub?> createServiceHub(num version, { ServiceHub? body, }) async {
    final response = await createServiceHubWithHttpInfo(version,  body: body, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ServiceHub',) as ServiceHub;
    
    }
    return null;
  }

  /// Delete Service Hub
  ///
  /// Delete an existing service hub
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] id (required):
  ///   the id of the service hub to delete
  Future<Response> deleteServiceHubWithHttpInfo(num version, int id,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/hub/{id}'
      .replaceAll('{version}', version.toString())
      .replaceAll('{id}', id.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'DELETE',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Delete Service Hub
  ///
  /// Delete an existing service hub
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] id (required):
  ///   the id of the service hub to delete
  Future<void> deleteServiceHub(num version, int id,) async {
    final response = await deleteServiceHubWithHttpInfo(version, id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Get Service Hub
  ///
  /// Get an existing service hub
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] id (required):
  ///   the id of the service hub to get
  Future<Response> getServiceHubWithHttpInfo(num version, int id,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/hub/{id}'
      .replaceAll('{version}', version.toString())
      .replaceAll('{id}', id.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

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

  /// Get Service Hub
  ///
  /// Get an existing service hub
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] id (required):
  ///   the id of the service hub to get
  Future<Object?> getServiceHub(num version, int id,) async {
    final response = await getServiceHubWithHttpInfo(version, id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Object',) as Object;
    
    }
    return null;
  }

  /// Update Service Hub
  ///
  /// Update an existing service hub
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] id (required):
  ///   the id of the service hub
  ///
  /// * [ServiceHub] body:
  Future<Response> postServiceHubWithHttpInfo(num version, int id, { ServiceHub? body, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/hub/{id}'
      .replaceAll('{version}', version.toString())
      .replaceAll('{id}', id.toString());

    // ignore: prefer_final_locals
    Object? postBody = body;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

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

  /// Update Service Hub
  ///
  /// Update an existing service hub
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] id (required):
  ///   the id of the service hub
  ///
  /// * [ServiceHub] body:
  Future<ServiceHub?> postServiceHub(num version, int id, { ServiceHub? body, }) async {
    final response = await postServiceHubWithHttpInfo(version, id,  body: body, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ServiceHub',) as ServiceHub;
    
    }
    return null;
  }

  /// Update Service Hub
  ///
  /// Update an existing service hub
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] id (required):
  ///   the id of the service hub
  ///
  /// * [ServiceHub] body:
  Future<Response> putServiceHubWithHttpInfo(num version, int id, { ServiceHub? body, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/hub/{id}'
      .replaceAll('{version}', version.toString())
      .replaceAll('{id}', id.toString());

    // ignore: prefer_final_locals
    Object? postBody = body;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'PUT',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Update Service Hub
  ///
  /// Update an existing service hub
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] id (required):
  ///   the id of the service hub
  ///
  /// * [ServiceHub] body:
  Future<ServiceHub?> putServiceHub(num version, int id, { ServiceHub? body, }) async {
    final response = await putServiceHubWithHttpInfo(version, id,  body: body, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ServiceHub',) as ServiceHub;
    
    }
    return null;
  }

  /// Search Service Hubs
  ///
  /// Search for service hubs.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [String] sortField (required):
  ///   The field to sort by
  ///
  /// * [bool] descending (required):
  ///   Determines whether the sorted list is in descending or ascending order
  ///
  /// * [int] start (required):
  ///   The start index for pagination
  ///
  /// * [int] limit (required):
  ///   The limit for pagination
  ///
  /// * [bool] activeOnly (required):
  ///   Return only active results
  ///
  /// * [String] keyword:
  ///   The keyword to search for
  ///
  /// * [int] retailerId:
  ///   The retailer belongs to
  Future<Response> searchServiceHubsWithHttpInfo(num version, String sortField, bool descending, int start, int limit, bool activeOnly, { String? keyword, int? retailerId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/hub'
      .replaceAll('{version}', version.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (keyword != null) {
      queryParams.addAll(_queryParams('', 'keyword', keyword));
    }
    if (retailerId != null) {
      queryParams.addAll(_queryParams('', 'retailerId', retailerId));
    }
      queryParams.addAll(_queryParams('', 'sortField', sortField));
      queryParams.addAll(_queryParams('', 'descending', descending));
      queryParams.addAll(_queryParams('', 'start', start));
      queryParams.addAll(_queryParams('', 'limit', limit));
      queryParams.addAll(_queryParams('', 'activeOnly', activeOnly));

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

  /// Search Service Hubs
  ///
  /// Search for service hubs.
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [String] sortField (required):
  ///   The field to sort by
  ///
  /// * [bool] descending (required):
  ///   Determines whether the sorted list is in descending or ascending order
  ///
  /// * [int] start (required):
  ///   The start index for pagination
  ///
  /// * [int] limit (required):
  ///   The limit for pagination
  ///
  /// * [bool] activeOnly (required):
  ///   Return only active results
  ///
  /// * [String] keyword:
  ///   The keyword to search for
  ///
  /// * [int] retailerId:
  ///   The retailer belongs to
  Future<List<ServiceHub>?> searchServiceHubs(num version, String sortField, bool descending, int start, int limit, bool activeOnly, { String? keyword, int? retailerId, }) async {
    final response = await searchServiceHubsWithHttpInfo(version, sortField, descending, start, limit, activeOnly,  keyword: keyword, retailerId: retailerId, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<ServiceHub>') as List)
        .cast<ServiceHub>()
        .toList(growable: false);

    }
    return null;
  }
}
