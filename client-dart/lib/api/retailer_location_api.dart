//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class RetailerLocationApi {
  RetailerLocationApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Create Retailer Location (Consumer)
  ///
  /// Creates a location record for an application that can support crowd sourced locations.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] appKey (required):
  ///   the application key
  ///
  /// * [String] name (required):
  ///   The name of the retailer location
  ///
  /// * [String] deviceId:
  ///   The device id (deviceId or accountId required)
  ///
  /// * [int] accountId:
  ///   The account id of the user (deviceId or accountId required)
  ///
  /// * [String] streetAddress:
  ///   The street address of the retailer location
  ///
  /// * [String] streetAddress2:
  ///   Additional address information (such as a suite number, floor number, building name, or PO Box)
  ///
  /// * [String] city:
  ///   The city of the retailer location
  ///
  /// * [String] state:
  ///   The state of the retailer location
  ///
  /// * [String] postalCode:
  ///   The postal code of the retailer location
  ///
  /// * [String] country:
  ///   the country of the retailer location
  ///
  /// * [String] businessPhone:
  ///   The business phone
  ///
  /// * [String] businessPhoneExt:
  ///   The business phone extension
  ///
  /// * [String] website:
  ///   The website of the retailer location
  ///
  /// * [String] email:
  ///   The email of the retailer location
  ///
  /// * [String] detailsHeader:
  ///   A brief description about the retailer location (255 character limit)
  ///
  /// * [String] detailsBody:
  ///   A detailed description about the retailer location
  ///
  /// * [String] hours:
  ///   The hours of operation
  ///
  /// * [String] tags:
  ///   Custom string field for doing full-text searches
  ///
  /// * [int] logoAssetId:
  ///   The retailer location logo asset id
  ///
  /// * [int] picture1AssetId:
  ///   An asset id
  ///
  /// * [int] picture2AssetId:
  ///   An asset id
  ///
  /// * [String] categoryIds:
  ///   Comma separated list of category IDs used to filter retailer locations by categories
  ///
  /// * [String] filterIds:
  ///   Comma separated list of filter IDs used to filter retailer locations
  ///
  /// * [String] metaData:
  ///   External custom client defined data
  ///
  /// * [bool] publicLocation:
  ///   Whether the location is public
  ///
  /// * [bool] active:
  ///   whether the retailer location created should be active or not
  ///
  /// * [String] locationType:
  ///   External custom type identifier
  ///
  /// * [double] latitude:
  ///   The latitude to center the search on
  ///
  /// * [double] longitude:
  ///   The longitude to center the search on
  Future<Response> createRetailerLocationConsumerWithHttpInfo(String appKey, String name, { String? deviceId, int? accountId, String? streetAddress, String? streetAddress2, String? city, String? state, String? postalCode, String? country, String? businessPhone, String? businessPhoneExt, String? website, String? email, String? detailsHeader, String? detailsBody, String? hours, String? tags, int? logoAssetId, int? picture1AssetId, int? picture2AssetId, String? categoryIds, String? filterIds, String? metaData, bool? publicLocation, bool? active, String? locationType, double? latitude, double? longitude, }) async {
    // ignore: prefer_const_declarations
    final path = r'/location/create';

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
      queryParams.addAll(_queryParams('', 'appKey', appKey));
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
    if (detailsHeader != null) {
      queryParams.addAll(_queryParams('', 'detailsHeader', detailsHeader));
    }
    if (detailsBody != null) {
      queryParams.addAll(_queryParams('', 'detailsBody', detailsBody));
    }
    if (hours != null) {
      queryParams.addAll(_queryParams('', 'hours', hours));
    }
    if (tags != null) {
      queryParams.addAll(_queryParams('', 'tags', tags));
    }
    if (logoAssetId != null) {
      queryParams.addAll(_queryParams('', 'logoAssetId', logoAssetId));
    }
    if (picture1AssetId != null) {
      queryParams.addAll(_queryParams('', 'picture1AssetId', picture1AssetId));
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
    if (metaData != null) {
      queryParams.addAll(_queryParams('', 'metaData', metaData));
    }
    if (publicLocation != null) {
      queryParams.addAll(_queryParams('', 'publicLocation', publicLocation));
    }
    if (active != null) {
      queryParams.addAll(_queryParams('', 'active', active));
    }
    if (locationType != null) {
      queryParams.addAll(_queryParams('', 'locationType', locationType));
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

  /// Create Retailer Location (Consumer)
  ///
  /// Creates a location record for an application that can support crowd sourced locations.
  ///
  /// Parameters:
  ///
  /// * [String] appKey (required):
  ///   the application key
  ///
  /// * [String] name (required):
  ///   The name of the retailer location
  ///
  /// * [String] deviceId:
  ///   The device id (deviceId or accountId required)
  ///
  /// * [int] accountId:
  ///   The account id of the user (deviceId or accountId required)
  ///
  /// * [String] streetAddress:
  ///   The street address of the retailer location
  ///
  /// * [String] streetAddress2:
  ///   Additional address information (such as a suite number, floor number, building name, or PO Box)
  ///
  /// * [String] city:
  ///   The city of the retailer location
  ///
  /// * [String] state:
  ///   The state of the retailer location
  ///
  /// * [String] postalCode:
  ///   The postal code of the retailer location
  ///
  /// * [String] country:
  ///   the country of the retailer location
  ///
  /// * [String] businessPhone:
  ///   The business phone
  ///
  /// * [String] businessPhoneExt:
  ///   The business phone extension
  ///
  /// * [String] website:
  ///   The website of the retailer location
  ///
  /// * [String] email:
  ///   The email of the retailer location
  ///
  /// * [String] detailsHeader:
  ///   A brief description about the retailer location (255 character limit)
  ///
  /// * [String] detailsBody:
  ///   A detailed description about the retailer location
  ///
  /// * [String] hours:
  ///   The hours of operation
  ///
  /// * [String] tags:
  ///   Custom string field for doing full-text searches
  ///
  /// * [int] logoAssetId:
  ///   The retailer location logo asset id
  ///
  /// * [int] picture1AssetId:
  ///   An asset id
  ///
  /// * [int] picture2AssetId:
  ///   An asset id
  ///
  /// * [String] categoryIds:
  ///   Comma separated list of category IDs used to filter retailer locations by categories
  ///
  /// * [String] filterIds:
  ///   Comma separated list of filter IDs used to filter retailer locations
  ///
  /// * [String] metaData:
  ///   External custom client defined data
  ///
  /// * [bool] publicLocation:
  ///   Whether the location is public
  ///
  /// * [bool] active:
  ///   whether the retailer location created should be active or not
  ///
  /// * [String] locationType:
  ///   External custom type identifier
  ///
  /// * [double] latitude:
  ///   The latitude to center the search on
  ///
  /// * [double] longitude:
  ///   The longitude to center the search on
  Future<RetailerLocationResponse?> createRetailerLocationConsumer(String appKey, String name, { String? deviceId, int? accountId, String? streetAddress, String? streetAddress2, String? city, String? state, String? postalCode, String? country, String? businessPhone, String? businessPhoneExt, String? website, String? email, String? detailsHeader, String? detailsBody, String? hours, String? tags, int? logoAssetId, int? picture1AssetId, int? picture2AssetId, String? categoryIds, String? filterIds, String? metaData, bool? publicLocation, bool? active, String? locationType, double? latitude, double? longitude, }) async {
    final response = await createRetailerLocationConsumerWithHttpInfo(appKey, name,  deviceId: deviceId, accountId: accountId, streetAddress: streetAddress, streetAddress2: streetAddress2, city: city, state: state, postalCode: postalCode, country: country, businessPhone: businessPhone, businessPhoneExt: businessPhoneExt, website: website, email: email, detailsHeader: detailsHeader, detailsBody: detailsBody, hours: hours, tags: tags, logoAssetId: logoAssetId, picture1AssetId: picture1AssetId, picture2AssetId: picture2AssetId, categoryIds: categoryIds, filterIds: filterIds, metaData: metaData, publicLocation: publicLocation, active: active, locationType: locationType, latitude: latitude, longitude: longitude, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'RetailerLocationResponse',) as RetailerLocationResponse;
    
    }
    return null;
  }

  /// Create Retailer Location
  ///
  /// Creates a location record for a retailer. Only the owner and the employees of the retailer have access to do this.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] retailerId (required):
  ///   The ID of the retailer
  ///
  /// * [String] name (required):
  ///   The name of the retailer location
  ///
  /// * [String] streetAddress (required):
  ///   The street address of the retailer location
  ///
  /// * [String] city (required):
  ///   The city of the retailer location
  ///
  /// * [String] state (required):
  ///   The state of the retailer location
  ///
  /// * [String] postalCode (required):
  ///   The postal code of the retailer location
  ///
  /// * [String] deviceId:
  ///   The device id (deviceId or accountId required)
  ///
  /// * [int] accountId:
  ///   The account id of the user (deviceId or accountId required)
  ///
  /// * [String] streetAddress2:
  ///   Additional address information (such as a suite number, floor number, building name, or PO Box)
  ///
  /// * [String] country:
  ///   the country of the retailer location
  ///
  /// * [String] businessPhone:
  ///   The business phone number of the retailer location
  ///
  /// * [String] businessPhoneExt:
  ///   The business phone extension
  ///
  /// * [String] website:
  ///   The website of the retailer location
  ///
  /// * [String] email:
  ///   The email of the retailer location
  ///
  /// * [String] internalId:
  ///   An internal identifier used by the retailer
  ///
  /// * [String] detailsHeader:
  ///   A brief description about the retailer location (255 character limit)
  ///
  /// * [String] detailsBody:
  ///   A detailed description about the retailer location
  ///
  /// * [String] hours:
  ///   The hours of operation
  ///
  /// * [MultipartFile] logo:
  ///   The retailer location logo sent as a multipart binary file (you can optionally use logoAssetId if the asset has already been uploaded before)
  ///
  /// * [int] logoAssetId:
  ///   The retailer location logo asset id
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
  ///   Comma separated list of category IDs used to filter retailer locations by categories
  ///
  /// * [String] filterIds:
  ///   Comma separated list of filter IDs used to filter retailer locations
  ///
  /// * [double] latitude:
  ///   the latitude of the retailer location
  ///
  /// * [double] longitude:
  ///   the longitude of the retailer location
  ///
  /// * [String] building:
  ///   
  ///
  /// * [String] googlePlaceId:
  ///   the ID of the Google Place that this retailer location is assigned to
  ///
  /// * [String] yelpId:
  ///   the Yelp ID that this retailer location is assigned to
  ///
  /// * [bool] active:
  ///   whether the retailer location should be active or inactive
  ///
  /// * [bool] publicLocation:
  ///   Sets whether the location is public or not
  ///
  /// * [String] locationType:
  ///   External custom type identifier
  ///
  /// * [String] audienceIds:
  ///   Comma separated list of audience IDs used to assign audiences to the retailer location
  ///
  /// * [String] audienceIdsToAdd:
  ///   Comma separated list of audience IDs to add to the retailer location
  ///
  /// * [String] audienceIdsToRemove:
  ///   Comma separated list of audience IDs to remove from the retailer location
  ///
  /// * [String] responseFormat:
  ///   The format of the returned response {JSON // default , HTML // for Dojo support when uploading assets}
  ///
  /// * [String] responseIncludes:
  ///   Comma separated list of response includes (e.g. RETAILER,ASSETS,OFFERS,CATEGORIES,FILTERS,AUDIENCES,QRCODE)
  Future<Response> createRetailerLocationsWithHttpInfo(int retailerId, String name, String streetAddress, String city, String state, String postalCode, { String? deviceId, int? accountId, String? streetAddress2, String? country, String? businessPhone, String? businessPhoneExt, String? website, String? email, String? internalId, String? detailsHeader, String? detailsBody, String? hours, MultipartFile? logo, int? logoAssetId, MultipartFile? picture1, int? picture1AssetId, MultipartFile? picture2, int? picture2AssetId, String? categoryIds, String? filterIds, double? latitude, double? longitude, String? building, String? googlePlaceId, String? yelpId, bool? active, bool? publicLocation, String? locationType, String? audienceIds, String? audienceIdsToAdd, String? audienceIdsToRemove, String? responseFormat, String? responseIncludes, }) async {
    // ignore: prefer_const_declarations
    final path = r'/retailer/location/create';

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
      queryParams.addAll(_queryParams('', 'name', name));
      queryParams.addAll(_queryParams('', 'streetAddress', streetAddress));
    if (streetAddress2 != null) {
      queryParams.addAll(_queryParams('', 'streetAddress2', streetAddress2));
    }
      queryParams.addAll(_queryParams('', 'city', city));
      queryParams.addAll(_queryParams('', 'state', state));
      queryParams.addAll(_queryParams('', 'postalCode', postalCode));
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
    if (internalId != null) {
      queryParams.addAll(_queryParams('', 'internalId', internalId));
    }
    if (detailsHeader != null) {
      queryParams.addAll(_queryParams('', 'detailsHeader', detailsHeader));
    }
    if (detailsBody != null) {
      queryParams.addAll(_queryParams('', 'detailsBody', detailsBody));
    }
    if (hours != null) {
      queryParams.addAll(_queryParams('', 'hours', hours));
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
    if (building != null) {
      queryParams.addAll(_queryParams('', 'building', building));
    }
    if (googlePlaceId != null) {
      queryParams.addAll(_queryParams('', 'googlePlaceId', googlePlaceId));
    }
    if (yelpId != null) {
      queryParams.addAll(_queryParams('', 'yelpId', yelpId));
    }
    if (active != null) {
      queryParams.addAll(_queryParams('', 'active', active));
    }
    if (publicLocation != null) {
      queryParams.addAll(_queryParams('', 'publicLocation', publicLocation));
    }
    if (locationType != null) {
      queryParams.addAll(_queryParams('', 'locationType', locationType));
    }
    if (audienceIds != null) {
      queryParams.addAll(_queryParams('', 'audienceIds', audienceIds));
    }
    if (audienceIdsToAdd != null) {
      queryParams.addAll(_queryParams('', 'audienceIdsToAdd', audienceIdsToAdd));
    }
    if (audienceIdsToRemove != null) {
      queryParams.addAll(_queryParams('', 'audienceIdsToRemove', audienceIdsToRemove));
    }
    if (responseFormat != null) {
      queryParams.addAll(_queryParams('', 'responseFormat', responseFormat));
    }
    if (responseIncludes != null) {
      queryParams.addAll(_queryParams('', 'responseIncludes', responseIncludes));
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

  /// Create Retailer Location
  ///
  /// Creates a location record for a retailer. Only the owner and the employees of the retailer have access to do this.
  ///
  /// Parameters:
  ///
  /// * [int] retailerId (required):
  ///   The ID of the retailer
  ///
  /// * [String] name (required):
  ///   The name of the retailer location
  ///
  /// * [String] streetAddress (required):
  ///   The street address of the retailer location
  ///
  /// * [String] city (required):
  ///   The city of the retailer location
  ///
  /// * [String] state (required):
  ///   The state of the retailer location
  ///
  /// * [String] postalCode (required):
  ///   The postal code of the retailer location
  ///
  /// * [String] deviceId:
  ///   The device id (deviceId or accountId required)
  ///
  /// * [int] accountId:
  ///   The account id of the user (deviceId or accountId required)
  ///
  /// * [String] streetAddress2:
  ///   Additional address information (such as a suite number, floor number, building name, or PO Box)
  ///
  /// * [String] country:
  ///   the country of the retailer location
  ///
  /// * [String] businessPhone:
  ///   The business phone number of the retailer location
  ///
  /// * [String] businessPhoneExt:
  ///   The business phone extension
  ///
  /// * [String] website:
  ///   The website of the retailer location
  ///
  /// * [String] email:
  ///   The email of the retailer location
  ///
  /// * [String] internalId:
  ///   An internal identifier used by the retailer
  ///
  /// * [String] detailsHeader:
  ///   A brief description about the retailer location (255 character limit)
  ///
  /// * [String] detailsBody:
  ///   A detailed description about the retailer location
  ///
  /// * [String] hours:
  ///   The hours of operation
  ///
  /// * [MultipartFile] logo:
  ///   The retailer location logo sent as a multipart binary file (you can optionally use logoAssetId if the asset has already been uploaded before)
  ///
  /// * [int] logoAssetId:
  ///   The retailer location logo asset id
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
  ///   Comma separated list of category IDs used to filter retailer locations by categories
  ///
  /// * [String] filterIds:
  ///   Comma separated list of filter IDs used to filter retailer locations
  ///
  /// * [double] latitude:
  ///   the latitude of the retailer location
  ///
  /// * [double] longitude:
  ///   the longitude of the retailer location
  ///
  /// * [String] building:
  ///   
  ///
  /// * [String] googlePlaceId:
  ///   the ID of the Google Place that this retailer location is assigned to
  ///
  /// * [String] yelpId:
  ///   the Yelp ID that this retailer location is assigned to
  ///
  /// * [bool] active:
  ///   whether the retailer location should be active or inactive
  ///
  /// * [bool] publicLocation:
  ///   Sets whether the location is public or not
  ///
  /// * [String] locationType:
  ///   External custom type identifier
  ///
  /// * [String] audienceIds:
  ///   Comma separated list of audience IDs used to assign audiences to the retailer location
  ///
  /// * [String] audienceIdsToAdd:
  ///   Comma separated list of audience IDs to add to the retailer location
  ///
  /// * [String] audienceIdsToRemove:
  ///   Comma separated list of audience IDs to remove from the retailer location
  ///
  /// * [String] responseFormat:
  ///   The format of the returned response {JSON // default , HTML // for Dojo support when uploading assets}
  ///
  /// * [String] responseIncludes:
  ///   Comma separated list of response includes (e.g. RETAILER,ASSETS,OFFERS,CATEGORIES,FILTERS,AUDIENCES,QRCODE)
  Future<RetailerLocationResponse?> createRetailerLocations(int retailerId, String name, String streetAddress, String city, String state, String postalCode, { String? deviceId, int? accountId, String? streetAddress2, String? country, String? businessPhone, String? businessPhoneExt, String? website, String? email, String? internalId, String? detailsHeader, String? detailsBody, String? hours, MultipartFile? logo, int? logoAssetId, MultipartFile? picture1, int? picture1AssetId, MultipartFile? picture2, int? picture2AssetId, String? categoryIds, String? filterIds, double? latitude, double? longitude, String? building, String? googlePlaceId, String? yelpId, bool? active, bool? publicLocation, String? locationType, String? audienceIds, String? audienceIdsToAdd, String? audienceIdsToRemove, String? responseFormat, String? responseIncludes, }) async {
    final response = await createRetailerLocationsWithHttpInfo(retailerId, name, streetAddress, city, state, postalCode,  deviceId: deviceId, accountId: accountId, streetAddress2: streetAddress2, country: country, businessPhone: businessPhone, businessPhoneExt: businessPhoneExt, website: website, email: email, internalId: internalId, detailsHeader: detailsHeader, detailsBody: detailsBody, hours: hours, logo: logo, logoAssetId: logoAssetId, picture1: picture1, picture1AssetId: picture1AssetId, picture2: picture2, picture2AssetId: picture2AssetId, categoryIds: categoryIds, filterIds: filterIds, latitude: latitude, longitude: longitude, building: building, googlePlaceId: googlePlaceId, yelpId: yelpId, active: active, publicLocation: publicLocation, locationType: locationType, audienceIds: audienceIds, audienceIdsToAdd: audienceIdsToAdd, audienceIdsToRemove: audienceIdsToRemove, responseFormat: responseFormat, responseIncludes: responseIncludes, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'RetailerLocationResponse',) as RetailerLocationResponse;
    
    }
    return null;
  }

  /// Delete Retailer Location
  ///
  /// Set the deleted timestamp to current time. This effectively deletes the retailer location since all queries should ignore any records with a deleted time stamp.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] deviceId:
  ///   the device id
  ///
  /// * [int] accountId:
  ///   the id of the logged in user
  ///
  /// * [int] retailerLocationId:
  ///   the id of the retailer location to delete
  Future<Response> deleteRetailerLocationWithHttpInfo({ String? deviceId, int? accountId, int? retailerLocationId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/retailer/location/delete';

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
    if (retailerLocationId != null) {
      queryParams.addAll(_queryParams('', 'retailerLocationId', retailerLocationId));
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

  /// Delete Retailer Location
  ///
  /// Set the deleted timestamp to current time. This effectively deletes the retailer location since all queries should ignore any records with a deleted time stamp.
  ///
  /// Parameters:
  ///
  /// * [String] deviceId:
  ///   the device id
  ///
  /// * [int] accountId:
  ///   the id of the logged in user
  ///
  /// * [int] retailerLocationId:
  ///   the id of the retailer location to delete
  Future<SirqulResponse?> deleteRetailerLocation({ String? deviceId, int? accountId, int? retailerLocationId, }) async {
    final response = await deleteRetailerLocationWithHttpInfo( deviceId: deviceId, accountId: accountId, retailerLocationId: retailerLocationId, );
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

  /// Get Retailer Location
  ///
  /// Gets a retailer location. Only the owner and the employees of the retailer have access to view its information.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] retailerLocationId (required):
  ///   The ID of the retailer location
  ///
  /// * [String] deviceId:
  ///   The device id (deviceId or accountId required)
  ///
  /// * [int] accountId:
  ///   The account id of the user (deviceId or accountId required)
  ///
  /// * [String] retailerLocationToken:
  ///   the unique token of the retailer location
  Future<Response> getRetailerLocationWithHttpInfo(int retailerLocationId, { String? deviceId, int? accountId, String? retailerLocationToken, }) async {
    // ignore: prefer_const_declarations
    final path = r'/retailer/location/get';

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
      queryParams.addAll(_queryParams('', 'retailerLocationId', retailerLocationId));
    if (retailerLocationToken != null) {
      queryParams.addAll(_queryParams('', 'retailerLocationToken', retailerLocationToken));
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

  /// Get Retailer Location
  ///
  /// Gets a retailer location. Only the owner and the employees of the retailer have access to view its information.
  ///
  /// Parameters:
  ///
  /// * [int] retailerLocationId (required):
  ///   The ID of the retailer location
  ///
  /// * [String] deviceId:
  ///   The device id (deviceId or accountId required)
  ///
  /// * [int] accountId:
  ///   The account id of the user (deviceId or accountId required)
  ///
  /// * [String] retailerLocationToken:
  ///   the unique token of the retailer location
  Future<RetailerLocationResponse?> getRetailerLocation(int retailerLocationId, { String? deviceId, int? accountId, String? retailerLocationToken, }) async {
    final response = await getRetailerLocationWithHttpInfo(retailerLocationId,  deviceId: deviceId, accountId: accountId, retailerLocationToken: retailerLocationToken, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'RetailerLocationResponse',) as RetailerLocationResponse;
    
    }
    return null;
  }

  /// Get Retailer Location (Consumer)
  ///
  /// Gets the details of a retailer location as a consumer.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] retailerLocationId (required):
  ///   The retailer location id
  ///
  /// * [String] deviceId:
  ///   The device id for returning account information (i.e. favorites)
  ///
  /// * [int] accountId:
  ///   The account id for returning account information (i.e. favorites)
  Future<Response> getRetailerLocationConsumerWithHttpInfo(int retailerLocationId, { String? deviceId, int? accountId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/location/get';

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
      queryParams.addAll(_queryParams('', 'retailerLocationId', retailerLocationId));

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

  /// Get Retailer Location (Consumer)
  ///
  /// Gets the details of a retailer location as a consumer.
  ///
  /// Parameters:
  ///
  /// * [int] retailerLocationId (required):
  ///   The retailer location id
  ///
  /// * [String] deviceId:
  ///   The device id for returning account information (i.e. favorites)
  ///
  /// * [int] accountId:
  ///   The account id for returning account information (i.e. favorites)
  Future<RetailerLocationResponse?> getRetailerLocationConsumer(int retailerLocationId, { String? deviceId, int? accountId, }) async {
    final response = await getRetailerLocationConsumerWithHttpInfo(retailerLocationId,  deviceId: deviceId, accountId: accountId, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'RetailerLocationResponse',) as RetailerLocationResponse;
    
    }
    return null;
  }

  /// Distance Search Retailer Locations (Indexed)
  ///
  /// Retailer location indexed search by distance. This searches on any retailer location with location data and returns the results sorted by distance.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [double] latitude (required):
  ///   The latitude to center the search on
  ///
  /// * [double] longitude (required):
  ///   The longitude to center the search on
  ///
  /// * [double] searchRange (required):
  ///   The search range in the distanceUnit specified; default is MILES.
  ///
  /// * [int] start (required):
  ///   The start index for pagination
  ///
  /// * [int] limit (required):
  ///   The limit for pagination
  ///
  /// * [int] accountId:
  ///   The account id of the user
  ///
  /// * [String] address:
  ///   Used to return results using this address as the center
  ///
  /// * [bool] hasOffers:
  ///   boolean to indicate whether to include retailer locations that have no offers
  ///
  /// * [String] categories:
  ///   Comma separate list of category ids
  ///
  /// * [String] filters:
  ///   Comma separated list of filter ids
  ///
  /// * [String] audiences:
  ///   Comma separated list of audience ids
  ///
  /// * [String] retailerIds:
  ///   Comma separated list of retailer ids
  ///
  /// * [String] retailerLocationIds:
  ///   Comma separated list of retailer location ids
  ///
  /// * [String] tags:
  ///   Does a full-text search on tags
  ///
  /// * [String] locationType:
  ///   Location type filter
  ///
  /// * [String] sortField:
  ///   The field to sort the result set on. Possible values include: DISTANCE, RETAILER_NAME, RETAILER_LOCATION_NAME
  ///
  /// * [bool] descending:
  ///   Determines whether the sorted list is in descending or ascending order
  ///
  /// * [String] q:
  ///   This parameter is deprecated.
  ///
  /// * [String] keyword:
  ///   Search by keyword
  ///
  /// * [String] keywordOperator:
  ///   Determines the operator used when there are multiple words in the 'keyword' parameter
  ///
  /// * [String] searchExpression:
  ///   Search expression to further refine results
  ///
  /// * [String] distanceUnit:
  ///   Unit of distance
  ///
  /// * [bool] returnFavorited:
  ///   (deprecated) return favorited flag
  ///
  /// * [bool] returnRetailer:
  ///   Return retailer info
  ///
  /// * [bool] returnAssets:
  ///   Return assets
  ///
  /// * [bool] returnOffers:
  ///   Return offers
  ///
  /// * [bool] returnCategories:
  ///   Return categories
  ///
  /// * [bool] returnFilters:
  ///   Return filters
  ///
  /// * [bool] returnAudiences:
  ///   Return audiences
  ///
  /// * [bool] returnQrCode:
  ///   Return QR code info
  ///
  /// * [bool] returnExternalCategoryData:
  ///   Return external category data
  ///
  /// * [bool] includeFavorite:
  ///   Include favorites in response
  ///
  /// * [bool] includeLiked:
  ///   Include liked flag in response
  ///
  /// * [bool] includeRating:
  ///   Include rating info in response
  Future<Response> indexedRetailerLocationDistanceSearchWithHttpInfo(double latitude, double longitude, double searchRange, int start, int limit, { int? accountId, String? address, bool? hasOffers, String? categories, String? filters, String? audiences, String? retailerIds, String? retailerLocationIds, String? tags, String? locationType, String? sortField, bool? descending, String? q, String? keyword, String? keywordOperator, String? searchExpression, String? distanceUnit, bool? returnFavorited, bool? returnRetailer, bool? returnAssets, bool? returnOffers, bool? returnCategories, bool? returnFilters, bool? returnAudiences, bool? returnQrCode, bool? returnExternalCategoryData, bool? includeFavorite, bool? includeLiked, bool? includeRating, }) async {
    // ignore: prefer_const_declarations
    final path = r'/retailer/location/idistancesearch';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'latitude', latitude));
      queryParams.addAll(_queryParams('', 'longitude', longitude));
    if (accountId != null) {
      queryParams.addAll(_queryParams('', 'accountId', accountId));
    }
    if (address != null) {
      queryParams.addAll(_queryParams('', 'address', address));
    }
      queryParams.addAll(_queryParams('', 'searchRange', searchRange));
      queryParams.addAll(_queryParams('', 'start', start));
      queryParams.addAll(_queryParams('', 'limit', limit));
    if (hasOffers != null) {
      queryParams.addAll(_queryParams('', 'hasOffers', hasOffers));
    }
    if (categories != null) {
      queryParams.addAll(_queryParams('', 'categories', categories));
    }
    if (filters != null) {
      queryParams.addAll(_queryParams('', 'filters', filters));
    }
    if (audiences != null) {
      queryParams.addAll(_queryParams('', 'audiences', audiences));
    }
    if (retailerIds != null) {
      queryParams.addAll(_queryParams('', 'retailerIds', retailerIds));
    }
    if (retailerLocationIds != null) {
      queryParams.addAll(_queryParams('', 'retailerLocationIds', retailerLocationIds));
    }
    if (tags != null) {
      queryParams.addAll(_queryParams('', 'tags', tags));
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
    if (q != null) {
      queryParams.addAll(_queryParams('', 'q', q));
    }
    if (keyword != null) {
      queryParams.addAll(_queryParams('', 'keyword', keyword));
    }
    if (keywordOperator != null) {
      queryParams.addAll(_queryParams('', 'keywordOperator', keywordOperator));
    }
    if (searchExpression != null) {
      queryParams.addAll(_queryParams('', 'searchExpression', searchExpression));
    }
    if (distanceUnit != null) {
      queryParams.addAll(_queryParams('', 'distanceUnit', distanceUnit));
    }
    if (returnFavorited != null) {
      queryParams.addAll(_queryParams('', 'returnFavorited', returnFavorited));
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
    if (returnAudiences != null) {
      queryParams.addAll(_queryParams('', 'returnAudiences', returnAudiences));
    }
    if (returnQrCode != null) {
      queryParams.addAll(_queryParams('', 'returnQrCode', returnQrCode));
    }
    if (returnExternalCategoryData != null) {
      queryParams.addAll(_queryParams('', 'returnExternalCategoryData', returnExternalCategoryData));
    }
    if (includeFavorite != null) {
      queryParams.addAll(_queryParams('', 'includeFavorite', includeFavorite));
    }
    if (includeLiked != null) {
      queryParams.addAll(_queryParams('', 'includeLiked', includeLiked));
    }
    if (includeRating != null) {
      queryParams.addAll(_queryParams('', 'includeRating', includeRating));
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

  /// Distance Search Retailer Locations (Indexed)
  ///
  /// Retailer location indexed search by distance. This searches on any retailer location with location data and returns the results sorted by distance.
  ///
  /// Parameters:
  ///
  /// * [double] latitude (required):
  ///   The latitude to center the search on
  ///
  /// * [double] longitude (required):
  ///   The longitude to center the search on
  ///
  /// * [double] searchRange (required):
  ///   The search range in the distanceUnit specified; default is MILES.
  ///
  /// * [int] start (required):
  ///   The start index for pagination
  ///
  /// * [int] limit (required):
  ///   The limit for pagination
  ///
  /// * [int] accountId:
  ///   The account id of the user
  ///
  /// * [String] address:
  ///   Used to return results using this address as the center
  ///
  /// * [bool] hasOffers:
  ///   boolean to indicate whether to include retailer locations that have no offers
  ///
  /// * [String] categories:
  ///   Comma separate list of category ids
  ///
  /// * [String] filters:
  ///   Comma separated list of filter ids
  ///
  /// * [String] audiences:
  ///   Comma separated list of audience ids
  ///
  /// * [String] retailerIds:
  ///   Comma separated list of retailer ids
  ///
  /// * [String] retailerLocationIds:
  ///   Comma separated list of retailer location ids
  ///
  /// * [String] tags:
  ///   Does a full-text search on tags
  ///
  /// * [String] locationType:
  ///   Location type filter
  ///
  /// * [String] sortField:
  ///   The field to sort the result set on. Possible values include: DISTANCE, RETAILER_NAME, RETAILER_LOCATION_NAME
  ///
  /// * [bool] descending:
  ///   Determines whether the sorted list is in descending or ascending order
  ///
  /// * [String] q:
  ///   This parameter is deprecated.
  ///
  /// * [String] keyword:
  ///   Search by keyword
  ///
  /// * [String] keywordOperator:
  ///   Determines the operator used when there are multiple words in the 'keyword' parameter
  ///
  /// * [String] searchExpression:
  ///   Search expression to further refine results
  ///
  /// * [String] distanceUnit:
  ///   Unit of distance
  ///
  /// * [bool] returnFavorited:
  ///   (deprecated) return favorited flag
  ///
  /// * [bool] returnRetailer:
  ///   Return retailer info
  ///
  /// * [bool] returnAssets:
  ///   Return assets
  ///
  /// * [bool] returnOffers:
  ///   Return offers
  ///
  /// * [bool] returnCategories:
  ///   Return categories
  ///
  /// * [bool] returnFilters:
  ///   Return filters
  ///
  /// * [bool] returnAudiences:
  ///   Return audiences
  ///
  /// * [bool] returnQrCode:
  ///   Return QR code info
  ///
  /// * [bool] returnExternalCategoryData:
  ///   Return external category data
  ///
  /// * [bool] includeFavorite:
  ///   Include favorites in response
  ///
  /// * [bool] includeLiked:
  ///   Include liked flag in response
  ///
  /// * [bool] includeRating:
  ///   Include rating info in response
  Future<List<RetailerLocationResponse>?> indexedRetailerLocationDistanceSearch(double latitude, double longitude, double searchRange, int start, int limit, { int? accountId, String? address, bool? hasOffers, String? categories, String? filters, String? audiences, String? retailerIds, String? retailerLocationIds, String? tags, String? locationType, String? sortField, bool? descending, String? q, String? keyword, String? keywordOperator, String? searchExpression, String? distanceUnit, bool? returnFavorited, bool? returnRetailer, bool? returnAssets, bool? returnOffers, bool? returnCategories, bool? returnFilters, bool? returnAudiences, bool? returnQrCode, bool? returnExternalCategoryData, bool? includeFavorite, bool? includeLiked, bool? includeRating, }) async {
    final response = await indexedRetailerLocationDistanceSearchWithHttpInfo(latitude, longitude, searchRange, start, limit,  accountId: accountId, address: address, hasOffers: hasOffers, categories: categories, filters: filters, audiences: audiences, retailerIds: retailerIds, retailerLocationIds: retailerLocationIds, tags: tags, locationType: locationType, sortField: sortField, descending: descending, q: q, keyword: keyword, keywordOperator: keywordOperator, searchExpression: searchExpression, distanceUnit: distanceUnit, returnFavorited: returnFavorited, returnRetailer: returnRetailer, returnAssets: returnAssets, returnOffers: returnOffers, returnCategories: returnCategories, returnFilters: returnFilters, returnAudiences: returnAudiences, returnQrCode: returnQrCode, returnExternalCategoryData: returnExternalCategoryData, includeFavorite: includeFavorite, includeLiked: includeLiked, includeRating: includeRating, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<RetailerLocationResponse>') as List)
        .cast<RetailerLocationResponse>()
        .toList(growable: false);

    }
    return null;
  }

  /// Keyword Search Retailer Locations (Indexed)
  ///
  /// Retailer location (faster) indexed search. This searches all retailer locations.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] accountId:
  ///   The account id of the user
  ///
  /// * [int] start:
  ///   The start index for pagination
  ///
  /// * [int] limit:
  ///   The limit for pagination
  ///
  /// * [bool] hasOffers:
  ///   boolean to indicate whether to include retailer locations that have no offers
  ///
  /// * [String] categories:
  ///   Comma separate list of category ids
  ///
  /// * [String] filters:
  ///   Comma separated list of filter ids
  ///
  /// * [String] audiences:
  ///   Comma separated list of audience ids
  ///
  /// * [String] retailerIds:
  ///   Comma separated list of retailer ids
  ///
  /// * [String] retailerLocationIds:
  ///   Comma separated list of retailer location ids
  ///
  /// * [String] tags:
  ///   Does a full-text search on tags
  ///
  /// * [String] locationType:
  ///   Location type filter
  ///
  /// * [String] sortField:
  ///   The field to sort the result set on. Possible values include: RETAILER_NAME, RETAILER_LOCATION_NAME
  ///
  /// * [bool] descending:
  ///   Determines whether the sorted list is in descending or ascending order
  ///
  /// * [String] q:
  ///   This parameter is deprecated.
  ///
  /// * [String] keyword:
  ///   Search by keyword
  ///
  /// * [String] keywordOperator:
  ///   Determines the operator used when there are multiple words in the 'keyword' parameter
  ///
  /// * [String] searchExpression:
  ///   Search expression to further refine results
  ///
  /// * [bool] returnRetailer:
  ///   Return retailer info
  ///
  /// * [bool] returnAssets:
  ///   Return assets
  ///
  /// * [bool] returnOffers:
  ///   Return offers
  ///
  /// * [bool] returnCategories:
  ///   Return categories
  ///
  /// * [bool] returnFilters:
  ///   Return filters
  ///
  /// * [bool] returnAudiences:
  ///   Return audiences
  ///
  /// * [bool] returnQrCode:
  ///   Return QR code info
  ///
  /// * [bool] returnExternalCategoryData:
  ///   Return external category data
  ///
  /// * [bool] includeFavorite:
  ///   Include favorites in response
  ///
  /// * [bool] includeLiked:
  ///   Include liked flag in response
  ///
  /// * [bool] includeRating:
  ///   Include rating info in response
  Future<Response> indexedRetailerLocationSearchWithHttpInfo({ int? accountId, int? start, int? limit, bool? hasOffers, String? categories, String? filters, String? audiences, String? retailerIds, String? retailerLocationIds, String? tags, String? locationType, String? sortField, bool? descending, String? q, String? keyword, String? keywordOperator, String? searchExpression, bool? returnRetailer, bool? returnAssets, bool? returnOffers, bool? returnCategories, bool? returnFilters, bool? returnAudiences, bool? returnQrCode, bool? returnExternalCategoryData, bool? includeFavorite, bool? includeLiked, bool? includeRating, }) async {
    // ignore: prefer_const_declarations
    final path = r'/retailer/location/isearch';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (accountId != null) {
      queryParams.addAll(_queryParams('', 'accountId', accountId));
    }
    if (start != null) {
      queryParams.addAll(_queryParams('', 'start', start));
    }
    if (limit != null) {
      queryParams.addAll(_queryParams('', 'limit', limit));
    }
    if (hasOffers != null) {
      queryParams.addAll(_queryParams('', 'hasOffers', hasOffers));
    }
    if (categories != null) {
      queryParams.addAll(_queryParams('', 'categories', categories));
    }
    if (filters != null) {
      queryParams.addAll(_queryParams('', 'filters', filters));
    }
    if (audiences != null) {
      queryParams.addAll(_queryParams('', 'audiences', audiences));
    }
    if (retailerIds != null) {
      queryParams.addAll(_queryParams('', 'retailerIds', retailerIds));
    }
    if (retailerLocationIds != null) {
      queryParams.addAll(_queryParams('', 'retailerLocationIds', retailerLocationIds));
    }
    if (tags != null) {
      queryParams.addAll(_queryParams('', 'tags', tags));
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
    if (q != null) {
      queryParams.addAll(_queryParams('', 'q', q));
    }
    if (keyword != null) {
      queryParams.addAll(_queryParams('', 'keyword', keyword));
    }
    if (keywordOperator != null) {
      queryParams.addAll(_queryParams('', 'keywordOperator', keywordOperator));
    }
    if (searchExpression != null) {
      queryParams.addAll(_queryParams('', 'searchExpression', searchExpression));
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
    if (returnAudiences != null) {
      queryParams.addAll(_queryParams('', 'returnAudiences', returnAudiences));
    }
    if (returnQrCode != null) {
      queryParams.addAll(_queryParams('', 'returnQrCode', returnQrCode));
    }
    if (returnExternalCategoryData != null) {
      queryParams.addAll(_queryParams('', 'returnExternalCategoryData', returnExternalCategoryData));
    }
    if (includeFavorite != null) {
      queryParams.addAll(_queryParams('', 'includeFavorite', includeFavorite));
    }
    if (includeLiked != null) {
      queryParams.addAll(_queryParams('', 'includeLiked', includeLiked));
    }
    if (includeRating != null) {
      queryParams.addAll(_queryParams('', 'includeRating', includeRating));
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

  /// Keyword Search Retailer Locations (Indexed)
  ///
  /// Retailer location (faster) indexed search. This searches all retailer locations.
  ///
  /// Parameters:
  ///
  /// * [int] accountId:
  ///   The account id of the user
  ///
  /// * [int] start:
  ///   The start index for pagination
  ///
  /// * [int] limit:
  ///   The limit for pagination
  ///
  /// * [bool] hasOffers:
  ///   boolean to indicate whether to include retailer locations that have no offers
  ///
  /// * [String] categories:
  ///   Comma separate list of category ids
  ///
  /// * [String] filters:
  ///   Comma separated list of filter ids
  ///
  /// * [String] audiences:
  ///   Comma separated list of audience ids
  ///
  /// * [String] retailerIds:
  ///   Comma separated list of retailer ids
  ///
  /// * [String] retailerLocationIds:
  ///   Comma separated list of retailer location ids
  ///
  /// * [String] tags:
  ///   Does a full-text search on tags
  ///
  /// * [String] locationType:
  ///   Location type filter
  ///
  /// * [String] sortField:
  ///   The field to sort the result set on. Possible values include: RETAILER_NAME, RETAILER_LOCATION_NAME
  ///
  /// * [bool] descending:
  ///   Determines whether the sorted list is in descending or ascending order
  ///
  /// * [String] q:
  ///   This parameter is deprecated.
  ///
  /// * [String] keyword:
  ///   Search by keyword
  ///
  /// * [String] keywordOperator:
  ///   Determines the operator used when there are multiple words in the 'keyword' parameter
  ///
  /// * [String] searchExpression:
  ///   Search expression to further refine results
  ///
  /// * [bool] returnRetailer:
  ///   Return retailer info
  ///
  /// * [bool] returnAssets:
  ///   Return assets
  ///
  /// * [bool] returnOffers:
  ///   Return offers
  ///
  /// * [bool] returnCategories:
  ///   Return categories
  ///
  /// * [bool] returnFilters:
  ///   Return filters
  ///
  /// * [bool] returnAudiences:
  ///   Return audiences
  ///
  /// * [bool] returnQrCode:
  ///   Return QR code info
  ///
  /// * [bool] returnExternalCategoryData:
  ///   Return external category data
  ///
  /// * [bool] includeFavorite:
  ///   Include favorites in response
  ///
  /// * [bool] includeLiked:
  ///   Include liked flag in response
  ///
  /// * [bool] includeRating:
  ///   Include rating info in response
  Future<List<RetailerLocationResponse>?> indexedRetailerLocationSearch({ int? accountId, int? start, int? limit, bool? hasOffers, String? categories, String? filters, String? audiences, String? retailerIds, String? retailerLocationIds, String? tags, String? locationType, String? sortField, bool? descending, String? q, String? keyword, String? keywordOperator, String? searchExpression, bool? returnRetailer, bool? returnAssets, bool? returnOffers, bool? returnCategories, bool? returnFilters, bool? returnAudiences, bool? returnQrCode, bool? returnExternalCategoryData, bool? includeFavorite, bool? includeLiked, bool? includeRating, }) async {
    final response = await indexedRetailerLocationSearchWithHttpInfo( accountId: accountId, start: start, limit: limit, hasOffers: hasOffers, categories: categories, filters: filters, audiences: audiences, retailerIds: retailerIds, retailerLocationIds: retailerLocationIds, tags: tags, locationType: locationType, sortField: sortField, descending: descending, q: q, keyword: keyword, keywordOperator: keywordOperator, searchExpression: searchExpression, returnRetailer: returnRetailer, returnAssets: returnAssets, returnOffers: returnOffers, returnCategories: returnCategories, returnFilters: returnFilters, returnAudiences: returnAudiences, returnQrCode: returnQrCode, returnExternalCategoryData: returnExternalCategoryData, includeFavorite: includeFavorite, includeLiked: includeLiked, includeRating: includeRating, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<RetailerLocationResponse>') as List)
        .cast<RetailerLocationResponse>()
        .toList(growable: false);

    }
    return null;
  }

  /// Search Retailer Locations (Owned)
  ///
  /// Searches on retailer locations that the account has access to.
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
  /// * [String] q:
  ///   This parameter is deprecated.
  ///
  /// * [String] keyword:
  ///   The keyword used to search
  ///
  /// * [String] retailerIds:
  ///   Comma separated list of retailer IDs which when passed in will filter the results to only return these retailers.
  ///
  /// * [String] retailerLocationIds:
  ///   Comma separated list of retailer location IDs
  ///
  /// * [String] locationType:
  ///   Location type filter
  ///
  /// * [String] sortField:
  ///   The column to sort the search on
  ///
  /// * [bool] descending:
  ///   The order to return the search results
  ///
  /// * [int] i:
  ///   This parameter is deprecated.
  ///
  /// * [int] start:
  ///   The record to begin the return set on
  ///
  /// * [int] l:
  ///   This parameter is deprecated.
  ///
  /// * [int] limit:
  ///   The number of records to return
  ///
  /// * [bool] showPublicLocations:
  ///   Whether to include public locations in the results
  ///
  /// * [bool] activeOnly:
  ///   Return only active results
  ///
  /// * [bool] returnRetailer:
  ///   Return retailer info
  ///
  /// * [bool] returnAssets:
  ///   Return assets
  ///
  /// * [bool] returnOffers:
  ///   Return offers
  ///
  /// * [bool] returnCategories:
  ///   Return categories
  ///
  /// * [bool] returnFilters:
  ///   Return filters
  ///
  /// * [bool] returnAudiences:
  ///   Return audiences
  ///
  /// * [bool] returnQrCode:
  ///   Return QR code info
  ///
  /// * [bool] includeFavorite:
  ///   Include favorites in response
  ///
  /// * [bool] includeLiked:
  ///   Include liked flag in response
  ///
  /// * [bool] includeRating:
  ///   Include rating info in response
  Future<Response> searchRetailerLocationsWithHttpInfo({ String? deviceId, int? accountId, String? q, String? keyword, String? retailerIds, String? retailerLocationIds, String? locationType, String? sortField, bool? descending, int? i, int? start, int? l, int? limit, bool? showPublicLocations, bool? activeOnly, bool? returnRetailer, bool? returnAssets, bool? returnOffers, bool? returnCategories, bool? returnFilters, bool? returnAudiences, bool? returnQrCode, bool? includeFavorite, bool? includeLiked, bool? includeRating, }) async {
    // ignore: prefer_const_declarations
    final path = r'/retailer/location/search';

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
    if (retailerIds != null) {
      queryParams.addAll(_queryParams('', 'retailerIds', retailerIds));
    }
    if (retailerLocationIds != null) {
      queryParams.addAll(_queryParams('', 'retailerLocationIds', retailerLocationIds));
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
    if (i != null) {
      queryParams.addAll(_queryParams('', '_i', i));
    }
    if (start != null) {
      queryParams.addAll(_queryParams('', 'start', start));
    }
    if (l != null) {
      queryParams.addAll(_queryParams('', '_l', l));
    }
    if (limit != null) {
      queryParams.addAll(_queryParams('', 'limit', limit));
    }
    if (showPublicLocations != null) {
      queryParams.addAll(_queryParams('', 'showPublicLocations', showPublicLocations));
    }
    if (activeOnly != null) {
      queryParams.addAll(_queryParams('', 'activeOnly', activeOnly));
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
    if (returnAudiences != null) {
      queryParams.addAll(_queryParams('', 'returnAudiences', returnAudiences));
    }
    if (returnQrCode != null) {
      queryParams.addAll(_queryParams('', 'returnQrCode', returnQrCode));
    }
    if (includeFavorite != null) {
      queryParams.addAll(_queryParams('', 'includeFavorite', includeFavorite));
    }
    if (includeLiked != null) {
      queryParams.addAll(_queryParams('', 'includeLiked', includeLiked));
    }
    if (includeRating != null) {
      queryParams.addAll(_queryParams('', 'includeRating', includeRating));
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

  /// Search Retailer Locations (Owned)
  ///
  /// Searches on retailer locations that the account has access to.
  ///
  /// Parameters:
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
  /// * [String] retailerIds:
  ///   Comma separated list of retailer IDs which when passed in will filter the results to only return these retailers.
  ///
  /// * [String] retailerLocationIds:
  ///   Comma separated list of retailer location IDs
  ///
  /// * [String] locationType:
  ///   Location type filter
  ///
  /// * [String] sortField:
  ///   The column to sort the search on
  ///
  /// * [bool] descending:
  ///   The order to return the search results
  ///
  /// * [int] i:
  ///   This parameter is deprecated.
  ///
  /// * [int] start:
  ///   The record to begin the return set on
  ///
  /// * [int] l:
  ///   This parameter is deprecated.
  ///
  /// * [int] limit:
  ///   The number of records to return
  ///
  /// * [bool] showPublicLocations:
  ///   Whether to include public locations in the results
  ///
  /// * [bool] activeOnly:
  ///   Return only active results
  ///
  /// * [bool] returnRetailer:
  ///   Return retailer info
  ///
  /// * [bool] returnAssets:
  ///   Return assets
  ///
  /// * [bool] returnOffers:
  ///   Return offers
  ///
  /// * [bool] returnCategories:
  ///   Return categories
  ///
  /// * [bool] returnFilters:
  ///   Return filters
  ///
  /// * [bool] returnAudiences:
  ///   Return audiences
  ///
  /// * [bool] returnQrCode:
  ///   Return QR code info
  ///
  /// * [bool] includeFavorite:
  ///   Include favorites in response
  ///
  /// * [bool] includeLiked:
  ///   Include liked flag in response
  ///
  /// * [bool] includeRating:
  ///   Include rating info in response
  Future<List<RetailerLocationResponse>?> searchRetailerLocations({ String? deviceId, int? accountId, String? q, String? keyword, String? retailerIds, String? retailerLocationIds, String? locationType, String? sortField, bool? descending, int? i, int? start, int? l, int? limit, bool? showPublicLocations, bool? activeOnly, bool? returnRetailer, bool? returnAssets, bool? returnOffers, bool? returnCategories, bool? returnFilters, bool? returnAudiences, bool? returnQrCode, bool? includeFavorite, bool? includeLiked, bool? includeRating, }) async {
    final response = await searchRetailerLocationsWithHttpInfo( deviceId: deviceId, accountId: accountId, q: q, keyword: keyword, retailerIds: retailerIds, retailerLocationIds: retailerLocationIds, locationType: locationType, sortField: sortField, descending: descending, i: i, start: start, l: l, limit: limit, showPublicLocations: showPublicLocations, activeOnly: activeOnly, returnRetailer: returnRetailer, returnAssets: returnAssets, returnOffers: returnOffers, returnCategories: returnCategories, returnFilters: returnFilters, returnAudiences: returnAudiences, returnQrCode: returnQrCode, includeFavorite: includeFavorite, includeLiked: includeLiked, includeRating: includeRating, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<RetailerLocationResponse>') as List)
        .cast<RetailerLocationResponse>()
        .toList(growable: false);

    }
    return null;
  }

  /// Update Retailer Location
  ///
  /// Updates a location record for a retailer. Only the owner and the employees of the retailer have access to do this.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] retailerLocationId (required):
  ///   The ID of the retailer location
  ///
  /// * [String] deviceId:
  ///   The device id (deviceId or accountId required)
  ///
  /// * [int] accountId:
  ///   The account id of the user (deviceId or accountId required)
  ///
  /// * [String] name:
  ///   The name of the retailer location
  ///
  /// * [String] streetAddress:
  ///   The street address of the retailer location
  ///
  /// * [String] streetAddress2:
  ///   Additional address information (such as a suite number, floor number, building name, or PO Box)
  ///
  /// * [String] city:
  ///   The city of the retailer location
  ///
  /// * [String] state:
  ///   The state of the retailer location
  ///
  /// * [String] postalCode:
  ///   The postal code of the retailer location
  ///
  /// * [String] country:
  ///   the country of the retailer location
  ///
  /// * [String] businessPhone:
  ///   The business phone number of the retailer location
  ///
  /// * [String] businessPhoneExt:
  ///   The business phone extension of the retailer location
  ///
  /// * [String] website:
  ///   The website of the retailer location
  ///
  /// * [String] email:
  ///   The email of the retailer location
  ///
  /// * [String] internalId:
  ///   An internal identifier used by the retailer
  ///
  /// * [String] detailsHeader:
  ///   A brief description about the retailer location (255 character limit)
  ///
  /// * [String] detailsBody:
  ///   A detailed description about the retailer location
  ///
  /// * [String] hours:
  ///   The hours of operation
  ///
  /// * [MultipartFile] logo:
  ///   The retailer location logo sent as a multipart binary file (you can optionally use logoAssetId if the asset has already been uploaded before)
  ///
  /// * [int] logoAssetId:
  ///   The retailer location logo asset id
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
  ///   Comma separated list of category IDs used to filter retailer locations by categories
  ///
  /// * [String] filterIds:
  ///   Comma separated list of filter IDs used to filter retailer locations
  ///
  /// * [double] latitude:
  ///   the latituede of the retailer location
  ///
  /// * [double] longitude:
  ///   the longitude of the retailer location
  ///
  /// * [String] building:
  ///   
  ///
  /// * [String] googlePlaceId:
  ///   the Google Place ID that the retailer location is associated with
  ///
  /// * [String] yelpId:
  ///   the Yelp ID that the retailer location is associated with
  ///
  /// * [String] metaData:
  ///   External custom client defined data
  ///
  /// * [String] paymentProvider:
  ///   Specifies which payment provider Sirqul will use when making payments
  ///
  /// * [bool] active:
  ///   Sets whether the retailer is active or inactive (hidden from consumers)
  ///
  /// * [bool] publicLocation:
  ///   Sets whether the location is public or not
  ///
  /// * [String] locationType:
  ///   External custom type identifier
  ///
  /// * [String] audienceIds:
  ///   Comma separated list of audience IDs used to assign audiences to the retailer location
  ///
  /// * [String] audienceIdsToAdd:
  ///   Comma separated list of audience IDs to add to the retailer location
  ///
  /// * [String] audienceIdsToRemove:
  ///   Comma separated list of audience IDs to remove from the retailer location
  ///
  /// * [String] responseFormat:
  ///   The format of the returned response {JSON // default , HTML // for Dojo support when uploading assets}
  ///
  /// * [String] tags:
  ///   Custom string field for doing full-text searches
  Future<Response> updateRetailerLocationsWithHttpInfo(int retailerLocationId, { String? deviceId, int? accountId, String? name, String? streetAddress, String? streetAddress2, String? city, String? state, String? postalCode, String? country, String? businessPhone, String? businessPhoneExt, String? website, String? email, String? internalId, String? detailsHeader, String? detailsBody, String? hours, MultipartFile? logo, int? logoAssetId, MultipartFile? picture1, int? picture1AssetId, MultipartFile? picture2, int? picture2AssetId, String? categoryIds, String? filterIds, double? latitude, double? longitude, String? building, String? googlePlaceId, String? yelpId, String? metaData, String? paymentProvider, bool? active, bool? publicLocation, String? locationType, String? audienceIds, String? audienceIdsToAdd, String? audienceIdsToRemove, String? responseFormat, String? tags, }) async {
    // ignore: prefer_const_declarations
    final path = r'/retailer/location/update';

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
      queryParams.addAll(_queryParams('', 'retailerLocationId', retailerLocationId));
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
    if (internalId != null) {
      queryParams.addAll(_queryParams('', 'internalId', internalId));
    }
    if (detailsHeader != null) {
      queryParams.addAll(_queryParams('', 'detailsHeader', detailsHeader));
    }
    if (detailsBody != null) {
      queryParams.addAll(_queryParams('', 'detailsBody', detailsBody));
    }
    if (hours != null) {
      queryParams.addAll(_queryParams('', 'hours', hours));
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
    if (building != null) {
      queryParams.addAll(_queryParams('', 'building', building));
    }
    if (googlePlaceId != null) {
      queryParams.addAll(_queryParams('', 'googlePlaceId', googlePlaceId));
    }
    if (yelpId != null) {
      queryParams.addAll(_queryParams('', 'yelpId', yelpId));
    }
    if (metaData != null) {
      queryParams.addAll(_queryParams('', 'metaData', metaData));
    }
    if (paymentProvider != null) {
      queryParams.addAll(_queryParams('', 'paymentProvider', paymentProvider));
    }
    if (active != null) {
      queryParams.addAll(_queryParams('', 'active', active));
    }
    if (publicLocation != null) {
      queryParams.addAll(_queryParams('', 'publicLocation', publicLocation));
    }
    if (locationType != null) {
      queryParams.addAll(_queryParams('', 'locationType', locationType));
    }
    if (audienceIds != null) {
      queryParams.addAll(_queryParams('', 'audienceIds', audienceIds));
    }
    if (audienceIdsToAdd != null) {
      queryParams.addAll(_queryParams('', 'audienceIdsToAdd', audienceIdsToAdd));
    }
    if (audienceIdsToRemove != null) {
      queryParams.addAll(_queryParams('', 'audienceIdsToRemove', audienceIdsToRemove));
    }
    if (responseFormat != null) {
      queryParams.addAll(_queryParams('', 'responseFormat', responseFormat));
    }
    if (tags != null) {
      queryParams.addAll(_queryParams('', 'tags', tags));
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

  /// Update Retailer Location
  ///
  /// Updates a location record for a retailer. Only the owner and the employees of the retailer have access to do this.
  ///
  /// Parameters:
  ///
  /// * [int] retailerLocationId (required):
  ///   The ID of the retailer location
  ///
  /// * [String] deviceId:
  ///   The device id (deviceId or accountId required)
  ///
  /// * [int] accountId:
  ///   The account id of the user (deviceId or accountId required)
  ///
  /// * [String] name:
  ///   The name of the retailer location
  ///
  /// * [String] streetAddress:
  ///   The street address of the retailer location
  ///
  /// * [String] streetAddress2:
  ///   Additional address information (such as a suite number, floor number, building name, or PO Box)
  ///
  /// * [String] city:
  ///   The city of the retailer location
  ///
  /// * [String] state:
  ///   The state of the retailer location
  ///
  /// * [String] postalCode:
  ///   The postal code of the retailer location
  ///
  /// * [String] country:
  ///   the country of the retailer location
  ///
  /// * [String] businessPhone:
  ///   The business phone number of the retailer location
  ///
  /// * [String] businessPhoneExt:
  ///   The business phone extension of the retailer location
  ///
  /// * [String] website:
  ///   The website of the retailer location
  ///
  /// * [String] email:
  ///   The email of the retailer location
  ///
  /// * [String] internalId:
  ///   An internal identifier used by the retailer
  ///
  /// * [String] detailsHeader:
  ///   A brief description about the retailer location (255 character limit)
  ///
  /// * [String] detailsBody:
  ///   A detailed description about the retailer location
  ///
  /// * [String] hours:
  ///   The hours of operation
  ///
  /// * [MultipartFile] logo:
  ///   The retailer location logo sent as a multipart binary file (you can optionally use logoAssetId if the asset has already been uploaded before)
  ///
  /// * [int] logoAssetId:
  ///   The retailer location logo asset id
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
  ///   Comma separated list of category IDs used to filter retailer locations by categories
  ///
  /// * [String] filterIds:
  ///   Comma separated list of filter IDs used to filter retailer locations
  ///
  /// * [double] latitude:
  ///   the latituede of the retailer location
  ///
  /// * [double] longitude:
  ///   the longitude of the retailer location
  ///
  /// * [String] building:
  ///   
  ///
  /// * [String] googlePlaceId:
  ///   the Google Place ID that the retailer location is associated with
  ///
  /// * [String] yelpId:
  ///   the Yelp ID that the retailer location is associated with
  ///
  /// * [String] metaData:
  ///   External custom client defined data
  ///
  /// * [String] paymentProvider:
  ///   Specifies which payment provider Sirqul will use when making payments
  ///
  /// * [bool] active:
  ///   Sets whether the retailer is active or inactive (hidden from consumers)
  ///
  /// * [bool] publicLocation:
  ///   Sets whether the location is public or not
  ///
  /// * [String] locationType:
  ///   External custom type identifier
  ///
  /// * [String] audienceIds:
  ///   Comma separated list of audience IDs used to assign audiences to the retailer location
  ///
  /// * [String] audienceIdsToAdd:
  ///   Comma separated list of audience IDs to add to the retailer location
  ///
  /// * [String] audienceIdsToRemove:
  ///   Comma separated list of audience IDs to remove from the retailer location
  ///
  /// * [String] responseFormat:
  ///   The format of the returned response {JSON // default , HTML // for Dojo support when uploading assets}
  ///
  /// * [String] tags:
  ///   Custom string field for doing full-text searches
  Future<RetailerLocationResponse?> updateRetailerLocations(int retailerLocationId, { String? deviceId, int? accountId, String? name, String? streetAddress, String? streetAddress2, String? city, String? state, String? postalCode, String? country, String? businessPhone, String? businessPhoneExt, String? website, String? email, String? internalId, String? detailsHeader, String? detailsBody, String? hours, MultipartFile? logo, int? logoAssetId, MultipartFile? picture1, int? picture1AssetId, MultipartFile? picture2, int? picture2AssetId, String? categoryIds, String? filterIds, double? latitude, double? longitude, String? building, String? googlePlaceId, String? yelpId, String? metaData, String? paymentProvider, bool? active, bool? publicLocation, String? locationType, String? audienceIds, String? audienceIdsToAdd, String? audienceIdsToRemove, String? responseFormat, String? tags, }) async {
    final response = await updateRetailerLocationsWithHttpInfo(retailerLocationId,  deviceId: deviceId, accountId: accountId, name: name, streetAddress: streetAddress, streetAddress2: streetAddress2, city: city, state: state, postalCode: postalCode, country: country, businessPhone: businessPhone, businessPhoneExt: businessPhoneExt, website: website, email: email, internalId: internalId, detailsHeader: detailsHeader, detailsBody: detailsBody, hours: hours, logo: logo, logoAssetId: logoAssetId, picture1: picture1, picture1AssetId: picture1AssetId, picture2: picture2, picture2AssetId: picture2AssetId, categoryIds: categoryIds, filterIds: filterIds, latitude: latitude, longitude: longitude, building: building, googlePlaceId: googlePlaceId, yelpId: yelpId, metaData: metaData, paymentProvider: paymentProvider, active: active, publicLocation: publicLocation, locationType: locationType, audienceIds: audienceIds, audienceIdsToAdd: audienceIdsToAdd, audienceIdsToRemove: audienceIdsToRemove, responseFormat: responseFormat, tags: tags, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'RetailerLocationResponse',) as RetailerLocationResponse;
    
    }
    return null;
  }
}
