//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class FlagApi {
  FlagApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Create Flag
  ///
  /// Allows a user to flag an object that the user deems inappropriate or offensive. Flagable objects include accounts, albums, album contests, assets, game levels, and theme descriptors
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [String] flagableType (required):
  ///   The flagable object type {ACCOUNT, ALBUM, ALBUM_CONTEST, ASSET, GAME_LEVEL, THEME_DESCRIPTOR, NOTE, OFFER}
  ///
  /// * [int] flagableId (required):
  ///   The flagable object id
  ///
  /// * [String] deviceId:
  ///   The unique device identifier that made the request (either deviceId or accountId must be used)
  ///
  /// * [int] accountId:
  ///   The unique accountId that made the request (either deviceId or accountId must be used)
  ///
  /// * [String] flagDescription:
  ///   An optional description of why is it being flagged
  ///
  /// * [double] latitude:
  ///   The current location of the user
  ///
  /// * [double] longitude:
  ///   The current location of the user
  Future<Response> createFlagWithHttpInfo(num version, String flagableType, int flagableId, { String? deviceId, int? accountId, String? flagDescription, double? latitude, double? longitude, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/flag/create'
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
      queryParams.addAll(_queryParams('', 'flagableType', flagableType));
      queryParams.addAll(_queryParams('', 'flagableId', flagableId));
    if (flagDescription != null) {
      queryParams.addAll(_queryParams('', 'flagDescription', flagDescription));
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

  /// Create Flag
  ///
  /// Allows a user to flag an object that the user deems inappropriate or offensive. Flagable objects include accounts, albums, album contests, assets, game levels, and theme descriptors
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [String] flagableType (required):
  ///   The flagable object type {ACCOUNT, ALBUM, ALBUM_CONTEST, ASSET, GAME_LEVEL, THEME_DESCRIPTOR, NOTE, OFFER}
  ///
  /// * [int] flagableId (required):
  ///   The flagable object id
  ///
  /// * [String] deviceId:
  ///   The unique device identifier that made the request (either deviceId or accountId must be used)
  ///
  /// * [int] accountId:
  ///   The unique accountId that made the request (either deviceId or accountId must be used)
  ///
  /// * [String] flagDescription:
  ///   An optional description of why is it being flagged
  ///
  /// * [double] latitude:
  ///   The current location of the user
  ///
  /// * [double] longitude:
  ///   The current location of the user
  Future<SirqulResponse?> createFlag(num version, String flagableType, int flagableId, { String? deviceId, int? accountId, String? flagDescription, double? latitude, double? longitude, }) async {
    final response = await createFlagWithHttpInfo(version, flagableType, flagableId,  deviceId: deviceId, accountId: accountId, flagDescription: flagDescription, latitude: latitude, longitude: longitude, );
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

  /// Delete Flag
  ///
  /// Deletes a flag.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [String] deviceId:
  ///   The unique device identifier that made the request (either deviceId or accountId must be used)
  ///
  /// * [int] accountId:
  ///   The unique accountId that made the request (either deviceId or accountId must be used)
  ///
  /// * [String] itemBeingFlaggedType:
  ///   This parameter is deprecated.
  ///
  /// * [int] itemBeingFlaggedId:
  ///   This parameter is deprecated.
  ///
  /// * [String] flagableType:
  ///   The flagable object type {ACCOUNT, ALBUM, ALBUM_CONTEST, ASSET, GAME_LEVEL, THEME_DESCRIPTOR, OFFER, NOTE}
  ///
  /// * [int] flagableId:
  ///   The flagable object id
  Future<Response> deleteFlagWithHttpInfo(num version, { String? deviceId, int? accountId, String? itemBeingFlaggedType, int? itemBeingFlaggedId, String? flagableType, int? flagableId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/flag/delete'
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
    if (itemBeingFlaggedType != null) {
      queryParams.addAll(_queryParams('', 'itemBeingFlaggedType', itemBeingFlaggedType));
    }
    if (itemBeingFlaggedId != null) {
      queryParams.addAll(_queryParams('', 'itemBeingFlaggedId', itemBeingFlaggedId));
    }
    if (flagableType != null) {
      queryParams.addAll(_queryParams('', 'flagableType', flagableType));
    }
    if (flagableId != null) {
      queryParams.addAll(_queryParams('', 'flagableId', flagableId));
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

  /// Delete Flag
  ///
  /// Deletes a flag.
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [String] deviceId:
  ///   The unique device identifier that made the request (either deviceId or accountId must be used)
  ///
  /// * [int] accountId:
  ///   The unique accountId that made the request (either deviceId or accountId must be used)
  ///
  /// * [String] itemBeingFlaggedType:
  ///   This parameter is deprecated.
  ///
  /// * [int] itemBeingFlaggedId:
  ///   This parameter is deprecated.
  ///
  /// * [String] flagableType:
  ///   The flagable object type {ACCOUNT, ALBUM, ALBUM_CONTEST, ASSET, GAME_LEVEL, THEME_DESCRIPTOR, OFFER, NOTE}
  ///
  /// * [int] flagableId:
  ///   The flagable object id
  Future<SirqulResponse?> deleteFlag(num version, { String? deviceId, int? accountId, String? itemBeingFlaggedType, int? itemBeingFlaggedId, String? flagableType, int? flagableId, }) async {
    final response = await deleteFlagWithHttpInfo(version,  deviceId: deviceId, accountId: accountId, itemBeingFlaggedType: itemBeingFlaggedType, itemBeingFlaggedId: itemBeingFlaggedId, flagableType: flagableType, flagableId: flagableId, );
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

  /// Get Flag
  ///
  /// Gets the details on whether the user has flagged a particular flagable object.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [String] flagableType (required):
  ///   The flagable object type {ACCOUNT, ALBUM, ALBUM_CONTEST, ASSET, GAME_LEVEL, THEME_DESCRIPTOR, NOTE, OFFER}
  ///
  /// * [int] flagableId (required):
  ///   The flagable object id
  ///
  /// * [String] deviceId:
  ///   The unique device identifier that made the request (either deviceId or accountId must be used)
  ///
  /// * [int] accountId:
  ///   The unique accountId that made the request (either deviceId or accountId must be used)
  ///
  /// * [double] latitude:
  ///   The current location of the user
  ///
  /// * [double] longitude:
  ///   The current location of the user
  Future<Response> getFlagWithHttpInfo(num version, String flagableType, int flagableId, { String? deviceId, int? accountId, double? latitude, double? longitude, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/flag/get'
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
      queryParams.addAll(_queryParams('', 'flagableType', flagableType));
      queryParams.addAll(_queryParams('', 'flagableId', flagableId));
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

  /// Get Flag
  ///
  /// Gets the details on whether the user has flagged a particular flagable object.
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [String] flagableType (required):
  ///   The flagable object type {ACCOUNT, ALBUM, ALBUM_CONTEST, ASSET, GAME_LEVEL, THEME_DESCRIPTOR, NOTE, OFFER}
  ///
  /// * [int] flagableId (required):
  ///   The flagable object id
  ///
  /// * [String] deviceId:
  ///   The unique device identifier that made the request (either deviceId or accountId must be used)
  ///
  /// * [int] accountId:
  ///   The unique accountId that made the request (either deviceId or accountId must be used)
  ///
  /// * [double] latitude:
  ///   The current location of the user
  ///
  /// * [double] longitude:
  ///   The current location of the user
  Future<FlagResponse?> getFlag(num version, String flagableType, int flagableId, { String? deviceId, int? accountId, double? latitude, double? longitude, }) async {
    final response = await getFlagWithHttpInfo(version, flagableType, flagableId,  deviceId: deviceId, accountId: accountId, latitude: latitude, longitude: longitude, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'FlagResponse',) as FlagResponse;
    
    }
    return null;
  }

  /// Get Flag Threshold
  ///
  /// Get the flag threshold value on an object type for a particular application.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [String] itemBeingFlaggedType (required):
  ///   The flagable object type {ACCOUNT, ALBUM, ALBUM_CONTEST, ASSET, GAME_LEVEL, THEME_DESCRIPTOR, OFFER, NOTE}
  ///
  /// * [String] appKey (required):
  ///   The application key
  Future<Response> getFlagThresholdWithHttpInfo(num version, String itemBeingFlaggedType, String appKey,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/flag/threshold/get'
      .replaceAll('{version}', version.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'itemBeingFlaggedType', itemBeingFlaggedType));
      queryParams.addAll(_queryParams('', 'appKey', appKey));

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

  /// Get Flag Threshold
  ///
  /// Get the flag threshold value on an object type for a particular application.
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [String] itemBeingFlaggedType (required):
  ///   The flagable object type {ACCOUNT, ALBUM, ALBUM_CONTEST, ASSET, GAME_LEVEL, THEME_DESCRIPTOR, OFFER, NOTE}
  ///
  /// * [String] appKey (required):
  ///   The application key
  Future<CountResponse?> getFlagThreshold(num version, String itemBeingFlaggedType, String appKey,) async {
    final response = await getFlagThresholdWithHttpInfo(version, itemBeingFlaggedType, appKey,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CountResponse',) as CountResponse;
    
    }
    return null;
  }

  /// Update Flag Threshold
  ///
  /// Update the flag threshold on an object type for a particular application.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [String] itemBeingFlaggedType (required):
  ///   The flagable object type {ACCOUNT, ALBUM, ALBUM_CONTEST, ASSET, GAME_LEVEL, THEME_DESCRIPTOR, OFFER, NOTE}
  ///
  /// * [int] threshold (required):
  ///   The threshold value
  ///
  /// * [String] appKey (required):
  ///   The application key
  ///
  /// * [String] deviceId:
  ///   The unique device identifier that made the request (either deviceId or accountId must be used)
  ///
  /// * [int] accountId:
  ///   The unique accountId that made the request (either deviceId or accountId must be used)
  Future<Response> updateFlagThresholdWithHttpInfo(num version, String itemBeingFlaggedType, int threshold, String appKey, { String? deviceId, int? accountId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/flag/threshold/update'
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
      queryParams.addAll(_queryParams('', 'itemBeingFlaggedType', itemBeingFlaggedType));
      queryParams.addAll(_queryParams('', 'threshold', threshold));
      queryParams.addAll(_queryParams('', 'appKey', appKey));

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

  /// Update Flag Threshold
  ///
  /// Update the flag threshold on an object type for a particular application.
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [String] itemBeingFlaggedType (required):
  ///   The flagable object type {ACCOUNT, ALBUM, ALBUM_CONTEST, ASSET, GAME_LEVEL, THEME_DESCRIPTOR, OFFER, NOTE}
  ///
  /// * [int] threshold (required):
  ///   The threshold value
  ///
  /// * [String] appKey (required):
  ///   The application key
  ///
  /// * [String] deviceId:
  ///   The unique device identifier that made the request (either deviceId or accountId must be used)
  ///
  /// * [int] accountId:
  ///   The unique accountId that made the request (either deviceId or accountId must be used)
  Future<CountResponse?> updateFlagThreshold(num version, String itemBeingFlaggedType, int threshold, String appKey, { String? deviceId, int? accountId, }) async {
    final response = await updateFlagThresholdWithHttpInfo(version, itemBeingFlaggedType, threshold, appKey,  deviceId: deviceId, accountId: accountId, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CountResponse',) as CountResponse;
    
    }
    return null;
  }
}
