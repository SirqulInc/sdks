//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class GameApi {
  GameApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Create a Game
  ///
  /// Create a Game.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] accountId:
  ///   The logged in user.
  ///
  /// * [String] appKey:
  ///   The game application key to save the level for.
  ///
  /// * [String] title:
  ///   Title of the game.
  ///
  /// * [String] description:
  ///   Description of the game.
  ///
  /// * [String] metaData:
  ///   metaData of the Game.
  ///
  /// * [String] packIds:
  ///   comma separated String of pack Ids that will associate with the game.
  ///
  /// * [bool] includeGameData:
  ///   Show more details in response.
  Future<Response> createGameWithHttpInfo({ int? accountId, String? appKey, String? title, String? description, String? metaData, String? packIds, bool? includeGameData, }) async {
    // ignore: prefer_const_declarations
    final path = r'/game/create';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (accountId != null) {
      queryParams.addAll(_queryParams('', 'accountId', accountId));
    }
    if (appKey != null) {
      queryParams.addAll(_queryParams('', 'appKey', appKey));
    }
    if (title != null) {
      queryParams.addAll(_queryParams('', 'title', title));
    }
    if (description != null) {
      queryParams.addAll(_queryParams('', 'description', description));
    }
    if (metaData != null) {
      queryParams.addAll(_queryParams('', 'metaData', metaData));
    }
    if (packIds != null) {
      queryParams.addAll(_queryParams('', 'packIds', packIds));
    }
    if (includeGameData != null) {
      queryParams.addAll(_queryParams('', 'includeGameData', includeGameData));
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

  /// Create a Game
  ///
  /// Create a Game.
  ///
  /// Parameters:
  ///
  /// * [int] accountId:
  ///   The logged in user.
  ///
  /// * [String] appKey:
  ///   The game application key to save the level for.
  ///
  /// * [String] title:
  ///   Title of the game.
  ///
  /// * [String] description:
  ///   Description of the game.
  ///
  /// * [String] metaData:
  ///   metaData of the Game.
  ///
  /// * [String] packIds:
  ///   comma separated String of pack Ids that will associate with the game.
  ///
  /// * [bool] includeGameData:
  ///   Show more details in response.
  Future<GameResponse?> createGame({ int? accountId, String? appKey, String? title, String? description, String? metaData, String? packIds, bool? includeGameData, }) async {
    final response = await createGameWithHttpInfo( accountId: accountId, appKey: appKey, title: title, description: description, metaData: metaData, packIds: packIds, includeGameData: includeGameData, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GameResponse',) as GameResponse;
    
    }
    return null;
  }

  /// Delete a Game
  ///
  /// Delete a game.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] accountId (required):
  ///   The logged in user.
  ///
  /// * [int] gameId (required):
  ///   the updating game's id.
  Future<Response> deleteGameWithHttpInfo(int accountId, int gameId,) async {
    // ignore: prefer_const_declarations
    final path = r'/game/delete';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'accountId', accountId));
      queryParams.addAll(_queryParams('', 'gameId', gameId));

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

  /// Delete a Game
  ///
  /// Delete a game.
  ///
  /// Parameters:
  ///
  /// * [int] accountId (required):
  ///   The logged in user.
  ///
  /// * [int] gameId (required):
  ///   the updating game's id.
  Future<SirqulResponse?> deleteGame(int accountId, int gameId,) async {
    final response = await deleteGameWithHttpInfo(accountId, gameId,);
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

  /// Get a Game by id
  ///
  /// Get a Game by id.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] accountId (required):
  ///   The logged in user.
  ///
  /// * [int] gameId (required):
  ///   the updating game's id.
  ///
  /// * [bool] includeGameData:
  ///   If true include the game level data, otherwise don't. default is false.
  Future<Response> getGameWithHttpInfo(int accountId, int gameId, { bool? includeGameData, }) async {
    // ignore: prefer_const_declarations
    final path = r'/game/get';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'accountId', accountId));
      queryParams.addAll(_queryParams('', 'gameId', gameId));
    if (includeGameData != null) {
      queryParams.addAll(_queryParams('', 'includeGameData', includeGameData));
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

  /// Get a Game by id
  ///
  /// Get a Game by id.
  ///
  /// Parameters:
  ///
  /// * [int] accountId (required):
  ///   The logged in user.
  ///
  /// * [int] gameId (required):
  ///   the updating game's id.
  ///
  /// * [bool] includeGameData:
  ///   If true include the game level data, otherwise don't. default is false.
  Future<GameResponse?> getGame(int accountId, int gameId, { bool? includeGameData, }) async {
    final response = await getGameWithHttpInfo(accountId, gameId,  includeGameData: includeGameData, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GameResponse',) as GameResponse;
    
    }
    return null;
  }

  /// Search a Game
  ///
  /// Get a list of games for an application, just those the account has permissions to view.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] accountId (required):
  ///   The logged in user.
  ///
  /// * [String] appKey (required):
  ///   the application key
  ///
  /// * [int] start (required):
  ///   Start the result set at some index.
  ///
  /// * [int] limit (required):
  ///   Limit the result to some number.
  ///
  /// * [String] keyword:
  ///   Match the keyword to the owner name or level name.
  ///
  /// * [String] appVersion:
  ///   The maximum version of the level to return.
  ///
  /// * [bool] includeGameData:
  ///   more details in response
  ///
  /// * [bool] includeInactive:
  ///   more details in response
  Future<Response> searchGamesWithHttpInfo(int accountId, String appKey, int start, int limit, { String? keyword, String? appVersion, bool? includeGameData, bool? includeInactive, }) async {
    // ignore: prefer_const_declarations
    final path = r'/game/search';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'accountId', accountId));
      queryParams.addAll(_queryParams('', 'appKey', appKey));
    if (keyword != null) {
      queryParams.addAll(_queryParams('', 'keyword', keyword));
    }
      queryParams.addAll(_queryParams('', 'start', start));
      queryParams.addAll(_queryParams('', 'limit', limit));
    if (appVersion != null) {
      queryParams.addAll(_queryParams('', 'appVersion', appVersion));
    }
    if (includeGameData != null) {
      queryParams.addAll(_queryParams('', 'includeGameData', includeGameData));
    }
    if (includeInactive != null) {
      queryParams.addAll(_queryParams('', 'includeInactive', includeInactive));
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

  /// Search a Game
  ///
  /// Get a list of games for an application, just those the account has permissions to view.
  ///
  /// Parameters:
  ///
  /// * [int] accountId (required):
  ///   The logged in user.
  ///
  /// * [String] appKey (required):
  ///   the application key
  ///
  /// * [int] start (required):
  ///   Start the result set at some index.
  ///
  /// * [int] limit (required):
  ///   Limit the result to some number.
  ///
  /// * [String] keyword:
  ///   Match the keyword to the owner name or level name.
  ///
  /// * [String] appVersion:
  ///   The maximum version of the level to return.
  ///
  /// * [bool] includeGameData:
  ///   more details in response
  ///
  /// * [bool] includeInactive:
  ///   more details in response
  Future<GameResponse?> searchGames(int accountId, String appKey, int start, int limit, { String? keyword, String? appVersion, bool? includeGameData, bool? includeInactive, }) async {
    final response = await searchGamesWithHttpInfo(accountId, appKey, start, limit,  keyword: keyword, appVersion: appVersion, includeGameData: includeGameData, includeInactive: includeInactive, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GameResponse',) as GameResponse;
    
    }
    return null;
  }

  /// Update a Game
  ///
  /// Update a Game
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] accountId:
  ///   The logged in user.
  ///
  /// * [int] gameId:
  ///   the updating game's id
  ///
  /// * [String] appKey:
  ///   The game application key to save the level for.
  ///
  /// * [String] title:
  ///   Title of the Game.
  ///
  /// * [String] description:
  ///   Description of the Game.
  ///
  /// * [String] metaData:
  ///   metaData of the Game.
  ///
  /// * [String] packIds:
  ///   comma separated String of pack Ids that will associate with the game.
  ///
  /// * [bool] includeGameData:
  ///   show more details in response.
  Future<Response> updateGameWithHttpInfo({ int? accountId, int? gameId, String? appKey, String? title, String? description, String? metaData, String? packIds, bool? includeGameData, }) async {
    // ignore: prefer_const_declarations
    final path = r'/game/update';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (accountId != null) {
      queryParams.addAll(_queryParams('', 'accountId', accountId));
    }
    if (gameId != null) {
      queryParams.addAll(_queryParams('', 'gameId', gameId));
    }
    if (appKey != null) {
      queryParams.addAll(_queryParams('', 'appKey', appKey));
    }
    if (title != null) {
      queryParams.addAll(_queryParams('', 'title', title));
    }
    if (description != null) {
      queryParams.addAll(_queryParams('', 'description', description));
    }
    if (metaData != null) {
      queryParams.addAll(_queryParams('', 'metaData', metaData));
    }
    if (packIds != null) {
      queryParams.addAll(_queryParams('', 'packIds', packIds));
    }
    if (includeGameData != null) {
      queryParams.addAll(_queryParams('', 'includeGameData', includeGameData));
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

  /// Update a Game
  ///
  /// Update a Game
  ///
  /// Parameters:
  ///
  /// * [int] accountId:
  ///   The logged in user.
  ///
  /// * [int] gameId:
  ///   the updating game's id
  ///
  /// * [String] appKey:
  ///   The game application key to save the level for.
  ///
  /// * [String] title:
  ///   Title of the Game.
  ///
  /// * [String] description:
  ///   Description of the Game.
  ///
  /// * [String] metaData:
  ///   metaData of the Game.
  ///
  /// * [String] packIds:
  ///   comma separated String of pack Ids that will associate with the game.
  ///
  /// * [bool] includeGameData:
  ///   show more details in response.
  Future<GameResponse?> updateGame({ int? accountId, int? gameId, String? appKey, String? title, String? description, String? metaData, String? packIds, bool? includeGameData, }) async {
    final response = await updateGameWithHttpInfo( accountId: accountId, gameId: gameId, appKey: appKey, title: title, description: description, metaData: metaData, packIds: packIds, includeGameData: includeGameData, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GameResponse',) as GameResponse;
    
    }
    return null;
  }
}
