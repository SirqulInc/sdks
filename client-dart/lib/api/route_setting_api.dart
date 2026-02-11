//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class RouteSettingApi {
  RouteSettingApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Create Route Setting
  ///
  /// Create a new route setting
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [RouteSettings] body:
  Future<Response> createRouteSettingsWithHttpInfo({ RouteSettings? body, }) async {
    // ignore: prefer_const_declarations
    final path = r'/route/setting';

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

  /// Create Route Setting
  ///
  /// Create a new route setting
  ///
  /// Parameters:
  ///
  /// * [RouteSettings] body:
  Future<RouteSettings?> createRouteSettings({ RouteSettings? body, }) async {
    final response = await createRouteSettingsWithHttpInfo( body: body, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'RouteSettings',) as RouteSettings;
    
    }
    return null;
  }

  /// Delete Route Setting
  ///
  /// Delete an existing route setting
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] routeSettingsId (required):
  ///   the id of the route setting to delete
  Future<Response> deleteRouteSettingsWithHttpInfo(int routeSettingsId,) async {
    // ignore: prefer_const_declarations
    final path = r'/route/setting/{routeSettingsId}'
      .replaceAll('{routeSettingsId}', routeSettingsId.toString());

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

  /// Delete Route Setting
  ///
  /// Delete an existing route setting
  ///
  /// Parameters:
  ///
  /// * [int] routeSettingsId (required):
  ///   the id of the route setting to delete
  Future<Object?> deleteRouteSettings(int routeSettingsId,) async {
    final response = await deleteRouteSettingsWithHttpInfo(routeSettingsId,);
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

  /// Get Route Setting
  ///
  /// Get an existing route settings
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] routeSettingsId (required):
  ///   the id of the route settings to get
  Future<Response> getRouteSettingsWithHttpInfo(int routeSettingsId,) async {
    // ignore: prefer_const_declarations
    final path = r'/route/setting/{routeSettingsId}'
      .replaceAll('{routeSettingsId}', routeSettingsId.toString());

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

  /// Get Route Setting
  ///
  /// Get an existing route settings
  ///
  /// Parameters:
  ///
  /// * [int] routeSettingsId (required):
  ///   the id of the route settings to get
  Future<RouteSettings?> getRouteSettings(int routeSettingsId,) async {
    final response = await getRouteSettingsWithHttpInfo(routeSettingsId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'RouteSettings',) as RouteSettings;
    
    }
    return null;
  }

  /// Search Route Settings
  ///
  /// Search for route settings
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
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
  /// * [int] hubId:
  ///   The service hub that the route belongs under
  ///
  /// * [int] programId:
  ///   The program that the route belongs under
  ///
  /// * [String] keyword:
  ///   The keyword to search for the route
  Future<Response> searchRouteSettingsWithHttpInfo(String sortField, bool descending, int start, int limit, bool activeOnly, { int? hubId, int? programId, String? keyword, }) async {
    // ignore: prefer_const_declarations
    final path = r'/route/setting';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (hubId != null) {
      queryParams.addAll(_queryParams('', 'hubId', hubId));
    }
    if (programId != null) {
      queryParams.addAll(_queryParams('', 'programId', programId));
    }
    if (keyword != null) {
      queryParams.addAll(_queryParams('', 'keyword', keyword));
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

  /// Search Route Settings
  ///
  /// Search for route settings
  ///
  /// Parameters:
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
  /// * [int] hubId:
  ///   The service hub that the route belongs under
  ///
  /// * [int] programId:
  ///   The program that the route belongs under
  ///
  /// * [String] keyword:
  ///   The keyword to search for the route
  Future<List<RouteSettings>?> searchRouteSettings(String sortField, bool descending, int start, int limit, bool activeOnly, { int? hubId, int? programId, String? keyword, }) async {
    final response = await searchRouteSettingsWithHttpInfo(sortField, descending, start, limit, activeOnly,  hubId: hubId, programId: programId, keyword: keyword, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<RouteSettings>') as List)
        .cast<RouteSettings>()
        .toList(growable: false);

    }
    return null;
  }

  /// Update Route Setting
  ///
  /// Update an existing route setting
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] routeSettingsId (required):
  ///   the id of the route settings to update
  ///
  /// * [RouteSettings] body:
  Future<Response> updateRouteSettingsWithHttpInfo(int routeSettingsId, { RouteSettings? body, }) async {
    // ignore: prefer_const_declarations
    final path = r'/route/setting/{routeSettingsId}'
      .replaceAll('{routeSettingsId}', routeSettingsId.toString());

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

  /// Update Route Setting
  ///
  /// Update an existing route setting
  ///
  /// Parameters:
  ///
  /// * [int] routeSettingsId (required):
  ///   the id of the route settings to update
  ///
  /// * [RouteSettings] body:
  Future<RouteSettings?> updateRouteSettings(int routeSettingsId, { RouteSettings? body, }) async {
    final response = await updateRouteSettingsWithHttpInfo(routeSettingsId,  body: body, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'RouteSettings',) as RouteSettings;
    
    }
    return null;
  }
}
