//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class ThemeDescriptorApi {
  ThemeDescriptorApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Create/Update Theme
  ///
  /// Creates or updates a theme descriptor that can be used to give applications a customized look and feel. The theme can be created by consumers and shared to other users, allowing them to use and/or collaborate on making the theme.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [bool] publicRead (required):
  ///   determines whether the theme's participants have read permissions
  ///
  /// * [bool] publicWrite (required):
  ///   determines whether the theme's participants have write permissions
  ///
  /// * [bool] publicDelete (required):
  ///   determines whether the theme's participants have delete permissions
  ///
  /// * [bool] publicAdd (required):
  ///   
  ///
  /// * [String] visibility (required):
  ///   the determines the theme's participants (PUBLIC - includes everyone in the system as a potential participant, PRIVATE - only considers people who have been invited as participants)
  ///
  /// * [bool] includeFriendGroup (required):
  ///   flag to determine whether to share to the user's \"friends\" group
  ///
  /// * [bool] completeWithDefaultValues (required):
  ///   determines whether to use default values to complete the theme
  ///
  /// * [String] deviceId:
  ///   a unique ID given by the device (deviceId or accountId required)
  ///
  /// * [int] accountId:
  ///   the account ID of the user (deviceId or accountId required)
  ///
  /// * [String] gameType:
  ///   the application key
  ///
  /// * [int] themeDescriptorId:
  ///   the theme descriptor id used to update an existing theme, leave empty for creating a new theme
  ///
  /// * [String] title:
  ///   the title of the theme
  ///
  /// * [String] description:
  ///   the description of the theme
  ///
  /// * [String] connectionIdsToAdd:
  ///   a comma separated list of connection IDs to share to users
  ///
  /// * [String] connectionGroupIdsToAdd:
  ///   a comma separated list of connection group IDs to share to groups
  ///
  /// * [String] appVersion:
  ///   the application version the theme was created for
  ///
  /// * [String] colorValueJson:
  ///   a json array used to replace colors within the application. Example: ```json [   {     \"name\": \"sceneAtlas\",     \"valueString\": \"100,100,100,255\"   },   {     \"name\": \"bg\",     \"valueString\": \"100,100,100,255\"   } ] ``` 
  ///
  /// * [String] stringReplacerJson:
  ///   a json array used to replace strings within the application. Example: ```json [   {     \"name\": \"coins\",     \"valueString\": \"Gems\"   },   {     \"name\": \"lives\",     \"valueString\": \"lives\"   } ] ``` 
  ///
  /// * [String] customJsonObjects:
  ///   a json object used by the scene atlas to position sprites. Example: ```json {   \"pShootingOffset\": [     {       \"name\": \"x\",       \"valueString\": \"2.2\"     },     {       \"name\": \"y\",       \"valueString\": \"-0.3\"     }   ],   \"e1ShootingOffset\": [     {       \"name\": \"x\",       \"valueString\": \"0.25\"     },     {       \"name\": \"y\",       \"valueString\": \"0.5\"     }   ] } ``` 
  ///
  /// * [MultipartFile] iconImage:
  ///   a MultipartFile containing the image used as the theme icon
  ///
  /// * [MultipartFile] sceneAtlasImage:
  ///   a MultipartFile containing the scene atlas
  ///
  /// * [MultipartFile] bgImage:
  ///   a MultipartFile containing the background image
  ///
  /// * [MultipartFile] bgSound:
  ///   a MultipartFile containing the background sound file (preferably in MP3 format)
  ///
  /// * [String] musicSelection:
  ///   used to select a default sound file that already exists in the application
  ///
  /// * [String] locationDescription:
  ///   the description of the user's current location
  ///
  /// * [double] latitude:
  ///   the current latitude of the user
  ///
  /// * [double] longitude:
  ///   the current longitude of the user
  Future<Response> addOrUpdateThemeDescriptorWithHttpInfo(num version, bool publicRead, bool publicWrite, bool publicDelete, bool publicAdd, String visibility, bool includeFriendGroup, bool completeWithDefaultValues, { String? deviceId, int? accountId, String? gameType, int? themeDescriptorId, String? title, String? description, String? connectionIdsToAdd, String? connectionGroupIdsToAdd, String? appVersion, String? colorValueJson, String? stringReplacerJson, String? customJsonObjects, MultipartFile? iconImage, MultipartFile? sceneAtlasImage, MultipartFile? bgImage, MultipartFile? bgSound, String? musicSelection, String? locationDescription, double? latitude, double? longitude, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/consumer/theme'
      .replaceAll('{version}', version.toString());

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
    if (themeDescriptorId != null) {
      queryParams.addAll(_queryParams('', 'themeDescriptorId', themeDescriptorId));
    }
    if (title != null) {
      queryParams.addAll(_queryParams('', 'title', title));
    }
    if (description != null) {
      queryParams.addAll(_queryParams('', 'description', description));
    }
      queryParams.addAll(_queryParams('', 'publicRead', publicRead));
      queryParams.addAll(_queryParams('', 'publicWrite', publicWrite));
      queryParams.addAll(_queryParams('', 'publicDelete', publicDelete));
      queryParams.addAll(_queryParams('', 'publicAdd', publicAdd));
      queryParams.addAll(_queryParams('', 'visibility', visibility));
    if (connectionIdsToAdd != null) {
      queryParams.addAll(_queryParams('', 'connectionIdsToAdd', connectionIdsToAdd));
    }
    if (connectionGroupIdsToAdd != null) {
      queryParams.addAll(_queryParams('', 'connectionGroupIdsToAdd', connectionGroupIdsToAdd));
    }
      queryParams.addAll(_queryParams('', 'includeFriendGroup', includeFriendGroup));
    if (appVersion != null) {
      queryParams.addAll(_queryParams('', 'appVersion', appVersion));
    }
    if (colorValueJson != null) {
      queryParams.addAll(_queryParams('', 'colorValueJson', colorValueJson));
    }
    if (stringReplacerJson != null) {
      queryParams.addAll(_queryParams('', 'stringReplacerJson', stringReplacerJson));
    }
    if (customJsonObjects != null) {
      queryParams.addAll(_queryParams('', 'customJsonObjects', customJsonObjects));
    }
    if (iconImage != null) {
      queryParams.addAll(_queryParams('', 'iconImage', iconImage));
    }
    if (sceneAtlasImage != null) {
      queryParams.addAll(_queryParams('', 'sceneAtlasImage', sceneAtlasImage));
    }
    if (bgImage != null) {
      queryParams.addAll(_queryParams('', 'bgImage', bgImage));
    }
    if (bgSound != null) {
      queryParams.addAll(_queryParams('', 'bgSound', bgSound));
    }
    if (musicSelection != null) {
      queryParams.addAll(_queryParams('', 'musicSelection', musicSelection));
    }
      queryParams.addAll(_queryParams('', 'completeWithDefaultValues', completeWithDefaultValues));
    if (locationDescription != null) {
      queryParams.addAll(_queryParams('', 'locationDescription', locationDescription));
    }
    if (latitude != null) {
      queryParams.addAll(_queryParams('', 'latitude', latitude));
    }
    if (longitude != null) {
      queryParams.addAll(_queryParams('', 'longitude', longitude));
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

  /// Create/Update Theme
  ///
  /// Creates or updates a theme descriptor that can be used to give applications a customized look and feel. The theme can be created by consumers and shared to other users, allowing them to use and/or collaborate on making the theme.
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [bool] publicRead (required):
  ///   determines whether the theme's participants have read permissions
  ///
  /// * [bool] publicWrite (required):
  ///   determines whether the theme's participants have write permissions
  ///
  /// * [bool] publicDelete (required):
  ///   determines whether the theme's participants have delete permissions
  ///
  /// * [bool] publicAdd (required):
  ///   
  ///
  /// * [String] visibility (required):
  ///   the determines the theme's participants (PUBLIC - includes everyone in the system as a potential participant, PRIVATE - only considers people who have been invited as participants)
  ///
  /// * [bool] includeFriendGroup (required):
  ///   flag to determine whether to share to the user's \"friends\" group
  ///
  /// * [bool] completeWithDefaultValues (required):
  ///   determines whether to use default values to complete the theme
  ///
  /// * [String] deviceId:
  ///   a unique ID given by the device (deviceId or accountId required)
  ///
  /// * [int] accountId:
  ///   the account ID of the user (deviceId or accountId required)
  ///
  /// * [String] gameType:
  ///   the application key
  ///
  /// * [int] themeDescriptorId:
  ///   the theme descriptor id used to update an existing theme, leave empty for creating a new theme
  ///
  /// * [String] title:
  ///   the title of the theme
  ///
  /// * [String] description:
  ///   the description of the theme
  ///
  /// * [String] connectionIdsToAdd:
  ///   a comma separated list of connection IDs to share to users
  ///
  /// * [String] connectionGroupIdsToAdd:
  ///   a comma separated list of connection group IDs to share to groups
  ///
  /// * [String] appVersion:
  ///   the application version the theme was created for
  ///
  /// * [String] colorValueJson:
  ///   a json array used to replace colors within the application. Example: ```json [   {     \"name\": \"sceneAtlas\",     \"valueString\": \"100,100,100,255\"   },   {     \"name\": \"bg\",     \"valueString\": \"100,100,100,255\"   } ] ``` 
  ///
  /// * [String] stringReplacerJson:
  ///   a json array used to replace strings within the application. Example: ```json [   {     \"name\": \"coins\",     \"valueString\": \"Gems\"   },   {     \"name\": \"lives\",     \"valueString\": \"lives\"   } ] ``` 
  ///
  /// * [String] customJsonObjects:
  ///   a json object used by the scene atlas to position sprites. Example: ```json {   \"pShootingOffset\": [     {       \"name\": \"x\",       \"valueString\": \"2.2\"     },     {       \"name\": \"y\",       \"valueString\": \"-0.3\"     }   ],   \"e1ShootingOffset\": [     {       \"name\": \"x\",       \"valueString\": \"0.25\"     },     {       \"name\": \"y\",       \"valueString\": \"0.5\"     }   ] } ``` 
  ///
  /// * [MultipartFile] iconImage:
  ///   a MultipartFile containing the image used as the theme icon
  ///
  /// * [MultipartFile] sceneAtlasImage:
  ///   a MultipartFile containing the scene atlas
  ///
  /// * [MultipartFile] bgImage:
  ///   a MultipartFile containing the background image
  ///
  /// * [MultipartFile] bgSound:
  ///   a MultipartFile containing the background sound file (preferably in MP3 format)
  ///
  /// * [String] musicSelection:
  ///   used to select a default sound file that already exists in the application
  ///
  /// * [String] locationDescription:
  ///   the description of the user's current location
  ///
  /// * [double] latitude:
  ///   the current latitude of the user
  ///
  /// * [double] longitude:
  ///   the current longitude of the user
  Future<ThemeDescriptorResponse?> addOrUpdateThemeDescriptor(num version, bool publicRead, bool publicWrite, bool publicDelete, bool publicAdd, String visibility, bool includeFriendGroup, bool completeWithDefaultValues, { String? deviceId, int? accountId, String? gameType, int? themeDescriptorId, String? title, String? description, String? connectionIdsToAdd, String? connectionGroupIdsToAdd, String? appVersion, String? colorValueJson, String? stringReplacerJson, String? customJsonObjects, MultipartFile? iconImage, MultipartFile? sceneAtlasImage, MultipartFile? bgImage, MultipartFile? bgSound, String? musicSelection, String? locationDescription, double? latitude, double? longitude, }) async {
    final response = await addOrUpdateThemeDescriptorWithHttpInfo(version, publicRead, publicWrite, publicDelete, publicAdd, visibility, includeFriendGroup, completeWithDefaultValues,  deviceId: deviceId, accountId: accountId, gameType: gameType, themeDescriptorId: themeDescriptorId, title: title, description: description, connectionIdsToAdd: connectionIdsToAdd, connectionGroupIdsToAdd: connectionGroupIdsToAdd, appVersion: appVersion, colorValueJson: colorValueJson, stringReplacerJson: stringReplacerJson, customJsonObjects: customJsonObjects, iconImage: iconImage, sceneAtlasImage: sceneAtlasImage, bgImage: bgImage, bgSound: bgSound, musicSelection: musicSelection, locationDescription: locationDescription, latitude: latitude, longitude: longitude, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ThemeDescriptorResponse',) as ThemeDescriptorResponse;
    
    }
    return null;
  }

  /// Get Theme
  ///
  /// Gets a theme.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] themeDescriptorId (required):
  ///   the theme id
  ///
  /// * [String] deviceId:
  ///   a unique ID given by the device (deviceId or accountId required)
  ///
  /// * [int] accountId:
  ///   the account ID of the user (deviceId or accountId required)
  ///
  /// * [String] gameType:
  ///   the application key
  ///
  /// * [double] latitude:
  ///   latitude used to update the user's current location
  ///
  /// * [double] longitude:
  ///   longitude used to update the user's current location
  Future<Response> getThemeDescriptorWithHttpInfo(num version, int themeDescriptorId, { String? deviceId, int? accountId, String? gameType, double? latitude, double? longitude, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/consumer/theme/get'
      .replaceAll('{version}', version.toString());

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
      queryParams.addAll(_queryParams('', 'themeDescriptorId', themeDescriptorId));
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

  /// Get Theme
  ///
  /// Gets a theme.
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] themeDescriptorId (required):
  ///   the theme id
  ///
  /// * [String] deviceId:
  ///   a unique ID given by the device (deviceId or accountId required)
  ///
  /// * [int] accountId:
  ///   the account ID of the user (deviceId or accountId required)
  ///
  /// * [String] gameType:
  ///   the application key
  ///
  /// * [double] latitude:
  ///   latitude used to update the user's current location
  ///
  /// * [double] longitude:
  ///   longitude used to update the user's current location
  Future<PurchaseItemListResponse?> getThemeDescriptor(num version, int themeDescriptorId, { String? deviceId, int? accountId, String? gameType, double? latitude, double? longitude, }) async {
    final response = await getThemeDescriptorWithHttpInfo(version, themeDescriptorId,  deviceId: deviceId, accountId: accountId, gameType: gameType, latitude: latitude, longitude: longitude, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PurchaseItemListResponse',) as PurchaseItemListResponse;
    
    }
    return null;
  }

  /// Search Themes
  ///
  /// Searches for themes.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [String] filter (required):
  ///   a comma separated list of Ownership
  ///
  /// * [String] sortField (required):
  ///   the field to sort by. See ThemeDescriptorApiMap
  ///
  /// * [bool] descending (required):
  ///   determines whether the sorted list is in descending or ascending order
  ///
  /// * [int] start (required):
  ///   the start parameter for pagination
  ///
  /// * [int] limit (required):
  ///   the limit parameter for pagination
  ///
  /// * [String] deviceId:
  ///   a unique id given by the device (deviceId or accountId required)
  ///
  /// * [int] accountId:
  ///   the account id of the user (deviceId or accountId required)
  ///
  /// * [String] gameType:
  ///   the unique title of an application given from the admin tool
  ///
  /// * [String] contestType:
  ///   contest type
  ///
  /// * [int] ownerId:
  ///   search on contests that an account has access to
  ///
  /// * [String] q:
  ///   This parameter is deprecated.
  ///
  /// * [String] keyword:
  ///   a keyword to search on
  ///
  /// * [int] i:
  ///   This parameter is deprecated.
  ///
  /// * [int] l:
  ///   This parameter is deprecated.
  ///
  /// * [int] dateCreated:
  ///   filter on items that have been created before this date
  ///
  /// * [String] appVersion:
  ///   application version of the theme to filter by
  ///
  /// * [double] latitude:
  ///   latitude used to update the user's current location
  ///
  /// * [double] longitude:
  ///   longitude used to update the user's current location
  Future<Response> getThemeDescriptorsWithHttpInfo(num version, String filter, String sortField, bool descending, int start, int limit, { String? deviceId, int? accountId, String? gameType, String? contestType, int? ownerId, String? q, String? keyword, int? i, int? l, int? dateCreated, String? appVersion, double? latitude, double? longitude, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/consumer/theme/search'
      .replaceAll('{version}', version.toString());

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
    if (contestType != null) {
      queryParams.addAll(_queryParams('', 'contestType', contestType));
    }
    if (ownerId != null) {
      queryParams.addAll(_queryParams('', 'ownerId', ownerId));
    }
    if (q != null) {
      queryParams.addAll(_queryParams('', 'q', q));
    }
    if (keyword != null) {
      queryParams.addAll(_queryParams('', 'keyword', keyword));
    }
      queryParams.addAll(_queryParams('', 'filter', filter));
      queryParams.addAll(_queryParams('', 'sortField', sortField));
      queryParams.addAll(_queryParams('', 'descending', descending));
    if (i != null) {
      queryParams.addAll(_queryParams('', '_i', i));
    }
      queryParams.addAll(_queryParams('', 'start', start));
    if (l != null) {
      queryParams.addAll(_queryParams('', '_l', l));
    }
      queryParams.addAll(_queryParams('', 'limit', limit));
    if (dateCreated != null) {
      queryParams.addAll(_queryParams('', 'dateCreated', dateCreated));
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

  /// Search Themes
  ///
  /// Searches for themes.
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [String] filter (required):
  ///   a comma separated list of Ownership
  ///
  /// * [String] sortField (required):
  ///   the field to sort by. See ThemeDescriptorApiMap
  ///
  /// * [bool] descending (required):
  ///   determines whether the sorted list is in descending or ascending order
  ///
  /// * [int] start (required):
  ///   the start parameter for pagination
  ///
  /// * [int] limit (required):
  ///   the limit parameter for pagination
  ///
  /// * [String] deviceId:
  ///   a unique id given by the device (deviceId or accountId required)
  ///
  /// * [int] accountId:
  ///   the account id of the user (deviceId or accountId required)
  ///
  /// * [String] gameType:
  ///   the unique title of an application given from the admin tool
  ///
  /// * [String] contestType:
  ///   contest type
  ///
  /// * [int] ownerId:
  ///   search on contests that an account has access to
  ///
  /// * [String] q:
  ///   This parameter is deprecated.
  ///
  /// * [String] keyword:
  ///   a keyword to search on
  ///
  /// * [int] i:
  ///   This parameter is deprecated.
  ///
  /// * [int] l:
  ///   This parameter is deprecated.
  ///
  /// * [int] dateCreated:
  ///   filter on items that have been created before this date
  ///
  /// * [String] appVersion:
  ///   application version of the theme to filter by
  ///
  /// * [double] latitude:
  ///   latitude used to update the user's current location
  ///
  /// * [double] longitude:
  ///   longitude used to update the user's current location
  Future<PurchaseItemListResponse?> getThemeDescriptors(num version, String filter, String sortField, bool descending, int start, int limit, { String? deviceId, int? accountId, String? gameType, String? contestType, int? ownerId, String? q, String? keyword, int? i, int? l, int? dateCreated, String? appVersion, double? latitude, double? longitude, }) async {
    final response = await getThemeDescriptorsWithHttpInfo(version, filter, sortField, descending, start, limit,  deviceId: deviceId, accountId: accountId, gameType: gameType, contestType: contestType, ownerId: ownerId, q: q, keyword: keyword, i: i, l: l, dateCreated: dateCreated, appVersion: appVersion, latitude: latitude, longitude: longitude, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PurchaseItemListResponse',) as PurchaseItemListResponse;
    
    }
    return null;
  }

  /// Delete Theme
  ///
  /// Removes a theme.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] themeDescriptorId (required):
  ///   the theme id to remove
  ///
  /// * [String] deviceId:
  ///   a unique id given by the device (deviceId or accountId required)
  ///
  /// * [int] accountId:
  ///   the account id of the user (deviceId or accountId required)
  ///
  /// * [String] gameType:
  ///   the unique title of an application given from the admin tool
  ///
  /// * [double] latitude:
  ///   latitude used to update the user's current location
  ///
  /// * [double] longitude:
  ///   longitude used to update the user's current location
  Future<Response> removeThemeDescriptorWithHttpInfo(num version, int themeDescriptorId, { String? deviceId, int? accountId, String? gameType, double? latitude, double? longitude, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/consumer/theme/remove'
      .replaceAll('{version}', version.toString());

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
      queryParams.addAll(_queryParams('', 'themeDescriptorId', themeDescriptorId));
    if (latitude != null) {
      queryParams.addAll(_queryParams('', 'latitude', latitude));
    }
    if (longitude != null) {
      queryParams.addAll(_queryParams('', 'longitude', longitude));
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

  /// Delete Theme
  ///
  /// Removes a theme.
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] themeDescriptorId (required):
  ///   the theme id to remove
  ///
  /// * [String] deviceId:
  ///   a unique id given by the device (deviceId or accountId required)
  ///
  /// * [int] accountId:
  ///   the account id of the user (deviceId or accountId required)
  ///
  /// * [String] gameType:
  ///   the unique title of an application given from the admin tool
  ///
  /// * [double] latitude:
  ///   latitude used to update the user's current location
  ///
  /// * [double] longitude:
  ///   longitude used to update the user's current location
  Future<SirqulResponse?> removeThemeDescriptor(num version, int themeDescriptorId, { String? deviceId, int? accountId, String? gameType, double? latitude, double? longitude, }) async {
    final response = await removeThemeDescriptorWithHttpInfo(version, themeDescriptorId,  deviceId: deviceId, accountId: accountId, gameType: gameType, latitude: latitude, longitude: longitude, );
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
