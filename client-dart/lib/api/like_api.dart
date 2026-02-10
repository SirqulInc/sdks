//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class LikeApi {
  LikeApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Create Like
  ///
  /// Allows a user to like or dislike accounts, albums, album contests, assets, game levels, notes, and theme descriptors. Multiple likes\\dislikes on the same object will replace the previous one.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [String] likableType (required):
  ///   The type of likable object {ALBUM, ALBUM_CONTEST, ASSET, GAME_LEVEL, NOTE, THEME_DESCRIPTOR}
  ///
  /// * [int] likableId (required):
  ///   The id of the likable object
  ///
  /// * [String] deviceId:
  ///   The unique device identifier that made the request (either deviceId or accountId must be used)
  ///
  /// * [int] accountId:
  ///   The unique accountId that made the request (either deviceId or accountId must be used)
  ///
  /// * [String] permissionableType:
  ///   This is used for sending out group notifications. For example, when someone likes an asset which is also a part of an album, everyone in the album will receive a notification. This is achieved by passing in the permissionable type (in this case \"album\"), and the permissionable id (the album id). Possible types: {ALBUM, ALBUM_CONTEST, GAME_LEVEL, THEME_DESCRIPTOR}
  ///
  /// * [int] permissionableId:
  ///   The id of the permissionable object (for sending group notifications)
  ///
  /// * [bool] like:
  ///   determines whether the user likes or dislikes the object
  ///
  /// * [String] app:
  ///   This parameter is deprecated. This is deprecated, use \"appKey\" instead.
  ///
  /// * [String] gameType:
  ///   This parameter is deprecated. This is deprecated, use \"appKey\" instead.
  ///
  /// * [String] appKey:
  ///   the application key
  ///
  /// * [double] latitude:
  ///   The current location of the user
  ///
  /// * [double] longitude:
  ///   The current location of the user
  Future<Response> registerLikeWithHttpInfo(num version, String likableType, int likableId, { String? deviceId, int? accountId, String? permissionableType, int? permissionableId, bool? like, String? app, String? gameType, String? appKey, double? latitude, double? longitude, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/like'
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
      queryParams.addAll(_queryParams('', 'likableType', likableType));
      queryParams.addAll(_queryParams('', 'likableId', likableId));
    if (permissionableType != null) {
      queryParams.addAll(_queryParams('', 'permissionableType', permissionableType));
    }
    if (permissionableId != null) {
      queryParams.addAll(_queryParams('', 'permissionableId', permissionableId));
    }
    if (like != null) {
      queryParams.addAll(_queryParams('', 'like', like));
    }
    if (app != null) {
      queryParams.addAll(_queryParams('', 'app', app));
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

  /// Create Like
  ///
  /// Allows a user to like or dislike accounts, albums, album contests, assets, game levels, notes, and theme descriptors. Multiple likes\\dislikes on the same object will replace the previous one.
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [String] likableType (required):
  ///   The type of likable object {ALBUM, ALBUM_CONTEST, ASSET, GAME_LEVEL, NOTE, THEME_DESCRIPTOR}
  ///
  /// * [int] likableId (required):
  ///   The id of the likable object
  ///
  /// * [String] deviceId:
  ///   The unique device identifier that made the request (either deviceId or accountId must be used)
  ///
  /// * [int] accountId:
  ///   The unique accountId that made the request (either deviceId or accountId must be used)
  ///
  /// * [String] permissionableType:
  ///   This is used for sending out group notifications. For example, when someone likes an asset which is also a part of an album, everyone in the album will receive a notification. This is achieved by passing in the permissionable type (in this case \"album\"), and the permissionable id (the album id). Possible types: {ALBUM, ALBUM_CONTEST, GAME_LEVEL, THEME_DESCRIPTOR}
  ///
  /// * [int] permissionableId:
  ///   The id of the permissionable object (for sending group notifications)
  ///
  /// * [bool] like:
  ///   determines whether the user likes or dislikes the object
  ///
  /// * [String] app:
  ///   This parameter is deprecated. This is deprecated, use \"appKey\" instead.
  ///
  /// * [String] gameType:
  ///   This parameter is deprecated. This is deprecated, use \"appKey\" instead.
  ///
  /// * [String] appKey:
  ///   the application key
  ///
  /// * [double] latitude:
  ///   The current location of the user
  ///
  /// * [double] longitude:
  ///   The current location of the user
  Future<LikableResponse?> registerLike(num version, String likableType, int likableId, { String? deviceId, int? accountId, String? permissionableType, int? permissionableId, bool? like, String? app, String? gameType, String? appKey, double? latitude, double? longitude, }) async {
    final response = await registerLikeWithHttpInfo(version, likableType, likableId,  deviceId: deviceId, accountId: accountId, permissionableType: permissionableType, permissionableId: permissionableId, like: like, app: app, gameType: gameType, appKey: appKey, latitude: latitude, longitude: longitude, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'LikableResponse',) as LikableResponse;
    
    }
    return null;
  }

  /// Delete Like
  ///
  /// Removes a like. This will make the user \"neutral\".
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [String] likableType (required):
  ///   The type of the likable object {ALBUM, ALBUM_CONTEST, ASSET, GAME_LEVEL, NOTE, THEME_DESCRIPTOR}
  ///
  /// * [int] likableId (required):
  ///   The id of the likable object
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
  Future<Response> removeLikeWithHttpInfo(num version, String likableType, int likableId, { String? deviceId, int? accountId, double? latitude, double? longitude, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/like/delete'
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
      queryParams.addAll(_queryParams('', 'likableType', likableType));
      queryParams.addAll(_queryParams('', 'likableId', likableId));
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

  /// Delete Like
  ///
  /// Removes a like. This will make the user \"neutral\".
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [String] likableType (required):
  ///   The type of the likable object {ALBUM, ALBUM_CONTEST, ASSET, GAME_LEVEL, NOTE, THEME_DESCRIPTOR}
  ///
  /// * [int] likableId (required):
  ///   The id of the likable object
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
  Future<LikableResponse?> removeLike(num version, String likableType, int likableId, { String? deviceId, int? accountId, double? latitude, double? longitude, }) async {
    final response = await removeLikeWithHttpInfo(version, likableType, likableId,  deviceId: deviceId, accountId: accountId, latitude: latitude, longitude: longitude, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'LikableResponse',) as LikableResponse;
    
    }
    return null;
  }

  /// Search Likes
  ///
  /// Search for likes on a likable object.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [String] likableType (required):
  ///   The type of the likable object {ALBUM, ALBUM_CONTEST, ASSET, GAME_LEVEL, NOTE, THEME_DESCRIPTOR}
  ///
  /// * [int] likableId (required):
  ///   The id of the likable object
  ///
  /// * [String] deviceId:
  ///   The unique device identifier that made the request (either deviceId or accountId must be used)
  ///
  /// * [int] accountId:
  ///   The unique accountId that made the request (either deviceId or accountId must be used)
  ///
  /// * [String] connectionAccountIds:
  ///   Comma separated list of account IDs for filtering on users
  ///
  /// * [String] sortField:
  ///   The field to sort by. Possible values include: ID
  ///
  /// * [bool] descending:
  ///   Determines whether the sorted list is in descending or ascending order
  ///
  /// * [int] updatedSince:
  ///   return items that have been updated since this date (time-stamp in milliseconds)
  ///
  /// * [int] updatedBefore:
  ///   return items that have been updated before this date (time-stamp in milliseconds)
  ///
  /// * [int] start:
  ///   the start index for pagination
  ///
  /// * [int] limit:
  ///   the limit for pagination
  Future<Response> searchLikesWithHttpInfo(num version, String likableType, int likableId, { String? deviceId, int? accountId, String? connectionAccountIds, String? sortField, bool? descending, int? updatedSince, int? updatedBefore, int? start, int? limit, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/like/search'
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
    if (connectionAccountIds != null) {
      queryParams.addAll(_queryParams('', 'connectionAccountIds', connectionAccountIds));
    }
      queryParams.addAll(_queryParams('', 'likableType', likableType));
      queryParams.addAll(_queryParams('', 'likableId', likableId));
    if (sortField != null) {
      queryParams.addAll(_queryParams('', 'sortField', sortField));
    }
    if (descending != null) {
      queryParams.addAll(_queryParams('', 'descending', descending));
    }
    if (updatedSince != null) {
      queryParams.addAll(_queryParams('', 'updatedSince', updatedSince));
    }
    if (updatedBefore != null) {
      queryParams.addAll(_queryParams('', 'updatedBefore', updatedBefore));
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

  /// Search Likes
  ///
  /// Search for likes on a likable object.
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [String] likableType (required):
  ///   The type of the likable object {ALBUM, ALBUM_CONTEST, ASSET, GAME_LEVEL, NOTE, THEME_DESCRIPTOR}
  ///
  /// * [int] likableId (required):
  ///   The id of the likable object
  ///
  /// * [String] deviceId:
  ///   The unique device identifier that made the request (either deviceId or accountId must be used)
  ///
  /// * [int] accountId:
  ///   The unique accountId that made the request (either deviceId or accountId must be used)
  ///
  /// * [String] connectionAccountIds:
  ///   Comma separated list of account IDs for filtering on users
  ///
  /// * [String] sortField:
  ///   The field to sort by. Possible values include: ID
  ///
  /// * [bool] descending:
  ///   Determines whether the sorted list is in descending or ascending order
  ///
  /// * [int] updatedSince:
  ///   return items that have been updated since this date (time-stamp in milliseconds)
  ///
  /// * [int] updatedBefore:
  ///   return items that have been updated before this date (time-stamp in milliseconds)
  ///
  /// * [int] start:
  ///   the start index for pagination
  ///
  /// * [int] limit:
  ///   the limit for pagination
  Future<SearchResponse?> searchLikes(num version, String likableType, int likableId, { String? deviceId, int? accountId, String? connectionAccountIds, String? sortField, bool? descending, int? updatedSince, int? updatedBefore, int? start, int? limit, }) async {
    final response = await searchLikesWithHttpInfo(version, likableType, likableId,  deviceId: deviceId, accountId: accountId, connectionAccountIds: connectionAccountIds, sortField: sortField, descending: descending, updatedSince: updatedSince, updatedBefore: updatedBefore, start: start, limit: limit, );
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
}
