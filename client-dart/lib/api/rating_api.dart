//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class RatingApi {
  RatingApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Create Rating
  ///
  /// This is used to leave rating on a ratable object (i.e. retailer locations). Each user can only rate on a ratable object once per category. If a user rates on the same object and category, the previous rating will be overwritten. Leaving a rating on a ratable object will be visible to everyone who has access to view the object.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] ratableType (required):
  ///   The ratable object type {RETAILER_LOCATION}
  ///
  /// * [int] ratableId (required):
  ///   The id of the ratable object
  ///
  /// * [int] ratingValue (required):
  ///   The integer value of 0-100
  ///
  /// * [String] deviceId:
  ///   The unique device identifier that made the request (either deviceId or accountId must be used)
  ///
  /// * [int] accountId:
  ///   The unique accountId that made the request (either deviceId or accountId must be used)
  ///
  /// * [int] categoryId:
  ///   
  ///
  /// * [String] display:
  ///   A subject title for the user rating (limited to 255 characters)
  ///
  /// * [String] description:
  ///   The description of the rating
  ///
  /// * [String] locationDescription:
  ///   The description of the location
  ///
  /// * [double] latitude:
  ///   The current location of the user
  ///
  /// * [double] longitude:
  ///   The current location of the user
  Future<Response> createRatingWithHttpInfo(String ratableType, int ratableId, int ratingValue, { String? deviceId, int? accountId, int? categoryId, String? display, String? description, String? locationDescription, double? latitude, double? longitude, }) async {
    // ignore: prefer_const_declarations
    final path = r'/rating/create';

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
      queryParams.addAll(_queryParams('', 'ratableType', ratableType));
      queryParams.addAll(_queryParams('', 'ratableId', ratableId));
      queryParams.addAll(_queryParams('', 'ratingValue', ratingValue));
    if (categoryId != null) {
      queryParams.addAll(_queryParams('', 'categoryId', categoryId));
    }
    if (display != null) {
      queryParams.addAll(_queryParams('', 'display', display));
    }
    if (description != null) {
      queryParams.addAll(_queryParams('', 'description', description));
    }
    if (locationDescription != null) {
      queryParams.addAll(_queryParams('', 'locationDescription', locationDescription));
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

  /// Create Rating
  ///
  /// This is used to leave rating on a ratable object (i.e. retailer locations). Each user can only rate on a ratable object once per category. If a user rates on the same object and category, the previous rating will be overwritten. Leaving a rating on a ratable object will be visible to everyone who has access to view the object.
  ///
  /// Parameters:
  ///
  /// * [String] ratableType (required):
  ///   The ratable object type {RETAILER_LOCATION}
  ///
  /// * [int] ratableId (required):
  ///   The id of the ratable object
  ///
  /// * [int] ratingValue (required):
  ///   The integer value of 0-100
  ///
  /// * [String] deviceId:
  ///   The unique device identifier that made the request (either deviceId or accountId must be used)
  ///
  /// * [int] accountId:
  ///   The unique accountId that made the request (either deviceId or accountId must be used)
  ///
  /// * [int] categoryId:
  ///   
  ///
  /// * [String] display:
  ///   A subject title for the user rating (limited to 255 characters)
  ///
  /// * [String] description:
  ///   The description of the rating
  ///
  /// * [String] locationDescription:
  ///   The description of the location
  ///
  /// * [double] latitude:
  ///   The current location of the user
  ///
  /// * [double] longitude:
  ///   The current location of the user
  Future<RatingResponse?> createRating(String ratableType, int ratableId, int ratingValue, { String? deviceId, int? accountId, int? categoryId, String? display, String? description, String? locationDescription, double? latitude, double? longitude, }) async {
    final response = await createRatingWithHttpInfo(ratableType, ratableId, ratingValue,  deviceId: deviceId, accountId: accountId, categoryId: categoryId, display: display, description: description, locationDescription: locationDescription, latitude: latitude, longitude: longitude, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'RatingResponse',) as RatingResponse;
    
    }
    return null;
  }

  /// Delete Rating
  ///
  /// Sets a rating as deleted.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] ratingId (required):
  ///   The ID of the rating to delete
  ///
  /// * [String] deviceId:
  ///   The unique device identifier that made the request (either deviceId or accountId must be used)
  ///
  /// * [int] accountId:
  ///   The unique accountId that made the request (either deviceId or accountId must be used)
  Future<Response> deleteRatingWithHttpInfo(int ratingId, { String? deviceId, int? accountId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/rating/delete';

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
      queryParams.addAll(_queryParams('', 'ratingId', ratingId));

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

  /// Delete Rating
  ///
  /// Sets a rating as deleted.
  ///
  /// Parameters:
  ///
  /// * [int] ratingId (required):
  ///   The ID of the rating to delete
  ///
  /// * [String] deviceId:
  ///   The unique device identifier that made the request (either deviceId or accountId must be used)
  ///
  /// * [int] accountId:
  ///   The unique accountId that made the request (either deviceId or accountId must be used)
  Future<SirqulResponse?> deleteRating(int ratingId, { String? deviceId, int? accountId, }) async {
    final response = await deleteRatingWithHttpInfo(ratingId,  deviceId: deviceId, accountId: accountId, );
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

  /// Search Location Rating Indexes
  ///
  /// Search for retailer locations by averages near you.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] categoryIds:
  ///   Comma separated list of category ids to filter the results by
  ///
  /// * [String] keyword:
  ///   The keyword used to search
  ///
  /// * [String] locationType:
  ///   The type of location to filter the results by
  ///
  /// * [String] sortField:
  ///   The column to sort the search on {ID, CREATED, UPDATED, ACTIVE, RATABLE_TYPE, RATABLE_ID, RATABLE_DISPLAY, CATEGORY_ID, CATEGORY_NAME, CATEGORY_SHORT_NAME, CATEGORY_DISPLAY, COUNT, SUMMATION, AVERAGE, VALUE}
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
  /// * [double] searchRange:
  ///   The search radius in kilometers to filter results
  ///
  /// * [double] latitude:
  ///   The current location of the user
  ///
  /// * [double] longitude:
  ///   The current location of the user
  ///
  /// * [bool] returnOverallRating:
  ///   Determines whether to return the overall rating record instead
  ///
  /// * [String] distanceUnit:
  ///   
  ///
  /// * [bool] returnRetailer:
  ///   whether to return the retailer or not
  ///
  /// * [bool] returnAssets:
  ///   whether to return the assets or not
  ///
  /// * [bool] returnOffers:
  ///   whether to return the offers or not
  ///
  /// * [bool] returnCategories:
  ///   whether to return the categories or not
  ///
  /// * [bool] returnFilters:
  ///   whether to return the filters or not
  Future<Response> searchLocationRatingIndexesWithHttpInfo({ String? categoryIds, String? keyword, String? locationType, String? sortField, bool? descending, int? start, int? limit, double? searchRange, double? latitude, double? longitude, bool? returnOverallRating, String? distanceUnit, bool? returnRetailer, bool? returnAssets, bool? returnOffers, bool? returnCategories, bool? returnFilters, }) async {
    // ignore: prefer_const_declarations
    final path = r'/location/rating/index/search';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (categoryIds != null) {
      queryParams.addAll(_queryParams('', 'categoryIds', categoryIds));
    }
    if (keyword != null) {
      queryParams.addAll(_queryParams('', 'keyword', keyword));
    }
    if (locationType != null) {
      queryParams.addAll(_queryParams('', 'locationType', locationType));
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
    if (searchRange != null) {
      queryParams.addAll(_queryParams('', 'searchRange', searchRange));
    }
    if (latitude != null) {
      queryParams.addAll(_queryParams('', 'latitude', latitude));
    }
    if (longitude != null) {
      queryParams.addAll(_queryParams('', 'longitude', longitude));
    }
    if (returnOverallRating != null) {
      queryParams.addAll(_queryParams('', 'returnOverallRating', returnOverallRating));
    }
    if (distanceUnit != null) {
      queryParams.addAll(_queryParams('', 'distanceUnit', distanceUnit));
    }
    if (returnRetailer != null) {
      queryParams.addAll(_queryParams('', 'returnRetailer', returnRetailer));
    }
    if (returnAssets != null) {
      queryParams.addAll(_queryParams('', 'returnAssets', returnAssets));
    }
    if (returnOffers != null) {
      queryParams.addAll(_queryParams('', 'returnOffers', returnOffers));
    }
    if (returnCategories != null) {
      queryParams.addAll(_queryParams('', 'returnCategories', returnCategories));
    }
    if (returnFilters != null) {
      queryParams.addAll(_queryParams('', 'returnFilters', returnFilters));
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

  /// Search Location Rating Indexes
  ///
  /// Search for retailer locations by averages near you.
  ///
  /// Parameters:
  ///
  /// * [String] categoryIds:
  ///   Comma separated list of category ids to filter the results by
  ///
  /// * [String] keyword:
  ///   The keyword used to search
  ///
  /// * [String] locationType:
  ///   The type of location to filter the results by
  ///
  /// * [String] sortField:
  ///   The column to sort the search on {ID, CREATED, UPDATED, ACTIVE, RATABLE_TYPE, RATABLE_ID, RATABLE_DISPLAY, CATEGORY_ID, CATEGORY_NAME, CATEGORY_SHORT_NAME, CATEGORY_DISPLAY, COUNT, SUMMATION, AVERAGE, VALUE}
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
  /// * [double] searchRange:
  ///   The search radius in kilometers to filter results
  ///
  /// * [double] latitude:
  ///   The current location of the user
  ///
  /// * [double] longitude:
  ///   The current location of the user
  ///
  /// * [bool] returnOverallRating:
  ///   Determines whether to return the overall rating record instead
  ///
  /// * [String] distanceUnit:
  ///   
  ///
  /// * [bool] returnRetailer:
  ///   whether to return the retailer or not
  ///
  /// * [bool] returnAssets:
  ///   whether to return the assets or not
  ///
  /// * [bool] returnOffers:
  ///   whether to return the offers or not
  ///
  /// * [bool] returnCategories:
  ///   whether to return the categories or not
  ///
  /// * [bool] returnFilters:
  ///   whether to return the filters or not
  Future<List<RatingIndexResponse>?> searchLocationRatingIndexes({ String? categoryIds, String? keyword, String? locationType, String? sortField, bool? descending, int? start, int? limit, double? searchRange, double? latitude, double? longitude, bool? returnOverallRating, String? distanceUnit, bool? returnRetailer, bool? returnAssets, bool? returnOffers, bool? returnCategories, bool? returnFilters, }) async {
    final response = await searchLocationRatingIndexesWithHttpInfo( categoryIds: categoryIds, keyword: keyword, locationType: locationType, sortField: sortField, descending: descending, start: start, limit: limit, searchRange: searchRange, latitude: latitude, longitude: longitude, returnOverallRating: returnOverallRating, distanceUnit: distanceUnit, returnRetailer: returnRetailer, returnAssets: returnAssets, returnOffers: returnOffers, returnCategories: returnCategories, returnFilters: returnFilters, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<RatingIndexResponse>') as List)
        .cast<RatingIndexResponse>()
        .toList(growable: false);

    }
    return null;
  }

  /// Search Rating Indexes
  ///
  /// Search for ratable items by averages.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] ratableType (required):
  ///   Filter results by a ratable type {RETAILER_LOCATION}
  ///
  /// * [String] ratableIds:
  ///   Comma separated list of ratable ids to filter the resuts by
  ///
  /// * [String] categoryIds:
  ///   Comma separated list of category ids to filter the results by
  ///
  /// * [String] secondaryType:
  ///   
  ///
  /// * [String] keyword:
  ///   The keyword used to search
  ///
  /// * [String] sortField:
  ///   The column to sort the search on {ID, CREATED, UPDATED, ACTIVE, RATABLE_TYPE, RATABLE_ID, RATABLE_DISPLAY, CATEGORY_ID, CATEGORY_NAME, CATEGORY_SHORT_NAME, CATEGORY_DISPLAY, COUNT, SUMMATION, AVERAGE, VALUE}
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
  /// * [double] latitude:
  ///   
  ///
  /// * [double] longitude:
  ///   
  ///
  /// * [bool] returnRatable:
  ///   Determines whether to return the ratable object in the response
  ///
  /// * [bool] returnOverallRating:
  ///   Determines whether to return the overall rating record instead
  Future<Response> searchRatingIndexesWithHttpInfo(String ratableType, { String? ratableIds, String? categoryIds, String? secondaryType, String? keyword, String? sortField, bool? descending, int? start, int? limit, double? latitude, double? longitude, bool? returnRatable, bool? returnOverallRating, }) async {
    // ignore: prefer_const_declarations
    final path = r'/rating/index/search';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'ratableType', ratableType));
    if (ratableIds != null) {
      queryParams.addAll(_queryParams('', 'ratableIds', ratableIds));
    }
    if (categoryIds != null) {
      queryParams.addAll(_queryParams('', 'categoryIds', categoryIds));
    }
    if (secondaryType != null) {
      queryParams.addAll(_queryParams('', 'secondaryType', secondaryType));
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
    if (latitude != null) {
      queryParams.addAll(_queryParams('', 'latitude', latitude));
    }
    if (longitude != null) {
      queryParams.addAll(_queryParams('', 'longitude', longitude));
    }
    if (returnRatable != null) {
      queryParams.addAll(_queryParams('', 'returnRatable', returnRatable));
    }
    if (returnOverallRating != null) {
      queryParams.addAll(_queryParams('', 'returnOverallRating', returnOverallRating));
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

  /// Search Rating Indexes
  ///
  /// Search for ratable items by averages.
  ///
  /// Parameters:
  ///
  /// * [String] ratableType (required):
  ///   Filter results by a ratable type {RETAILER_LOCATION}
  ///
  /// * [String] ratableIds:
  ///   Comma separated list of ratable ids to filter the resuts by
  ///
  /// * [String] categoryIds:
  ///   Comma separated list of category ids to filter the results by
  ///
  /// * [String] secondaryType:
  ///   
  ///
  /// * [String] keyword:
  ///   The keyword used to search
  ///
  /// * [String] sortField:
  ///   The column to sort the search on {ID, CREATED, UPDATED, ACTIVE, RATABLE_TYPE, RATABLE_ID, RATABLE_DISPLAY, CATEGORY_ID, CATEGORY_NAME, CATEGORY_SHORT_NAME, CATEGORY_DISPLAY, COUNT, SUMMATION, AVERAGE, VALUE}
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
  /// * [double] latitude:
  ///   
  ///
  /// * [double] longitude:
  ///   
  ///
  /// * [bool] returnRatable:
  ///   Determines whether to return the ratable object in the response
  ///
  /// * [bool] returnOverallRating:
  ///   Determines whether to return the overall rating record instead
  Future<List<RatingIndexResponse>?> searchRatingIndexes(String ratableType, { String? ratableIds, String? categoryIds, String? secondaryType, String? keyword, String? sortField, bool? descending, int? start, int? limit, double? latitude, double? longitude, bool? returnRatable, bool? returnOverallRating, }) async {
    final response = await searchRatingIndexesWithHttpInfo(ratableType,  ratableIds: ratableIds, categoryIds: categoryIds, secondaryType: secondaryType, keyword: keyword, sortField: sortField, descending: descending, start: start, limit: limit, latitude: latitude, longitude: longitude, returnRatable: returnRatable, returnOverallRating: returnOverallRating, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<RatingIndexResponse>') as List)
        .cast<RatingIndexResponse>()
        .toList(growable: false);

    }
    return null;
  }

  /// Search Ratings
  ///
  /// Search for ratings on a ratable object.
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
  /// * [int] filterAccountId:
  ///   Filter results for a particular account
  ///
  /// * [String] ratableType:
  ///   The ratable object type {RETAILER_LOCATION}
  ///
  /// * [int] ratableId:
  ///   The id of the ratable object
  ///
  /// * [String] categoryIds:
  ///   Comma separated list of category ids to filter the results by
  ///
  /// * [String] keyword:
  ///   The keyword used to search
  ///
  /// * [String] sortField:
  ///   The column to sort the search on {ID, CREATED, UPDATED, ACTIVE, OWNER_DISPLAY, RATABLE_TYPE, RATABLE_ID, RATABLE_DISPLAY, CATEGORY_ID, CATEGORY_NAME, CATEGORY_SHORT_NAME, CATEGORY_DISPLAY, VALUE}
  ///
  /// * [bool] descending:
  ///   The order to return the search results
  ///
  /// * [int] start:
  ///   The record to begin the return set on
  ///
  /// * [int] limit:
  ///   The number of records to return
  Future<Response> searchRatingsWithHttpInfo({ String? deviceId, int? accountId, int? filterAccountId, String? ratableType, int? ratableId, String? categoryIds, String? keyword, String? sortField, bool? descending, int? start, int? limit, }) async {
    // ignore: prefer_const_declarations
    final path = r'/rating/search';

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
    if (filterAccountId != null) {
      queryParams.addAll(_queryParams('', 'filterAccountId', filterAccountId));
    }
    if (ratableType != null) {
      queryParams.addAll(_queryParams('', 'ratableType', ratableType));
    }
    if (ratableId != null) {
      queryParams.addAll(_queryParams('', 'ratableId', ratableId));
    }
    if (categoryIds != null) {
      queryParams.addAll(_queryParams('', 'categoryIds', categoryIds));
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

  /// Search Ratings
  ///
  /// Search for ratings on a ratable object.
  ///
  /// Parameters:
  ///
  /// * [String] deviceId:
  ///   The device id (deviceId or accountId required)
  ///
  /// * [int] accountId:
  ///   The account id of the user (deviceId or accountId required)
  ///
  /// * [int] filterAccountId:
  ///   Filter results for a particular account
  ///
  /// * [String] ratableType:
  ///   The ratable object type {RETAILER_LOCATION}
  ///
  /// * [int] ratableId:
  ///   The id of the ratable object
  ///
  /// * [String] categoryIds:
  ///   Comma separated list of category ids to filter the results by
  ///
  /// * [String] keyword:
  ///   The keyword used to search
  ///
  /// * [String] sortField:
  ///   The column to sort the search on {ID, CREATED, UPDATED, ACTIVE, OWNER_DISPLAY, RATABLE_TYPE, RATABLE_ID, RATABLE_DISPLAY, CATEGORY_ID, CATEGORY_NAME, CATEGORY_SHORT_NAME, CATEGORY_DISPLAY, VALUE}
  ///
  /// * [bool] descending:
  ///   The order to return the search results
  ///
  /// * [int] start:
  ///   The record to begin the return set on
  ///
  /// * [int] limit:
  ///   The number of records to return
  Future<List<RatingResponse>?> searchRatings({ String? deviceId, int? accountId, int? filterAccountId, String? ratableType, int? ratableId, String? categoryIds, String? keyword, String? sortField, bool? descending, int? start, int? limit, }) async {
    final response = await searchRatingsWithHttpInfo( deviceId: deviceId, accountId: accountId, filterAccountId: filterAccountId, ratableType: ratableType, ratableId: ratableId, categoryIds: categoryIds, keyword: keyword, sortField: sortField, descending: descending, start: start, limit: limit, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<RatingResponse>') as List)
        .cast<RatingResponse>()
        .toList(growable: false);

    }
    return null;
  }

  /// Update Rating
  ///
  /// Update an existing rating. Only the creator of the rating have permission to update.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] ratingId (required):
  ///   The id of the rating (Note: this is not the ratable object id)
  ///
  /// * [String] deviceId:
  ///   The unique device identifier that made the request (either deviceId or accountId must be used)
  ///
  /// * [int] accountId:
  ///   The unique accountId that made the request (either deviceId or accountId must be used)
  ///
  /// * [int] ratingValue:
  ///   The rating value to update
  ///
  /// * [int] categoryId:
  ///   
  ///
  /// * [String] display:
  ///   A subject title for the user rating (limited to 255 characters)
  ///
  /// * [String] description:
  ///   The description of the rating
  ///
  /// * [String] locationDescription:
  ///   The description of the location
  ///
  /// * [double] latitude:
  ///   The current location of the user
  ///
  /// * [double] longitude:
  ///   The current location of the user
  Future<Response> updateRatingWithHttpInfo(int ratingId, { String? deviceId, int? accountId, int? ratingValue, int? categoryId, String? display, String? description, String? locationDescription, double? latitude, double? longitude, }) async {
    // ignore: prefer_const_declarations
    final path = r'/rating/update';

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
      queryParams.addAll(_queryParams('', 'ratingId', ratingId));
    if (ratingValue != null) {
      queryParams.addAll(_queryParams('', 'ratingValue', ratingValue));
    }
    if (categoryId != null) {
      queryParams.addAll(_queryParams('', 'categoryId', categoryId));
    }
    if (display != null) {
      queryParams.addAll(_queryParams('', 'display', display));
    }
    if (description != null) {
      queryParams.addAll(_queryParams('', 'description', description));
    }
    if (locationDescription != null) {
      queryParams.addAll(_queryParams('', 'locationDescription', locationDescription));
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

  /// Update Rating
  ///
  /// Update an existing rating. Only the creator of the rating have permission to update.
  ///
  /// Parameters:
  ///
  /// * [int] ratingId (required):
  ///   The id of the rating (Note: this is not the ratable object id)
  ///
  /// * [String] deviceId:
  ///   The unique device identifier that made the request (either deviceId or accountId must be used)
  ///
  /// * [int] accountId:
  ///   The unique accountId that made the request (either deviceId or accountId must be used)
  ///
  /// * [int] ratingValue:
  ///   The rating value to update
  ///
  /// * [int] categoryId:
  ///   
  ///
  /// * [String] display:
  ///   A subject title for the user rating (limited to 255 characters)
  ///
  /// * [String] description:
  ///   The description of the rating
  ///
  /// * [String] locationDescription:
  ///   The description of the location
  ///
  /// * [double] latitude:
  ///   The current location of the user
  ///
  /// * [double] longitude:
  ///   The current location of the user
  Future<RatingResponse?> updateRating(int ratingId, { String? deviceId, int? accountId, int? ratingValue, int? categoryId, String? display, String? description, String? locationDescription, double? latitude, double? longitude, }) async {
    final response = await updateRatingWithHttpInfo(ratingId,  deviceId: deviceId, accountId: accountId, ratingValue: ratingValue, categoryId: categoryId, display: display, description: description, locationDescription: locationDescription, latitude: latitude, longitude: longitude, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'RatingResponse',) as RatingResponse;
    
    }
    return null;
  }
}
