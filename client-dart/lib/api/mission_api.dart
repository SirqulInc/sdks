//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class MissionApi {
  MissionApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Create Mission
  ///
  /// Create a user defined mission.
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
  ///   The title of the mission
  ///
  /// * [String] description:
  ///   The description of the mission
  ///
  /// * [String] subType:
  ///   Custom string client apps can use for searching/filtering missions
  ///
  /// * [int] startDate:
  ///   The date/time to start the mission, send 0 to unset
  ///
  /// * [int] endDate:
  ///   The date/time to end the mission, send 0 to unset
  ///
  /// * [bool] active:
  ///   Activate/deactivate the mission
  ///
  /// * [String] gameLevelIds:
  ///   the game level ids to include in the mission, comma separated
  ///
  /// * [String] creativeIds:
  ///   creatives to associate with the mission
  ///
  /// * [String] audienceIds:
  ///   audiences to associate with the mission
  ///
  /// * [String] missionTask:
  ///   This parameter is deprecated.
  ///
  /// * [String] formatType:
  ///   The string identifier for a mission format (this is not the missionFormatId)
  ///
  /// * [int] offerId:
  ///   The offerId to give as a reward
  ///
  /// * [double] balance:
  ///   Set the amount of money available to spend, once 0 deactivate mission. Set to a negative value for unlimited.
  ///
  /// * [bool] advancedReporting:
  ///   Flag to mark the mission as eligible for advanced reporting
  ///
  /// * [bool] allocateTickets:
  ///   Flag to indicate owner should receive tickets for completed missions
  ///
  /// * [int] ticketCount:
  ///   The number of tickets to reward
  ///
  /// * [String] ticketType:
  ///   The type of ticket to reward, null means default type
  ///
  /// * [int] points:
  ///   The number of points to award for completing a mission
  ///
  /// * [String] metaData:
  ///   external custom client defined data
  ///
  /// * [String] applicationIds:
  ///   Comma separated list of application ids
  ///
  /// * [String] devices:
  ///   Deprecated parameter for device names
  ///
  /// * [String] deviceIds:
  ///   Comma separated list of device ids
  ///
  /// * [String] deviceVersions:
  ///   Comma separated list of device version ranges
  ///
  /// * [String] locations:
  ///   List of lat/long pairs for mission locations
  ///
  /// * [String] radius:
  ///   Comma separated list of radii for locations
  Future<Response> createMissionWithHttpInfo(num version, int accountId, String title, { String? description, String? subType, int? startDate, int? endDate, bool? active, String? gameLevelIds, String? creativeIds, String? audienceIds, String? missionTask, String? formatType, int? offerId, double? balance, bool? advancedReporting, bool? allocateTickets, int? ticketCount, String? ticketType, int? points, String? metaData, String? applicationIds, String? devices, String? deviceIds, String? deviceVersions, String? locations, String? radius, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/mission/create'
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
    if (subType != null) {
      queryParams.addAll(_queryParams('', 'subType', subType));
    }
    if (startDate != null) {
      queryParams.addAll(_queryParams('', 'startDate', startDate));
    }
    if (endDate != null) {
      queryParams.addAll(_queryParams('', 'endDate', endDate));
    }
    if (active != null) {
      queryParams.addAll(_queryParams('', 'active', active));
    }
    if (gameLevelIds != null) {
      queryParams.addAll(_queryParams('', 'gameLevelIds', gameLevelIds));
    }
    if (creativeIds != null) {
      queryParams.addAll(_queryParams('', 'creativeIds', creativeIds));
    }
    if (audienceIds != null) {
      queryParams.addAll(_queryParams('', 'audienceIds', audienceIds));
    }
    if (missionTask != null) {
      queryParams.addAll(_queryParams('', 'missionTask', missionTask));
    }
    if (formatType != null) {
      queryParams.addAll(_queryParams('', 'formatType', formatType));
    }
    if (offerId != null) {
      queryParams.addAll(_queryParams('', 'offerId', offerId));
    }
    if (balance != null) {
      queryParams.addAll(_queryParams('', 'balance', balance));
    }
    if (advancedReporting != null) {
      queryParams.addAll(_queryParams('', 'advancedReporting', advancedReporting));
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
    if (metaData != null) {
      queryParams.addAll(_queryParams('', 'metaData', metaData));
    }
    if (applicationIds != null) {
      queryParams.addAll(_queryParams('', 'applicationIds', applicationIds));
    }
    if (devices != null) {
      queryParams.addAll(_queryParams('', 'devices', devices));
    }
    if (deviceIds != null) {
      queryParams.addAll(_queryParams('', 'deviceIds', deviceIds));
    }
    if (deviceVersions != null) {
      queryParams.addAll(_queryParams('', 'deviceVersions', deviceVersions));
    }
    if (locations != null) {
      queryParams.addAll(_queryParams('', 'locations', locations));
    }
    if (radius != null) {
      queryParams.addAll(_queryParams('', 'radius', radius));
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

  /// Create Mission
  ///
  /// Create a user defined mission.
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] accountId (required):
  ///   The logged in user.
  ///
  /// * [String] title (required):
  ///   The title of the mission
  ///
  /// * [String] description:
  ///   The description of the mission
  ///
  /// * [String] subType:
  ///   Custom string client apps can use for searching/filtering missions
  ///
  /// * [int] startDate:
  ///   The date/time to start the mission, send 0 to unset
  ///
  /// * [int] endDate:
  ///   The date/time to end the mission, send 0 to unset
  ///
  /// * [bool] active:
  ///   Activate/deactivate the mission
  ///
  /// * [String] gameLevelIds:
  ///   the game level ids to include in the mission, comma separated
  ///
  /// * [String] creativeIds:
  ///   creatives to associate with the mission
  ///
  /// * [String] audienceIds:
  ///   audiences to associate with the mission
  ///
  /// * [String] missionTask:
  ///   This parameter is deprecated.
  ///
  /// * [String] formatType:
  ///   The string identifier for a mission format (this is not the missionFormatId)
  ///
  /// * [int] offerId:
  ///   The offerId to give as a reward
  ///
  /// * [double] balance:
  ///   Set the amount of money available to spend, once 0 deactivate mission. Set to a negative value for unlimited.
  ///
  /// * [bool] advancedReporting:
  ///   Flag to mark the mission as eligible for advanced reporting
  ///
  /// * [bool] allocateTickets:
  ///   Flag to indicate owner should receive tickets for completed missions
  ///
  /// * [int] ticketCount:
  ///   The number of tickets to reward
  ///
  /// * [String] ticketType:
  ///   The type of ticket to reward, null means default type
  ///
  /// * [int] points:
  ///   The number of points to award for completing a mission
  ///
  /// * [String] metaData:
  ///   external custom client defined data
  ///
  /// * [String] applicationIds:
  ///   Comma separated list of application ids
  ///
  /// * [String] devices:
  ///   Deprecated parameter for device names
  ///
  /// * [String] deviceIds:
  ///   Comma separated list of device ids
  ///
  /// * [String] deviceVersions:
  ///   Comma separated list of device version ranges
  ///
  /// * [String] locations:
  ///   List of lat/long pairs for mission locations
  ///
  /// * [String] radius:
  ///   Comma separated list of radii for locations
  Future<MissionResponse?> createMission(num version, int accountId, String title, { String? description, String? subType, int? startDate, int? endDate, bool? active, String? gameLevelIds, String? creativeIds, String? audienceIds, String? missionTask, String? formatType, int? offerId, double? balance, bool? advancedReporting, bool? allocateTickets, int? ticketCount, String? ticketType, int? points, String? metaData, String? applicationIds, String? devices, String? deviceIds, String? deviceVersions, String? locations, String? radius, }) async {
    final response = await createMissionWithHttpInfo(version, accountId, title,  description: description, subType: subType, startDate: startDate, endDate: endDate, active: active, gameLevelIds: gameLevelIds, creativeIds: creativeIds, audienceIds: audienceIds, missionTask: missionTask, formatType: formatType, offerId: offerId, balance: balance, advancedReporting: advancedReporting, allocateTickets: allocateTickets, ticketCount: ticketCount, ticketType: ticketType, points: points, metaData: metaData, applicationIds: applicationIds, devices: devices, deviceIds: deviceIds, deviceVersions: deviceVersions, locations: locations, radius: radius, );
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

  /// Delete Mission
  ///
  /// Delete a mission.
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
  /// * [int] missionId (required):
  ///   the id of the mission to delete
  Future<Response> deleteMissionWithHttpInfo(num version, int accountId, int missionId,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/mission/delete'
      .replaceAll('{version}', version.toString());

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

  /// Delete Mission
  ///
  /// Delete a mission.
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] accountId (required):
  ///   the id of the logged in user
  ///
  /// * [int] missionId (required):
  ///   the id of the mission to delete
  Future<SirqulResponse?> deleteMission(num version, int accountId, int missionId,) async {
    final response = await deleteMissionWithHttpInfo(version, accountId, missionId,);
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

  /// Find Missions
  ///
  /// Get a set of ad filtered by the parameters provided.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [String] appKey (required):
  ///   The application key, if provided return missions specific for the app. Will always return mission levels that are app agnostic.
  ///
  /// * [String] suffix:
  ///   The type of mission to get, possible values are: click_banner, click_leaderboard, click_skyscraper, click_full, click_video, or click_zip
  ///
  /// * [String] type:
  ///   The type of ads to get, possible values are: BANNER, LEADERBOARD, SKYSCRAPER, FULL, VIDEO, ZIP, CONFIG. Use this instead of suffix.
  ///
  /// * [int] accountId:
  ///   The logged in user.
  ///
  /// * [String] appVersion:
  ///   The version of the application, will not return levels newer than the appVersion.
  ///
  /// * [double] latitude:
  ///   The current location of the requesting device
  ///
  /// * [double] longitude:
  ///   The current location of the requesting device
  ///
  /// * [String] device:
  ///   Should use deviceId if possible. The name of the requesting device; possible values are: Android, iPhone, iPad, iPod, etc. use /audience/devices for list.
  ///
  /// * [int] deviceIdentifier:
  ///   The device ID of the requesting device, use /audience/devices for list
  ///
  /// * [String] deviceVersion:
  ///   The requesting device version; examples are: 2.3, 5.1.4, 6.1.4. Supports X, X.X, or X.X.X formated string.
  ///
  /// * [int] start:
  ///   The index into the record set to start with.
  ///
  /// * [int] limit:
  ///   The total number of record to return.
  ///
  /// * [bool] includeGameData:
  ///   Include the game level data with the mission.
  ///
  /// * [bool] includeAudiences:
  ///   If true then return the audience data in the response. Default is false.
  ///
  /// * [bool] allocatesTickets:
  ///   If true/false only return missions whose game levels allocate (or don't allocate) tickets. Do not provide a value to return both.
  ///
  /// * [bool] randomize:
  ///   return a random set of results, default is true. If false returns in natural order.
  ///
  /// * [bool] targetedAdsOnly:
  ///   return only ads targeted to the specific app, no global ads.
  ///
  /// * [String] missionIds:
  ///   return only ads from the specified campaigns.
  ///
  /// * [String] audienceOperator:
  ///   will return the items that have at least 1 or all of their audiences exist in the logged in user’s audiences, depending if the value is OR or AND
  Future<Response> findMissionsWithHttpInfo(num version, String appKey, { String? suffix, String? type, int? accountId, String? appVersion, double? latitude, double? longitude, String? device, int? deviceIdentifier, String? deviceVersion, int? start, int? limit, bool? includeGameData, bool? includeAudiences, bool? allocatesTickets, bool? randomize, bool? targetedAdsOnly, String? missionIds, String? audienceOperator, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/mission/find'
      .replaceAll('{version}', version.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'appKey', appKey));
    if (suffix != null) {
      queryParams.addAll(_queryParams('', 'suffix', suffix));
    }
    if (type != null) {
      queryParams.addAll(_queryParams('', 'type', type));
    }
    if (accountId != null) {
      queryParams.addAll(_queryParams('', 'accountId', accountId));
    }
    if (appVersion != null) {
      queryParams.addAll(_queryParams('', 'appVersion', appVersion));
    }
    if (latitude != null) {
      queryParams.addAll(_queryParams('', 'latitude', latitude));
    }
    if (longitude != null) {
      queryParams.addAll(_queryParams('', 'longitude', longitude));
    }
    if (device != null) {
      queryParams.addAll(_queryParams('', 'device', device));
    }
    if (deviceIdentifier != null) {
      queryParams.addAll(_queryParams('', 'deviceIdentifier', deviceIdentifier));
    }
    if (deviceVersion != null) {
      queryParams.addAll(_queryParams('', 'deviceVersion', deviceVersion));
    }
    if (start != null) {
      queryParams.addAll(_queryParams('', 'start', start));
    }
    if (limit != null) {
      queryParams.addAll(_queryParams('', 'limit', limit));
    }
    if (includeGameData != null) {
      queryParams.addAll(_queryParams('', 'includeGameData', includeGameData));
    }
    if (includeAudiences != null) {
      queryParams.addAll(_queryParams('', 'includeAudiences', includeAudiences));
    }
    if (allocatesTickets != null) {
      queryParams.addAll(_queryParams('', 'allocatesTickets', allocatesTickets));
    }
    if (randomize != null) {
      queryParams.addAll(_queryParams('', 'randomize', randomize));
    }
    if (targetedAdsOnly != null) {
      queryParams.addAll(_queryParams('', 'targetedAdsOnly', targetedAdsOnly));
    }
    if (missionIds != null) {
      queryParams.addAll(_queryParams('', 'missionIds', missionIds));
    }
    if (audienceOperator != null) {
      queryParams.addAll(_queryParams('', 'audienceOperator', audienceOperator));
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

  /// Find Missions
  ///
  /// Get a set of ad filtered by the parameters provided.
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [String] appKey (required):
  ///   The application key, if provided return missions specific for the app. Will always return mission levels that are app agnostic.
  ///
  /// * [String] suffix:
  ///   The type of mission to get, possible values are: click_banner, click_leaderboard, click_skyscraper, click_full, click_video, or click_zip
  ///
  /// * [String] type:
  ///   The type of ads to get, possible values are: BANNER, LEADERBOARD, SKYSCRAPER, FULL, VIDEO, ZIP, CONFIG. Use this instead of suffix.
  ///
  /// * [int] accountId:
  ///   The logged in user.
  ///
  /// * [String] appVersion:
  ///   The version of the application, will not return levels newer than the appVersion.
  ///
  /// * [double] latitude:
  ///   The current location of the requesting device
  ///
  /// * [double] longitude:
  ///   The current location of the requesting device
  ///
  /// * [String] device:
  ///   Should use deviceId if possible. The name of the requesting device; possible values are: Android, iPhone, iPad, iPod, etc. use /audience/devices for list.
  ///
  /// * [int] deviceIdentifier:
  ///   The device ID of the requesting device, use /audience/devices for list
  ///
  /// * [String] deviceVersion:
  ///   The requesting device version; examples are: 2.3, 5.1.4, 6.1.4. Supports X, X.X, or X.X.X formated string.
  ///
  /// * [int] start:
  ///   The index into the record set to start with.
  ///
  /// * [int] limit:
  ///   The total number of record to return.
  ///
  /// * [bool] includeGameData:
  ///   Include the game level data with the mission.
  ///
  /// * [bool] includeAudiences:
  ///   If true then return the audience data in the response. Default is false.
  ///
  /// * [bool] allocatesTickets:
  ///   If true/false only return missions whose game levels allocate (or don't allocate) tickets. Do not provide a value to return both.
  ///
  /// * [bool] randomize:
  ///   return a random set of results, default is true. If false returns in natural order.
  ///
  /// * [bool] targetedAdsOnly:
  ///   return only ads targeted to the specific app, no global ads.
  ///
  /// * [String] missionIds:
  ///   return only ads from the specified campaigns.
  ///
  /// * [String] audienceOperator:
  ///   will return the items that have at least 1 or all of their audiences exist in the logged in user’s audiences, depending if the value is OR or AND
  Future<MissionResponse?> findMissions(num version, String appKey, { String? suffix, String? type, int? accountId, String? appVersion, double? latitude, double? longitude, String? device, int? deviceIdentifier, String? deviceVersion, int? start, int? limit, bool? includeGameData, bool? includeAudiences, bool? allocatesTickets, bool? randomize, bool? targetedAdsOnly, String? missionIds, String? audienceOperator, }) async {
    final response = await findMissionsWithHttpInfo(version, appKey,  suffix: suffix, type: type, accountId: accountId, appVersion: appVersion, latitude: latitude, longitude: longitude, device: device, deviceIdentifier: deviceIdentifier, deviceVersion: deviceVersion, start: start, limit: limit, includeGameData: includeGameData, includeAudiences: includeAudiences, allocatesTickets: allocatesTickets, randomize: randomize, targetedAdsOnly: targetedAdsOnly, missionIds: missionIds, audienceOperator: audienceOperator, );
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

  /// Get Mission
  ///
  /// Get a mission.
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
  /// * [int] missionId (required):
  ///   The id of the mission to return.
  ///
  /// * [bool] returnCreative:
  ///   Return creatives associated with the mission when true
  Future<Response> getMissionWithHttpInfo(num version, int accountId, int missionId, { bool? returnCreative, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/mission/get'
      .replaceAll('{version}', version.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'accountId', accountId));
      queryParams.addAll(_queryParams('', 'missionId', missionId));
    if (returnCreative != null) {
      queryParams.addAll(_queryParams('', 'returnCreative', returnCreative));
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

  /// Get Mission
  ///
  /// Get a mission.
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] accountId (required):
  ///   The logged in user.
  ///
  /// * [int] missionId (required):
  ///   The id of the mission to return.
  ///
  /// * [bool] returnCreative:
  ///   Return creatives associated with the mission when true
  Future<MissionResponse?> getMission(num version, int accountId, int missionId, { bool? returnCreative, }) async {
    final response = await getMissionWithHttpInfo(version, accountId, missionId,  returnCreative: returnCreative, );
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

  /// Import Mission
  ///
  /// Create a mission using a source item such as an offer location.
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
  /// * [double] latitude (required):
  ///   The current location of the requesting device
  ///
  /// * [double] longitude (required):
  ///   The current location of the requesting device
  ///
  /// * [String] appKey (required):
  ///   the application key
  ///
  /// * [String] keyword:
  ///   the keyword of the mission
  ///
  /// * [int] start:
  ///   The starting index in the result set to return. Default is 0.
  ///
  /// * [int] limit:
  ///   The total number of records to return. Default is 20.
  ///
  /// * [String] adSize:
  ///   the size of the ad
  Future<Response> importMissionWithHttpInfo(num version, int accountId, double latitude, double longitude, String appKey, { String? keyword, int? start, int? limit, String? adSize, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/mission/import'
      .replaceAll('{version}', version.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'accountId', accountId));
      queryParams.addAll(_queryParams('', 'latitude', latitude));
      queryParams.addAll(_queryParams('', 'longitude', longitude));
    if (keyword != null) {
      queryParams.addAll(_queryParams('', 'keyword', keyword));
    }
    if (start != null) {
      queryParams.addAll(_queryParams('', 'start', start));
    }
    if (limit != null) {
      queryParams.addAll(_queryParams('', 'limit', limit));
    }
      queryParams.addAll(_queryParams('', 'appKey', appKey));
    if (adSize != null) {
      queryParams.addAll(_queryParams('', 'adSize', adSize));
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

  /// Import Mission
  ///
  /// Create a mission using a source item such as an offer location.
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] accountId (required):
  ///   The logged in user.
  ///
  /// * [double] latitude (required):
  ///   The current location of the requesting device
  ///
  /// * [double] longitude (required):
  ///   The current location of the requesting device
  ///
  /// * [String] appKey (required):
  ///   the application key
  ///
  /// * [String] keyword:
  ///   the keyword of the mission
  ///
  /// * [int] start:
  ///   The starting index in the result set to return. Default is 0.
  ///
  /// * [int] limit:
  ///   The total number of records to return. Default is 20.
  ///
  /// * [String] adSize:
  ///   the size of the ad
  Future<SirqulResponse?> importMission(num version, int accountId, double latitude, double longitude, String appKey, { String? keyword, int? start, int? limit, String? adSize, }) async {
    final response = await importMissionWithHttpInfo(version, accountId, latitude, longitude, appKey,  keyword: keyword, start: start, limit: limit, adSize: adSize, );
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

  /// Search Mission Formats
  ///
  /// Searches on pre-defined mission formats
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] start (required):
  ///   The starting index in the result set to return. Default is 0.
  ///
  /// * [int] limit (required):
  ///   The total number of records to return. Default is 20.
  ///
  /// * [bool] activeOnly (required):
  ///   Determines whether to return only active results. Default is false.
  Future<Response> searchMissionFormatsWithHttpInfo(num version, int start, int limit, bool activeOnly,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/mission/format/search'
      .replaceAll('{version}', version.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'start', start));
      queryParams.addAll(_queryParams('', 'limit', limit));
      queryParams.addAll(_queryParams('', 'activeOnly', activeOnly));

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

  /// Search Mission Formats
  ///
  /// Searches on pre-defined mission formats
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] start (required):
  ///   The starting index in the result set to return. Default is 0.
  ///
  /// * [int] limit (required):
  ///   The total number of records to return. Default is 20.
  ///
  /// * [bool] activeOnly (required):
  ///   Determines whether to return only active results. Default is false.
  Future<List<MissionFormatResponse>?> searchMissionFormats(num version, int start, int limit, bool activeOnly,) async {
    final response = await searchMissionFormatsWithHttpInfo(version, start, limit, activeOnly,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<MissionFormatResponse>') as List)
        .cast<MissionFormatResponse>()
        .toList(growable: false);

    }
    return null;
  }

  /// Search Missions
  ///
  /// Get the list missions available to the account.  
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
  /// * [String] keyword:
  ///   Filter by keyword
  ///
  /// * [String] subType:
  ///   Custom string client apps can use for searching/filtering missions
  ///
  /// * [int] start:
  ///   The index into the record set to start with. Default is 0.
  ///
  /// * [int] limit:
  ///   The total number of record to return. Default is 20, maximum is 100.
  ///
  /// * [bool] includeGameData:
  ///   If true then return the game level data in the response. Default is false.
  ///
  /// * [bool] includeAudiences:
  ///   If true then return the audience data in the response. Default is false.
  ///
  /// * [bool] includeInactive:
  ///   If true then include inactive missions. Default is false.
  ///
  /// * [String] suffix:
  ///   A list of game types to include; click_leaderboard, click_banner, click_skyscraper, click_full, click_video, click_zip, create, vote, question, invite, share, json, xml
  ///
  /// * [String] sortField:
  ///   The field to sort the search on (for example TITLE)
  ///
  /// * [bool] descending:
  ///   Whether to sort in descending order (default true)
  Future<Response> searchMissionsWithHttpInfo(num version, int accountId, { String? keyword, String? subType, int? start, int? limit, bool? includeGameData, bool? includeAudiences, bool? includeInactive, String? suffix, String? sortField, bool? descending, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/mission/search'
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
    if (subType != null) {
      queryParams.addAll(_queryParams('', 'subType', subType));
    }
    if (start != null) {
      queryParams.addAll(_queryParams('', 'start', start));
    }
    if (limit != null) {
      queryParams.addAll(_queryParams('', 'limit', limit));
    }
    if (includeGameData != null) {
      queryParams.addAll(_queryParams('', 'includeGameData', includeGameData));
    }
    if (includeAudiences != null) {
      queryParams.addAll(_queryParams('', 'includeAudiences', includeAudiences));
    }
    if (includeInactive != null) {
      queryParams.addAll(_queryParams('', 'includeInactive', includeInactive));
    }
    if (suffix != null) {
      queryParams.addAll(_queryParams('', 'suffix', suffix));
    }
    if (sortField != null) {
      queryParams.addAll(_queryParams('', 'sortField', sortField));
    }
    if (descending != null) {
      queryParams.addAll(_queryParams('', 'descending', descending));
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

  /// Search Missions
  ///
  /// Get the list missions available to the account.  
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] accountId (required):
  ///   The logged in user.
  ///
  /// * [String] keyword:
  ///   Filter by keyword
  ///
  /// * [String] subType:
  ///   Custom string client apps can use for searching/filtering missions
  ///
  /// * [int] start:
  ///   The index into the record set to start with. Default is 0.
  ///
  /// * [int] limit:
  ///   The total number of record to return. Default is 20, maximum is 100.
  ///
  /// * [bool] includeGameData:
  ///   If true then return the game level data in the response. Default is false.
  ///
  /// * [bool] includeAudiences:
  ///   If true then return the audience data in the response. Default is false.
  ///
  /// * [bool] includeInactive:
  ///   If true then include inactive missions. Default is false.
  ///
  /// * [String] suffix:
  ///   A list of game types to include; click_leaderboard, click_banner, click_skyscraper, click_full, click_video, click_zip, create, vote, question, invite, share, json, xml
  ///
  /// * [String] sortField:
  ///   The field to sort the search on (for example TITLE)
  ///
  /// * [bool] descending:
  ///   Whether to sort in descending order (default true)
  Future<List<MissionResponse>?> searchMissions(num version, int accountId, { String? keyword, String? subType, int? start, int? limit, bool? includeGameData, bool? includeAudiences, bool? includeInactive, String? suffix, String? sortField, bool? descending, }) async {
    final response = await searchMissionsWithHttpInfo(version, accountId,  keyword: keyword, subType: subType, start: start, limit: limit, includeGameData: includeGameData, includeAudiences: includeAudiences, includeInactive: includeInactive, suffix: suffix, sortField: sortField, descending: descending, );
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

  /// Search Missions by Billable Entity
  ///
  /// Use the accountId to determine the associated BillableEntity.  From there get a list of all accounts associated as managers.  Get the list missions owned by all associated managers.
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
  /// * [String] keyword:
  ///   Filter by keyword
  ///
  /// * [int] start:
  ///   The index into the record set to start with. Default is 0.
  ///
  /// * [int] limit:
  ///   The total number of record to return. Default id 20.
  ///
  /// * [bool] includeGameData:
  ///   If true then return the game level data in the response. Default is false.
  ///
  /// * [bool] includeAudiences:
  ///   If true then return the audience data in the response. Default is false.
  ///
  /// * [bool] includeInactive:
  ///   If true then include inactive missions. Default is false.
  ///
  /// * [String] suffix:
  ///   A list of game types to include; click_leaderboard, click_banner, click_skyscraper, click_full, click_video, click_zip, create, vote, question, invite, share, json, xml
  ///
  /// * [String] sortField:
  ///   The field to sort the search on (for example TITLE)
  ///
  /// * [bool] descending:
  ///   Whether to sort in descending order (default true)
  Future<Response> searchMissionsByBillableEntityWithHttpInfo(num version, int accountId, { String? keyword, int? start, int? limit, bool? includeGameData, bool? includeAudiences, bool? includeInactive, String? suffix, String? sortField, bool? descending, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/mission/searchByBillableEntity'
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
    if (start != null) {
      queryParams.addAll(_queryParams('', 'start', start));
    }
    if (limit != null) {
      queryParams.addAll(_queryParams('', 'limit', limit));
    }
    if (includeGameData != null) {
      queryParams.addAll(_queryParams('', 'includeGameData', includeGameData));
    }
    if (includeAudiences != null) {
      queryParams.addAll(_queryParams('', 'includeAudiences', includeAudiences));
    }
    if (includeInactive != null) {
      queryParams.addAll(_queryParams('', 'includeInactive', includeInactive));
    }
    if (suffix != null) {
      queryParams.addAll(_queryParams('', 'suffix', suffix));
    }
    if (sortField != null) {
      queryParams.addAll(_queryParams('', 'sortField', sortField));
    }
    if (descending != null) {
      queryParams.addAll(_queryParams('', 'descending', descending));
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

  /// Search Missions by Billable Entity
  ///
  /// Use the accountId to determine the associated BillableEntity.  From there get a list of all accounts associated as managers.  Get the list missions owned by all associated managers.
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] accountId (required):
  ///   The logged in user.
  ///
  /// * [String] keyword:
  ///   Filter by keyword
  ///
  /// * [int] start:
  ///   The index into the record set to start with. Default is 0.
  ///
  /// * [int] limit:
  ///   The total number of record to return. Default id 20.
  ///
  /// * [bool] includeGameData:
  ///   If true then return the game level data in the response. Default is false.
  ///
  /// * [bool] includeAudiences:
  ///   If true then return the audience data in the response. Default is false.
  ///
  /// * [bool] includeInactive:
  ///   If true then include inactive missions. Default is false.
  ///
  /// * [String] suffix:
  ///   A list of game types to include; click_leaderboard, click_banner, click_skyscraper, click_full, click_video, click_zip, create, vote, question, invite, share, json, xml
  ///
  /// * [String] sortField:
  ///   The field to sort the search on (for example TITLE)
  ///
  /// * [bool] descending:
  ///   Whether to sort in descending order (default true)
  Future<List<MissionResponse>?> searchMissionsByBillableEntity(num version, int accountId, { String? keyword, int? start, int? limit, bool? includeGameData, bool? includeAudiences, bool? includeInactive, String? suffix, String? sortField, bool? descending, }) async {
    final response = await searchMissionsByBillableEntityWithHttpInfo(version, accountId,  keyword: keyword, start: start, limit: limit, includeGameData: includeGameData, includeAudiences: includeAudiences, includeInactive: includeInactive, suffix: suffix, sortField: sortField, descending: descending, );
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

  /// Update Mission
  ///
  /// Update a mission.
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
  /// * [int] missionId (required):
  ///   The id of the mission to update.
  ///
  /// * [String] title:
  ///   The title of the mission
  ///
  /// * [String] description:
  ///   The description of the mission
  ///
  /// * [String] subType:
  ///   Custom string client apps can use for searching/filtering missions
  ///
  /// * [String] metaData:
  ///   external custom client defined data
  ///
  /// * [int] startDate:
  ///   The date/time to start the mission, send 0 to unset
  ///
  /// * [int] endDate:
  ///   The date/time to end the mission, send 0 to unset
  ///
  /// * [bool] active:
  ///   Activate/deactivate the mission
  ///
  /// * [String] gameLevelIds:
  ///   the game level ids to include in the mission, comma separated
  ///
  /// * [String] creativeIds:
  ///   
  ///
  /// * [String] audienceIds:
  ///   
  ///
  /// * [int] offerId:
  ///   The offerId to give as a reward
  ///
  /// * [double] balance:
  ///   Replace the amount of money available to spend, once 0 deactivate mission. Set to a negative value for unlimited.
  ///
  /// * [bool] advancedReporting:
  ///   Flag to mark the mission as eligible for advanced reporting
  ///
  /// * [bool] allocateTickets:
  ///   Flag to indicate owner should receive tickets for completed missions
  ///
  /// * [int] ticketCount:
  ///   The number of tickets to reward
  ///
  /// * [String] ticketType:
  ///   The type of ticket to reward, null means default type
  ///
  /// * [int] points:
  ///   The number of points to award for completing a mission
  ///
  /// * [String] applicationIds:
  ///   Comma separated list of application ids
  ///
  /// * [String] devices:
  ///   Deprecated parameter for device names
  ///
  /// * [String] deviceIds:
  ///   Comma separated list of device ids
  ///
  /// * [String] deviceVersions:
  ///   Comma separated list of device version ranges
  ///
  /// * [String] locations:
  ///   List of lat/long pairs for mission locations
  ///
  /// * [String] radius:
  ///   Comma separated list of radii for locations
  Future<Response> updateMissionWithHttpInfo(num version, int accountId, int missionId, { String? title, String? description, String? subType, String? metaData, int? startDate, int? endDate, bool? active, String? gameLevelIds, String? creativeIds, String? audienceIds, int? offerId, double? balance, bool? advancedReporting, bool? allocateTickets, int? ticketCount, String? ticketType, int? points, String? applicationIds, String? devices, String? deviceIds, String? deviceVersions, String? locations, String? radius, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/mission/update'
      .replaceAll('{version}', version.toString());

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
    if (description != null) {
      queryParams.addAll(_queryParams('', 'description', description));
    }
    if (subType != null) {
      queryParams.addAll(_queryParams('', 'subType', subType));
    }
    if (metaData != null) {
      queryParams.addAll(_queryParams('', 'metaData', metaData));
    }
    if (startDate != null) {
      queryParams.addAll(_queryParams('', 'startDate', startDate));
    }
    if (endDate != null) {
      queryParams.addAll(_queryParams('', 'endDate', endDate));
    }
    if (active != null) {
      queryParams.addAll(_queryParams('', 'active', active));
    }
    if (gameLevelIds != null) {
      queryParams.addAll(_queryParams('', 'gameLevelIds', gameLevelIds));
    }
    if (creativeIds != null) {
      queryParams.addAll(_queryParams('', 'creativeIds', creativeIds));
    }
    if (audienceIds != null) {
      queryParams.addAll(_queryParams('', 'audienceIds', audienceIds));
    }
    if (offerId != null) {
      queryParams.addAll(_queryParams('', 'offerId', offerId));
    }
    if (balance != null) {
      queryParams.addAll(_queryParams('', 'balance', balance));
    }
    if (advancedReporting != null) {
      queryParams.addAll(_queryParams('', 'advancedReporting', advancedReporting));
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
    if (applicationIds != null) {
      queryParams.addAll(_queryParams('', 'applicationIds', applicationIds));
    }
    if (devices != null) {
      queryParams.addAll(_queryParams('', 'devices', devices));
    }
    if (deviceIds != null) {
      queryParams.addAll(_queryParams('', 'deviceIds', deviceIds));
    }
    if (deviceVersions != null) {
      queryParams.addAll(_queryParams('', 'deviceVersions', deviceVersions));
    }
    if (locations != null) {
      queryParams.addAll(_queryParams('', 'locations', locations));
    }
    if (radius != null) {
      queryParams.addAll(_queryParams('', 'radius', radius));
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

  /// Update Mission
  ///
  /// Update a mission.
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] accountId (required):
  ///   The logged in user.
  ///
  /// * [int] missionId (required):
  ///   The id of the mission to update.
  ///
  /// * [String] title:
  ///   The title of the mission
  ///
  /// * [String] description:
  ///   The description of the mission
  ///
  /// * [String] subType:
  ///   Custom string client apps can use for searching/filtering missions
  ///
  /// * [String] metaData:
  ///   external custom client defined data
  ///
  /// * [int] startDate:
  ///   The date/time to start the mission, send 0 to unset
  ///
  /// * [int] endDate:
  ///   The date/time to end the mission, send 0 to unset
  ///
  /// * [bool] active:
  ///   Activate/deactivate the mission
  ///
  /// * [String] gameLevelIds:
  ///   the game level ids to include in the mission, comma separated
  ///
  /// * [String] creativeIds:
  ///   
  ///
  /// * [String] audienceIds:
  ///   
  ///
  /// * [int] offerId:
  ///   The offerId to give as a reward
  ///
  /// * [double] balance:
  ///   Replace the amount of money available to spend, once 0 deactivate mission. Set to a negative value for unlimited.
  ///
  /// * [bool] advancedReporting:
  ///   Flag to mark the mission as eligible for advanced reporting
  ///
  /// * [bool] allocateTickets:
  ///   Flag to indicate owner should receive tickets for completed missions
  ///
  /// * [int] ticketCount:
  ///   The number of tickets to reward
  ///
  /// * [String] ticketType:
  ///   The type of ticket to reward, null means default type
  ///
  /// * [int] points:
  ///   The number of points to award for completing a mission
  ///
  /// * [String] applicationIds:
  ///   Comma separated list of application ids
  ///
  /// * [String] devices:
  ///   Deprecated parameter for device names
  ///
  /// * [String] deviceIds:
  ///   Comma separated list of device ids
  ///
  /// * [String] deviceVersions:
  ///   Comma separated list of device version ranges
  ///
  /// * [String] locations:
  ///   List of lat/long pairs for mission locations
  ///
  /// * [String] radius:
  ///   Comma separated list of radii for locations
  Future<MissionResponse?> updateMission(num version, int accountId, int missionId, { String? title, String? description, String? subType, String? metaData, int? startDate, int? endDate, bool? active, String? gameLevelIds, String? creativeIds, String? audienceIds, int? offerId, double? balance, bool? advancedReporting, bool? allocateTickets, int? ticketCount, String? ticketType, int? points, String? applicationIds, String? devices, String? deviceIds, String? deviceVersions, String? locations, String? radius, }) async {
    final response = await updateMissionWithHttpInfo(version, accountId, missionId,  title: title, description: description, subType: subType, metaData: metaData, startDate: startDate, endDate: endDate, active: active, gameLevelIds: gameLevelIds, creativeIds: creativeIds, audienceIds: audienceIds, offerId: offerId, balance: balance, advancedReporting: advancedReporting, allocateTickets: allocateTickets, ticketCount: ticketCount, ticketType: ticketType, points: points, applicationIds: applicationIds, devices: devices, deviceIds: deviceIds, deviceVersions: deviceVersions, locations: locations, radius: radius, );
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
