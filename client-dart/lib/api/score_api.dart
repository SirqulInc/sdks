//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class ScoreApi {
  ScoreApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Create Score
  ///
  /// Create a score.  The response object will contain a series of   coded messages detailing what items were completed, the score registered,   and any tickets allocated.  Scoring a  level could complete the pack it   is in, completing that pack could complete the game, which  in turn could   complete the mission.  This completion chain is indicated to the client   via  a list of {@link MessageResponse}.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] accountId (required):
  ///   The logged in user.
  ///
  /// * [String] appKey (required):
  ///   The game application key to save the score for.
  ///
  /// * [int] points (required):
  ///   The score
  ///
  /// * [int] missionId:
  ///   The missionId to score for, ignore if not playing mission.
  ///
  /// * [int] gameId:
  ///   The gameId to score for, ignore if not playing mission.
  ///
  /// * [int] packId:
  ///   The packId to score for, send -2 if playing community levels.
  ///
  /// * [int] gameLevelId:
  ///   The gameLevelId to score for.
  ///
  /// * [int] gameObjectId:
  ///   The gameObjectId to score for, ignore if level based scoring.
  ///
  /// * [int] timeTaken:
  ///   The time taken to complete task
  ///
  /// * [bool] highest:
  ///   
  Future<Response> createScoreWithHttpInfo(int accountId, String appKey, int points, { int? missionId, int? gameId, int? packId, int? gameLevelId, int? gameObjectId, int? timeTaken, bool? highest, }) async {
    // ignore: prefer_const_declarations
    final path = r'/score/create';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'accountId', accountId));
      queryParams.addAll(_queryParams('', 'appKey', appKey));
    if (missionId != null) {
      queryParams.addAll(_queryParams('', 'missionId', missionId));
    }
    if (gameId != null) {
      queryParams.addAll(_queryParams('', 'gameId', gameId));
    }
    if (packId != null) {
      queryParams.addAll(_queryParams('', 'packId', packId));
    }
    if (gameLevelId != null) {
      queryParams.addAll(_queryParams('', 'gameLevelId', gameLevelId));
    }
    if (gameObjectId != null) {
      queryParams.addAll(_queryParams('', 'gameObjectId', gameObjectId));
    }
      queryParams.addAll(_queryParams('', 'points', points));
    if (timeTaken != null) {
      queryParams.addAll(_queryParams('', 'timeTaken', timeTaken));
    }
    if (highest != null) {
      queryParams.addAll(_queryParams('', 'highest', highest));
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

  /// Create Score
  ///
  /// Create a score.  The response object will contain a series of   coded messages detailing what items were completed, the score registered,   and any tickets allocated.  Scoring a  level could complete the pack it   is in, completing that pack could complete the game, which  in turn could   complete the mission.  This completion chain is indicated to the client   via  a list of {@link MessageResponse}.
  ///
  /// Parameters:
  ///
  /// * [int] accountId (required):
  ///   The logged in user.
  ///
  /// * [String] appKey (required):
  ///   The game application key to save the score for.
  ///
  /// * [int] points (required):
  ///   The score
  ///
  /// * [int] missionId:
  ///   The missionId to score for, ignore if not playing mission.
  ///
  /// * [int] gameId:
  ///   The gameId to score for, ignore if not playing mission.
  ///
  /// * [int] packId:
  ///   The packId to score for, send -2 if playing community levels.
  ///
  /// * [int] gameLevelId:
  ///   The gameLevelId to score for.
  ///
  /// * [int] gameObjectId:
  ///   The gameObjectId to score for, ignore if level based scoring.
  ///
  /// * [int] timeTaken:
  ///   The time taken to complete task
  ///
  /// * [bool] highest:
  ///   
  Future<ScoreResponse?> createScore(int accountId, String appKey, int points, { int? missionId, int? gameId, int? packId, int? gameLevelId, int? gameObjectId, int? timeTaken, bool? highest, }) async {
    final response = await createScoreWithHttpInfo(accountId, appKey, points,  missionId: missionId, gameId: gameId, packId: packId, gameLevelId: gameLevelId, gameObjectId: gameObjectId, timeTaken: timeTaken, highest: highest, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ScoreResponse',) as ScoreResponse;
    
    }
    return null;
  }

  /// Get Score
  ///
  /// Get the high score for an item.  Pass in the full path IDs for the score.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] accountId (required):
  ///   The logged in user.
  ///
  /// * [String] appKey (required):
  ///   The game application key to get the level for.
  ///
  /// * [int] missionId:
  ///   The missionId to score for, null if not playing mission.
  ///
  /// * [int] gameId:
  ///   The gameId to score for, null if not playing mission.
  ///
  /// * [int] packId:
  ///   The packId to score for, null if playing community levels.
  ///
  /// * [int] gameLevelId:
  ///   The gameLevelId to score for.
  ///
  /// * [int] gameObjectId:
  ///   The gameObjectId to score for, null if level based scoring.
  ///
  /// * [String] scoreObjectType:
  ///   The object type to filter scores by (TicketObjectType)
  ///
  /// * [String] scoreStatus:
  ///   The status of the score to filter (ScoreStatus)
  Future<Response> getScoreWithHttpInfo(int accountId, String appKey, { int? missionId, int? gameId, int? packId, int? gameLevelId, int? gameObjectId, String? scoreObjectType, String? scoreStatus, }) async {
    // ignore: prefer_const_declarations
    final path = r'/score/get';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'accountId', accountId));
      queryParams.addAll(_queryParams('', 'appKey', appKey));
    if (missionId != null) {
      queryParams.addAll(_queryParams('', 'missionId', missionId));
    }
    if (gameId != null) {
      queryParams.addAll(_queryParams('', 'gameId', gameId));
    }
    if (packId != null) {
      queryParams.addAll(_queryParams('', 'packId', packId));
    }
    if (gameLevelId != null) {
      queryParams.addAll(_queryParams('', 'gameLevelId', gameLevelId));
    }
    if (gameObjectId != null) {
      queryParams.addAll(_queryParams('', 'gameObjectId', gameObjectId));
    }
    if (scoreObjectType != null) {
      queryParams.addAll(_queryParams('', 'scoreObjectType', scoreObjectType));
    }
    if (scoreStatus != null) {
      queryParams.addAll(_queryParams('', 'scoreStatus', scoreStatus));
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

  /// Get Score
  ///
  /// Get the high score for an item.  Pass in the full path IDs for the score.
  ///
  /// Parameters:
  ///
  /// * [int] accountId (required):
  ///   The logged in user.
  ///
  /// * [String] appKey (required):
  ///   The game application key to get the level for.
  ///
  /// * [int] missionId:
  ///   The missionId to score for, null if not playing mission.
  ///
  /// * [int] gameId:
  ///   The gameId to score for, null if not playing mission.
  ///
  /// * [int] packId:
  ///   The packId to score for, null if playing community levels.
  ///
  /// * [int] gameLevelId:
  ///   The gameLevelId to score for.
  ///
  /// * [int] gameObjectId:
  ///   The gameObjectId to score for, null if level based scoring.
  ///
  /// * [String] scoreObjectType:
  ///   The object type to filter scores by (TicketObjectType)
  ///
  /// * [String] scoreStatus:
  ///   The status of the score to filter (ScoreStatus)
  Future<ScoreResponse?> getScore(int accountId, String appKey, { int? missionId, int? gameId, int? packId, int? gameLevelId, int? gameObjectId, String? scoreObjectType, String? scoreStatus, }) async {
    final response = await getScoreWithHttpInfo(accountId, appKey,  missionId: missionId, gameId: gameId, packId: packId, gameLevelId: gameLevelId, gameObjectId: gameObjectId, scoreObjectType: scoreObjectType, scoreStatus: scoreStatus, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ScoreResponse',) as ScoreResponse;
    
    }
    return null;
  }

  /// Search Score
  ///
  /// Search the scores for an item.  Pass in the full path IDs for the scores.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] accountId (required):
  ///   The logged in user.
  ///
  /// * [String] appKey (required):
  ///   The game application key to get the level for.
  ///
  /// * [int] missionId:
  ///   The missionId to score for, null if not playing mission.
  ///
  /// * [int] gameId:
  ///   The gameId to score for, null if not playing mission.
  ///
  /// * [int] packId:
  ///   The packId to score for, null if playing community levels.
  ///
  /// * [int] gameLevelId:
  ///   The gameLevelId to score for.
  ///
  /// * [int] gameObjectId:
  ///   The gameObjectId to score for, null if level based scoring.
  Future<Response> searchScoresWithHttpInfo(int accountId, String appKey, { int? missionId, int? gameId, int? packId, int? gameLevelId, int? gameObjectId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/score/search';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'accountId', accountId));
      queryParams.addAll(_queryParams('', 'appKey', appKey));
    if (missionId != null) {
      queryParams.addAll(_queryParams('', 'missionId', missionId));
    }
    if (gameId != null) {
      queryParams.addAll(_queryParams('', 'gameId', gameId));
    }
    if (packId != null) {
      queryParams.addAll(_queryParams('', 'packId', packId));
    }
    if (gameLevelId != null) {
      queryParams.addAll(_queryParams('', 'gameLevelId', gameLevelId));
    }
    if (gameObjectId != null) {
      queryParams.addAll(_queryParams('', 'gameObjectId', gameObjectId));
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

  /// Search Score
  ///
  /// Search the scores for an item.  Pass in the full path IDs for the scores.
  ///
  /// Parameters:
  ///
  /// * [int] accountId (required):
  ///   The logged in user.
  ///
  /// * [String] appKey (required):
  ///   The game application key to get the level for.
  ///
  /// * [int] missionId:
  ///   The missionId to score for, null if not playing mission.
  ///
  /// * [int] gameId:
  ///   The gameId to score for, null if not playing mission.
  ///
  /// * [int] packId:
  ///   The packId to score for, null if playing community levels.
  ///
  /// * [int] gameLevelId:
  ///   The gameLevelId to score for.
  ///
  /// * [int] gameObjectId:
  ///   The gameObjectId to score for, null if level based scoring.
  Future<List<ScoreResponse>?> searchScores(int accountId, String appKey, { int? missionId, int? gameId, int? packId, int? gameLevelId, int? gameObjectId, }) async {
    final response = await searchScoresWithHttpInfo(accountId, appKey,  missionId: missionId, gameId: gameId, packId: packId, gameLevelId: gameLevelId, gameObjectId: gameObjectId, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<ScoreResponse>') as List)
        .cast<ScoreResponse>()
        .toList(growable: false);

    }
    return null;
  }
}
