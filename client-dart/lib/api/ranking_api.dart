//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class RankingApi {
  RankingApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Search Historical Rankings
  ///
  /// Get historical leaderboard rankings by time-frame.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] appKey (required):
  ///   the application key for filtering results by application
  ///
  /// * [String] rankType (required):
  ///   the rank type to return
  ///
  /// * [int] startDate (required):
  ///   timestamp in milliseconds to filter results with
  ///
  /// * [int] endDate (required):
  ///   timestamp in milliseconds to filter results with
  ///
  /// * [String] deviceId:
  ///   a unique id given by the device (deviceId or accountId required)
  ///
  /// * [int] accountId:
  ///   the account id of the user
  ///
  /// * [String] sortField:
  ///   determines how to order and rank the results. Possible values include: TOTAL, MONTHLY, WEEKLY, DAILY, TOP, LOWEST
  ///
  /// * [bool] descending:
  ///   determines whether to return results in ascending or descending order
  ///
  /// * [int] start:
  ///   the start index for pagination
  ///
  /// * [int] limit:
  ///   the limit for pagination
  Future<Response> getHistoricalRankingsWithHttpInfo(String appKey, String rankType, int startDate, int endDate, { String? deviceId, int? accountId, String? sortField, bool? descending, int? start, int? limit, }) async {
    // ignore: prefer_const_declarations
    final path = r'/ranking/historical/search';

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
      queryParams.addAll(_queryParams('', 'rankType', rankType));
      queryParams.addAll(_queryParams('', 'startDate', startDate));
      queryParams.addAll(_queryParams('', 'endDate', endDate));
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

  /// Search Historical Rankings
  ///
  /// Get historical leaderboard rankings by time-frame.
  ///
  /// Parameters:
  ///
  /// * [String] appKey (required):
  ///   the application key for filtering results by application
  ///
  /// * [String] rankType (required):
  ///   the rank type to return
  ///
  /// * [int] startDate (required):
  ///   timestamp in milliseconds to filter results with
  ///
  /// * [int] endDate (required):
  ///   timestamp in milliseconds to filter results with
  ///
  /// * [String] deviceId:
  ///   a unique id given by the device (deviceId or accountId required)
  ///
  /// * [int] accountId:
  ///   the account id of the user
  ///
  /// * [String] sortField:
  ///   determines how to order and rank the results. Possible values include: TOTAL, MONTHLY, WEEKLY, DAILY, TOP, LOWEST
  ///
  /// * [bool] descending:
  ///   determines whether to return results in ascending or descending order
  ///
  /// * [int] start:
  ///   the start index for pagination
  ///
  /// * [int] limit:
  ///   the limit for pagination
  Future<RankFullResponse?> getHistoricalRankings(String appKey, String rankType, int startDate, int endDate, { String? deviceId, int? accountId, String? sortField, bool? descending, int? start, int? limit, }) async {
    final response = await getHistoricalRankingsWithHttpInfo(appKey, rankType, startDate, endDate,  deviceId: deviceId, accountId: accountId, sortField: sortField, descending: descending, start: start, limit: limit, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'RankFullResponse',) as RankFullResponse;
    
    }
    return null;
  }

  /// Search Rankings
  ///
  /// Get leader board rankings. This is an all in one endpoint that can return multiple ranking types and also the current user rank.
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
  /// * [String] gameType:
  ///   This parameter is deprecated.
  ///
  /// * [String] appKey:
  ///   the application key for filtering results by application (required for non-EXECUTIVE users)
  ///
  /// * [String] q:
  ///   This parameter is deprecated.
  ///
  /// * [String] keyword:
  ///   keyword to search for
  ///
  /// * [String] rankType:
  ///   a comma separated list of rank types to return. Possible default rank types: POINTS, DOWNLOADS, INVITATIONS
  ///
  /// * [String] leaderboardMode:
  ///   the type of search to perform. Possible values include: GLOBAL - searches scores globally (all users in the system are included in the ranking) LOCAL - filters results by select users and on users that have logged into the same device CUSTOM - allows for custom filtering using the params: withinAccountIds, albumId, audienceId
  ///
  /// * [String] withinAccountIds:
  ///   comma separated list of account ids. If performing a LOCAL or CUSTOM search, the query will include these accounts.
  ///
  /// * [bool] returnUserRank:
  ///   determines whether to return the user's current rank in the response. This can be turned off for sequential paginated requests.
  ///
  /// * [int] albumId:
  ///   album id to use when performing CUSTOM filters
  ///
  /// * [int] audienceId:
  ///   audience id to use when performing CUSTOM filters
  ///
  /// * [String] sortField:
  ///   determines how to order and rank the results. Possible values include: TOTAL - order results by total score MONTHLY - order results by monthly score WEEKLY - order results by weekly score DAILY - order results by daily score TOP - order results by top score LOWEST - order results by lowest score
  ///
  /// * [bool] descending:
  ///   determines whether to return results in ascending or descending order
  ///
  /// * [int] i:
  ///   This parameter is deprecated.
  ///
  /// * [int] start:
  ///   the start index for pagination
  ///
  /// * [int] l:
  ///   This parameter is deprecated.
  ///
  /// * [int] limit:
  ///   the limit for pagination
  Future<Response> getRankingsWithHttpInfo({ String? deviceId, int? accountId, String? gameType, String? appKey, String? q, String? keyword, String? rankType, String? leaderboardMode, String? withinAccountIds, bool? returnUserRank, int? albumId, int? audienceId, String? sortField, bool? descending, int? i, int? start, int? l, int? limit, }) async {
    // ignore: prefer_const_declarations
    final path = r'/ranking/search';

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
    if (appKey != null) {
      queryParams.addAll(_queryParams('', 'appKey', appKey));
    }
    if (q != null) {
      queryParams.addAll(_queryParams('', 'q', q));
    }
    if (keyword != null) {
      queryParams.addAll(_queryParams('', 'keyword', keyword));
    }
    if (rankType != null) {
      queryParams.addAll(_queryParams('', 'rankType', rankType));
    }
    if (leaderboardMode != null) {
      queryParams.addAll(_queryParams('', 'leaderboardMode', leaderboardMode));
    }
    if (withinAccountIds != null) {
      queryParams.addAll(_queryParams('', 'withinAccountIds', withinAccountIds));
    }
    if (returnUserRank != null) {
      queryParams.addAll(_queryParams('', 'returnUserRank', returnUserRank));
    }
    if (albumId != null) {
      queryParams.addAll(_queryParams('', 'albumId', albumId));
    }
    if (audienceId != null) {
      queryParams.addAll(_queryParams('', 'audienceId', audienceId));
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

  /// Search Rankings
  ///
  /// Get leader board rankings. This is an all in one endpoint that can return multiple ranking types and also the current user rank.
  ///
  /// Parameters:
  ///
  /// * [String] deviceId:
  ///   a unique id given by the device (deviceId or accountId required)
  ///
  /// * [int] accountId:
  ///   the account id of the user (deviceId or accountId required)
  ///
  /// * [String] gameType:
  ///   This parameter is deprecated.
  ///
  /// * [String] appKey:
  ///   the application key for filtering results by application (required for non-EXECUTIVE users)
  ///
  /// * [String] q:
  ///   This parameter is deprecated.
  ///
  /// * [String] keyword:
  ///   keyword to search for
  ///
  /// * [String] rankType:
  ///   a comma separated list of rank types to return. Possible default rank types: POINTS, DOWNLOADS, INVITATIONS
  ///
  /// * [String] leaderboardMode:
  ///   the type of search to perform. Possible values include: GLOBAL - searches scores globally (all users in the system are included in the ranking) LOCAL - filters results by select users and on users that have logged into the same device CUSTOM - allows for custom filtering using the params: withinAccountIds, albumId, audienceId
  ///
  /// * [String] withinAccountIds:
  ///   comma separated list of account ids. If performing a LOCAL or CUSTOM search, the query will include these accounts.
  ///
  /// * [bool] returnUserRank:
  ///   determines whether to return the user's current rank in the response. This can be turned off for sequential paginated requests.
  ///
  /// * [int] albumId:
  ///   album id to use when performing CUSTOM filters
  ///
  /// * [int] audienceId:
  ///   audience id to use when performing CUSTOM filters
  ///
  /// * [String] sortField:
  ///   determines how to order and rank the results. Possible values include: TOTAL - order results by total score MONTHLY - order results by monthly score WEEKLY - order results by weekly score DAILY - order results by daily score TOP - order results by top score LOWEST - order results by lowest score
  ///
  /// * [bool] descending:
  ///   determines whether to return results in ascending or descending order
  ///
  /// * [int] i:
  ///   This parameter is deprecated.
  ///
  /// * [int] start:
  ///   the start index for pagination
  ///
  /// * [int] l:
  ///   This parameter is deprecated.
  ///
  /// * [int] limit:
  ///   the limit for pagination
  Future<RankFullResponse?> getRankings({ String? deviceId, int? accountId, String? gameType, String? appKey, String? q, String? keyword, String? rankType, String? leaderboardMode, String? withinAccountIds, bool? returnUserRank, int? albumId, int? audienceId, String? sortField, bool? descending, int? i, int? start, int? l, int? limit, }) async {
    final response = await getRankingsWithHttpInfo( deviceId: deviceId, accountId: accountId, gameType: gameType, appKey: appKey, q: q, keyword: keyword, rankType: rankType, leaderboardMode: leaderboardMode, withinAccountIds: withinAccountIds, returnUserRank: returnUserRank, albumId: albumId, audienceId: audienceId, sortField: sortField, descending: descending, i: i, start: start, l: l, limit: limit, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'RankFullResponse',) as RankFullResponse;
    
    }
    return null;
  }

  /// Get Personal Rankings
  ///
  /// Returns the user's ranks for one or more rank types and modes.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] deviceId:
  ///   a unique id given by the device (deviceId or accountId required)
  ///
  /// * [int] accountId:
  ///   the account id of the user
  ///
  /// * [String] appKey:
  ///   the application key for filtering results by application (required)
  ///
  /// * [String] rankType:
  ///   pass in all rankTypes and children rankTypes
  ///
  /// * [bool] returnUserRank:
  ///   determines whether to return the user's current rank in the response, for each rankType
  ///
  /// * [String] leaderboardMode:
  ///   the type of search to perform. Possible values include: GLOBAL, LOCAL, SEARCH, CUSTOM
  ///
  /// * [String] sortField:
  ///   determines how to order and rank the results. Possible values include: TOTAL, MONTHLY, WEEKLY, DAILY, TOP, LOWEST
  ///
  /// * [String] keyword:
  ///   keyword to search for (on rankType)
  ///
  /// * [bool] descending:
  ///   determines whether to return results in descending order
  ///
  /// * [int] start:
  ///   the start index for pagination
  ///
  /// * [int] limit:
  ///   the limit for pagination
  Future<Response> getUserRankWithHttpInfo({ String? deviceId, int? accountId, String? appKey, String? rankType, bool? returnUserRank, String? leaderboardMode, String? sortField, String? keyword, bool? descending, int? start, int? limit, }) async {
    // ignore: prefer_const_declarations
    final path = r'/ranking/personal/ranks';

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
    if (appKey != null) {
      queryParams.addAll(_queryParams('', 'appKey', appKey));
    }
    if (rankType != null) {
      queryParams.addAll(_queryParams('', 'rankType', rankType));
    }
    if (returnUserRank != null) {
      queryParams.addAll(_queryParams('', 'returnUserRank', returnUserRank));
    }
    if (leaderboardMode != null) {
      queryParams.addAll(_queryParams('', 'leaderboardMode', leaderboardMode));
    }
    if (sortField != null) {
      queryParams.addAll(_queryParams('', 'sortField', sortField));
    }
    if (keyword != null) {
      queryParams.addAll(_queryParams('', 'keyword', keyword));
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

  /// Get Personal Rankings
  ///
  /// Returns the user's ranks for one or more rank types and modes.
  ///
  /// Parameters:
  ///
  /// * [String] deviceId:
  ///   a unique id given by the device (deviceId or accountId required)
  ///
  /// * [int] accountId:
  ///   the account id of the user
  ///
  /// * [String] appKey:
  ///   the application key for filtering results by application (required)
  ///
  /// * [String] rankType:
  ///   pass in all rankTypes and children rankTypes
  ///
  /// * [bool] returnUserRank:
  ///   determines whether to return the user's current rank in the response, for each rankType
  ///
  /// * [String] leaderboardMode:
  ///   the type of search to perform. Possible values include: GLOBAL, LOCAL, SEARCH, CUSTOM
  ///
  /// * [String] sortField:
  ///   determines how to order and rank the results. Possible values include: TOTAL, MONTHLY, WEEKLY, DAILY, TOP, LOWEST
  ///
  /// * [String] keyword:
  ///   keyword to search for (on rankType)
  ///
  /// * [bool] descending:
  ///   determines whether to return results in descending order
  ///
  /// * [int] start:
  ///   the start index for pagination
  ///
  /// * [int] limit:
  ///   the limit for pagination
  Future<Object?> getUserRank({ String? deviceId, int? accountId, String? appKey, String? rankType, bool? returnUserRank, String? leaderboardMode, String? sortField, String? keyword, bool? descending, int? start, int? limit, }) async {
    final response = await getUserRankWithHttpInfo( deviceId: deviceId, accountId: accountId, appKey: appKey, rankType: rankType, returnUserRank: returnUserRank, leaderboardMode: leaderboardMode, sortField: sortField, keyword: keyword, descending: descending, start: start, limit: limit, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Object',) as Object;
    
    }
    return null;
  }

  /// Override User Rank
  ///
  /// Allows an admin of an application to override a user's scores for a leaderboard.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] accountId (required):
  ///   the logged in user's account id (must have permissions to manage data for the application)
  ///
  /// * [int] ownerAccountId (required):
  ///   the end user's account id to override
  ///
  /// * [String] appKey (required):
  ///   the application key the leaderboard is for
  ///
  /// * [String] rankType (required):
  ///   the rankType of the leaderboard
  ///
  /// * [int] totalScore:
  ///   the total score to update
  ///
  /// * [int] totalCount:
  ///   the total count to update
  ///
  /// * [int] totalTime:
  ///   the total time to update
  ///
  /// * [int] dailyScore:
  ///   the daily score to update
  ///
  /// * [int] dailyCount:
  ///   the daily count to update
  ///
  /// * [int] dailyTime:
  ///   the daily time to update
  ///
  /// * [int] weeklyScore:
  ///   the weekly score to update
  ///
  /// * [int] weeklyCount:
  ///   the weekly count to update
  ///
  /// * [int] weeklyTime:
  ///   the weekly time to update
  ///
  /// * [int] monthlyScore:
  ///   the monthly score to update
  ///
  /// * [int] monthlyCount:
  ///   the monthly count to update
  ///
  /// * [int] monthlyTime:
  ///   the monthly time to update
  ///
  /// * [int] topScore:
  ///   the top score to update
  ///
  /// * [int] lowestScore:
  ///   the lowest score to update
  ///
  /// * [int] streakCount:
  ///   the streak count to update
  ///
  /// * [int] streakBestCount:
  ///   the best streak count to update
  ///
  /// * [int] startDate:
  ///   the start date to update
  ///
  /// * [int] endDate:
  ///   the end date to update
  Future<Response> overrideUserRankWithHttpInfo(int accountId, int ownerAccountId, String appKey, String rankType, { int? totalScore, int? totalCount, int? totalTime, int? dailyScore, int? dailyCount, int? dailyTime, int? weeklyScore, int? weeklyCount, int? weeklyTime, int? monthlyScore, int? monthlyCount, int? monthlyTime, int? topScore, int? lowestScore, int? streakCount, int? streakBestCount, int? startDate, int? endDate, }) async {
    // ignore: prefer_const_declarations
    final path = r'/ranking/override';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'accountId', accountId));
      queryParams.addAll(_queryParams('', 'ownerAccountId', ownerAccountId));
      queryParams.addAll(_queryParams('', 'appKey', appKey));
      queryParams.addAll(_queryParams('', 'rankType', rankType));
    if (totalScore != null) {
      queryParams.addAll(_queryParams('', 'totalScore', totalScore));
    }
    if (totalCount != null) {
      queryParams.addAll(_queryParams('', 'totalCount', totalCount));
    }
    if (totalTime != null) {
      queryParams.addAll(_queryParams('', 'totalTime', totalTime));
    }
    if (dailyScore != null) {
      queryParams.addAll(_queryParams('', 'dailyScore', dailyScore));
    }
    if (dailyCount != null) {
      queryParams.addAll(_queryParams('', 'dailyCount', dailyCount));
    }
    if (dailyTime != null) {
      queryParams.addAll(_queryParams('', 'dailyTime', dailyTime));
    }
    if (weeklyScore != null) {
      queryParams.addAll(_queryParams('', 'weeklyScore', weeklyScore));
    }
    if (weeklyCount != null) {
      queryParams.addAll(_queryParams('', 'weeklyCount', weeklyCount));
    }
    if (weeklyTime != null) {
      queryParams.addAll(_queryParams('', 'weeklyTime', weeklyTime));
    }
    if (monthlyScore != null) {
      queryParams.addAll(_queryParams('', 'monthlyScore', monthlyScore));
    }
    if (monthlyCount != null) {
      queryParams.addAll(_queryParams('', 'monthlyCount', monthlyCount));
    }
    if (monthlyTime != null) {
      queryParams.addAll(_queryParams('', 'monthlyTime', monthlyTime));
    }
    if (topScore != null) {
      queryParams.addAll(_queryParams('', 'topScore', topScore));
    }
    if (lowestScore != null) {
      queryParams.addAll(_queryParams('', 'lowestScore', lowestScore));
    }
    if (streakCount != null) {
      queryParams.addAll(_queryParams('', 'streakCount', streakCount));
    }
    if (streakBestCount != null) {
      queryParams.addAll(_queryParams('', 'streakBestCount', streakBestCount));
    }
    if (startDate != null) {
      queryParams.addAll(_queryParams('', 'startDate', startDate));
    }
    if (endDate != null) {
      queryParams.addAll(_queryParams('', 'endDate', endDate));
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

  /// Override User Rank
  ///
  /// Allows an admin of an application to override a user's scores for a leaderboard.
  ///
  /// Parameters:
  ///
  /// * [int] accountId (required):
  ///   the logged in user's account id (must have permissions to manage data for the application)
  ///
  /// * [int] ownerAccountId (required):
  ///   the end user's account id to override
  ///
  /// * [String] appKey (required):
  ///   the application key the leaderboard is for
  ///
  /// * [String] rankType (required):
  ///   the rankType of the leaderboard
  ///
  /// * [int] totalScore:
  ///   the total score to update
  ///
  /// * [int] totalCount:
  ///   the total count to update
  ///
  /// * [int] totalTime:
  ///   the total time to update
  ///
  /// * [int] dailyScore:
  ///   the daily score to update
  ///
  /// * [int] dailyCount:
  ///   the daily count to update
  ///
  /// * [int] dailyTime:
  ///   the daily time to update
  ///
  /// * [int] weeklyScore:
  ///   the weekly score to update
  ///
  /// * [int] weeklyCount:
  ///   the weekly count to update
  ///
  /// * [int] weeklyTime:
  ///   the weekly time to update
  ///
  /// * [int] monthlyScore:
  ///   the monthly score to update
  ///
  /// * [int] monthlyCount:
  ///   the monthly count to update
  ///
  /// * [int] monthlyTime:
  ///   the monthly time to update
  ///
  /// * [int] topScore:
  ///   the top score to update
  ///
  /// * [int] lowestScore:
  ///   the lowest score to update
  ///
  /// * [int] streakCount:
  ///   the streak count to update
  ///
  /// * [int] streakBestCount:
  ///   the best streak count to update
  ///
  /// * [int] startDate:
  ///   the start date to update
  ///
  /// * [int] endDate:
  ///   the end date to update
  Future<SirqulResponse?> overrideUserRank(int accountId, int ownerAccountId, String appKey, String rankType, { int? totalScore, int? totalCount, int? totalTime, int? dailyScore, int? dailyCount, int? dailyTime, int? weeklyScore, int? weeklyCount, int? weeklyTime, int? monthlyScore, int? monthlyCount, int? monthlyTime, int? topScore, int? lowestScore, int? streakCount, int? streakBestCount, int? startDate, int? endDate, }) async {
    final response = await overrideUserRankWithHttpInfo(accountId, ownerAccountId, appKey, rankType,  totalScore: totalScore, totalCount: totalCount, totalTime: totalTime, dailyScore: dailyScore, dailyCount: dailyCount, dailyTime: dailyTime, weeklyScore: weeklyScore, weeklyCount: weeklyCount, weeklyTime: weeklyTime, monthlyScore: monthlyScore, monthlyCount: monthlyCount, monthlyTime: monthlyTime, topScore: topScore, lowestScore: lowestScore, streakCount: streakCount, streakBestCount: streakBestCount, startDate: startDate, endDate: endDate, );
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

  /// Update Ranking
  ///
  /// Update the rank value 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] accountId (required):
  ///   the account id of the user
  ///
  /// * [String] appKey (required):
  ///   the application key for filtering results by application
  ///
  /// * [String] rankType (required):
  ///   a unique label for identifying the ranking. This can be any alphanumeric string (no spaces or special characters) with a maximum length of 64 characters. There are also default rank types to use which include: POINTS, DOWNLOADS, INVITATIONS, CREATIONS, VOTES, REDEEMED, ACTIONS
  ///
  /// * [int] increment:
  ///   the value to increment
  ///
  /// * [int] timeIncrement:
  ///   the time value to increment
  ///
  /// * [String] tag:
  ///   the analytic tag for this achievement (used to validate scores)
  ///
  /// * [int] startDate:
  ///   custom date you can save along with the score for the user
  ///
  /// * [int] endDate:
  ///   custom date you can save along with the score for the user
  ///
  /// * [bool] updateGlobal:
  ///   update the global rankings if true, default is false
  ///
  /// * [bool] createLeaderboard:
  ///   create the leaderboard if it does not exist (default false)
  Future<Response> updateRankingsWithHttpInfo(int accountId, String appKey, String rankType, { int? increment, int? timeIncrement, String? tag, int? startDate, int? endDate, bool? updateGlobal, bool? createLeaderboard, }) async {
    // ignore: prefer_const_declarations
    final path = r'/ranking/update';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'accountId', accountId));
      queryParams.addAll(_queryParams('', 'appKey', appKey));
      queryParams.addAll(_queryParams('', 'rankType', rankType));
    if (increment != null) {
      queryParams.addAll(_queryParams('', 'increment', increment));
    }
    if (timeIncrement != null) {
      queryParams.addAll(_queryParams('', 'timeIncrement', timeIncrement));
    }
    if (tag != null) {
      queryParams.addAll(_queryParams('', 'tag', tag));
    }
    if (startDate != null) {
      queryParams.addAll(_queryParams('', 'startDate', startDate));
    }
    if (endDate != null) {
      queryParams.addAll(_queryParams('', 'endDate', endDate));
    }
    if (updateGlobal != null) {
      queryParams.addAll(_queryParams('', 'updateGlobal', updateGlobal));
    }
    if (createLeaderboard != null) {
      queryParams.addAll(_queryParams('', 'createLeaderboard', createLeaderboard));
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

  /// Update Ranking
  ///
  /// Update the rank value 
  ///
  /// Parameters:
  ///
  /// * [int] accountId (required):
  ///   the account id of the user
  ///
  /// * [String] appKey (required):
  ///   the application key for filtering results by application
  ///
  /// * [String] rankType (required):
  ///   a unique label for identifying the ranking. This can be any alphanumeric string (no spaces or special characters) with a maximum length of 64 characters. There are also default rank types to use which include: POINTS, DOWNLOADS, INVITATIONS, CREATIONS, VOTES, REDEEMED, ACTIONS
  ///
  /// * [int] increment:
  ///   the value to increment
  ///
  /// * [int] timeIncrement:
  ///   the time value to increment
  ///
  /// * [String] tag:
  ///   the analytic tag for this achievement (used to validate scores)
  ///
  /// * [int] startDate:
  ///   custom date you can save along with the score for the user
  ///
  /// * [int] endDate:
  ///   custom date you can save along with the score for the user
  ///
  /// * [bool] updateGlobal:
  ///   update the global rankings if true, default is false
  ///
  /// * [bool] createLeaderboard:
  ///   create the leaderboard if it does not exist (default false)
  Future<SirqulResponse?> updateRankings(int accountId, String appKey, String rankType, { int? increment, int? timeIncrement, String? tag, int? startDate, int? endDate, bool? updateGlobal, bool? createLeaderboard, }) async {
    final response = await updateRankingsWithHttpInfo(accountId, appKey, rankType,  increment: increment, timeIncrement: timeIncrement, tag: tag, startDate: startDate, endDate: endDate, updateGlobal: updateGlobal, createLeaderboard: createLeaderboard, );
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
