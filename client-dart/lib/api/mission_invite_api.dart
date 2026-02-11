//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class MissionInviteApi {
  MissionInviteApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Create Mission Invite
  ///
  /// Create the mission invite. An account can only be invited to a mission one time. For missions that require user submission and reviewing the permissionableType and permissionableId need to be provided.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] deviceId:
  ///   the device id (deviceId or accountId required).
  ///
  /// * [int] accountId:
  ///   the account id of the user (deviceId or accountId required).
  ///
  /// * [int] missionId:
  ///   The mission to find the invite for.
  ///
  /// * [String] joinCode:
  ///   code to be entered for user to join the mission
  ///
  /// * [bool] includeGameData:
  ///   Include the game level data with the mission.
  Future<Response> createMissionInviteWithHttpInfo({ String? deviceId, int? accountId, int? missionId, String? joinCode, bool? includeGameData, }) async {
    // ignore: prefer_const_declarations
    final path = r'/mission/invite/create';

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
    if (missionId != null) {
      queryParams.addAll(_queryParams('', 'missionId', missionId));
    }
    if (joinCode != null) {
      queryParams.addAll(_queryParams('', 'joinCode', joinCode));
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

  /// Create Mission Invite
  ///
  /// Create the mission invite. An account can only be invited to a mission one time. For missions that require user submission and reviewing the permissionableType and permissionableId need to be provided.
  ///
  /// Parameters:
  ///
  /// * [String] deviceId:
  ///   the device id (deviceId or accountId required).
  ///
  /// * [int] accountId:
  ///   the account id of the user (deviceId or accountId required).
  ///
  /// * [int] missionId:
  ///   The mission to find the invite for.
  ///
  /// * [String] joinCode:
  ///   code to be entered for user to join the mission
  ///
  /// * [bool] includeGameData:
  ///   Include the game level data with the mission.
  Future<MissionResponse?> createMissionInvite({ String? deviceId, int? accountId, int? missionId, String? joinCode, bool? includeGameData, }) async {
    final response = await createMissionInviteWithHttpInfo( deviceId: deviceId, accountId: accountId, missionId: missionId, joinCode: joinCode, includeGameData: includeGameData, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'MissionResponse',) as MissionResponse;
    
    }
    return null;
  }

  /// Delete Mission Invite
  ///
  /// Update the mission invite status to quit.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] deviceId:
  ///   the device id (deviceId or accountId required).
  ///
  /// * [int] accountId:
  ///   the account id of the user (deviceId or accountId required).
  ///
  /// * [int] missionId:
  ///   The mission to find the invite for (missionId or missionInviteId requried).
  ///
  /// * [int] missionInviteId:
  ///   The mission invite id. This checks on the user's billable for permission (missionId or missionInviteId requried).
  ///
  /// * [bool] includeGameData:
  ///   Include the game level data with the mission.
  Future<Response> deleteMissionInviteWithHttpInfo({ String? deviceId, int? accountId, int? missionId, int? missionInviteId, bool? includeGameData, }) async {
    // ignore: prefer_const_declarations
    final path = r'/mission/invite/delete';

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
    if (missionId != null) {
      queryParams.addAll(_queryParams('', 'missionId', missionId));
    }
    if (missionInviteId != null) {
      queryParams.addAll(_queryParams('', 'missionInviteId', missionInviteId));
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

  /// Delete Mission Invite
  ///
  /// Update the mission invite status to quit.
  ///
  /// Parameters:
  ///
  /// * [String] deviceId:
  ///   the device id (deviceId or accountId required).
  ///
  /// * [int] accountId:
  ///   the account id of the user (deviceId or accountId required).
  ///
  /// * [int] missionId:
  ///   The mission to find the invite for (missionId or missionInviteId requried).
  ///
  /// * [int] missionInviteId:
  ///   The mission invite id. This checks on the user's billable for permission (missionId or missionInviteId requried).
  ///
  /// * [bool] includeGameData:
  ///   Include the game level data with the mission.
  Future<SirqulResponse?> deleteMissionInvite({ String? deviceId, int? accountId, int? missionId, int? missionInviteId, bool? includeGameData, }) async {
    final response = await deleteMissionInviteWithHttpInfo( deviceId: deviceId, accountId: accountId, missionId: missionId, missionInviteId: missionInviteId, includeGameData: includeGameData, );
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

  /// Get Mission Invite
  ///
  /// Get the mission invite. An account can only be invited to a mission one time.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] deviceId:
  ///   the device id (deviceId or accountId required).
  ///
  /// * [int] accountId:
  ///   the account id of the user (deviceId or accountId required).
  ///
  /// * [int] missionId:
  ///   The mission to find the invite for (missionId or missionInviteId requried).
  ///
  /// * [int] missionInviteId:
  ///   The mission invite id. This checks on the user's billable for permission (missionId or missionInviteId requried).
  ///
  /// * [bool] includeGameData:
  ///   Include the game level data with the mission.
  ///
  /// * [String] includeScores:
  ///   include the scores with the mission
  Future<Response> getMissionInviteWithHttpInfo({ String? deviceId, int? accountId, int? missionId, int? missionInviteId, bool? includeGameData, String? includeScores, }) async {
    // ignore: prefer_const_declarations
    final path = r'/mission/invite/get';

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
    if (missionId != null) {
      queryParams.addAll(_queryParams('', 'missionId', missionId));
    }
    if (missionInviteId != null) {
      queryParams.addAll(_queryParams('', 'missionInviteId', missionInviteId));
    }
    if (includeGameData != null) {
      queryParams.addAll(_queryParams('', 'includeGameData', includeGameData));
    }
    if (includeScores != null) {
      queryParams.addAll(_queryParams('', 'includeScores', includeScores));
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

  /// Get Mission Invite
  ///
  /// Get the mission invite. An account can only be invited to a mission one time.
  ///
  /// Parameters:
  ///
  /// * [String] deviceId:
  ///   the device id (deviceId or accountId required).
  ///
  /// * [int] accountId:
  ///   the account id of the user (deviceId or accountId required).
  ///
  /// * [int] missionId:
  ///   The mission to find the invite for (missionId or missionInviteId requried).
  ///
  /// * [int] missionInviteId:
  ///   The mission invite id. This checks on the user's billable for permission (missionId or missionInviteId requried).
  ///
  /// * [bool] includeGameData:
  ///   Include the game level data with the mission.
  ///
  /// * [String] includeScores:
  ///   include the scores with the mission
  Future<MissionResponse?> getMissionInvite({ String? deviceId, int? accountId, int? missionId, int? missionInviteId, bool? includeGameData, String? includeScores, }) async {
    final response = await getMissionInviteWithHttpInfo( deviceId: deviceId, accountId: accountId, missionId: missionId, missionInviteId: missionInviteId, includeGameData: includeGameData, includeScores: includeScores, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'MissionResponse',) as MissionResponse;
    
    }
    return null;
  }

  /// Search Mission Invites
  ///
  /// Get a list of mission invites that the account has.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] deviceId:
  ///   the device id (deviceId or accountId required).
  ///
  /// * [int] accountId:
  ///   the account id of the user (deviceId or accountId required).
  ///
  /// * [String] appKey:
  ///   the app to retrieve the data for, use your application key.
  ///
  /// * [String] appVersion:
  ///   the application version, used to version the game level data
  ///
  /// * [int] missionId:
  ///   the mission id to filter on
  ///
  /// * [String] status:
  ///   The invite status to filter for, comma separated list {AVAILABLE, PENDING, UPDATED, ACCEPTED, ACTIVE, QUIT, COMPLETED, PENDING_REVIEW, REJECTED}
  ///
  /// * [int] lastUpdated:
  ///   Only return invites that have been updated since this date/time (long)
  ///
  /// * [int] start:
  ///   The index into the record set to start with.
  ///
  /// * [int] limit:
  ///   The total number of record to return.
  ///
  /// * [String] keyword:
  ///   the keyword to search on
  ///
  /// * [String] missionTypes:
  ///   
  ///
  /// * [bool] filterByBillable:
  ///   filter results by the account's billable
  ///
  /// * [bool] includeGameData:
  ///   Include the game level data with the mission.
  Future<Response> searchMissionInvitesWithHttpInfo({ String? deviceId, int? accountId, String? appKey, String? appVersion, int? missionId, String? status, int? lastUpdated, int? start, int? limit, String? keyword, String? missionTypes, bool? filterByBillable, bool? includeGameData, }) async {
    // ignore: prefer_const_declarations
    final path = r'/mission/invite/search';

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
    if (appVersion != null) {
      queryParams.addAll(_queryParams('', 'appVersion', appVersion));
    }
    if (missionId != null) {
      queryParams.addAll(_queryParams('', 'missionId', missionId));
    }
    if (status != null) {
      queryParams.addAll(_queryParams('', 'status', status));
    }
    if (lastUpdated != null) {
      queryParams.addAll(_queryParams('', 'lastUpdated', lastUpdated));
    }
    if (start != null) {
      queryParams.addAll(_queryParams('', 'start', start));
    }
    if (limit != null) {
      queryParams.addAll(_queryParams('', 'limit', limit));
    }
    if (keyword != null) {
      queryParams.addAll(_queryParams('', 'keyword', keyword));
    }
    if (missionTypes != null) {
      queryParams.addAll(_queryParams('', 'missionTypes', missionTypes));
    }
    if (filterByBillable != null) {
      queryParams.addAll(_queryParams('', 'filterByBillable', filterByBillable));
    }
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

  /// Search Mission Invites
  ///
  /// Get a list of mission invites that the account has.
  ///
  /// Parameters:
  ///
  /// * [String] deviceId:
  ///   the device id (deviceId or accountId required).
  ///
  /// * [int] accountId:
  ///   the account id of the user (deviceId or accountId required).
  ///
  /// * [String] appKey:
  ///   the app to retrieve the data for, use your application key.
  ///
  /// * [String] appVersion:
  ///   the application version, used to version the game level data
  ///
  /// * [int] missionId:
  ///   the mission id to filter on
  ///
  /// * [String] status:
  ///   The invite status to filter for, comma separated list {AVAILABLE, PENDING, UPDATED, ACCEPTED, ACTIVE, QUIT, COMPLETED, PENDING_REVIEW, REJECTED}
  ///
  /// * [int] lastUpdated:
  ///   Only return invites that have been updated since this date/time (long)
  ///
  /// * [int] start:
  ///   The index into the record set to start with.
  ///
  /// * [int] limit:
  ///   The total number of record to return.
  ///
  /// * [String] keyword:
  ///   the keyword to search on
  ///
  /// * [String] missionTypes:
  ///   
  ///
  /// * [bool] filterByBillable:
  ///   filter results by the account's billable
  ///
  /// * [bool] includeGameData:
  ///   Include the game level data with the mission.
  Future<List<MissionResponse>?> searchMissionInvites({ String? deviceId, int? accountId, String? appKey, String? appVersion, int? missionId, String? status, int? lastUpdated, int? start, int? limit, String? keyword, String? missionTypes, bool? filterByBillable, bool? includeGameData, }) async {
    final response = await searchMissionInvitesWithHttpInfo( deviceId: deviceId, accountId: accountId, appKey: appKey, appVersion: appVersion, missionId: missionId, status: status, lastUpdated: lastUpdated, start: start, limit: limit, keyword: keyword, missionTypes: missionTypes, filterByBillable: filterByBillable, includeGameData: includeGameData, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<MissionResponse>') as List)
        .cast<MissionResponse>()
        .toList(growable: false);

    }
    return null;
  }

  /// Update Mission Invite
  ///
  /// Update the mission invite status. An account can only be invited to a mission one time. For missions that require user submission and reviewing the permissionableType and permissionableId need to be provided.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] deviceId:
  ///   the device id (deviceId or accountId required).
  ///
  /// * [int] accountId:
  ///   the account id of the user (deviceId or accountId required).
  ///
  /// * [String] appKey:
  ///   the application key
  ///
  /// * [int] missionId:
  ///   The mission to find the invite for (missionId or missionInviteId requried).
  ///
  /// * [int] missionInviteId:
  ///   The mission invite id. This checks on the user's billable for permission (missionId or missionInviteId requried).
  ///
  /// * [int] packId:
  ///   the pack id to find the invite for
  ///
  /// * [int] gameLevelId:
  ///   the game level id to find the invite for
  ///
  /// * [String] status:
  ///   The invite status to filter for, comma separated list {AVAILABLE, PENDING, UPDATED, ACCEPTED, ACTIVE, QUIT, COMPLETED, PENDING_REVIEW, REJECTED}
  ///
  /// * [String] permissionableType:
  ///   This is the content type for missions that require user submission. Note that user submitted content must require a status of PENDING_REVIEW to be accpeted. {ACCOUNT, GAMELEVEL, COLLECTION, ALBUM_CONTEST, THEME_DESCRIPTOR, ALBUM}
  ///
  /// * [int] permissionableId:
  ///   The id of the content being submitted.
  ///
  /// * [bool] includeGameData:
  ///   Include the game level data with the mission.
  Future<Response> updateMissionInviteWithHttpInfo({ String? deviceId, int? accountId, String? appKey, int? missionId, int? missionInviteId, int? packId, int? gameLevelId, String? status, String? permissionableType, int? permissionableId, bool? includeGameData, }) async {
    // ignore: prefer_const_declarations
    final path = r'/mission/invite/update';

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
    if (missionId != null) {
      queryParams.addAll(_queryParams('', 'missionId', missionId));
    }
    if (missionInviteId != null) {
      queryParams.addAll(_queryParams('', 'missionInviteId', missionInviteId));
    }
    if (packId != null) {
      queryParams.addAll(_queryParams('', 'packId', packId));
    }
    if (gameLevelId != null) {
      queryParams.addAll(_queryParams('', 'gameLevelId', gameLevelId));
    }
    if (status != null) {
      queryParams.addAll(_queryParams('', 'status', status));
    }
    if (permissionableType != null) {
      queryParams.addAll(_queryParams('', 'permissionableType', permissionableType));
    }
    if (permissionableId != null) {
      queryParams.addAll(_queryParams('', 'permissionableId', permissionableId));
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

  /// Update Mission Invite
  ///
  /// Update the mission invite status. An account can only be invited to a mission one time. For missions that require user submission and reviewing the permissionableType and permissionableId need to be provided.
  ///
  /// Parameters:
  ///
  /// * [String] deviceId:
  ///   the device id (deviceId or accountId required).
  ///
  /// * [int] accountId:
  ///   the account id of the user (deviceId or accountId required).
  ///
  /// * [String] appKey:
  ///   the application key
  ///
  /// * [int] missionId:
  ///   The mission to find the invite for (missionId or missionInviteId requried).
  ///
  /// * [int] missionInviteId:
  ///   The mission invite id. This checks on the user's billable for permission (missionId or missionInviteId requried).
  ///
  /// * [int] packId:
  ///   the pack id to find the invite for
  ///
  /// * [int] gameLevelId:
  ///   the game level id to find the invite for
  ///
  /// * [String] status:
  ///   The invite status to filter for, comma separated list {AVAILABLE, PENDING, UPDATED, ACCEPTED, ACTIVE, QUIT, COMPLETED, PENDING_REVIEW, REJECTED}
  ///
  /// * [String] permissionableType:
  ///   This is the content type for missions that require user submission. Note that user submitted content must require a status of PENDING_REVIEW to be accpeted. {ACCOUNT, GAMELEVEL, COLLECTION, ALBUM_CONTEST, THEME_DESCRIPTOR, ALBUM}
  ///
  /// * [int] permissionableId:
  ///   The id of the content being submitted.
  ///
  /// * [bool] includeGameData:
  ///   Include the game level data with the mission.
  Future<MissionResponse?> updateMissionInvite({ String? deviceId, int? accountId, String? appKey, int? missionId, int? missionInviteId, int? packId, int? gameLevelId, String? status, String? permissionableType, int? permissionableId, bool? includeGameData, }) async {
    final response = await updateMissionInviteWithHttpInfo( deviceId: deviceId, accountId: accountId, appKey: appKey, missionId: missionId, missionInviteId: missionInviteId, packId: packId, gameLevelId: gameLevelId, status: status, permissionableType: permissionableType, permissionableId: permissionableId, includeGameData: includeGameData, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'MissionResponse',) as MissionResponse;
    
    }
    return null;
  }
}
