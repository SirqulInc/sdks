//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class RetailerApi {
  RetailerApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Create Retailer
  ///
  /// Create a retailer record. A billable entity must be created first before a retailer record can be made.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [String] name (required):
  ///   The name of the retailer
  ///
  /// * [String] deviceId:
  ///   The device id (deviceId or accountId required)
  ///
  /// * [int] accountId:
  ///   The account id of the user (deviceId or accountId required)
  ///
  /// * [String] streetAddress:
  ///   The street address of the retailer
  ///
  /// * [String] streetAddress2:
  ///   Additional address information (such as a suite number, floor number, building name, or PO Box)
  ///
  /// * [String] city:
  ///   The city of the retailer
  ///
  /// * [String] state:
  ///   The state of the retailer
  ///
  /// * [String] postalCode:
  ///   The postal code of the retailer
  ///
  /// * [String] country:
  ///   the country of the retailer
  ///
  /// * [String] businessPhone:
  ///   The business phone number of the retailer
  ///
  /// * [String] businessPhoneExt:
  ///   The business phone extension of the retailer
  ///
  /// * [String] website:
  ///   The website of the retailer
  ///
  /// * [String] email:
  ///   The email of the retailer
  ///
  /// * [String] facebookUrl:
  ///   The facebook URL of the retailer
  ///
  /// * [String] twitterUrl:
  ///   The twitter URL of the retailer
  ///
  /// * [MultipartFile] logo:
  ///   The retailer logo sent as a multipart binary file (you can optionally use logoAssetId if the asset has already been uploaded before)
  ///
  /// * [int] logoAssetId:
  ///   The retailer logo asset id
  ///
  /// * [MultipartFile] picture1:
  ///   Optional store-front pictures or product pictures or etc. A multipart binary file (you can optionally use picture1AssetId if the asset has already been uploaded before)
  ///
  /// * [int] picture1AssetId:
  ///   An asset id
  ///
  /// * [MultipartFile] picture2:
  ///   Optional store-front pictures or product pictures or etc. A multipart binary file (you can optionally use picture2AssetId if the asset has already been uploaded before)
  ///
  /// * [int] picture2AssetId:
  ///   An asset id
  ///
  /// * [String] categoryIds:
  ///   Comma separated list of category IDs used to filter retailers by categories
  ///
  /// * [String] categoryIdsToAdd:
  ///   Comma separated list of category IDs to add to the retailer
  ///
  /// * [String] categoryIdsToRemove:
  ///   Comma separated list of category IDs to remove from the retailer
  ///
  /// * [String] filterIds:
  ///   Comma separated list of filter IDs used to filter retailers
  ///
  /// * [double] latitude:
  ///   the latitude of the retailer
  ///
  /// * [double] longitude:
  ///   the longitude of the retailer
  ///
  /// * [String] metaData:
  ///   External custom client defined data
  ///
  /// * [String] searchTags:
  ///   External custom search keywords
  ///
  /// * [String] retailerType:
  ///   External custom type identifier
  ///
  /// * [String] visibility:
  ///   
  ///
  /// * [bool] createDefaultLocation:
  ///   Determines whether to create a default location using the retailer information
  ///
  /// * [String] responseFormat:
  ///   The format of the returned response {JSON // default , HTML // for Dojo support when uploading assets}
  Future<Response> createRetailerWithHttpInfo(num version, String name, { String? deviceId, int? accountId, String? streetAddress, String? streetAddress2, String? city, String? state, String? postalCode, String? country, String? businessPhone, String? businessPhoneExt, String? website, String? email, String? facebookUrl, String? twitterUrl, MultipartFile? logo, int? logoAssetId, MultipartFile? picture1, int? picture1AssetId, MultipartFile? picture2, int? picture2AssetId, String? categoryIds, String? categoryIdsToAdd, String? categoryIdsToRemove, String? filterIds, double? latitude, double? longitude, String? metaData, String? searchTags, String? retailerType, String? visibility, bool? createDefaultLocation, String? responseFormat, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/retailer/create'
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
      queryParams.addAll(_queryParams('', 'name', name));
    if (streetAddress != null) {
      queryParams.addAll(_queryParams('', 'streetAddress', streetAddress));
    }
    if (streetAddress2 != null) {
      queryParams.addAll(_queryParams('', 'streetAddress2', streetAddress2));
    }
    if (city != null) {
      queryParams.addAll(_queryParams('', 'city', city));
    }
    if (state != null) {
      queryParams.addAll(_queryParams('', 'state', state));
    }
    if (postalCode != null) {
      queryParams.addAll(_queryParams('', 'postalCode', postalCode));
    }
    if (country != null) {
      queryParams.addAll(_queryParams('', 'country', country));
    }
    if (businessPhone != null) {
      queryParams.addAll(_queryParams('', 'businessPhone', businessPhone));
    }
    if (businessPhoneExt != null) {
      queryParams.addAll(_queryParams('', 'businessPhoneExt', businessPhoneExt));
    }
    if (website != null) {
      queryParams.addAll(_queryParams('', 'website', website));
    }
    if (email != null) {
      queryParams.addAll(_queryParams('', 'email', email));
    }
    if (facebookUrl != null) {
      queryParams.addAll(_queryParams('', 'facebookUrl', facebookUrl));
    }
    if (twitterUrl != null) {
      queryParams.addAll(_queryParams('', 'twitterUrl', twitterUrl));
    }
    if (logo != null) {
      queryParams.addAll(_queryParams('', 'logo', logo));
    }
    if (logoAssetId != null) {
      queryParams.addAll(_queryParams('', 'logoAssetId', logoAssetId));
    }
    if (picture1 != null) {
      queryParams.addAll(_queryParams('', 'picture1', picture1));
    }
    if (picture1AssetId != null) {
      queryParams.addAll(_queryParams('', 'picture1AssetId', picture1AssetId));
    }
    if (picture2 != null) {
      queryParams.addAll(_queryParams('', 'picture2', picture2));
    }
    if (picture2AssetId != null) {
      queryParams.addAll(_queryParams('', 'picture2AssetId', picture2AssetId));
    }
    if (categoryIds != null) {
      queryParams.addAll(_queryParams('', 'categoryIds', categoryIds));
    }
    if (categoryIdsToAdd != null) {
      queryParams.addAll(_queryParams('', 'categoryIdsToAdd', categoryIdsToAdd));
    }
    if (categoryIdsToRemove != null) {
      queryParams.addAll(_queryParams('', 'categoryIdsToRemove', categoryIdsToRemove));
    }
    if (filterIds != null) {
      queryParams.addAll(_queryParams('', 'filterIds', filterIds));
    }
    if (latitude != null) {
      queryParams.addAll(_queryParams('', 'latitude', latitude));
    }
    if (longitude != null) {
      queryParams.addAll(_queryParams('', 'longitude', longitude));
    }
    if (metaData != null) {
      queryParams.addAll(_queryParams('', 'metaData', metaData));
    }
    if (searchTags != null) {
      queryParams.addAll(_queryParams('', 'searchTags', searchTags));
    }
    if (retailerType != null) {
      queryParams.addAll(_queryParams('', 'retailerType', retailerType));
    }
    if (visibility != null) {
      queryParams.addAll(_queryParams('', 'visibility', visibility));
    }
    if (createDefaultLocation != null) {
      queryParams.addAll(_queryParams('', 'createDefaultLocation', createDefaultLocation));
    }
    if (responseFormat != null) {
      queryParams.addAll(_queryParams('', 'responseFormat', responseFormat));
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

  /// Create Retailer
  ///
  /// Create a retailer record. A billable entity must be created first before a retailer record can be made.
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [String] name (required):
  ///   The name of the retailer
  ///
  /// * [String] deviceId:
  ///   The device id (deviceId or accountId required)
  ///
  /// * [int] accountId:
  ///   The account id of the user (deviceId or accountId required)
  ///
  /// * [String] streetAddress:
  ///   The street address of the retailer
  ///
  /// * [String] streetAddress2:
  ///   Additional address information (such as a suite number, floor number, building name, or PO Box)
  ///
  /// * [String] city:
  ///   The city of the retailer
  ///
  /// * [String] state:
  ///   The state of the retailer
  ///
  /// * [String] postalCode:
  ///   The postal code of the retailer
  ///
  /// * [String] country:
  ///   the country of the retailer
  ///
  /// * [String] businessPhone:
  ///   The business phone number of the retailer
  ///
  /// * [String] businessPhoneExt:
  ///   The business phone extension of the retailer
  ///
  /// * [String] website:
  ///   The website of the retailer
  ///
  /// * [String] email:
  ///   The email of the retailer
  ///
  /// * [String] facebookUrl:
  ///   The facebook URL of the retailer
  ///
  /// * [String] twitterUrl:
  ///   The twitter URL of the retailer
  ///
  /// * [MultipartFile] logo:
  ///   The retailer logo sent as a multipart binary file (you can optionally use logoAssetId if the asset has already been uploaded before)
  ///
  /// * [int] logoAssetId:
  ///   The retailer logo asset id
  ///
  /// * [MultipartFile] picture1:
  ///   Optional store-front pictures or product pictures or etc. A multipart binary file (you can optionally use picture1AssetId if the asset has already been uploaded before)
  ///
  /// * [int] picture1AssetId:
  ///   An asset id
  ///
  /// * [MultipartFile] picture2:
  ///   Optional store-front pictures or product pictures or etc. A multipart binary file (you can optionally use picture2AssetId if the asset has already been uploaded before)
  ///
  /// * [int] picture2AssetId:
  ///   An asset id
  ///
  /// * [String] categoryIds:
  ///   Comma separated list of category IDs used to filter retailers by categories
  ///
  /// * [String] categoryIdsToAdd:
  ///   Comma separated list of category IDs to add to the retailer
  ///
  /// * [String] categoryIdsToRemove:
  ///   Comma separated list of category IDs to remove from the retailer
  ///
  /// * [String] filterIds:
  ///   Comma separated list of filter IDs used to filter retailers
  ///
  /// * [double] latitude:
  ///   the latitude of the retailer
  ///
  /// * [double] longitude:
  ///   the longitude of the retailer
  ///
  /// * [String] metaData:
  ///   External custom client defined data
  ///
  /// * [String] searchTags:
  ///   External custom search keywords
  ///
  /// * [String] retailerType:
  ///   External custom type identifier
  ///
  /// * [String] visibility:
  ///   
  ///
  /// * [bool] createDefaultLocation:
  ///   Determines whether to create a default location using the retailer information
  ///
  /// * [String] responseFormat:
  ///   The format of the returned response {JSON // default , HTML // for Dojo support when uploading assets}
  Future<RetailerFullResponse?> createRetailer(num version, String name, { String? deviceId, int? accountId, String? streetAddress, String? streetAddress2, String? city, String? state, String? postalCode, String? country, String? businessPhone, String? businessPhoneExt, String? website, String? email, String? facebookUrl, String? twitterUrl, MultipartFile? logo, int? logoAssetId, MultipartFile? picture1, int? picture1AssetId, MultipartFile? picture2, int? picture2AssetId, String? categoryIds, String? categoryIdsToAdd, String? categoryIdsToRemove, String? filterIds, double? latitude, double? longitude, String? metaData, String? searchTags, String? retailerType, String? visibility, bool? createDefaultLocation, String? responseFormat, }) async {
    final response = await createRetailerWithHttpInfo(version, name,  deviceId: deviceId, accountId: accountId, streetAddress: streetAddress, streetAddress2: streetAddress2, city: city, state: state, postalCode: postalCode, country: country, businessPhone: businessPhone, businessPhoneExt: businessPhoneExt, website: website, email: email, facebookUrl: facebookUrl, twitterUrl: twitterUrl, logo: logo, logoAssetId: logoAssetId, picture1: picture1, picture1AssetId: picture1AssetId, picture2: picture2, picture2AssetId: picture2AssetId, categoryIds: categoryIds, categoryIdsToAdd: categoryIdsToAdd, categoryIdsToRemove: categoryIdsToRemove, filterIds: filterIds, latitude: latitude, longitude: longitude, metaData: metaData, searchTags: searchTags, retailerType: retailerType, visibility: visibility, createDefaultLocation: createDefaultLocation, responseFormat: responseFormat, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'RetailerFullResponse',) as RetailerFullResponse;
    
    }
    return null;
  }

  /// Delete Retailer
  ///
  /// Set the deleted timestamp to current time.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [String] deviceId:
  ///   The device id (deviceId or accountId required)
  ///
  /// * [int] accountId:
  ///   The account used to perform the delete, must have rights to edit the retailer.
  ///
  /// * [int] retailerId:
  ///   The ID of the retailer to be deleted
  Future<Response> deleteRetailerWithHttpInfo(num version, { String? deviceId, int? accountId, int? retailerId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/retailer/delete'
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
    if (retailerId != null) {
      queryParams.addAll(_queryParams('', 'retailerId', retailerId));
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

  /// Delete Retailer
  ///
  /// Set the deleted timestamp to current time.
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [String] deviceId:
  ///   The device id (deviceId or accountId required)
  ///
  /// * [int] accountId:
  ///   The account used to perform the delete, must have rights to edit the retailer.
  ///
  /// * [int] retailerId:
  ///   The ID of the retailer to be deleted
  Future<SirqulResponse?> deleteRetailer(num version, { String? deviceId, int? accountId, int? retailerId, }) async {
    final response = await deleteRetailerWithHttpInfo(version,  deviceId: deviceId, accountId: accountId, retailerId: retailerId, );
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

  /// Get Retailer
  ///
  /// Gets a retailer. Only the owner and the employees of a retailer have access to view its information.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] retailerId (required):
  ///   the ID of the retailer
  ///
  /// * [String] deviceId:
  ///   the device id (deviceId or accountId required)
  ///
  /// * [int] accountId:
  ///   the account id of the user (deviceId or accountId required)
  ///
  /// * [bool] includeCounts:
  ///   Determines whether to include counts in the response (default true)
  Future<Response> getRetailerWithHttpInfo(num version, int retailerId, { String? deviceId, int? accountId, bool? includeCounts, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/retailer/get'
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
      queryParams.addAll(_queryParams('', 'retailerId', retailerId));
    if (includeCounts != null) {
      queryParams.addAll(_queryParams('', 'includeCounts', includeCounts));
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

  /// Get Retailer
  ///
  /// Gets a retailer. Only the owner and the employees of a retailer have access to view its information.
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] retailerId (required):
  ///   the ID of the retailer
  ///
  /// * [String] deviceId:
  ///   the device id (deviceId or accountId required)
  ///
  /// * [int] accountId:
  ///   the account id of the user (deviceId or accountId required)
  ///
  /// * [bool] includeCounts:
  ///   Determines whether to include counts in the response (default true)
  Future<RetailerFullResponse?> getRetailer(num version, int retailerId, { String? deviceId, int? accountId, bool? includeCounts, }) async {
    final response = await getRetailerWithHttpInfo(version, retailerId,  deviceId: deviceId, accountId: accountId, includeCounts: includeCounts, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'RetailerFullResponse',) as RetailerFullResponse;
    
    }
    return null;
  }

  /// Search Retailers
  ///
  /// earches on retailers that the account has access to.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [String] visibility (required):
  ///   
  ///
  /// * [String] sortField (required):
  ///   The column to sort the search on
  ///
  /// * [bool] descending (required):
  ///   The order to return the search results
  ///
  /// * [int] start (required):
  ///   The record to begin the return set on
  ///
  /// * [int] limit (required):
  ///   The number of records to return
  ///
  /// * [bool] activeOnly (required):
  ///   Return only active results
  ///
  /// * [String] deviceId:
  ///   The device id (deviceId or accountId required)
  ///
  /// * [int] accountId:
  ///   The account id of the user (deviceId or accountId required)
  ///
  /// * [String] q:
  ///   This parameter is deprecated.
  ///
  /// * [String] keyword:
  ///   The keyword used to search
  ///
  /// * [String] categoryIds:
  ///   the categories that the retailer is associated with
  ///
  /// * [String] filterIds:
  ///   the filters that the retailer is associated with
  ///
  /// * [int] i:
  ///   This parameter is deprecated.
  ///
  /// * [int] l:
  ///   This parameter is deprecated.
  Future<Response> getRetailersWithHttpInfo(num version, String visibility, String sortField, bool descending, int start, int limit, bool activeOnly, { String? deviceId, int? accountId, String? q, String? keyword, String? categoryIds, String? filterIds, int? i, int? l, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/retailer/search'
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
    if (q != null) {
      queryParams.addAll(_queryParams('', 'q', q));
    }
    if (keyword != null) {
      queryParams.addAll(_queryParams('', 'keyword', keyword));
    }
    if (categoryIds != null) {
      queryParams.addAll(_queryParams('', 'categoryIds', categoryIds));
    }
    if (filterIds != null) {
      queryParams.addAll(_queryParams('', 'filterIds', filterIds));
    }
      queryParams.addAll(_queryParams('', 'visibility', visibility));
      queryParams.addAll(_queryParams('', 'sortField', sortField));
      queryParams.addAll(_queryParams('', 'descending', descending));
    if (i != null) {
      queryParams.addAll(_queryParams('', '_i', i));
    }
      queryParams.addAll(_queryParams('', 'start', start));
    if (l != null) {
      queryParams.addAll(_queryParams('', '_l', l));
    }
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

  /// Search Retailers
  ///
  /// earches on retailers that the account has access to.
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [String] visibility (required):
  ///   
  ///
  /// * [String] sortField (required):
  ///   The column to sort the search on
  ///
  /// * [bool] descending (required):
  ///   The order to return the search results
  ///
  /// * [int] start (required):
  ///   The record to begin the return set on
  ///
  /// * [int] limit (required):
  ///   The number of records to return
  ///
  /// * [bool] activeOnly (required):
  ///   Return only active results
  ///
  /// * [String] deviceId:
  ///   The device id (deviceId or accountId required)
  ///
  /// * [int] accountId:
  ///   The account id of the user (deviceId or accountId required)
  ///
  /// * [String] q:
  ///   This parameter is deprecated.
  ///
  /// * [String] keyword:
  ///   The keyword used to search
  ///
  /// * [String] categoryIds:
  ///   the categories that the retailer is associated with
  ///
  /// * [String] filterIds:
  ///   the filters that the retailer is associated with
  ///
  /// * [int] i:
  ///   This parameter is deprecated.
  ///
  /// * [int] l:
  ///   This parameter is deprecated.
  Future<List<RetailerResponse>?> getRetailers(num version, String visibility, String sortField, bool descending, int start, int limit, bool activeOnly, { String? deviceId, int? accountId, String? q, String? keyword, String? categoryIds, String? filterIds, int? i, int? l, }) async {
    final response = await getRetailersWithHttpInfo(version, visibility, sortField, descending, start, limit, activeOnly,  deviceId: deviceId, accountId: accountId, q: q, keyword: keyword, categoryIds: categoryIds, filterIds: filterIds, i: i, l: l, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<RetailerResponse>') as List)
        .cast<RetailerResponse>()
        .toList(growable: false);

    }
    return null;
  }

  /// Login Retailer
  ///
  /// Retailer login check.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [String] username (required):
  ///   the user's email address they used to sign-up
  ///
  /// * [String] password (required):
  ///   the password
  ///
  /// * [String] deviceId:
  ///   the device id (optional)
  ///
  /// * [double] latitude:
  ///   the current latitude of the user
  ///
  /// * [double] longitude:
  ///   the current longitude of the user
  ///
  /// * [String] appKey:
  ///   the application key
  Future<Response> retailerLoginCheckWithHttpInfo(num version, String username, String password, { String? deviceId, double? latitude, double? longitude, String? appKey, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/retailer/login'
      .replaceAll('{version}', version.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'username', username));
      queryParams.addAll(_queryParams('', 'password', password));
    if (deviceId != null) {
      queryParams.addAll(_queryParams('', 'deviceId', deviceId));
    }
    if (latitude != null) {
      queryParams.addAll(_queryParams('', 'latitude', latitude));
    }
    if (longitude != null) {
      queryParams.addAll(_queryParams('', 'longitude', longitude));
    }
    if (appKey != null) {
      queryParams.addAll(_queryParams('', 'appKey', appKey));
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

  /// Login Retailer
  ///
  /// Retailer login check.
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [String] username (required):
  ///   the user's email address they used to sign-up
  ///
  /// * [String] password (required):
  ///   the password
  ///
  /// * [String] deviceId:
  ///   the device id (optional)
  ///
  /// * [double] latitude:
  ///   the current latitude of the user
  ///
  /// * [double] longitude:
  ///   the current longitude of the user
  ///
  /// * [String] appKey:
  ///   the application key
  Future<AccountLoginResponse?> retailerLoginCheck(num version, String username, String password, { String? deviceId, double? latitude, double? longitude, String? appKey, }) async {
    final response = await retailerLoginCheckWithHttpInfo(version, username, password,  deviceId: deviceId, latitude: latitude, longitude: longitude, appKey: appKey, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'AccountLoginResponse',) as AccountLoginResponse;
    
    }
    return null;
  }

  /// Update Retailer
  ///
  /// Update a retailer record. Only the owner and the employees of the retailer have access to update its information.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] retailerId (required):
  ///   The ID of the retailer to update
  ///
  /// * [String] deviceId:
  ///   The device id (deviceId or accountId required)
  ///
  /// * [int] accountId:
  ///   The account id of the user (deviceId or accountId required)
  ///
  /// * [String] name:
  ///   The name of the retailer
  ///
  /// * [String] streetAddress:
  ///   The street address of the retailer
  ///
  /// * [String] streetAddress2:
  ///   Additional address information (such as a suite number, floor number, building name, or PO Box)
  ///
  /// * [String] city:
  ///   The city of the retailer
  ///
  /// * [String] state:
  ///   The state of the retailer
  ///
  /// * [String] postalCode:
  ///   The postal code of the retailer
  ///
  /// * [String] country:
  ///   the country of the retailer
  ///
  /// * [String] businessPhone:
  ///   The business phone of the retailer
  ///
  /// * [String] businessPhoneExt:
  ///   The business phone extension of the retailer
  ///
  /// * [String] website:
  ///   The website of the retailer
  ///
  /// * [String] email:
  ///   The email of the retailer
  ///
  /// * [String] facebookUrl:
  ///   The facebook URL of the retailer
  ///
  /// * [String] twitterUrl:
  ///   The twitter URL of the retailer
  ///
  /// * [MultipartFile] logo:
  ///   The retailer logo sent as a multipart binary file (you can optionally use logoAssetId if the asset has already been uploaded before)
  ///
  /// * [int] logoAssetId:
  ///   The retailer logo asset id
  ///
  /// * [MultipartFile] picture1:
  ///   Optional store-front pictures or product pictures or etc. A multipart binary file (you can optionally use picture1AssetId if the asset has already been uploaded before)
  ///
  /// * [int] picture1AssetId:
  ///   An asset id
  ///
  /// * [MultipartFile] picture2:
  ///   Optional store-front pictures or product pictures or etc. A multipart binary file (you can optionally use picture2AssetId if the asset has already been uploaded before)
  ///
  /// * [int] picture2AssetId:
  ///   An asset id
  ///
  /// * [String] categoryIds:
  ///   Comma separated list of category IDs used to filter retailers by categories
  ///
  /// * [String] filterIds:
  ///   Comma separated list of filter IDs used to filter retailers
  ///
  /// * [double] latitude:
  ///   the latitude of the retailer
  ///
  /// * [double] longitude:
  ///   the longitude of the retailer
  ///
  /// * [String] metaData:
  ///   External custom client defined data
  ///
  /// * [String] searchTags:
  ///   External custom search keywords
  ///
  /// * [String] retailerType:
  ///   External custom type identifier
  ///
  /// * [String] visibility:
  ///   
  ///
  /// * [bool] active:
  ///   Sets whether the retailer is active or inactive (hidden from consumers)
  ///
  /// * [String] responseFormat:
  ///   The format of the returned response {JSON // default , HTML // for Dojo support when uploading assets}
  Future<Response> updateRetailerWithHttpInfo(num version, int retailerId, { String? deviceId, int? accountId, String? name, String? streetAddress, String? streetAddress2, String? city, String? state, String? postalCode, String? country, String? businessPhone, String? businessPhoneExt, String? website, String? email, String? facebookUrl, String? twitterUrl, MultipartFile? logo, int? logoAssetId, MultipartFile? picture1, int? picture1AssetId, MultipartFile? picture2, int? picture2AssetId, String? categoryIds, String? filterIds, double? latitude, double? longitude, String? metaData, String? searchTags, String? retailerType, String? visibility, bool? active, String? responseFormat, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/retailer/update'
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
      queryParams.addAll(_queryParams('', 'retailerId', retailerId));
    if (name != null) {
      queryParams.addAll(_queryParams('', 'name', name));
    }
    if (streetAddress != null) {
      queryParams.addAll(_queryParams('', 'streetAddress', streetAddress));
    }
    if (streetAddress2 != null) {
      queryParams.addAll(_queryParams('', 'streetAddress2', streetAddress2));
    }
    if (city != null) {
      queryParams.addAll(_queryParams('', 'city', city));
    }
    if (state != null) {
      queryParams.addAll(_queryParams('', 'state', state));
    }
    if (postalCode != null) {
      queryParams.addAll(_queryParams('', 'postalCode', postalCode));
    }
    if (country != null) {
      queryParams.addAll(_queryParams('', 'country', country));
    }
    if (businessPhone != null) {
      queryParams.addAll(_queryParams('', 'businessPhone', businessPhone));
    }
    if (businessPhoneExt != null) {
      queryParams.addAll(_queryParams('', 'businessPhoneExt', businessPhoneExt));
    }
    if (website != null) {
      queryParams.addAll(_queryParams('', 'website', website));
    }
    if (email != null) {
      queryParams.addAll(_queryParams('', 'email', email));
    }
    if (facebookUrl != null) {
      queryParams.addAll(_queryParams('', 'facebookUrl', facebookUrl));
    }
    if (twitterUrl != null) {
      queryParams.addAll(_queryParams('', 'twitterUrl', twitterUrl));
    }
    if (logo != null) {
      queryParams.addAll(_queryParams('', 'logo', logo));
    }
    if (logoAssetId != null) {
      queryParams.addAll(_queryParams('', 'logoAssetId', logoAssetId));
    }
    if (picture1 != null) {
      queryParams.addAll(_queryParams('', 'picture1', picture1));
    }
    if (picture1AssetId != null) {
      queryParams.addAll(_queryParams('', 'picture1AssetId', picture1AssetId));
    }
    if (picture2 != null) {
      queryParams.addAll(_queryParams('', 'picture2', picture2));
    }
    if (picture2AssetId != null) {
      queryParams.addAll(_queryParams('', 'picture2AssetId', picture2AssetId));
    }
    if (categoryIds != null) {
      queryParams.addAll(_queryParams('', 'categoryIds', categoryIds));
    }
    if (filterIds != null) {
      queryParams.addAll(_queryParams('', 'filterIds', filterIds));
    }
    if (latitude != null) {
      queryParams.addAll(_queryParams('', 'latitude', latitude));
    }
    if (longitude != null) {
      queryParams.addAll(_queryParams('', 'longitude', longitude));
    }
    if (metaData != null) {
      queryParams.addAll(_queryParams('', 'metaData', metaData));
    }
    if (searchTags != null) {
      queryParams.addAll(_queryParams('', 'searchTags', searchTags));
    }
    if (retailerType != null) {
      queryParams.addAll(_queryParams('', 'retailerType', retailerType));
    }
    if (visibility != null) {
      queryParams.addAll(_queryParams('', 'visibility', visibility));
    }
    if (active != null) {
      queryParams.addAll(_queryParams('', 'active', active));
    }
    if (responseFormat != null) {
      queryParams.addAll(_queryParams('', 'responseFormat', responseFormat));
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

  /// Update Retailer
  ///
  /// Update a retailer record. Only the owner and the employees of the retailer have access to update its information.
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] retailerId (required):
  ///   The ID of the retailer to update
  ///
  /// * [String] deviceId:
  ///   The device id (deviceId or accountId required)
  ///
  /// * [int] accountId:
  ///   The account id of the user (deviceId or accountId required)
  ///
  /// * [String] name:
  ///   The name of the retailer
  ///
  /// * [String] streetAddress:
  ///   The street address of the retailer
  ///
  /// * [String] streetAddress2:
  ///   Additional address information (such as a suite number, floor number, building name, or PO Box)
  ///
  /// * [String] city:
  ///   The city of the retailer
  ///
  /// * [String] state:
  ///   The state of the retailer
  ///
  /// * [String] postalCode:
  ///   The postal code of the retailer
  ///
  /// * [String] country:
  ///   the country of the retailer
  ///
  /// * [String] businessPhone:
  ///   The business phone of the retailer
  ///
  /// * [String] businessPhoneExt:
  ///   The business phone extension of the retailer
  ///
  /// * [String] website:
  ///   The website of the retailer
  ///
  /// * [String] email:
  ///   The email of the retailer
  ///
  /// * [String] facebookUrl:
  ///   The facebook URL of the retailer
  ///
  /// * [String] twitterUrl:
  ///   The twitter URL of the retailer
  ///
  /// * [MultipartFile] logo:
  ///   The retailer logo sent as a multipart binary file (you can optionally use logoAssetId if the asset has already been uploaded before)
  ///
  /// * [int] logoAssetId:
  ///   The retailer logo asset id
  ///
  /// * [MultipartFile] picture1:
  ///   Optional store-front pictures or product pictures or etc. A multipart binary file (you can optionally use picture1AssetId if the asset has already been uploaded before)
  ///
  /// * [int] picture1AssetId:
  ///   An asset id
  ///
  /// * [MultipartFile] picture2:
  ///   Optional store-front pictures or product pictures or etc. A multipart binary file (you can optionally use picture2AssetId if the asset has already been uploaded before)
  ///
  /// * [int] picture2AssetId:
  ///   An asset id
  ///
  /// * [String] categoryIds:
  ///   Comma separated list of category IDs used to filter retailers by categories
  ///
  /// * [String] filterIds:
  ///   Comma separated list of filter IDs used to filter retailers
  ///
  /// * [double] latitude:
  ///   the latitude of the retailer
  ///
  /// * [double] longitude:
  ///   the longitude of the retailer
  ///
  /// * [String] metaData:
  ///   External custom client defined data
  ///
  /// * [String] searchTags:
  ///   External custom search keywords
  ///
  /// * [String] retailerType:
  ///   External custom type identifier
  ///
  /// * [String] visibility:
  ///   
  ///
  /// * [bool] active:
  ///   Sets whether the retailer is active or inactive (hidden from consumers)
  ///
  /// * [String] responseFormat:
  ///   The format of the returned response {JSON // default , HTML // for Dojo support when uploading assets}
  Future<RetailerFullResponse?> updateRetailer(num version, int retailerId, { String? deviceId, int? accountId, String? name, String? streetAddress, String? streetAddress2, String? city, String? state, String? postalCode, String? country, String? businessPhone, String? businessPhoneExt, String? website, String? email, String? facebookUrl, String? twitterUrl, MultipartFile? logo, int? logoAssetId, MultipartFile? picture1, int? picture1AssetId, MultipartFile? picture2, int? picture2AssetId, String? categoryIds, String? filterIds, double? latitude, double? longitude, String? metaData, String? searchTags, String? retailerType, String? visibility, bool? active, String? responseFormat, }) async {
    final response = await updateRetailerWithHttpInfo(version, retailerId,  deviceId: deviceId, accountId: accountId, name: name, streetAddress: streetAddress, streetAddress2: streetAddress2, city: city, state: state, postalCode: postalCode, country: country, businessPhone: businessPhone, businessPhoneExt: businessPhoneExt, website: website, email: email, facebookUrl: facebookUrl, twitterUrl: twitterUrl, logo: logo, logoAssetId: logoAssetId, picture1: picture1, picture1AssetId: picture1AssetId, picture2: picture2, picture2AssetId: picture2AssetId, categoryIds: categoryIds, filterIds: filterIds, latitude: latitude, longitude: longitude, metaData: metaData, searchTags: searchTags, retailerType: retailerType, visibility: visibility, active: active, responseFormat: responseFormat, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'RetailerFullResponse',) as RetailerFullResponse;
    
    }
    return null;
  }
}
