//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class TournamentApi {
  TournamentApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Create Tournament
  ///
  /// Create a tournament.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] accountId (required):
  ///   The logged in user.
  ///
  /// * [String] appKey (required):
  ///   The appKey the tournament is created for.
  ///
  /// * [String] title (required):
  ///   The title of the tournament
  ///
  /// * [int] costToPlay (required):
  ///   The number of tickets required to pay to enter the tournament
  ///
  /// * [int] startDate (required):
  ///   The date/time to start the tournament
  ///
  /// * [String] subType:
  ///   Custom string client apps can use for searching/filtering tournaments
  ///
  /// * [int] imageAssetId:
  ///   The asset ID to attach to the tournament
  ///
  /// * [int] secondsBetweenLevels:
  ///   The number of seconds in between the start of each tournament game/group
  ///
  /// * [int] secondsForTieBreaker:
  ///   The number of seconds to extend the round end time in the case of a tie breaker
  ///
  /// * [int] secondsBetweenPacks:
  ///   The number of seconds in between the start of each tournament round
  ///
  /// * [int] maximumLevelLength:
  ///   The maximum number of seconds the match is expected to end at, which gets used to determine when a match should end when there is no activity
  ///
  /// * [String] costToPlayType:
  ///   The type of ticket required to pay
  ///
  /// * [int] minimumToPlay:
  ///   The minimum number of players required to sign up for the tournament to be played
  ///
  /// * [int] startingLimit:
  ///   The starting number of players for a tournament (filled with AI's)
  ///
  /// * [int] availableLimit:
  ///   The maximum number of players for a tournament (currently 128 but not enforced)
  ///
  /// * [String] description:
  ///   The description of the tournament
  ///
  /// * [String] metaData:
  ///   External custom client defined data
  ///
  /// * [String] audienceIds:
  ///   The audiences associated with the tournament
  ///
  /// * [bool] active:
  ///   Activate/deactivate the tournament
  ///
  /// * [bool] enableBuyBack:
  ///   Determines whether to allow players to buy back into a tournament
  ///
  /// * [String] offerIds:
  ///   The list of offers to give as a reward beyond the tickets
  ///
  /// * [int] offerAssetId:
  ///   The artwork ID to attach to the reward tickets offers
  ///
  /// * [bool] fixedReward:
  ///   If set then do not update the ticket reward, auto set to true if offerIds provided
  ///
  /// * [String] splitReward:
  ///   Set the rules for handling the reward in case of a tie, values: EVEN split the reward evenly ALL everyone gets the full reward value FIRST first score submitted RANDOM random player who scored
  ///
  /// * [bool] allocateTickets:
  ///   Flag to indicate owner should receive tickets for completed missions
  ///
  /// * [String] tournamentData:
  ///   A text based string that will be passed into each tournament setup to populate the content
  ///
  /// * [String] missionType:
  ///   The style of tournament to build, options are: TOURNAMENT, POOLPLAY
  ///
  /// * [String] visibility:
  ///   Sets the visibility flag for the tournament
  ///
  /// * [int] preliminaryGroups:
  ///   The number of initial preliminary groups in a multi-stage tournament (this is expected to be a power of two number)
  ///
  /// * [String] preliminaryGroupAdvancements:
  ///   This determines how many people can advance per round in a preliminary group (this is a comma separated list of integers)
  ///
  /// * [bool] enableMultipleEntries:
  ///   This determines if multiple submissions/entries are allowed in a multi-stage album tournament
  ///
  /// * [bool] enableMultipleVotes:
  ///   This determines if users are allowed to vote multiple times per group in a multi-stage album tournament
  ///
  /// * [bool] featured:
  ///   This determines whether the tournament is \"featured\" or not
  ///
  /// * [String] winnerTag:
  ///   This sets what analytic tag is used when a winner is determined
  ///
  /// * [String] tieTag:
  ///   This sets what analytic tag is used when a tie has occurred
  Future<Response> createTournamentWithHttpInfo(int accountId, String appKey, String title, int costToPlay, int startDate, { String? subType, int? imageAssetId, int? secondsBetweenLevels, int? secondsForTieBreaker, int? secondsBetweenPacks, int? maximumLevelLength, String? costToPlayType, int? minimumToPlay, int? startingLimit, int? availableLimit, String? description, String? metaData, String? audienceIds, bool? active, bool? enableBuyBack, String? offerIds, int? offerAssetId, bool? fixedReward, String? splitReward, bool? allocateTickets, String? tournamentData, String? missionType, String? visibility, int? preliminaryGroups, String? preliminaryGroupAdvancements, bool? enableMultipleEntries, bool? enableMultipleVotes, bool? featured, String? winnerTag, String? tieTag, }) async {
    // ignore: prefer_const_declarations
    final path = r'/tournament/create';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'accountId', accountId));
      queryParams.addAll(_queryParams('', 'appKey', appKey));
      queryParams.addAll(_queryParams('', 'title', title));
    if (subType != null) {
      queryParams.addAll(_queryParams('', 'subType', subType));
    }
    if (imageAssetId != null) {
      queryParams.addAll(_queryParams('', 'imageAssetId', imageAssetId));
    }
    if (secondsBetweenLevels != null) {
      queryParams.addAll(_queryParams('', 'secondsBetweenLevels', secondsBetweenLevels));
    }
    if (secondsForTieBreaker != null) {
      queryParams.addAll(_queryParams('', 'secondsForTieBreaker', secondsForTieBreaker));
    }
    if (secondsBetweenPacks != null) {
      queryParams.addAll(_queryParams('', 'secondsBetweenPacks', secondsBetweenPacks));
    }
    if (maximumLevelLength != null) {
      queryParams.addAll(_queryParams('', 'maximumLevelLength', maximumLevelLength));
    }
      queryParams.addAll(_queryParams('', 'costToPlay', costToPlay));
    if (costToPlayType != null) {
      queryParams.addAll(_queryParams('', 'costToPlayType', costToPlayType));
    }
    if (minimumToPlay != null) {
      queryParams.addAll(_queryParams('', 'minimumToPlay', minimumToPlay));
    }
    if (startingLimit != null) {
      queryParams.addAll(_queryParams('', 'startingLimit', startingLimit));
    }
    if (availableLimit != null) {
      queryParams.addAll(_queryParams('', 'availableLimit', availableLimit));
    }
    if (description != null) {
      queryParams.addAll(_queryParams('', 'description', description));
    }
    if (metaData != null) {
      queryParams.addAll(_queryParams('', 'metaData', metaData));
    }
      queryParams.addAll(_queryParams('', 'startDate', startDate));
    if (audienceIds != null) {
      queryParams.addAll(_queryParams('', 'audienceIds', audienceIds));
    }
    if (active != null) {
      queryParams.addAll(_queryParams('', 'active', active));
    }
    if (enableBuyBack != null) {
      queryParams.addAll(_queryParams('', 'enableBuyBack', enableBuyBack));
    }
    if (offerIds != null) {
      queryParams.addAll(_queryParams('', 'offerIds', offerIds));
    }
    if (offerAssetId != null) {
      queryParams.addAll(_queryParams('', 'offerAssetId', offerAssetId));
    }
    if (fixedReward != null) {
      queryParams.addAll(_queryParams('', 'fixedReward', fixedReward));
    }
    if (splitReward != null) {
      queryParams.addAll(_queryParams('', 'splitReward', splitReward));
    }
    if (allocateTickets != null) {
      queryParams.addAll(_queryParams('', 'allocateTickets', allocateTickets));
    }
    if (tournamentData != null) {
      queryParams.addAll(_queryParams('', 'tournamentData', tournamentData));
    }
    if (missionType != null) {
      queryParams.addAll(_queryParams('', 'missionType', missionType));
    }
    if (visibility != null) {
      queryParams.addAll(_queryParams('', 'visibility', visibility));
    }
    if (preliminaryGroups != null) {
      queryParams.addAll(_queryParams('', 'preliminaryGroups', preliminaryGroups));
    }
    if (preliminaryGroupAdvancements != null) {
      queryParams.addAll(_queryParams('', 'preliminaryGroupAdvancements', preliminaryGroupAdvancements));
    }
    if (enableMultipleEntries != null) {
      queryParams.addAll(_queryParams('', 'enableMultipleEntries', enableMultipleEntries));
    }
    if (enableMultipleVotes != null) {
      queryParams.addAll(_queryParams('', 'enableMultipleVotes', enableMultipleVotes));
    }
    if (featured != null) {
      queryParams.addAll(_queryParams('', 'featured', featured));
    }
    if (winnerTag != null) {
      queryParams.addAll(_queryParams('', 'winnerTag', winnerTag));
    }
    if (tieTag != null) {
      queryParams.addAll(_queryParams('', 'tieTag', tieTag));
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

  /// Create Tournament
  ///
  /// Create a tournament.
  ///
  /// Parameters:
  ///
  /// * [int] accountId (required):
  ///   The logged in user.
  ///
  /// * [String] appKey (required):
  ///   The appKey the tournament is created for.
  ///
  /// * [String] title (required):
  ///   The title of the tournament
  ///
  /// * [int] costToPlay (required):
  ///   The number of tickets required to pay to enter the tournament
  ///
  /// * [int] startDate (required):
  ///   The date/time to start the tournament
  ///
  /// * [String] subType:
  ///   Custom string client apps can use for searching/filtering tournaments
  ///
  /// * [int] imageAssetId:
  ///   The asset ID to attach to the tournament
  ///
  /// * [int] secondsBetweenLevels:
  ///   The number of seconds in between the start of each tournament game/group
  ///
  /// * [int] secondsForTieBreaker:
  ///   The number of seconds to extend the round end time in the case of a tie breaker
  ///
  /// * [int] secondsBetweenPacks:
  ///   The number of seconds in between the start of each tournament round
  ///
  /// * [int] maximumLevelLength:
  ///   The maximum number of seconds the match is expected to end at, which gets used to determine when a match should end when there is no activity
  ///
  /// * [String] costToPlayType:
  ///   The type of ticket required to pay
  ///
  /// * [int] minimumToPlay:
  ///   The minimum number of players required to sign up for the tournament to be played
  ///
  /// * [int] startingLimit:
  ///   The starting number of players for a tournament (filled with AI's)
  ///
  /// * [int] availableLimit:
  ///   The maximum number of players for a tournament (currently 128 but not enforced)
  ///
  /// * [String] description:
  ///   The description of the tournament
  ///
  /// * [String] metaData:
  ///   External custom client defined data
  ///
  /// * [String] audienceIds:
  ///   The audiences associated with the tournament
  ///
  /// * [bool] active:
  ///   Activate/deactivate the tournament
  ///
  /// * [bool] enableBuyBack:
  ///   Determines whether to allow players to buy back into a tournament
  ///
  /// * [String] offerIds:
  ///   The list of offers to give as a reward beyond the tickets
  ///
  /// * [int] offerAssetId:
  ///   The artwork ID to attach to the reward tickets offers
  ///
  /// * [bool] fixedReward:
  ///   If set then do not update the ticket reward, auto set to true if offerIds provided
  ///
  /// * [String] splitReward:
  ///   Set the rules for handling the reward in case of a tie, values: EVEN split the reward evenly ALL everyone gets the full reward value FIRST first score submitted RANDOM random player who scored
  ///
  /// * [bool] allocateTickets:
  ///   Flag to indicate owner should receive tickets for completed missions
  ///
  /// * [String] tournamentData:
  ///   A text based string that will be passed into each tournament setup to populate the content
  ///
  /// * [String] missionType:
  ///   The style of tournament to build, options are: TOURNAMENT, POOLPLAY
  ///
  /// * [String] visibility:
  ///   Sets the visibility flag for the tournament
  ///
  /// * [int] preliminaryGroups:
  ///   The number of initial preliminary groups in a multi-stage tournament (this is expected to be a power of two number)
  ///
  /// * [String] preliminaryGroupAdvancements:
  ///   This determines how many people can advance per round in a preliminary group (this is a comma separated list of integers)
  ///
  /// * [bool] enableMultipleEntries:
  ///   This determines if multiple submissions/entries are allowed in a multi-stage album tournament
  ///
  /// * [bool] enableMultipleVotes:
  ///   This determines if users are allowed to vote multiple times per group in a multi-stage album tournament
  ///
  /// * [bool] featured:
  ///   This determines whether the tournament is \"featured\" or not
  ///
  /// * [String] winnerTag:
  ///   This sets what analytic tag is used when a winner is determined
  ///
  /// * [String] tieTag:
  ///   This sets what analytic tag is used when a tie has occurred
  Future<TournamentResponse?> createTournament(int accountId, String appKey, String title, int costToPlay, int startDate, { String? subType, int? imageAssetId, int? secondsBetweenLevels, int? secondsForTieBreaker, int? secondsBetweenPacks, int? maximumLevelLength, String? costToPlayType, int? minimumToPlay, int? startingLimit, int? availableLimit, String? description, String? metaData, String? audienceIds, bool? active, bool? enableBuyBack, String? offerIds, int? offerAssetId, bool? fixedReward, String? splitReward, bool? allocateTickets, String? tournamentData, String? missionType, String? visibility, int? preliminaryGroups, String? preliminaryGroupAdvancements, bool? enableMultipleEntries, bool? enableMultipleVotes, bool? featured, String? winnerTag, String? tieTag, }) async {
    final response = await createTournamentWithHttpInfo(accountId, appKey, title, costToPlay, startDate,  subType: subType, imageAssetId: imageAssetId, secondsBetweenLevels: secondsBetweenLevels, secondsForTieBreaker: secondsForTieBreaker, secondsBetweenPacks: secondsBetweenPacks, maximumLevelLength: maximumLevelLength, costToPlayType: costToPlayType, minimumToPlay: minimumToPlay, startingLimit: startingLimit, availableLimit: availableLimit, description: description, metaData: metaData, audienceIds: audienceIds, active: active, enableBuyBack: enableBuyBack, offerIds: offerIds, offerAssetId: offerAssetId, fixedReward: fixedReward, splitReward: splitReward, allocateTickets: allocateTickets, tournamentData: tournamentData, missionType: missionType, visibility: visibility, preliminaryGroups: preliminaryGroups, preliminaryGroupAdvancements: preliminaryGroupAdvancements, enableMultipleEntries: enableMultipleEntries, enableMultipleVotes: enableMultipleVotes, featured: featured, winnerTag: winnerTag, tieTag: tieTag, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'TournamentResponse',) as TournamentResponse;
    
    }
    return null;
  }

  /// Delete Tournament
  ///
  /// Delete a tournament.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] accountId (required):
  ///   the id of the logged in user
  ///
  /// * [int] missionId (required):
  ///   the id of the mission to delete
  Future<Response> deleteTournamentWithHttpInfo(int accountId, int missionId,) async {
    // ignore: prefer_const_declarations
    final path = r'/tournament/delete';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'accountId', accountId));
      queryParams.addAll(_queryParams('', 'missionId', missionId));

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

  /// Delete Tournament
  ///
  /// Delete a tournament.
  ///
  /// Parameters:
  ///
  /// * [int] accountId (required):
  ///   the id of the logged in user
  ///
  /// * [int] missionId (required):
  ///   the id of the mission to delete
  Future<SirqulResponse?> deleteTournament(int accountId, int missionId,) async {
    final response = await deleteTournamentWithHttpInfo(accountId, missionId,);
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

  /// Get Tournament
  ///
  /// Get a tournament.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] accountId (required):
  ///   The id of the logged in user
  ///
  /// * [int] missionId:
  ///   The id of the mission to return (either missionId or joinCode is required)
  ///
  /// * [String] joinCode:
  ///   Optional identifier for getting the tournament (either missionId or joinCode is required)
  ///
  /// * [String] includeScores:
  ///   Determines which type of scores are returned. Possible values include: ALL, MINE
  ///
  /// * [int] objectPreviewSize:
  ///   Determines the max number of game objects that will get returned for each game level response
  Future<Response> getTournamentWithHttpInfo(int accountId, { int? missionId, String? joinCode, String? includeScores, int? objectPreviewSize, }) async {
    // ignore: prefer_const_declarations
    final path = r'/tournament/get';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'accountId', accountId));
    if (missionId != null) {
      queryParams.addAll(_queryParams('', 'missionId', missionId));
    }
    if (joinCode != null) {
      queryParams.addAll(_queryParams('', 'joinCode', joinCode));
    }
    if (includeScores != null) {
      queryParams.addAll(_queryParams('', 'includeScores', includeScores));
    }
    if (objectPreviewSize != null) {
      queryParams.addAll(_queryParams('', 'objectPreviewSize', objectPreviewSize));
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

  /// Get Tournament
  ///
  /// Get a tournament.
  ///
  /// Parameters:
  ///
  /// * [int] accountId (required):
  ///   The id of the logged in user
  ///
  /// * [int] missionId:
  ///   The id of the mission to return (either missionId or joinCode is required)
  ///
  /// * [String] joinCode:
  ///   Optional identifier for getting the tournament (either missionId or joinCode is required)
  ///
  /// * [String] includeScores:
  ///   Determines which type of scores are returned. Possible values include: ALL, MINE
  ///
  /// * [int] objectPreviewSize:
  ///   Determines the max number of game objects that will get returned for each game level response
  Future<TournamentResponse?> getTournament(int accountId, { int? missionId, String? joinCode, String? includeScores, int? objectPreviewSize, }) async {
    final response = await getTournamentWithHttpInfo(accountId,  missionId: missionId, joinCode: joinCode, includeScores: includeScores, objectPreviewSize: objectPreviewSize, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'TournamentResponse',) as TournamentResponse;
    
    }
    return null;
  }

  /// Search Tournament Objects
  ///
  /// Search on game objects of tournaments
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] accountId (required):
  ///   the account ID
  ///
  /// * [int] gameLevelId (required):
  ///   the game level id to filter results by
  ///
  /// * [String] sortField:
  ///   the field to sort by
  ///
  /// * [bool] descending:
  ///   determines whether the sorted list is in descending or ascending order
  ///
  /// * [int] start:
  ///   the start index for pagination
  ///
  /// * [int] limit:
  ///   the limit for pagination
  Future<Response> searchObjectsWithHttpInfo(int accountId, int gameLevelId, { String? sortField, bool? descending, int? start, int? limit, }) async {
    // ignore: prefer_const_declarations
    final path = r'/tournament/object/search';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'accountId', accountId));
      queryParams.addAll(_queryParams('', 'gameLevelId', gameLevelId));
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

  /// Search Tournament Objects
  ///
  /// Search on game objects of tournaments
  ///
  /// Parameters:
  ///
  /// * [int] accountId (required):
  ///   the account ID
  ///
  /// * [int] gameLevelId (required):
  ///   the game level id to filter results by
  ///
  /// * [String] sortField:
  ///   the field to sort by
  ///
  /// * [bool] descending:
  ///   determines whether the sorted list is in descending or ascending order
  ///
  /// * [int] start:
  ///   the start index for pagination
  ///
  /// * [int] limit:
  ///   the limit for pagination
  Future<SirqulResponse?> searchObjects(int accountId, int gameLevelId, { String? sortField, bool? descending, int? start, int? limit, }) async {
    final response = await searchObjectsWithHttpInfo(accountId, gameLevelId,  sortField: sortField, descending: descending, start: start, limit: limit, );
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

  /// Search Tournament Rounds
  ///
  /// Search for the user's tournament games.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] accountId (required):
  ///   the account ID
  ///
  /// * [String] appKey (required):
  ///   the application key
  ///
  /// * [String] status:
  ///   comma separated list of statuses to filter results by
  ///
  /// * [String] missionType:
  ///   The style of tournament to search for, options are: TOURNAMENT, POOLPLAY
  ///
  /// * [bool] currentOnly:
  ///   search for games that are flagged current only
  ///
  /// * [String] visibilities:
  ///   Filter tournament rounds by the mission visibility flag
  ///
  /// * [int] start:
  ///   the start index for pagination
  ///
  /// * [int] limit:
  ///   the limit for pagination
  Future<Response> searchRoundsWithHttpInfo(int accountId, String appKey, { String? status, String? missionType, bool? currentOnly, String? visibilities, int? start, int? limit, }) async {
    // ignore: prefer_const_declarations
    final path = r'/tournament/round/search';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'accountId', accountId));
      queryParams.addAll(_queryParams('', 'appKey', appKey));
    if (status != null) {
      queryParams.addAll(_queryParams('', 'status', status));
    }
    if (missionType != null) {
      queryParams.addAll(_queryParams('', 'missionType', missionType));
    }
    if (currentOnly != null) {
      queryParams.addAll(_queryParams('', 'currentOnly', currentOnly));
    }
    if (visibilities != null) {
      queryParams.addAll(_queryParams('', 'visibilities', visibilities));
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

  /// Search Tournament Rounds
  ///
  /// Search for the user's tournament games.
  ///
  /// Parameters:
  ///
  /// * [int] accountId (required):
  ///   the account ID
  ///
  /// * [String] appKey (required):
  ///   the application key
  ///
  /// * [String] status:
  ///   comma separated list of statuses to filter results by
  ///
  /// * [String] missionType:
  ///   The style of tournament to search for, options are: TOURNAMENT, POOLPLAY
  ///
  /// * [bool] currentOnly:
  ///   search for games that are flagged current only
  ///
  /// * [String] visibilities:
  ///   Filter tournament rounds by the mission visibility flag
  ///
  /// * [int] start:
  ///   the start index for pagination
  ///
  /// * [int] limit:
  ///   the limit for pagination
  Future<SirqulResponse?> searchRounds(int accountId, String appKey, { String? status, String? missionType, bool? currentOnly, String? visibilities, int? start, int? limit, }) async {
    final response = await searchRoundsWithHttpInfo(accountId, appKey,  status: status, missionType: missionType, currentOnly: currentOnly, visibilities: visibilities, start: start, limit: limit, );
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

  /// Search Tournaments
  ///
  /// Search for tournaments
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] accountId (required):
  ///   The logged in user.
  ///
  /// * [String] appKey (required):
  ///   The application key
  ///
  /// * [String] keyword:
  ///   the keyword to search tournament on
  ///
  /// * [String] subType:
  ///   filter results by subType
  ///
  /// * [bool] includeInactive:
  ///   whether to include inactives in the search or not
  ///
  /// * [String] missionTypes:
  ///   comma separated list of mission types to filter results, possbile values include: TOURNAMENT, POOLPLAY, MULTISTAGE
  ///
  /// * [String] filter:
  ///   filter tournaments by the tournament's current state
  ///
  /// * [String] sortField:
  ///   which field to sort on
  ///
  /// * [bool] descending:
  ///   Determines whether to return results in descending order. The default value will be true if the filter is \"PAST\", otherwise the default value will be false.
  ///
  /// * [String] visibility:
  ///   Comma separated list of visibility flags for search for, possible values include: PUBLIC, LISTABLE, REWARDABLE, TRIGGERABLE, PRIVATE
  ///
  /// * [int] start:
  ///   Start the result set at some index.
  ///
  /// * [int] limit:
  ///   Limit the result to some number
  Future<Response> searchTournamentsWithHttpInfo(int accountId, String appKey, { String? keyword, String? subType, bool? includeInactive, String? missionTypes, String? filter, String? sortField, bool? descending, String? visibility, int? start, int? limit, }) async {
    // ignore: prefer_const_declarations
    final path = r'/tournament/search';

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
    if (subType != null) {
      queryParams.addAll(_queryParams('', 'subType', subType));
    }
    if (includeInactive != null) {
      queryParams.addAll(_queryParams('', 'includeInactive', includeInactive));
    }
    if (missionTypes != null) {
      queryParams.addAll(_queryParams('', 'missionTypes', missionTypes));
    }
    if (filter != null) {
      queryParams.addAll(_queryParams('', 'filter', filter));
    }
    if (sortField != null) {
      queryParams.addAll(_queryParams('', 'sortField', sortField));
    }
    if (descending != null) {
      queryParams.addAll(_queryParams('', 'descending', descending));
    }
    if (visibility != null) {
      queryParams.addAll(_queryParams('', 'visibility', visibility));
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

  /// Search Tournaments
  ///
  /// Search for tournaments
  ///
  /// Parameters:
  ///
  /// * [int] accountId (required):
  ///   The logged in user.
  ///
  /// * [String] appKey (required):
  ///   The application key
  ///
  /// * [String] keyword:
  ///   the keyword to search tournament on
  ///
  /// * [String] subType:
  ///   filter results by subType
  ///
  /// * [bool] includeInactive:
  ///   whether to include inactives in the search or not
  ///
  /// * [String] missionTypes:
  ///   comma separated list of mission types to filter results, possbile values include: TOURNAMENT, POOLPLAY, MULTISTAGE
  ///
  /// * [String] filter:
  ///   filter tournaments by the tournament's current state
  ///
  /// * [String] sortField:
  ///   which field to sort on
  ///
  /// * [bool] descending:
  ///   Determines whether to return results in descending order. The default value will be true if the filter is \"PAST\", otherwise the default value will be false.
  ///
  /// * [String] visibility:
  ///   Comma separated list of visibility flags for search for, possible values include: PUBLIC, LISTABLE, REWARDABLE, TRIGGERABLE, PRIVATE
  ///
  /// * [int] start:
  ///   Start the result set at some index.
  ///
  /// * [int] limit:
  ///   Limit the result to some number
  Future<MissionShortResponse?> searchTournaments(int accountId, String appKey, { String? keyword, String? subType, bool? includeInactive, String? missionTypes, String? filter, String? sortField, bool? descending, String? visibility, int? start, int? limit, }) async {
    final response = await searchTournamentsWithHttpInfo(accountId, appKey,  keyword: keyword, subType: subType, includeInactive: includeInactive, missionTypes: missionTypes, filter: filter, sortField: sortField, descending: descending, visibility: visibility, start: start, limit: limit, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'MissionShortResponse',) as MissionShortResponse;
    
    }
    return null;
  }

  /// Submit Tournament Score
  ///
  /// Submit an array of scores for a tournament match. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] accountId (required):
  ///   The logged in user account ID.
  ///
  /// * [String] appKey (required):
  ///   The application key.
  ///
  /// * [int] missionId (required):
  ///   The missionId to score for
  ///
  /// * [int] gameId (required):
  ///   The gameId to score for
  ///
  /// * [int] packId (required):
  ///   The packId to score for
  ///
  /// * [String] scores (required):
  ///   a JSON Array of scores to submit for a tournament match ```json [   {     \"accountId\": 2,     \"points\": 3   },   {     \"accountId\": 1777662,     \"points\": 7   } ] ``` 
  ///
  /// * [int] gameLevelId:
  ///   The gameLevelId to score for
  Future<Response> submitTournamentScoreWithHttpInfo(int accountId, String appKey, int missionId, int gameId, int packId, String scores, { int? gameLevelId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/tournament/score';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'accountId', accountId));
      queryParams.addAll(_queryParams('', 'appKey', appKey));
      queryParams.addAll(_queryParams('', 'missionId', missionId));
      queryParams.addAll(_queryParams('', 'gameId', gameId));
      queryParams.addAll(_queryParams('', 'packId', packId));
    if (gameLevelId != null) {
      queryParams.addAll(_queryParams('', 'gameLevelId', gameLevelId));
    }
      queryParams.addAll(_queryParams('', 'scores', scores));

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

  /// Submit Tournament Score
  ///
  /// Submit an array of scores for a tournament match. 
  ///
  /// Parameters:
  ///
  /// * [int] accountId (required):
  ///   The logged in user account ID.
  ///
  /// * [String] appKey (required):
  ///   The application key.
  ///
  /// * [int] missionId (required):
  ///   The missionId to score for
  ///
  /// * [int] gameId (required):
  ///   The gameId to score for
  ///
  /// * [int] packId (required):
  ///   The packId to score for
  ///
  /// * [String] scores (required):
  ///   a JSON Array of scores to submit for a tournament match ```json [   {     \"accountId\": 2,     \"points\": 3   },   {     \"accountId\": 1777662,     \"points\": 7   } ] ``` 
  ///
  /// * [int] gameLevelId:
  ///   The gameLevelId to score for
  Future<SirqulResponse?> submitTournamentScore(int accountId, String appKey, int missionId, int gameId, int packId, String scores, { int? gameLevelId, }) async {
    final response = await submitTournamentScoreWithHttpInfo(accountId, appKey, missionId, gameId, packId, scores,  gameLevelId: gameLevelId, );
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

  /// Submit a vote for a multi-stage album tournament.
  ///
  /// Submit a vote for a multi-stage album tournament.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] accountId (required):
  ///   The logged in user.
  ///
  /// * [String] appKey (required):
  ///   The application to target
  ///
  /// * [int] missionId (required):
  ///   The tournament's primary id
  ///
  /// * [int] gameObjectId (required):
  ///   The tournament game object the user wants to vote on
  ///
  /// * [String] deviceId:
  ///   The unique id of the device making the request (optional)
  ///
  /// * [bool] checkIfDeviceAlreadyVoted:
  ///   When true, check if the device already voted to prevent duplicate votes from the same device
  Future<Response> submitTournamentVoteWithHttpInfo(int accountId, String appKey, int missionId, int gameObjectId, { String? deviceId, bool? checkIfDeviceAlreadyVoted, }) async {
    // ignore: prefer_const_declarations
    final path = r'/tournament/vote';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (deviceId != null) {
      queryParams.addAll(_queryParams('', 'deviceId', deviceId));
    }
      queryParams.addAll(_queryParams('', 'accountId', accountId));
      queryParams.addAll(_queryParams('', 'appKey', appKey));
      queryParams.addAll(_queryParams('', 'missionId', missionId));
      queryParams.addAll(_queryParams('', 'gameObjectId', gameObjectId));
    if (checkIfDeviceAlreadyVoted != null) {
      queryParams.addAll(_queryParams('', 'checkIfDeviceAlreadyVoted', checkIfDeviceAlreadyVoted));
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

  /// Submit a vote for a multi-stage album tournament.
  ///
  /// Submit a vote for a multi-stage album tournament.
  ///
  /// Parameters:
  ///
  /// * [int] accountId (required):
  ///   The logged in user.
  ///
  /// * [String] appKey (required):
  ///   The application to target
  ///
  /// * [int] missionId (required):
  ///   The tournament's primary id
  ///
  /// * [int] gameObjectId (required):
  ///   The tournament game object the user wants to vote on
  ///
  /// * [String] deviceId:
  ///   The unique id of the device making the request (optional)
  ///
  /// * [bool] checkIfDeviceAlreadyVoted:
  ///   When true, check if the device already voted to prevent duplicate votes from the same device
  Future<SirqulResponse?> submitTournamentVote(int accountId, String appKey, int missionId, int gameObjectId, { String? deviceId, bool? checkIfDeviceAlreadyVoted, }) async {
    final response = await submitTournamentVoteWithHttpInfo(accountId, appKey, missionId, gameObjectId,  deviceId: deviceId, checkIfDeviceAlreadyVoted: checkIfDeviceAlreadyVoted, );
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

  /// Substitute Tournament Player
  ///
  /// Service to replace the user's opponent in the current level - pack - mission with an AI account.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] accountId (required):
  ///   the id of the logged in user
  ///
  /// * [int] missionId (required):
  ///   the id of the mission
  ///
  /// * [int] packId (required):
  ///   the id of the pack
  ///
  /// * [int] gameLevelId (required):
  ///   the id of the game level
  Future<Response> substituteTournamentPlayerWithHttpInfo(int accountId, int missionId, int packId, int gameLevelId,) async {
    // ignore: prefer_const_declarations
    final path = r'/tournament/substitute';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'accountId', accountId));
      queryParams.addAll(_queryParams('', 'missionId', missionId));
      queryParams.addAll(_queryParams('', 'packId', packId));
      queryParams.addAll(_queryParams('', 'gameLevelId', gameLevelId));

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

  /// Substitute Tournament Player
  ///
  /// Service to replace the user's opponent in the current level - pack - mission with an AI account.
  ///
  /// Parameters:
  ///
  /// * [int] accountId (required):
  ///   the id of the logged in user
  ///
  /// * [int] missionId (required):
  ///   the id of the mission
  ///
  /// * [int] packId (required):
  ///   the id of the pack
  ///
  /// * [int] gameLevelId (required):
  ///   the id of the game level
  Future<SirqulResponse?> substituteTournamentPlayer(int accountId, int missionId, int packId, int gameLevelId,) async {
    final response = await substituteTournamentPlayerWithHttpInfo(accountId, missionId, packId, gameLevelId,);
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

  /// Update Tournament
  ///
  /// Update a tournament.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] accountId (required):
  ///   The logged in user.
  ///
  /// * [int] missionId (required):
  ///   The mission/tournament to update
  ///
  /// * [String] title:
  ///   The title of the tournament
  ///
  /// * [String] subType:
  ///   Custom string client apps can use for searching/filtering missions
  ///
  /// * [int] imageAssetId:
  ///   The asset ID to attach to the tournament
  ///
  /// * [int] secondsBetweenLevels:
  ///   The number of seconds in between the start of each tournament game
  ///
  /// * [int] secondsForTieBreaker:
  ///   The number of seconds to extend the round end time in the case of a tie breaker
  ///
  /// * [int] secondsBetweenPacks:
  ///   The number of seconds in between the start of each tournament round
  ///
  /// * [int] maximumLevelLength:
  ///   The maximum number of seconds the match is expected to end at, which gets used to determine when a match should end when there is no activity
  ///
  /// * [int] costToPlay:
  ///   The number of tickets required to pay to enter the tournament
  ///
  /// * [String] costToPlayType:
  ///   The type of ticket required to pay
  ///
  /// * [int] minimumToPlay:
  ///   The minimum number of players required to sign up for the tournament to be played
  ///
  /// * [int] startingLimit:
  ///   The starting number of players for a tournament (filled with AI's)
  ///
  /// * [int] availableLimit:
  ///   The maximum number of players for a tournament (currently 128 but not enforced)
  ///
  /// * [String] description:
  ///   The description of the tournament
  ///
  /// * [String] metaData:
  ///   External custom client defined data
  ///
  /// * [int] startDate:
  ///   The date/time to start the tournament
  ///
  /// * [String] audienceIds:
  ///   The audiences associated with the tournament
  ///
  /// * [bool] active:
  ///   Activate/deactivate the mission
  ///
  /// * [bool] enableBuyBack:
  ///   Determines whether to allow players to buy back into a tournament
  ///
  /// * [String] offerIds:
  ///   The list of offers to give as a reward beyond the tickets
  ///
  /// * [int] offerAssetId:
  ///   The artwork ID to attach to the reward offer
  ///
  /// * [bool] fixedReward:
  ///   If set then do not update the ticket reward, auto set to true if offerIds provided
  ///
  /// * [String] splitReward:
  ///   Set the rules for handling the reward in case of a tie, values: EVEN split the reward evenly ALL everyone gets the full reward value FIRST first score submitted RANDOM random player who scored
  ///
  /// * [bool] allocateTickets:
  ///   Flag to indicate owner should receive tickets for completed missions
  ///
  /// * [String] tournamentData:
  ///   A text based string that will be passed into each tournament setup to populate the content
  ///
  /// * [String] visibility:
  ///   Sets the visibility flag for the tournament
  ///
  /// * [int] preliminaryGroups:
  ///   The number of initial preliminary groups in a multi-stage tournament (this is expected to be a power of two number)
  ///
  /// * [String] preliminaryGroupAdvancements:
  ///   This determines how many people can advance per round in a preliminary group (this is a comma separated list of integers)
  ///
  /// * [bool] enableMultipleEntries:
  ///   This determines if multiple submissions/entries are allowed in a multi-stage album tournament
  ///
  /// * [bool] enableMultipleVotes:
  ///   This determines if users are allowed to vote multiple times per group in a multi-stage album tournament
  ///
  /// * [bool] featured:
  ///   This determines whether the tournament is \"featured\" or not
  ///
  /// * [String] winnerTag:
  ///   This sets what analytic tag is used when a winner is determined
  ///
  /// * [String] tieTag:
  ///   This sets what analytic tag is used when a winner is determined
  Future<Response> updateTournamentWithHttpInfo(int accountId, int missionId, { String? title, String? subType, int? imageAssetId, int? secondsBetweenLevels, int? secondsForTieBreaker, int? secondsBetweenPacks, int? maximumLevelLength, int? costToPlay, String? costToPlayType, int? minimumToPlay, int? startingLimit, int? availableLimit, String? description, String? metaData, int? startDate, String? audienceIds, bool? active, bool? enableBuyBack, String? offerIds, int? offerAssetId, bool? fixedReward, String? splitReward, bool? allocateTickets, String? tournamentData, String? visibility, int? preliminaryGroups, String? preliminaryGroupAdvancements, bool? enableMultipleEntries, bool? enableMultipleVotes, bool? featured, String? winnerTag, String? tieTag, }) async {
    // ignore: prefer_const_declarations
    final path = r'/tournament/update';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'accountId', accountId));
      queryParams.addAll(_queryParams('', 'missionId', missionId));
    if (title != null) {
      queryParams.addAll(_queryParams('', 'title', title));
    }
    if (subType != null) {
      queryParams.addAll(_queryParams('', 'subType', subType));
    }
    if (imageAssetId != null) {
      queryParams.addAll(_queryParams('', 'imageAssetId', imageAssetId));
    }
    if (secondsBetweenLevels != null) {
      queryParams.addAll(_queryParams('', 'secondsBetweenLevels', secondsBetweenLevels));
    }
    if (secondsForTieBreaker != null) {
      queryParams.addAll(_queryParams('', 'secondsForTieBreaker', secondsForTieBreaker));
    }
    if (secondsBetweenPacks != null) {
      queryParams.addAll(_queryParams('', 'secondsBetweenPacks', secondsBetweenPacks));
    }
    if (maximumLevelLength != null) {
      queryParams.addAll(_queryParams('', 'maximumLevelLength', maximumLevelLength));
    }
    if (costToPlay != null) {
      queryParams.addAll(_queryParams('', 'costToPlay', costToPlay));
    }
    if (costToPlayType != null) {
      queryParams.addAll(_queryParams('', 'costToPlayType', costToPlayType));
    }
    if (minimumToPlay != null) {
      queryParams.addAll(_queryParams('', 'minimumToPlay', minimumToPlay));
    }
    if (startingLimit != null) {
      queryParams.addAll(_queryParams('', 'startingLimit', startingLimit));
    }
    if (availableLimit != null) {
      queryParams.addAll(_queryParams('', 'availableLimit', availableLimit));
    }
    if (description != null) {
      queryParams.addAll(_queryParams('', 'description', description));
    }
    if (metaData != null) {
      queryParams.addAll(_queryParams('', 'metaData', metaData));
    }
    if (startDate != null) {
      queryParams.addAll(_queryParams('', 'startDate', startDate));
    }
    if (audienceIds != null) {
      queryParams.addAll(_queryParams('', 'audienceIds', audienceIds));
    }
    if (active != null) {
      queryParams.addAll(_queryParams('', 'active', active));
    }
    if (enableBuyBack != null) {
      queryParams.addAll(_queryParams('', 'enableBuyBack', enableBuyBack));
    }
    if (offerIds != null) {
      queryParams.addAll(_queryParams('', 'offerIds', offerIds));
    }
    if (offerAssetId != null) {
      queryParams.addAll(_queryParams('', 'offerAssetId', offerAssetId));
    }
    if (fixedReward != null) {
      queryParams.addAll(_queryParams('', 'fixedReward', fixedReward));
    }
    if (splitReward != null) {
      queryParams.addAll(_queryParams('', 'splitReward', splitReward));
    }
    if (allocateTickets != null) {
      queryParams.addAll(_queryParams('', 'allocateTickets', allocateTickets));
    }
    if (tournamentData != null) {
      queryParams.addAll(_queryParams('', 'tournamentData', tournamentData));
    }
    if (visibility != null) {
      queryParams.addAll(_queryParams('', 'visibility', visibility));
    }
    if (preliminaryGroups != null) {
      queryParams.addAll(_queryParams('', 'preliminaryGroups', preliminaryGroups));
    }
    if (preliminaryGroupAdvancements != null) {
      queryParams.addAll(_queryParams('', 'preliminaryGroupAdvancements', preliminaryGroupAdvancements));
    }
    if (enableMultipleEntries != null) {
      queryParams.addAll(_queryParams('', 'enableMultipleEntries', enableMultipleEntries));
    }
    if (enableMultipleVotes != null) {
      queryParams.addAll(_queryParams('', 'enableMultipleVotes', enableMultipleVotes));
    }
    if (featured != null) {
      queryParams.addAll(_queryParams('', 'featured', featured));
    }
    if (winnerTag != null) {
      queryParams.addAll(_queryParams('', 'winnerTag', winnerTag));
    }
    if (tieTag != null) {
      queryParams.addAll(_queryParams('', 'tieTag', tieTag));
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

  /// Update Tournament
  ///
  /// Update a tournament.
  ///
  /// Parameters:
  ///
  /// * [int] accountId (required):
  ///   The logged in user.
  ///
  /// * [int] missionId (required):
  ///   The mission/tournament to update
  ///
  /// * [String] title:
  ///   The title of the tournament
  ///
  /// * [String] subType:
  ///   Custom string client apps can use for searching/filtering missions
  ///
  /// * [int] imageAssetId:
  ///   The asset ID to attach to the tournament
  ///
  /// * [int] secondsBetweenLevels:
  ///   The number of seconds in between the start of each tournament game
  ///
  /// * [int] secondsForTieBreaker:
  ///   The number of seconds to extend the round end time in the case of a tie breaker
  ///
  /// * [int] secondsBetweenPacks:
  ///   The number of seconds in between the start of each tournament round
  ///
  /// * [int] maximumLevelLength:
  ///   The maximum number of seconds the match is expected to end at, which gets used to determine when a match should end when there is no activity
  ///
  /// * [int] costToPlay:
  ///   The number of tickets required to pay to enter the tournament
  ///
  /// * [String] costToPlayType:
  ///   The type of ticket required to pay
  ///
  /// * [int] minimumToPlay:
  ///   The minimum number of players required to sign up for the tournament to be played
  ///
  /// * [int] startingLimit:
  ///   The starting number of players for a tournament (filled with AI's)
  ///
  /// * [int] availableLimit:
  ///   The maximum number of players for a tournament (currently 128 but not enforced)
  ///
  /// * [String] description:
  ///   The description of the tournament
  ///
  /// * [String] metaData:
  ///   External custom client defined data
  ///
  /// * [int] startDate:
  ///   The date/time to start the tournament
  ///
  /// * [String] audienceIds:
  ///   The audiences associated with the tournament
  ///
  /// * [bool] active:
  ///   Activate/deactivate the mission
  ///
  /// * [bool] enableBuyBack:
  ///   Determines whether to allow players to buy back into a tournament
  ///
  /// * [String] offerIds:
  ///   The list of offers to give as a reward beyond the tickets
  ///
  /// * [int] offerAssetId:
  ///   The artwork ID to attach to the reward offer
  ///
  /// * [bool] fixedReward:
  ///   If set then do not update the ticket reward, auto set to true if offerIds provided
  ///
  /// * [String] splitReward:
  ///   Set the rules for handling the reward in case of a tie, values: EVEN split the reward evenly ALL everyone gets the full reward value FIRST first score submitted RANDOM random player who scored
  ///
  /// * [bool] allocateTickets:
  ///   Flag to indicate owner should receive tickets for completed missions
  ///
  /// * [String] tournamentData:
  ///   A text based string that will be passed into each tournament setup to populate the content
  ///
  /// * [String] visibility:
  ///   Sets the visibility flag for the tournament
  ///
  /// * [int] preliminaryGroups:
  ///   The number of initial preliminary groups in a multi-stage tournament (this is expected to be a power of two number)
  ///
  /// * [String] preliminaryGroupAdvancements:
  ///   This determines how many people can advance per round in a preliminary group (this is a comma separated list of integers)
  ///
  /// * [bool] enableMultipleEntries:
  ///   This determines if multiple submissions/entries are allowed in a multi-stage album tournament
  ///
  /// * [bool] enableMultipleVotes:
  ///   This determines if users are allowed to vote multiple times per group in a multi-stage album tournament
  ///
  /// * [bool] featured:
  ///   This determines whether the tournament is \"featured\" or not
  ///
  /// * [String] winnerTag:
  ///   This sets what analytic tag is used when a winner is determined
  ///
  /// * [String] tieTag:
  ///   This sets what analytic tag is used when a winner is determined
  Future<TournamentResponse?> updateTournament(int accountId, int missionId, { String? title, String? subType, int? imageAssetId, int? secondsBetweenLevels, int? secondsForTieBreaker, int? secondsBetweenPacks, int? maximumLevelLength, int? costToPlay, String? costToPlayType, int? minimumToPlay, int? startingLimit, int? availableLimit, String? description, String? metaData, int? startDate, String? audienceIds, bool? active, bool? enableBuyBack, String? offerIds, int? offerAssetId, bool? fixedReward, String? splitReward, bool? allocateTickets, String? tournamentData, String? visibility, int? preliminaryGroups, String? preliminaryGroupAdvancements, bool? enableMultipleEntries, bool? enableMultipleVotes, bool? featured, String? winnerTag, String? tieTag, }) async {
    final response = await updateTournamentWithHttpInfo(accountId, missionId,  title: title, subType: subType, imageAssetId: imageAssetId, secondsBetweenLevels: secondsBetweenLevels, secondsForTieBreaker: secondsForTieBreaker, secondsBetweenPacks: secondsBetweenPacks, maximumLevelLength: maximumLevelLength, costToPlay: costToPlay, costToPlayType: costToPlayType, minimumToPlay: minimumToPlay, startingLimit: startingLimit, availableLimit: availableLimit, description: description, metaData: metaData, startDate: startDate, audienceIds: audienceIds, active: active, enableBuyBack: enableBuyBack, offerIds: offerIds, offerAssetId: offerAssetId, fixedReward: fixedReward, splitReward: splitReward, allocateTickets: allocateTickets, tournamentData: tournamentData, visibility: visibility, preliminaryGroups: preliminaryGroups, preliminaryGroupAdvancements: preliminaryGroupAdvancements, enableMultipleEntries: enableMultipleEntries, enableMultipleVotes: enableMultipleVotes, featured: featured, winnerTag: winnerTag, tieTag: tieTag, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'TournamentResponse',) as TournamentResponse;
    
    }
    return null;
  }
}
