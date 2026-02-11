//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class AchievementApi {
  AchievementApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Searches an Achievement Tier
  ///
  /// Searches a tier of an achievement (for developer/retailer use). User must have permissions to the application the achievement is created for.
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
  /// * [String] appKey:
  ///   the application key
  ///
  /// * [String] keyword:
  ///   the keyword used to filter resutls with (this returns results that have the keyword in the title or the description of the achievement tier)
  ///
  /// * [int] achievementType:
  ///   filter results by achievementType (these are exact case sensitive matches)
  ///
  /// * [String] rankType:
  ///   filter results by the rankType (these are the exact case sensitive matches)
  ///
  /// * [String] sortField:
  ///   the field to sort by. See {@link AchievementApiMap}
  ///
  /// * [bool] descending:
  ///   determines whether the sort list is in descending or ascending order (of the achievement)
  ///
  /// * [bool] descendingGoal:
  ///   determines whether the results are in descending or ascending order by the tier goal count (after the initial sort on the achievement)
  ///
  /// * [int] start:
  ///   The start of the index for pagination
  ///
  /// * [int] limit:
  ///   the limit for pagination (has a hard limit of 1000)
  Future<Response> achievementTierSearchPostWithHttpInfo({ String? deviceId, int? accountId, String? appKey, String? keyword, int? achievementType, String? rankType, String? sortField, bool? descending, bool? descendingGoal, int? start, int? limit, }) async {
    // ignore: prefer_const_declarations
    final path = r'/achievement/tier/search';

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
    if (keyword != null) {
      queryParams.addAll(_queryParams('', 'keyword', keyword));
    }
    if (achievementType != null) {
      queryParams.addAll(_queryParams('', 'achievementType', achievementType));
    }
    if (rankType != null) {
      queryParams.addAll(_queryParams('', 'rankType', rankType));
    }
    if (sortField != null) {
      queryParams.addAll(_queryParams('', 'sortField', sortField));
    }
    if (descending != null) {
      queryParams.addAll(_queryParams('', 'descending', descending));
    }
    if (descendingGoal != null) {
      queryParams.addAll(_queryParams('', 'descendingGoal', descendingGoal));
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

  /// Searches an Achievement Tier
  ///
  /// Searches a tier of an achievement (for developer/retailer use). User must have permissions to the application the achievement is created for.
  ///
  /// Parameters:
  ///
  /// * [String] deviceId:
  ///   a unique id given by the device (deviceId or accountId required)
  ///
  /// * [int] accountId:
  ///   the account id of the user (deviceId or accountId required)
  ///
  /// * [String] appKey:
  ///   the application key
  ///
  /// * [String] keyword:
  ///   the keyword used to filter resutls with (this returns results that have the keyword in the title or the description of the achievement tier)
  ///
  /// * [int] achievementType:
  ///   filter results by achievementType (these are exact case sensitive matches)
  ///
  /// * [String] rankType:
  ///   filter results by the rankType (these are the exact case sensitive matches)
  ///
  /// * [String] sortField:
  ///   the field to sort by. See {@link AchievementApiMap}
  ///
  /// * [bool] descending:
  ///   determines whether the sort list is in descending or ascending order (of the achievement)
  ///
  /// * [bool] descendingGoal:
  ///   determines whether the results are in descending or ascending order by the tier goal count (after the initial sort on the achievement)
  ///
  /// * [int] start:
  ///   The start of the index for pagination
  ///
  /// * [int] limit:
  ///   the limit for pagination (has a hard limit of 1000)
  Future<AchievementTierResponse?> achievementTierSearchPost({ String? deviceId, int? accountId, String? appKey, String? keyword, int? achievementType, String? rankType, String? sortField, bool? descending, bool? descendingGoal, int? start, int? limit, }) async {
    final response = await achievementTierSearchPostWithHttpInfo( deviceId: deviceId, accountId: accountId, appKey: appKey, keyword: keyword, achievementType: achievementType, rankType: rankType, sortField: sortField, descending: descending, descendingGoal: descendingGoal, start: start, limit: limit, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'AchievementTierResponse',) as AchievementTierResponse;
    
    }
    return null;
  }

  /// Create Achievement
  ///
  /// Updates an achievement (for developer/retailer use). User must have permissions to the application the achievement is created for.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] appKey (required):
  ///   the application key the achievement is for
  ///
  /// * [String] title (required):
  ///   the title of the achievement (255 character limit)
  ///
  /// * [String] deviceId:
  ///   a unique id given by the device (deviceId or accountId required)
  ///
  /// * [int] accountId:
  ///   the account id of the user (deviceId or accountId required)
  ///
  /// * [String] analyticsTag:
  ///   the analytics tag that will trigger when a user's achievement count gets updated
  ///
  /// * [String] description:
  ///   the description of the achievement
  ///
  /// * [String] rankType:
  ///   the rank type for updating leader boards
  ///
  /// * [int] rankIncrement:
  ///   determines how much the rank count is incremented
  ///
  /// * [int] minIncrement:
  ///   restrict scores to be above or equal to this minimum value
  ///
  /// * [int] maxIncrement:
  ///   restrict scores to be below or equal to this maximum value
  ///
  /// * [bool] validate:
  ///   determines whether the customId on analytics are used to validate a user's achievement progress.
  ///
  /// * [bool] active:
  ///   achievement is active or inactive
  ///
  /// * [String] triggerDefinition:
  ///   if provided will define what triggers to run after a tier is completed
  Future<Response> createAchievementWithHttpInfo(String appKey, String title, { String? deviceId, int? accountId, String? analyticsTag, String? description, String? rankType, int? rankIncrement, int? minIncrement, int? maxIncrement, bool? validate, bool? active, String? triggerDefinition, }) async {
    // ignore: prefer_const_declarations
    final path = r'/achievement/create';

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
    if (analyticsTag != null) {
      queryParams.addAll(_queryParams('', 'analyticsTag', analyticsTag));
    }
      queryParams.addAll(_queryParams('', 'title', title));
    if (description != null) {
      queryParams.addAll(_queryParams('', 'description', description));
    }
    if (rankType != null) {
      queryParams.addAll(_queryParams('', 'rankType', rankType));
    }
    if (rankIncrement != null) {
      queryParams.addAll(_queryParams('', 'rankIncrement', rankIncrement));
    }
    if (minIncrement != null) {
      queryParams.addAll(_queryParams('', 'minIncrement', minIncrement));
    }
    if (maxIncrement != null) {
      queryParams.addAll(_queryParams('', 'maxIncrement', maxIncrement));
    }
    if (validate != null) {
      queryParams.addAll(_queryParams('', 'validate', validate));
    }
    if (active != null) {
      queryParams.addAll(_queryParams('', 'active', active));
    }
    if (triggerDefinition != null) {
      queryParams.addAll(_queryParams('', 'triggerDefinition', triggerDefinition));
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

  /// Create Achievement
  ///
  /// Updates an achievement (for developer/retailer use). User must have permissions to the application the achievement is created for.
  ///
  /// Parameters:
  ///
  /// * [String] appKey (required):
  ///   the application key the achievement is for
  ///
  /// * [String] title (required):
  ///   the title of the achievement (255 character limit)
  ///
  /// * [String] deviceId:
  ///   a unique id given by the device (deviceId or accountId required)
  ///
  /// * [int] accountId:
  ///   the account id of the user (deviceId or accountId required)
  ///
  /// * [String] analyticsTag:
  ///   the analytics tag that will trigger when a user's achievement count gets updated
  ///
  /// * [String] description:
  ///   the description of the achievement
  ///
  /// * [String] rankType:
  ///   the rank type for updating leader boards
  ///
  /// * [int] rankIncrement:
  ///   determines how much the rank count is incremented
  ///
  /// * [int] minIncrement:
  ///   restrict scores to be above or equal to this minimum value
  ///
  /// * [int] maxIncrement:
  ///   restrict scores to be below or equal to this maximum value
  ///
  /// * [bool] validate:
  ///   determines whether the customId on analytics are used to validate a user's achievement progress.
  ///
  /// * [bool] active:
  ///   achievement is active or inactive
  ///
  /// * [String] triggerDefinition:
  ///   if provided will define what triggers to run after a tier is completed
  Future<AchievementResponse?> createAchievement(String appKey, String title, { String? deviceId, int? accountId, String? analyticsTag, String? description, String? rankType, int? rankIncrement, int? minIncrement, int? maxIncrement, bool? validate, bool? active, String? triggerDefinition, }) async {
    final response = await createAchievementWithHttpInfo(appKey, title,  deviceId: deviceId, accountId: accountId, analyticsTag: analyticsTag, description: description, rankType: rankType, rankIncrement: rankIncrement, minIncrement: minIncrement, maxIncrement: maxIncrement, validate: validate, active: active, triggerDefinition: triggerDefinition, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'AchievementResponse',) as AchievementResponse;
    
    }
    return null;
  }

  /// Create Achievement Tier
  ///
  /// Create a tier of an achievement (for developer/retailer use). User must have permissions to the application the achievement is created for.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] achievementId (required):
  ///   the achievement id for adding a new tier
  ///
  /// * [bool] scoreAllInstances (required):
  ///   score all instances
  ///
  /// * [String] deviceId:
  ///   a unique id given by the device (deviceId or accountId required)
  ///
  /// * [int] accountId:
  ///   the account id of the user (deviceId or accountId required)
  ///
  /// * [MultipartFile] icon:
  ///   achievement tier icon image file
  ///
  /// * [int] iconAssetId:
  ///   the icon assetId, if icon is provided, icon will overrule
  ///
  /// * [String] title:
  ///   the title of the achievement tier
  ///
  /// * [String] description:
  ///   the description of the achievement tier
  ///
  /// * [int] goalCount:
  ///   the count requirement for completing the achievement tier
  ///
  /// * [int] missionId:
  ///   The ID of the mission to associate with the achievement
  ///
  /// * [int] gameId:
  ///   The ID of the game to associate with the achievement
  ///
  /// * [int] packId:
  ///   The ID of the pack to associate with the achievement
  ///
  /// * [int] gameLevelId:
  ///   The ID of the game level to associate with the achievement
  ///
  /// * [int] gameObjectId:
  ///   The ID of the game object to associate with the achievement
  Future<Response> createAchievementTierWithHttpInfo(int achievementId, bool scoreAllInstances, { String? deviceId, int? accountId, MultipartFile? icon, int? iconAssetId, String? title, String? description, int? goalCount, int? missionId, int? gameId, int? packId, int? gameLevelId, int? gameObjectId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/achievement/tier/create';

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
      queryParams.addAll(_queryParams('', 'achievementId', achievementId));
    if (icon != null) {
      queryParams.addAll(_queryParams('', 'icon', icon));
    }
    if (iconAssetId != null) {
      queryParams.addAll(_queryParams('', 'iconAssetId', iconAssetId));
    }
    if (title != null) {
      queryParams.addAll(_queryParams('', 'title', title));
    }
    if (description != null) {
      queryParams.addAll(_queryParams('', 'description', description));
    }
    if (goalCount != null) {
      queryParams.addAll(_queryParams('', 'goalCount', goalCount));
    }
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
      queryParams.addAll(_queryParams('', 'scoreAllInstances', scoreAllInstances));

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

  /// Create Achievement Tier
  ///
  /// Create a tier of an achievement (for developer/retailer use). User must have permissions to the application the achievement is created for.
  ///
  /// Parameters:
  ///
  /// * [int] achievementId (required):
  ///   the achievement id for adding a new tier
  ///
  /// * [bool] scoreAllInstances (required):
  ///   score all instances
  ///
  /// * [String] deviceId:
  ///   a unique id given by the device (deviceId or accountId required)
  ///
  /// * [int] accountId:
  ///   the account id of the user (deviceId or accountId required)
  ///
  /// * [MultipartFile] icon:
  ///   achievement tier icon image file
  ///
  /// * [int] iconAssetId:
  ///   the icon assetId, if icon is provided, icon will overrule
  ///
  /// * [String] title:
  ///   the title of the achievement tier
  ///
  /// * [String] description:
  ///   the description of the achievement tier
  ///
  /// * [int] goalCount:
  ///   the count requirement for completing the achievement tier
  ///
  /// * [int] missionId:
  ///   The ID of the mission to associate with the achievement
  ///
  /// * [int] gameId:
  ///   The ID of the game to associate with the achievement
  ///
  /// * [int] packId:
  ///   The ID of the pack to associate with the achievement
  ///
  /// * [int] gameLevelId:
  ///   The ID of the game level to associate with the achievement
  ///
  /// * [int] gameObjectId:
  ///   The ID of the game object to associate with the achievement
  Future<AchievementTierResponse?> createAchievementTier(int achievementId, bool scoreAllInstances, { String? deviceId, int? accountId, MultipartFile? icon, int? iconAssetId, String? title, String? description, int? goalCount, int? missionId, int? gameId, int? packId, int? gameLevelId, int? gameObjectId, }) async {
    final response = await createAchievementTierWithHttpInfo(achievementId, scoreAllInstances,  deviceId: deviceId, accountId: accountId, icon: icon, iconAssetId: iconAssetId, title: title, description: description, goalCount: goalCount, missionId: missionId, gameId: gameId, packId: packId, gameLevelId: gameLevelId, gameObjectId: gameObjectId, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'AchievementTierResponse',) as AchievementTierResponse;
    
    }
    return null;
  }

  /// Delete Achievement
  ///
  /// Deletes an achievement (for developer/retailer use). User must have permissions to the application the achievement was created for.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] achievementId (required):
  ///   The ID of the achievement
  ///
  /// * [int] accountId:
  ///   the account id of the user (deviceId or accountId required)
  Future<Response> deleteAchievementWithHttpInfo(int achievementId, { int? accountId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/achievement/delete';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (accountId != null) {
      queryParams.addAll(_queryParams('', 'accountId', accountId));
    }
      queryParams.addAll(_queryParams('', 'achievementId', achievementId));

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

  /// Delete Achievement
  ///
  /// Deletes an achievement (for developer/retailer use). User must have permissions to the application the achievement was created for.
  ///
  /// Parameters:
  ///
  /// * [int] achievementId (required):
  ///   The ID of the achievement
  ///
  /// * [int] accountId:
  ///   the account id of the user (deviceId or accountId required)
  Future<SirqulResponse?> deleteAchievement(int achievementId, { int? accountId, }) async {
    final response = await deleteAchievementWithHttpInfo(achievementId,  accountId: accountId, );
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

  /// Delete Achievement Tier
  ///
  /// Deletes an achievement tier (for developer/retailer use). User must have permissions to the application the achievement was created for.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] achievementTierId (required):
  ///   the achievement id for deletion
  ///
  /// * [int] accountId:
  ///   the account id of the user (deviceId or accountId required).
  Future<Response> deleteAchievementTierWithHttpInfo(int achievementTierId, { int? accountId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/achievement/tier/delete';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (accountId != null) {
      queryParams.addAll(_queryParams('', 'accountId', accountId));
    }
      queryParams.addAll(_queryParams('', 'achievementTierId', achievementTierId));

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

  /// Delete Achievement Tier
  ///
  /// Deletes an achievement tier (for developer/retailer use). User must have permissions to the application the achievement was created for.
  ///
  /// Parameters:
  ///
  /// * [int] achievementTierId (required):
  ///   the achievement id for deletion
  ///
  /// * [int] accountId:
  ///   the account id of the user (deviceId or accountId required).
  Future<SirqulResponse?> deleteAchievementTier(int achievementTierId, { int? accountId, }) async {
    final response = await deleteAchievementTierWithHttpInfo(achievementTierId,  accountId: accountId, );
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

  /// Get Achievement
  ///
  /// Get an achievement (for developer/retailer use). User must have permissions to the application the achievement is created for.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] achievementId (required):
  ///   The ID of the achievement
  ///
  /// * [String] deviceId:
  ///   a unique id given by the device (deviceId or accountId required)
  ///
  /// * [int] accountId:
  ///   the account id of the user (deviceId or accountId required)
  ///
  /// * [String] achievementType:
  ///   achievementType
  Future<Response> getAchievementWithHttpInfo(int achievementId, { String? deviceId, int? accountId, String? achievementType, }) async {
    // ignore: prefer_const_declarations
    final path = r'/achievement/get';

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
      queryParams.addAll(_queryParams('', 'achievementId', achievementId));
    if (achievementType != null) {
      queryParams.addAll(_queryParams('', 'achievementType', achievementType));
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

  /// Get Achievement
  ///
  /// Get an achievement (for developer/retailer use). User must have permissions to the application the achievement is created for.
  ///
  /// Parameters:
  ///
  /// * [int] achievementId (required):
  ///   The ID of the achievement
  ///
  /// * [String] deviceId:
  ///   a unique id given by the device (deviceId or accountId required)
  ///
  /// * [int] accountId:
  ///   the account id of the user (deviceId or accountId required)
  ///
  /// * [String] achievementType:
  ///   achievementType
  Future<AchievementTierResponse?> getAchievement(int achievementId, { String? deviceId, int? accountId, String? achievementType, }) async {
    final response = await getAchievementWithHttpInfo(achievementId,  deviceId: deviceId, accountId: accountId, achievementType: achievementType, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'AchievementTierResponse',) as AchievementTierResponse;
    
    }
    return null;
  }

  /// Gets an achievement tier
  ///
  /// Gets an achievement tier (for developer/retailer use). User must have permissions to the application the achievement is created for.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] accountId (required):
  ///   the account id of the user (deviceId or accountId required)
  ///
  /// * [int] achievementTierId (required):
  ///   the achievement tier id that is being retrieved
  Future<Response> getAchievementTierWithHttpInfo(int accountId, int achievementTierId,) async {
    // ignore: prefer_const_declarations
    final path = r'/achievement/tier/get';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'accountId', accountId));
      queryParams.addAll(_queryParams('', 'achievementTierId', achievementTierId));

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

  /// Gets an achievement tier
  ///
  /// Gets an achievement tier (for developer/retailer use). User must have permissions to the application the achievement is created for.
  ///
  /// Parameters:
  ///
  /// * [int] accountId (required):
  ///   the account id of the user (deviceId or accountId required)
  ///
  /// * [int] achievementTierId (required):
  ///   the achievement tier id that is being retrieved
  Future<AchievementTierResponse?> getAchievementTier(int accountId, int achievementTierId,) async {
    final response = await getAchievementTierWithHttpInfo(accountId, achievementTierId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'AchievementTierResponse',) as AchievementTierResponse;
    
    }
    return null;
  }

  /// Get Achievement Progress
  ///
  /// Gets a list of user achievements.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [bool] returnNulls (required):
  ///   determines whether to return null fields in the response
  ///
  /// * [String] appKey (required):
  ///   the application key for filtering results by application
  ///
  /// * [bool] includeUndiscovered (required):
  ///   determines whether to return achievements that the user has not discovered yet
  ///
  /// * [String] deviceId:
  ///   a unique id given by the device (deviceId or accountId required)
  ///
  /// * [int] accountId:
  ///   the account id of the user (deviceId or accountId required)
  ///
  /// * [String] connectionAccountEmail:
  ///   the email of the account to view achievements
  ///
  /// * [int] connectionAccountId:
  ///   the id of the account to view achievements
  ///
  /// * [String] rankType:
  ///   filter results by achievement rankType
  ///
  /// * [String] achievementType:
  ///   filter results by achievement type
  ///
  /// * [double] latitude:
  ///   the current latitude of the user
  ///
  /// * [double] longitude:
  ///   the current longitude of the user
  Future<Response> getUserAchievementsWithHttpInfo(bool returnNulls, String appKey, bool includeUndiscovered, { String? deviceId, int? accountId, String? connectionAccountEmail, int? connectionAccountId, String? rankType, String? achievementType, double? latitude, double? longitude, }) async {
    // ignore: prefer_const_declarations
    final path = r'/achievement/progress/get';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'returnNulls', returnNulls));
    if (deviceId != null) {
      queryParams.addAll(_queryParams('', 'deviceId', deviceId));
    }
    if (accountId != null) {
      queryParams.addAll(_queryParams('', 'accountId', accountId));
    }
    if (connectionAccountEmail != null) {
      queryParams.addAll(_queryParams('', 'connectionAccountEmail', connectionAccountEmail));
    }
    if (connectionAccountId != null) {
      queryParams.addAll(_queryParams('', 'connectionAccountId', connectionAccountId));
    }
      queryParams.addAll(_queryParams('', 'appKey', appKey));
    if (rankType != null) {
      queryParams.addAll(_queryParams('', 'rankType', rankType));
    }
    if (achievementType != null) {
      queryParams.addAll(_queryParams('', 'achievementType', achievementType));
    }
      queryParams.addAll(_queryParams('', 'includeUndiscovered', includeUndiscovered));
    if (latitude != null) {
      queryParams.addAll(_queryParams('', 'latitude', latitude));
    }
    if (longitude != null) {
      queryParams.addAll(_queryParams('', 'longitude', longitude));
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

  /// Get Achievement Progress
  ///
  /// Gets a list of user achievements.
  ///
  /// Parameters:
  ///
  /// * [bool] returnNulls (required):
  ///   determines whether to return null fields in the response
  ///
  /// * [String] appKey (required):
  ///   the application key for filtering results by application
  ///
  /// * [bool] includeUndiscovered (required):
  ///   determines whether to return achievements that the user has not discovered yet
  ///
  /// * [String] deviceId:
  ///   a unique id given by the device (deviceId or accountId required)
  ///
  /// * [int] accountId:
  ///   the account id of the user (deviceId or accountId required)
  ///
  /// * [String] connectionAccountEmail:
  ///   the email of the account to view achievements
  ///
  /// * [int] connectionAccountId:
  ///   the id of the account to view achievements
  ///
  /// * [String] rankType:
  ///   filter results by achievement rankType
  ///
  /// * [String] achievementType:
  ///   filter results by achievement type
  ///
  /// * [double] latitude:
  ///   the current latitude of the user
  ///
  /// * [double] longitude:
  ///   the current longitude of the user
  Future<List<AchievementProgressResponse>?> getUserAchievements(bool returnNulls, String appKey, bool includeUndiscovered, { String? deviceId, int? accountId, String? connectionAccountEmail, int? connectionAccountId, String? rankType, String? achievementType, double? latitude, double? longitude, }) async {
    final response = await getUserAchievementsWithHttpInfo(returnNulls, appKey, includeUndiscovered,  deviceId: deviceId, accountId: accountId, connectionAccountEmail: connectionAccountEmail, connectionAccountId: connectionAccountId, rankType: rankType, achievementType: achievementType, latitude: latitude, longitude: longitude, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<AchievementProgressResponse>') as List)
        .cast<AchievementProgressResponse>()
        .toList(growable: false);

    }
    return null;
  }

  /// List Achievement Tags
  ///
  /// List achievement tags by application
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] appKey:
  ///   filter results by application key
  Future<Response> listAchievementTagsWithHttpInfo({ String? appKey, }) async {
    // ignore: prefer_const_declarations
    final path = r'/achievement/tag/list';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

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

  /// List Achievement Tags
  ///
  /// List achievement tags by application
  ///
  /// Parameters:
  ///
  /// * [String] appKey:
  ///   filter results by application key
  Future<SirqulResponse?> listAchievementTags({ String? appKey, }) async {
    final response = await listAchievementTagsWithHttpInfo( appKey: appKey, );
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

  /// List Achievements
  ///
  /// List achievements by billable.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] sortField (required):
  ///   the field to sort by. See AchievementApiMap
  ///
  /// * [bool] descending (required):
  ///   determines whether the sorted list is in descending or ascending order
  ///
  /// * [int] start (required):
  ///   the start index for pagination
  ///
  /// * [int] limit (required):
  ///   the limit for pagination (has a hard limit of 1000)
  ///
  /// * [bool] activeOnly (required):
  ///   Filter results to only return active achievements
  ///
  /// * [String] deviceId:
  ///   a unique id given by the device (deviceId or accountId required)
  ///
  /// * [int] accountId:
  ///   the account id of the user (deviceId or accountId required)
  ///
  /// * [String] appKey:
  ///   the application key
  ///
  /// * [String] keyword:
  ///   the keyword used to filter results with (this returns results that have the keyword in the title or description of the achievement)
  ///
  /// * [String] achievementType:
  ///   filter results by the achievementType (these are exact case sensitive matches)
  ///
  /// * [String] rankType:
  ///   filter results by the rankType (these are exact case sensitive matches)
  Future<Response> listAchievementsWithHttpInfo(String sortField, bool descending, int start, int limit, bool activeOnly, { String? deviceId, int? accountId, String? appKey, String? keyword, String? achievementType, String? rankType, }) async {
    // ignore: prefer_const_declarations
    final path = r'/achievement/list';

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
    if (keyword != null) {
      queryParams.addAll(_queryParams('', 'keyword', keyword));
    }
    if (achievementType != null) {
      queryParams.addAll(_queryParams('', 'achievementType', achievementType));
    }
    if (rankType != null) {
      queryParams.addAll(_queryParams('', 'rankType', rankType));
    }
      queryParams.addAll(_queryParams('', 'sortField', sortField));
      queryParams.addAll(_queryParams('', 'descending', descending));
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

  /// List Achievements
  ///
  /// List achievements by billable.
  ///
  /// Parameters:
  ///
  /// * [String] sortField (required):
  ///   the field to sort by. See AchievementApiMap
  ///
  /// * [bool] descending (required):
  ///   determines whether the sorted list is in descending or ascending order
  ///
  /// * [int] start (required):
  ///   the start index for pagination
  ///
  /// * [int] limit (required):
  ///   the limit for pagination (has a hard limit of 1000)
  ///
  /// * [bool] activeOnly (required):
  ///   Filter results to only return active achievements
  ///
  /// * [String] deviceId:
  ///   a unique id given by the device (deviceId or accountId required)
  ///
  /// * [int] accountId:
  ///   the account id of the user (deviceId or accountId required)
  ///
  /// * [String] appKey:
  ///   the application key
  ///
  /// * [String] keyword:
  ///   the keyword used to filter results with (this returns results that have the keyword in the title or description of the achievement)
  ///
  /// * [String] achievementType:
  ///   filter results by the achievementType (these are exact case sensitive matches)
  ///
  /// * [String] rankType:
  ///   filter results by the rankType (these are exact case sensitive matches)
  Future<List<AchievementShortResponse>?> listAchievements(String sortField, bool descending, int start, int limit, bool activeOnly, { String? deviceId, int? accountId, String? appKey, String? keyword, String? achievementType, String? rankType, }) async {
    final response = await listAchievementsWithHttpInfo(sortField, descending, start, limit, activeOnly,  deviceId: deviceId, accountId: accountId, appKey: appKey, keyword: keyword, achievementType: achievementType, rankType: rankType, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<AchievementShortResponse>') as List)
        .cast<AchievementShortResponse>()
        .toList(growable: false);

    }
    return null;
  }

  /// Search Achievements
  ///
  /// Searches achievements by application for consumers.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] appKey (required):
  ///   the application key
  ///
  /// * [String] sortField (required):
  ///   the field to sort by. See AchievementApiMap
  ///
  /// * [bool] descending (required):
  ///   determines whether the sorted list is in descending or ascending order
  ///
  /// * [bool] includeTiers (required):
  ///   return tiers, only applicable for version >3.18
  ///
  /// * [bool] includeInactiveTiers (required):
  ///   return inactive tiers, only applicable when includeTiers is true, only applicable for version >3.18
  ///
  /// * [int] start (required):
  ///   the start index for pagination
  ///
  /// * [int] limit (required):
  ///   the limit for pagination (has a hard limit of 1000)
  ///
  /// * [String] deviceId:
  ///   a unique id given by the device (deviceId or accountId required)
  ///
  /// * [int] accountId:
  ///   the account id of the user (deviceId or accountId required)
  ///
  /// * [String] keyword:
  ///   the keyword used to filter results with (this returns results that have the keyword in the title or description of the achievement)
  ///
  /// * [String] achievementType:
  ///   filter results by the achievementType (these are exact case sensitive matches)
  ///
  /// * [String] rankType:
  ///   filter results by the rankType (these are exact case sensitive matches)
  Future<Response> searchAchievementsWithHttpInfo(String appKey, String sortField, bool descending, bool includeTiers, bool includeInactiveTiers, int start, int limit, { String? deviceId, int? accountId, String? keyword, String? achievementType, String? rankType, }) async {
    // ignore: prefer_const_declarations
    final path = r'/achievement/search';

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
    if (keyword != null) {
      queryParams.addAll(_queryParams('', 'keyword', keyword));
    }
    if (achievementType != null) {
      queryParams.addAll(_queryParams('', 'achievementType', achievementType));
    }
    if (rankType != null) {
      queryParams.addAll(_queryParams('', 'rankType', rankType));
    }
      queryParams.addAll(_queryParams('', 'sortField', sortField));
      queryParams.addAll(_queryParams('', 'descending', descending));
      queryParams.addAll(_queryParams('', 'includeTiers', includeTiers));
      queryParams.addAll(_queryParams('', 'includeInactiveTiers', includeInactiveTiers));
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

  /// Search Achievements
  ///
  /// Searches achievements by application for consumers.
  ///
  /// Parameters:
  ///
  /// * [String] appKey (required):
  ///   the application key
  ///
  /// * [String] sortField (required):
  ///   the field to sort by. See AchievementApiMap
  ///
  /// * [bool] descending (required):
  ///   determines whether the sorted list is in descending or ascending order
  ///
  /// * [bool] includeTiers (required):
  ///   return tiers, only applicable for version >3.18
  ///
  /// * [bool] includeInactiveTiers (required):
  ///   return inactive tiers, only applicable when includeTiers is true, only applicable for version >3.18
  ///
  /// * [int] start (required):
  ///   the start index for pagination
  ///
  /// * [int] limit (required):
  ///   the limit for pagination (has a hard limit of 1000)
  ///
  /// * [String] deviceId:
  ///   a unique id given by the device (deviceId or accountId required)
  ///
  /// * [int] accountId:
  ///   the account id of the user (deviceId or accountId required)
  ///
  /// * [String] keyword:
  ///   the keyword used to filter results with (this returns results that have the keyword in the title or description of the achievement)
  ///
  /// * [String] achievementType:
  ///   filter results by the achievementType (these are exact case sensitive matches)
  ///
  /// * [String] rankType:
  ///   filter results by the rankType (these are exact case sensitive matches)
  Future<List<AchievementShortResponse>?> searchAchievements(String appKey, String sortField, bool descending, bool includeTiers, bool includeInactiveTiers, int start, int limit, { String? deviceId, int? accountId, String? keyword, String? achievementType, String? rankType, }) async {
    final response = await searchAchievementsWithHttpInfo(appKey, sortField, descending, includeTiers, includeInactiveTiers, start, limit,  deviceId: deviceId, accountId: accountId, keyword: keyword, achievementType: achievementType, rankType: rankType, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<AchievementShortResponse>') as List)
        .cast<AchievementShortResponse>()
        .toList(growable: false);

    }
    return null;
  }

  /// Update Achievement
  ///
  /// Updates an achievement (for developer/retailer use). User must have permissions to the application the achievement is created for.
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
  /// * [int] achievementId:
  ///   the achievement ID for updating an existing achievement
  ///
  /// * [String] analyticsTag:
  ///   the analytics tag that will trigger when a user's achievement count gets updated
  ///
  /// * [String] title:
  ///   the title of the achievement (255 character limit)
  ///
  /// * [String] description:
  ///   the description of the achievement
  ///
  /// * [String] rankType:
  ///   the rank type for updating leader boards
  ///
  /// * [int] rankIncrement:
  ///   determines how much the rank count is incremented
  ///
  /// * [int] minIncrement:
  ///   restrict scores to be above or equal to this minimum value
  ///
  /// * [bool] nullMinIncrement:
  ///   enable to ignore usage of minIncrement
  ///
  /// * [int] maxIncrement:
  ///   restrict scores to be below or equal to this maximum value
  ///
  /// * [bool] nullMaxIncrement:
  ///   enable to ignore usage of maxIncrement
  ///
  /// * [bool] validate:
  ///   determines whether the customId on analytics are used to validate a user's achievement progress.
  ///
  /// * [bool] active:
  ///   if it's active or inactive
  ///
  /// * [String] triggerDefinition:
  ///   if provided will define what triggers to run after a tier is completed
  Future<Response> updateAchievementWithHttpInfo({ String? deviceId, int? accountId, int? achievementId, String? analyticsTag, String? title, String? description, String? rankType, int? rankIncrement, int? minIncrement, bool? nullMinIncrement, int? maxIncrement, bool? nullMaxIncrement, bool? validate, bool? active, String? triggerDefinition, }) async {
    // ignore: prefer_const_declarations
    final path = r'/achievement/update';

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
    if (achievementId != null) {
      queryParams.addAll(_queryParams('', 'achievementId', achievementId));
    }
    if (analyticsTag != null) {
      queryParams.addAll(_queryParams('', 'analyticsTag', analyticsTag));
    }
    if (title != null) {
      queryParams.addAll(_queryParams('', 'title', title));
    }
    if (description != null) {
      queryParams.addAll(_queryParams('', 'description', description));
    }
    if (rankType != null) {
      queryParams.addAll(_queryParams('', 'rankType', rankType));
    }
    if (rankIncrement != null) {
      queryParams.addAll(_queryParams('', 'rankIncrement', rankIncrement));
    }
    if (minIncrement != null) {
      queryParams.addAll(_queryParams('', 'minIncrement', minIncrement));
    }
    if (nullMinIncrement != null) {
      queryParams.addAll(_queryParams('', 'nullMinIncrement', nullMinIncrement));
    }
    if (maxIncrement != null) {
      queryParams.addAll(_queryParams('', 'maxIncrement', maxIncrement));
    }
    if (nullMaxIncrement != null) {
      queryParams.addAll(_queryParams('', 'nullMaxIncrement', nullMaxIncrement));
    }
    if (validate != null) {
      queryParams.addAll(_queryParams('', 'validate', validate));
    }
    if (active != null) {
      queryParams.addAll(_queryParams('', 'active', active));
    }
    if (triggerDefinition != null) {
      queryParams.addAll(_queryParams('', 'triggerDefinition', triggerDefinition));
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

  /// Update Achievement
  ///
  /// Updates an achievement (for developer/retailer use). User must have permissions to the application the achievement is created for.
  ///
  /// Parameters:
  ///
  /// * [String] deviceId:
  ///   a unique id given by the device (deviceId or accountId required)
  ///
  /// * [int] accountId:
  ///   the account id of the user (deviceId or accountId required)
  ///
  /// * [int] achievementId:
  ///   the achievement ID for updating an existing achievement
  ///
  /// * [String] analyticsTag:
  ///   the analytics tag that will trigger when a user's achievement count gets updated
  ///
  /// * [String] title:
  ///   the title of the achievement (255 character limit)
  ///
  /// * [String] description:
  ///   the description of the achievement
  ///
  /// * [String] rankType:
  ///   the rank type for updating leader boards
  ///
  /// * [int] rankIncrement:
  ///   determines how much the rank count is incremented
  ///
  /// * [int] minIncrement:
  ///   restrict scores to be above or equal to this minimum value
  ///
  /// * [bool] nullMinIncrement:
  ///   enable to ignore usage of minIncrement
  ///
  /// * [int] maxIncrement:
  ///   restrict scores to be below or equal to this maximum value
  ///
  /// * [bool] nullMaxIncrement:
  ///   enable to ignore usage of maxIncrement
  ///
  /// * [bool] validate:
  ///   determines whether the customId on analytics are used to validate a user's achievement progress.
  ///
  /// * [bool] active:
  ///   if it's active or inactive
  ///
  /// * [String] triggerDefinition:
  ///   if provided will define what triggers to run after a tier is completed
  Future<AchievementResponse?> updateAchievement({ String? deviceId, int? accountId, int? achievementId, String? analyticsTag, String? title, String? description, String? rankType, int? rankIncrement, int? minIncrement, bool? nullMinIncrement, int? maxIncrement, bool? nullMaxIncrement, bool? validate, bool? active, String? triggerDefinition, }) async {
    final response = await updateAchievementWithHttpInfo( deviceId: deviceId, accountId: accountId, achievementId: achievementId, analyticsTag: analyticsTag, title: title, description: description, rankType: rankType, rankIncrement: rankIncrement, minIncrement: minIncrement, nullMinIncrement: nullMinIncrement, maxIncrement: maxIncrement, nullMaxIncrement: nullMaxIncrement, validate: validate, active: active, triggerDefinition: triggerDefinition, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'AchievementResponse',) as AchievementResponse;
    
    }
    return null;
  }

  /// Update Achievement Tier
  ///
  /// Updates a tier of an achievement (for developer/retailer use). User must have permissions to the application the achievement is created for.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] achievementTierId (required):
  ///   the achievement tier id for updating
  ///
  /// * [String] deviceId:
  ///   a unique id given by the device (deviceId or accountId required)
  ///
  /// * [int] accountId:
  ///   the account id of the user (deviceId or accountId required)
  ///
  /// * [MultipartFile] icon:
  ///   achievement tier icon image file
  ///
  /// * [int] iconAssetId:
  ///   the icon assetId, if icon is provided, icon will overrule
  ///
  /// * [String] title:
  ///   the title of the achievement tier
  ///
  /// * [String] description:
  ///   the description of the achievement tier
  ///
  /// * [int] goalCount:
  ///   the count requirement for completing the achievement tier
  ///
  /// * [int] missionId:
  ///   The ID of the mission to associate with the achievement
  ///
  /// * [int] gameId:
  ///   The ID of the game to associate with the achievement
  ///
  /// * [int] packId:
  ///   The ID of the pack to associate with the achievement
  ///
  /// * [int] gameLevelId:
  ///   The ID of the game level to associate with the achievement
  ///
  /// * [int] gameObjectId:
  ///   The ID of the game object to associate with the achievement
  ///
  /// * [bool] scoreAllInstances:
  ///   score all instances
  Future<Response> updateAchievementTierWithHttpInfo(int achievementTierId, { String? deviceId, int? accountId, MultipartFile? icon, int? iconAssetId, String? title, String? description, int? goalCount, int? missionId, int? gameId, int? packId, int? gameLevelId, int? gameObjectId, bool? scoreAllInstances, }) async {
    // ignore: prefer_const_declarations
    final path = r'/achievement/tier/update';

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
      queryParams.addAll(_queryParams('', 'achievementTierId', achievementTierId));
    if (icon != null) {
      queryParams.addAll(_queryParams('', 'icon', icon));
    }
    if (iconAssetId != null) {
      queryParams.addAll(_queryParams('', 'iconAssetId', iconAssetId));
    }
    if (title != null) {
      queryParams.addAll(_queryParams('', 'title', title));
    }
    if (description != null) {
      queryParams.addAll(_queryParams('', 'description', description));
    }
    if (goalCount != null) {
      queryParams.addAll(_queryParams('', 'goalCount', goalCount));
    }
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
    if (scoreAllInstances != null) {
      queryParams.addAll(_queryParams('', 'scoreAllInstances', scoreAllInstances));
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

  /// Update Achievement Tier
  ///
  /// Updates a tier of an achievement (for developer/retailer use). User must have permissions to the application the achievement is created for.
  ///
  /// Parameters:
  ///
  /// * [int] achievementTierId (required):
  ///   the achievement tier id for updating
  ///
  /// * [String] deviceId:
  ///   a unique id given by the device (deviceId or accountId required)
  ///
  /// * [int] accountId:
  ///   the account id of the user (deviceId or accountId required)
  ///
  /// * [MultipartFile] icon:
  ///   achievement tier icon image file
  ///
  /// * [int] iconAssetId:
  ///   the icon assetId, if icon is provided, icon will overrule
  ///
  /// * [String] title:
  ///   the title of the achievement tier
  ///
  /// * [String] description:
  ///   the description of the achievement tier
  ///
  /// * [int] goalCount:
  ///   the count requirement for completing the achievement tier
  ///
  /// * [int] missionId:
  ///   The ID of the mission to associate with the achievement
  ///
  /// * [int] gameId:
  ///   The ID of the game to associate with the achievement
  ///
  /// * [int] packId:
  ///   The ID of the pack to associate with the achievement
  ///
  /// * [int] gameLevelId:
  ///   The ID of the game level to associate with the achievement
  ///
  /// * [int] gameObjectId:
  ///   The ID of the game object to associate with the achievement
  ///
  /// * [bool] scoreAllInstances:
  ///   score all instances
  Future<AchievementTierResponse?> updateAchievementTier(int achievementTierId, { String? deviceId, int? accountId, MultipartFile? icon, int? iconAssetId, String? title, String? description, int? goalCount, int? missionId, int? gameId, int? packId, int? gameLevelId, int? gameObjectId, bool? scoreAllInstances, }) async {
    final response = await updateAchievementTierWithHttpInfo(achievementTierId,  deviceId: deviceId, accountId: accountId, icon: icon, iconAssetId: iconAssetId, title: title, description: description, goalCount: goalCount, missionId: missionId, gameId: gameId, packId: packId, gameLevelId: gameLevelId, gameObjectId: gameObjectId, scoreAllInstances: scoreAllInstances, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'AchievementTierResponse',) as AchievementTierResponse;
    
    }
    return null;
  }

  /// Update Achievement Progress
  ///
  /// Update user achievement progress.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] accountId (required):
  ///   the account id of the user
  ///
  /// * [int] achievementId:
  ///   the achievement id (achievementId or tag required)
  ///
  /// * [String] tag:
  ///   the analytic tag to identify an achievement (achievementId or tag required)
  ///
  /// * [int] customId:
  ///   a custom identifier used for validation
  ///
  /// * [int] increment:
  ///   the amount to increment an achievement progress by (if no increment is sent in, the server defaults to using the achievement's rankIncrement value)
  ///
  /// * [int] startDate:
  ///   a custom start date that the client can set (not yet used in server logic)
  ///
  /// * [int] endDate:
  ///   a custom end date that the client can set (not yet used in server logic)
  ///
  /// * [bool] returnProgress:
  ///   determines whether to return the achievement progress response
  Future<Response> updateUserAchievementWithHttpInfo(int accountId, { int? achievementId, String? tag, int? customId, int? increment, int? startDate, int? endDate, bool? returnProgress, }) async {
    // ignore: prefer_const_declarations
    final path = r'/achievement/progress/update';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'accountId', accountId));
    if (achievementId != null) {
      queryParams.addAll(_queryParams('', 'achievementId', achievementId));
    }
    if (tag != null) {
      queryParams.addAll(_queryParams('', 'tag', tag));
    }
    if (customId != null) {
      queryParams.addAll(_queryParams('', 'customId', customId));
    }
    if (increment != null) {
      queryParams.addAll(_queryParams('', 'increment', increment));
    }
    if (startDate != null) {
      queryParams.addAll(_queryParams('', 'startDate', startDate));
    }
    if (endDate != null) {
      queryParams.addAll(_queryParams('', 'endDate', endDate));
    }
    if (returnProgress != null) {
      queryParams.addAll(_queryParams('', 'returnProgress', returnProgress));
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

  /// Update Achievement Progress
  ///
  /// Update user achievement progress.
  ///
  /// Parameters:
  ///
  /// * [int] accountId (required):
  ///   the account id of the user
  ///
  /// * [int] achievementId:
  ///   the achievement id (achievementId or tag required)
  ///
  /// * [String] tag:
  ///   the analytic tag to identify an achievement (achievementId or tag required)
  ///
  /// * [int] customId:
  ///   a custom identifier used for validation
  ///
  /// * [int] increment:
  ///   the amount to increment an achievement progress by (if no increment is sent in, the server defaults to using the achievement's rankIncrement value)
  ///
  /// * [int] startDate:
  ///   a custom start date that the client can set (not yet used in server logic)
  ///
  /// * [int] endDate:
  ///   a custom end date that the client can set (not yet used in server logic)
  ///
  /// * [bool] returnProgress:
  ///   determines whether to return the achievement progress response
  Future<SirqulResponse?> updateUserAchievement(int accountId, { int? achievementId, String? tag, int? customId, int? increment, int? startDate, int? endDate, bool? returnProgress, }) async {
    final response = await updateUserAchievementWithHttpInfo(accountId,  achievementId: achievementId, tag: tag, customId: customId, increment: increment, startDate: startDate, endDate: endDate, returnProgress: returnProgress, );
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
