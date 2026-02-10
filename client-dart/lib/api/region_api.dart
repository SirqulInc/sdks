//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class RegionApi {
  RegionApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Create Region
  ///
  /// Create a region.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] accountId (required):
  ///   The id of the account sending the request
  ///
  /// * [String] regionClass (required):
  ///   RegionClass of this region
  ///
  /// * [String] shortName (required):
  ///   Short name of the region. This is optimized for search
  ///
  /// * [String] fullName:
  ///   Full name of the region
  ///
  /// * [String] parentIds:
  ///   Comma separated region ids that are parents of this region
  ///
  /// * [String] childrenIds:
  ///   Comma separated region ids that are children of this region
  ///
  /// * [String] postalCodeIds:
  ///   Comma separated postal code ids the region will include
  ///
  /// * [String] locations:
  ///   Sets of name,lat,long used to create new postal codes assigned to the region
  ///
  /// * [int] retailerLocationId:
  ///   the id of the retailer location that the region is being created for
  ///
  /// * [String] visibility:
  ///   The Visibility of the region
  ///
  /// * [String] categoryIds:
  ///   the categories that the region is assigned to
  ///
  /// * [String] filterIds:
  ///   the filters that the region is assigned to
  ///
  /// * [int] start:
  ///   
  ///
  /// * [int] end:
  ///   
  ///
  /// * [String] polygon:
  ///   the polygon generated for the region
  ///
  /// * [String] metaData:
  ///   the meta data associated with the region
  ///
  /// * [double] latitude:
  ///   the latitude of the region
  ///
  /// * [double] longitude:
  ///   the longitude of the region
  ///
  /// * [int] versionCode:
  ///   the version code
  ///
  /// * [bool] root:
  ///   If this is a root region or not. If true means this region has no parent regions
  ///
  /// * [bool] active:
  ///   Active or inactive status of the region
  Future<Response> createRegionWithHttpInfo(num version, int accountId, String regionClass, String shortName, { String? fullName, String? parentIds, String? childrenIds, String? postalCodeIds, String? locations, int? retailerLocationId, String? visibility, String? categoryIds, String? filterIds, int? start, int? end, String? polygon, String? metaData, double? latitude, double? longitude, int? versionCode, bool? root, bool? active, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/region/create'
      .replaceAll('{version}', version.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'accountId', accountId));
      queryParams.addAll(_queryParams('', 'regionClass', regionClass));
      queryParams.addAll(_queryParams('', 'shortName', shortName));
    if (fullName != null) {
      queryParams.addAll(_queryParams('', 'fullName', fullName));
    }
    if (parentIds != null) {
      queryParams.addAll(_queryParams('', 'parentIds', parentIds));
    }
    if (childrenIds != null) {
      queryParams.addAll(_queryParams('', 'childrenIds', childrenIds));
    }
    if (postalCodeIds != null) {
      queryParams.addAll(_queryParams('', 'postalCodeIds', postalCodeIds));
    }
    if (locations != null) {
      queryParams.addAll(_queryParams('', 'locations', locations));
    }
    if (retailerLocationId != null) {
      queryParams.addAll(_queryParams('', 'retailerLocationId', retailerLocationId));
    }
    if (visibility != null) {
      queryParams.addAll(_queryParams('', 'visibility', visibility));
    }
    if (categoryIds != null) {
      queryParams.addAll(_queryParams('', 'categoryIds', categoryIds));
    }
    if (filterIds != null) {
      queryParams.addAll(_queryParams('', 'filterIds', filterIds));
    }
    if (start != null) {
      queryParams.addAll(_queryParams('', 'start', start));
    }
    if (end != null) {
      queryParams.addAll(_queryParams('', 'end', end));
    }
    if (polygon != null) {
      queryParams.addAll(_queryParams('', 'polygon', polygon));
    }
    if (metaData != null) {
      queryParams.addAll(_queryParams('', 'metaData', metaData));
    }
    if (latitude != null) {
      queryParams.addAll(_queryParams('', 'latitude', latitude));
    }
    if (longitude != null) {
      queryParams.addAll(_queryParams('', 'longitude', longitude));
    }
    if (versionCode != null) {
      queryParams.addAll(_queryParams('', 'versionCode', versionCode));
    }
    if (root != null) {
      queryParams.addAll(_queryParams('', 'root', root));
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

  /// Create Region
  ///
  /// Create a region.
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] accountId (required):
  ///   The id of the account sending the request
  ///
  /// * [String] regionClass (required):
  ///   RegionClass of this region
  ///
  /// * [String] shortName (required):
  ///   Short name of the region. This is optimized for search
  ///
  /// * [String] fullName:
  ///   Full name of the region
  ///
  /// * [String] parentIds:
  ///   Comma separated region ids that are parents of this region
  ///
  /// * [String] childrenIds:
  ///   Comma separated region ids that are children of this region
  ///
  /// * [String] postalCodeIds:
  ///   Comma separated postal code ids the region will include
  ///
  /// * [String] locations:
  ///   Sets of name,lat,long used to create new postal codes assigned to the region
  ///
  /// * [int] retailerLocationId:
  ///   the id of the retailer location that the region is being created for
  ///
  /// * [String] visibility:
  ///   The Visibility of the region
  ///
  /// * [String] categoryIds:
  ///   the categories that the region is assigned to
  ///
  /// * [String] filterIds:
  ///   the filters that the region is assigned to
  ///
  /// * [int] start:
  ///   
  ///
  /// * [int] end:
  ///   
  ///
  /// * [String] polygon:
  ///   the polygon generated for the region
  ///
  /// * [String] metaData:
  ///   the meta data associated with the region
  ///
  /// * [double] latitude:
  ///   the latitude of the region
  ///
  /// * [double] longitude:
  ///   the longitude of the region
  ///
  /// * [int] versionCode:
  ///   the version code
  ///
  /// * [bool] root:
  ///   If this is a root region or not. If true means this region has no parent regions
  ///
  /// * [bool] active:
  ///   Active or inactive status of the region
  Future<RegionResponse?> createRegion(num version, int accountId, String regionClass, String shortName, { String? fullName, String? parentIds, String? childrenIds, String? postalCodeIds, String? locations, int? retailerLocationId, String? visibility, String? categoryIds, String? filterIds, int? start, int? end, String? polygon, String? metaData, double? latitude, double? longitude, int? versionCode, bool? root, bool? active, }) async {
    final response = await createRegionWithHttpInfo(version, accountId, regionClass, shortName,  fullName: fullName, parentIds: parentIds, childrenIds: childrenIds, postalCodeIds: postalCodeIds, locations: locations, retailerLocationId: retailerLocationId, visibility: visibility, categoryIds: categoryIds, filterIds: filterIds, start: start, end: end, polygon: polygon, metaData: metaData, latitude: latitude, longitude: longitude, versionCode: versionCode, root: root, active: active, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'RegionResponse',) as RegionResponse;
    
    }
    return null;
  }

  /// Delete Region
  ///
  /// Delete a region.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] accountId (required):
  ///   the id of the account logged in
  ///
  /// * [int] regionId (required):
  ///   the id of the region
  Future<Response> deleteRegionWithHttpInfo(num version, int accountId, int regionId,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/region/delete'
      .replaceAll('{version}', version.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'accountId', accountId));
      queryParams.addAll(_queryParams('', 'regionId', regionId));

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

  /// Delete Region
  ///
  /// Delete a region.
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] accountId (required):
  ///   the id of the account logged in
  ///
  /// * [int] regionId (required):
  ///   the id of the region
  Future<RegionResponse?> deleteRegion(num version, int accountId, int regionId,) async {
    final response = await deleteRegionWithHttpInfo(version, accountId, regionId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'RegionResponse',) as RegionResponse;
    
    }
    return null;
  }

  /// Get Region
  ///
  /// Get a region.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] regionId (required):
  ///   the id of the region to get
  ///
  /// * [int] accountId:
  ///   the id of the logged in user
  Future<Response> getRegionWithHttpInfo(num version, int regionId, { int? accountId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/region/get'
      .replaceAll('{version}', version.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (accountId != null) {
      queryParams.addAll(_queryParams('', 'accountId', accountId));
    }
      queryParams.addAll(_queryParams('', 'regionId', regionId));

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

  /// Get Region
  ///
  /// Get a region.
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] regionId (required):
  ///   the id of the region to get
  ///
  /// * [int] accountId:
  ///   the id of the logged in user
  Future<RegionResponse?> getRegion(num version, int regionId, { int? accountId, }) async {
    final response = await getRegionWithHttpInfo(version, regionId,  accountId: accountId, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'RegionResponse',) as RegionResponse;
    
    }
    return null;
  }

  /// Search Regions
  ///
  /// Get the list of regions.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] accountId:
  ///   the owner account id of the region to be created
  ///
  /// * [String] query:
  ///   This parameter is deprecated. deprecated - use \"keyword\"
  ///
  /// * [String] keyword:
  ///   the keyword to filter results on
  ///
  /// * [double] latitude:
  ///   the latitude of the user
  ///
  /// * [double] longitude:
  ///   the longitude of the user
  ///
  /// * [double] range:
  ///   the search radius
  ///
  /// * [String] regionClass:
  ///   
  ///
  /// * [String] visibility:
  ///   
  ///
  /// * [String] searchMode:
  ///   the SearchIndexMode: RDS, LUCENE, or CLOUDINDEX. If not provided, will use the default defined in the Sirqul server
  ///
  /// * [String] sortField:
  ///   the field to order results by: ID, UPDATED, NAME, or DISTANCE. If not provided, will use the default which is by ID for text and DISTANCE when lat/long is provided.
  ///
  /// * [bool] descending:
  ///   determines if the results get ordered in descending order
  ///
  /// * [bool] includeParent:
  ///   include the parent region or not
  ///
  /// * [bool] includeChildren:
  ///   include the chidren regions or not
  ///
  /// * [bool] includePostalCodes:
  ///   include the postal codes associated with the region or not
  ///
  /// * [String] categoryIds:
  ///   search on the categories associated with the region
  ///
  /// * [String] filterIds:
  ///   search on the filters associated with the region
  ///
  /// * [int] versionCode:
  ///   filter by a specific version code
  ///
  /// * [bool] activeOnly:
  ///   filter to show only active results
  ///
  /// * [bool] showDeleted:
  ///   If showDeleted is true and activeOnly is false, will return regions that have been deleted
  ///
  /// * [int] lastUpdatedSince:
  ///   only returns records that have last updated since this date \\(UTC timestamp in milliseconds\\)
  ///
  /// * [int] start:
  ///   the start index for pagination
  ///
  /// * [int] limit:
  ///   the limit for pagination
  Future<Response> searchRegionsWithHttpInfo(num version, { int? accountId, String? query, String? keyword, double? latitude, double? longitude, double? range, String? regionClass, String? visibility, String? searchMode, String? sortField, bool? descending, bool? includeParent, bool? includeChildren, bool? includePostalCodes, String? categoryIds, String? filterIds, int? versionCode, bool? activeOnly, bool? showDeleted, int? lastUpdatedSince, int? start, int? limit, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/region/search'
      .replaceAll('{version}', version.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (accountId != null) {
      queryParams.addAll(_queryParams('', 'accountId', accountId));
    }
    if (query != null) {
      queryParams.addAll(_queryParams('', 'query', query));
    }
    if (keyword != null) {
      queryParams.addAll(_queryParams('', 'keyword', keyword));
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
    if (regionClass != null) {
      queryParams.addAll(_queryParams('', 'regionClass', regionClass));
    }
    if (visibility != null) {
      queryParams.addAll(_queryParams('', 'visibility', visibility));
    }
    if (searchMode != null) {
      queryParams.addAll(_queryParams('', 'searchMode', searchMode));
    }
    if (sortField != null) {
      queryParams.addAll(_queryParams('', 'sortField', sortField));
    }
    if (descending != null) {
      queryParams.addAll(_queryParams('', 'descending', descending));
    }
    if (includeParent != null) {
      queryParams.addAll(_queryParams('', 'includeParent', includeParent));
    }
    if (includeChildren != null) {
      queryParams.addAll(_queryParams('', 'includeChildren', includeChildren));
    }
    if (includePostalCodes != null) {
      queryParams.addAll(_queryParams('', 'includePostalCodes', includePostalCodes));
    }
    if (categoryIds != null) {
      queryParams.addAll(_queryParams('', 'categoryIds', categoryIds));
    }
    if (filterIds != null) {
      queryParams.addAll(_queryParams('', 'filterIds', filterIds));
    }
    if (versionCode != null) {
      queryParams.addAll(_queryParams('', 'versionCode', versionCode));
    }
    if (activeOnly != null) {
      queryParams.addAll(_queryParams('', 'activeOnly', activeOnly));
    }
    if (showDeleted != null) {
      queryParams.addAll(_queryParams('', 'showDeleted', showDeleted));
    }
    if (lastUpdatedSince != null) {
      queryParams.addAll(_queryParams('', 'lastUpdatedSince', lastUpdatedSince));
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

  /// Search Regions
  ///
  /// Get the list of regions.
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] accountId:
  ///   the owner account id of the region to be created
  ///
  /// * [String] query:
  ///   This parameter is deprecated. deprecated - use \"keyword\"
  ///
  /// * [String] keyword:
  ///   the keyword to filter results on
  ///
  /// * [double] latitude:
  ///   the latitude of the user
  ///
  /// * [double] longitude:
  ///   the longitude of the user
  ///
  /// * [double] range:
  ///   the search radius
  ///
  /// * [String] regionClass:
  ///   
  ///
  /// * [String] visibility:
  ///   
  ///
  /// * [String] searchMode:
  ///   the SearchIndexMode: RDS, LUCENE, or CLOUDINDEX. If not provided, will use the default defined in the Sirqul server
  ///
  /// * [String] sortField:
  ///   the field to order results by: ID, UPDATED, NAME, or DISTANCE. If not provided, will use the default which is by ID for text and DISTANCE when lat/long is provided.
  ///
  /// * [bool] descending:
  ///   determines if the results get ordered in descending order
  ///
  /// * [bool] includeParent:
  ///   include the parent region or not
  ///
  /// * [bool] includeChildren:
  ///   include the chidren regions or not
  ///
  /// * [bool] includePostalCodes:
  ///   include the postal codes associated with the region or not
  ///
  /// * [String] categoryIds:
  ///   search on the categories associated with the region
  ///
  /// * [String] filterIds:
  ///   search on the filters associated with the region
  ///
  /// * [int] versionCode:
  ///   filter by a specific version code
  ///
  /// * [bool] activeOnly:
  ///   filter to show only active results
  ///
  /// * [bool] showDeleted:
  ///   If showDeleted is true and activeOnly is false, will return regions that have been deleted
  ///
  /// * [int] lastUpdatedSince:
  ///   only returns records that have last updated since this date \\(UTC timestamp in milliseconds\\)
  ///
  /// * [int] start:
  ///   the start index for pagination
  ///
  /// * [int] limit:
  ///   the limit for pagination
  Future<List<RegionResponse>?> searchRegions(num version, { int? accountId, String? query, String? keyword, double? latitude, double? longitude, double? range, String? regionClass, String? visibility, String? searchMode, String? sortField, bool? descending, bool? includeParent, bool? includeChildren, bool? includePostalCodes, String? categoryIds, String? filterIds, int? versionCode, bool? activeOnly, bool? showDeleted, int? lastUpdatedSince, int? start, int? limit, }) async {
    final response = await searchRegionsWithHttpInfo(version,  accountId: accountId, query: query, keyword: keyword, latitude: latitude, longitude: longitude, range: range, regionClass: regionClass, visibility: visibility, searchMode: searchMode, sortField: sortField, descending: descending, includeParent: includeParent, includeChildren: includeChildren, includePostalCodes: includePostalCodes, categoryIds: categoryIds, filterIds: filterIds, versionCode: versionCode, activeOnly: activeOnly, showDeleted: showDeleted, lastUpdatedSince: lastUpdatedSince, start: start, limit: limit, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<RegionResponse>') as List)
        .cast<RegionResponse>()
        .toList(growable: false);

    }
    return null;
  }

  /// Update Region
  ///
  /// Update a region.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] accountId (required):
  ///   The id of the account sending the request
  ///
  /// * [int] regionId (required):
  ///   The id of the region to be updated
  ///
  /// * [String] regionClass:
  ///   RegionClass of this region
  ///
  /// * [String] shortName:
  ///   Short name of the region. This is optimized for search
  ///
  /// * [String] fullName:
  ///   Full name of the region
  ///
  /// * [String] parentIds:
  ///   Comma separated region ids that are parents of this region
  ///
  /// * [String] childrenIds:
  ///   Comma separated region ids that are children of this region
  ///
  /// * [String] postalCodeIds:
  ///   Comma separated postal code ids the region will include
  ///
  /// * [String] locations:
  ///   Sets of name,lat,long used to create new postal codes assigned to the region
  ///
  /// * [int] retailerLocationId:
  ///   the retailer location ID that the region is associated with
  ///
  /// * [String] visibility:
  ///   The Visibility of the region
  ///
  /// * [String] categoryIds:
  ///   the categories that the region is assigned to
  ///
  /// * [String] filterIds:
  ///   the filters that the region is assigned to
  ///
  /// * [int] start:
  ///   
  ///
  /// * [int] end:
  ///   
  ///
  /// * [String] polygon:
  ///   the polygon of the region
  ///
  /// * [String] metaData:
  ///   the meta data of the region
  ///
  /// * [double] latitude:
  ///   the latitude of the region
  ///
  /// * [double] longitude:
  ///   the longitude of the region
  ///
  /// * [int] versionCode:
  ///   the version code
  ///
  /// * [bool] root:
  ///   If this is a root region or not. If true means this region has no parent regions
  ///
  /// * [bool] active:
  ///   Active or inactive status of the region
  ///
  /// * [bool] clearLists:
  ///   If true clear the children and postal code lists before add new ones, otherwise just append.
  Future<Response> updateRegionWithHttpInfo(num version, int accountId, int regionId, { String? regionClass, String? shortName, String? fullName, String? parentIds, String? childrenIds, String? postalCodeIds, String? locations, int? retailerLocationId, String? visibility, String? categoryIds, String? filterIds, int? start, int? end, String? polygon, String? metaData, double? latitude, double? longitude, int? versionCode, bool? root, bool? active, bool? clearLists, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/region/update'
      .replaceAll('{version}', version.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'accountId', accountId));
      queryParams.addAll(_queryParams('', 'regionId', regionId));
    if (regionClass != null) {
      queryParams.addAll(_queryParams('', 'regionClass', regionClass));
    }
    if (shortName != null) {
      queryParams.addAll(_queryParams('', 'shortName', shortName));
    }
    if (fullName != null) {
      queryParams.addAll(_queryParams('', 'fullName', fullName));
    }
    if (parentIds != null) {
      queryParams.addAll(_queryParams('', 'parentIds', parentIds));
    }
    if (childrenIds != null) {
      queryParams.addAll(_queryParams('', 'childrenIds', childrenIds));
    }
    if (postalCodeIds != null) {
      queryParams.addAll(_queryParams('', 'postalCodeIds', postalCodeIds));
    }
    if (locations != null) {
      queryParams.addAll(_queryParams('', 'locations', locations));
    }
    if (retailerLocationId != null) {
      queryParams.addAll(_queryParams('', 'retailerLocationId', retailerLocationId));
    }
    if (visibility != null) {
      queryParams.addAll(_queryParams('', 'visibility', visibility));
    }
    if (categoryIds != null) {
      queryParams.addAll(_queryParams('', 'categoryIds', categoryIds));
    }
    if (filterIds != null) {
      queryParams.addAll(_queryParams('', 'filterIds', filterIds));
    }
    if (start != null) {
      queryParams.addAll(_queryParams('', 'start', start));
    }
    if (end != null) {
      queryParams.addAll(_queryParams('', 'end', end));
    }
    if (polygon != null) {
      queryParams.addAll(_queryParams('', 'polygon', polygon));
    }
    if (metaData != null) {
      queryParams.addAll(_queryParams('', 'metaData', metaData));
    }
    if (latitude != null) {
      queryParams.addAll(_queryParams('', 'latitude', latitude));
    }
    if (longitude != null) {
      queryParams.addAll(_queryParams('', 'longitude', longitude));
    }
    if (versionCode != null) {
      queryParams.addAll(_queryParams('', 'versionCode', versionCode));
    }
    if (root != null) {
      queryParams.addAll(_queryParams('', 'root', root));
    }
    if (active != null) {
      queryParams.addAll(_queryParams('', 'active', active));
    }
    if (clearLists != null) {
      queryParams.addAll(_queryParams('', 'clearLists', clearLists));
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

  /// Update Region
  ///
  /// Update a region.
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] accountId (required):
  ///   The id of the account sending the request
  ///
  /// * [int] regionId (required):
  ///   The id of the region to be updated
  ///
  /// * [String] regionClass:
  ///   RegionClass of this region
  ///
  /// * [String] shortName:
  ///   Short name of the region. This is optimized for search
  ///
  /// * [String] fullName:
  ///   Full name of the region
  ///
  /// * [String] parentIds:
  ///   Comma separated region ids that are parents of this region
  ///
  /// * [String] childrenIds:
  ///   Comma separated region ids that are children of this region
  ///
  /// * [String] postalCodeIds:
  ///   Comma separated postal code ids the region will include
  ///
  /// * [String] locations:
  ///   Sets of name,lat,long used to create new postal codes assigned to the region
  ///
  /// * [int] retailerLocationId:
  ///   the retailer location ID that the region is associated with
  ///
  /// * [String] visibility:
  ///   The Visibility of the region
  ///
  /// * [String] categoryIds:
  ///   the categories that the region is assigned to
  ///
  /// * [String] filterIds:
  ///   the filters that the region is assigned to
  ///
  /// * [int] start:
  ///   
  ///
  /// * [int] end:
  ///   
  ///
  /// * [String] polygon:
  ///   the polygon of the region
  ///
  /// * [String] metaData:
  ///   the meta data of the region
  ///
  /// * [double] latitude:
  ///   the latitude of the region
  ///
  /// * [double] longitude:
  ///   the longitude of the region
  ///
  /// * [int] versionCode:
  ///   the version code
  ///
  /// * [bool] root:
  ///   If this is a root region or not. If true means this region has no parent regions
  ///
  /// * [bool] active:
  ///   Active or inactive status of the region
  ///
  /// * [bool] clearLists:
  ///   If true clear the children and postal code lists before add new ones, otherwise just append.
  Future<RegionResponse?> updateRegion(num version, int accountId, int regionId, { String? regionClass, String? shortName, String? fullName, String? parentIds, String? childrenIds, String? postalCodeIds, String? locations, int? retailerLocationId, String? visibility, String? categoryIds, String? filterIds, int? start, int? end, String? polygon, String? metaData, double? latitude, double? longitude, int? versionCode, bool? root, bool? active, bool? clearLists, }) async {
    final response = await updateRegionWithHttpInfo(version, accountId, regionId,  regionClass: regionClass, shortName: shortName, fullName: fullName, parentIds: parentIds, childrenIds: childrenIds, postalCodeIds: postalCodeIds, locations: locations, retailerLocationId: retailerLocationId, visibility: visibility, categoryIds: categoryIds, filterIds: filterIds, start: start, end: end, polygon: polygon, metaData: metaData, latitude: latitude, longitude: longitude, versionCode: versionCode, root: root, active: active, clearLists: clearLists, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'RegionResponse',) as RegionResponse;
    
    }
    return null;
  }
}
