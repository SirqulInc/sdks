//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class LeaderboardApi {
  LeaderboardApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Create a leaderboard based on the rankingType, rankMode(leaderboardMode), sortField and limitation
  ///
  /// Create a leaderboard based on the rankingType, rankMode(leaderboardMode), sortField and limitation
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] accountId:
  ///   The account id of the user creating the leaderboard.
  ///
  /// * [String] appKey:
  ///   The application key
  ///
  /// * [String] rankType:
  ///   a unique label for identifying the ranking. This can be any alphanumeric string with a maximum length of 64 characters. There are also default rank types to use which include: POINTS, DOWNLOADS, INVITATIONS, CREATIONS, VOTES, REDEEMED, ACTIONS
  ///
  /// * [String] leaderboardMode:
  ///   the type of search to perform. Possible values include: GLOBAL - searches scores globally (all users in the system are included in the ranking); LOCAL - filters results by select users and on users that have logged into the same device; SEARCH - does a GLOBAL search by keyword; CUSTOM - does a LOCAL search by keyword
  ///
  /// * [MultipartFile] iconMedia:
  ///   a MultipartFile containing the icon image of the leaderboard (this will only be used if \"iconAssetId\" is empty)
  ///
  /// * [int] iconAssetId:
  ///   The asset ID to set the leaderboard icon
  ///
  /// * [MultipartFile] bannerMedia:
  ///   a MultipartFile containing the icon banner of the leaderboard (this will only be used if \"bannerAssetId\" is empty)
  ///
  /// * [int] bannerAssetId:
  ///   The asset ID to set the leaderboard banner
  ///
  /// * [int] limitation:
  ///   limit number of rankings for each leaderboard
  ///
  /// * [String] sortField:
  ///   determines how to order and rank the results. Possible values include: TOTAL, WEEKLY, DAILY, TOP, LOWEST
  ///
  /// * [String] title:
  ///   leaderboard's title
  ///
  /// * [String] description:
  ///   leaderboard's description
  ///
  /// * [String] metaData:
  ///   custom meta data for the leaderboard
  Future<Response> createLeaderboardWithHttpInfo(num version, { int? accountId, String? appKey, String? rankType, String? leaderboardMode, MultipartFile? iconMedia, int? iconAssetId, MultipartFile? bannerMedia, int? bannerAssetId, int? limitation, String? sortField, String? title, String? description, String? metaData, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/leaderboard/create'
      .replaceAll('{version}', version.toString());

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
    if (rankType != null) {
      queryParams.addAll(_queryParams('', 'rankType', rankType));
    }
    if (leaderboardMode != null) {
      queryParams.addAll(_queryParams('', 'leaderboardMode', leaderboardMode));
    }
    if (iconMedia != null) {
      queryParams.addAll(_queryParams('', 'iconMedia', iconMedia));
    }
    if (iconAssetId != null) {
      queryParams.addAll(_queryParams('', 'iconAssetId', iconAssetId));
    }
    if (bannerMedia != null) {
      queryParams.addAll(_queryParams('', 'bannerMedia', bannerMedia));
    }
    if (bannerAssetId != null) {
      queryParams.addAll(_queryParams('', 'bannerAssetId', bannerAssetId));
    }
    if (limitation != null) {
      queryParams.addAll(_queryParams('', 'limitation', limitation));
    }
    if (sortField != null) {
      queryParams.addAll(_queryParams('', 'sortField', sortField));
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

  /// Create a leaderboard based on the rankingType, rankMode(leaderboardMode), sortField and limitation
  ///
  /// Create a leaderboard based on the rankingType, rankMode(leaderboardMode), sortField and limitation
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] accountId:
  ///   The account id of the user creating the leaderboard.
  ///
  /// * [String] appKey:
  ///   The application key
  ///
  /// * [String] rankType:
  ///   a unique label for identifying the ranking. This can be any alphanumeric string with a maximum length of 64 characters. There are also default rank types to use which include: POINTS, DOWNLOADS, INVITATIONS, CREATIONS, VOTES, REDEEMED, ACTIONS
  ///
  /// * [String] leaderboardMode:
  ///   the type of search to perform. Possible values include: GLOBAL - searches scores globally (all users in the system are included in the ranking); LOCAL - filters results by select users and on users that have logged into the same device; SEARCH - does a GLOBAL search by keyword; CUSTOM - does a LOCAL search by keyword
  ///
  /// * [MultipartFile] iconMedia:
  ///   a MultipartFile containing the icon image of the leaderboard (this will only be used if \"iconAssetId\" is empty)
  ///
  /// * [int] iconAssetId:
  ///   The asset ID to set the leaderboard icon
  ///
  /// * [MultipartFile] bannerMedia:
  ///   a MultipartFile containing the icon banner of the leaderboard (this will only be used if \"bannerAssetId\" is empty)
  ///
  /// * [int] bannerAssetId:
  ///   The asset ID to set the leaderboard banner
  ///
  /// * [int] limitation:
  ///   limit number of rankings for each leaderboard
  ///
  /// * [String] sortField:
  ///   determines how to order and rank the results. Possible values include: TOTAL, WEEKLY, DAILY, TOP, LOWEST
  ///
  /// * [String] title:
  ///   leaderboard's title
  ///
  /// * [String] description:
  ///   leaderboard's description
  ///
  /// * [String] metaData:
  ///   custom meta data for the leaderboard
  Future<LeaderboardResponse?> createLeaderboard(num version, { int? accountId, String? appKey, String? rankType, String? leaderboardMode, MultipartFile? iconMedia, int? iconAssetId, MultipartFile? bannerMedia, int? bannerAssetId, int? limitation, String? sortField, String? title, String? description, String? metaData, }) async {
    final response = await createLeaderboardWithHttpInfo(version,  accountId: accountId, appKey: appKey, rankType: rankType, leaderboardMode: leaderboardMode, iconMedia: iconMedia, iconAssetId: iconAssetId, bannerMedia: bannerMedia, bannerAssetId: bannerAssetId, limitation: limitation, sortField: sortField, title: title, description: description, metaData: metaData, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'LeaderboardResponse',) as LeaderboardResponse;
    
    }
    return null;
  }

  /// Delete the Leader Board
  ///
  /// Removes a leader board id.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] leaderboardId (required):
  ///   The leaderboard id to delete.
  ///
  /// * [int] accountId:
  ///   The account id of the user making the request.
  Future<Response> deleteLeaderboardWithHttpInfo(num version, int leaderboardId, { int? accountId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/leaderboard/delete'
      .replaceAll('{version}', version.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (accountId != null) {
      queryParams.addAll(_queryParams('', 'accountId', accountId));
    }
      queryParams.addAll(_queryParams('', 'leaderboardId', leaderboardId));

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

  /// Delete the Leader Board
  ///
  /// Removes a leader board id.
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] leaderboardId (required):
  ///   The leaderboard id to delete.
  ///
  /// * [int] accountId:
  ///   The account id of the user making the request.
  Future<SirqulResponse?> deleteLeaderboard(num version, int leaderboardId, { int? accountId, }) async {
    final response = await deleteLeaderboardWithHttpInfo(version, leaderboardId,  accountId: accountId, );
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

  /// Read a leaderboard by id and retrieve the matching ranking list
  ///
  /// Read a leaderboard by id and retrieve the matching ranking list
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] leaderboardId (required):
  ///   The leaderboard id.
  ///
  /// * [int] accountId:
  ///   A valid account.
  ///
  /// * [bool] includeFullRankingList:
  ///   set to true if need to return the leaderboard's full ranking list
  Future<Response> getLeaderboardWithHttpInfo(num version, int leaderboardId, { int? accountId, bool? includeFullRankingList, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/leaderboard/get'
      .replaceAll('{version}', version.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (accountId != null) {
      queryParams.addAll(_queryParams('', 'accountId', accountId));
    }
      queryParams.addAll(_queryParams('', 'leaderboardId', leaderboardId));
    if (includeFullRankingList != null) {
      queryParams.addAll(_queryParams('', 'includeFullRankingList', includeFullRankingList));
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

  /// Read a leaderboard by id and retrieve the matching ranking list
  ///
  /// Read a leaderboard by id and retrieve the matching ranking list
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] leaderboardId (required):
  ///   The leaderboard id.
  ///
  /// * [int] accountId:
  ///   A valid account.
  ///
  /// * [bool] includeFullRankingList:
  ///   set to true if need to return the leaderboard's full ranking list
  Future<LeaderboardResponse?> getLeaderboard(num version, int leaderboardId, { int? accountId, bool? includeFullRankingList, }) async {
    final response = await getLeaderboardWithHttpInfo(version, leaderboardId,  accountId: accountId, includeFullRankingList: includeFullRankingList, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'LeaderboardResponse',) as LeaderboardResponse;
    
    }
    return null;
  }

  /// Search leaderboard and retrieve the matching ranking list
  ///
  /// Search leaderboard and retrieve the matching ranking list
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] accountId:
  ///   The account id of the user requesting the search.
  ///
  /// * [String] appKey:
  ///   The application key.
  ///
  /// * [bool] globalOnly:
  ///   only include global leaderboards (this overrides the appKey filter)
  ///
  /// * [String] keyword:
  ///   keyword to search by title
  ///
  /// * [String] leaderboardIds:
  ///   comma separated list of leaderboard ids to filter results with
  ///
  /// * [String] rankTypes:
  ///   comma separated list of rankType to filter results with
  ///
  /// * [String] sortField:
  ///   sortField of the result, from LeaderboardApiMap (TITLE, DESCRIPTION, CREATED, UPDATED, RANK_TYPE, RANK_MODE)
  ///
  /// * [bool] descending:
  ///   Determines whether the sorted list is in descending or ascending order
  ///
  /// * [bool] includeInactive:
  ///   include inactive in the result
  ///
  /// * [bool] includeAppResponse:
  ///   determines whether to include the application response for each leaderboard
  ///
  /// * [int] start:
  ///   Start the result set at some index.
  ///
  /// * [int] limit:
  ///   Limit the result to some number.
  Future<Response> searchLeaderboardsWithHttpInfo(num version, { int? accountId, String? appKey, bool? globalOnly, String? keyword, String? leaderboardIds, String? rankTypes, String? sortField, bool? descending, bool? includeInactive, bool? includeAppResponse, int? start, int? limit, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/leaderboard/search'
      .replaceAll('{version}', version.toString());

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
    if (globalOnly != null) {
      queryParams.addAll(_queryParams('', 'globalOnly', globalOnly));
    }
    if (keyword != null) {
      queryParams.addAll(_queryParams('', 'keyword', keyword));
    }
    if (leaderboardIds != null) {
      queryParams.addAll(_queryParams('', 'leaderboardIds', leaderboardIds));
    }
    if (rankTypes != null) {
      queryParams.addAll(_queryParams('', 'rankTypes', rankTypes));
    }
    if (sortField != null) {
      queryParams.addAll(_queryParams('', 'sortField', sortField));
    }
    if (descending != null) {
      queryParams.addAll(_queryParams('', 'descending', descending));
    }
    if (includeInactive != null) {
      queryParams.addAll(_queryParams('', 'includeInactive', includeInactive));
    }
    if (includeAppResponse != null) {
      queryParams.addAll(_queryParams('', 'includeAppResponse', includeAppResponse));
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

  /// Search leaderboard and retrieve the matching ranking list
  ///
  /// Search leaderboard and retrieve the matching ranking list
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] accountId:
  ///   The account id of the user requesting the search.
  ///
  /// * [String] appKey:
  ///   The application key.
  ///
  /// * [bool] globalOnly:
  ///   only include global leaderboards (this overrides the appKey filter)
  ///
  /// * [String] keyword:
  ///   keyword to search by title
  ///
  /// * [String] leaderboardIds:
  ///   comma separated list of leaderboard ids to filter results with
  ///
  /// * [String] rankTypes:
  ///   comma separated list of rankType to filter results with
  ///
  /// * [String] sortField:
  ///   sortField of the result, from LeaderboardApiMap (TITLE, DESCRIPTION, CREATED, UPDATED, RANK_TYPE, RANK_MODE)
  ///
  /// * [bool] descending:
  ///   Determines whether the sorted list is in descending or ascending order
  ///
  /// * [bool] includeInactive:
  ///   include inactive in the result
  ///
  /// * [bool] includeAppResponse:
  ///   determines whether to include the application response for each leaderboard
  ///
  /// * [int] start:
  ///   Start the result set at some index.
  ///
  /// * [int] limit:
  ///   Limit the result to some number.
  Future<LeaderboardResponse?> searchLeaderboards(num version, { int? accountId, String? appKey, bool? globalOnly, String? keyword, String? leaderboardIds, String? rankTypes, String? sortField, bool? descending, bool? includeInactive, bool? includeAppResponse, int? start, int? limit, }) async {
    final response = await searchLeaderboardsWithHttpInfo(version,  accountId: accountId, appKey: appKey, globalOnly: globalOnly, keyword: keyword, leaderboardIds: leaderboardIds, rankTypes: rankTypes, sortField: sortField, descending: descending, includeInactive: includeInactive, includeAppResponse: includeAppResponse, start: start, limit: limit, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'LeaderboardResponse',) as LeaderboardResponse;
    
    }
    return null;
  }

  /// Update a leaderboard based on the rankingType, rankMode(leaderboardMode), sortField and limitation
  ///
  /// Update a leaderboard based on the rankingType, rankMode(leaderboardMode), sortField and limitation
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] leaderboardId (required):
  ///   The leaderboard id to update.
  ///
  /// * [int] accountId:
  ///   The account id of the user updating the leaderboard.
  ///
  /// * [String] appKey:
  ///   The application key
  ///
  /// * [String] rankType:
  ///   a unique label for identifying the ranking. This can be any alphanumeric string with a maximum length of 64 characters.
  ///
  /// * [String] leaderboardMode:
  ///   the type of search to perform. Possible values include: GLOBAL, LOCAL, SEARCH, CUSTOM
  ///
  /// * [String] sortField:
  ///   determines how to order and rank the results. Possible values include: TOTAL, WEEKLY, DAILY, TOP, LOWEST
  ///
  /// * [MultipartFile] iconMedia:
  ///   a MultipartFile containing the icon image of the leaderboard (this will only be used if \"iconAssetId\" is empty)
  ///
  /// * [int] iconAssetId:
  ///   The asset ID to set the leaderboard icon
  ///
  /// * [MultipartFile] bannerMedia:
  ///   a MultipartFile containing the icon banner of the leaderboard (this will only be used if \"bannerAssetId\" is empty)
  ///
  /// * [int] bannerAssetId:
  ///   The asset ID to set the leaderboard banner
  ///
  /// * [int] limitation:
  ///   limit number of rankings for each leaderboard
  ///
  /// * [bool] active:
  ///   Whether the leaderboard is active
  ///
  /// * [String] title:
  ///   leaderboard's title
  ///
  /// * [String] description:
  ///   leaderboard's description
  ///
  /// * [String] metaData:
  ///   custom meta data for the leaderboard
  Future<Response> updateLeaderboardWithHttpInfo(num version, int leaderboardId, { int? accountId, String? appKey, String? rankType, String? leaderboardMode, String? sortField, MultipartFile? iconMedia, int? iconAssetId, MultipartFile? bannerMedia, int? bannerAssetId, int? limitation, bool? active, String? title, String? description, String? metaData, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/leaderboard/update'
      .replaceAll('{version}', version.toString());

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
      queryParams.addAll(_queryParams('', 'leaderboardId', leaderboardId));
    if (rankType != null) {
      queryParams.addAll(_queryParams('', 'rankType', rankType));
    }
    if (leaderboardMode != null) {
      queryParams.addAll(_queryParams('', 'leaderboardMode', leaderboardMode));
    }
    if (sortField != null) {
      queryParams.addAll(_queryParams('', 'sortField', sortField));
    }
    if (iconMedia != null) {
      queryParams.addAll(_queryParams('', 'iconMedia', iconMedia));
    }
    if (iconAssetId != null) {
      queryParams.addAll(_queryParams('', 'iconAssetId', iconAssetId));
    }
    if (bannerMedia != null) {
      queryParams.addAll(_queryParams('', 'bannerMedia', bannerMedia));
    }
    if (bannerAssetId != null) {
      queryParams.addAll(_queryParams('', 'bannerAssetId', bannerAssetId));
    }
    if (limitation != null) {
      queryParams.addAll(_queryParams('', 'limitation', limitation));
    }
    if (active != null) {
      queryParams.addAll(_queryParams('', 'active', active));
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

  /// Update a leaderboard based on the rankingType, rankMode(leaderboardMode), sortField and limitation
  ///
  /// Update a leaderboard based on the rankingType, rankMode(leaderboardMode), sortField and limitation
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] leaderboardId (required):
  ///   The leaderboard id to update.
  ///
  /// * [int] accountId:
  ///   The account id of the user updating the leaderboard.
  ///
  /// * [String] appKey:
  ///   The application key
  ///
  /// * [String] rankType:
  ///   a unique label for identifying the ranking. This can be any alphanumeric string with a maximum length of 64 characters.
  ///
  /// * [String] leaderboardMode:
  ///   the type of search to perform. Possible values include: GLOBAL, LOCAL, SEARCH, CUSTOM
  ///
  /// * [String] sortField:
  ///   determines how to order and rank the results. Possible values include: TOTAL, WEEKLY, DAILY, TOP, LOWEST
  ///
  /// * [MultipartFile] iconMedia:
  ///   a MultipartFile containing the icon image of the leaderboard (this will only be used if \"iconAssetId\" is empty)
  ///
  /// * [int] iconAssetId:
  ///   The asset ID to set the leaderboard icon
  ///
  /// * [MultipartFile] bannerMedia:
  ///   a MultipartFile containing the icon banner of the leaderboard (this will only be used if \"bannerAssetId\" is empty)
  ///
  /// * [int] bannerAssetId:
  ///   The asset ID to set the leaderboard banner
  ///
  /// * [int] limitation:
  ///   limit number of rankings for each leaderboard
  ///
  /// * [bool] active:
  ///   Whether the leaderboard is active
  ///
  /// * [String] title:
  ///   leaderboard's title
  ///
  /// * [String] description:
  ///   leaderboard's description
  ///
  /// * [String] metaData:
  ///   custom meta data for the leaderboard
  Future<LeaderboardResponse?> updateLeaderboard(num version, int leaderboardId, { int? accountId, String? appKey, String? rankType, String? leaderboardMode, String? sortField, MultipartFile? iconMedia, int? iconAssetId, MultipartFile? bannerMedia, int? bannerAssetId, int? limitation, bool? active, String? title, String? description, String? metaData, }) async {
    final response = await updateLeaderboardWithHttpInfo(version, leaderboardId,  accountId: accountId, appKey: appKey, rankType: rankType, leaderboardMode: leaderboardMode, sortField: sortField, iconMedia: iconMedia, iconAssetId: iconAssetId, bannerMedia: bannerMedia, bannerAssetId: bannerAssetId, limitation: limitation, active: active, title: title, description: description, metaData: metaData, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'LeaderboardResponse',) as LeaderboardResponse;
    
    }
    return null;
  }
}
