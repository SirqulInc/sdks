//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class FacebookApi {
  FacebookApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Get Facebook Token
  ///
  /// Gets a user's Facebook token.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] deviceId:
  ///   a unique id given by the device (deviceId or accountId required)
  ///
  /// * [int] accountId:
  ///   the account id of the user (deviceId or accountId required)
  ///
  /// * [double] latitude:
  ///   used to update the user's current location
  ///
  /// * [double] longitude:
  ///   used to update the user's current location
  Future<Response> getTokenWithHttpInfo({ String? deviceId, int? accountId, double? latitude, double? longitude, }) async {
    // ignore: prefer_const_declarations
    final path = r'/facebook/getfbtoken';

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

  /// Get Facebook Token
  ///
  /// Gets a user's Facebook token.
  ///
  /// Parameters:
  ///
  /// * [String] deviceId:
  ///   a unique id given by the device (deviceId or accountId required)
  ///
  /// * [int] accountId:
  ///   the account id of the user (deviceId or accountId required)
  ///
  /// * [double] latitude:
  ///   used to update the user's current location
  ///
  /// * [double] longitude:
  ///   used to update the user's current location
  Future<TokenResponse?> getToken({ String? deviceId, int? accountId, double? latitude, double? longitude, }) async {
    final response = await getTokenWithHttpInfo( deviceId: deviceId, accountId: accountId, latitude: latitude, longitude: longitude, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'TokenResponse',) as TokenResponse;
    
    }
    return null;
  }

  /// Post to Facebook
  ///
  /// Make Facebook posts on behalf of the user.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] event (required):
  ///   the type of Sirqul event {DOWNLOADED_APP, CHALLENGE, LEVEL_COMPLETED, LEVEL_CREATED}
  ///
  /// * [String] deviceId:
  ///   a unique id given by the device (deviceId or accountId required)
  ///
  /// * [int] accountId:
  ///   the account id of the user (deviceId or accountId required)
  ///
  /// * [String] permissionableType:
  ///   for posting about information related to an object. Possible types: {ALBUM, ALBUM_CONTEST, GAME_LEVEL, THEME_DESCRIPTOR}
  ///
  /// * [int] permissionableId:
  ///   the object id
  ///
  /// * [int] assetId:
  ///   used to include an asset on a Facebook post
  ///
  /// * [String] gameType:
  ///   This parameter is deprecated.
  ///
  /// * [String] appKey:
  ///   the application key
  ///
  /// * [double] latitude:
  ///   used to update the user's current location
  ///
  /// * [double] longitude:
  ///   used to update the user's current location
  Future<Response> graphInterfaceWithHttpInfo(String event, { String? deviceId, int? accountId, String? permissionableType, int? permissionableId, int? assetId, String? gameType, String? appKey, double? latitude, double? longitude, }) async {
    // ignore: prefer_const_declarations
    final path = r'/facebook/graph';

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
      queryParams.addAll(_queryParams('', 'event', event));
    if (permissionableType != null) {
      queryParams.addAll(_queryParams('', 'permissionableType', permissionableType));
    }
    if (permissionableId != null) {
      queryParams.addAll(_queryParams('', 'permissionableId', permissionableId));
    }
    if (assetId != null) {
      queryParams.addAll(_queryParams('', 'assetId', assetId));
    }
    if (gameType != null) {
      queryParams.addAll(_queryParams('', 'gameType', gameType));
    }
    if (appKey != null) {
      queryParams.addAll(_queryParams('', 'appKey', appKey));
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

  /// Post to Facebook
  ///
  /// Make Facebook posts on behalf of the user.
  ///
  /// Parameters:
  ///
  /// * [String] event (required):
  ///   the type of Sirqul event {DOWNLOADED_APP, CHALLENGE, LEVEL_COMPLETED, LEVEL_CREATED}
  ///
  /// * [String] deviceId:
  ///   a unique id given by the device (deviceId or accountId required)
  ///
  /// * [int] accountId:
  ///   the account id of the user (deviceId or accountId required)
  ///
  /// * [String] permissionableType:
  ///   for posting about information related to an object. Possible types: {ALBUM, ALBUM_CONTEST, GAME_LEVEL, THEME_DESCRIPTOR}
  ///
  /// * [int] permissionableId:
  ///   the object id
  ///
  /// * [int] assetId:
  ///   used to include an asset on a Facebook post
  ///
  /// * [String] gameType:
  ///   This parameter is deprecated.
  ///
  /// * [String] appKey:
  ///   the application key
  ///
  /// * [double] latitude:
  ///   used to update the user's current location
  ///
  /// * [double] longitude:
  ///   used to update the user's current location
  Future<SirqulResponse?> graphInterface(String event, { String? deviceId, int? accountId, String? permissionableType, int? permissionableId, int? assetId, String? gameType, String? appKey, double? latitude, double? longitude, }) async {
    final response = await graphInterfaceWithHttpInfo(event,  deviceId: deviceId, accountId: accountId, permissionableType: permissionableType, permissionableId: permissionableId, assetId: assetId, gameType: gameType, appKey: appKey, latitude: latitude, longitude: longitude, );
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
}
