//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class CategoryApi {
  CategoryApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Search Categories by Distance
  ///
  /// Search for categories by distance.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] accountId:
  ///   The account id of the user
  ///
  /// * [String] keyword:
  ///   The keyword string to search on
  ///
  /// * [String] appKey:
  ///   the appKey of the application to retrieve categories for, if not specified then search on the global application.
  ///
  /// * [String] categoryIds:
  ///   Restrict the search by specific categories
  ///
  /// * [String] parentCategoryIds:
  ///   Restrict the search by specific parent categories so that only its sub children are searched.
  ///
  /// * [bool] rootOnly:
  ///   Restrict the search to only those categories with no parent category assigned.
  ///
  /// * [String] sortField:
  ///   The column to sort the search on. Possible values include: ID, CREATED, UPDATED, ACTIVE, NAME, DISPLAY
  ///
  /// * [String] responseGroup:
  ///   The group of categories to return: ALL, GLOBAL or MINE. ALL returns both global and application specific matches, GLOBAL only returns global matches, and MINE only returns the application specific matches. If not provided search on the application provided.
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
  ///
  /// * [bool] returnExternal:
  ///   Determines whether to return extra info about the category's \"Participant\" reference
  ///
  /// * [bool] exactMatch:
  ///   If true search categories using the exact keyword, if false then do a partial match (like) search.
  ///
  /// * [String] type:
  ///   Filters results by the Category's type
  ///
  /// * [String] externalType:
  ///   Filters results by externalType
  ///
  /// * [int] minOfferCount:
  ///   Filters results to only return Categories that have been referenced by a minimum number of Offers
  ///
  /// * [double] latitude:
  ///   the latitude of where the search is centered on
  ///
  /// * [double] longitude:
  ///   the longitude of where the search is centered on
  ///
  /// * [double] range:
  ///   the maximum range the category can be from the center
  Future<Response> categoryDistanceSearchWithHttpInfo({ int? accountId, String? keyword, String? appKey, String? categoryIds, String? parentCategoryIds, bool? rootOnly, String? sortField, String? responseGroup, bool? descending, int? start, int? limit, bool? activeOnly, bool? returnExternal, bool? exactMatch, String? type, String? externalType, int? minOfferCount, double? latitude, double? longitude, double? range, }) async {
    // ignore: prefer_const_declarations
    final path = r'/category/distancesearch';

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
    if (categoryIds != null) {
      queryParams.addAll(_queryParams('', 'categoryIds', categoryIds));
    }
    if (parentCategoryIds != null) {
      queryParams.addAll(_queryParams('', 'parentCategoryIds', parentCategoryIds));
    }
    if (rootOnly != null) {
      queryParams.addAll(_queryParams('', 'rootOnly', rootOnly));
    }
    if (sortField != null) {
      queryParams.addAll(_queryParams('', 'sortField', sortField));
    }
    if (responseGroup != null) {
      queryParams.addAll(_queryParams('', 'responseGroup', responseGroup));
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
    if (returnExternal != null) {
      queryParams.addAll(_queryParams('', 'returnExternal', returnExternal));
    }
    if (exactMatch != null) {
      queryParams.addAll(_queryParams('', 'exactMatch', exactMatch));
    }
    if (type != null) {
      queryParams.addAll(_queryParams('', 'type', type));
    }
    if (externalType != null) {
      queryParams.addAll(_queryParams('', 'externalType', externalType));
    }
    if (minOfferCount != null) {
      queryParams.addAll(_queryParams('', 'minOfferCount', minOfferCount));
    }
    if (latitude != null) {
      queryParams.addAll(_queryParams('', 'latitude', latitude));
    }
    if (longitude != null) {
      queryParams.addAll(_queryParams('', 'longitude', longitude));
    }
    if (range != null) {
      queryParams.addAll(_queryParams('', 'range', range));
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

  /// Search Categories by Distance
  ///
  /// Search for categories by distance.
  ///
  /// Parameters:
  ///
  /// * [int] accountId:
  ///   The account id of the user
  ///
  /// * [String] keyword:
  ///   The keyword string to search on
  ///
  /// * [String] appKey:
  ///   the appKey of the application to retrieve categories for, if not specified then search on the global application.
  ///
  /// * [String] categoryIds:
  ///   Restrict the search by specific categories
  ///
  /// * [String] parentCategoryIds:
  ///   Restrict the search by specific parent categories so that only its sub children are searched.
  ///
  /// * [bool] rootOnly:
  ///   Restrict the search to only those categories with no parent category assigned.
  ///
  /// * [String] sortField:
  ///   The column to sort the search on. Possible values include: ID, CREATED, UPDATED, ACTIVE, NAME, DISPLAY
  ///
  /// * [String] responseGroup:
  ///   The group of categories to return: ALL, GLOBAL or MINE. ALL returns both global and application specific matches, GLOBAL only returns global matches, and MINE only returns the application specific matches. If not provided search on the application provided.
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
  ///
  /// * [bool] returnExternal:
  ///   Determines whether to return extra info about the category's \"Participant\" reference
  ///
  /// * [bool] exactMatch:
  ///   If true search categories using the exact keyword, if false then do a partial match (like) search.
  ///
  /// * [String] type:
  ///   Filters results by the Category's type
  ///
  /// * [String] externalType:
  ///   Filters results by externalType
  ///
  /// * [int] minOfferCount:
  ///   Filters results to only return Categories that have been referenced by a minimum number of Offers
  ///
  /// * [double] latitude:
  ///   the latitude of where the search is centered on
  ///
  /// * [double] longitude:
  ///   the longitude of where the search is centered on
  ///
  /// * [double] range:
  ///   the maximum range the category can be from the center
  Future<List<CategoryResponse>?> categoryDistanceSearch({ int? accountId, String? keyword, String? appKey, String? categoryIds, String? parentCategoryIds, bool? rootOnly, String? sortField, String? responseGroup, bool? descending, int? start, int? limit, bool? activeOnly, bool? returnExternal, bool? exactMatch, String? type, String? externalType, int? minOfferCount, double? latitude, double? longitude, double? range, }) async {
    final response = await categoryDistanceSearchWithHttpInfo( accountId: accountId, keyword: keyword, appKey: appKey, categoryIds: categoryIds, parentCategoryIds: parentCategoryIds, rootOnly: rootOnly, sortField: sortField, responseGroup: responseGroup, descending: descending, start: start, limit: limit, activeOnly: activeOnly, returnExternal: returnExternal, exactMatch: exactMatch, type: type, externalType: externalType, minOfferCount: minOfferCount, latitude: latitude, longitude: longitude, range: range, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<CategoryResponse>') as List)
        .cast<CategoryResponse>()
        .toList(growable: false);

    }
    return null;
  }

  /// Create Category
  ///
  /// Create a new category.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] accountId (required):
  ///   The account id of the user (must have permissions to the target application)
  ///
  /// * [String] name (required):
  ///   The name of the category
  ///
  /// * [String] appKey:
  ///   The appKey of the application to assign the category to, if not provided then the category will be applied to the global application (if the account has permissions)
  ///
  /// * [int] parentCategoryId:
  ///   The ID of the parent category, if not provided then the parent category will be null
  ///
  /// * [String] description:
  ///   The description of the category
  ///
  /// * [String] type:
  ///   The type of the category
  ///
  /// * [int] assetId:
  ///   The ID of the image asset previously uploaded using the media service
  ///
  /// * [String] externalId:
  ///   A string identifier used by client applications to store external information
  ///
  /// * [String] externalType:
  ///   A string type used by client applications to store external information
  ///
  /// * [String] externalCategorySlug:
  ///   external category slug
  ///
  /// * [String] sqootSlug:
  ///   sqoot slug
  ///
  /// * [bool] active:
  ///   Sets whether the category is active or inactive (hidden from consumers)
  ///
  /// * [String] metaData:
  ///   external custom client defined data
  ///
  /// * [String] searchTags:
  ///   user defined strings for searching
  Future<Response> createCategoryWithHttpInfo(int accountId, String name, { String? appKey, int? parentCategoryId, String? description, String? type, int? assetId, String? externalId, String? externalType, String? externalCategorySlug, String? sqootSlug, bool? active, String? metaData, String? searchTags, }) async {
    // ignore: prefer_const_declarations
    final path = r'/category/create';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (appKey != null) {
      queryParams.addAll(_queryParams('', 'appKey', appKey));
    }
      queryParams.addAll(_queryParams('', 'accountId', accountId));
    if (parentCategoryId != null) {
      queryParams.addAll(_queryParams('', 'parentCategoryId', parentCategoryId));
    }
      queryParams.addAll(_queryParams('', 'name', name));
    if (description != null) {
      queryParams.addAll(_queryParams('', 'description', description));
    }
    if (type != null) {
      queryParams.addAll(_queryParams('', 'type', type));
    }
    if (assetId != null) {
      queryParams.addAll(_queryParams('', 'assetId', assetId));
    }
    if (externalId != null) {
      queryParams.addAll(_queryParams('', 'externalId', externalId));
    }
    if (externalType != null) {
      queryParams.addAll(_queryParams('', 'externalType', externalType));
    }
    if (externalCategorySlug != null) {
      queryParams.addAll(_queryParams('', 'externalCategorySlug', externalCategorySlug));
    }
    if (sqootSlug != null) {
      queryParams.addAll(_queryParams('', 'sqootSlug', sqootSlug));
    }
    if (active != null) {
      queryParams.addAll(_queryParams('', 'active', active));
    }
    if (metaData != null) {
      queryParams.addAll(_queryParams('', 'metaData', metaData));
    }
    if (searchTags != null) {
      queryParams.addAll(_queryParams('', 'searchTags', searchTags));
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

  /// Create Category
  ///
  /// Create a new category.
  ///
  /// Parameters:
  ///
  /// * [int] accountId (required):
  ///   The account id of the user (must have permissions to the target application)
  ///
  /// * [String] name (required):
  ///   The name of the category
  ///
  /// * [String] appKey:
  ///   The appKey of the application to assign the category to, if not provided then the category will be applied to the global application (if the account has permissions)
  ///
  /// * [int] parentCategoryId:
  ///   The ID of the parent category, if not provided then the parent category will be null
  ///
  /// * [String] description:
  ///   The description of the category
  ///
  /// * [String] type:
  ///   The type of the category
  ///
  /// * [int] assetId:
  ///   The ID of the image asset previously uploaded using the media service
  ///
  /// * [String] externalId:
  ///   A string identifier used by client applications to store external information
  ///
  /// * [String] externalType:
  ///   A string type used by client applications to store external information
  ///
  /// * [String] externalCategorySlug:
  ///   external category slug
  ///
  /// * [String] sqootSlug:
  ///   sqoot slug
  ///
  /// * [bool] active:
  ///   Sets whether the category is active or inactive (hidden from consumers)
  ///
  /// * [String] metaData:
  ///   external custom client defined data
  ///
  /// * [String] searchTags:
  ///   user defined strings for searching
  Future<CategoryTreeResponse?> createCategory(int accountId, String name, { String? appKey, int? parentCategoryId, String? description, String? type, int? assetId, String? externalId, String? externalType, String? externalCategorySlug, String? sqootSlug, bool? active, String? metaData, String? searchTags, }) async {
    final response = await createCategoryWithHttpInfo(accountId, name,  appKey: appKey, parentCategoryId: parentCategoryId, description: description, type: type, assetId: assetId, externalId: externalId, externalType: externalType, externalCategorySlug: externalCategorySlug, sqootSlug: sqootSlug, active: active, metaData: metaData, searchTags: searchTags, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CategoryTreeResponse',) as CategoryTreeResponse;
    
    }
    return null;
  }

  /// Delete Category
  ///
  /// Delete a category.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] accountId (required):
  ///   the ID of the account
  ///
  /// * [int] categoryId (required):
  ///   the ID of the category
  Future<Response> deleteCategoryWithHttpInfo(int accountId, int categoryId,) async {
    // ignore: prefer_const_declarations
    final path = r'/category/delete';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'accountId', accountId));
      queryParams.addAll(_queryParams('', 'categoryId', categoryId));

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

  /// Delete Category
  ///
  /// Delete a category.
  ///
  /// Parameters:
  ///
  /// * [int] accountId (required):
  ///   the ID of the account
  ///
  /// * [int] categoryId (required):
  ///   the ID of the category
  Future<SirqulResponse?> deleteCategory(int accountId, int categoryId,) async {
    final response = await deleteCategoryWithHttpInfo(accountId, categoryId,);
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

  /// Duplicate Category
  ///
  /// Duplicate a category, including all its children.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] accountId (required):
  ///   The account id of the user (must have permissions to the target application)
  ///
  /// * [int] categoryId (required):
  ///   The category ID to duplicate (includes all children)
  ///
  /// * [String] appKey:
  ///   The application to assign the new category to, may be different then the application the source category is assigned to
  ///
  /// * [int] parentCategoryId:
  ///   The parent category ID to add the target category to.
  Future<Response> duplicateCategoryWithHttpInfo(int accountId, int categoryId, { String? appKey, int? parentCategoryId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/category/duplicate';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (appKey != null) {
      queryParams.addAll(_queryParams('', 'appKey', appKey));
    }
      queryParams.addAll(_queryParams('', 'accountId', accountId));
      queryParams.addAll(_queryParams('', 'categoryId', categoryId));
    if (parentCategoryId != null) {
      queryParams.addAll(_queryParams('', 'parentCategoryId', parentCategoryId));
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

  /// Duplicate Category
  ///
  /// Duplicate a category, including all its children.
  ///
  /// Parameters:
  ///
  /// * [int] accountId (required):
  ///   The account id of the user (must have permissions to the target application)
  ///
  /// * [int] categoryId (required):
  ///   The category ID to duplicate (includes all children)
  ///
  /// * [String] appKey:
  ///   The application to assign the new category to, may be different then the application the source category is assigned to
  ///
  /// * [int] parentCategoryId:
  ///   The parent category ID to add the target category to.
  Future<CategoryTreeResponse?> duplicateCategory(int accountId, int categoryId, { String? appKey, int? parentCategoryId, }) async {
    final response = await duplicateCategoryWithHttpInfo(accountId, categoryId,  appKey: appKey, parentCategoryId: parentCategoryId, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CategoryTreeResponse',) as CategoryTreeResponse;
    
    }
    return null;
  }

  /// Get Category
  ///
  /// Get the details of a specific category. Recursively include all child categories and their children.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] categoryId (required):
  ///   the ID of the category
  ///
  /// * [bool] returnExternal:
  ///   Determines whether to return extra info about the category's \"Participant\" reference
  Future<Response> getCategoryWithHttpInfo(int categoryId, { bool? returnExternal, }) async {
    // ignore: prefer_const_declarations
    final path = r'/category/get';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'categoryId', categoryId));
    if (returnExternal != null) {
      queryParams.addAll(_queryParams('', 'returnExternal', returnExternal));
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

  /// Get Category
  ///
  /// Get the details of a specific category. Recursively include all child categories and their children.
  ///
  /// Parameters:
  ///
  /// * [int] categoryId (required):
  ///   the ID of the category
  ///
  /// * [bool] returnExternal:
  ///   Determines whether to return extra info about the category's \"Participant\" reference
  Future<CategoryTreeResponse?> getCategory(int categoryId, { bool? returnExternal, }) async {
    final response = await getCategoryWithHttpInfo(categoryId,  returnExternal: returnExternal, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CategoryTreeResponse',) as CategoryTreeResponse;
    
    }
    return null;
  }

  /// Search Categories
  ///
  /// Search for categories.
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
  ///   the appKey of the application to retrieve categories for, if not specified then search on the global application.
  ///
  /// * [String] categoryId:
  ///   @Deprecated, use parentCategoryIds instead
  ///
  /// * [String] categoryIds:
  ///   Restrict the search by specific categories
  ///
  /// * [String] parentCategoryIds:
  ///   Restrict the search by specific parent categories so that only its sub children are searched.
  ///
  /// * [bool] rootOnly:
  ///   Restrict the search to only those categories with no parent category assigned.
  ///
  /// * [String] sortField:
  ///   The column to sort the search on. Possible values include: ID, CREATED, UPDATED, ACTIVE, NAME, DISPLAY
  ///
  /// * [String] responseGroup:
  ///   The group of categories to return: ALL, GLOBAL or MINE. ALL returns both global and application specific matches, GLOBAL only returns global matches, and MINE only returns the application specific matches. If not provided search on the application provided.
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
  ///
  /// * [bool] returnExternal:
  ///   Determines whether to return extra info about the category's \"Participant\" reference
  ///
  /// * [bool] exactMatch:
  ///   If true search categories using the exact keyword, if false then do a partial match (like) search. Default is false.
  ///
  /// * [String] type:
  ///   Filters results by the Category's type
  ///
  /// * [String] externalType:
  ///   Filters results by externalType
  ///
  /// * [bool] excludeExternalType:
  ///   Determines whether the \"externalType\" param is excluded from the search results
  ///
  /// * [int] minOfferCount:
  ///   Filters results to only return Categories that have been referenced by a minimum number of Offers
  ///
  /// * [int] searchDepth:
  ///   When searching by a specific parent category (to return sub children), this determines the number of child layers to search in. The minimum is 1, the maximum is 4.
  ///
  /// * [String] searchMode:
  ///   The search index mode to use (e.g. OPENSEARCH or RDS)
  Future<Response> searchCategoriesWithHttpInfo({ int? accountId, String? keyword, String? appKey, String? categoryId, String? categoryIds, String? parentCategoryIds, bool? rootOnly, String? sortField, String? responseGroup, bool? descending, int? start, int? limit, bool? activeOnly, bool? returnExternal, bool? exactMatch, String? type, String? externalType, bool? excludeExternalType, int? minOfferCount, int? searchDepth, String? searchMode, }) async {
    // ignore: prefer_const_declarations
    final path = r'/category/search';

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
    if (categoryId != null) {
      queryParams.addAll(_queryParams('', 'categoryId', categoryId));
    }
    if (categoryIds != null) {
      queryParams.addAll(_queryParams('', 'categoryIds', categoryIds));
    }
    if (parentCategoryIds != null) {
      queryParams.addAll(_queryParams('', 'parentCategoryIds', parentCategoryIds));
    }
    if (rootOnly != null) {
      queryParams.addAll(_queryParams('', 'rootOnly', rootOnly));
    }
    if (sortField != null) {
      queryParams.addAll(_queryParams('', 'sortField', sortField));
    }
    if (responseGroup != null) {
      queryParams.addAll(_queryParams('', 'responseGroup', responseGroup));
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
    if (returnExternal != null) {
      queryParams.addAll(_queryParams('', 'returnExternal', returnExternal));
    }
    if (exactMatch != null) {
      queryParams.addAll(_queryParams('', 'exactMatch', exactMatch));
    }
    if (type != null) {
      queryParams.addAll(_queryParams('', 'type', type));
    }
    if (externalType != null) {
      queryParams.addAll(_queryParams('', 'externalType', externalType));
    }
    if (excludeExternalType != null) {
      queryParams.addAll(_queryParams('', 'excludeExternalType', excludeExternalType));
    }
    if (minOfferCount != null) {
      queryParams.addAll(_queryParams('', 'minOfferCount', minOfferCount));
    }
    if (searchDepth != null) {
      queryParams.addAll(_queryParams('', 'searchDepth', searchDepth));
    }
    if (searchMode != null) {
      queryParams.addAll(_queryParams('', 'searchMode', searchMode));
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

  /// Search Categories
  ///
  /// Search for categories.
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
  ///   the appKey of the application to retrieve categories for, if not specified then search on the global application.
  ///
  /// * [String] categoryId:
  ///   @Deprecated, use parentCategoryIds instead
  ///
  /// * [String] categoryIds:
  ///   Restrict the search by specific categories
  ///
  /// * [String] parentCategoryIds:
  ///   Restrict the search by specific parent categories so that only its sub children are searched.
  ///
  /// * [bool] rootOnly:
  ///   Restrict the search to only those categories with no parent category assigned.
  ///
  /// * [String] sortField:
  ///   The column to sort the search on. Possible values include: ID, CREATED, UPDATED, ACTIVE, NAME, DISPLAY
  ///
  /// * [String] responseGroup:
  ///   The group of categories to return: ALL, GLOBAL or MINE. ALL returns both global and application specific matches, GLOBAL only returns global matches, and MINE only returns the application specific matches. If not provided search on the application provided.
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
  ///
  /// * [bool] returnExternal:
  ///   Determines whether to return extra info about the category's \"Participant\" reference
  ///
  /// * [bool] exactMatch:
  ///   If true search categories using the exact keyword, if false then do a partial match (like) search. Default is false.
  ///
  /// * [String] type:
  ///   Filters results by the Category's type
  ///
  /// * [String] externalType:
  ///   Filters results by externalType
  ///
  /// * [bool] excludeExternalType:
  ///   Determines whether the \"externalType\" param is excluded from the search results
  ///
  /// * [int] minOfferCount:
  ///   Filters results to only return Categories that have been referenced by a minimum number of Offers
  ///
  /// * [int] searchDepth:
  ///   When searching by a specific parent category (to return sub children), this determines the number of child layers to search in. The minimum is 1, the maximum is 4.
  ///
  /// * [String] searchMode:
  ///   The search index mode to use (e.g. OPENSEARCH or RDS)
  Future<List<CategoryResponse>?> searchCategories({ int? accountId, String? keyword, String? appKey, String? categoryId, String? categoryIds, String? parentCategoryIds, bool? rootOnly, String? sortField, String? responseGroup, bool? descending, int? start, int? limit, bool? activeOnly, bool? returnExternal, bool? exactMatch, String? type, String? externalType, bool? excludeExternalType, int? minOfferCount, int? searchDepth, String? searchMode, }) async {
    final response = await searchCategoriesWithHttpInfo( accountId: accountId, keyword: keyword, appKey: appKey, categoryId: categoryId, categoryIds: categoryIds, parentCategoryIds: parentCategoryIds, rootOnly: rootOnly, sortField: sortField, responseGroup: responseGroup, descending: descending, start: start, limit: limit, activeOnly: activeOnly, returnExternal: returnExternal, exactMatch: exactMatch, type: type, externalType: externalType, excludeExternalType: excludeExternalType, minOfferCount: minOfferCount, searchDepth: searchDepth, searchMode: searchMode, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<CategoryResponse>') as List)
        .cast<CategoryResponse>()
        .toList(growable: false);

    }
    return null;
  }

  /// Update Category
  ///
  /// Update a category.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] accountId (required):
  ///   The account id of the user
  ///
  /// * [int] categoryId (required):
  ///   The ID of the category to edit
  ///
  /// * [int] parentCategoryId:
  ///   The ID of the parent category, if not provided then the parent category will be null
  ///
  /// * [String] name:
  ///   The name of the category
  ///
  /// * [String] description:
  ///   The description of the category
  ///
  /// * [String] type:
  ///   The type of the category
  ///
  /// * [int] assetId:
  ///   The ID of the image asset previously uploaded using the media service
  ///
  /// * [String] externalId:
  ///   A string identifier used by client applications to store external information
  ///
  /// * [String] externalType:
  ///   A string type used by client applications to store external information
  ///
  /// * [String] externalCategorySlug:
  ///   external category slug
  ///
  /// * [String] sqootSlug:
  ///   sqoot slug
  ///
  /// * [bool] active:
  ///   Sets whether the category is active or inactive (hidden from consumers)
  ///
  /// * [String] metaData:
  ///   external custom client defined data
  ///
  /// * [String] searchTags:
  ///   user defined strings for searching
  Future<Response> updateCategoryWithHttpInfo(int accountId, int categoryId, { int? parentCategoryId, String? name, String? description, String? type, int? assetId, String? externalId, String? externalType, String? externalCategorySlug, String? sqootSlug, bool? active, String? metaData, String? searchTags, }) async {
    // ignore: prefer_const_declarations
    final path = r'/category/update';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'accountId', accountId));
      queryParams.addAll(_queryParams('', 'categoryId', categoryId));
    if (parentCategoryId != null) {
      queryParams.addAll(_queryParams('', 'parentCategoryId', parentCategoryId));
    }
    if (name != null) {
      queryParams.addAll(_queryParams('', 'name', name));
    }
    if (description != null) {
      queryParams.addAll(_queryParams('', 'description', description));
    }
    if (type != null) {
      queryParams.addAll(_queryParams('', 'type', type));
    }
    if (assetId != null) {
      queryParams.addAll(_queryParams('', 'assetId', assetId));
    }
    if (externalId != null) {
      queryParams.addAll(_queryParams('', 'externalId', externalId));
    }
    if (externalType != null) {
      queryParams.addAll(_queryParams('', 'externalType', externalType));
    }
    if (externalCategorySlug != null) {
      queryParams.addAll(_queryParams('', 'externalCategorySlug', externalCategorySlug));
    }
    if (sqootSlug != null) {
      queryParams.addAll(_queryParams('', 'sqootSlug', sqootSlug));
    }
    if (active != null) {
      queryParams.addAll(_queryParams('', 'active', active));
    }
    if (metaData != null) {
      queryParams.addAll(_queryParams('', 'metaData', metaData));
    }
    if (searchTags != null) {
      queryParams.addAll(_queryParams('', 'searchTags', searchTags));
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

  /// Update Category
  ///
  /// Update a category.
  ///
  /// Parameters:
  ///
  /// * [int] accountId (required):
  ///   The account id of the user
  ///
  /// * [int] categoryId (required):
  ///   The ID of the category to edit
  ///
  /// * [int] parentCategoryId:
  ///   The ID of the parent category, if not provided then the parent category will be null
  ///
  /// * [String] name:
  ///   The name of the category
  ///
  /// * [String] description:
  ///   The description of the category
  ///
  /// * [String] type:
  ///   The type of the category
  ///
  /// * [int] assetId:
  ///   The ID of the image asset previously uploaded using the media service
  ///
  /// * [String] externalId:
  ///   A string identifier used by client applications to store external information
  ///
  /// * [String] externalType:
  ///   A string type used by client applications to store external information
  ///
  /// * [String] externalCategorySlug:
  ///   external category slug
  ///
  /// * [String] sqootSlug:
  ///   sqoot slug
  ///
  /// * [bool] active:
  ///   Sets whether the category is active or inactive (hidden from consumers)
  ///
  /// * [String] metaData:
  ///   external custom client defined data
  ///
  /// * [String] searchTags:
  ///   user defined strings for searching
  Future<CategoryTreeResponse?> updateCategory(int accountId, int categoryId, { int? parentCategoryId, String? name, String? description, String? type, int? assetId, String? externalId, String? externalType, String? externalCategorySlug, String? sqootSlug, bool? active, String? metaData, String? searchTags, }) async {
    final response = await updateCategoryWithHttpInfo(accountId, categoryId,  parentCategoryId: parentCategoryId, name: name, description: description, type: type, assetId: assetId, externalId: externalId, externalType: externalType, externalCategorySlug: externalCategorySlug, sqootSlug: sqootSlug, active: active, metaData: metaData, searchTags: searchTags, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CategoryTreeResponse',) as CategoryTreeResponse;
    
    }
    return null;
  }
}
