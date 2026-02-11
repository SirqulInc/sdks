//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class GameLevelApi {
  GameLevelApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Create Game Level
  ///
  /// Create a game level. Currently does NOT support game objects.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] accountId (required):
  ///   The logged in user.
  ///
  /// * [String] name (required):
  ///   The name of the level.
  ///
  /// * [String] gameData (required):
  ///   The game level data: xml, json, or other text based format.
  ///
  /// * [String] gameDataSuffix (required):
  ///   The game level data format type.
  ///
  /// * [String] appKey:
  ///   The game application key to save the level for.
  ///
  /// * [String] description:
  ///   The description of the level.
  ///
  /// * [String] difficulty:
  ///   The difficulty, possible values are: VERY_EASY, EASY, MEDIUM, HARD, VERY_HARD.
  ///
  /// * [String] appVersion:
  ///   The version number of the application required to correctly load/play the level.
  ///
  /// * [int] assetImageId:
  ///   The asset Id of the level image.
  ///
  /// * [int] assetIconId:
  ///   The asset Id of the level icon.
  ///
  /// * [String] visibility:
  ///   Is the level visible to others, possible values are: PUBLIC, PRIVATE.
  ///
  /// * [bool] friendGroup:
  ///   Make the level be readable by all friends.
  ///
  /// * [String] connectionIds:
  ///   Make the level be readable by connections in this list.
  ///
  /// * [String] connectionGroupIds:
  ///   Make the level be readable by connection groups in this list.
  ///
  /// * [double] balance:
  ///   Set the amount of money available to spend, once 0 deactivate level. Set to a negative value for unlimited.
  ///
  /// * [bool] active:
  ///   If true set the game level as active. Default is false.
  ///
  /// * [bool] allocateTickets:
  ///   If true then scoring will give tickets. Default is false.
  ///
  /// * [int] ticketCount:
  ///   The number of tickets to reward
  ///
  /// * [String] ticketType:
  ///   The type of ticket to reward, null means default type
  ///
  /// * [int] points:
  ///   The number of points to award for completing a level
  ///
  /// * [String] tutorialTitle:
  ///   Title of the tutorial.
  ///
  /// * [String] tutorialMessage:
  ///   Message of the tutotrial.
  ///
  /// * [String] tutorialAlignment:
  ///   Alignment of the tutorial image. Default to NONE. Possible values are: NONE, IMAGE_ABOVE, IMAGE_BELOW, IMAGE_LEFT, IMAGE_RIGHT, IMAGE_ONLY, TEXT_ONLY
  ///
  /// * [int] tutorialImageAssetId:
  ///   Asset id of the tutorial image.
  ///
  /// * [int] offerId:
  ///   id of the offer
  ///
  /// * [String] metaData:
  ///   external custom client defined data
  Future<Response> createGameLevelWithHttpInfo(int accountId, String name, String gameData, String gameDataSuffix, { String? appKey, String? description, String? difficulty, String? appVersion, int? assetImageId, int? assetIconId, String? visibility, bool? friendGroup, String? connectionIds, String? connectionGroupIds, double? balance, bool? active, bool? allocateTickets, int? ticketCount, String? ticketType, int? points, String? tutorialTitle, String? tutorialMessage, String? tutorialAlignment, int? tutorialImageAssetId, int? offerId, String? metaData, }) async {
    // ignore: prefer_const_declarations
    final path = r'/level/create';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'accountId', accountId));
    if (appKey != null) {
      queryParams.addAll(_queryParams('', 'appKey', appKey));
    }
      queryParams.addAll(_queryParams('', 'name', name));
    if (description != null) {
      queryParams.addAll(_queryParams('', 'description', description));
    }
    if (difficulty != null) {
      queryParams.addAll(_queryParams('', 'difficulty', difficulty));
    }
    if (appVersion != null) {
      queryParams.addAll(_queryParams('', 'appVersion', appVersion));
    }
    if (assetImageId != null) {
      queryParams.addAll(_queryParams('', 'assetImageId', assetImageId));
    }
    if (assetIconId != null) {
      queryParams.addAll(_queryParams('', 'assetIconId', assetIconId));
    }
      queryParams.addAll(_queryParams('', 'gameData', gameData));
      queryParams.addAll(_queryParams('', 'gameDataSuffix', gameDataSuffix));
    if (visibility != null) {
      queryParams.addAll(_queryParams('', 'visibility', visibility));
    }
    if (friendGroup != null) {
      queryParams.addAll(_queryParams('', 'friendGroup', friendGroup));
    }
    if (connectionIds != null) {
      queryParams.addAll(_queryParams('', 'connectionIds', connectionIds));
    }
    if (connectionGroupIds != null) {
      queryParams.addAll(_queryParams('', 'connectionGroupIds', connectionGroupIds));
    }
    if (balance != null) {
      queryParams.addAll(_queryParams('', 'balance', balance));
    }
    if (active != null) {
      queryParams.addAll(_queryParams('', 'active', active));
    }
    if (allocateTickets != null) {
      queryParams.addAll(_queryParams('', 'allocateTickets', allocateTickets));
    }
    if (ticketCount != null) {
      queryParams.addAll(_queryParams('', 'ticketCount', ticketCount));
    }
    if (ticketType != null) {
      queryParams.addAll(_queryParams('', 'ticketType', ticketType));
    }
    if (points != null) {
      queryParams.addAll(_queryParams('', 'points', points));
    }
    if (tutorialTitle != null) {
      queryParams.addAll(_queryParams('', 'tutorialTitle', tutorialTitle));
    }
    if (tutorialMessage != null) {
      queryParams.addAll(_queryParams('', 'tutorialMessage', tutorialMessage));
    }
    if (tutorialAlignment != null) {
      queryParams.addAll(_queryParams('', 'tutorialAlignment', tutorialAlignment));
    }
    if (tutorialImageAssetId != null) {
      queryParams.addAll(_queryParams('', 'tutorialImageAssetId', tutorialImageAssetId));
    }
    if (offerId != null) {
      queryParams.addAll(_queryParams('', 'offerId', offerId));
    }
    if (metaData != null) {
      queryParams.addAll(_queryParams('', 'metaData', metaData));
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

  /// Create Game Level
  ///
  /// Create a game level. Currently does NOT support game objects.
  ///
  /// Parameters:
  ///
  /// * [int] accountId (required):
  ///   The logged in user.
  ///
  /// * [String] name (required):
  ///   The name of the level.
  ///
  /// * [String] gameData (required):
  ///   The game level data: xml, json, or other text based format.
  ///
  /// * [String] gameDataSuffix (required):
  ///   The game level data format type.
  ///
  /// * [String] appKey:
  ///   The game application key to save the level for.
  ///
  /// * [String] description:
  ///   The description of the level.
  ///
  /// * [String] difficulty:
  ///   The difficulty, possible values are: VERY_EASY, EASY, MEDIUM, HARD, VERY_HARD.
  ///
  /// * [String] appVersion:
  ///   The version number of the application required to correctly load/play the level.
  ///
  /// * [int] assetImageId:
  ///   The asset Id of the level image.
  ///
  /// * [int] assetIconId:
  ///   The asset Id of the level icon.
  ///
  /// * [String] visibility:
  ///   Is the level visible to others, possible values are: PUBLIC, PRIVATE.
  ///
  /// * [bool] friendGroup:
  ///   Make the level be readable by all friends.
  ///
  /// * [String] connectionIds:
  ///   Make the level be readable by connections in this list.
  ///
  /// * [String] connectionGroupIds:
  ///   Make the level be readable by connection groups in this list.
  ///
  /// * [double] balance:
  ///   Set the amount of money available to spend, once 0 deactivate level. Set to a negative value for unlimited.
  ///
  /// * [bool] active:
  ///   If true set the game level as active. Default is false.
  ///
  /// * [bool] allocateTickets:
  ///   If true then scoring will give tickets. Default is false.
  ///
  /// * [int] ticketCount:
  ///   The number of tickets to reward
  ///
  /// * [String] ticketType:
  ///   The type of ticket to reward, null means default type
  ///
  /// * [int] points:
  ///   The number of points to award for completing a level
  ///
  /// * [String] tutorialTitle:
  ///   Title of the tutorial.
  ///
  /// * [String] tutorialMessage:
  ///   Message of the tutotrial.
  ///
  /// * [String] tutorialAlignment:
  ///   Alignment of the tutorial image. Default to NONE. Possible values are: NONE, IMAGE_ABOVE, IMAGE_BELOW, IMAGE_LEFT, IMAGE_RIGHT, IMAGE_ONLY, TEXT_ONLY
  ///
  /// * [int] tutorialImageAssetId:
  ///   Asset id of the tutorial image.
  ///
  /// * [int] offerId:
  ///   id of the offer
  ///
  /// * [String] metaData:
  ///   external custom client defined data
  Future<GameLevelResponse?> createGameLevel(int accountId, String name, String gameData, String gameDataSuffix, { String? appKey, String? description, String? difficulty, String? appVersion, int? assetImageId, int? assetIconId, String? visibility, bool? friendGroup, String? connectionIds, String? connectionGroupIds, double? balance, bool? active, bool? allocateTickets, int? ticketCount, String? ticketType, int? points, String? tutorialTitle, String? tutorialMessage, String? tutorialAlignment, int? tutorialImageAssetId, int? offerId, String? metaData, }) async {
    final response = await createGameLevelWithHttpInfo(accountId, name, gameData, gameDataSuffix,  appKey: appKey, description: description, difficulty: difficulty, appVersion: appVersion, assetImageId: assetImageId, assetIconId: assetIconId, visibility: visibility, friendGroup: friendGroup, connectionIds: connectionIds, connectionGroupIds: connectionGroupIds, balance: balance, active: active, allocateTickets: allocateTickets, ticketCount: ticketCount, ticketType: ticketType, points: points, tutorialTitle: tutorialTitle, tutorialMessage: tutorialMessage, tutorialAlignment: tutorialAlignment, tutorialImageAssetId: tutorialImageAssetId, offerId: offerId, metaData: metaData, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GameLevelResponse',) as GameLevelResponse;
    
    }
    return null;
  }

  /// Delete Game Level
  ///
  /// Delete a game level. The level and account must be valid and have the appropirate permissions to view the content.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] accountId (required):
  ///   The logged in user.
  ///
  /// * [int] levelId (required):
  ///   The id of the level to return.
  Future<Response> deleteGameLevelWithHttpInfo(int accountId, int levelId,) async {
    // ignore: prefer_const_declarations
    final path = r'/level/delete';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'accountId', accountId));
      queryParams.addAll(_queryParams('', 'levelId', levelId));

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

  /// Delete Game Level
  ///
  /// Delete a game level. The level and account must be valid and have the appropirate permissions to view the content.
  ///
  /// Parameters:
  ///
  /// * [int] accountId (required):
  ///   The logged in user.
  ///
  /// * [int] levelId (required):
  ///   The id of the level to return.
  Future<SirqulResponse?> deleteGameLevel(int accountId, int levelId,) async {
    final response = await deleteGameLevelWithHttpInfo(accountId, levelId,);
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

  /// Get Game Level
  ///
  /// Get a game level. The level and account must be valid and have the appropirate permissions to view the content.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] accountId (required):
  ///   The logged in user.
  ///
  /// * [int] levelId (required):
  ///   The id of the level to return.
  ///
  /// * [bool] includeGameData:
  ///   If true include the game level data, otherwise don't. default is false.
  Future<Response> getGameLevelWithHttpInfo(int accountId, int levelId, { bool? includeGameData, }) async {
    // ignore: prefer_const_declarations
    final path = r'/level/get';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'accountId', accountId));
      queryParams.addAll(_queryParams('', 'levelId', levelId));
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

  /// Get Game Level
  ///
  /// Get a game level. The level and account must be valid and have the appropirate permissions to view the content.
  ///
  /// Parameters:
  ///
  /// * [int] accountId (required):
  ///   The logged in user.
  ///
  /// * [int] levelId (required):
  ///   The id of the level to return.
  ///
  /// * [bool] includeGameData:
  ///   If true include the game level data, otherwise don't. default is false.
  Future<GameLevelResponse?> getGameLevel(int accountId, int levelId, { bool? includeGameData, }) async {
    final response = await getGameLevelWithHttpInfo(accountId, levelId,  includeGameData: includeGameData, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GameLevelResponse',) as GameLevelResponse;
    
    }
    return null;
  }

  /// Search Game Levels
  ///
  /// Get a list of levels for an application, just those the account has permissions to view.
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
  /// * [String] keyword:
  ///   Match the keyword to the owner name or level name.
  ///
  /// * [String] sortField:
  ///   what field to sort on
  ///
  /// * [bool] descending:
  ///   whether to return levels in ascending or descending order
  ///
  /// * [int] start:
  ///   Start the result set at some index.
  ///
  /// * [int] limit:
  ///   Limit the result to some number.
  ///
  /// * [String] appVersion:
  ///   The maximum version of the level to return.
  ///
  /// * [bool] includeGameData:
  ///   If true include the game level data, otherwise don't. default is false.
  ///
  /// * [String] filters:
  ///   
  Future<Response> getGameLevelsByApplicationWithHttpInfo(int accountId, String appKey, { String? keyword, String? sortField, bool? descending, int? start, int? limit, String? appVersion, bool? includeGameData, String? filters, }) async {
    // ignore: prefer_const_declarations
    final path = r'/level/search';

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
    if (sortField != null) {
      queryParams.addAll(_queryParams('', 'sortField', sortField));
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
    if (appVersion != null) {
      queryParams.addAll(_queryParams('', 'appVersion', appVersion));
    }
    if (includeGameData != null) {
      queryParams.addAll(_queryParams('', 'includeGameData', includeGameData));
    }
    if (filters != null) {
      queryParams.addAll(_queryParams('', 'filters', filters));
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

  /// Search Game Levels
  ///
  /// Get a list of levels for an application, just those the account has permissions to view.
  ///
  /// Parameters:
  ///
  /// * [int] accountId (required):
  ///   The logged in user.
  ///
  /// * [String] appKey (required):
  ///   the application key
  ///
  /// * [String] keyword:
  ///   Match the keyword to the owner name or level name.
  ///
  /// * [String] sortField:
  ///   what field to sort on
  ///
  /// * [bool] descending:
  ///   whether to return levels in ascending or descending order
  ///
  /// * [int] start:
  ///   Start the result set at some index.
  ///
  /// * [int] limit:
  ///   Limit the result to some number.
  ///
  /// * [String] appVersion:
  ///   The maximum version of the level to return.
  ///
  /// * [bool] includeGameData:
  ///   If true include the game level data, otherwise don't. default is false.
  ///
  /// * [String] filters:
  ///   
  Future<GameLevelListResponse?> getGameLevelsByApplication(int accountId, String appKey, { String? keyword, String? sortField, bool? descending, int? start, int? limit, String? appVersion, bool? includeGameData, String? filters, }) async {
    final response = await getGameLevelsByApplicationWithHttpInfo(accountId, appKey,  keyword: keyword, sortField: sortField, descending: descending, start: start, limit: limit, appVersion: appVersion, includeGameData: includeGameData, filters: filters, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GameLevelListResponse',) as GameLevelListResponse;
    
    }
    return null;
  }

  /// Search Game Level by Billable Entity
  ///
  /// Searches on game levels that the logged in user has access to. A user would have access if the creator of the game level is managed under the same BillableEntity.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] accountId (required):
  ///   The account id of the user
  ///
  /// * [String] appKey:
  ///   the application key
  ///
  /// * [String] keyword:
  ///   The keyword used to search
  ///
  /// * [String] sortField:
  ///   The column to sort the search on
  ///
  /// * [bool] descending:
  ///   The order to return the search results
  ///
  /// * [bool] activeOnly:
  ///   Return only active results
  ///
  /// * [int] start:
  ///   The record to begin the return set on
  ///
  /// * [int] limit:
  ///   The number of records to return
  Future<Response> getGameLevelsByBillableEntityWithHttpInfo(int accountId, { String? appKey, String? keyword, String? sortField, bool? descending, bool? activeOnly, int? start, int? limit, }) async {
    // ignore: prefer_const_declarations
    final path = r'/level/searchByBillableEntity';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'accountId', accountId));
    if (appKey != null) {
      queryParams.addAll(_queryParams('', 'appKey', appKey));
    }
    if (keyword != null) {
      queryParams.addAll(_queryParams('', 'keyword', keyword));
    }
    if (sortField != null) {
      queryParams.addAll(_queryParams('', 'sortField', sortField));
    }
    if (descending != null) {
      queryParams.addAll(_queryParams('', 'descending', descending));
    }
    if (activeOnly != null) {
      queryParams.addAll(_queryParams('', 'activeOnly', activeOnly));
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

  /// Search Game Level by Billable Entity
  ///
  /// Searches on game levels that the logged in user has access to. A user would have access if the creator of the game level is managed under the same BillableEntity.
  ///
  /// Parameters:
  ///
  /// * [int] accountId (required):
  ///   The account id of the user
  ///
  /// * [String] appKey:
  ///   the application key
  ///
  /// * [String] keyword:
  ///   The keyword used to search
  ///
  /// * [String] sortField:
  ///   The column to sort the search on
  ///
  /// * [bool] descending:
  ///   The order to return the search results
  ///
  /// * [bool] activeOnly:
  ///   Return only active results
  ///
  /// * [int] start:
  ///   The record to begin the return set on
  ///
  /// * [int] limit:
  ///   The number of records to return
  Future<GameLevelResponse?> getGameLevelsByBillableEntity(int accountId, { String? appKey, String? keyword, String? sortField, bool? descending, bool? activeOnly, int? start, int? limit, }) async {
    final response = await getGameLevelsByBillableEntityWithHttpInfo(accountId,  appKey: appKey, keyword: keyword, sortField: sortField, descending: descending, activeOnly: activeOnly, start: start, limit: limit, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GameLevelResponse',) as GameLevelResponse;
    
    }
    return null;
  }

  /// Get Level Questions
  ///
  /// Get questions within a level.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] levelId (required):
  ///   the id of the level to get questions from
  ///
  /// * [int] accountId (required):
  ///   the id of the logged in user
  Future<Response> getQuestionsInLevelWithHttpInfo(int levelId, int accountId,) async {
    // ignore: prefer_const_declarations
    final path = r'/level/questions/get';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'levelId', levelId));
      queryParams.addAll(_queryParams('', 'accountId', accountId));

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

  /// Get Level Questions
  ///
  /// Get questions within a level.
  ///
  /// Parameters:
  ///
  /// * [int] levelId (required):
  ///   the id of the level to get questions from
  ///
  /// * [int] accountId (required):
  ///   the id of the logged in user
  Future<QuestionResponse?> getQuestionsInLevel(int levelId, int accountId,) async {
    final response = await getQuestionsInLevelWithHttpInfo(levelId, accountId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'QuestionResponse',) as QuestionResponse;
    
    }
    return null;
  }

  /// Get Level Words
  ///
  /// Get words within a level.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] levelId (required):
  ///   the id of the level to get words for
  ///
  /// * [int] accountId (required):
  ///   the id of the logged in user
  Future<Response> getWordsInLevelWithHttpInfo(int levelId, int accountId,) async {
    // ignore: prefer_const_declarations
    final path = r'/level/words/get';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'levelId', levelId));
      queryParams.addAll(_queryParams('', 'accountId', accountId));

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

  /// Get Level Words
  ///
  /// Get words within a level.
  ///
  /// Parameters:
  ///
  /// * [int] levelId (required):
  ///   the id of the level to get words for
  ///
  /// * [int] accountId (required):
  ///   the id of the logged in user
  Future<WordzWordResponse?> getWordsInLevel(int levelId, int accountId,) async {
    final response = await getWordsInLevelWithHttpInfo(levelId, accountId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'WordzWordResponse',) as WordzWordResponse;
    
    }
    return null;
  }

  /// Update Game Level
  ///
  /// Update a game level. Currently does NOT support game objects.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] accountId (required):
  ///   The logged in user.
  ///
  /// * [int] levelId (required):
  ///   If update then include the level Id.
  ///
  /// * [String] appKey:
  ///   The game application key to save the level for.
  ///
  /// * [String] name:
  ///   The name of the level.
  ///
  /// * [String] description:
  ///   The description of the level.
  ///
  /// * [String] difficulty:
  ///   The difficulty, possible values are: VERY_EASY, EASY, MEDIUM, HARD, VERY_HARD.
  ///
  /// * [String] appVersion:
  ///   The version number of the applicatuion required to correctly load/play the level.
  ///
  /// * [int] assetImageId:
  ///   The asset Id of the level image.
  ///
  /// * [int] assetIconId:
  ///   The asset Id of the level icon.
  ///
  /// * [String] gameData:
  ///   The game level data: xml, json, or other texted based format.
  ///
  /// * [String] gameDataSuffix:
  ///   The game level data format type.
  ///
  /// * [String] visibility:
  ///   Is the level visible to others, possible values are: PUBLIC, PRIVATE.
  ///
  /// * [bool] friendGroup:
  ///   Make the level be readable by all friends.
  ///
  /// * [String] connectionIds:
  ///   Make the level be readable by connections in this list.
  ///
  /// * [String] connectionGroupIds:
  ///   Make the level be readable by connection groups in this list.
  ///
  /// * [double] balance:
  ///   Set the amount of money available to spend, once 0 deactivate level. Set to a negative value for unlimited.
  ///
  /// * [bool] active:
  ///   If true set the game level as active.
  ///
  /// * [bool] allocateTickets:
  ///   If true then scoring will give tickets.
  ///
  /// * [int] ticketCount:
  ///   The number of tickets to reward
  ///
  /// * [String] ticketType:
  ///   The type of ticket to reward, null means default type
  ///
  /// * [int] points:
  ///   The number of points to award for completing a level
  ///
  /// * [String] tutorialTitle:
  ///   Title of the tutorial.
  ///
  /// * [String] tutorialMessage:
  ///   Message of the tutorial.
  ///
  /// * [String] tutorialAlignment:
  ///   Alignment of the tutorial image, possible values are: NONE, IMAGE_ABOVE, IMAGE_BELOW, IMAGE_LEFT, IMAGE_RIGHT, IMAGE_ONLY, TEXT_ONLY
  ///
  /// * [int] tutorialImageAssetId:
  ///   Asset id of the tutorial image.
  ///
  /// * [int] offerId:
  ///   
  ///
  /// * [String] metaData:
  ///   external custom client defined data
  Future<Response> updateGameLevelWithHttpInfo(int accountId, int levelId, { String? appKey, String? name, String? description, String? difficulty, String? appVersion, int? assetImageId, int? assetIconId, String? gameData, String? gameDataSuffix, String? visibility, bool? friendGroup, String? connectionIds, String? connectionGroupIds, double? balance, bool? active, bool? allocateTickets, int? ticketCount, String? ticketType, int? points, String? tutorialTitle, String? tutorialMessage, String? tutorialAlignment, int? tutorialImageAssetId, int? offerId, String? metaData, }) async {
    // ignore: prefer_const_declarations
    final path = r'/level/update';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'accountId', accountId));
    if (appKey != null) {
      queryParams.addAll(_queryParams('', 'appKey', appKey));
    }
      queryParams.addAll(_queryParams('', 'levelId', levelId));
    if (name != null) {
      queryParams.addAll(_queryParams('', 'name', name));
    }
    if (description != null) {
      queryParams.addAll(_queryParams('', 'description', description));
    }
    if (difficulty != null) {
      queryParams.addAll(_queryParams('', 'difficulty', difficulty));
    }
    if (appVersion != null) {
      queryParams.addAll(_queryParams('', 'appVersion', appVersion));
    }
    if (assetImageId != null) {
      queryParams.addAll(_queryParams('', 'assetImageId', assetImageId));
    }
    if (assetIconId != null) {
      queryParams.addAll(_queryParams('', 'assetIconId', assetIconId));
    }
    if (gameData != null) {
      queryParams.addAll(_queryParams('', 'gameData', gameData));
    }
    if (gameDataSuffix != null) {
      queryParams.addAll(_queryParams('', 'gameDataSuffix', gameDataSuffix));
    }
    if (visibility != null) {
      queryParams.addAll(_queryParams('', 'visibility', visibility));
    }
    if (friendGroup != null) {
      queryParams.addAll(_queryParams('', 'friendGroup', friendGroup));
    }
    if (connectionIds != null) {
      queryParams.addAll(_queryParams('', 'connectionIds', connectionIds));
    }
    if (connectionGroupIds != null) {
      queryParams.addAll(_queryParams('', 'connectionGroupIds', connectionGroupIds));
    }
    if (balance != null) {
      queryParams.addAll(_queryParams('', 'balance', balance));
    }
    if (active != null) {
      queryParams.addAll(_queryParams('', 'active', active));
    }
    if (allocateTickets != null) {
      queryParams.addAll(_queryParams('', 'allocateTickets', allocateTickets));
    }
    if (ticketCount != null) {
      queryParams.addAll(_queryParams('', 'ticketCount', ticketCount));
    }
    if (ticketType != null) {
      queryParams.addAll(_queryParams('', 'ticketType', ticketType));
    }
    if (points != null) {
      queryParams.addAll(_queryParams('', 'points', points));
    }
    if (tutorialTitle != null) {
      queryParams.addAll(_queryParams('', 'tutorialTitle', tutorialTitle));
    }
    if (tutorialMessage != null) {
      queryParams.addAll(_queryParams('', 'tutorialMessage', tutorialMessage));
    }
    if (tutorialAlignment != null) {
      queryParams.addAll(_queryParams('', 'tutorialAlignment', tutorialAlignment));
    }
    if (tutorialImageAssetId != null) {
      queryParams.addAll(_queryParams('', 'tutorialImageAssetId', tutorialImageAssetId));
    }
    if (offerId != null) {
      queryParams.addAll(_queryParams('', 'offerId', offerId));
    }
    if (metaData != null) {
      queryParams.addAll(_queryParams('', 'metaData', metaData));
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

  /// Update Game Level
  ///
  /// Update a game level. Currently does NOT support game objects.
  ///
  /// Parameters:
  ///
  /// * [int] accountId (required):
  ///   The logged in user.
  ///
  /// * [int] levelId (required):
  ///   If update then include the level Id.
  ///
  /// * [String] appKey:
  ///   The game application key to save the level for.
  ///
  /// * [String] name:
  ///   The name of the level.
  ///
  /// * [String] description:
  ///   The description of the level.
  ///
  /// * [String] difficulty:
  ///   The difficulty, possible values are: VERY_EASY, EASY, MEDIUM, HARD, VERY_HARD.
  ///
  /// * [String] appVersion:
  ///   The version number of the applicatuion required to correctly load/play the level.
  ///
  /// * [int] assetImageId:
  ///   The asset Id of the level image.
  ///
  /// * [int] assetIconId:
  ///   The asset Id of the level icon.
  ///
  /// * [String] gameData:
  ///   The game level data: xml, json, or other texted based format.
  ///
  /// * [String] gameDataSuffix:
  ///   The game level data format type.
  ///
  /// * [String] visibility:
  ///   Is the level visible to others, possible values are: PUBLIC, PRIVATE.
  ///
  /// * [bool] friendGroup:
  ///   Make the level be readable by all friends.
  ///
  /// * [String] connectionIds:
  ///   Make the level be readable by connections in this list.
  ///
  /// * [String] connectionGroupIds:
  ///   Make the level be readable by connection groups in this list.
  ///
  /// * [double] balance:
  ///   Set the amount of money available to spend, once 0 deactivate level. Set to a negative value for unlimited.
  ///
  /// * [bool] active:
  ///   If true set the game level as active.
  ///
  /// * [bool] allocateTickets:
  ///   If true then scoring will give tickets.
  ///
  /// * [int] ticketCount:
  ///   The number of tickets to reward
  ///
  /// * [String] ticketType:
  ///   The type of ticket to reward, null means default type
  ///
  /// * [int] points:
  ///   The number of points to award for completing a level
  ///
  /// * [String] tutorialTitle:
  ///   Title of the tutorial.
  ///
  /// * [String] tutorialMessage:
  ///   Message of the tutorial.
  ///
  /// * [String] tutorialAlignment:
  ///   Alignment of the tutorial image, possible values are: NONE, IMAGE_ABOVE, IMAGE_BELOW, IMAGE_LEFT, IMAGE_RIGHT, IMAGE_ONLY, TEXT_ONLY
  ///
  /// * [int] tutorialImageAssetId:
  ///   Asset id of the tutorial image.
  ///
  /// * [int] offerId:
  ///   
  ///
  /// * [String] metaData:
  ///   external custom client defined data
  Future<GameLevelResponse?> updateGameLevel(int accountId, int levelId, { String? appKey, String? name, String? description, String? difficulty, String? appVersion, int? assetImageId, int? assetIconId, String? gameData, String? gameDataSuffix, String? visibility, bool? friendGroup, String? connectionIds, String? connectionGroupIds, double? balance, bool? active, bool? allocateTickets, int? ticketCount, String? ticketType, int? points, String? tutorialTitle, String? tutorialMessage, String? tutorialAlignment, int? tutorialImageAssetId, int? offerId, String? metaData, }) async {
    final response = await updateGameLevelWithHttpInfo(accountId, levelId,  appKey: appKey, name: name, description: description, difficulty: difficulty, appVersion: appVersion, assetImageId: assetImageId, assetIconId: assetIconId, gameData: gameData, gameDataSuffix: gameDataSuffix, visibility: visibility, friendGroup: friendGroup, connectionIds: connectionIds, connectionGroupIds: connectionGroupIds, balance: balance, active: active, allocateTickets: allocateTickets, ticketCount: ticketCount, ticketType: ticketType, points: points, tutorialTitle: tutorialTitle, tutorialMessage: tutorialMessage, tutorialAlignment: tutorialAlignment, tutorialImageAssetId: tutorialImageAssetId, offerId: offerId, metaData: metaData, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GameLevelResponse',) as GameLevelResponse;
    
    }
    return null;
  }

  /// Update Level Questions
  ///
  /// Updates a level with question game objects.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] levelId (required):
  ///   the id of the level to update questions on
  ///
  /// * [int] accountId (required):
  ///   the id of the logged in user
  ///
  /// * [String] questionIds (required):
  ///   the IDs of the questions to update
  Future<Response> updateQuestionsInLevelWithHttpInfo(int levelId, int accountId, String questionIds,) async {
    // ignore: prefer_const_declarations
    final path = r'/level/questions/update';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'levelId', levelId));
      queryParams.addAll(_queryParams('', 'accountId', accountId));
      queryParams.addAll(_queryParams('', 'questionIds', questionIds));

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

  /// Update Level Questions
  ///
  /// Updates a level with question game objects.
  ///
  /// Parameters:
  ///
  /// * [int] levelId (required):
  ///   the id of the level to update questions on
  ///
  /// * [int] accountId (required):
  ///   the id of the logged in user
  ///
  /// * [String] questionIds (required):
  ///   the IDs of the questions to update
  Future<SirqulResponse?> updateQuestionsInLevel(int levelId, int accountId, String questionIds,) async {
    final response = await updateQuestionsInLevelWithHttpInfo(levelId, accountId, questionIds,);
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

  /// Update Level Words
  ///
  /// Updates a level with word game objects.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] levelId (required):
  ///   the id of the level to update words for
  ///
  /// * [int] accountId (required):
  ///   the id of the logged in user
  ///
  /// * [String] wordIds (required):
  ///   the ids of the words to update for the level
  Future<Response> updateWordsInLevelWithHttpInfo(int levelId, int accountId, String wordIds,) async {
    // ignore: prefer_const_declarations
    final path = r'/level/words/update';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'levelId', levelId));
      queryParams.addAll(_queryParams('', 'accountId', accountId));
      queryParams.addAll(_queryParams('', 'wordIds', wordIds));

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

  /// Update Level Words
  ///
  /// Updates a level with word game objects.
  ///
  /// Parameters:
  ///
  /// * [int] levelId (required):
  ///   the id of the level to update words for
  ///
  /// * [int] accountId (required):
  ///   the id of the logged in user
  ///
  /// * [String] wordIds (required):
  ///   the ids of the words to update for the level
  Future<SirqulResponse?> updateWordsInLevel(int levelId, int accountId, String wordIds,) async {
    final response = await updateWordsInLevelWithHttpInfo(levelId, accountId, wordIds,);
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
