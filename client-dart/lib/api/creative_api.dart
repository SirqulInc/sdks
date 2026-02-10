//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class CreativeApi {
  CreativeApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Add Preview
  ///
  /// Enable this ad for preview for this account.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] accountId (required):
  ///   the id of the account
  ///
  /// * [int] creativeId (required):
  ///   The id of the creative that want to enable preview. The type of the creative should be CONFIG, otherwise no action will be applied.
  Future<Response> addPreviewWithHttpInfo(num version, int accountId, int creativeId,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/creative/addpreview'
      .replaceAll('{version}', version.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'accountId', accountId));
      queryParams.addAll(_queryParams('', 'creativeId', creativeId));

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

  /// Add Preview
  ///
  /// Enable this ad for preview for this account.
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] accountId (required):
  ///   the id of the account
  ///
  /// * [int] creativeId (required):
  ///   The id of the creative that want to enable preview. The type of the creative should be CONFIG, otherwise no action will be applied.
  Future<SirqulResponse?> addPreview(num version, int accountId, int creativeId,) async {
    final response = await addPreviewWithHttpInfo(version, accountId, creativeId,);
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
  /// * [bool] randomize (required):
  ///   return a random set of results, default is true. If false returns in nature order.
  ///
  /// * [bool] targetedAdsOnly (required):
  ///   return only ads targets to the specific app, no global ads.
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
  /// * [bool] includeAudiences:
  ///   If true then return the audience data in the response. Default is false.
  ///
  /// * [bool] allocatesTickets:
  ///   If true/false only return missions whose game levels allocate (or don't allocate) tickets. Do not provide a value to return both.
  ///
  /// * [String] missionIds:
  ///   return only ads from the specified campaigns.
  Future<Response> adsFindWithHttpInfo(num version, String appKey, bool randomize, bool targetedAdsOnly, { String? type, int? accountId, String? appVersion, double? latitude, double? longitude, String? device, int? deviceIdentifier, String? deviceVersion, int? start, int? limit, bool? includeAudiences, bool? allocatesTickets, String? missionIds, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/ads/find'
      .replaceAll('{version}', version.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'appKey', appKey));
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
    if (includeAudiences != null) {
      queryParams.addAll(_queryParams('', 'includeAudiences', includeAudiences));
    }
    if (allocatesTickets != null) {
      queryParams.addAll(_queryParams('', 'allocatesTickets', allocatesTickets));
    }
      queryParams.addAll(_queryParams('', 'randomize', randomize));
      queryParams.addAll(_queryParams('', 'targetedAdsOnly', targetedAdsOnly));
    if (missionIds != null) {
      queryParams.addAll(_queryParams('', 'missionIds', missionIds));
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
  /// * [bool] randomize (required):
  ///   return a random set of results, default is true. If false returns in nature order.
  ///
  /// * [bool] targetedAdsOnly (required):
  ///   return only ads targets to the specific app, no global ads.
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
  /// * [bool] includeAudiences:
  ///   If true then return the audience data in the response. Default is false.
  ///
  /// * [bool] allocatesTickets:
  ///   If true/false only return missions whose game levels allocate (or don't allocate) tickets. Do not provide a value to return both.
  ///
  /// * [String] missionIds:
  ///   return only ads from the specified campaigns.
  Future<List<MissionResponse>?> adsFind(num version, String appKey, bool randomize, bool targetedAdsOnly, { String? type, int? accountId, String? appVersion, double? latitude, double? longitude, String? device, int? deviceIdentifier, String? deviceVersion, int? start, int? limit, bool? includeAudiences, bool? allocatesTickets, String? missionIds, }) async {
    final response = await adsFindWithHttpInfo(version, appKey, randomize, targetedAdsOnly,  type: type, accountId: accountId, appVersion: appVersion, latitude: latitude, longitude: longitude, device: device, deviceIdentifier: deviceIdentifier, deviceVersion: deviceVersion, start: start, limit: limit, includeAudiences: includeAudiences, allocatesTickets: allocatesTickets, missionIds: missionIds, );
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

  /// Create Creative
  ///
  /// Create a creative
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
  /// * [String] name (required):
  ///   The name of the level.
  ///
  /// * [bool] active (required):
  ///   If true set the game level as active. Default is false.
  ///
  /// * [bool] waitForAsset (required):
  ///   determines whether the response will wait until the asset gets created
  ///
  /// * [String] description:
  ///   The description of the level.
  ///
  /// * [int] assetImageId:
  ///   The asset Id of the level image.
  ///
  /// * [String] action:
  ///   This parameter is deprecated. deprecated use data field
  ///
  /// * [String] data:
  ///   The creative data, json based format depending on type. If not using action then data is required.
  ///
  /// * [String] suffix:
  ///   This parameter is deprecated. deprecated use type field
  ///
  /// * [String] type:
  ///   The type of creative. If not using suffix then type is required.
  ///
  /// * [double] balance:
  ///   Set the amount of money available to spend, once 0 deactivate level. Set to a negative value for unlimited.
  ///
  /// * [int] referenceId:
  ///   if creative related so some other content provided the id
  ///
  /// * [String] appVersion:
  ///   The version of the application, will not return creatives newer than the appVersion. Only used when requesting application configuration creatives.
  ///
  /// * [int] missionId:
  ///   Assign the creative to a campaign for timing and audience matching.
  ///
  /// * [int] offerId:
  ///   the id of the offer
  Future<Response> createCreativeWithHttpInfo(num version, int accountId, String name, bool active, bool waitForAsset, { String? description, int? assetImageId, String? action, String? data, String? suffix, String? type, double? balance, int? referenceId, String? appVersion, int? missionId, int? offerId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/creative/create'
      .replaceAll('{version}', version.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'accountId', accountId));
      queryParams.addAll(_queryParams('', 'name', name));
    if (description != null) {
      queryParams.addAll(_queryParams('', 'description', description));
    }
    if (assetImageId != null) {
      queryParams.addAll(_queryParams('', 'assetImageId', assetImageId));
    }
    if (action != null) {
      queryParams.addAll(_queryParams('', 'action', action));
    }
    if (data != null) {
      queryParams.addAll(_queryParams('', 'data', data));
    }
    if (suffix != null) {
      queryParams.addAll(_queryParams('', 'suffix', suffix));
    }
    if (type != null) {
      queryParams.addAll(_queryParams('', 'type', type));
    }
    if (balance != null) {
      queryParams.addAll(_queryParams('', 'balance', balance));
    }
      queryParams.addAll(_queryParams('', 'active', active));
    if (referenceId != null) {
      queryParams.addAll(_queryParams('', 'referenceId', referenceId));
    }
    if (appVersion != null) {
      queryParams.addAll(_queryParams('', 'appVersion', appVersion));
    }
    if (missionId != null) {
      queryParams.addAll(_queryParams('', 'missionId', missionId));
    }
    if (offerId != null) {
      queryParams.addAll(_queryParams('', 'offerId', offerId));
    }
      queryParams.addAll(_queryParams('', 'waitForAsset', waitForAsset));

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

  /// Create Creative
  ///
  /// Create a creative
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] accountId (required):
  ///   The logged in user.
  ///
  /// * [String] name (required):
  ///   The name of the level.
  ///
  /// * [bool] active (required):
  ///   If true set the game level as active. Default is false.
  ///
  /// * [bool] waitForAsset (required):
  ///   determines whether the response will wait until the asset gets created
  ///
  /// * [String] description:
  ///   The description of the level.
  ///
  /// * [int] assetImageId:
  ///   The asset Id of the level image.
  ///
  /// * [String] action:
  ///   This parameter is deprecated. deprecated use data field
  ///
  /// * [String] data:
  ///   The creative data, json based format depending on type. If not using action then data is required.
  ///
  /// * [String] suffix:
  ///   This parameter is deprecated. deprecated use type field
  ///
  /// * [String] type:
  ///   The type of creative. If not using suffix then type is required.
  ///
  /// * [double] balance:
  ///   Set the amount of money available to spend, once 0 deactivate level. Set to a negative value for unlimited.
  ///
  /// * [int] referenceId:
  ///   if creative related so some other content provided the id
  ///
  /// * [String] appVersion:
  ///   The version of the application, will not return creatives newer than the appVersion. Only used when requesting application configuration creatives.
  ///
  /// * [int] missionId:
  ///   Assign the creative to a campaign for timing and audience matching.
  ///
  /// * [int] offerId:
  ///   the id of the offer
  Future<CreativeResponse?> createCreative(num version, int accountId, String name, bool active, bool waitForAsset, { String? description, int? assetImageId, String? action, String? data, String? suffix, String? type, double? balance, int? referenceId, String? appVersion, int? missionId, int? offerId, }) async {
    final response = await createCreativeWithHttpInfo(version, accountId, name, active, waitForAsset,  description: description, assetImageId: assetImageId, action: action, data: data, suffix: suffix, type: type, balance: balance, referenceId: referenceId, appVersion: appVersion, missionId: missionId, offerId: offerId, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CreativeResponse',) as CreativeResponse;
    
    }
    return null;
  }

  /// Delete Creative
  ///
  /// Delete a creative
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
  /// * [int] creativeId (required):
  ///   the id of the creative to delete
  Future<Response> deleteCreativeWithHttpInfo(num version, int accountId, int creativeId,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/creative/delete'
      .replaceAll('{version}', version.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'accountId', accountId));
      queryParams.addAll(_queryParams('', 'creativeId', creativeId));

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

  /// Delete Creative
  ///
  /// Delete a creative
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] accountId (required):
  ///   the id of the logged in user
  ///
  /// * [int] creativeId (required):
  ///   the id of the creative to delete
  Future<SirqulResponse?> deleteCreative(num version, int accountId, int creativeId,) async {
    final response = await deleteCreativeWithHttpInfo(version, accountId, creativeId,);
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

  /// Get Creative
  ///
  /// Get a creative
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
  /// * [int] creativeId (required):
  ///   the ID of the creative to get
  Future<Response> getCreativeWithHttpInfo(num version, int accountId, int creativeId,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/creative/get'
      .replaceAll('{version}', version.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'accountId', accountId));
      queryParams.addAll(_queryParams('', 'creativeId', creativeId));

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

  /// Get Creative
  ///
  /// Get a creative
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] accountId (required):
  ///   the id of the logged in user
  ///
  /// * [int] creativeId (required):
  ///   the ID of the creative to get
  Future<CreativeResponse?> getCreative(num version, int accountId, int creativeId,) async {
    final response = await getCreativeWithHttpInfo(version, accountId, creativeId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CreativeResponse',) as CreativeResponse;
    
    }
    return null;
  }

  /// Search Creatives
  ///
  /// Get a list of levels for an application, just those the account has permissions to view.
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
  /// * [String] appKey (required):
  ///   the application key
  ///
  /// * [int] start (required):
  ///   Start the result set at some index.
  ///
  /// * [int] limit (required):
  ///   Limit the result to some number.
  ///
  /// * [int] missionId:
  ///   Creatives contained in the provided mission.
  ///
  /// * [String] keyword:
  ///   Match the keyword to the owner name or level name.
  Future<Response> getCreativesByApplicationWithHttpInfo(num version, int accountId, String appKey, int start, int limit, { int? missionId, String? keyword, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/creative/search'
      .replaceAll('{version}', version.toString());

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
    if (keyword != null) {
      queryParams.addAll(_queryParams('', 'keyword', keyword));
    }
      queryParams.addAll(_queryParams('', 'start', start));
      queryParams.addAll(_queryParams('', 'limit', limit));

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

  /// Search Creatives
  ///
  /// Get a list of levels for an application, just those the account has permissions to view.
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
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
  /// * [int] missionId:
  ///   Creatives contained in the provided mission.
  ///
  /// * [String] keyword:
  ///   Match the keyword to the owner name or level name.
  Future<List<CreativeResponse>?> getCreativesByApplication(num version, int accountId, String appKey, int start, int limit, { int? missionId, String? keyword, }) async {
    final response = await getCreativesByApplicationWithHttpInfo(version, accountId, appKey, start, limit,  missionId: missionId, keyword: keyword, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<CreativeResponse>') as List)
        .cast<CreativeResponse>()
        .toList(growable: false);

    }
    return null;
  }

  /// Remove Preview
  ///
  /// Remove this ad for preview for this account.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] accountId (required):
  ///   the ID of the logged in user
  ///
  /// * [int] creativeId (required):
  ///   the ID of the creative to remove preview
  Future<Response> removePreviewWithHttpInfo(num version, int accountId, int creativeId,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/creative/removepreview'
      .replaceAll('{version}', version.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'accountId', accountId));
      queryParams.addAll(_queryParams('', 'creativeId', creativeId));

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

  /// Remove Preview
  ///
  /// Remove this ad for preview for this account.
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] accountId (required):
  ///   the ID of the logged in user
  ///
  /// * [int] creativeId (required):
  ///   the ID of the creative to remove preview
  Future<SirqulResponse?> removePreview(num version, int accountId, int creativeId,) async {
    final response = await removePreviewWithHttpInfo(version, accountId, creativeId,);
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

  /// Update Creative
  ///
  /// Update a creative
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
  /// * [int] creativeId (required):
  ///   the creative Id to upate.
  ///
  /// * [String] name:
  ///   The name of the level.
  ///
  /// * [String] description:
  ///   The description of the level.
  ///
  /// * [int] assetImageId:
  ///   The asset Id of the level image.
  ///
  /// * [String] action:
  ///   This parameter is deprecated. deprecated use data field
  ///
  /// * [String] data:
  ///   The creative data, json based format depending on type
  ///
  /// * [String] suffix:
  ///   This parameter is deprecated. deprecated use type field
  ///
  /// * [String] type:
  ///   The type of creative.
  ///
  /// * [double] balance:
  ///   Set the amount of money available to spend, once 0 deactivate level. Set to a negative value for unlimited.
  ///
  /// * [bool] active:
  ///   If true set the game level as active. Default is false.
  ///
  /// * [int] referenceId:
  ///   if creative related so some other content provided the id
  ///
  /// * [String] appVersion:
  ///   The version of the application, will not return creatives newer than the appVersion. Only used when requesting application configuration creatives.
  ///
  /// * [int] missionId:
  ///   Assign the creative to a campaign for timing and audience matching.
  Future<Response> updateCreativeWithHttpInfo(num version, int accountId, int creativeId, { String? name, String? description, int? assetImageId, String? action, String? data, String? suffix, String? type, double? balance, bool? active, int? referenceId, String? appVersion, int? missionId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/creative/update'
      .replaceAll('{version}', version.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'accountId', accountId));
      queryParams.addAll(_queryParams('', 'creativeId', creativeId));
    if (name != null) {
      queryParams.addAll(_queryParams('', 'name', name));
    }
    if (description != null) {
      queryParams.addAll(_queryParams('', 'description', description));
    }
    if (assetImageId != null) {
      queryParams.addAll(_queryParams('', 'assetImageId', assetImageId));
    }
    if (action != null) {
      queryParams.addAll(_queryParams('', 'action', action));
    }
    if (data != null) {
      queryParams.addAll(_queryParams('', 'data', data));
    }
    if (suffix != null) {
      queryParams.addAll(_queryParams('', 'suffix', suffix));
    }
    if (type != null) {
      queryParams.addAll(_queryParams('', 'type', type));
    }
    if (balance != null) {
      queryParams.addAll(_queryParams('', 'balance', balance));
    }
    if (active != null) {
      queryParams.addAll(_queryParams('', 'active', active));
    }
    if (referenceId != null) {
      queryParams.addAll(_queryParams('', 'referenceId', referenceId));
    }
    if (appVersion != null) {
      queryParams.addAll(_queryParams('', 'appVersion', appVersion));
    }
    if (missionId != null) {
      queryParams.addAll(_queryParams('', 'missionId', missionId));
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

  /// Update Creative
  ///
  /// Update a creative
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] accountId (required):
  ///   The logged in user.
  ///
  /// * [int] creativeId (required):
  ///   the creative Id to upate.
  ///
  /// * [String] name:
  ///   The name of the level.
  ///
  /// * [String] description:
  ///   The description of the level.
  ///
  /// * [int] assetImageId:
  ///   The asset Id of the level image.
  ///
  /// * [String] action:
  ///   This parameter is deprecated. deprecated use data field
  ///
  /// * [String] data:
  ///   The creative data, json based format depending on type
  ///
  /// * [String] suffix:
  ///   This parameter is deprecated. deprecated use type field
  ///
  /// * [String] type:
  ///   The type of creative.
  ///
  /// * [double] balance:
  ///   Set the amount of money available to spend, once 0 deactivate level. Set to a negative value for unlimited.
  ///
  /// * [bool] active:
  ///   If true set the game level as active. Default is false.
  ///
  /// * [int] referenceId:
  ///   if creative related so some other content provided the id
  ///
  /// * [String] appVersion:
  ///   The version of the application, will not return creatives newer than the appVersion. Only used when requesting application configuration creatives.
  ///
  /// * [int] missionId:
  ///   Assign the creative to a campaign for timing and audience matching.
  Future<CreativeResponse?> updateCreative(num version, int accountId, int creativeId, { String? name, String? description, int? assetImageId, String? action, String? data, String? suffix, String? type, double? balance, bool? active, int? referenceId, String? appVersion, int? missionId, }) async {
    final response = await updateCreativeWithHttpInfo(version, accountId, creativeId,  name: name, description: description, assetImageId: assetImageId, action: action, data: data, suffix: suffix, type: type, balance: balance, active: active, referenceId: referenceId, appVersion: appVersion, missionId: missionId, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CreativeResponse',) as CreativeResponse;
    
    }
    return null;
  }
}
