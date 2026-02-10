//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class ListingApi {
  ListingApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Create Listing
  ///
  /// Creates a listing.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] accountId (required):
  ///   the user's account ID
  ///
  /// * [String] name (required):
  ///   the name of the listing
  ///
  /// * [String] filterIds:
  ///   comma separated list of filter IDs
  ///
  /// * [String] description:
  ///   the description of the listing
  ///
  /// * [int] start:
  ///   the start date of the listing
  ///
  /// * [int] end:
  ///   the end date of the listing
  ///
  /// * [String] locationName:
  ///   the name of the location the listing will be held at
  ///
  /// * [String] locationDescription:
  ///   the description of the location the listing will be held at
  ///
  /// * [bool] isPrivate:
  ///   determines whether the listing is public or private
  ///
  /// * [String] externalId:
  ///   external identifier used by a third party
  ///
  /// * [String] externalId2:
  ///   secondary external identifier used by a third party
  ///
  /// * [String] externalGroupId:
  ///   external group identifier used by a third party
  ///
  /// * [bool] active:
  ///   Sets the active flag
  ///
  /// * [String] metaData:
  ///   external custom client defined data
  Future<Response> createListingWithHttpInfo(num version, int accountId, String name, { String? filterIds, String? description, int? start, int? end, String? locationName, String? locationDescription, bool? isPrivate, String? externalId, String? externalId2, String? externalGroupId, bool? active, String? metaData, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/listing/create'
      .replaceAll('{version}', version.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'accountId', accountId));
      queryParams.addAll(_queryParams('', 'name', name));
    if (filterIds != null) {
      queryParams.addAll(_queryParams('', 'filterIds', filterIds));
    }
    if (description != null) {
      queryParams.addAll(_queryParams('', 'description', description));
    }
    if (start != null) {
      queryParams.addAll(_queryParams('', 'start', start));
    }
    if (end != null) {
      queryParams.addAll(_queryParams('', 'end', end));
    }
    if (locationName != null) {
      queryParams.addAll(_queryParams('', 'locationName', locationName));
    }
    if (locationDescription != null) {
      queryParams.addAll(_queryParams('', 'locationDescription', locationDescription));
    }
    if (isPrivate != null) {
      queryParams.addAll(_queryParams('', 'isPrivate', isPrivate));
    }
    if (externalId != null) {
      queryParams.addAll(_queryParams('', 'externalId', externalId));
    }
    if (externalId2 != null) {
      queryParams.addAll(_queryParams('', 'externalId2', externalId2));
    }
    if (externalGroupId != null) {
      queryParams.addAll(_queryParams('', 'externalGroupId', externalGroupId));
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

  /// Create Listing
  ///
  /// Creates a listing.
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] accountId (required):
  ///   the user's account ID
  ///
  /// * [String] name (required):
  ///   the name of the listing
  ///
  /// * [String] filterIds:
  ///   comma separated list of filter IDs
  ///
  /// * [String] description:
  ///   the description of the listing
  ///
  /// * [int] start:
  ///   the start date of the listing
  ///
  /// * [int] end:
  ///   the end date of the listing
  ///
  /// * [String] locationName:
  ///   the name of the location the listing will be held at
  ///
  /// * [String] locationDescription:
  ///   the description of the location the listing will be held at
  ///
  /// * [bool] isPrivate:
  ///   determines whether the listing is public or private
  ///
  /// * [String] externalId:
  ///   external identifier used by a third party
  ///
  /// * [String] externalId2:
  ///   secondary external identifier used by a third party
  ///
  /// * [String] externalGroupId:
  ///   external group identifier used by a third party
  ///
  /// * [bool] active:
  ///   Sets the active flag
  ///
  /// * [String] metaData:
  ///   external custom client defined data
  Future<ListingFullResponse?> createListing(num version, int accountId, String name, { String? filterIds, String? description, int? start, int? end, String? locationName, String? locationDescription, bool? isPrivate, String? externalId, String? externalId2, String? externalGroupId, bool? active, String? metaData, }) async {
    final response = await createListingWithHttpInfo(version, accountId, name,  filterIds: filterIds, description: description, start: start, end: end, locationName: locationName, locationDescription: locationDescription, isPrivate: isPrivate, externalId: externalId, externalId2: externalId2, externalGroupId: externalGroupId, active: active, metaData: metaData, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ListingFullResponse',) as ListingFullResponse;
    
    }
    return null;
  }

  /// Delete Listing
  ///
  /// Delete a listing.
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
  /// * [int] listingId (required):
  ///   the id of the listing to delete
  Future<Response> deleteListingWithHttpInfo(num version, int accountId, int listingId,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/listing/delete'
      .replaceAll('{version}', version.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'accountId', accountId));
      queryParams.addAll(_queryParams('', 'listingId', listingId));

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

  /// Delete Listing
  ///
  /// Delete a listing.
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] accountId (required):
  ///   the id of the logged in user
  ///
  /// * [int] listingId (required):
  ///   the id of the listing to delete
  Future<SirqulResponse?> deleteListing(num version, int accountId, int listingId,) async {
    final response = await deleteListingWithHttpInfo(version, accountId, listingId,);
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

  /// Get Listing
  ///
  /// Get a listing by id.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] listingId (required):
  ///   the id of the listing to get
  Future<Response> getListingWithHttpInfo(num version, int listingId,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/listing/get'
      .replaceAll('{version}', version.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'listingId', listingId));

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

  /// Get Listing
  ///
  /// Get a listing by id.
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] listingId (required):
  ///   the id of the listing to get
  Future<ListingFullResponse?> getListing(num version, int listingId,) async {
    final response = await getListingWithHttpInfo(version, listingId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ListingFullResponse',) as ListingFullResponse;
    
    }
    return null;
  }

  /// Search Listings
  ///
  /// Search for event listings from the start time to end time
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] accountId:
  ///   the account id of the user
  ///
  /// * [String] keyword:
  ///   search the event name and description for this keyword
  ///
  /// * [int] start:
  ///   the record to begin the return set on
  ///
  /// * [int] limit:
  ///   the number of records to return
  ///
  /// * [bool] activeOnly:
  ///   whether to search on active listings only
  ///
  /// * [double] latitude:
  ///   the current latitude of the user
  ///
  /// * [double] longitude:
  ///   the current longitude of the user
  ///
  /// * [int] startDate:
  ///   the start date to search from
  ///
  /// * [int] endDate:
  ///   the end date to search to
  ///
  /// * [String] categoryIds:
  ///   only return items of these categories
  ///
  /// * [String] filterIds:
  ///   
  ///
  /// * [bool] useListingOrderIds:
  ///   determines whether to use configured listing order ids
  ///
  /// * [String] externalId:
  ///   external identifier used by a third party
  ///
  /// * [String] externalId2:
  ///   secondary external identifier used by a third party
  ///
  /// * [String] externalGroupId:
  ///   external group identifier used by a third party
  Future<Response> searchListingWithHttpInfo(num version, { int? accountId, String? keyword, int? start, int? limit, bool? activeOnly, double? latitude, double? longitude, int? startDate, int? endDate, String? categoryIds, String? filterIds, bool? useListingOrderIds, String? externalId, String? externalId2, String? externalGroupId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/listing/search'
      .replaceAll('{version}', version.toString());

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
    if (start != null) {
      queryParams.addAll(_queryParams('', 'start', start));
    }
    if (limit != null) {
      queryParams.addAll(_queryParams('', 'limit', limit));
    }
    if (activeOnly != null) {
      queryParams.addAll(_queryParams('', 'activeOnly', activeOnly));
    }
    if (latitude != null) {
      queryParams.addAll(_queryParams('', 'latitude', latitude));
    }
    if (longitude != null) {
      queryParams.addAll(_queryParams('', 'longitude', longitude));
    }
    if (startDate != null) {
      queryParams.addAll(_queryParams('', 'startDate', startDate));
    }
    if (endDate != null) {
      queryParams.addAll(_queryParams('', 'endDate', endDate));
    }
    if (categoryIds != null) {
      queryParams.addAll(_queryParams('', 'categoryIds', categoryIds));
    }
    if (filterIds != null) {
      queryParams.addAll(_queryParams('', 'filterIds', filterIds));
    }
    if (useListingOrderIds != null) {
      queryParams.addAll(_queryParams('', 'useListingOrderIds', useListingOrderIds));
    }
    if (externalId != null) {
      queryParams.addAll(_queryParams('', 'externalId', externalId));
    }
    if (externalId2 != null) {
      queryParams.addAll(_queryParams('', 'externalId2', externalId2));
    }
    if (externalGroupId != null) {
      queryParams.addAll(_queryParams('', 'externalGroupId', externalGroupId));
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

  /// Search Listings
  ///
  /// Search for event listings from the start time to end time
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] accountId:
  ///   the account id of the user
  ///
  /// * [String] keyword:
  ///   search the event name and description for this keyword
  ///
  /// * [int] start:
  ///   the record to begin the return set on
  ///
  /// * [int] limit:
  ///   the number of records to return
  ///
  /// * [bool] activeOnly:
  ///   whether to search on active listings only
  ///
  /// * [double] latitude:
  ///   the current latitude of the user
  ///
  /// * [double] longitude:
  ///   the current longitude of the user
  ///
  /// * [int] startDate:
  ///   the start date to search from
  ///
  /// * [int] endDate:
  ///   the end date to search to
  ///
  /// * [String] categoryIds:
  ///   only return items of these categories
  ///
  /// * [String] filterIds:
  ///   
  ///
  /// * [bool] useListingOrderIds:
  ///   determines whether to use configured listing order ids
  ///
  /// * [String] externalId:
  ///   external identifier used by a third party
  ///
  /// * [String] externalId2:
  ///   secondary external identifier used by a third party
  ///
  /// * [String] externalGroupId:
  ///   external group identifier used by a third party
  Future<List<ListingResponse>?> searchListing(num version, { int? accountId, String? keyword, int? start, int? limit, bool? activeOnly, double? latitude, double? longitude, int? startDate, int? endDate, String? categoryIds, String? filterIds, bool? useListingOrderIds, String? externalId, String? externalId2, String? externalGroupId, }) async {
    final response = await searchListingWithHttpInfo(version,  accountId: accountId, keyword: keyword, start: start, limit: limit, activeOnly: activeOnly, latitude: latitude, longitude: longitude, startDate: startDate, endDate: endDate, categoryIds: categoryIds, filterIds: filterIds, useListingOrderIds: useListingOrderIds, externalId: externalId, externalId2: externalId2, externalGroupId: externalGroupId, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<ListingResponse>') as List)
        .cast<ListingResponse>()
        .toList(growable: false);

    }
    return null;
  }

  /// Summary Listing
  ///
  /// Search for a list of summary listings from the start time up to 8 days out.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] accountId:
  ///   the account id of the user
  ///
  /// * [int] startDate:
  ///   the start date to search from
  ///
  /// * [String] categoryIds:
  ///   the list of categories to search on
  ///
  /// * [int] daysToInclude:
  ///   how far out to search, in days
  ///
  /// * [bool] useListingOrderIds:
  ///   determines whether to use configured listing order ids
  Future<Response> summaryListingWithHttpInfo(num version, { int? accountId, int? startDate, String? categoryIds, int? daysToInclude, bool? useListingOrderIds, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/listing/summary'
      .replaceAll('{version}', version.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (accountId != null) {
      queryParams.addAll(_queryParams('', 'accountId', accountId));
    }
    if (startDate != null) {
      queryParams.addAll(_queryParams('', 'startDate', startDate));
    }
    if (categoryIds != null) {
      queryParams.addAll(_queryParams('', 'categoryIds', categoryIds));
    }
    if (daysToInclude != null) {
      queryParams.addAll(_queryParams('', 'daysToInclude', daysToInclude));
    }
    if (useListingOrderIds != null) {
      queryParams.addAll(_queryParams('', 'useListingOrderIds', useListingOrderIds));
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

  /// Summary Listing
  ///
  /// Search for a list of summary listings from the start time up to 8 days out.
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] accountId:
  ///   the account id of the user
  ///
  /// * [int] startDate:
  ///   the start date to search from
  ///
  /// * [String] categoryIds:
  ///   the list of categories to search on
  ///
  /// * [int] daysToInclude:
  ///   how far out to search, in days
  ///
  /// * [bool] useListingOrderIds:
  ///   determines whether to use configured listing order ids
  Future<List<ListingGroupResponse>?> summaryListing(num version, { int? accountId, int? startDate, String? categoryIds, int? daysToInclude, bool? useListingOrderIds, }) async {
    final response = await summaryListingWithHttpInfo(version,  accountId: accountId, startDate: startDate, categoryIds: categoryIds, daysToInclude: daysToInclude, useListingOrderIds: useListingOrderIds, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<ListingGroupResponse>') as List)
        .cast<ListingGroupResponse>()
        .toList(growable: false);

    }
    return null;
  }

  /// Update Listing
  ///
  /// Updates a listing.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] accountId (required):
  ///   the user's account ID
  ///
  /// * [int] listingId (required):
  ///   the listing to update
  ///
  /// * [String] filterIds:
  ///   comma separated list of filter IDs
  ///
  /// * [String] name:
  ///   the name of the listing
  ///
  /// * [String] description:
  ///   the description of the listing
  ///
  /// * [int] start:
  ///   the start date of the listing
  ///
  /// * [int] end:
  ///   the end date of the listing
  ///
  /// * [String] locationName:
  ///   the name of the location the listing will be held at
  ///
  /// * [String] locationDescription:
  ///   the description of the location the listing will be held at
  ///
  /// * [bool] isPrivate:
  ///   determines whether the listing is public or private
  ///
  /// * [String] externalId:
  ///   external identifier used by a third party
  ///
  /// * [String] externalId2:
  ///   secondary external identifier used by a third party
  ///
  /// * [String] externalGroupId:
  ///   external group identifier used by a third party
  ///
  /// * [bool] active:
  ///   Sets the active flag
  ///
  /// * [String] metaData:
  ///   external custom client defined data
  Future<Response> updateListingWithHttpInfo(num version, int accountId, int listingId, { String? filterIds, String? name, String? description, int? start, int? end, String? locationName, String? locationDescription, bool? isPrivate, String? externalId, String? externalId2, String? externalGroupId, bool? active, String? metaData, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/listing/update'
      .replaceAll('{version}', version.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'accountId', accountId));
      queryParams.addAll(_queryParams('', 'listingId', listingId));
    if (filterIds != null) {
      queryParams.addAll(_queryParams('', 'filterIds', filterIds));
    }
    if (name != null) {
      queryParams.addAll(_queryParams('', 'name', name));
    }
    if (description != null) {
      queryParams.addAll(_queryParams('', 'description', description));
    }
    if (start != null) {
      queryParams.addAll(_queryParams('', 'start', start));
    }
    if (end != null) {
      queryParams.addAll(_queryParams('', 'end', end));
    }
    if (locationName != null) {
      queryParams.addAll(_queryParams('', 'locationName', locationName));
    }
    if (locationDescription != null) {
      queryParams.addAll(_queryParams('', 'locationDescription', locationDescription));
    }
    if (isPrivate != null) {
      queryParams.addAll(_queryParams('', 'isPrivate', isPrivate));
    }
    if (externalId != null) {
      queryParams.addAll(_queryParams('', 'externalId', externalId));
    }
    if (externalId2 != null) {
      queryParams.addAll(_queryParams('', 'externalId2', externalId2));
    }
    if (externalGroupId != null) {
      queryParams.addAll(_queryParams('', 'externalGroupId', externalGroupId));
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

  /// Update Listing
  ///
  /// Updates a listing.
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] accountId (required):
  ///   the user's account ID
  ///
  /// * [int] listingId (required):
  ///   the listing to update
  ///
  /// * [String] filterIds:
  ///   comma separated list of filter IDs
  ///
  /// * [String] name:
  ///   the name of the listing
  ///
  /// * [String] description:
  ///   the description of the listing
  ///
  /// * [int] start:
  ///   the start date of the listing
  ///
  /// * [int] end:
  ///   the end date of the listing
  ///
  /// * [String] locationName:
  ///   the name of the location the listing will be held at
  ///
  /// * [String] locationDescription:
  ///   the description of the location the listing will be held at
  ///
  /// * [bool] isPrivate:
  ///   determines whether the listing is public or private
  ///
  /// * [String] externalId:
  ///   external identifier used by a third party
  ///
  /// * [String] externalId2:
  ///   secondary external identifier used by a third party
  ///
  /// * [String] externalGroupId:
  ///   external group identifier used by a third party
  ///
  /// * [bool] active:
  ///   Sets the active flag
  ///
  /// * [String] metaData:
  ///   external custom client defined data
  Future<ListingFullResponse?> updateListing(num version, int accountId, int listingId, { String? filterIds, String? name, String? description, int? start, int? end, String? locationName, String? locationDescription, bool? isPrivate, String? externalId, String? externalId2, String? externalGroupId, bool? active, String? metaData, }) async {
    final response = await updateListingWithHttpInfo(version, accountId, listingId,  filterIds: filterIds, name: name, description: description, start: start, end: end, locationName: locationName, locationDescription: locationDescription, isPrivate: isPrivate, externalId: externalId, externalId2: externalId2, externalGroupId: externalGroupId, active: active, metaData: metaData, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ListingFullResponse',) as ListingFullResponse;
    
    }
    return null;
  }
}
