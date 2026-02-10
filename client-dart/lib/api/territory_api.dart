//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class TerritoryApi {
  TerritoryApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Create Territory
  ///
  /// Creates a territory.
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
  ///   The name of the territory
  ///
  /// * [bool] active:
  ///   If true set the game level as active. Default is true.
  Future<Response> createTerritoryWithHttpInfo(num version, int accountId, String name, { bool? active, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/territory/create'
      .replaceAll('{version}', version.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'accountId', accountId));
      queryParams.addAll(_queryParams('', 'name', name));
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

  /// Create Territory
  ///
  /// Creates a territory.
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] accountId (required):
  ///   The logged in user.
  ///
  /// * [String] name (required):
  ///   The name of the territory
  ///
  /// * [bool] active:
  ///   If true set the game level as active. Default is true.
  Future<TerritoryResponse?> createTerritory(num version, int accountId, String name, { bool? active, }) async {
    final response = await createTerritoryWithHttpInfo(version, accountId, name,  active: active, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'TerritoryResponse',) as TerritoryResponse;
    
    }
    return null;
  }

  /// Delete Territory
  ///
  /// Deletes a territory.
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
  /// * [int] territoryId (required):
  ///   the id of the territory to delete
  Future<Response> deleteTerritoryWithHttpInfo(num version, int accountId, int territoryId,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/territory/delete'
      .replaceAll('{version}', version.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'accountId', accountId));
      queryParams.addAll(_queryParams('', 'territoryId', territoryId));

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

  /// Delete Territory
  ///
  /// Deletes a territory.
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] accountId (required):
  ///   the id of the logged in user
  ///
  /// * [int] territoryId (required):
  ///   the id of the territory to delete
  Future<SirqulResponse?> deleteTerritory(num version, int accountId, int territoryId,) async {
    final response = await deleteTerritoryWithHttpInfo(version, accountId, territoryId,);
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

  /// Get Territory
  ///
  /// Get a territory.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] territoryId (required):
  ///   the id of the territory to get
  Future<Response> getTerritoryWithHttpInfo(num version, int territoryId,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/territory/get'
      .replaceAll('{version}', version.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'territoryId', territoryId));

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

  /// Get Territory
  ///
  /// Get a territory.
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] territoryId (required):
  ///   the id of the territory to get
  Future<TerritoryResponse?> getTerritory(num version, int territoryId,) async {
    final response = await getTerritoryWithHttpInfo(version, territoryId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'TerritoryResponse',) as TerritoryResponse;
    
    }
    return null;
  }

  /// Search Territories
  ///
  /// Searches on territories.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [String] sortField (required):
  ///   the field to sort by. Supported values include: ID, CREATED, UPDATED, NAME
  ///
  /// * [bool] descending (required):
  ///   determines whether the sorted list is in descending or ascending order
  ///
  /// * [String] keyword:
  ///   Return results that match this keyword.
  ///
  /// * [int] start:
  ///   The start index for pagination
  ///
  /// * [int] limit:
  ///   The limit for pagination
  Future<Response> searchTerritoriesWithHttpInfo(num version, String sortField, bool descending, { String? keyword, int? start, int? limit, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/territory/search'
      .replaceAll('{version}', version.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (keyword != null) {
      queryParams.addAll(_queryParams('', 'keyword', keyword));
    }
    if (start != null) {
      queryParams.addAll(_queryParams('', 'start', start));
    }
    if (limit != null) {
      queryParams.addAll(_queryParams('', 'limit', limit));
    }
      queryParams.addAll(_queryParams('', 'sortField', sortField));
      queryParams.addAll(_queryParams('', 'descending', descending));

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

  /// Search Territories
  ///
  /// Searches on territories.
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [String] sortField (required):
  ///   the field to sort by. Supported values include: ID, CREATED, UPDATED, NAME
  ///
  /// * [bool] descending (required):
  ///   determines whether the sorted list is in descending or ascending order
  ///
  /// * [String] keyword:
  ///   Return results that match this keyword.
  ///
  /// * [int] start:
  ///   The start index for pagination
  ///
  /// * [int] limit:
  ///   The limit for pagination
  Future<List<TerritoryResponse>?> searchTerritories(num version, String sortField, bool descending, { String? keyword, int? start, int? limit, }) async {
    final response = await searchTerritoriesWithHttpInfo(version, sortField, descending,  keyword: keyword, start: start, limit: limit, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<TerritoryResponse>') as List)
        .cast<TerritoryResponse>()
        .toList(growable: false);

    }
    return null;
  }

  /// Update Territory
  ///
  /// Updates a territory.
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
  /// * [int] territoryId (required):
  ///   the id of the territory to update
  ///
  /// * [String] name:
  ///   The name of the territory
  ///
  /// * [bool] active:
  ///   If true set the game level as active.
  Future<Response> updateTerritoryWithHttpInfo(num version, int accountId, int territoryId, { String? name, bool? active, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/territory/update'
      .replaceAll('{version}', version.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'accountId', accountId));
      queryParams.addAll(_queryParams('', 'territoryId', territoryId));
    if (name != null) {
      queryParams.addAll(_queryParams('', 'name', name));
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

  /// Update Territory
  ///
  /// Updates a territory.
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] accountId (required):
  ///   The logged in user.
  ///
  /// * [int] territoryId (required):
  ///   the id of the territory to update
  ///
  /// * [String] name:
  ///   The name of the territory
  ///
  /// * [bool] active:
  ///   If true set the game level as active.
  Future<TerritoryResponse?> updateTerritory(num version, int accountId, int territoryId, { String? name, bool? active, }) async {
    final response = await updateTerritoryWithHttpInfo(version, accountId, territoryId,  name: name, active: active, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'TerritoryResponse',) as TerritoryResponse;
    
    }
    return null;
  }
}
