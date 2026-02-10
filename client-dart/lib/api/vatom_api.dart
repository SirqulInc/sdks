//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class VatomApi {
  VatomApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Create following
  ///
  /// Create following.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] accountId (required):
  ///   Sirqul Account Id
  ///
  /// * [String] vatomParameters (required):
  ///   Vatom Parameters
  ///
  /// * [bool] returnRawResponse:
  ///   Return raw response
  Future<Response> createFollowingWithHttpInfo(num version, int accountId, String vatomParameters, { bool? returnRawResponse, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/vatom/me/rels/following/create'
      .replaceAll('{version}', version.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'accountId', accountId));
      queryParams.addAll(_queryParams('', 'vatomParameters', vatomParameters));
    if (returnRawResponse != null) {
      queryParams.addAll(_queryParams('', 'returnRawResponse', returnRawResponse));
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

  /// Create following
  ///
  /// Create following.
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] accountId (required):
  ///   Sirqul Account Id
  ///
  /// * [String] vatomParameters (required):
  ///   Vatom Parameters
  ///
  /// * [bool] returnRawResponse:
  ///   Return raw response
  Future<void> createFollowing(num version, int accountId, String vatomParameters, { bool? returnRawResponse, }) async {
    final response = await createFollowingWithHttpInfo(version, accountId, vatomParameters,  returnRawResponse: returnRawResponse, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Create Vatom Space
  ///
  /// Create a Vatom space.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] accountId (required):
  ///   Sirqul Account Id
  ///
  /// * [String] appKey (required):
  ///   Sirqul Application Key
  ///
  /// * [String] vatomParameters (required):
  ///   Vatom Parameters
  ///
  /// * [bool] returnRawResponse:
  ///   Return raw response
  Future<Response> createSpaceWithHttpInfo(num version, int accountId, String appKey, String vatomParameters, { bool? returnRawResponse, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/vatom/b/spaces/create'
      .replaceAll('{version}', version.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'accountId', accountId));
      queryParams.addAll(_queryParams('', 'appKey', appKey));
      queryParams.addAll(_queryParams('', 'vatomParameters', vatomParameters));
    if (returnRawResponse != null) {
      queryParams.addAll(_queryParams('', 'returnRawResponse', returnRawResponse));
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

  /// Create Vatom Space
  ///
  /// Create a Vatom space.
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] accountId (required):
  ///   Sirqul Account Id
  ///
  /// * [String] appKey (required):
  ///   Sirqul Application Key
  ///
  /// * [String] vatomParameters (required):
  ///   Vatom Parameters
  ///
  /// * [bool] returnRawResponse:
  ///   Return raw response
  Future<void> createSpace(num version, int accountId, String appKey, String vatomParameters, { bool? returnRawResponse, }) async {
    final response = await createSpaceWithHttpInfo(version, accountId, appKey, vatomParameters,  returnRawResponse: returnRawResponse, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Create Vatom Event
  ///
  /// Create a Vatom event.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] accountId (required):
  ///   Sirqul Account Id
  ///
  /// * [String] appKey (required):
  ///   Sirqul Application Key
  ///
  /// * [String] vatomParameters (required):
  ///   Vatom Parameters
  ///
  /// * [bool] returnRawResponse:
  ///   Return raw response
  Future<Response> createVatomEventWithHttpInfo(num version, int accountId, String appKey, String vatomParameters, { bool? returnRawResponse, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/vatom/b/events/create'
      .replaceAll('{version}', version.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'accountId', accountId));
      queryParams.addAll(_queryParams('', 'appKey', appKey));
      queryParams.addAll(_queryParams('', 'vatomParameters', vatomParameters));
    if (returnRawResponse != null) {
      queryParams.addAll(_queryParams('', 'returnRawResponse', returnRawResponse));
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

  /// Create Vatom Event
  ///
  /// Create a Vatom event.
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] accountId (required):
  ///   Sirqul Account Id
  ///
  /// * [String] appKey (required):
  ///   Sirqul Application Key
  ///
  /// * [String] vatomParameters (required):
  ///   Vatom Parameters
  ///
  /// * [bool] returnRawResponse:
  ///   Return raw response
  Future<void> createVatomEvent(num version, int accountId, String appKey, String vatomParameters, { bool? returnRawResponse, }) async {
    final response = await createVatomEventWithHttpInfo(version, accountId, appKey, vatomParameters,  returnRawResponse: returnRawResponse, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Delete following
  ///
  /// Delete following.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] accountId (required):
  ///   Sirqul Account Id
  ///
  /// * [String] vatomRelsKey (required):
  ///   Vatom Rels Key
  ///
  /// * [bool] returnRawResponse:
  ///   Return raw response
  Future<Response> deleteFollowingWithHttpInfo(num version, int accountId, String vatomRelsKey, { bool? returnRawResponse, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/vatom/me/rels/following/delete'
      .replaceAll('{version}', version.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'accountId', accountId));
      queryParams.addAll(_queryParams('', 'vatomRelsKey', vatomRelsKey));
    if (returnRawResponse != null) {
      queryParams.addAll(_queryParams('', 'returnRawResponse', returnRawResponse));
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

  /// Delete following
  ///
  /// Delete following.
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] accountId (required):
  ///   Sirqul Account Id
  ///
  /// * [String] vatomRelsKey (required):
  ///   Vatom Rels Key
  ///
  /// * [bool] returnRawResponse:
  ///   Return raw response
  Future<void> deleteFollowing(num version, int accountId, String vatomRelsKey, { bool? returnRawResponse, }) async {
    final response = await deleteFollowingWithHttpInfo(version, accountId, vatomRelsKey,  returnRawResponse: returnRawResponse, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Reset All Points Balance
  ///
  /// Reset All Points Balance.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] accountId (required):
  ///   Sirqul Account Id
  ///
  /// * [String] appKey (required):
  ///   Sirqul Application Key
  ///
  /// * [String] vatomCampaignId (required):
  ///   Vatom Campaign Id
  ///
  /// * [bool] returnRawResponse:
  ///   Return raw response
  Future<Response> deletePointsBalanceWithHttpInfo(num version, int accountId, String appKey, String vatomCampaignId, { bool? returnRawResponse, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/vatom/b/campaign/points/delete'
      .replaceAll('{version}', version.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'accountId', accountId));
      queryParams.addAll(_queryParams('', 'appKey', appKey));
      queryParams.addAll(_queryParams('', 'vatomCampaignId', vatomCampaignId));
    if (returnRawResponse != null) {
      queryParams.addAll(_queryParams('', 'returnRawResponse', returnRawResponse));
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

  /// Reset All Points Balance
  ///
  /// Reset All Points Balance.
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] accountId (required):
  ///   Sirqul Account Id
  ///
  /// * [String] appKey (required):
  ///   Sirqul Application Key
  ///
  /// * [String] vatomCampaignId (required):
  ///   Vatom Campaign Id
  ///
  /// * [bool] returnRawResponse:
  ///   Return raw response
  Future<void> deletePointsBalance(num version, int accountId, String appKey, String vatomCampaignId, { bool? returnRawResponse, }) async {
    final response = await deletePointsBalanceWithHttpInfo(version, accountId, appKey, vatomCampaignId,  returnRawResponse: returnRawResponse, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Delete Vatom Space
  ///
  /// Delete a Vatom space.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] accountId (required):
  ///   Sirqul Account Id
  ///
  /// * [String] appKey (required):
  ///   Sirqul Application Key
  ///
  /// * [String] vatomSpaceId (required):
  ///   Vatom Space Id
  ///
  /// * [bool] returnRawResponse:
  ///   Return raw response
  Future<Response> deleteSpaceWithHttpInfo(num version, int accountId, String appKey, String vatomSpaceId, { bool? returnRawResponse, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/vatom/b/spaces/delete'
      .replaceAll('{version}', version.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'accountId', accountId));
      queryParams.addAll(_queryParams('', 'appKey', appKey));
      queryParams.addAll(_queryParams('', 'vatomSpaceId', vatomSpaceId));
    if (returnRawResponse != null) {
      queryParams.addAll(_queryParams('', 'returnRawResponse', returnRawResponse));
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

  /// Delete Vatom Space
  ///
  /// Delete a Vatom space.
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] accountId (required):
  ///   Sirqul Account Id
  ///
  /// * [String] appKey (required):
  ///   Sirqul Application Key
  ///
  /// * [String] vatomSpaceId (required):
  ///   Vatom Space Id
  ///
  /// * [bool] returnRawResponse:
  ///   Return raw response
  Future<void> deleteSpace(num version, int accountId, String appKey, String vatomSpaceId, { bool? returnRawResponse, }) async {
    final response = await deleteSpaceWithHttpInfo(version, accountId, appKey, vatomSpaceId,  returnRawResponse: returnRawResponse, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Delete Vatom Event
  ///
  /// Delete a Vatom event.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] accountId (required):
  ///   Sirqul Account Id
  ///
  /// * [String] appKey (required):
  ///   Sirqul Application Key
  ///
  /// * [String] vatomEventId (required):
  ///   Vatom Event Id
  ///
  /// * [bool] returnRawResponse:
  ///   Return raw response
  Future<Response> deleteVatomEventWithHttpInfo(num version, int accountId, String appKey, String vatomEventId, { bool? returnRawResponse, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/vatom/b/events/delete'
      .replaceAll('{version}', version.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'accountId', accountId));
      queryParams.addAll(_queryParams('', 'appKey', appKey));
      queryParams.addAll(_queryParams('', 'vatomEventId', vatomEventId));
    if (returnRawResponse != null) {
      queryParams.addAll(_queryParams('', 'returnRawResponse', returnRawResponse));
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

  /// Delete Vatom Event
  ///
  /// Delete a Vatom event.
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] accountId (required):
  ///   Sirqul Account Id
  ///
  /// * [String] appKey (required):
  ///   Sirqul Application Key
  ///
  /// * [String] vatomEventId (required):
  ///   Vatom Event Id
  ///
  /// * [bool] returnRawResponse:
  ///   Return raw response
  Future<void> deleteVatomEvent(num version, int accountId, String appKey, String vatomEventId, { bool? returnRawResponse, }) async {
    final response = await deleteVatomEventWithHttpInfo(version, accountId, appKey, vatomEventId,  returnRawResponse: returnRawResponse, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Delete Vatom NFT
  ///
  /// Delete Vatom NFT
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] accountId (required):
  ///   Sirqul Account Id
  ///
  /// * [String] vatomId (required):
  ///   Vatom NFT Id
  ///
  /// * [bool] returnRawResponse:
  ///   Return raw response
  Future<Response> deleteVatomNFTWithHttpInfo(num version, int accountId, String vatomId, { bool? returnRawResponse, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/vatom/vatoms/delete'
      .replaceAll('{version}', version.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'accountId', accountId));
      queryParams.addAll(_queryParams('', 'vatomId', vatomId));
    if (returnRawResponse != null) {
      queryParams.addAll(_queryParams('', 'returnRawResponse', returnRawResponse));
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

  /// Delete Vatom NFT
  ///
  /// Delete Vatom NFT
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] accountId (required):
  ///   Sirqul Account Id
  ///
  /// * [String] vatomId (required):
  ///   Vatom NFT Id
  ///
  /// * [bool] returnRawResponse:
  ///   Return raw response
  Future<void> deleteVatomNFT(num version, int accountId, String vatomId, { bool? returnRawResponse, }) async {
    final response = await deleteVatomNFTWithHttpInfo(version, accountId, vatomId,  returnRawResponse: returnRawResponse, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Execute Action on NFT
  ///
  /// Execute Action on NFT.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] accountId (required):
  ///   Sirqul Account Id
  ///
  /// * [String] vatomId (required):
  ///   Vatom NFT Id
  ///
  /// * [String] vatomParameters (required):
  ///   Vatom Parameters
  ///
  /// * [bool] returnRawResponse:
  ///   Return raw response
  Future<Response> executeActionOnNFTWithHttpInfo(num version, int accountId, String vatomId, String vatomParameters, { bool? returnRawResponse, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/vatom/vatoms/execute-action'
      .replaceAll('{version}', version.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'accountId', accountId));
      queryParams.addAll(_queryParams('', 'vatomId', vatomId));
      queryParams.addAll(_queryParams('', 'vatomParameters', vatomParameters));
    if (returnRawResponse != null) {
      queryParams.addAll(_queryParams('', 'returnRawResponse', returnRawResponse));
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

  /// Execute Action on NFT
  ///
  /// Execute Action on NFT.
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] accountId (required):
  ///   Sirqul Account Id
  ///
  /// * [String] vatomId (required):
  ///   Vatom NFT Id
  ///
  /// * [String] vatomParameters (required):
  ///   Vatom Parameters
  ///
  /// * [bool] returnRawResponse:
  ///   Return raw response
  Future<void> executeActionOnNFT(num version, int accountId, String vatomId, String vatomParameters, { bool? returnRawResponse, }) async {
    final response = await executeActionOnNFTWithHttpInfo(version, accountId, vatomId, vatomParameters,  returnRawResponse: returnRawResponse, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Search Vatom Geo Map
  ///
  /// Search Vatom Geo Map
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] accountId (required):
  ///   Sirqul Account Id
  ///
  /// * [String] vatomParameters (required):
  ///   Vatom Parameters
  ///
  /// * [bool] returnRawResponse:
  ///   Return raw response
  Future<Response> geomapSearchWithHttpInfo(num version, int accountId, String vatomParameters, { bool? returnRawResponse, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/vatom/vatoms/geo-map/search'
      .replaceAll('{version}', version.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'accountId', accountId));
      queryParams.addAll(_queryParams('', 'vatomParameters', vatomParameters));
    if (returnRawResponse != null) {
      queryParams.addAll(_queryParams('', 'returnRawResponse', returnRawResponse));
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

  /// Search Vatom Geo Map
  ///
  /// Search Vatom Geo Map
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] accountId (required):
  ///   Sirqul Account Id
  ///
  /// * [String] vatomParameters (required):
  ///   Vatom Parameters
  ///
  /// * [bool] returnRawResponse:
  ///   Return raw response
  Future<void> geomapSearch(num version, int accountId, String vatomParameters, { bool? returnRawResponse, }) async {
    final response = await geomapSearchWithHttpInfo(version, accountId, vatomParameters,  returnRawResponse: returnRawResponse, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Get Vatom Business Behaviors
  ///
  /// Gets the behaviors of a business.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] accountId (required):
  ///   Sirqul Account Id
  ///
  /// * [String] appKey (required):
  ///   Sirqul Application Key
  ///
  /// * [bool] returnRawResponse:
  ///   Return raw response
  Future<Response> getBusinessBehaviorsWithHttpInfo(num version, int accountId, String appKey, { bool? returnRawResponse, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/vatom/b/behaviors'
      .replaceAll('{version}', version.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'accountId', accountId));
      queryParams.addAll(_queryParams('', 'appKey', appKey));
    if (returnRawResponse != null) {
      queryParams.addAll(_queryParams('', 'returnRawResponse', returnRawResponse));
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

  /// Get Vatom Business Behaviors
  ///
  /// Gets the behaviors of a business.
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] accountId (required):
  ///   Sirqul Account Id
  ///
  /// * [String] appKey (required):
  ///   Sirqul Application Key
  ///
  /// * [bool] returnRawResponse:
  ///   Return raw response
  Future<void> getBusinessBehaviors(num version, int accountId, String appKey, { bool? returnRawResponse, }) async {
    final response = await getBusinessBehaviorsWithHttpInfo(version, accountId, appKey,  returnRawResponse: returnRawResponse, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Get the coins for a Business
  ///
  /// Get the coins for a Businesss.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] accountId (required):
  ///   Sirqul Account Id
  ///
  /// * [String] appKey (required):
  ///   Sirqul Application Key
  ///
  /// * [bool] returnRawResponse:
  ///   Return raw response
  Future<Response> getBusinessCoinsBalanceWithHttpInfo(num version, int accountId, String appKey, { bool? returnRawResponse, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/vatom/b/coins/get'
      .replaceAll('{version}', version.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'accountId', accountId));
      queryParams.addAll(_queryParams('', 'appKey', appKey));
    if (returnRawResponse != null) {
      queryParams.addAll(_queryParams('', 'returnRawResponse', returnRawResponse));
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

  /// Get the coins for a Business
  ///
  /// Get the coins for a Businesss.
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] accountId (required):
  ///   Sirqul Account Id
  ///
  /// * [String] appKey (required):
  ///   Sirqul Application Key
  ///
  /// * [bool] returnRawResponse:
  ///   Return raw response
  Future<void> getBusinessCoinsBalance(num version, int accountId, String appKey, { bool? returnRawResponse, }) async {
    final response = await getBusinessCoinsBalanceWithHttpInfo(version, accountId, appKey,  returnRawResponse: returnRawResponse, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Get the user business ids
  ///
  /// Get the business ids the logged in user has access to.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] accountId (required):
  ///   Sirqul Account Id
  ///
  /// * [bool] returnRawResponse:
  ///   Return raw response
  Future<Response> getBusinessIdsWithHttpInfo(num version, int accountId, { bool? returnRawResponse, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/vatom/me/businesses'
      .replaceAll('{version}', version.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'accountId', accountId));
    if (returnRawResponse != null) {
      queryParams.addAll(_queryParams('', 'returnRawResponse', returnRawResponse));
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

  /// Get the user business ids
  ///
  /// Get the business ids the logged in user has access to.
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] accountId (required):
  ///   Sirqul Account Id
  ///
  /// * [bool] returnRawResponse:
  ///   Return raw response
  Future<void> getBusinessIds(num version, int accountId, { bool? returnRawResponse, }) async {
    final response = await getBusinessIdsWithHttpInfo(version, accountId,  returnRawResponse: returnRawResponse, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Get Vatom Business Info
  ///
  /// Gets the business info tied to this account.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] accountId (required):
  ///   Sirqul Account Id
  ///
  /// * [String] appKey (required):
  ///   Sirqul Application Key
  ///
  /// * [String] vatomParameters:
  ///   Vatom Parameters
  ///
  /// * [bool] returnRawResponse:
  ///   Return raw response
  Future<Response> getBusinessInfoWithHttpInfo(num version, int accountId, String appKey, { String? vatomParameters, bool? returnRawResponse, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/vatom/b/get'
      .replaceAll('{version}', version.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'accountId', accountId));
      queryParams.addAll(_queryParams('', 'appKey', appKey));
    if (vatomParameters != null) {
      queryParams.addAll(_queryParams('', 'vatomParameters', vatomParameters));
    }
    if (returnRawResponse != null) {
      queryParams.addAll(_queryParams('', 'returnRawResponse', returnRawResponse));
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

  /// Get Vatom Business Info
  ///
  /// Gets the business info tied to this account.
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] accountId (required):
  ///   Sirqul Account Id
  ///
  /// * [String] appKey (required):
  ///   Sirqul Application Key
  ///
  /// * [String] vatomParameters:
  ///   Vatom Parameters
  ///
  /// * [bool] returnRawResponse:
  ///   Return raw response
  Future<void> getBusinessInfo(num version, int accountId, String appKey, { String? vatomParameters, bool? returnRawResponse, }) async {
    final response = await getBusinessInfoWithHttpInfo(version, accountId, appKey,  vatomParameters: vatomParameters, returnRawResponse: returnRawResponse, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Get Vatom Business Users
  ///
  /// Gets the users of a business.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] accountId (required):
  ///   Sirqul Account Id
  ///
  /// * [String] appKey (required):
  ///   Sirqul Application Key
  ///
  /// * [bool] returnRawResponse:
  ///   Return raw response
  Future<Response> getBusinessUsersWithHttpInfo(num version, int accountId, String appKey, { bool? returnRawResponse, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/vatom/b/users'
      .replaceAll('{version}', version.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'accountId', accountId));
      queryParams.addAll(_queryParams('', 'appKey', appKey));
    if (returnRawResponse != null) {
      queryParams.addAll(_queryParams('', 'returnRawResponse', returnRawResponse));
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

  /// Get Vatom Business Users
  ///
  /// Gets the users of a business.
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] accountId (required):
  ///   Sirqul Account Id
  ///
  /// * [String] appKey (required):
  ///   Sirqul Application Key
  ///
  /// * [bool] returnRawResponse:
  ///   Return raw response
  Future<void> getBusinessUsers(num version, int accountId, String appKey, { bool? returnRawResponse, }) async {
    final response = await getBusinessUsersWithHttpInfo(version, accountId, appKey,  returnRawResponse: returnRawResponse, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Get Campaign Group Entities
  ///
  /// Get campaign group entities.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] accountId (required):
  ///   Sirqul Account Id
  ///
  /// * [String] appKey (required):
  ///   Sirqul Application Key
  ///
  /// * [String] vatomCampaignId (required):
  ///   Vatom Campaign Id
  ///
  /// * [bool] returnRawResponse:
  ///   Return raw response
  Future<Response> getCampaignGroupEntitiesWithHttpInfo(num version, int accountId, String appKey, String vatomCampaignId, { bool? returnRawResponse, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/vatom/b/campaign-groups/entities'
      .replaceAll('{version}', version.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'accountId', accountId));
      queryParams.addAll(_queryParams('', 'appKey', appKey));
      queryParams.addAll(_queryParams('', 'vatomCampaignId', vatomCampaignId));
    if (returnRawResponse != null) {
      queryParams.addAll(_queryParams('', 'returnRawResponse', returnRawResponse));
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

  /// Get Campaign Group Entities
  ///
  /// Get campaign group entities.
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] accountId (required):
  ///   Sirqul Account Id
  ///
  /// * [String] appKey (required):
  ///   Sirqul Application Key
  ///
  /// * [String] vatomCampaignId (required):
  ///   Vatom Campaign Id
  ///
  /// * [bool] returnRawResponse:
  ///   Return raw response
  Future<void> getCampaignGroupEntities(num version, int accountId, String appKey, String vatomCampaignId, { bool? returnRawResponse, }) async {
    final response = await getCampaignGroupEntitiesWithHttpInfo(version, accountId, appKey, vatomCampaignId,  returnRawResponse: returnRawResponse, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Get Campaign Group Rules
  ///
  /// Get campaign group rules.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] accountId (required):
  ///   Sirqul Account Id
  ///
  /// * [String] appKey (required):
  ///   Sirqul Application Key
  ///
  /// * [String] vatomCampaignId (required):
  ///   Vatom Campaign Id
  ///
  /// * [bool] returnRawResponse:
  ///   Return raw response
  Future<Response> getCampaignGroupRulesWithHttpInfo(num version, int accountId, String appKey, String vatomCampaignId, { bool? returnRawResponse, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/vatom/b/campaign-groups/rules'
      .replaceAll('{version}', version.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'accountId', accountId));
      queryParams.addAll(_queryParams('', 'appKey', appKey));
      queryParams.addAll(_queryParams('', 'vatomCampaignId', vatomCampaignId));
    if (returnRawResponse != null) {
      queryParams.addAll(_queryParams('', 'returnRawResponse', returnRawResponse));
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

  /// Get Campaign Group Rules
  ///
  /// Get campaign group rules.
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] accountId (required):
  ///   Sirqul Account Id
  ///
  /// * [String] appKey (required):
  ///   Sirqul Application Key
  ///
  /// * [String] vatomCampaignId (required):
  ///   Vatom Campaign Id
  ///
  /// * [bool] returnRawResponse:
  ///   Return raw response
  Future<void> getCampaignGroupRules(num version, int accountId, String appKey, String vatomCampaignId, { bool? returnRawResponse, }) async {
    final response = await getCampaignGroupRulesWithHttpInfo(version, accountId, appKey, vatomCampaignId,  returnRawResponse: returnRawResponse, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Get Campaign Group Stats
  ///
  /// Get campaign group stats.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] accountId (required):
  ///   Sirqul Account Id
  ///
  /// * [String] appKey (required):
  ///   Sirqul Application Key
  ///
  /// * [String] vatomCampaignId (required):
  ///   Vatom Campaign Id
  ///
  /// * [bool] returnRawResponse:
  ///   Return raw response
  Future<Response> getCampaignGroupStatsWithHttpInfo(num version, int accountId, String appKey, String vatomCampaignId, { bool? returnRawResponse, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/vatom/b/campaign-groups/stats'
      .replaceAll('{version}', version.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'accountId', accountId));
      queryParams.addAll(_queryParams('', 'appKey', appKey));
      queryParams.addAll(_queryParams('', 'vatomCampaignId', vatomCampaignId));
    if (returnRawResponse != null) {
      queryParams.addAll(_queryParams('', 'returnRawResponse', returnRawResponse));
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

  /// Get Campaign Group Stats
  ///
  /// Get campaign group stats.
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] accountId (required):
  ///   Sirqul Account Id
  ///
  /// * [String] appKey (required):
  ///   Sirqul Application Key
  ///
  /// * [String] vatomCampaignId (required):
  ///   Vatom Campaign Id
  ///
  /// * [bool] returnRawResponse:
  ///   Return raw response
  Future<void> getCampaignGroupStats(num version, int accountId, String appKey, String vatomCampaignId, { bool? returnRawResponse, }) async {
    final response = await getCampaignGroupStatsWithHttpInfo(version, accountId, appKey, vatomCampaignId,  returnRawResponse: returnRawResponse, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Get Campaign Info
  ///
  /// Gets the info on a campaign.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] accountId (required):
  ///   Sirqul Account Id
  ///
  /// * [String] appKey (required):
  ///   Sirqul Application Key
  ///
  /// * [String] vatomCampaignId (required):
  ///   Vatom Campaign Id
  ///
  /// * [bool] returnRawResponse:
  ///   Return raw response
  Future<Response> getCampaignInfoWithHttpInfo(num version, int accountId, String appKey, String vatomCampaignId, { bool? returnRawResponse, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/vatom/b/campaign-groups/get'
      .replaceAll('{version}', version.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'accountId', accountId));
      queryParams.addAll(_queryParams('', 'appKey', appKey));
      queryParams.addAll(_queryParams('', 'vatomCampaignId', vatomCampaignId));
    if (returnRawResponse != null) {
      queryParams.addAll(_queryParams('', 'returnRawResponse', returnRawResponse));
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

  /// Get Campaign Info
  ///
  /// Gets the info on a campaign.
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] accountId (required):
  ///   Sirqul Account Id
  ///
  /// * [String] appKey (required):
  ///   Sirqul Application Key
  ///
  /// * [String] vatomCampaignId (required):
  ///   Vatom Campaign Id
  ///
  /// * [bool] returnRawResponse:
  ///   Return raw response
  Future<void> getCampaignInfo(num version, int accountId, String appKey, String vatomCampaignId, { bool? returnRawResponse, }) async {
    final response = await getCampaignInfoWithHttpInfo(version, accountId, appKey, vatomCampaignId,  returnRawResponse: returnRawResponse, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Get Vatom Event Guest List
  ///
  /// Gets the guest list of an event.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] accountId (required):
  ///   Sirqul Account Id
  ///
  /// * [String] appKey (required):
  ///   Sirqul Application Key
  ///
  /// * [String] vatomEventId (required):
  ///   Vatom Event Id
  ///
  /// * [bool] returnRawResponse:
  ///   Return raw response
  Future<Response> getEventGuestListWithHttpInfo(num version, int accountId, String appKey, String vatomEventId, { bool? returnRawResponse, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/vatom/b/events/guests/get'
      .replaceAll('{version}', version.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'accountId', accountId));
      queryParams.addAll(_queryParams('', 'appKey', appKey));
      queryParams.addAll(_queryParams('', 'vatomEventId', vatomEventId));
    if (returnRawResponse != null) {
      queryParams.addAll(_queryParams('', 'returnRawResponse', returnRawResponse));
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

  /// Get Vatom Event Guest List
  ///
  /// Gets the guest list of an event.
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] accountId (required):
  ///   Sirqul Account Id
  ///
  /// * [String] appKey (required):
  ///   Sirqul Application Key
  ///
  /// * [String] vatomEventId (required):
  ///   Vatom Event Id
  ///
  /// * [bool] returnRawResponse:
  ///   Return raw response
  Future<void> getEventGuestList(num version, int accountId, String appKey, String vatomEventId, { bool? returnRawResponse, }) async {
    final response = await getEventGuestListWithHttpInfo(version, accountId, appKey, vatomEventId,  returnRawResponse: returnRawResponse, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Get Vatom User's Inventory
  ///
  /// Gets the logged in user's Vatom Inventory.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] accountId (required):
  ///   Sirqul Account Id
  ///
  /// * [String] vatomParameters (required):
  ///   Vatom Parameters
  ///
  /// * [bool] returnRawResponse:
  ///   Return raw response
  Future<Response> getInventoryWithHttpInfo(num version, int accountId, String vatomParameters, { bool? returnRawResponse, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/vatom/me/inventory'
      .replaceAll('{version}', version.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'accountId', accountId));
      queryParams.addAll(_queryParams('', 'vatomParameters', vatomParameters));
    if (returnRawResponse != null) {
      queryParams.addAll(_queryParams('', 'returnRawResponse', returnRawResponse));
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

  /// Get Vatom User's Inventory
  ///
  /// Gets the logged in user's Vatom Inventory.
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] accountId (required):
  ///   Sirqul Account Id
  ///
  /// * [String] vatomParameters (required):
  ///   Vatom Parameters
  ///
  /// * [bool] returnRawResponse:
  ///   Return raw response
  Future<void> getInventory(num version, int accountId, String vatomParameters, { bool? returnRawResponse, }) async {
    final response = await getInventoryWithHttpInfo(version, accountId, vatomParameters,  returnRawResponse: returnRawResponse, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Get following
  ///
  /// Get following.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] accountId (required):
  ///   Sirqul Account Id
  ///
  /// * [bool] returnRawResponse:
  ///   Return raw response
  Future<Response> getMyFollowingWithHttpInfo(num version, int accountId, { bool? returnRawResponse, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/vatom/me/rels/following'
      .replaceAll('{version}', version.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'accountId', accountId));
    if (returnRawResponse != null) {
      queryParams.addAll(_queryParams('', 'returnRawResponse', returnRawResponse));
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

  /// Get following
  ///
  /// Get following.
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] accountId (required):
  ///   Sirqul Account Id
  ///
  /// * [bool] returnRawResponse:
  ///   Return raw response
  Future<void> getMyFollowing(num version, int accountId, { bool? returnRawResponse, }) async {
    final response = await getMyFollowingWithHttpInfo(version, accountId,  returnRawResponse: returnRawResponse, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Get Points Balance
  ///
  /// Gets the points balance of a Vatom user.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] accountId (required):
  ///   Sirqul Account Id
  ///
  /// * [String] vatomUserId (required):
  ///   Vatom User Id
  ///
  /// * [String] vatomCampaignId (required):
  ///   Vatom Campaign Id
  ///
  /// * [bool] returnRawResponse:
  ///   Return raw response
  Future<Response> getPointsBalanceWithHttpInfo(num version, int accountId, String vatomUserId, String vatomCampaignId, { bool? returnRawResponse, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/vatom/u/campaign/points/get'
      .replaceAll('{version}', version.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'accountId', accountId));
      queryParams.addAll(_queryParams('', 'vatomUserId', vatomUserId));
      queryParams.addAll(_queryParams('', 'vatomCampaignId', vatomCampaignId));
    if (returnRawResponse != null) {
      queryParams.addAll(_queryParams('', 'returnRawResponse', returnRawResponse));
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

  /// Get Points Balance
  ///
  /// Gets the points balance of a Vatom user.
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] accountId (required):
  ///   Sirqul Account Id
  ///
  /// * [String] vatomUserId (required):
  ///   Vatom User Id
  ///
  /// * [String] vatomCampaignId (required):
  ///   Vatom Campaign Id
  ///
  /// * [bool] returnRawResponse:
  ///   Return raw response
  Future<void> getPointsBalance(num version, int accountId, String vatomUserId, String vatomCampaignId, { bool? returnRawResponse, }) async {
    final response = await getPointsBalanceWithHttpInfo(version, accountId, vatomUserId, vatomCampaignId,  returnRawResponse: returnRawResponse, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Get Points Balance as Business
  ///
  /// Gets the points balance of a Vatom user.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] accountId (required):
  ///   Sirqul Account Id
  ///
  /// * [String] appKey (required):
  ///   Sirqul Application Key
  ///
  /// * [String] vatomUserId (required):
  ///   Vatom User Id
  ///
  /// * [String] vatomCampaignId (required):
  ///   Vatom Campaign Id
  ///
  /// * [bool] returnRawResponse:
  ///   Return raw response
  Future<Response> getPointsBalanceAsBusinessWithHttpInfo(num version, int accountId, String appKey, String vatomUserId, String vatomCampaignId, { bool? returnRawResponse, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/vatom/b/campaign/u/points/get'
      .replaceAll('{version}', version.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'accountId', accountId));
      queryParams.addAll(_queryParams('', 'appKey', appKey));
      queryParams.addAll(_queryParams('', 'vatomUserId', vatomUserId));
      queryParams.addAll(_queryParams('', 'vatomCampaignId', vatomCampaignId));
    if (returnRawResponse != null) {
      queryParams.addAll(_queryParams('', 'returnRawResponse', returnRawResponse));
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

  /// Get Points Balance as Business
  ///
  /// Gets the points balance of a Vatom user.
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] accountId (required):
  ///   Sirqul Account Id
  ///
  /// * [String] appKey (required):
  ///   Sirqul Application Key
  ///
  /// * [String] vatomUserId (required):
  ///   Vatom User Id
  ///
  /// * [String] vatomCampaignId (required):
  ///   Vatom Campaign Id
  ///
  /// * [bool] returnRawResponse:
  ///   Return raw response
  Future<void> getPointsBalanceAsBusiness(num version, int accountId, String appKey, String vatomUserId, String vatomCampaignId, { bool? returnRawResponse, }) async {
    final response = await getPointsBalanceAsBusinessWithHttpInfo(version, accountId, appKey, vatomUserId, vatomCampaignId,  returnRawResponse: returnRawResponse, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Get Vatom Space
  ///
  /// Gets the details of a space.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] accountId (required):
  ///   Sirqul Account Id
  ///
  /// * [String] appKey (required):
  ///   Sirqul Application Key
  ///
  /// * [String] vatomSpaceId (required):
  ///   Vatom Space Id
  ///
  /// * [bool] returnRawResponse:
  ///   Return raw response
  Future<Response> getSpaceWithHttpInfo(num version, int accountId, String appKey, String vatomSpaceId, { bool? returnRawResponse, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/vatom/b/spaces/get'
      .replaceAll('{version}', version.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'accountId', accountId));
      queryParams.addAll(_queryParams('', 'appKey', appKey));
      queryParams.addAll(_queryParams('', 'vatomSpaceId', vatomSpaceId));
    if (returnRawResponse != null) {
      queryParams.addAll(_queryParams('', 'returnRawResponse', returnRawResponse));
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

  /// Get Vatom Space
  ///
  /// Gets the details of a space.
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] accountId (required):
  ///   Sirqul Account Id
  ///
  /// * [String] appKey (required):
  ///   Sirqul Application Key
  ///
  /// * [String] vatomSpaceId (required):
  ///   Vatom Space Id
  ///
  /// * [bool] returnRawResponse:
  ///   Return raw response
  Future<void> getSpace(num version, int accountId, String appKey, String vatomSpaceId, { bool? returnRawResponse, }) async {
    final response = await getSpaceWithHttpInfo(version, accountId, appKey, vatomSpaceId,  returnRawResponse: returnRawResponse, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Get the coins for a user (as a Business)
  ///
  /// Get the coins for a user (as a Business).
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] accountId (required):
  ///   Sirqul Account Id
  ///
  /// * [String] vatomUserId (required):
  ///   Vatom User Id
  ///
  /// * [String] appKey (required):
  ///   Sirqul Application Key
  ///
  /// * [bool] returnRawResponse:
  ///   Return raw response
  Future<Response> getUserCoinsAsBusinessWithHttpInfo(num version, int accountId, String vatomUserId, String appKey, { bool? returnRawResponse, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/vatom/b/users/coins/get'
      .replaceAll('{version}', version.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'accountId', accountId));
      queryParams.addAll(_queryParams('', 'vatomUserId', vatomUserId));
      queryParams.addAll(_queryParams('', 'appKey', appKey));
    if (returnRawResponse != null) {
      queryParams.addAll(_queryParams('', 'returnRawResponse', returnRawResponse));
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

  /// Get the coins for a user (as a Business)
  ///
  /// Get the coins for a user (as a Business).
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] accountId (required):
  ///   Sirqul Account Id
  ///
  /// * [String] vatomUserId (required):
  ///   Vatom User Id
  ///
  /// * [String] appKey (required):
  ///   Sirqul Application Key
  ///
  /// * [bool] returnRawResponse:
  ///   Return raw response
  Future<void> getUserCoinsAsBusiness(num version, int accountId, String vatomUserId, String appKey, { bool? returnRawResponse, }) async {
    final response = await getUserCoinsAsBusinessWithHttpInfo(version, accountId, vatomUserId, appKey,  returnRawResponse: returnRawResponse, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Gets the coins balance for a Vatom User
  ///
  /// Gets the coins balance for a Vatom User.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] accountId (required):
  ///   Sirqul Account Id
  ///
  /// * [String] vatomUserId (required):
  ///   Vatom User Id
  ///
  /// * [String] vatomParameters:
  ///   Vatom Parameters
  ///
  /// * [bool] returnRawResponse:
  ///   Return raw response
  Future<Response> getUserCoinsBalanceWithHttpInfo(num version, int accountId, String vatomUserId, { String? vatomParameters, bool? returnRawResponse, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/vatom/u/coins/get'
      .replaceAll('{version}', version.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'accountId', accountId));
      queryParams.addAll(_queryParams('', 'vatomUserId', vatomUserId));
    if (vatomParameters != null) {
      queryParams.addAll(_queryParams('', 'vatomParameters', vatomParameters));
    }
    if (returnRawResponse != null) {
      queryParams.addAll(_queryParams('', 'returnRawResponse', returnRawResponse));
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

  /// Gets the coins balance for a Vatom User
  ///
  /// Gets the coins balance for a Vatom User.
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] accountId (required):
  ///   Sirqul Account Id
  ///
  /// * [String] vatomUserId (required):
  ///   Vatom User Id
  ///
  /// * [String] vatomParameters:
  ///   Vatom Parameters
  ///
  /// * [bool] returnRawResponse:
  ///   Return raw response
  Future<void> getUserCoinsBalance(num version, int accountId, String vatomUserId, { String? vatomParameters, bool? returnRawResponse, }) async {
    final response = await getUserCoinsBalanceWithHttpInfo(version, accountId, vatomUserId,  vatomParameters: vatomParameters, returnRawResponse: returnRawResponse, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Get user followers
  ///
  /// Get user followers.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] accountId (required):
  ///   Sirqul Account Id
  ///
  /// * [String] vatomUserId (required):
  ///   Vatom User Id
  ///
  /// * [bool] returnRawResponse:
  ///   Return raw response
  Future<Response> getUserFollowersWithHttpInfo(num version, int accountId, String vatomUserId, { bool? returnRawResponse, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/vatom/users/rels/followers'
      .replaceAll('{version}', version.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'accountId', accountId));
      queryParams.addAll(_queryParams('', 'vatomUserId', vatomUserId));
    if (returnRawResponse != null) {
      queryParams.addAll(_queryParams('', 'returnRawResponse', returnRawResponse));
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

  /// Get user followers
  ///
  /// Get user followers.
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] accountId (required):
  ///   Sirqul Account Id
  ///
  /// * [String] vatomUserId (required):
  ///   Vatom User Id
  ///
  /// * [bool] returnRawResponse:
  ///   Return raw response
  Future<void> getUserFollowers(num version, int accountId, String vatomUserId, { bool? returnRawResponse, }) async {
    final response = await getUserFollowersWithHttpInfo(version, accountId, vatomUserId,  returnRawResponse: returnRawResponse, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Get user following
  ///
  /// Get user following.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] accountId (required):
  ///   Sirqul Account Id
  ///
  /// * [String] vatomUserId (required):
  ///   Vatom User Id
  ///
  /// * [bool] returnRawResponse:
  ///   Return raw response
  Future<Response> getUserFollowingWithHttpInfo(num version, int accountId, String vatomUserId, { bool? returnRawResponse, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/vatom/users/rels/following'
      .replaceAll('{version}', version.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'accountId', accountId));
      queryParams.addAll(_queryParams('', 'vatomUserId', vatomUserId));
    if (returnRawResponse != null) {
      queryParams.addAll(_queryParams('', 'returnRawResponse', returnRawResponse));
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

  /// Get user following
  ///
  /// Get user following.
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] accountId (required):
  ///   Sirqul Account Id
  ///
  /// * [String] vatomUserId (required):
  ///   Vatom User Id
  ///
  /// * [bool] returnRawResponse:
  ///   Return raw response
  Future<void> getUserFollowing(num version, int accountId, String vatomUserId, { bool? returnRawResponse, }) async {
    final response = await getUserFollowingWithHttpInfo(version, accountId, vatomUserId,  returnRawResponse: returnRawResponse, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Get User Info
  ///
  /// Get a User's Info.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] accountId (required):
  ///   Sirqul Account Id
  ///
  /// * [String] vatomUserId (required):
  ///   Vatom User Id
  ///
  /// * [bool] returnRawResponse:
  ///   Return raw response
  Future<Response> getUserInfoWithHttpInfo(num version, int accountId, String vatomUserId, { bool? returnRawResponse, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/vatom/user/get'
      .replaceAll('{version}', version.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'accountId', accountId));
      queryParams.addAll(_queryParams('', 'vatomUserId', vatomUserId));
    if (returnRawResponse != null) {
      queryParams.addAll(_queryParams('', 'returnRawResponse', returnRawResponse));
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

  /// Get User Info
  ///
  /// Get a User's Info.
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] accountId (required):
  ///   Sirqul Account Id
  ///
  /// * [String] vatomUserId (required):
  ///   Vatom User Id
  ///
  /// * [bool] returnRawResponse:
  ///   Return raw response
  Future<void> getUserInfo(num version, int accountId, String vatomUserId, { bool? returnRawResponse, }) async {
    final response = await getUserInfoWithHttpInfo(version, accountId, vatomUserId,  returnRawResponse: returnRawResponse, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Get Vatom User Profile
  ///
  /// Gets the logged in user's profile in Vatom.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] accountId (required):
  ///   Sirqul Account Id
  ///
  /// * [bool] returnRawResponse:
  ///   Return raw response
  Future<Response> getUserProfileWithHttpInfo(num version, int accountId, { bool? returnRawResponse, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/vatom/me/get'
      .replaceAll('{version}', version.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'accountId', accountId));
    if (returnRawResponse != null) {
      queryParams.addAll(_queryParams('', 'returnRawResponse', returnRawResponse));
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

  /// Get Vatom User Profile
  ///
  /// Gets the logged in user's profile in Vatom.
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] accountId (required):
  ///   Sirqul Account Id
  ///
  /// * [bool] returnRawResponse:
  ///   Return raw response
  Future<void> getUserProfile(num version, int accountId, { bool? returnRawResponse, }) async {
    final response = await getUserProfileWithHttpInfo(version, accountId,  returnRawResponse: returnRawResponse, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Get Vatom Event
  ///
  /// Gets the details of a event.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] accountId (required):
  ///   Sirqul Account Id
  ///
  /// * [String] appKey (required):
  ///   Sirqul Application Key
  ///
  /// * [String] vatomEventId (required):
  ///   Vatom Event Id
  ///
  /// * [bool] returnRawResponse:
  ///   Return raw response
  Future<Response> getVatomEventWithHttpInfo(num version, int accountId, String appKey, String vatomEventId, { bool? returnRawResponse, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/vatom/b/events/get'
      .replaceAll('{version}', version.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'accountId', accountId));
      queryParams.addAll(_queryParams('', 'appKey', appKey));
      queryParams.addAll(_queryParams('', 'vatomEventId', vatomEventId));
    if (returnRawResponse != null) {
      queryParams.addAll(_queryParams('', 'returnRawResponse', returnRawResponse));
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

  /// Get Vatom Event
  ///
  /// Gets the details of a event.
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] accountId (required):
  ///   Sirqul Account Id
  ///
  /// * [String] appKey (required):
  ///   Sirqul Application Key
  ///
  /// * [String] vatomEventId (required):
  ///   Vatom Event Id
  ///
  /// * [bool] returnRawResponse:
  ///   Return raw response
  Future<void> getVatomEvent(num version, int accountId, String appKey, String vatomEventId, { bool? returnRawResponse, }) async {
    final response = await getVatomEventWithHttpInfo(version, accountId, appKey, vatomEventId,  returnRawResponse: returnRawResponse, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Get Vatom NFT Details
  ///
  /// Get Vatom NFT Details
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] accountId (required):
  ///   Sirqul Account Id
  ///
  /// * [String] vatomId (required):
  ///   Vatom NFT Id
  ///
  /// * [bool] returnRawResponse:
  ///   Return raw response
  Future<Response> getVatomNFTWithHttpInfo(num version, int accountId, String vatomId, { bool? returnRawResponse, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/vatom/vatoms/get'
      .replaceAll('{version}', version.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'accountId', accountId));
      queryParams.addAll(_queryParams('', 'vatomId', vatomId));
    if (returnRawResponse != null) {
      queryParams.addAll(_queryParams('', 'returnRawResponse', returnRawResponse));
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

  /// Get Vatom NFT Details
  ///
  /// Get Vatom NFT Details
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] accountId (required):
  ///   Sirqul Account Id
  ///
  /// * [String] vatomId (required):
  ///   Vatom NFT Id
  ///
  /// * [bool] returnRawResponse:
  ///   Return raw response
  Future<void> getVatomNFT(num version, int accountId, String vatomId, { bool? returnRawResponse, }) async {
    final response = await getVatomNFTWithHttpInfo(version, accountId, vatomId,  returnRawResponse: returnRawResponse, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// List Vatom Communities
  ///
  /// Gets the communities tied to a business.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] accountId (required):
  ///   Sirqul Account Id
  ///
  /// * [String] appKey (required):
  ///   Sirqul Application Key
  ///
  /// * [String] vatomParameters:
  ///   Vatom Parameters
  ///
  /// * [bool] returnRawResponse:
  ///   Return raw response
  Future<Response> listCommunitiesWithHttpInfo(num version, int accountId, String appKey, { String? vatomParameters, bool? returnRawResponse, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/vatom/b/communities/search'
      .replaceAll('{version}', version.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'accountId', accountId));
      queryParams.addAll(_queryParams('', 'appKey', appKey));
    if (vatomParameters != null) {
      queryParams.addAll(_queryParams('', 'vatomParameters', vatomParameters));
    }
    if (returnRawResponse != null) {
      queryParams.addAll(_queryParams('', 'returnRawResponse', returnRawResponse));
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

  /// List Vatom Communities
  ///
  /// Gets the communities tied to a business.
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] accountId (required):
  ///   Sirqul Account Id
  ///
  /// * [String] appKey (required):
  ///   Sirqul Application Key
  ///
  /// * [String] vatomParameters:
  ///   Vatom Parameters
  ///
  /// * [bool] returnRawResponse:
  ///   Return raw response
  Future<void> listCommunities(num version, int accountId, String appKey, { String? vatomParameters, bool? returnRawResponse, }) async {
    final response = await listCommunitiesWithHttpInfo(version, accountId, appKey,  vatomParameters: vatomParameters, returnRawResponse: returnRawResponse, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// List Vatom Events
  ///
  /// Gets the events tied to a business.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] accountId (required):
  ///   Sirqul Account Id
  ///
  /// * [String] appKey (required):
  ///   Sirqul Application Key
  ///
  /// * [String] vatomParameters:
  ///   Vatom Parameters
  ///
  /// * [bool] returnRawResponse:
  ///   Return raw response
  Future<Response> listEventsWithHttpInfo(num version, int accountId, String appKey, { String? vatomParameters, bool? returnRawResponse, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/vatom/b/events/search'
      .replaceAll('{version}', version.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'accountId', accountId));
      queryParams.addAll(_queryParams('', 'appKey', appKey));
    if (vatomParameters != null) {
      queryParams.addAll(_queryParams('', 'vatomParameters', vatomParameters));
    }
    if (returnRawResponse != null) {
      queryParams.addAll(_queryParams('', 'returnRawResponse', returnRawResponse));
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

  /// List Vatom Events
  ///
  /// Gets the events tied to a business.
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] accountId (required):
  ///   Sirqul Account Id
  ///
  /// * [String] appKey (required):
  ///   Sirqul Application Key
  ///
  /// * [String] vatomParameters:
  ///   Vatom Parameters
  ///
  /// * [bool] returnRawResponse:
  ///   Return raw response
  Future<void> listEvents(num version, int accountId, String appKey, { String? vatomParameters, bool? returnRawResponse, }) async {
    final response = await listEventsWithHttpInfo(version, accountId, appKey,  vatomParameters: vatomParameters, returnRawResponse: returnRawResponse, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// List Vatom Spaces
  ///
  /// Gets the spaces tied to a business.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] accountId (required):
  ///   Sirqul Account Id
  ///
  /// * [String] appKey (required):
  ///   Sirqul Application Key
  ///
  /// * [String] vatomParameters:
  ///   Vatom Parameters
  ///
  /// * [bool] returnRawResponse:
  ///   Return raw response
  Future<Response> listSpacesWithHttpInfo(num version, int accountId, String appKey, { String? vatomParameters, bool? returnRawResponse, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/vatom/b/spaces/search'
      .replaceAll('{version}', version.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'accountId', accountId));
      queryParams.addAll(_queryParams('', 'appKey', appKey));
    if (vatomParameters != null) {
      queryParams.addAll(_queryParams('', 'vatomParameters', vatomParameters));
    }
    if (returnRawResponse != null) {
      queryParams.addAll(_queryParams('', 'returnRawResponse', returnRawResponse));
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

  /// List Vatom Spaces
  ///
  /// Gets the spaces tied to a business.
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] accountId (required):
  ///   Sirqul Account Id
  ///
  /// * [String] appKey (required):
  ///   Sirqul Application Key
  ///
  /// * [String] vatomParameters:
  ///   Vatom Parameters
  ///
  /// * [bool] returnRawResponse:
  ///   Return raw response
  Future<void> listSpaces(num version, int accountId, String appKey, { String? vatomParameters, bool? returnRawResponse, }) async {
    final response = await listSpacesWithHttpInfo(version, accountId, appKey,  vatomParameters: vatomParameters, returnRawResponse: returnRawResponse, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// List Coin Transactions for a Vatom User
  ///
  /// Gets the logged in user's Vatom coin transactions.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] accountId (required):
  ///   Sirqul Account Id
  ///
  /// * [String] vatomUserId (required):
  ///   Vatom User Id
  ///
  /// * [String] vatomParameters:
  ///   Vatom Parameters
  ///
  /// * [bool] returnRawResponse:
  ///   Return raw response
  Future<Response> listUserCoinTransactionsWithHttpInfo(num version, int accountId, String vatomUserId, { String? vatomParameters, bool? returnRawResponse, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/vatom/u/coins/txns/search'
      .replaceAll('{version}', version.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'accountId', accountId));
      queryParams.addAll(_queryParams('', 'vatomUserId', vatomUserId));
    if (vatomParameters != null) {
      queryParams.addAll(_queryParams('', 'vatomParameters', vatomParameters));
    }
    if (returnRawResponse != null) {
      queryParams.addAll(_queryParams('', 'returnRawResponse', returnRawResponse));
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

  /// List Coin Transactions for a Vatom User
  ///
  /// Gets the logged in user's Vatom coin transactions.
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] accountId (required):
  ///   Sirqul Account Id
  ///
  /// * [String] vatomUserId (required):
  ///   Vatom User Id
  ///
  /// * [String] vatomParameters:
  ///   Vatom Parameters
  ///
  /// * [bool] returnRawResponse:
  ///   Return raw response
  Future<void> listUserCoinTransactions(num version, int accountId, String vatomUserId, { String? vatomParameters, bool? returnRawResponse, }) async {
    final response = await listUserCoinTransactionsWithHttpInfo(version, accountId, vatomUserId,  vatomParameters: vatomParameters, returnRawResponse: returnRawResponse, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// List coin transactions for a user (as a Business)
  ///
  /// List coin transactions for a user (as a Business).
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] accountId (required):
  ///   Sirqul Account Id
  ///
  /// * [String] vatomUserId (required):
  ///   Vatom User Id
  ///
  /// * [String] appKey (required):
  ///   Sirqul Application Key
  ///
  /// * [String] vatomParameters:
  ///   Vatom Parameters
  ///
  /// * [bool] returnRawResponse:
  ///   Return raw response
  Future<Response> listUserCoinTransactionsAsBusinessWithHttpInfo(num version, int accountId, String vatomUserId, String appKey, { String? vatomParameters, bool? returnRawResponse, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/vatom/b/users/coins/txns/search'
      .replaceAll('{version}', version.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'accountId', accountId));
      queryParams.addAll(_queryParams('', 'vatomUserId', vatomUserId));
      queryParams.addAll(_queryParams('', 'appKey', appKey));
    if (vatomParameters != null) {
      queryParams.addAll(_queryParams('', 'vatomParameters', vatomParameters));
    }
    if (returnRawResponse != null) {
      queryParams.addAll(_queryParams('', 'returnRawResponse', returnRawResponse));
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

  /// List coin transactions for a user (as a Business)
  ///
  /// List coin transactions for a user (as a Business).
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] accountId (required):
  ///   Sirqul Account Id
  ///
  /// * [String] vatomUserId (required):
  ///   Vatom User Id
  ///
  /// * [String] appKey (required):
  ///   Sirqul Application Key
  ///
  /// * [String] vatomParameters:
  ///   Vatom Parameters
  ///
  /// * [bool] returnRawResponse:
  ///   Return raw response
  Future<void> listUserCoinTransactionsAsBusiness(num version, int accountId, String vatomUserId, String appKey, { String? vatomParameters, bool? returnRawResponse, }) async {
    final response = await listUserCoinTransactionsAsBusinessWithHttpInfo(version, accountId, vatomUserId, appKey,  vatomParameters: vatomParameters, returnRawResponse: returnRawResponse, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Perform Action on NFT
  ///
  /// Perform Action on NFT.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] accountId (required):
  ///   Sirqul Account Id
  ///
  /// * [String] vatomId (required):
  ///   Vatom NFT Id
  ///
  /// * [String] vatomAction (required):
  ///   Vatom Action
  ///
  /// * [String] vatomParameters (required):
  ///   Vatom Parameters
  ///
  /// * [bool] returnRawResponse:
  ///   Return raw response
  Future<Response> performActionOnNFTWithHttpInfo(num version, int accountId, String vatomId, String vatomAction, String vatomParameters, { bool? returnRawResponse, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/vatom/me/vatoms/actions'
      .replaceAll('{version}', version.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'accountId', accountId));
      queryParams.addAll(_queryParams('', 'vatomId', vatomId));
      queryParams.addAll(_queryParams('', 'vatomAction', vatomAction));
      queryParams.addAll(_queryParams('', 'vatomParameters', vatomParameters));
    if (returnRawResponse != null) {
      queryParams.addAll(_queryParams('', 'returnRawResponse', returnRawResponse));
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

  /// Perform Action on NFT
  ///
  /// Perform Action on NFT.
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] accountId (required):
  ///   Sirqul Account Id
  ///
  /// * [String] vatomId (required):
  ///   Vatom NFT Id
  ///
  /// * [String] vatomAction (required):
  ///   Vatom Action
  ///
  /// * [String] vatomParameters (required):
  ///   Vatom Parameters
  ///
  /// * [bool] returnRawResponse:
  ///   Return raw response
  Future<void> performActionOnNFT(num version, int accountId, String vatomId, String vatomAction, String vatomParameters, { bool? returnRawResponse, }) async {
    final response = await performActionOnNFTWithHttpInfo(version, accountId, vatomId, vatomAction, vatomParameters,  returnRawResponse: returnRawResponse, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Redeem NFT
  ///
  /// Redeem an NFT.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] accountId (required):
  ///   Sirqul Account Id
  ///
  /// * [String] appKey (required):
  ///   Sirqul Application Key
  ///
  /// * [String] vatomParameters (required):
  ///   Vatom Parameters
  ///
  /// * [bool] returnRawResponse:
  ///   Return raw response
  Future<Response> redeemNFTWithHttpInfo(num version, int accountId, String appKey, String vatomParameters, { bool? returnRawResponse, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/vatom/b/redemptions'
      .replaceAll('{version}', version.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'accountId', accountId));
      queryParams.addAll(_queryParams('', 'appKey', appKey));
      queryParams.addAll(_queryParams('', 'vatomParameters', vatomParameters));
    if (returnRawResponse != null) {
      queryParams.addAll(_queryParams('', 'returnRawResponse', returnRawResponse));
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

  /// Redeem NFT
  ///
  /// Redeem an NFT.
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] accountId (required):
  ///   Sirqul Account Id
  ///
  /// * [String] appKey (required):
  ///   Sirqul Application Key
  ///
  /// * [String] vatomParameters (required):
  ///   Vatom Parameters
  ///
  /// * [bool] returnRawResponse:
  ///   Return raw response
  Future<void> redeemNFT(num version, int accountId, String appKey, String vatomParameters, { bool? returnRawResponse, }) async {
    final response = await redeemNFTWithHttpInfo(version, accountId, appKey, vatomParameters,  returnRawResponse: returnRawResponse, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Redeem the coins for a user (as a Business)
  ///
  /// Redeem the coins for a user (as a Business).
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] accountId (required):
  ///   Sirqul Account Id
  ///
  /// * [String] vatomUserId (required):
  ///   Vatom User Id
  ///
  /// * [String] appKey (required):
  ///   Sirqul Application Key
  ///
  /// * [String] vatomParameters (required):
  ///   Vatom Parameters
  ///
  /// * [bool] returnRawResponse:
  ///   Return raw response
  Future<Response> redeemUserCoinsAsBusinessWithHttpInfo(num version, int accountId, String vatomUserId, String appKey, String vatomParameters, { bool? returnRawResponse, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/vatom/b/users/coins/redeem'
      .replaceAll('{version}', version.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'accountId', accountId));
      queryParams.addAll(_queryParams('', 'vatomUserId', vatomUserId));
      queryParams.addAll(_queryParams('', 'appKey', appKey));
      queryParams.addAll(_queryParams('', 'vatomParameters', vatomParameters));
    if (returnRawResponse != null) {
      queryParams.addAll(_queryParams('', 'returnRawResponse', returnRawResponse));
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

  /// Redeem the coins for a user (as a Business)
  ///
  /// Redeem the coins for a user (as a Business).
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] accountId (required):
  ///   Sirqul Account Id
  ///
  /// * [String] vatomUserId (required):
  ///   Vatom User Id
  ///
  /// * [String] appKey (required):
  ///   Sirqul Application Key
  ///
  /// * [String] vatomParameters (required):
  ///   Vatom Parameters
  ///
  /// * [bool] returnRawResponse:
  ///   Return raw response
  Future<void> redeemUserCoinsAsBusiness(num version, int accountId, String vatomUserId, String appKey, String vatomParameters, { bool? returnRawResponse, }) async {
    final response = await redeemUserCoinsAsBusinessWithHttpInfo(version, accountId, vatomUserId, appKey, vatomParameters,  returnRawResponse: returnRawResponse, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Search for Vatom Businesses
  ///
  /// Searches for Vatom businesses.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] accountId (required):
  ///   Sirqul Account Id
  ///
  /// * [String] vatomParameters:
  ///   Vatom Parameters
  ///
  /// * [bool] returnRawResponse:
  ///   Return raw response
  Future<Response> searchBusinessesWithHttpInfo(num version, int accountId, { String? vatomParameters, bool? returnRawResponse, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/vatom/b/search'
      .replaceAll('{version}', version.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'accountId', accountId));
    if (vatomParameters != null) {
      queryParams.addAll(_queryParams('', 'vatomParameters', vatomParameters));
    }
    if (returnRawResponse != null) {
      queryParams.addAll(_queryParams('', 'returnRawResponse', returnRawResponse));
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

  /// Search for Vatom Businesses
  ///
  /// Searches for Vatom businesses.
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] accountId (required):
  ///   Sirqul Account Id
  ///
  /// * [String] vatomParameters:
  ///   Vatom Parameters
  ///
  /// * [bool] returnRawResponse:
  ///   Return raw response
  Future<void> searchBusinesses(num version, int accountId, { String? vatomParameters, bool? returnRawResponse, }) async {
    final response = await searchBusinessesWithHttpInfo(version, accountId,  vatomParameters: vatomParameters, returnRawResponse: returnRawResponse, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Search Campaign Groups
  ///
  /// Search campaign groups.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] accountId (required):
  ///   Sirqul Account Id
  ///
  /// * [String] appKey (required):
  ///   Sirqul Application Key
  ///
  /// * [bool] returnRawResponse:
  ///   Return raw response
  Future<Response> searchCampaignGroupsWithHttpInfo(num version, int accountId, String appKey, { bool? returnRawResponse, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/vatom/b/campaign-groups/search'
      .replaceAll('{version}', version.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'accountId', accountId));
      queryParams.addAll(_queryParams('', 'appKey', appKey));
    if (returnRawResponse != null) {
      queryParams.addAll(_queryParams('', 'returnRawResponse', returnRawResponse));
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

  /// Search Campaign Groups
  ///
  /// Search campaign groups.
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] accountId (required):
  ///   Sirqul Account Id
  ///
  /// * [String] appKey (required):
  ///   Sirqul Application Key
  ///
  /// * [bool] returnRawResponse:
  ///   Return raw response
  Future<void> searchCampaignGroups(num version, int accountId, String appKey, { bool? returnRawResponse, }) async {
    final response = await searchCampaignGroupsWithHttpInfo(version, accountId, appKey,  returnRawResponse: returnRawResponse, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Search User Identities
  ///
  /// Search User Identities.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] accountId (required):
  ///   Sirqul Account Id
  ///
  /// * [bool] returnRawResponse:
  ///   Return raw response
  Future<Response> searchIdentitiesWithHttpInfo(num version, int accountId, { bool? returnRawResponse, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/vatom/me/identities/search'
      .replaceAll('{version}', version.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'accountId', accountId));
    if (returnRawResponse != null) {
      queryParams.addAll(_queryParams('', 'returnRawResponse', returnRawResponse));
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

  /// Search User Identities
  ///
  /// Search User Identities.
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] accountId (required):
  ///   Sirqul Account Id
  ///
  /// * [bool] returnRawResponse:
  ///   Return raw response
  Future<void> searchIdentities(num version, int accountId, { bool? returnRawResponse, }) async {
    final response = await searchIdentitiesWithHttpInfo(version, accountId,  returnRawResponse: returnRawResponse, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Search Vatom User's Inventory
  ///
  /// Searches the logged in user's Vatom Inventory.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] accountId (required):
  ///   Sirqul Account Id
  ///
  /// * [String] vatomParameters:
  ///   Vatom Parameters
  ///
  /// * [bool] returnRawResponse:
  ///   Return raw response
  Future<Response> searchInventoryWithHttpInfo(num version, int accountId, { String? vatomParameters, bool? returnRawResponse, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/vatom/user-inventory/search'
      .replaceAll('{version}', version.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'accountId', accountId));
    if (vatomParameters != null) {
      queryParams.addAll(_queryParams('', 'vatomParameters', vatomParameters));
    }
    if (returnRawResponse != null) {
      queryParams.addAll(_queryParams('', 'returnRawResponse', returnRawResponse));
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

  /// Search Vatom User's Inventory
  ///
  /// Searches the logged in user's Vatom Inventory.
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] accountId (required):
  ///   Sirqul Account Id
  ///
  /// * [String] vatomParameters:
  ///   Vatom Parameters
  ///
  /// * [bool] returnRawResponse:
  ///   Return raw response
  Future<void> searchInventory(num version, int accountId, { String? vatomParameters, bool? returnRawResponse, }) async {
    final response = await searchInventoryWithHttpInfo(version, accountId,  vatomParameters: vatomParameters, returnRawResponse: returnRawResponse, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Send NFT
  ///
  /// Send an NFT.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] accountId (required):
  ///   Sirqul Account Id
  ///
  /// * [String] appKey (required):
  ///   Sirqul Application Key
  ///
  /// * [String] vatomCampaignId (required):
  ///   Vatom Campaign Id
  ///
  /// * [String] vatomParameters (required):
  ///   Vatom Parameters
  ///
  /// * [bool] returnRawResponse:
  ///   Return raw response
  Future<Response> sendNFTWithHttpInfo(num version, int accountId, String appKey, String vatomCampaignId, String vatomParameters, { bool? returnRawResponse, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/vatom/b/campaigns/send'
      .replaceAll('{version}', version.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'accountId', accountId));
      queryParams.addAll(_queryParams('', 'appKey', appKey));
      queryParams.addAll(_queryParams('', 'vatomCampaignId', vatomCampaignId));
      queryParams.addAll(_queryParams('', 'vatomParameters', vatomParameters));
    if (returnRawResponse != null) {
      queryParams.addAll(_queryParams('', 'returnRawResponse', returnRawResponse));
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

  /// Send NFT
  ///
  /// Send an NFT.
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] accountId (required):
  ///   Sirqul Account Id
  ///
  /// * [String] appKey (required):
  ///   Sirqul Application Key
  ///
  /// * [String] vatomCampaignId (required):
  ///   Vatom Campaign Id
  ///
  /// * [String] vatomParameters (required):
  ///   Vatom Parameters
  ///
  /// * [bool] returnRawResponse:
  ///   Return raw response
  Future<void> sendNFT(num version, int accountId, String appKey, String vatomCampaignId, String vatomParameters, { bool? returnRawResponse, }) async {
    final response = await sendNFTWithHttpInfo(version, accountId, appKey, vatomCampaignId, vatomParameters,  returnRawResponse: returnRawResponse, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Set Points Balance as Business
  ///
  /// Sets the points balance of a Vatom user.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] accountId (required):
  ///   Sirqul Account Id
  ///
  /// * [String] appKey (required):
  ///   Sirqul Application Key
  ///
  /// * [String] vatomUserId (required):
  ///   Vatom User Id
  ///
  /// * [String] vatomCampaignId (required):
  ///   Vatom Campaign Id
  ///
  /// * [String] vatomParameters (required):
  ///   Vatom Parameters
  ///
  /// * [bool] returnRawResponse:
  ///   Return raw response
  Future<Response> setPointsBalanceAsBusinessWithHttpInfo(num version, int accountId, String appKey, String vatomUserId, String vatomCampaignId, String vatomParameters, { bool? returnRawResponse, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/vatom/b/campaign/u/points/update'
      .replaceAll('{version}', version.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'accountId', accountId));
      queryParams.addAll(_queryParams('', 'appKey', appKey));
      queryParams.addAll(_queryParams('', 'vatomUserId', vatomUserId));
      queryParams.addAll(_queryParams('', 'vatomCampaignId', vatomCampaignId));
      queryParams.addAll(_queryParams('', 'vatomParameters', vatomParameters));
    if (returnRawResponse != null) {
      queryParams.addAll(_queryParams('', 'returnRawResponse', returnRawResponse));
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

  /// Set Points Balance as Business
  ///
  /// Sets the points balance of a Vatom user.
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] accountId (required):
  ///   Sirqul Account Id
  ///
  /// * [String] appKey (required):
  ///   Sirqul Application Key
  ///
  /// * [String] vatomUserId (required):
  ///   Vatom User Id
  ///
  /// * [String] vatomCampaignId (required):
  ///   Vatom Campaign Id
  ///
  /// * [String] vatomParameters (required):
  ///   Vatom Parameters
  ///
  /// * [bool] returnRawResponse:
  ///   Return raw response
  Future<void> setPointsBalanceAsBusiness(num version, int accountId, String appKey, String vatomUserId, String vatomCampaignId, String vatomParameters, { bool? returnRawResponse, }) async {
    final response = await setPointsBalanceAsBusinessWithHttpInfo(version, accountId, appKey, vatomUserId, vatomCampaignId, vatomParameters,  returnRawResponse: returnRawResponse, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Transfer coins from Vatom Users
  ///
  /// Transfer coins from Vatom Users.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] accountId (required):
  ///   Sirqul Account Id
  ///
  /// * [String] vatomUserId (required):
  ///   Vatom User Id
  ///
  /// * [String] vatomParameters (required):
  ///   Vatom Parameters
  ///
  /// * [bool] returnRawResponse:
  ///   Return raw response
  Future<Response> transferUserCoinsWithHttpInfo(num version, int accountId, String vatomUserId, String vatomParameters, { bool? returnRawResponse, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/vatom/u/coins/transfer'
      .replaceAll('{version}', version.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'accountId', accountId));
      queryParams.addAll(_queryParams('', 'vatomUserId', vatomUserId));
      queryParams.addAll(_queryParams('', 'vatomParameters', vatomParameters));
    if (returnRawResponse != null) {
      queryParams.addAll(_queryParams('', 'returnRawResponse', returnRawResponse));
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

  /// Transfer coins from Vatom Users
  ///
  /// Transfer coins from Vatom Users.
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] accountId (required):
  ///   Sirqul Account Id
  ///
  /// * [String] vatomUserId (required):
  ///   Vatom User Id
  ///
  /// * [String] vatomParameters (required):
  ///   Vatom Parameters
  ///
  /// * [bool] returnRawResponse:
  ///   Return raw response
  Future<void> transferUserCoins(num version, int accountId, String vatomUserId, String vatomParameters, { bool? returnRawResponse, }) async {
    final response = await transferUserCoinsWithHttpInfo(version, accountId, vatomUserId, vatomParameters,  returnRawResponse: returnRawResponse, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Fund coins for a Business
  ///
  /// Fund/update coins for a Businesss.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] accountId (required):
  ///   Sirqul Account Id
  ///
  /// * [String] appKey (required):
  ///   Sirqul Application Key
  ///
  /// * [String] vatomParameters (required):
  ///   Vatom Parameters
  ///
  /// * [bool] returnRawResponse:
  ///   Return raw response
  Future<Response> updateBusinessCoinsWithHttpInfo(num version, int accountId, String appKey, String vatomParameters, { bool? returnRawResponse, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/vatom/b/coins/update'
      .replaceAll('{version}', version.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'accountId', accountId));
      queryParams.addAll(_queryParams('', 'appKey', appKey));
      queryParams.addAll(_queryParams('', 'vatomParameters', vatomParameters));
    if (returnRawResponse != null) {
      queryParams.addAll(_queryParams('', 'returnRawResponse', returnRawResponse));
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

  /// Fund coins for a Business
  ///
  /// Fund/update coins for a Businesss.
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] accountId (required):
  ///   Sirqul Account Id
  ///
  /// * [String] appKey (required):
  ///   Sirqul Application Key
  ///
  /// * [String] vatomParameters (required):
  ///   Vatom Parameters
  ///
  /// * [bool] returnRawResponse:
  ///   Return raw response
  Future<void> updateBusinessCoins(num version, int accountId, String appKey, String vatomParameters, { bool? returnRawResponse, }) async {
    final response = await updateBusinessCoinsWithHttpInfo(version, accountId, appKey, vatomParameters,  returnRawResponse: returnRawResponse, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Update Vatom Event Guest List
  ///
  /// Update the guest list of an event.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] accountId (required):
  ///   Sirqul Account Id
  ///
  /// * [String] appKey (required):
  ///   Sirqul Application Key
  ///
  /// * [String] vatomEventId (required):
  ///   Vatom Event Id
  ///
  /// * [String] vatomParameters (required):
  ///   Vatom Parameters
  ///
  /// * [bool] returnRawResponse:
  ///   Return raw response
  Future<Response> updateEventGuestListWithHttpInfo(num version, int accountId, String appKey, String vatomEventId, String vatomParameters, { bool? returnRawResponse, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/vatom/b/events/guests/update'
      .replaceAll('{version}', version.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'accountId', accountId));
      queryParams.addAll(_queryParams('', 'appKey', appKey));
      queryParams.addAll(_queryParams('', 'vatomEventId', vatomEventId));
      queryParams.addAll(_queryParams('', 'vatomParameters', vatomParameters));
    if (returnRawResponse != null) {
      queryParams.addAll(_queryParams('', 'returnRawResponse', returnRawResponse));
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

  /// Update Vatom Event Guest List
  ///
  /// Update the guest list of an event.
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] accountId (required):
  ///   Sirqul Account Id
  ///
  /// * [String] appKey (required):
  ///   Sirqul Application Key
  ///
  /// * [String] vatomEventId (required):
  ///   Vatom Event Id
  ///
  /// * [String] vatomParameters (required):
  ///   Vatom Parameters
  ///
  /// * [bool] returnRawResponse:
  ///   Return raw response
  Future<void> updateEventGuestList(num version, int accountId, String appKey, String vatomEventId, String vatomParameters, { bool? returnRawResponse, }) async {
    final response = await updateEventGuestListWithHttpInfo(version, accountId, appKey, vatomEventId, vatomParameters,  returnRawResponse: returnRawResponse, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Update Vatom Space
  ///
  /// Update a Vatom space.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] accountId (required):
  ///   Sirqul Account Id
  ///
  /// * [String] appKey (required):
  ///   Sirqul Application Key
  ///
  /// * [String] vatomSpaceId (required):
  ///   Vatom Space Id
  ///
  /// * [String] vatomParameters (required):
  ///   Vatom Parameters
  ///
  /// * [bool] returnRawResponse:
  ///   Return raw response
  Future<Response> updateSpaceWithHttpInfo(num version, int accountId, String appKey, String vatomSpaceId, String vatomParameters, { bool? returnRawResponse, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/vatom/b/spaces/update'
      .replaceAll('{version}', version.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'accountId', accountId));
      queryParams.addAll(_queryParams('', 'appKey', appKey));
      queryParams.addAll(_queryParams('', 'vatomSpaceId', vatomSpaceId));
      queryParams.addAll(_queryParams('', 'vatomParameters', vatomParameters));
    if (returnRawResponse != null) {
      queryParams.addAll(_queryParams('', 'returnRawResponse', returnRawResponse));
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

  /// Update Vatom Space
  ///
  /// Update a Vatom space.
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] accountId (required):
  ///   Sirqul Account Id
  ///
  /// * [String] appKey (required):
  ///   Sirqul Application Key
  ///
  /// * [String] vatomSpaceId (required):
  ///   Vatom Space Id
  ///
  /// * [String] vatomParameters (required):
  ///   Vatom Parameters
  ///
  /// * [bool] returnRawResponse:
  ///   Return raw response
  Future<void> updateSpace(num version, int accountId, String appKey, String vatomSpaceId, String vatomParameters, { bool? returnRawResponse, }) async {
    final response = await updateSpaceWithHttpInfo(version, accountId, appKey, vatomSpaceId, vatomParameters,  returnRawResponse: returnRawResponse, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Update the coins for a user (as a Business)
  ///
  /// Update the coins for a user (as a Business).
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] accountId (required):
  ///   Sirqul Account Id
  ///
  /// * [String] vatomUserId (required):
  ///   Vatom User Id
  ///
  /// * [String] appKey (required):
  ///   Sirqul Application Key
  ///
  /// * [String] vatomParameters (required):
  ///   Vatom Parameters
  ///
  /// * [bool] returnRawResponse:
  ///   Return raw response
  Future<Response> updateUserCoinsAsBusinessWithHttpInfo(num version, int accountId, String vatomUserId, String appKey, String vatomParameters, { bool? returnRawResponse, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/vatom/b/users/coins/update'
      .replaceAll('{version}', version.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'accountId', accountId));
      queryParams.addAll(_queryParams('', 'vatomUserId', vatomUserId));
      queryParams.addAll(_queryParams('', 'appKey', appKey));
      queryParams.addAll(_queryParams('', 'vatomParameters', vatomParameters));
    if (returnRawResponse != null) {
      queryParams.addAll(_queryParams('', 'returnRawResponse', returnRawResponse));
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

  /// Update the coins for a user (as a Business)
  ///
  /// Update the coins for a user (as a Business).
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] accountId (required):
  ///   Sirqul Account Id
  ///
  /// * [String] vatomUserId (required):
  ///   Vatom User Id
  ///
  /// * [String] appKey (required):
  ///   Sirqul Application Key
  ///
  /// * [String] vatomParameters (required):
  ///   Vatom Parameters
  ///
  /// * [bool] returnRawResponse:
  ///   Return raw response
  Future<void> updateUserCoinsAsBusiness(num version, int accountId, String vatomUserId, String appKey, String vatomParameters, { bool? returnRawResponse, }) async {
    final response = await updateUserCoinsAsBusinessWithHttpInfo(version, accountId, vatomUserId, appKey, vatomParameters,  returnRawResponse: returnRawResponse, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Update Vatom User Profile
  ///
  /// Gets the logged in user's profile in Vatom.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] accountId (required):
  ///   Sirqul Account Id
  ///
  /// * [String] vatomParameters (required):
  ///   Vatom Parameters
  ///
  /// * [bool] returnRawResponse:
  ///   Return raw response
  Future<Response> updateUserProfileWithHttpInfo(num version, int accountId, String vatomParameters, { bool? returnRawResponse, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/vatom/me/update'
      .replaceAll('{version}', version.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'accountId', accountId));
      queryParams.addAll(_queryParams('', 'vatomParameters', vatomParameters));
    if (returnRawResponse != null) {
      queryParams.addAll(_queryParams('', 'returnRawResponse', returnRawResponse));
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

  /// Update Vatom User Profile
  ///
  /// Gets the logged in user's profile in Vatom.
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] accountId (required):
  ///   Sirqul Account Id
  ///
  /// * [String] vatomParameters (required):
  ///   Vatom Parameters
  ///
  /// * [bool] returnRawResponse:
  ///   Return raw response
  Future<void> updateUserProfile(num version, int accountId, String vatomParameters, { bool? returnRawResponse, }) async {
    final response = await updateUserProfileWithHttpInfo(version, accountId, vatomParameters,  returnRawResponse: returnRawResponse, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Update Vatom Event
  ///
  /// Update a Vatom event.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] accountId (required):
  ///   Sirqul Account Id
  ///
  /// * [String] appKey (required):
  ///   Sirqul Application Key
  ///
  /// * [String] vatomEventId (required):
  ///   Vatom Event Id
  ///
  /// * [String] vatomParameters (required):
  ///   Vatom Parameters
  ///
  /// * [bool] returnRawResponse:
  ///   Return raw response
  Future<Response> updateVatomEventWithHttpInfo(num version, int accountId, String appKey, String vatomEventId, String vatomParameters, { bool? returnRawResponse, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/vatom/b/events/update'
      .replaceAll('{version}', version.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'accountId', accountId));
      queryParams.addAll(_queryParams('', 'appKey', appKey));
      queryParams.addAll(_queryParams('', 'vatomEventId', vatomEventId));
      queryParams.addAll(_queryParams('', 'vatomParameters', vatomParameters));
    if (returnRawResponse != null) {
      queryParams.addAll(_queryParams('', 'returnRawResponse', returnRawResponse));
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

  /// Update Vatom Event
  ///
  /// Update a Vatom event.
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] accountId (required):
  ///   Sirqul Account Id
  ///
  /// * [String] appKey (required):
  ///   Sirqul Application Key
  ///
  /// * [String] vatomEventId (required):
  ///   Vatom Event Id
  ///
  /// * [String] vatomParameters (required):
  ///   Vatom Parameters
  ///
  /// * [bool] returnRawResponse:
  ///   Return raw response
  Future<void> updateVatomEvent(num version, int accountId, String appKey, String vatomEventId, String vatomParameters, { bool? returnRawResponse, }) async {
    final response = await updateVatomEventWithHttpInfo(version, accountId, appKey, vatomEventId, vatomParameters,  returnRawResponse: returnRawResponse, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }
}
