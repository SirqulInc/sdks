//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class PackApi {
  PackApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Create Pack
  ///
  /// Create a pack.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] accountId (required):
  ///   The logged in user.
  ///
  /// * [String] title (required):
  ///   The title of the pack
  ///
  /// * [int] packOrder (required):
  ///   The order of the pack
  ///
  /// * [int] price (required):
  ///   The price in tickets to purchase this pack
  ///
  /// * [bool] highest (required):
  ///   The scoring is highest is best
  ///
  /// * [bool] allocateTickets (required):
  ///   Flag to indicate owner should receive tickets for completed packs
  ///
  /// * [int] ticketCount (required):
  ///   The number of tickets to reward
  ///
  /// * [String] description:
  ///   The description of the pack
  ///
  /// * [String] searchTags:
  ///   The tags for searching the pack, comma separated
  ///
  /// * [bool] active:
  ///   Activate/deactivate the pack
  ///
  /// * [String] gameType:
  ///   This parameter is deprecated.
  ///
  /// * [String] appKey:
  ///   The application key used to identify the application
  ///
  /// * [String] packType:
  ///   The type of the pack
  ///
  /// * [String] sequenceType:
  ///   The type of game sequence of the pack
  ///
  /// * [int] backgroundId:
  ///   The background asset id of the pack
  ///
  /// * [int] imageId:
  ///   The image asset id of the pack
  ///
  /// * [int] startDate:
  ///   The date/time to start the pack, send 0 to unset
  ///
  /// * [int] endDate:
  ///   The date/time to end the pack, send 0 to unset
  ///
  /// * [String] authorOverride:
  ///   
  ///
  /// * [String] priceType:
  ///   the type of ticket required to purchase this pack
  ///
  /// * [String] gameLevelIds:
  ///   the game level ids to include in the pack, comma separated
  ///
  /// * [bool] inGame:
  ///   
  ///
  /// * [String] ticketType:
  ///   The type of ticket to reward, null means default type
  ///
  /// * [int] points:
  ///   The number of points to award for completing a pack
  Future<Response> createPackWithHttpInfo(num version, int accountId, String title, int packOrder, int price, bool highest, bool allocateTickets, int ticketCount, { String? description, String? searchTags, bool? active, String? gameType, String? appKey, String? packType, String? sequenceType, int? backgroundId, int? imageId, int? startDate, int? endDate, String? authorOverride, String? priceType, String? gameLevelIds, bool? inGame, String? ticketType, int? points, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/pack/create'
      .replaceAll('{version}', version.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'accountId', accountId));
      queryParams.addAll(_queryParams('', 'title', title));
    if (description != null) {
      queryParams.addAll(_queryParams('', 'description', description));
    }
    if (searchTags != null) {
      queryParams.addAll(_queryParams('', 'searchTags', searchTags));
    }
    if (active != null) {
      queryParams.addAll(_queryParams('', 'active', active));
    }
    if (gameType != null) {
      queryParams.addAll(_queryParams('', 'gameType', gameType));
    }
    if (appKey != null) {
      queryParams.addAll(_queryParams('', 'appKey', appKey));
    }
    if (packType != null) {
      queryParams.addAll(_queryParams('', 'packType', packType));
    }
      queryParams.addAll(_queryParams('', 'packOrder', packOrder));
    if (sequenceType != null) {
      queryParams.addAll(_queryParams('', 'sequenceType', sequenceType));
    }
    if (backgroundId != null) {
      queryParams.addAll(_queryParams('', 'backgroundId', backgroundId));
    }
    if (imageId != null) {
      queryParams.addAll(_queryParams('', 'imageId', imageId));
    }
    if (startDate != null) {
      queryParams.addAll(_queryParams('', 'startDate', startDate));
    }
    if (endDate != null) {
      queryParams.addAll(_queryParams('', 'endDate', endDate));
    }
    if (authorOverride != null) {
      queryParams.addAll(_queryParams('', 'authorOverride', authorOverride));
    }
      queryParams.addAll(_queryParams('', 'price', price));
    if (priceType != null) {
      queryParams.addAll(_queryParams('', 'priceType', priceType));
    }
    if (gameLevelIds != null) {
      queryParams.addAll(_queryParams('', 'gameLevelIds', gameLevelIds));
    }
    if (inGame != null) {
      queryParams.addAll(_queryParams('', 'inGame', inGame));
    }
      queryParams.addAll(_queryParams('', 'highest', highest));
      queryParams.addAll(_queryParams('', 'allocateTickets', allocateTickets));
      queryParams.addAll(_queryParams('', 'ticketCount', ticketCount));
    if (ticketType != null) {
      queryParams.addAll(_queryParams('', 'ticketType', ticketType));
    }
    if (points != null) {
      queryParams.addAll(_queryParams('', 'points', points));
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

  /// Create Pack
  ///
  /// Create a pack.
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] accountId (required):
  ///   The logged in user.
  ///
  /// * [String] title (required):
  ///   The title of the pack
  ///
  /// * [int] packOrder (required):
  ///   The order of the pack
  ///
  /// * [int] price (required):
  ///   The price in tickets to purchase this pack
  ///
  /// * [bool] highest (required):
  ///   The scoring is highest is best
  ///
  /// * [bool] allocateTickets (required):
  ///   Flag to indicate owner should receive tickets for completed packs
  ///
  /// * [int] ticketCount (required):
  ///   The number of tickets to reward
  ///
  /// * [String] description:
  ///   The description of the pack
  ///
  /// * [String] searchTags:
  ///   The tags for searching the pack, comma separated
  ///
  /// * [bool] active:
  ///   Activate/deactivate the pack
  ///
  /// * [String] gameType:
  ///   This parameter is deprecated.
  ///
  /// * [String] appKey:
  ///   The application key used to identify the application
  ///
  /// * [String] packType:
  ///   The type of the pack
  ///
  /// * [String] sequenceType:
  ///   The type of game sequence of the pack
  ///
  /// * [int] backgroundId:
  ///   The background asset id of the pack
  ///
  /// * [int] imageId:
  ///   The image asset id of the pack
  ///
  /// * [int] startDate:
  ///   The date/time to start the pack, send 0 to unset
  ///
  /// * [int] endDate:
  ///   The date/time to end the pack, send 0 to unset
  ///
  /// * [String] authorOverride:
  ///   
  ///
  /// * [String] priceType:
  ///   the type of ticket required to purchase this pack
  ///
  /// * [String] gameLevelIds:
  ///   the game level ids to include in the pack, comma separated
  ///
  /// * [bool] inGame:
  ///   
  ///
  /// * [String] ticketType:
  ///   The type of ticket to reward, null means default type
  ///
  /// * [int] points:
  ///   The number of points to award for completing a pack
  Future<PackResponse?> createPack(num version, int accountId, String title, int packOrder, int price, bool highest, bool allocateTickets, int ticketCount, { String? description, String? searchTags, bool? active, String? gameType, String? appKey, String? packType, String? sequenceType, int? backgroundId, int? imageId, int? startDate, int? endDate, String? authorOverride, String? priceType, String? gameLevelIds, bool? inGame, String? ticketType, int? points, }) async {
    final response = await createPackWithHttpInfo(version, accountId, title, packOrder, price, highest, allocateTickets, ticketCount,  description: description, searchTags: searchTags, active: active, gameType: gameType, appKey: appKey, packType: packType, sequenceType: sequenceType, backgroundId: backgroundId, imageId: imageId, startDate: startDate, endDate: endDate, authorOverride: authorOverride, priceType: priceType, gameLevelIds: gameLevelIds, inGame: inGame, ticketType: ticketType, points: points, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PackResponse',) as PackResponse;
    
    }
    return null;
  }

  /// Delete Pack
  ///
  /// Delete a pack.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] accountId (required):
  ///   the id of the logged in user
  ///
  /// * [int] packId (required):
  ///   the id of the pack to delete
  Future<Response> deletePackWithHttpInfo(num version, int accountId, int packId,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/pack/delete'
      .replaceAll('{version}', version.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'accountId', accountId));
      queryParams.addAll(_queryParams('', 'packId', packId));

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

  /// Delete Pack
  ///
  /// Delete a pack.
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] accountId (required):
  ///   the id of the logged in user
  ///
  /// * [int] packId (required):
  ///   the id of the pack to delete
  Future<SirqulResponse?> deletePack(num version, int accountId, int packId,) async {
    final response = await deletePackWithHttpInfo(version, accountId, packId,);
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

  /// Get Pack
  ///
  /// Get a pack.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] accountId (required):
  ///   The logged in user.
  ///
  /// * [int] packId (required):
  ///   The id of the pack to return.
  ///
  /// * [bool] includeGameData (required):
  ///   If true include the game level data, otherwise don't. default is false.
  Future<Response> getPackWithHttpInfo(num version, int accountId, int packId, bool includeGameData,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/pack/get'
      .replaceAll('{version}', version.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'accountId', accountId));
      queryParams.addAll(_queryParams('', 'packId', packId));
      queryParams.addAll(_queryParams('', 'includeGameData', includeGameData));

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

  /// Get Pack
  ///
  /// Get a pack.
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] accountId (required):
  ///   The logged in user.
  ///
  /// * [int] packId (required):
  ///   The id of the pack to return.
  ///
  /// * [bool] includeGameData (required):
  ///   If true include the game level data, otherwise don't. default is false.
  Future<PackResponse?> getPack(num version, int accountId, int packId, bool includeGameData,) async {
    final response = await getPackWithHttpInfo(version, accountId, packId, includeGameData,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PackResponse',) as PackResponse;
    
    }
    return null;
  }

  /// Search Packs
  ///
  /// Search on packs.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] accountId (required):
  ///   The logged in user.
  ///
  /// * [String] sortField (required):
  ///   The field to sort by. Possible values include: TITLE, DESCRIPTION, CREATED, UPDATED
  ///
  /// * [bool] descending (required):
  ///   Determines whether the sorted list is in descending or ascending order
  ///
  /// * [String] keyword:
  ///   Keyword search on the pack name
  ///
  /// * [String] packType:
  ///   Filters results on pack type
  ///
  /// * [int] start:
  ///   Start the result set at some index.
  ///
  /// * [int] limit:
  ///   Limit the result to some number.
  ///
  /// * [bool] includeGameData:
  ///   Determines whether to include game data in the results
  ///
  /// * [bool] includeInactive:
  ///   Determines whether to include inactive results
  ///
  /// * [String] appKey:
  ///   The application to filter results on
  Future<Response> searchPacksWithHttpInfo(num version, int accountId, String sortField, bool descending, { String? keyword, String? packType, int? start, int? limit, bool? includeGameData, bool? includeInactive, String? appKey, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/pack/search'
      .replaceAll('{version}', version.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'accountId', accountId));
    if (keyword != null) {
      queryParams.addAll(_queryParams('', 'keyword', keyword));
    }
    if (packType != null) {
      queryParams.addAll(_queryParams('', 'packType', packType));
    }
      queryParams.addAll(_queryParams('', 'sortField', sortField));
      queryParams.addAll(_queryParams('', 'descending', descending));
    if (start != null) {
      queryParams.addAll(_queryParams('', 'start', start));
    }
    if (limit != null) {
      queryParams.addAll(_queryParams('', 'limit', limit));
    }
    if (includeGameData != null) {
      queryParams.addAll(_queryParams('', 'includeGameData', includeGameData));
    }
    if (includeInactive != null) {
      queryParams.addAll(_queryParams('', 'includeInactive', includeInactive));
    }
    if (appKey != null) {
      queryParams.addAll(_queryParams('', 'appKey', appKey));
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

  /// Search Packs
  ///
  /// Search on packs.
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] accountId (required):
  ///   The logged in user.
  ///
  /// * [String] sortField (required):
  ///   The field to sort by. Possible values include: TITLE, DESCRIPTION, CREATED, UPDATED
  ///
  /// * [bool] descending (required):
  ///   Determines whether the sorted list is in descending or ascending order
  ///
  /// * [String] keyword:
  ///   Keyword search on the pack name
  ///
  /// * [String] packType:
  ///   Filters results on pack type
  ///
  /// * [int] start:
  ///   Start the result set at some index.
  ///
  /// * [int] limit:
  ///   Limit the result to some number.
  ///
  /// * [bool] includeGameData:
  ///   Determines whether to include game data in the results
  ///
  /// * [bool] includeInactive:
  ///   Determines whether to include inactive results
  ///
  /// * [String] appKey:
  ///   The application to filter results on
  Future<List<PackResponse>?> searchPacks(num version, int accountId, String sortField, bool descending, { String? keyword, String? packType, int? start, int? limit, bool? includeGameData, bool? includeInactive, String? appKey, }) async {
    final response = await searchPacksWithHttpInfo(version, accountId, sortField, descending,  keyword: keyword, packType: packType, start: start, limit: limit, includeGameData: includeGameData, includeInactive: includeInactive, appKey: appKey, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<PackResponse>') as List)
        .cast<PackResponse>()
        .toList(growable: false);

    }
    return null;
  }

  /// Update Pack
  ///
  /// Update a pack.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] accountId (required):
  ///   The logged in user.
  ///
  /// * [int] packId (required):
  ///   The id of the pack to update.
  ///
  /// * [bool] allocateTickets (required):
  ///   Flag to indicate owner should receive tickets for completed packs
  ///
  /// * [int] ticketCount (required):
  ///   The number of tickets to reward
  ///
  /// * [String] title:
  ///   The title of the pack
  ///
  /// * [String] description:
  ///   The description of the pack
  ///
  /// * [String] searchTags:
  ///   The tags for searching the pack, comma separated
  ///
  /// * [bool] active:
  ///   Activate/deactivate the pack
  ///
  /// * [String] gameType:
  ///   This parameter is deprecated.
  ///
  /// * [String] appKey:
  ///   The application key used to identify the application
  ///
  /// * [String] packType:
  ///   The type of the pack
  ///
  /// * [int] packOrder:
  ///   The order of the pack
  ///
  /// * [String] sequenceType:
  ///   The type of game sequence of the pack
  ///
  /// * [int] backgroundId:
  ///   The background asset id of the pack
  ///
  /// * [int] imageId:
  ///   The image asset id of the pack
  ///
  /// * [int] startDate:
  ///   The date/time to start the pack, send 0 to unset
  ///
  /// * [int] endDate:
  ///   The date/time to end the pack, send 0 to unset
  ///
  /// * [String] authorOverride:
  ///   
  ///
  /// * [int] price:
  ///   The price in tickets to purchase this pack
  ///
  /// * [String] priceType:
  ///   the type of ticket required to purchase this pack
  ///
  /// * [String] gameLevelIds:
  ///   the game level ids to include in the pack, comma separated
  ///
  /// * [bool] inGame:
  ///   
  ///
  /// * [bool] highest:
  ///   The scoring is highest is best
  ///
  /// * [String] ticketType:
  ///   The type of ticket to reward, null means default type
  ///
  /// * [int] points:
  ///   The number of points to award for completing a pack
  Future<Response> updatePackWithHttpInfo(num version, int accountId, int packId, bool allocateTickets, int ticketCount, { String? title, String? description, String? searchTags, bool? active, String? gameType, String? appKey, String? packType, int? packOrder, String? sequenceType, int? backgroundId, int? imageId, int? startDate, int? endDate, String? authorOverride, int? price, String? priceType, String? gameLevelIds, bool? inGame, bool? highest, String? ticketType, int? points, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/pack/update'
      .replaceAll('{version}', version.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'accountId', accountId));
      queryParams.addAll(_queryParams('', 'packId', packId));
    if (title != null) {
      queryParams.addAll(_queryParams('', 'title', title));
    }
    if (description != null) {
      queryParams.addAll(_queryParams('', 'description', description));
    }
    if (searchTags != null) {
      queryParams.addAll(_queryParams('', 'searchTags', searchTags));
    }
    if (active != null) {
      queryParams.addAll(_queryParams('', 'active', active));
    }
    if (gameType != null) {
      queryParams.addAll(_queryParams('', 'gameType', gameType));
    }
    if (appKey != null) {
      queryParams.addAll(_queryParams('', 'appKey', appKey));
    }
    if (packType != null) {
      queryParams.addAll(_queryParams('', 'packType', packType));
    }
    if (packOrder != null) {
      queryParams.addAll(_queryParams('', 'packOrder', packOrder));
    }
    if (sequenceType != null) {
      queryParams.addAll(_queryParams('', 'sequenceType', sequenceType));
    }
    if (backgroundId != null) {
      queryParams.addAll(_queryParams('', 'backgroundId', backgroundId));
    }
    if (imageId != null) {
      queryParams.addAll(_queryParams('', 'imageId', imageId));
    }
    if (startDate != null) {
      queryParams.addAll(_queryParams('', 'startDate', startDate));
    }
    if (endDate != null) {
      queryParams.addAll(_queryParams('', 'endDate', endDate));
    }
    if (authorOverride != null) {
      queryParams.addAll(_queryParams('', 'authorOverride', authorOverride));
    }
    if (price != null) {
      queryParams.addAll(_queryParams('', 'price', price));
    }
    if (priceType != null) {
      queryParams.addAll(_queryParams('', 'priceType', priceType));
    }
    if (gameLevelIds != null) {
      queryParams.addAll(_queryParams('', 'gameLevelIds', gameLevelIds));
    }
    if (inGame != null) {
      queryParams.addAll(_queryParams('', 'inGame', inGame));
    }
    if (highest != null) {
      queryParams.addAll(_queryParams('', 'highest', highest));
    }
      queryParams.addAll(_queryParams('', 'allocateTickets', allocateTickets));
      queryParams.addAll(_queryParams('', 'ticketCount', ticketCount));
    if (ticketType != null) {
      queryParams.addAll(_queryParams('', 'ticketType', ticketType));
    }
    if (points != null) {
      queryParams.addAll(_queryParams('', 'points', points));
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

  /// Update Pack
  ///
  /// Update a pack.
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] accountId (required):
  ///   The logged in user.
  ///
  /// * [int] packId (required):
  ///   The id of the pack to update.
  ///
  /// * [bool] allocateTickets (required):
  ///   Flag to indicate owner should receive tickets for completed packs
  ///
  /// * [int] ticketCount (required):
  ///   The number of tickets to reward
  ///
  /// * [String] title:
  ///   The title of the pack
  ///
  /// * [String] description:
  ///   The description of the pack
  ///
  /// * [String] searchTags:
  ///   The tags for searching the pack, comma separated
  ///
  /// * [bool] active:
  ///   Activate/deactivate the pack
  ///
  /// * [String] gameType:
  ///   This parameter is deprecated.
  ///
  /// * [String] appKey:
  ///   The application key used to identify the application
  ///
  /// * [String] packType:
  ///   The type of the pack
  ///
  /// * [int] packOrder:
  ///   The order of the pack
  ///
  /// * [String] sequenceType:
  ///   The type of game sequence of the pack
  ///
  /// * [int] backgroundId:
  ///   The background asset id of the pack
  ///
  /// * [int] imageId:
  ///   The image asset id of the pack
  ///
  /// * [int] startDate:
  ///   The date/time to start the pack, send 0 to unset
  ///
  /// * [int] endDate:
  ///   The date/time to end the pack, send 0 to unset
  ///
  /// * [String] authorOverride:
  ///   
  ///
  /// * [int] price:
  ///   The price in tickets to purchase this pack
  ///
  /// * [String] priceType:
  ///   the type of ticket required to purchase this pack
  ///
  /// * [String] gameLevelIds:
  ///   the game level ids to include in the pack, comma separated
  ///
  /// * [bool] inGame:
  ///   
  ///
  /// * [bool] highest:
  ///   The scoring is highest is best
  ///
  /// * [String] ticketType:
  ///   The type of ticket to reward, null means default type
  ///
  /// * [int] points:
  ///   The number of points to award for completing a pack
  Future<PackResponse?> updatePack(num version, int accountId, int packId, bool allocateTickets, int ticketCount, { String? title, String? description, String? searchTags, bool? active, String? gameType, String? appKey, String? packType, int? packOrder, String? sequenceType, int? backgroundId, int? imageId, int? startDate, int? endDate, String? authorOverride, int? price, String? priceType, String? gameLevelIds, bool? inGame, bool? highest, String? ticketType, int? points, }) async {
    final response = await updatePackWithHttpInfo(version, accountId, packId, allocateTickets, ticketCount,  title: title, description: description, searchTags: searchTags, active: active, gameType: gameType, appKey: appKey, packType: packType, packOrder: packOrder, sequenceType: sequenceType, backgroundId: backgroundId, imageId: imageId, startDate: startDate, endDate: endDate, authorOverride: authorOverride, price: price, priceType: priceType, gameLevelIds: gameLevelIds, inGame: inGame, highest: highest, ticketType: ticketType, points: points, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PackResponse',) as PackResponse;
    
    }
    return null;
  }
}
