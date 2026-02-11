//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class FilterApi {
  FilterApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Create Filter
  ///
  /// Create a filter
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] accountId (required):
  ///   The account id of the user (must have permissions to the target application)
  ///
  /// * [String] name (required):
  ///   The name of the filter
  ///
  /// * [String] appKey:
  ///   The appKey of the application to assign the filter to, if not provided then the filter will be applied to the global application (if the account has permissions)
  ///
  /// * [int] parentFilterId:
  ///   The ID of the parent filter, if not provided then the parent filter will be null
  ///
  /// * [String] description:
  ///   The description of the filter
  ///
  /// * [String] externalId:
  ///   A string identifier used by client applications to store external information
  ///
  /// * [String] externalType:
  ///   A string type used by client applications to store external information
  ///
  /// * [bool] active:
  ///   Sets whether the filter is active or inactive (hidden from consumers)
  ///
  /// * [String] metaData:
  ///   external custom client defined data
  Future<Response> createFilterWithHttpInfo(int accountId, String name, { String? appKey, int? parentFilterId, String? description, String? externalId, String? externalType, bool? active, String? metaData, }) async {
    // ignore: prefer_const_declarations
    final path = r'/filter/create';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'accountId', accountId));
    if (appKey != null) {
      queryParams.addAll(_queryParams('', 'appKey', appKey));
    }
    if (parentFilterId != null) {
      queryParams.addAll(_queryParams('', 'parentFilterId', parentFilterId));
    }
      queryParams.addAll(_queryParams('', 'name', name));
    if (description != null) {
      queryParams.addAll(_queryParams('', 'description', description));
    }
    if (externalId != null) {
      queryParams.addAll(_queryParams('', 'externalId', externalId));
    }
    if (externalType != null) {
      queryParams.addAll(_queryParams('', 'externalType', externalType));
    }
    if (active != null) {
      queryParams.addAll(_queryParams('', 'active', active));
    }
    if (metaData != null) {
      queryParams.addAll(_queryParams('', 'metaData', metaData));
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

  /// Create Filter
  ///
  /// Create a filter
  ///
  /// Parameters:
  ///
  /// * [int] accountId (required):
  ///   The account id of the user (must have permissions to the target application)
  ///
  /// * [String] name (required):
  ///   The name of the filter
  ///
  /// * [String] appKey:
  ///   The appKey of the application to assign the filter to, if not provided then the filter will be applied to the global application (if the account has permissions)
  ///
  /// * [int] parentFilterId:
  ///   The ID of the parent filter, if not provided then the parent filter will be null
  ///
  /// * [String] description:
  ///   The description of the filter
  ///
  /// * [String] externalId:
  ///   A string identifier used by client applications to store external information
  ///
  /// * [String] externalType:
  ///   A string type used by client applications to store external information
  ///
  /// * [bool] active:
  ///   Sets whether the filter is active or inactive (hidden from consumers)
  ///
  /// * [String] metaData:
  ///   external custom client defined data
  Future<FilterTreeResponse?> createFilter(int accountId, String name, { String? appKey, int? parentFilterId, String? description, String? externalId, String? externalType, bool? active, String? metaData, }) async {
    final response = await createFilterWithHttpInfo(accountId, name,  appKey: appKey, parentFilterId: parentFilterId, description: description, externalId: externalId, externalType: externalType, active: active, metaData: metaData, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'FilterTreeResponse',) as FilterTreeResponse;
    
    }
    return null;
  }

  /// Delete Filter
  ///
  /// Delete a filter.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] accountId (required):
  ///   The account id of the user (must have permissions to the filter's assigned application)
  ///
  /// * [int] filterId (required):
  ///   The ID of the filter to delete
  Future<Response> deleteFilterWithHttpInfo(int accountId, int filterId,) async {
    // ignore: prefer_const_declarations
    final path = r'/filter/delete';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'accountId', accountId));
      queryParams.addAll(_queryParams('', 'filterId', filterId));

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

  /// Delete Filter
  ///
  /// Delete a filter.
  ///
  /// Parameters:
  ///
  /// * [int] accountId (required):
  ///   The account id of the user (must have permissions to the filter's assigned application)
  ///
  /// * [int] filterId (required):
  ///   The ID of the filter to delete
  Future<SirqulResponse?> deleteFilter(int accountId, int filterId,) async {
    final response = await deleteFilterWithHttpInfo(accountId, filterId,);
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

  /// Get Filter
  ///
  /// Get the details of a specific filter. Recursively include all child filters and their children.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] filterId (required):
  ///   the id of the filter to get
  Future<Response> getFilterWithHttpInfo(int filterId,) async {
    // ignore: prefer_const_declarations
    final path = r'/filter/get';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'filterId', filterId));

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

  /// Get Filter
  ///
  /// Get the details of a specific filter. Recursively include all child filters and their children.
  ///
  /// Parameters:
  ///
  /// * [int] filterId (required):
  ///   the id of the filter to get
  Future<FilterTreeResponse?> getFilter(int filterId,) async {
    final response = await getFilterWithHttpInfo(filterId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'FilterTreeResponse',) as FilterTreeResponse;
    
    }
    return null;
  }

  /// Search Filters
  ///
  /// Search for filters.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] accountId:
  ///   The account id of the user
  ///
  /// * [String] keyword:
  ///   The string to search on
  ///
  /// * [String] appKey:
  ///   the appKey of the application to retrieve filters for
  ///
  /// * [String] responseGroup:
  ///   The group of filters to return: ALL, GLOBAL or MINE. ALL returns both global and application specific matches, GLOBAL only returns global matches, and MINE only returns the application specific matches. If not provided search on the application provided.
  ///
  /// * [bool] rootOnly:
  ///   Restrict the search to only those filters with no parent filter assigned.
  ///
  /// * [String] sortField:
  ///   The column to sort the search on. Possible values include: ID, CREATED, UPDATED, ACTIVE, NAME, DISPLAY
  ///
  /// * [bool] descending:
  ///   The order to return the search results
  ///
  /// * [int] start:
  ///   The record to begin the return set on
  ///
  /// * [int] limit:
  ///   The number of records to return
  ///
  /// * [bool] activeOnly:
  ///   Determines whether to return only active categories
  Future<Response> searchFiltersWithHttpInfo({ int? accountId, String? keyword, String? appKey, String? responseGroup, bool? rootOnly, String? sortField, bool? descending, int? start, int? limit, bool? activeOnly, }) async {
    // ignore: prefer_const_declarations
    final path = r'/filter/search';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (accountId != null) {
      queryParams.addAll(_queryParams('', 'accountId', accountId));
    }
    if (keyword != null) {
      queryParams.addAll(_queryParams('', 'keyword', keyword));
    }
    if (appKey != null) {
      queryParams.addAll(_queryParams('', 'appKey', appKey));
    }
    if (responseGroup != null) {
      queryParams.addAll(_queryParams('', 'responseGroup', responseGroup));
    }
    if (rootOnly != null) {
      queryParams.addAll(_queryParams('', 'rootOnly', rootOnly));
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

  /// Search Filters
  ///
  /// Search for filters.
  ///
  /// Parameters:
  ///
  /// * [int] accountId:
  ///   The account id of the user
  ///
  /// * [String] keyword:
  ///   The string to search on
  ///
  /// * [String] appKey:
  ///   the appKey of the application to retrieve filters for
  ///
  /// * [String] responseGroup:
  ///   The group of filters to return: ALL, GLOBAL or MINE. ALL returns both global and application specific matches, GLOBAL only returns global matches, and MINE only returns the application specific matches. If not provided search on the application provided.
  ///
  /// * [bool] rootOnly:
  ///   Restrict the search to only those filters with no parent filter assigned.
  ///
  /// * [String] sortField:
  ///   The column to sort the search on. Possible values include: ID, CREATED, UPDATED, ACTIVE, NAME, DISPLAY
  ///
  /// * [bool] descending:
  ///   The order to return the search results
  ///
  /// * [int] start:
  ///   The record to begin the return set on
  ///
  /// * [int] limit:
  ///   The number of records to return
  ///
  /// * [bool] activeOnly:
  ///   Determines whether to return only active categories
  Future<List<FilterResponse>?> searchFilters({ int? accountId, String? keyword, String? appKey, String? responseGroup, bool? rootOnly, String? sortField, bool? descending, int? start, int? limit, bool? activeOnly, }) async {
    final response = await searchFiltersWithHttpInfo( accountId: accountId, keyword: keyword, appKey: appKey, responseGroup: responseGroup, rootOnly: rootOnly, sortField: sortField, descending: descending, start: start, limit: limit, activeOnly: activeOnly, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<FilterResponse>') as List)
        .cast<FilterResponse>()
        .toList(growable: false);

    }
    return null;
  }

  /// Update Filter
  ///
  /// Update a filter.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] accountId (required):
  ///   The account id of the user
  ///
  /// * [int] filterId (required):
  ///   The ID of the filter to edit
  ///
  /// * [int] parentFilterId:
  ///   The ID of the parent filter, if not provided then the parent filter will be null
  ///
  /// * [String] name:
  ///   The name of the filter
  ///
  /// * [String] description:
  ///   The description of the filter
  ///
  /// * [String] externalId:
  ///   A string identifier used by client applications to store external information
  ///
  /// * [String] externalType:
  ///   A string type used by client applications to store external information
  ///
  /// * [bool] active:
  ///   Sets whether the filter is active or inactive (hidden from consumers)
  ///
  /// * [String] metaData:
  ///   external custom client defined data
  Future<Response> updateFilterWithHttpInfo(int accountId, int filterId, { int? parentFilterId, String? name, String? description, String? externalId, String? externalType, bool? active, String? metaData, }) async {
    // ignore: prefer_const_declarations
    final path = r'/filter/update';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'accountId', accountId));
      queryParams.addAll(_queryParams('', 'filterId', filterId));
    if (parentFilterId != null) {
      queryParams.addAll(_queryParams('', 'parentFilterId', parentFilterId));
    }
    if (name != null) {
      queryParams.addAll(_queryParams('', 'name', name));
    }
    if (description != null) {
      queryParams.addAll(_queryParams('', 'description', description));
    }
    if (externalId != null) {
      queryParams.addAll(_queryParams('', 'externalId', externalId));
    }
    if (externalType != null) {
      queryParams.addAll(_queryParams('', 'externalType', externalType));
    }
    if (active != null) {
      queryParams.addAll(_queryParams('', 'active', active));
    }
    if (metaData != null) {
      queryParams.addAll(_queryParams('', 'metaData', metaData));
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

  /// Update Filter
  ///
  /// Update a filter.
  ///
  /// Parameters:
  ///
  /// * [int] accountId (required):
  ///   The account id of the user
  ///
  /// * [int] filterId (required):
  ///   The ID of the filter to edit
  ///
  /// * [int] parentFilterId:
  ///   The ID of the parent filter, if not provided then the parent filter will be null
  ///
  /// * [String] name:
  ///   The name of the filter
  ///
  /// * [String] description:
  ///   The description of the filter
  ///
  /// * [String] externalId:
  ///   A string identifier used by client applications to store external information
  ///
  /// * [String] externalType:
  ///   A string type used by client applications to store external information
  ///
  /// * [bool] active:
  ///   Sets whether the filter is active or inactive (hidden from consumers)
  ///
  /// * [String] metaData:
  ///   external custom client defined data
  Future<FilterTreeResponse?> updateFilter(int accountId, int filterId, { int? parentFilterId, String? name, String? description, String? externalId, String? externalType, bool? active, String? metaData, }) async {
    final response = await updateFilterWithHttpInfo(accountId, filterId,  parentFilterId: parentFilterId, name: name, description: description, externalId: externalId, externalType: externalType, active: active, metaData: metaData, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'FilterTreeResponse',) as FilterTreeResponse;
    
    }
    return null;
  }
}
