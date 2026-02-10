//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class FavoriteApi {
  FavoriteApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Create Favorite
  ///
  /// Adds an offer, offer location, retailer location, or category to your favorites.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] favoritableId (required):
  ///   The ID of the object to favorite {offerId, offerLocationId, retailerLocationId, categoryId}
  ///
  /// * [String] favoritableType (required):
  ///   The type of the object to favorite {OFFER, OFFER_LOCATION, RETAILER_LOCATION, CATEGORY, ALBUM}
  ///
  /// * [String] deviceId:
  ///   The unique ID given by the device (deviceId or accountId required)
  ///
  /// * [int] accountId:
  ///   The account ID of the user (deviceId or accountId required)
  ///
  /// * [double] latitude:
  ///   The current latitude of the user
  ///
  /// * [double] longitude:
  ///   The current longitude of the user
  Future<Response> addFavoriteWithHttpInfo(num version, int favoritableId, String favoritableType, { String? deviceId, int? accountId, double? latitude, double? longitude, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/favorite/create'
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
      queryParams.addAll(_queryParams('', 'favoritableId', favoritableId));
      queryParams.addAll(_queryParams('', 'favoritableType', favoritableType));
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

  /// Create Favorite
  ///
  /// Adds an offer, offer location, retailer location, or category to your favorites.
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] favoritableId (required):
  ///   The ID of the object to favorite {offerId, offerLocationId, retailerLocationId, categoryId}
  ///
  /// * [String] favoritableType (required):
  ///   The type of the object to favorite {OFFER, OFFER_LOCATION, RETAILER_LOCATION, CATEGORY, ALBUM}
  ///
  /// * [String] deviceId:
  ///   The unique ID given by the device (deviceId or accountId required)
  ///
  /// * [int] accountId:
  ///   The account ID of the user (deviceId or accountId required)
  ///
  /// * [double] latitude:
  ///   The current latitude of the user
  ///
  /// * [double] longitude:
  ///   The current longitude of the user
  Future<WrappedResponse?> addFavorite(num version, int favoritableId, String favoritableType, { String? deviceId, int? accountId, double? latitude, double? longitude, }) async {
    final response = await addFavoriteWithHttpInfo(version, favoritableId, favoritableType,  deviceId: deviceId, accountId: accountId, latitude: latitude, longitude: longitude, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'WrappedResponse',) as WrappedResponse;
    
    }
    return null;
  }

  /// Delete Favorite
  ///
  /// Removes a favorited item from the user's favorites list.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [String] deviceId:
  ///   The unique ID given by the device (deviceId or accountId required)
  ///
  /// * [int] accountId:
  ///   The account ID of the user (deviceId or accountId required)
  ///
  /// * [int] favoriteId:
  ///   The ID of the favorite reference record (only optional if favoritableId & favoritableType is pass in instead)
  ///
  /// * [int] favoritableId:
  ///   The ID of the object to un-favorite {offerId, offerLocationId, retailerLocationId, categoryId} (this is required if favoriteId is NOT passed in)
  ///
  /// * [String] favoritableType:
  ///   The type of the object to un-favorite {OFFER, OFFER_LOCATION, RETAILER_LOCATION, CATEGORY} (this is required if favoriteId is NOT passed in)
  Future<Response> deleteFavoriteWithHttpInfo(num version, { String? deviceId, int? accountId, int? favoriteId, int? favoritableId, String? favoritableType, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/favorite/delete'
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
    if (favoriteId != null) {
      queryParams.addAll(_queryParams('', 'favoriteId', favoriteId));
    }
    if (favoritableId != null) {
      queryParams.addAll(_queryParams('', 'favoritableId', favoritableId));
    }
    if (favoritableType != null) {
      queryParams.addAll(_queryParams('', 'favoritableType', favoritableType));
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

  /// Delete Favorite
  ///
  /// Removes a favorited item from the user's favorites list.
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [String] deviceId:
  ///   The unique ID given by the device (deviceId or accountId required)
  ///
  /// * [int] accountId:
  ///   The account ID of the user (deviceId or accountId required)
  ///
  /// * [int] favoriteId:
  ///   The ID of the favorite reference record (only optional if favoritableId & favoritableType is pass in instead)
  ///
  /// * [int] favoritableId:
  ///   The ID of the object to un-favorite {offerId, offerLocationId, retailerLocationId, categoryId} (this is required if favoriteId is NOT passed in)
  ///
  /// * [String] favoritableType:
  ///   The type of the object to un-favorite {OFFER, OFFER_LOCATION, RETAILER_LOCATION, CATEGORY} (this is required if favoriteId is NOT passed in)
  Future<SirqulResponse?> deleteFavorite(num version, { String? deviceId, int? accountId, int? favoriteId, int? favoritableId, String? favoritableType, }) async {
    final response = await deleteFavoriteWithHttpInfo(version,  deviceId: deviceId, accountId: accountId, favoriteId: favoriteId, favoritableId: favoritableId, favoritableType: favoritableType, );
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

  /// Get Favorite
  ///
  /// Retrieves a single favorited item.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] favoriteId (required):
  ///   The ID of the favorite reference record
  ///
  /// * [String] deviceId:
  ///   The unique ID given by the device (deviceId or accountId required)
  ///
  /// * [int] accountId:
  ///   The account ID of the user (deviceId or accountId required)
  ///
  /// * [double] latitude:
  ///   The current latitude of the user
  ///
  /// * [double] longitude:
  ///   The current longitude of the user
  Future<Response> getFavoriteWithHttpInfo(num version, int favoriteId, { String? deviceId, int? accountId, double? latitude, double? longitude, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/favorite/get'
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
      queryParams.addAll(_queryParams('', 'favoriteId', favoriteId));
    if (latitude != null) {
      queryParams.addAll(_queryParams('', 'latitude', latitude));
    }
    if (longitude != null) {
      queryParams.addAll(_queryParams('', 'longitude', longitude));
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

  /// Get Favorite
  ///
  /// Retrieves a single favorited item.
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] favoriteId (required):
  ///   The ID of the favorite reference record
  ///
  /// * [String] deviceId:
  ///   The unique ID given by the device (deviceId or accountId required)
  ///
  /// * [int] accountId:
  ///   The account ID of the user (deviceId or accountId required)
  ///
  /// * [double] latitude:
  ///   The current latitude of the user
  ///
  /// * [double] longitude:
  ///   The current longitude of the user
  Future<WrappedResponse?> getFavorite(num version, int favoriteId, { String? deviceId, int? accountId, double? latitude, double? longitude, }) async {
    final response = await getFavoriteWithHttpInfo(version, favoriteId,  deviceId: deviceId, accountId: accountId, latitude: latitude, longitude: longitude, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'WrappedResponse',) as WrappedResponse;
    
    }
    return null;
  }

  /// Search Favorites
  ///
  /// Searches on the user's favorites.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [String] favoritableType (required):
  ///   The type of the object to favorite {OFFER, OFFER_LOCATION, RETAILER_LOCATION, CATEGORY}
  ///
  /// * [String] sortField (required):
  ///   Determines what to sort the results by {CREATED, UPDATED, DISPLAY}
  ///
  /// * [bool] descending (required):
  ///   Determines whether the results are in descending order
  ///
  /// * [int] start (required):
  ///   The start index for pagination
  ///
  /// * [int] limit (required):
  ///   The limit for pagination (there is a hard limit of 1000)
  ///
  /// * [bool] activeOnly (required):
  ///   Determines whether to only return active favorites
  ///
  /// * [bool] returnFullResponse (required):
  ///   Determines whether to return a detailed version of the response list
  ///
  /// * [String] deviceId:
  ///   The unique ID given by the device (deviceId or accountId required)
  ///
  /// * [int] accountId:
  ///   The account ID of the user (deviceId or accountId required)
  ///
  /// * [int] connectionAccountId:
  ///   The ID of an account the user would like to view favorites for
  ///
  /// * [String] secondaryType:
  ///   
  ///
  /// * [String] keyword:
  ///   The keyword to search for
  ///
  /// * [double] latitude:
  ///   The current latitude of the user
  ///
  /// * [double] longitude:
  ///   The current longitude of the user
  Future<Response> searchFavoritesWithHttpInfo(num version, String favoritableType, String sortField, bool descending, int start, int limit, bool activeOnly, bool returnFullResponse, { String? deviceId, int? accountId, int? connectionAccountId, String? secondaryType, String? keyword, double? latitude, double? longitude, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/favorite/search'
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
      queryParams.addAll(_queryParams('', 'favoritableType', favoritableType));
    if (secondaryType != null) {
      queryParams.addAll(_queryParams('', 'secondaryType', secondaryType));
    }
    if (keyword != null) {
      queryParams.addAll(_queryParams('', 'keyword', keyword));
    }
      queryParams.addAll(_queryParams('', 'sortField', sortField));
      queryParams.addAll(_queryParams('', 'descending', descending));
      queryParams.addAll(_queryParams('', 'start', start));
      queryParams.addAll(_queryParams('', 'limit', limit));
      queryParams.addAll(_queryParams('', 'activeOnly', activeOnly));
      queryParams.addAll(_queryParams('', 'returnFullResponse', returnFullResponse));
    if (latitude != null) {
      queryParams.addAll(_queryParams('', 'latitude', latitude));
    }
    if (longitude != null) {
      queryParams.addAll(_queryParams('', 'longitude', longitude));
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

  /// Search Favorites
  ///
  /// Searches on the user's favorites.
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [String] favoritableType (required):
  ///   The type of the object to favorite {OFFER, OFFER_LOCATION, RETAILER_LOCATION, CATEGORY}
  ///
  /// * [String] sortField (required):
  ///   Determines what to sort the results by {CREATED, UPDATED, DISPLAY}
  ///
  /// * [bool] descending (required):
  ///   Determines whether the results are in descending order
  ///
  /// * [int] start (required):
  ///   The start index for pagination
  ///
  /// * [int] limit (required):
  ///   The limit for pagination (there is a hard limit of 1000)
  ///
  /// * [bool] activeOnly (required):
  ///   Determines whether to only return active favorites
  ///
  /// * [bool] returnFullResponse (required):
  ///   Determines whether to return a detailed version of the response list
  ///
  /// * [String] deviceId:
  ///   The unique ID given by the device (deviceId or accountId required)
  ///
  /// * [int] accountId:
  ///   The account ID of the user (deviceId or accountId required)
  ///
  /// * [int] connectionAccountId:
  ///   The ID of an account the user would like to view favorites for
  ///
  /// * [String] secondaryType:
  ///   
  ///
  /// * [String] keyword:
  ///   The keyword to search for
  ///
  /// * [double] latitude:
  ///   The current latitude of the user
  ///
  /// * [double] longitude:
  ///   The current longitude of the user
  Future<SearchResponse?> searchFavorites(num version, String favoritableType, String sortField, bool descending, int start, int limit, bool activeOnly, bool returnFullResponse, { String? deviceId, int? accountId, int? connectionAccountId, String? secondaryType, String? keyword, double? latitude, double? longitude, }) async {
    final response = await searchFavoritesWithHttpInfo(version, favoritableType, sortField, descending, start, limit, activeOnly, returnFullResponse,  deviceId: deviceId, accountId: accountId, connectionAccountId: connectionAccountId, secondaryType: secondaryType, keyword: keyword, latitude: latitude, longitude: longitude, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'SearchResponse',) as SearchResponse;
    
    }
    return null;
  }

  /// Who has Favorited
  ///
  /// Searches for everyone that has favorited an item
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] favoritableId (required):
  ///   The ID of the favoritableType to search on
  ///
  /// * [String] favoritableType (required):
  ///   The type of the object to favorite {OFFER, OFFER_LOCATION, RETAILER_LOCATION, CATEGORY}
  ///
  /// * [int] start (required):
  ///   The start index for pagination
  ///
  /// * [int] limit (required):
  ///   The limit for pagination
  ///
  /// * [String] deviceId:
  ///   The unique ID given by the device (deviceId or accountId required)
  ///
  /// * [int] accountId:
  ///   The account ID of the user (deviceId or accountId required)
  ///
  /// * [double] latitude:
  ///   The current latitude of the user
  ///
  /// * [double] longitude:
  ///   The current longitude of the user
  ///
  /// * [String] keyword:
  ///   The keyword to limit that account list
  Future<Response> whoHasFavoritedWithHttpInfo(num version, int favoritableId, String favoritableType, int start, int limit, { String? deviceId, int? accountId, double? latitude, double? longitude, String? keyword, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/favorite/whois'
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
    if (latitude != null) {
      queryParams.addAll(_queryParams('', 'latitude', latitude));
    }
    if (longitude != null) {
      queryParams.addAll(_queryParams('', 'longitude', longitude));
    }
      queryParams.addAll(_queryParams('', 'favoritableId', favoritableId));
      queryParams.addAll(_queryParams('', 'favoritableType', favoritableType));
    if (keyword != null) {
      queryParams.addAll(_queryParams('', 'keyword', keyword));
    }
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

  /// Who has Favorited
  ///
  /// Searches for everyone that has favorited an item
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] favoritableId (required):
  ///   The ID of the favoritableType to search on
  ///
  /// * [String] favoritableType (required):
  ///   The type of the object to favorite {OFFER, OFFER_LOCATION, RETAILER_LOCATION, CATEGORY}
  ///
  /// * [int] start (required):
  ///   The start index for pagination
  ///
  /// * [int] limit (required):
  ///   The limit for pagination
  ///
  /// * [String] deviceId:
  ///   The unique ID given by the device (deviceId or accountId required)
  ///
  /// * [int] accountId:
  ///   The account ID of the user (deviceId or accountId required)
  ///
  /// * [double] latitude:
  ///   The current latitude of the user
  ///
  /// * [double] longitude:
  ///   The current longitude of the user
  ///
  /// * [String] keyword:
  ///   The keyword to limit that account list
  Future<List<AccountResponse>?> whoHasFavorited(num version, int favoritableId, String favoritableType, int start, int limit, { String? deviceId, int? accountId, double? latitude, double? longitude, String? keyword, }) async {
    final response = await whoHasFavoritedWithHttpInfo(version, favoritableId, favoritableType, start, limit,  deviceId: deviceId, accountId: accountId, latitude: latitude, longitude: longitude, keyword: keyword, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<AccountResponse>') as List)
        .cast<AccountResponse>()
        .toList(growable: false);

    }
    return null;
  }
}
