//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class AppDataApi {
  AppDataApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Get App Data
  ///
  /// Get the application data structure.  The basic structure is a   node tree, with the root node being a AppResponse.  The response contains   the user's profile, messages from the system, and a list of MissionResponse.    A mission can have any number of GameResponses but typically is a single   game type.  A game then has any number of PackResponses which help group   the game levels. Packs are then composed of any number of GameLevelResponses.     Using the various parameters can return the applications default mission   (built-in packs to play), the list of community levels published, the user's   saved levels, or explicity levels desired.  You can choose to include the   profile or not, or just return parts of the profile.  You can also filter   out game levels that have been published with a higher version of the application.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] start (required):
  ///   start the search results at a record.
  ///
  /// * [int] limit (required):
  ///   limit the search results to some number.
  ///
  /// * [String] deviceId:
  ///   the device id (deviceId or accountId required).
  ///
  /// * [int] accountId:
  ///   the account id of the user (deviceId or accountId required).
  ///
  /// * [String] gameType:
  ///   the game to retrieve the data for, use your application key.
  ///
  /// * [bool] includeGameData:
  ///   if true then include the game data blob, otherwise don't include.
  ///
  /// * [String] q:
  ///   This parameter is deprecated.
  ///
  /// * [String] keyword:
  ///   query string used to filter the search results when looking for community and saved levels.
  ///
  /// * [String] sortField:
  ///   how to sort the results when looking for community and saved levels. possible values are: LEVEL_NAME, LEVEL_CREATED, LEVEL_UPDATED, LEVEL_LIKES, LEVEL_DISLIKES, LEVEL_NOTES, LEVEL_PLAYS.
  ///
  /// * [bool] descending:
  ///   order the search results descending or ascending when looking for community and saved levels.
  ///
  /// * [int] i:
  ///   This parameter is deprecated.
  ///
  /// * [int] l:
  ///   This parameter is deprecated.
  ///
  /// * [bool] gameObjectCount:
  ///   if true then include the game object count, otherwise don't include.
  ///
  /// * [String] filter:
  ///   restrict the search to items with certain permissions, possible values are: MINE, FRIENDS, PUBLIC, ALL_PUBLIC, ALL, LIKED
  ///
  /// * [int] dateCreated:
  ///   restrict the search to items created less then date
  ///
  /// * [int] ownerId:
  ///   get levels owned by a particular account
  ///
  /// * [String] missionIds:
  ///   get missions by specified id, comman seperated list of long ids
  ///
  /// * [String] gameIds:
  ///   get games by specified id, comman seperated list of long ids
  ///
  /// * [String] packIds:
  ///   get packs by specified id, comman seperated list of long ids
  ///
  /// * [String] gameLevelIds:
  ///   get game levels by specified id, comman seperated list of long ids
  ///
  /// * [String] appVersion:
  ///   the application version, used to versin the game level data
  ///
  /// * [bool] includeHigherVersionPacks:
  ///   default is false and will not include any packs that have levels above the specified appVersion. If true then will return all levels regardless of version.
  ///
  /// * [bool] includeHigherVersionLevels:
  ///   default is false and will not include any levels above the specified appVersion. If true then will return all levels regardless of version.
  ///
  /// * [String] responseGroups:
  ///   use response groups to include large parts of the structure. possible values are: * MISSION_DEFAULT (default) - include the default mission (built-in packs), excludes all other mission groups * MISSION_DEFAULT_LEVELS_SAVED - include saved levels, excludes all other mission groups * MISSION_DEFAULT_LEVELS_COMMUNITY - include community levels, excludes all other mission groups * MISSION_INVITED (default) - include challenges sent to user * PROFILE (default) - include entire profile * PROFILE_DATA - only include profile date (exclude friends) * PROFILE_FRIENDS - include friends list 
  ///
  /// * [String] purchaseType:
  ///   the will return the correct in app purchases for the device, possible values are: * SIRQUL (default) - purchasing from the sirqul store using tickets * IOS - purchasing from the itunes store for iPhone, iPod, iPod Touch * GOOGLE - purchasing from the google android store * AMAZON - purchasing from the amazon android store * MAC - purchasing from the itunes store for OSX * FREE - the item is free to purchase 
  Future<Response> getAppDataWithHttpInfo(int start, int limit, { String? deviceId, int? accountId, String? gameType, bool? includeGameData, String? q, String? keyword, String? sortField, bool? descending, int? i, int? l, bool? gameObjectCount, String? filter, int? dateCreated, int? ownerId, String? missionIds, String? gameIds, String? packIds, String? gameLevelIds, String? appVersion, bool? includeHigherVersionPacks, bool? includeHigherVersionLevels, String? responseGroups, String? purchaseType, }) async {
    // ignore: prefer_const_declarations
    final path = r'/app/get';

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
    if (gameType != null) {
      queryParams.addAll(_queryParams('', 'gameType', gameType));
    }
    if (includeGameData != null) {
      queryParams.addAll(_queryParams('', 'includeGameData', includeGameData));
    }
    if (q != null) {
      queryParams.addAll(_queryParams('', 'q', q));
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
    if (i != null) {
      queryParams.addAll(_queryParams('', '_i', i));
    }
      queryParams.addAll(_queryParams('', 'start', start));
    if (l != null) {
      queryParams.addAll(_queryParams('', '_l', l));
    }
      queryParams.addAll(_queryParams('', 'limit', limit));
    if (gameObjectCount != null) {
      queryParams.addAll(_queryParams('', 'gameObjectCount', gameObjectCount));
    }
    if (filter != null) {
      queryParams.addAll(_queryParams('', 'filter', filter));
    }
    if (dateCreated != null) {
      queryParams.addAll(_queryParams('', 'dateCreated', dateCreated));
    }
    if (ownerId != null) {
      queryParams.addAll(_queryParams('', 'ownerId', ownerId));
    }
    if (missionIds != null) {
      queryParams.addAll(_queryParams('', 'missionIds', missionIds));
    }
    if (gameIds != null) {
      queryParams.addAll(_queryParams('', 'gameIds', gameIds));
    }
    if (packIds != null) {
      queryParams.addAll(_queryParams('', 'packIds', packIds));
    }
    if (gameLevelIds != null) {
      queryParams.addAll(_queryParams('', 'gameLevelIds', gameLevelIds));
    }
    if (appVersion != null) {
      queryParams.addAll(_queryParams('', 'appVersion', appVersion));
    }
    if (includeHigherVersionPacks != null) {
      queryParams.addAll(_queryParams('', 'includeHigherVersionPacks', includeHigherVersionPacks));
    }
    if (includeHigherVersionLevels != null) {
      queryParams.addAll(_queryParams('', 'includeHigherVersionLevels', includeHigherVersionLevels));
    }
    if (responseGroups != null) {
      queryParams.addAll(_queryParams('', 'responseGroups', responseGroups));
    }
    if (purchaseType != null) {
      queryParams.addAll(_queryParams('', 'purchaseType', purchaseType));
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

  /// Get App Data
  ///
  /// Get the application data structure.  The basic structure is a   node tree, with the root node being a AppResponse.  The response contains   the user's profile, messages from the system, and a list of MissionResponse.    A mission can have any number of GameResponses but typically is a single   game type.  A game then has any number of PackResponses which help group   the game levels. Packs are then composed of any number of GameLevelResponses.     Using the various parameters can return the applications default mission   (built-in packs to play), the list of community levels published, the user's   saved levels, or explicity levels desired.  You can choose to include the   profile or not, or just return parts of the profile.  You can also filter   out game levels that have been published with a higher version of the application.
  ///
  /// Parameters:
  ///
  /// * [int] start (required):
  ///   start the search results at a record.
  ///
  /// * [int] limit (required):
  ///   limit the search results to some number.
  ///
  /// * [String] deviceId:
  ///   the device id (deviceId or accountId required).
  ///
  /// * [int] accountId:
  ///   the account id of the user (deviceId or accountId required).
  ///
  /// * [String] gameType:
  ///   the game to retrieve the data for, use your application key.
  ///
  /// * [bool] includeGameData:
  ///   if true then include the game data blob, otherwise don't include.
  ///
  /// * [String] q:
  ///   This parameter is deprecated.
  ///
  /// * [String] keyword:
  ///   query string used to filter the search results when looking for community and saved levels.
  ///
  /// * [String] sortField:
  ///   how to sort the results when looking for community and saved levels. possible values are: LEVEL_NAME, LEVEL_CREATED, LEVEL_UPDATED, LEVEL_LIKES, LEVEL_DISLIKES, LEVEL_NOTES, LEVEL_PLAYS.
  ///
  /// * [bool] descending:
  ///   order the search results descending or ascending when looking for community and saved levels.
  ///
  /// * [int] i:
  ///   This parameter is deprecated.
  ///
  /// * [int] l:
  ///   This parameter is deprecated.
  ///
  /// * [bool] gameObjectCount:
  ///   if true then include the game object count, otherwise don't include.
  ///
  /// * [String] filter:
  ///   restrict the search to items with certain permissions, possible values are: MINE, FRIENDS, PUBLIC, ALL_PUBLIC, ALL, LIKED
  ///
  /// * [int] dateCreated:
  ///   restrict the search to items created less then date
  ///
  /// * [int] ownerId:
  ///   get levels owned by a particular account
  ///
  /// * [String] missionIds:
  ///   get missions by specified id, comman seperated list of long ids
  ///
  /// * [String] gameIds:
  ///   get games by specified id, comman seperated list of long ids
  ///
  /// * [String] packIds:
  ///   get packs by specified id, comman seperated list of long ids
  ///
  /// * [String] gameLevelIds:
  ///   get game levels by specified id, comman seperated list of long ids
  ///
  /// * [String] appVersion:
  ///   the application version, used to versin the game level data
  ///
  /// * [bool] includeHigherVersionPacks:
  ///   default is false and will not include any packs that have levels above the specified appVersion. If true then will return all levels regardless of version.
  ///
  /// * [bool] includeHigherVersionLevels:
  ///   default is false and will not include any levels above the specified appVersion. If true then will return all levels regardless of version.
  ///
  /// * [String] responseGroups:
  ///   use response groups to include large parts of the structure. possible values are: * MISSION_DEFAULT (default) - include the default mission (built-in packs), excludes all other mission groups * MISSION_DEFAULT_LEVELS_SAVED - include saved levels, excludes all other mission groups * MISSION_DEFAULT_LEVELS_COMMUNITY - include community levels, excludes all other mission groups * MISSION_INVITED (default) - include challenges sent to user * PROFILE (default) - include entire profile * PROFILE_DATA - only include profile date (exclude friends) * PROFILE_FRIENDS - include friends list 
  ///
  /// * [String] purchaseType:
  ///   the will return the correct in app purchases for the device, possible values are: * SIRQUL (default) - purchasing from the sirqul store using tickets * IOS - purchasing from the itunes store for iPhone, iPod, iPod Touch * GOOGLE - purchasing from the google android store * AMAZON - purchasing from the amazon android store * MAC - purchasing from the itunes store for OSX * FREE - the item is free to purchase 
  Future<AppResponse?> getAppData(int start, int limit, { String? deviceId, int? accountId, String? gameType, bool? includeGameData, String? q, String? keyword, String? sortField, bool? descending, int? i, int? l, bool? gameObjectCount, String? filter, int? dateCreated, int? ownerId, String? missionIds, String? gameIds, String? packIds, String? gameLevelIds, String? appVersion, bool? includeHigherVersionPacks, bool? includeHigherVersionLevels, String? responseGroups, String? purchaseType, }) async {
    final response = await getAppDataWithHttpInfo(start, limit,  deviceId: deviceId, accountId: accountId, gameType: gameType, includeGameData: includeGameData, q: q, keyword: keyword, sortField: sortField, descending: descending, i: i, l: l, gameObjectCount: gameObjectCount, filter: filter, dateCreated: dateCreated, ownerId: ownerId, missionIds: missionIds, gameIds: gameIds, packIds: packIds, gameLevelIds: gameLevelIds, appVersion: appVersion, includeHigherVersionPacks: includeHigherVersionPacks, includeHigherVersionLevels: includeHigherVersionLevels, responseGroups: responseGroups, purchaseType: purchaseType, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'AppResponse',) as AppResponse;
    
    }
    return null;
  }

  /// Create App Data
  ///
  /// Publish the application data structure.  Can be used to save levels   and scores.  It then returns the application data structure.  The basic   structure is a node tree, with the root node being a AppResponse.  The response   contains the user's profile, messages from the system, and a list of MissionResponse.    A mission can have any number of GameResponses but typically is a single   game type.  A game then has any number of PackResponses which help group   the game levels. Packs are then composed of any number of GameLevelResponses.      Using the various parameters can return the applications default mission   (built-in packs to play), the list of community levels published, the user's   saved levels, or explicity levels desired.  You can choose to include the   profile or not, or just return parts of the profile.  You can also filter   out game levels that have been published with a higher version of the application
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] gameType (required):
  ///   the game to retrieve the data for, use your application key.
  ///
  /// * [int] start (required):
  ///   start the search results at a record.
  ///
  /// * [int] limit (required):
  ///   limit the search results to some number.
  ///
  /// * [String] data (required):
  ///   The analytic data AnalyticListResponse
  ///
  /// * [String] deviceId:
  ///   the device id (deviceId or accountId required).
  ///
  /// * [int] accountId:
  ///   the account id of the user (deviceId or accountId required).
  ///
  /// * [bool] includeGameData:
  ///   if true then include the game data blob, otherwise don't include.
  ///
  /// * [String] q:
  ///   This parameter is deprecated.
  ///
  /// * [String] keyword:
  ///   query string used to filter the search results when looking for community and saved levels.
  ///
  /// * [String] sortField:
  ///   how to sort the results when looking for community and saved levels. possible values are: LEVEL_NAME, LEVEL_CREATED, LEVEL_UPDATED, LEVEL_LIKES, LEVEL_DISLIKES, LEVEL_NOTES, LEVEL_PLAYS.
  ///
  /// * [bool] descending:
  ///   order the search results descending or ascending when looking for community and saved levels.
  ///
  /// * [int] i:
  ///   This parameter is deprecated.
  ///
  /// * [int] l:
  ///   This parameter is deprecated.
  ///
  /// * [bool] gameObjectCount:
  ///   if true then include the game object count, otherwise don't include.
  ///
  /// * [String] filter:
  ///   restrict the search to items with certain permissions, possible values are: MINE, FRIENDS, PUBLIC, ALL_PUBLIC, ALL, LIKED
  ///
  /// * [int] dateCreated:
  ///   restrict the search to items created less then date
  ///
  /// * [int] ownerId:
  ///   get levels owned by a particular account
  ///
  /// * [String] missionIds:
  ///   get missions by specified id, comman seperated list of long ids
  ///
  /// * [String] gameIds:
  ///   get games by specified id, comman seperated list of long ids
  ///
  /// * [String] packIds:
  ///   get packs by specified id, comman seperated list of long ids
  ///
  /// * [String] gameLevelIds:
  ///   get game levels by specified id, comman seperated list of long ids
  ///
  /// * [String] appVersion:
  ///   the application version, used to versin the game level data
  ///
  /// * [bool] includeHigherVersionPacks:
  ///   default is false and will not include any packs that have levels above the specified appVersion. If true then will return all levels regardless of version.
  ///
  /// * [bool] includeHigherVersionLevels:
  ///   default is false and will not include any levels above the specified appVersion. If true then will return all levels regardless of version.
  ///
  /// * [String] responseGroups:
  ///   use response groups to include large parts of the structure. possible values are: * MISSION_DEFAULT (default) - include the default mission (built-in packs), excludes all other mission groups * MISSION_DEFAULT_LEVELS_SAVED - include saved levels, excludes all other mission groups * MISSION_DEFAULT_LEVELS_COMMUNITY - include community levels, excludes all other mission groups * MISSION_INVITED (default) - include challenges sent to user * PROFILE (default) - include entire profile * PROFILE_DATA - only include profile date (exclude friends) * PROFILE_FRIENDS - include friends list 
  ///
  /// * [String] purchaseType:
  ///   the will return the correct in app purchases for the device, possible values are: * SIRQUL (default) - purchasing from the sirqul store using tickets * IOS - purchasing from the itunes store for iPhone, iPod, iPod Touch * GOOGLE - purchasing from the google android store * AMAZON - purchasing from the amazon android store * MAC - purchasing from the itunes store for OSX * FREE - the item is free to purchase 
  Future<Response> postAppDataWithHttpInfo(String gameType, int start, int limit, String data, { String? deviceId, int? accountId, bool? includeGameData, String? q, String? keyword, String? sortField, bool? descending, int? i, int? l, bool? gameObjectCount, String? filter, int? dateCreated, int? ownerId, String? missionIds, String? gameIds, String? packIds, String? gameLevelIds, String? appVersion, bool? includeHigherVersionPacks, bool? includeHigherVersionLevels, String? responseGroups, String? purchaseType, }) async {
    // ignore: prefer_const_declarations
    final path = r'/app/post';

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
      queryParams.addAll(_queryParams('', 'gameType', gameType));
    if (includeGameData != null) {
      queryParams.addAll(_queryParams('', 'includeGameData', includeGameData));
    }
    if (q != null) {
      queryParams.addAll(_queryParams('', 'q', q));
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
    if (i != null) {
      queryParams.addAll(_queryParams('', '_i', i));
    }
      queryParams.addAll(_queryParams('', 'start', start));
    if (l != null) {
      queryParams.addAll(_queryParams('', '_l', l));
    }
      queryParams.addAll(_queryParams('', 'limit', limit));
    if (gameObjectCount != null) {
      queryParams.addAll(_queryParams('', 'gameObjectCount', gameObjectCount));
    }
    if (filter != null) {
      queryParams.addAll(_queryParams('', 'filter', filter));
    }
    if (dateCreated != null) {
      queryParams.addAll(_queryParams('', 'dateCreated', dateCreated));
    }
    if (ownerId != null) {
      queryParams.addAll(_queryParams('', 'ownerId', ownerId));
    }
    if (missionIds != null) {
      queryParams.addAll(_queryParams('', 'missionIds', missionIds));
    }
    if (gameIds != null) {
      queryParams.addAll(_queryParams('', 'gameIds', gameIds));
    }
    if (packIds != null) {
      queryParams.addAll(_queryParams('', 'packIds', packIds));
    }
    if (gameLevelIds != null) {
      queryParams.addAll(_queryParams('', 'gameLevelIds', gameLevelIds));
    }
    if (appVersion != null) {
      queryParams.addAll(_queryParams('', 'appVersion', appVersion));
    }
    if (includeHigherVersionPacks != null) {
      queryParams.addAll(_queryParams('', 'includeHigherVersionPacks', includeHigherVersionPacks));
    }
    if (includeHigherVersionLevels != null) {
      queryParams.addAll(_queryParams('', 'includeHigherVersionLevels', includeHigherVersionLevels));
    }
    if (responseGroups != null) {
      queryParams.addAll(_queryParams('', 'responseGroups', responseGroups));
    }
    if (purchaseType != null) {
      queryParams.addAll(_queryParams('', 'purchaseType', purchaseType));
    }
      queryParams.addAll(_queryParams('', 'data', data));

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

  /// Create App Data
  ///
  /// Publish the application data structure.  Can be used to save levels   and scores.  It then returns the application data structure.  The basic   structure is a node tree, with the root node being a AppResponse.  The response   contains the user's profile, messages from the system, and a list of MissionResponse.    A mission can have any number of GameResponses but typically is a single   game type.  A game then has any number of PackResponses which help group   the game levels. Packs are then composed of any number of GameLevelResponses.      Using the various parameters can return the applications default mission   (built-in packs to play), the list of community levels published, the user's   saved levels, or explicity levels desired.  You can choose to include the   profile or not, or just return parts of the profile.  You can also filter   out game levels that have been published with a higher version of the application
  ///
  /// Parameters:
  ///
  /// * [String] gameType (required):
  ///   the game to retrieve the data for, use your application key.
  ///
  /// * [int] start (required):
  ///   start the search results at a record.
  ///
  /// * [int] limit (required):
  ///   limit the search results to some number.
  ///
  /// * [String] data (required):
  ///   The analytic data AnalyticListResponse
  ///
  /// * [String] deviceId:
  ///   the device id (deviceId or accountId required).
  ///
  /// * [int] accountId:
  ///   the account id of the user (deviceId or accountId required).
  ///
  /// * [bool] includeGameData:
  ///   if true then include the game data blob, otherwise don't include.
  ///
  /// * [String] q:
  ///   This parameter is deprecated.
  ///
  /// * [String] keyword:
  ///   query string used to filter the search results when looking for community and saved levels.
  ///
  /// * [String] sortField:
  ///   how to sort the results when looking for community and saved levels. possible values are: LEVEL_NAME, LEVEL_CREATED, LEVEL_UPDATED, LEVEL_LIKES, LEVEL_DISLIKES, LEVEL_NOTES, LEVEL_PLAYS.
  ///
  /// * [bool] descending:
  ///   order the search results descending or ascending when looking for community and saved levels.
  ///
  /// * [int] i:
  ///   This parameter is deprecated.
  ///
  /// * [int] l:
  ///   This parameter is deprecated.
  ///
  /// * [bool] gameObjectCount:
  ///   if true then include the game object count, otherwise don't include.
  ///
  /// * [String] filter:
  ///   restrict the search to items with certain permissions, possible values are: MINE, FRIENDS, PUBLIC, ALL_PUBLIC, ALL, LIKED
  ///
  /// * [int] dateCreated:
  ///   restrict the search to items created less then date
  ///
  /// * [int] ownerId:
  ///   get levels owned by a particular account
  ///
  /// * [String] missionIds:
  ///   get missions by specified id, comman seperated list of long ids
  ///
  /// * [String] gameIds:
  ///   get games by specified id, comman seperated list of long ids
  ///
  /// * [String] packIds:
  ///   get packs by specified id, comman seperated list of long ids
  ///
  /// * [String] gameLevelIds:
  ///   get game levels by specified id, comman seperated list of long ids
  ///
  /// * [String] appVersion:
  ///   the application version, used to versin the game level data
  ///
  /// * [bool] includeHigherVersionPacks:
  ///   default is false and will not include any packs that have levels above the specified appVersion. If true then will return all levels regardless of version.
  ///
  /// * [bool] includeHigherVersionLevels:
  ///   default is false and will not include any levels above the specified appVersion. If true then will return all levels regardless of version.
  ///
  /// * [String] responseGroups:
  ///   use response groups to include large parts of the structure. possible values are: * MISSION_DEFAULT (default) - include the default mission (built-in packs), excludes all other mission groups * MISSION_DEFAULT_LEVELS_SAVED - include saved levels, excludes all other mission groups * MISSION_DEFAULT_LEVELS_COMMUNITY - include community levels, excludes all other mission groups * MISSION_INVITED (default) - include challenges sent to user * PROFILE (default) - include entire profile * PROFILE_DATA - only include profile date (exclude friends) * PROFILE_FRIENDS - include friends list 
  ///
  /// * [String] purchaseType:
  ///   the will return the correct in app purchases for the device, possible values are: * SIRQUL (default) - purchasing from the sirqul store using tickets * IOS - purchasing from the itunes store for iPhone, iPod, iPod Touch * GOOGLE - purchasing from the google android store * AMAZON - purchasing from the amazon android store * MAC - purchasing from the itunes store for OSX * FREE - the item is free to purchase 
  Future<AppResponse?> postAppData(String gameType, int start, int limit, String data, { String? deviceId, int? accountId, bool? includeGameData, String? q, String? keyword, String? sortField, bool? descending, int? i, int? l, bool? gameObjectCount, String? filter, int? dateCreated, int? ownerId, String? missionIds, String? gameIds, String? packIds, String? gameLevelIds, String? appVersion, bool? includeHigherVersionPacks, bool? includeHigherVersionLevels, String? responseGroups, String? purchaseType, }) async {
    final response = await postAppDataWithHttpInfo(gameType, start, limit, data,  deviceId: deviceId, accountId: accountId, includeGameData: includeGameData, q: q, keyword: keyword, sortField: sortField, descending: descending, i: i, l: l, gameObjectCount: gameObjectCount, filter: filter, dateCreated: dateCreated, ownerId: ownerId, missionIds: missionIds, gameIds: gameIds, packIds: packIds, gameLevelIds: gameLevelIds, appVersion: appVersion, includeHigherVersionPacks: includeHigherVersionPacks, includeHigherVersionLevels: includeHigherVersionLevels, responseGroups: responseGroups, purchaseType: purchaseType, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'AppResponse',) as AppResponse;
    
    }
    return null;
  }

  /// Regenerate App Data
  ///
  /// Regenerate the app data cache for apps
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] accountId:
  ///   the account id of the user
  ///
  /// * [String] appKey:
  ///   process a specific application, if null process all apps with caches
  ///
  /// * [String] buildVersion:
  ///   create a specific version, if null use current version. Be careful if processing all
  ///
  /// * [String] apiVersion:
  ///   create a specific version, if null use current version. Be careful if processing all
  Future<Response> regenAppDataWithHttpInfo({ int? accountId, String? appKey, String? buildVersion, String? apiVersion, }) async {
    // ignore: prefer_const_declarations
    final path = r'/app/regen';

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
    if (buildVersion != null) {
      queryParams.addAll(_queryParams('', 'buildVersion', buildVersion));
    }
    if (apiVersion != null) {
      queryParams.addAll(_queryParams('', 'apiVersion', apiVersion));
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

  /// Regenerate App Data
  ///
  /// Regenerate the app data cache for apps
  ///
  /// Parameters:
  ///
  /// * [int] accountId:
  ///   the account id of the user
  ///
  /// * [String] appKey:
  ///   process a specific application, if null process all apps with caches
  ///
  /// * [String] buildVersion:
  ///   create a specific version, if null use current version. Be careful if processing all
  ///
  /// * [String] apiVersion:
  ///   create a specific version, if null use current version. Be careful if processing all
  Future<SirqulResponse?> regenAppData({ int? accountId, String? appKey, String? buildVersion, String? apiVersion, }) async {
    final response = await regenAppDataWithHttpInfo( accountId: accountId, appKey: appKey, buildVersion: buildVersion, apiVersion: apiVersion, );
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
