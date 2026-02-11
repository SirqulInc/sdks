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
  /// * [int] accountId (required):
  ///   Sirqul Account Id
  ///
  /// * [String] vatomParameters (required):
  ///   Vatom Parameters
  ///
  /// * [bool] returnRawResponse:
  ///   Return raw response
  Future<Response> createFollowingWithHttpInfo(int accountId, String vatomParameters, { bool? returnRawResponse, }) async {
    // ignore: prefer_const_declarations
    final path = r'/vatom/me/rels/following/create';

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
  /// * [int] accountId (required):
  ///   Sirqul Account Id
  ///
  /// * [String] vatomParameters (required):
  ///   Vatom Parameters
  ///
  /// * [bool] returnRawResponse:
  ///   Return raw response
  Future<void> createFollowing(int accountId, String vatomParameters, { bool? returnRawResponse, }) async {
    final response = await createFollowingWithHttpInfo(accountId, vatomParameters,  returnRawResponse: returnRawResponse, );
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
  Future<Response> createSpaceWithHttpInfo(int accountId, String appKey, String vatomParameters, { bool? returnRawResponse, }) async {
    // ignore: prefer_const_declarations
    final path = r'/vatom/b/spaces/create';

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
  Future<void> createSpace(int accountId, String appKey, String vatomParameters, { bool? returnRawResponse, }) async {
    final response = await createSpaceWithHttpInfo(accountId, appKey, vatomParameters,  returnRawResponse: returnRawResponse, );
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
  Future<Response> createVatomEventWithHttpInfo(int accountId, String appKey, String vatomParameters, { bool? returnRawResponse, }) async {
    // ignore: prefer_const_declarations
    final path = r'/vatom/b/events/create';

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
  Future<void> createVatomEvent(int accountId, String appKey, String vatomParameters, { bool? returnRawResponse, }) async {
    final response = await createVatomEventWithHttpInfo(accountId, appKey, vatomParameters,  returnRawResponse: returnRawResponse, );
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
  /// * [int] accountId (required):
  ///   Sirqul Account Id
  ///
  /// * [String] vatomRelsKey (required):
  ///   Vatom Rels Key
  ///
  /// * [bool] returnRawResponse:
  ///   Return raw response
  Future<Response> deleteFollowingWithHttpInfo(int accountId, String vatomRelsKey, { bool? returnRawResponse, }) async {
    // ignore: prefer_const_declarations
    final path = r'/vatom/me/rels/following/delete';

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
  /// * [int] accountId (required):
  ///   Sirqul Account Id
  ///
  /// * [String] vatomRelsKey (required):
  ///   Vatom Rels Key
  ///
  /// * [bool] returnRawResponse:
  ///   Return raw response
  Future<void> deleteFollowing(int accountId, String vatomRelsKey, { bool? returnRawResponse, }) async {
    final response = await deleteFollowingWithHttpInfo(accountId, vatomRelsKey,  returnRawResponse: returnRawResponse, );
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
  Future<Response> deletePointsBalanceWithHttpInfo(int accountId, String appKey, String vatomCampaignId, { bool? returnRawResponse, }) async {
    // ignore: prefer_const_declarations
    final path = r'/vatom/b/campaign/points/delete';

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
  Future<void> deletePointsBalance(int accountId, String appKey, String vatomCampaignId, { bool? returnRawResponse, }) async {
    final response = await deletePointsBalanceWithHttpInfo(accountId, appKey, vatomCampaignId,  returnRawResponse: returnRawResponse, );
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
  Future<Response> deleteSpaceWithHttpInfo(int accountId, String appKey, String vatomSpaceId, { bool? returnRawResponse, }) async {
    // ignore: prefer_const_declarations
    final path = r'/vatom/b/spaces/delete';

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
  Future<void> deleteSpace(int accountId, String appKey, String vatomSpaceId, { bool? returnRawResponse, }) async {
    final response = await deleteSpaceWithHttpInfo(accountId, appKey, vatomSpaceId,  returnRawResponse: returnRawResponse, );
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
  Future<Response> deleteVatomEventWithHttpInfo(int accountId, String appKey, String vatomEventId, { bool? returnRawResponse, }) async {
    // ignore: prefer_const_declarations
    final path = r'/vatom/b/events/delete';

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
  Future<void> deleteVatomEvent(int accountId, String appKey, String vatomEventId, { bool? returnRawResponse, }) async {
    final response = await deleteVatomEventWithHttpInfo(accountId, appKey, vatomEventId,  returnRawResponse: returnRawResponse, );
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
  /// * [int] accountId (required):
  ///   Sirqul Account Id
  ///
  /// * [String] vatomId (required):
  ///   Vatom NFT Id
  ///
  /// * [bool] returnRawResponse:
  ///   Return raw response
  Future<Response> deleteVatomNFTWithHttpInfo(int accountId, String vatomId, { bool? returnRawResponse, }) async {
    // ignore: prefer_const_declarations
    final path = r'/vatom/vatoms/delete';

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
  /// * [int] accountId (required):
  ///   Sirqul Account Id
  ///
  /// * [String] vatomId (required):
  ///   Vatom NFT Id
  ///
  /// * [bool] returnRawResponse:
  ///   Return raw response
  Future<void> deleteVatomNFT(int accountId, String vatomId, { bool? returnRawResponse, }) async {
    final response = await deleteVatomNFTWithHttpInfo(accountId, vatomId,  returnRawResponse: returnRawResponse, );
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
  Future<Response> executeActionOnNFTWithHttpInfo(int accountId, String vatomId, String vatomParameters, { bool? returnRawResponse, }) async {
    // ignore: prefer_const_declarations
    final path = r'/vatom/vatoms/execute-action';

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
  Future<void> executeActionOnNFT(int accountId, String vatomId, String vatomParameters, { bool? returnRawResponse, }) async {
    final response = await executeActionOnNFTWithHttpInfo(accountId, vatomId, vatomParameters,  returnRawResponse: returnRawResponse, );
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
  /// * [int] accountId (required):
  ///   Sirqul Account Id
  ///
  /// * [String] vatomParameters (required):
  ///   Vatom Parameters
  ///
  /// * [bool] returnRawResponse:
  ///   Return raw response
  Future<Response> geomapSearchWithHttpInfo(int accountId, String vatomParameters, { bool? returnRawResponse, }) async {
    // ignore: prefer_const_declarations
    final path = r'/vatom/vatoms/geo-map/search';

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
  /// * [int] accountId (required):
  ///   Sirqul Account Id
  ///
  /// * [String] vatomParameters (required):
  ///   Vatom Parameters
  ///
  /// * [bool] returnRawResponse:
  ///   Return raw response
  Future<void> geomapSearch(int accountId, String vatomParameters, { bool? returnRawResponse, }) async {
    final response = await geomapSearchWithHttpInfo(accountId, vatomParameters,  returnRawResponse: returnRawResponse, );
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
  /// * [int] accountId (required):
  ///   Sirqul Account Id
  ///
  /// * [String] appKey (required):
  ///   Sirqul Application Key
  ///
  /// * [bool] returnRawResponse:
  ///   Return raw response
  Future<Response> getBusinessBehaviorsWithHttpInfo(int accountId, String appKey, { bool? returnRawResponse, }) async {
    // ignore: prefer_const_declarations
    final path = r'/vatom/b/behaviors';

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
  /// * [int] accountId (required):
  ///   Sirqul Account Id
  ///
  /// * [String] appKey (required):
  ///   Sirqul Application Key
  ///
  /// * [bool] returnRawResponse:
  ///   Return raw response
  Future<void> getBusinessBehaviors(int accountId, String appKey, { bool? returnRawResponse, }) async {
    final response = await getBusinessBehaviorsWithHttpInfo(accountId, appKey,  returnRawResponse: returnRawResponse, );
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
  /// * [int] accountId (required):
  ///   Sirqul Account Id
  ///
  /// * [String] appKey (required):
  ///   Sirqul Application Key
  ///
  /// * [bool] returnRawResponse:
  ///   Return raw response
  Future<Response> getBusinessCoinsBalanceWithHttpInfo(int accountId, String appKey, { bool? returnRawResponse, }) async {
    // ignore: prefer_const_declarations
    final path = r'/vatom/b/coins/get';

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
  /// * [int] accountId (required):
  ///   Sirqul Account Id
  ///
  /// * [String] appKey (required):
  ///   Sirqul Application Key
  ///
  /// * [bool] returnRawResponse:
  ///   Return raw response
  Future<void> getBusinessCoinsBalance(int accountId, String appKey, { bool? returnRawResponse, }) async {
    final response = await getBusinessCoinsBalanceWithHttpInfo(accountId, appKey,  returnRawResponse: returnRawResponse, );
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
  /// * [int] accountId (required):
  ///   Sirqul Account Id
  ///
  /// * [bool] returnRawResponse:
  ///   Return raw response
  Future<Response> getBusinessIdsWithHttpInfo(int accountId, { bool? returnRawResponse, }) async {
    // ignore: prefer_const_declarations
    final path = r'/vatom/me/businesses';

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
  /// * [int] accountId (required):
  ///   Sirqul Account Id
  ///
  /// * [bool] returnRawResponse:
  ///   Return raw response
  Future<void> getBusinessIds(int accountId, { bool? returnRawResponse, }) async {
    final response = await getBusinessIdsWithHttpInfo(accountId,  returnRawResponse: returnRawResponse, );
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
  Future<Response> getBusinessInfoWithHttpInfo(int accountId, String appKey, { String? vatomParameters, bool? returnRawResponse, }) async {
    // ignore: prefer_const_declarations
    final path = r'/vatom/b/get';

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
  Future<void> getBusinessInfo(int accountId, String appKey, { String? vatomParameters, bool? returnRawResponse, }) async {
    final response = await getBusinessInfoWithHttpInfo(accountId, appKey,  vatomParameters: vatomParameters, returnRawResponse: returnRawResponse, );
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
  /// * [int] accountId (required):
  ///   Sirqul Account Id
  ///
  /// * [String] appKey (required):
  ///   Sirqul Application Key
  ///
  /// * [bool] returnRawResponse:
  ///   Return raw response
  Future<Response> getBusinessUsersWithHttpInfo(int accountId, String appKey, { bool? returnRawResponse, }) async {
    // ignore: prefer_const_declarations
    final path = r'/vatom/b/users';

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
  /// * [int] accountId (required):
  ///   Sirqul Account Id
  ///
  /// * [String] appKey (required):
  ///   Sirqul Application Key
  ///
  /// * [bool] returnRawResponse:
  ///   Return raw response
  Future<void> getBusinessUsers(int accountId, String appKey, { bool? returnRawResponse, }) async {
    final response = await getBusinessUsersWithHttpInfo(accountId, appKey,  returnRawResponse: returnRawResponse, );
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
  Future<Response> getCampaignGroupEntitiesWithHttpInfo(int accountId, String appKey, String vatomCampaignId, { bool? returnRawResponse, }) async {
    // ignore: prefer_const_declarations
    final path = r'/vatom/b/campaign-groups/entities';

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
  Future<void> getCampaignGroupEntities(int accountId, String appKey, String vatomCampaignId, { bool? returnRawResponse, }) async {
    final response = await getCampaignGroupEntitiesWithHttpInfo(accountId, appKey, vatomCampaignId,  returnRawResponse: returnRawResponse, );
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
  Future<Response> getCampaignGroupRulesWithHttpInfo(int accountId, String appKey, String vatomCampaignId, { bool? returnRawResponse, }) async {
    // ignore: prefer_const_declarations
    final path = r'/vatom/b/campaign-groups/rules';

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
  Future<void> getCampaignGroupRules(int accountId, String appKey, String vatomCampaignId, { bool? returnRawResponse, }) async {
    final response = await getCampaignGroupRulesWithHttpInfo(accountId, appKey, vatomCampaignId,  returnRawResponse: returnRawResponse, );
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
  Future<Response> getCampaignGroupStatsWithHttpInfo(int accountId, String appKey, String vatomCampaignId, { bool? returnRawResponse, }) async {
    // ignore: prefer_const_declarations
    final path = r'/vatom/b/campaign-groups/stats';

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
  Future<void> getCampaignGroupStats(int accountId, String appKey, String vatomCampaignId, { bool? returnRawResponse, }) async {
    final response = await getCampaignGroupStatsWithHttpInfo(accountId, appKey, vatomCampaignId,  returnRawResponse: returnRawResponse, );
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
  Future<Response> getCampaignInfoWithHttpInfo(int accountId, String appKey, String vatomCampaignId, { bool? returnRawResponse, }) async {
    // ignore: prefer_const_declarations
    final path = r'/vatom/b/campaign-groups/get';

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
  Future<void> getCampaignInfo(int accountId, String appKey, String vatomCampaignId, { bool? returnRawResponse, }) async {
    final response = await getCampaignInfoWithHttpInfo(accountId, appKey, vatomCampaignId,  returnRawResponse: returnRawResponse, );
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
  Future<Response> getEventGuestListWithHttpInfo(int accountId, String appKey, String vatomEventId, { bool? returnRawResponse, }) async {
    // ignore: prefer_const_declarations
    final path = r'/vatom/b/events/guests/get';

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
  Future<void> getEventGuestList(int accountId, String appKey, String vatomEventId, { bool? returnRawResponse, }) async {
    final response = await getEventGuestListWithHttpInfo(accountId, appKey, vatomEventId,  returnRawResponse: returnRawResponse, );
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
  /// * [int] accountId (required):
  ///   Sirqul Account Id
  ///
  /// * [String] vatomParameters (required):
  ///   Vatom Parameters
  ///
  /// * [bool] returnRawResponse:
  ///   Return raw response
  Future<Response> getInventoryWithHttpInfo(int accountId, String vatomParameters, { bool? returnRawResponse, }) async {
    // ignore: prefer_const_declarations
    final path = r'/vatom/me/inventory';

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
  /// * [int] accountId (required):
  ///   Sirqul Account Id
  ///
  /// * [String] vatomParameters (required):
  ///   Vatom Parameters
  ///
  /// * [bool] returnRawResponse:
  ///   Return raw response
  Future<void> getInventory(int accountId, String vatomParameters, { bool? returnRawResponse, }) async {
    final response = await getInventoryWithHttpInfo(accountId, vatomParameters,  returnRawResponse: returnRawResponse, );
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
  /// * [int] accountId (required):
  ///   Sirqul Account Id
  ///
  /// * [bool] returnRawResponse:
  ///   Return raw response
  Future<Response> getMyFollowingWithHttpInfo(int accountId, { bool? returnRawResponse, }) async {
    // ignore: prefer_const_declarations
    final path = r'/vatom/me/rels/following';

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
  /// * [int] accountId (required):
  ///   Sirqul Account Id
  ///
  /// * [bool] returnRawResponse:
  ///   Return raw response
  Future<void> getMyFollowing(int accountId, { bool? returnRawResponse, }) async {
    final response = await getMyFollowingWithHttpInfo(accountId,  returnRawResponse: returnRawResponse, );
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
  Future<Response> getPointsBalanceWithHttpInfo(int accountId, String vatomUserId, String vatomCampaignId, { bool? returnRawResponse, }) async {
    // ignore: prefer_const_declarations
    final path = r'/vatom/u/campaign/points/get';

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
  Future<void> getPointsBalance(int accountId, String vatomUserId, String vatomCampaignId, { bool? returnRawResponse, }) async {
    final response = await getPointsBalanceWithHttpInfo(accountId, vatomUserId, vatomCampaignId,  returnRawResponse: returnRawResponse, );
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
  Future<Response> getPointsBalanceAsBusinessWithHttpInfo(int accountId, String appKey, String vatomUserId, String vatomCampaignId, { bool? returnRawResponse, }) async {
    // ignore: prefer_const_declarations
    final path = r'/vatom/b/campaign/u/points/get';

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
  Future<void> getPointsBalanceAsBusiness(int accountId, String appKey, String vatomUserId, String vatomCampaignId, { bool? returnRawResponse, }) async {
    final response = await getPointsBalanceAsBusinessWithHttpInfo(accountId, appKey, vatomUserId, vatomCampaignId,  returnRawResponse: returnRawResponse, );
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
  Future<Response> getSpaceWithHttpInfo(int accountId, String appKey, String vatomSpaceId, { bool? returnRawResponse, }) async {
    // ignore: prefer_const_declarations
    final path = r'/vatom/b/spaces/get';

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
  Future<void> getSpace(int accountId, String appKey, String vatomSpaceId, { bool? returnRawResponse, }) async {
    final response = await getSpaceWithHttpInfo(accountId, appKey, vatomSpaceId,  returnRawResponse: returnRawResponse, );
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
  Future<Response> getUserCoinsAsBusinessWithHttpInfo(int accountId, String vatomUserId, String appKey, { bool? returnRawResponse, }) async {
    // ignore: prefer_const_declarations
    final path = r'/vatom/b/users/coins/get';

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
  Future<void> getUserCoinsAsBusiness(int accountId, String vatomUserId, String appKey, { bool? returnRawResponse, }) async {
    final response = await getUserCoinsAsBusinessWithHttpInfo(accountId, vatomUserId, appKey,  returnRawResponse: returnRawResponse, );
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
  Future<Response> getUserCoinsBalanceWithHttpInfo(int accountId, String vatomUserId, { String? vatomParameters, bool? returnRawResponse, }) async {
    // ignore: prefer_const_declarations
    final path = r'/vatom/u/coins/get';

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
  Future<void> getUserCoinsBalance(int accountId, String vatomUserId, { String? vatomParameters, bool? returnRawResponse, }) async {
    final response = await getUserCoinsBalanceWithHttpInfo(accountId, vatomUserId,  vatomParameters: vatomParameters, returnRawResponse: returnRawResponse, );
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
  /// * [int] accountId (required):
  ///   Sirqul Account Id
  ///
  /// * [String] vatomUserId (required):
  ///   Vatom User Id
  ///
  /// * [bool] returnRawResponse:
  ///   Return raw response
  Future<Response> getUserFollowersWithHttpInfo(int accountId, String vatomUserId, { bool? returnRawResponse, }) async {
    // ignore: prefer_const_declarations
    final path = r'/vatom/users/rels/followers';

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
  /// * [int] accountId (required):
  ///   Sirqul Account Id
  ///
  /// * [String] vatomUserId (required):
  ///   Vatom User Id
  ///
  /// * [bool] returnRawResponse:
  ///   Return raw response
  Future<void> getUserFollowers(int accountId, String vatomUserId, { bool? returnRawResponse, }) async {
    final response = await getUserFollowersWithHttpInfo(accountId, vatomUserId,  returnRawResponse: returnRawResponse, );
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
  /// * [int] accountId (required):
  ///   Sirqul Account Id
  ///
  /// * [String] vatomUserId (required):
  ///   Vatom User Id
  ///
  /// * [bool] returnRawResponse:
  ///   Return raw response
  Future<Response> getUserFollowingWithHttpInfo(int accountId, String vatomUserId, { bool? returnRawResponse, }) async {
    // ignore: prefer_const_declarations
    final path = r'/vatom/users/rels/following';

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
  /// * [int] accountId (required):
  ///   Sirqul Account Id
  ///
  /// * [String] vatomUserId (required):
  ///   Vatom User Id
  ///
  /// * [bool] returnRawResponse:
  ///   Return raw response
  Future<void> getUserFollowing(int accountId, String vatomUserId, { bool? returnRawResponse, }) async {
    final response = await getUserFollowingWithHttpInfo(accountId, vatomUserId,  returnRawResponse: returnRawResponse, );
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
  /// * [int] accountId (required):
  ///   Sirqul Account Id
  ///
  /// * [String] vatomUserId (required):
  ///   Vatom User Id
  ///
  /// * [bool] returnRawResponse:
  ///   Return raw response
  Future<Response> getUserInfoWithHttpInfo(int accountId, String vatomUserId, { bool? returnRawResponse, }) async {
    // ignore: prefer_const_declarations
    final path = r'/vatom/user/get';

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
  /// * [int] accountId (required):
  ///   Sirqul Account Id
  ///
  /// * [String] vatomUserId (required):
  ///   Vatom User Id
  ///
  /// * [bool] returnRawResponse:
  ///   Return raw response
  Future<void> getUserInfo(int accountId, String vatomUserId, { bool? returnRawResponse, }) async {
    final response = await getUserInfoWithHttpInfo(accountId, vatomUserId,  returnRawResponse: returnRawResponse, );
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
  /// * [int] accountId (required):
  ///   Sirqul Account Id
  ///
  /// * [bool] returnRawResponse:
  ///   Return raw response
  Future<Response> getUserProfileWithHttpInfo(int accountId, { bool? returnRawResponse, }) async {
    // ignore: prefer_const_declarations
    final path = r'/vatom/me/get';

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
  /// * [int] accountId (required):
  ///   Sirqul Account Id
  ///
  /// * [bool] returnRawResponse:
  ///   Return raw response
  Future<void> getUserProfile(int accountId, { bool? returnRawResponse, }) async {
    final response = await getUserProfileWithHttpInfo(accountId,  returnRawResponse: returnRawResponse, );
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
  Future<Response> getVatomEventWithHttpInfo(int accountId, String appKey, String vatomEventId, { bool? returnRawResponse, }) async {
    // ignore: prefer_const_declarations
    final path = r'/vatom/b/events/get';

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
  Future<void> getVatomEvent(int accountId, String appKey, String vatomEventId, { bool? returnRawResponse, }) async {
    final response = await getVatomEventWithHttpInfo(accountId, appKey, vatomEventId,  returnRawResponse: returnRawResponse, );
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
  /// * [int] accountId (required):
  ///   Sirqul Account Id
  ///
  /// * [String] vatomId (required):
  ///   Vatom NFT Id
  ///
  /// * [bool] returnRawResponse:
  ///   Return raw response
  Future<Response> getVatomNFTWithHttpInfo(int accountId, String vatomId, { bool? returnRawResponse, }) async {
    // ignore: prefer_const_declarations
    final path = r'/vatom/vatoms/get';

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
  /// * [int] accountId (required):
  ///   Sirqul Account Id
  ///
  /// * [String] vatomId (required):
  ///   Vatom NFT Id
  ///
  /// * [bool] returnRawResponse:
  ///   Return raw response
  Future<void> getVatomNFT(int accountId, String vatomId, { bool? returnRawResponse, }) async {
    final response = await getVatomNFTWithHttpInfo(accountId, vatomId,  returnRawResponse: returnRawResponse, );
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
  Future<Response> listCommunitiesWithHttpInfo(int accountId, String appKey, { String? vatomParameters, bool? returnRawResponse, }) async {
    // ignore: prefer_const_declarations
    final path = r'/vatom/b/communities/search';

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
  Future<void> listCommunities(int accountId, String appKey, { String? vatomParameters, bool? returnRawResponse, }) async {
    final response = await listCommunitiesWithHttpInfo(accountId, appKey,  vatomParameters: vatomParameters, returnRawResponse: returnRawResponse, );
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
  Future<Response> listEventsWithHttpInfo(int accountId, String appKey, { String? vatomParameters, bool? returnRawResponse, }) async {
    // ignore: prefer_const_declarations
    final path = r'/vatom/b/events/search';

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
  Future<void> listEvents(int accountId, String appKey, { String? vatomParameters, bool? returnRawResponse, }) async {
    final response = await listEventsWithHttpInfo(accountId, appKey,  vatomParameters: vatomParameters, returnRawResponse: returnRawResponse, );
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
  Future<Response> listSpacesWithHttpInfo(int accountId, String appKey, { String? vatomParameters, bool? returnRawResponse, }) async {
    // ignore: prefer_const_declarations
    final path = r'/vatom/b/spaces/search';

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
  Future<void> listSpaces(int accountId, String appKey, { String? vatomParameters, bool? returnRawResponse, }) async {
    final response = await listSpacesWithHttpInfo(accountId, appKey,  vatomParameters: vatomParameters, returnRawResponse: returnRawResponse, );
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
  Future<Response> listUserCoinTransactionsWithHttpInfo(int accountId, String vatomUserId, { String? vatomParameters, bool? returnRawResponse, }) async {
    // ignore: prefer_const_declarations
    final path = r'/vatom/u/coins/txns/search';

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
  Future<void> listUserCoinTransactions(int accountId, String vatomUserId, { String? vatomParameters, bool? returnRawResponse, }) async {
    final response = await listUserCoinTransactionsWithHttpInfo(accountId, vatomUserId,  vatomParameters: vatomParameters, returnRawResponse: returnRawResponse, );
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
  Future<Response> listUserCoinTransactionsAsBusinessWithHttpInfo(int accountId, String vatomUserId, String appKey, { String? vatomParameters, bool? returnRawResponse, }) async {
    // ignore: prefer_const_declarations
    final path = r'/vatom/b/users/coins/txns/search';

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
  Future<void> listUserCoinTransactionsAsBusiness(int accountId, String vatomUserId, String appKey, { String? vatomParameters, bool? returnRawResponse, }) async {
    final response = await listUserCoinTransactionsAsBusinessWithHttpInfo(accountId, vatomUserId, appKey,  vatomParameters: vatomParameters, returnRawResponse: returnRawResponse, );
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
  Future<Response> performActionOnNFTWithHttpInfo(int accountId, String vatomId, String vatomAction, String vatomParameters, { bool? returnRawResponse, }) async {
    // ignore: prefer_const_declarations
    final path = r'/vatom/me/vatoms/actions';

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
  Future<void> performActionOnNFT(int accountId, String vatomId, String vatomAction, String vatomParameters, { bool? returnRawResponse, }) async {
    final response = await performActionOnNFTWithHttpInfo(accountId, vatomId, vatomAction, vatomParameters,  returnRawResponse: returnRawResponse, );
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
  Future<Response> redeemNFTWithHttpInfo(int accountId, String appKey, String vatomParameters, { bool? returnRawResponse, }) async {
    // ignore: prefer_const_declarations
    final path = r'/vatom/b/redemptions';

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
  Future<void> redeemNFT(int accountId, String appKey, String vatomParameters, { bool? returnRawResponse, }) async {
    final response = await redeemNFTWithHttpInfo(accountId, appKey, vatomParameters,  returnRawResponse: returnRawResponse, );
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
  Future<Response> redeemUserCoinsAsBusinessWithHttpInfo(int accountId, String vatomUserId, String appKey, String vatomParameters, { bool? returnRawResponse, }) async {
    // ignore: prefer_const_declarations
    final path = r'/vatom/b/users/coins/redeem';

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
  Future<void> redeemUserCoinsAsBusiness(int accountId, String vatomUserId, String appKey, String vatomParameters, { bool? returnRawResponse, }) async {
    final response = await redeemUserCoinsAsBusinessWithHttpInfo(accountId, vatomUserId, appKey, vatomParameters,  returnRawResponse: returnRawResponse, );
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
  /// * [int] accountId (required):
  ///   Sirqul Account Id
  ///
  /// * [String] vatomParameters:
  ///   Vatom Parameters
  ///
  /// * [bool] returnRawResponse:
  ///   Return raw response
  Future<Response> searchBusinessesWithHttpInfo(int accountId, { String? vatomParameters, bool? returnRawResponse, }) async {
    // ignore: prefer_const_declarations
    final path = r'/vatom/b/search';

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
  /// * [int] accountId (required):
  ///   Sirqul Account Id
  ///
  /// * [String] vatomParameters:
  ///   Vatom Parameters
  ///
  /// * [bool] returnRawResponse:
  ///   Return raw response
  Future<void> searchBusinesses(int accountId, { String? vatomParameters, bool? returnRawResponse, }) async {
    final response = await searchBusinessesWithHttpInfo(accountId,  vatomParameters: vatomParameters, returnRawResponse: returnRawResponse, );
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
  /// * [int] accountId (required):
  ///   Sirqul Account Id
  ///
  /// * [String] appKey (required):
  ///   Sirqul Application Key
  ///
  /// * [bool] returnRawResponse:
  ///   Return raw response
  Future<Response> searchCampaignGroupsWithHttpInfo(int accountId, String appKey, { bool? returnRawResponse, }) async {
    // ignore: prefer_const_declarations
    final path = r'/vatom/b/campaign-groups/search';

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
  /// * [int] accountId (required):
  ///   Sirqul Account Id
  ///
  /// * [String] appKey (required):
  ///   Sirqul Application Key
  ///
  /// * [bool] returnRawResponse:
  ///   Return raw response
  Future<void> searchCampaignGroups(int accountId, String appKey, { bool? returnRawResponse, }) async {
    final response = await searchCampaignGroupsWithHttpInfo(accountId, appKey,  returnRawResponse: returnRawResponse, );
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
  /// * [int] accountId (required):
  ///   Sirqul Account Id
  ///
  /// * [bool] returnRawResponse:
  ///   Return raw response
  Future<Response> searchIdentitiesWithHttpInfo(int accountId, { bool? returnRawResponse, }) async {
    // ignore: prefer_const_declarations
    final path = r'/vatom/me/identities/search';

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
  /// * [int] accountId (required):
  ///   Sirqul Account Id
  ///
  /// * [bool] returnRawResponse:
  ///   Return raw response
  Future<void> searchIdentities(int accountId, { bool? returnRawResponse, }) async {
    final response = await searchIdentitiesWithHttpInfo(accountId,  returnRawResponse: returnRawResponse, );
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
  /// * [int] accountId (required):
  ///   Sirqul Account Id
  ///
  /// * [String] vatomParameters:
  ///   Vatom Parameters
  ///
  /// * [bool] returnRawResponse:
  ///   Return raw response
  Future<Response> searchInventoryWithHttpInfo(int accountId, { String? vatomParameters, bool? returnRawResponse, }) async {
    // ignore: prefer_const_declarations
    final path = r'/vatom/user-inventory/search';

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
  /// * [int] accountId (required):
  ///   Sirqul Account Id
  ///
  /// * [String] vatomParameters:
  ///   Vatom Parameters
  ///
  /// * [bool] returnRawResponse:
  ///   Return raw response
  Future<void> searchInventory(int accountId, { String? vatomParameters, bool? returnRawResponse, }) async {
    final response = await searchInventoryWithHttpInfo(accountId,  vatomParameters: vatomParameters, returnRawResponse: returnRawResponse, );
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
  Future<Response> sendNFTWithHttpInfo(int accountId, String appKey, String vatomCampaignId, String vatomParameters, { bool? returnRawResponse, }) async {
    // ignore: prefer_const_declarations
    final path = r'/vatom/b/campaigns/send';

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
  Future<void> sendNFT(int accountId, String appKey, String vatomCampaignId, String vatomParameters, { bool? returnRawResponse, }) async {
    final response = await sendNFTWithHttpInfo(accountId, appKey, vatomCampaignId, vatomParameters,  returnRawResponse: returnRawResponse, );
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
  Future<Response> setPointsBalanceAsBusinessWithHttpInfo(int accountId, String appKey, String vatomUserId, String vatomCampaignId, String vatomParameters, { bool? returnRawResponse, }) async {
    // ignore: prefer_const_declarations
    final path = r'/vatom/b/campaign/u/points/update';

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
  Future<void> setPointsBalanceAsBusiness(int accountId, String appKey, String vatomUserId, String vatomCampaignId, String vatomParameters, { bool? returnRawResponse, }) async {
    final response = await setPointsBalanceAsBusinessWithHttpInfo(accountId, appKey, vatomUserId, vatomCampaignId, vatomParameters,  returnRawResponse: returnRawResponse, );
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
  Future<Response> transferUserCoinsWithHttpInfo(int accountId, String vatomUserId, String vatomParameters, { bool? returnRawResponse, }) async {
    // ignore: prefer_const_declarations
    final path = r'/vatom/u/coins/transfer';

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
  Future<void> transferUserCoins(int accountId, String vatomUserId, String vatomParameters, { bool? returnRawResponse, }) async {
    final response = await transferUserCoinsWithHttpInfo(accountId, vatomUserId, vatomParameters,  returnRawResponse: returnRawResponse, );
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
  Future<Response> updateBusinessCoinsWithHttpInfo(int accountId, String appKey, String vatomParameters, { bool? returnRawResponse, }) async {
    // ignore: prefer_const_declarations
    final path = r'/vatom/b/coins/update';

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
  Future<void> updateBusinessCoins(int accountId, String appKey, String vatomParameters, { bool? returnRawResponse, }) async {
    final response = await updateBusinessCoinsWithHttpInfo(accountId, appKey, vatomParameters,  returnRawResponse: returnRawResponse, );
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
  Future<Response> updateEventGuestListWithHttpInfo(int accountId, String appKey, String vatomEventId, String vatomParameters, { bool? returnRawResponse, }) async {
    // ignore: prefer_const_declarations
    final path = r'/vatom/b/events/guests/update';

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
  Future<void> updateEventGuestList(int accountId, String appKey, String vatomEventId, String vatomParameters, { bool? returnRawResponse, }) async {
    final response = await updateEventGuestListWithHttpInfo(accountId, appKey, vatomEventId, vatomParameters,  returnRawResponse: returnRawResponse, );
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
  Future<Response> updateSpaceWithHttpInfo(int accountId, String appKey, String vatomSpaceId, String vatomParameters, { bool? returnRawResponse, }) async {
    // ignore: prefer_const_declarations
    final path = r'/vatom/b/spaces/update';

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
  Future<void> updateSpace(int accountId, String appKey, String vatomSpaceId, String vatomParameters, { bool? returnRawResponse, }) async {
    final response = await updateSpaceWithHttpInfo(accountId, appKey, vatomSpaceId, vatomParameters,  returnRawResponse: returnRawResponse, );
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
  Future<Response> updateUserCoinsAsBusinessWithHttpInfo(int accountId, String vatomUserId, String appKey, String vatomParameters, { bool? returnRawResponse, }) async {
    // ignore: prefer_const_declarations
    final path = r'/vatom/b/users/coins/update';

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
  Future<void> updateUserCoinsAsBusiness(int accountId, String vatomUserId, String appKey, String vatomParameters, { bool? returnRawResponse, }) async {
    final response = await updateUserCoinsAsBusinessWithHttpInfo(accountId, vatomUserId, appKey, vatomParameters,  returnRawResponse: returnRawResponse, );
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
  /// * [int] accountId (required):
  ///   Sirqul Account Id
  ///
  /// * [String] vatomParameters (required):
  ///   Vatom Parameters
  ///
  /// * [bool] returnRawResponse:
  ///   Return raw response
  Future<Response> updateUserProfileWithHttpInfo(int accountId, String vatomParameters, { bool? returnRawResponse, }) async {
    // ignore: prefer_const_declarations
    final path = r'/vatom/me/update';

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
  /// * [int] accountId (required):
  ///   Sirqul Account Id
  ///
  /// * [String] vatomParameters (required):
  ///   Vatom Parameters
  ///
  /// * [bool] returnRawResponse:
  ///   Return raw response
  Future<void> updateUserProfile(int accountId, String vatomParameters, { bool? returnRawResponse, }) async {
    final response = await updateUserProfileWithHttpInfo(accountId, vatomParameters,  returnRawResponse: returnRawResponse, );
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
  Future<Response> updateVatomEventWithHttpInfo(int accountId, String appKey, String vatomEventId, String vatomParameters, { bool? returnRawResponse, }) async {
    // ignore: prefer_const_declarations
    final path = r'/vatom/b/events/update';

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
  Future<void> updateVatomEvent(int accountId, String appKey, String vatomEventId, String vatomParameters, { bool? returnRawResponse, }) async {
    final response = await updateVatomEventWithHttpInfo(accountId, appKey, vatomEventId, vatomParameters,  returnRawResponse: returnRawResponse, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }
}
