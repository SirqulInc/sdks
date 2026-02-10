//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class ContestApi {
  ContestApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Create or Update Contest
  ///
  /// Creates or updates a contest.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [bool] publicRead (required):
  ///   determines whether the contest's participants has read permissions
  ///
  /// * [bool] publicWrite (required):
  ///   determines whether the contest's participants has write permissions
  ///
  /// * [bool] publicDelete (required):
  ///   determines whether the contest's participants has delete permissions
  ///
  /// * [bool] publicAdd (required):
  ///   determines whether the contest's participants has add permissions
  ///
  /// * [String] visibility (required):
  ///   the determines the album's participants (PUBLIC - includes everyone in the system as a potential participant, PRIVATE - only considers people who have been invited as participants)
  ///
  /// * [bool] includeFriendGroup (required):
  ///   determines whether to include all friends as participants
  ///
  /// * [String] deviceId:
  ///   a unique ID given by the device (deviceId or accountId required)
  ///
  /// * [int] accountId:
  ///   the account ID of the user (deviceId or accountId required)
  ///
  /// * [String] gameType:
  ///   This parameter is deprecated. the application key
  ///
  /// * [String] appKey:
  ///   the application key
  ///
  /// * [String] contestType:
  ///   a custom field used for aggregation and searching
  ///
  /// * [int] albumContestId:
  ///   the album contest ID for updating (don't pass in if creating)
  ///
  /// * [String] title:
  ///   the title of the contest
  ///
  /// * [String] description:
  ///   the description of the contest
  ///
  /// * [int] albumId1:
  ///   the album ID for the first album
  ///
  /// * [bool] removeAlbum1:
  ///   removes album1 from the contest
  ///
  /// * [int] albumId2:
  ///   the album ID for the second album
  ///
  /// * [bool] removeAlbum2:
  ///   removes album2 from the contest
  ///
  /// * [int] startDate:
  ///   the start date of the contest (time-stamp in milliseconds)
  ///
  /// * [int] endDate:
  ///   the end date of the contest (time-stamp in milliseconds)
  ///
  /// * [String] locationDescription:
  ///   the location description of the contest taking place
  ///
  /// * [String] connectionIdsToAdd:
  ///   comma separated list of connection IDs
  ///
  /// * [String] connectionGroupIdsToAdd:
  ///   comma separated list of connection group IDs
  ///
  /// * [double] latitude:
  ///   latitude used to update the user's current location
  ///
  /// * [double] longitude:
  ///   longitude used to update the user's current location
  Future<Response> addOrUpdateAlbumContestWithHttpInfo(num version, bool publicRead, bool publicWrite, bool publicDelete, bool publicAdd, String visibility, bool includeFriendGroup, { String? deviceId, int? accountId, String? gameType, String? appKey, String? contestType, int? albumContestId, String? title, String? description, int? albumId1, bool? removeAlbum1, int? albumId2, bool? removeAlbum2, int? startDate, int? endDate, String? locationDescription, String? connectionIdsToAdd, String? connectionGroupIdsToAdd, double? latitude, double? longitude, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/consumer/album/contest'
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
    if (appKey != null) {
      queryParams.addAll(_queryParams('', 'appKey', appKey));
    }
    if (contestType != null) {
      queryParams.addAll(_queryParams('', 'contestType', contestType));
    }
    if (albumContestId != null) {
      queryParams.addAll(_queryParams('', 'albumContestId', albumContestId));
    }
    if (title != null) {
      queryParams.addAll(_queryParams('', 'title', title));
    }
    if (description != null) {
      queryParams.addAll(_queryParams('', 'description', description));
    }
    if (albumId1 != null) {
      queryParams.addAll(_queryParams('', 'albumId1', albumId1));
    }
    if (removeAlbum1 != null) {
      queryParams.addAll(_queryParams('', 'removeAlbum1', removeAlbum1));
    }
    if (albumId2 != null) {
      queryParams.addAll(_queryParams('', 'albumId2', albumId2));
    }
    if (removeAlbum2 != null) {
      queryParams.addAll(_queryParams('', 'removeAlbum2', removeAlbum2));
    }
    if (startDate != null) {
      queryParams.addAll(_queryParams('', 'startDate', startDate));
    }
    if (endDate != null) {
      queryParams.addAll(_queryParams('', 'endDate', endDate));
    }
      queryParams.addAll(_queryParams('', 'publicRead', publicRead));
      queryParams.addAll(_queryParams('', 'publicWrite', publicWrite));
      queryParams.addAll(_queryParams('', 'publicDelete', publicDelete));
      queryParams.addAll(_queryParams('', 'publicAdd', publicAdd));
    if (locationDescription != null) {
      queryParams.addAll(_queryParams('', 'locationDescription', locationDescription));
    }
      queryParams.addAll(_queryParams('', 'visibility', visibility));
    if (connectionIdsToAdd != null) {
      queryParams.addAll(_queryParams('', 'connectionIdsToAdd', connectionIdsToAdd));
    }
    if (connectionGroupIdsToAdd != null) {
      queryParams.addAll(_queryParams('', 'connectionGroupIdsToAdd', connectionGroupIdsToAdd));
    }
      queryParams.addAll(_queryParams('', 'includeFriendGroup', includeFriendGroup));
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

  /// Create or Update Contest
  ///
  /// Creates or updates a contest.
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [bool] publicRead (required):
  ///   determines whether the contest's participants has read permissions
  ///
  /// * [bool] publicWrite (required):
  ///   determines whether the contest's participants has write permissions
  ///
  /// * [bool] publicDelete (required):
  ///   determines whether the contest's participants has delete permissions
  ///
  /// * [bool] publicAdd (required):
  ///   determines whether the contest's participants has add permissions
  ///
  /// * [String] visibility (required):
  ///   the determines the album's participants (PUBLIC - includes everyone in the system as a potential participant, PRIVATE - only considers people who have been invited as participants)
  ///
  /// * [bool] includeFriendGroup (required):
  ///   determines whether to include all friends as participants
  ///
  /// * [String] deviceId:
  ///   a unique ID given by the device (deviceId or accountId required)
  ///
  /// * [int] accountId:
  ///   the account ID of the user (deviceId or accountId required)
  ///
  /// * [String] gameType:
  ///   This parameter is deprecated. the application key
  ///
  /// * [String] appKey:
  ///   the application key
  ///
  /// * [String] contestType:
  ///   a custom field used for aggregation and searching
  ///
  /// * [int] albumContestId:
  ///   the album contest ID for updating (don't pass in if creating)
  ///
  /// * [String] title:
  ///   the title of the contest
  ///
  /// * [String] description:
  ///   the description of the contest
  ///
  /// * [int] albumId1:
  ///   the album ID for the first album
  ///
  /// * [bool] removeAlbum1:
  ///   removes album1 from the contest
  ///
  /// * [int] albumId2:
  ///   the album ID for the second album
  ///
  /// * [bool] removeAlbum2:
  ///   removes album2 from the contest
  ///
  /// * [int] startDate:
  ///   the start date of the contest (time-stamp in milliseconds)
  ///
  /// * [int] endDate:
  ///   the end date of the contest (time-stamp in milliseconds)
  ///
  /// * [String] locationDescription:
  ///   the location description of the contest taking place
  ///
  /// * [String] connectionIdsToAdd:
  ///   comma separated list of connection IDs
  ///
  /// * [String] connectionGroupIdsToAdd:
  ///   comma separated list of connection group IDs
  ///
  /// * [double] latitude:
  ///   latitude used to update the user's current location
  ///
  /// * [double] longitude:
  ///   longitude used to update the user's current location
  Future<AlbumContestResponse?> addOrUpdateAlbumContest(num version, bool publicRead, bool publicWrite, bool publicDelete, bool publicAdd, String visibility, bool includeFriendGroup, { String? deviceId, int? accountId, String? gameType, String? appKey, String? contestType, int? albumContestId, String? title, String? description, int? albumId1, bool? removeAlbum1, int? albumId2, bool? removeAlbum2, int? startDate, int? endDate, String? locationDescription, String? connectionIdsToAdd, String? connectionGroupIdsToAdd, double? latitude, double? longitude, }) async {
    final response = await addOrUpdateAlbumContestWithHttpInfo(version, publicRead, publicWrite, publicDelete, publicAdd, visibility, includeFriendGroup,  deviceId: deviceId, accountId: accountId, gameType: gameType, appKey: appKey, contestType: contestType, albumContestId: albumContestId, title: title, description: description, albumId1: albumId1, removeAlbum1: removeAlbum1, albumId2: albumId2, removeAlbum2: removeAlbum2, startDate: startDate, endDate: endDate, locationDescription: locationDescription, connectionIdsToAdd: connectionIdsToAdd, connectionGroupIdsToAdd: connectionGroupIdsToAdd, latitude: latitude, longitude: longitude, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'AlbumContestResponse',) as AlbumContestResponse;
    
    }
    return null;
  }

  /// Approve Contest
  ///
  /// Sets the approval status of a contest.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] albumContestId (required):
  ///   The ID of the album contest
  ///
  /// * [String] approvalStatus (required):
  ///   The approval status to set {PENDING, REJECTED, APPROVED, FEATURED}
  ///
  /// * [String] deviceId:
  ///   A unique ID given by the device (deviceId or accountId required)
  ///
  /// * [int] accountId:
  ///   The account ID of the user (deviceId or accountId required)
  Future<Response> approveAlbumContestWithHttpInfo(num version, int albumContestId, String approvalStatus, { String? deviceId, int? accountId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/consumer/album/contest/approve'
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
      queryParams.addAll(_queryParams('', 'albumContestId', albumContestId));
      queryParams.addAll(_queryParams('', 'approvalStatus', approvalStatus));

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

  /// Approve Contest
  ///
  /// Sets the approval status of a contest.
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] albumContestId (required):
  ///   The ID of the album contest
  ///
  /// * [String] approvalStatus (required):
  ///   The approval status to set {PENDING, REJECTED, APPROVED, FEATURED}
  ///
  /// * [String] deviceId:
  ///   A unique ID given by the device (deviceId or accountId required)
  ///
  /// * [int] accountId:
  ///   The account ID of the user (deviceId or accountId required)
  Future<SirqulResponse?> approveAlbumContest(num version, int albumContestId, String approvalStatus, { String? deviceId, int? accountId, }) async {
    final response = await approveAlbumContestWithHttpInfo(version, albumContestId, approvalStatus,  deviceId: deviceId, accountId: accountId, );
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

  /// Delete Contest
  ///
  /// Deletes a contest.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] albumContestId (required):
  ///   the album contest ID
  ///
  /// * [String] deviceId:
  ///   a unique ID given by the device (deviceId or accountId required)
  ///
  /// * [int] accountId:
  ///   the account ID of the user (deviceId or accountId required)
  ///
  /// * [double] latitude:
  ///   latitude used to update the user's current location
  ///
  /// * [double] longitude:
  ///   longitude used to update the user's current location
  Future<Response> deleteContestWithHttpInfo(num version, int albumContestId, { String? deviceId, int? accountId, double? latitude, double? longitude, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/consumer/album/contest/remove'
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
      queryParams.addAll(_queryParams('', 'albumContestId', albumContestId));
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

  /// Delete Contest
  ///
  /// Deletes a contest.
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] albumContestId (required):
  ///   the album contest ID
  ///
  /// * [String] deviceId:
  ///   a unique ID given by the device (deviceId or accountId required)
  ///
  /// * [int] accountId:
  ///   the account ID of the user (deviceId or accountId required)
  ///
  /// * [double] latitude:
  ///   latitude used to update the user's current location
  ///
  /// * [double] longitude:
  ///   longitude used to update the user's current location
  Future<SirqulResponse?> deleteContest(num version, int albumContestId, { String? deviceId, int? accountId, double? latitude, double? longitude, }) async {
    final response = await deleteContestWithHttpInfo(version, albumContestId,  deviceId: deviceId, accountId: accountId, latitude: latitude, longitude: longitude, );
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

  /// Get Contest
  ///
  /// Gets the contest object including the likes and notes
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] albumContestId (required):
  ///   the album contest ID
  ///
  /// * [String] deviceId:
  ///   a unique ID given by the device (deviceId or accountId required)
  ///
  /// * [int] accountId:
  ///   the account ID of the user (deviceId or accountId required)
  ///
  /// * [double] latitude:
  ///   latitude used to update the user's current location
  ///
  /// * [double] longitude:
  ///   longitude used to update the user's current location
  Future<Response> getAlbumContestWithHttpInfo(num version, int albumContestId, { String? deviceId, int? accountId, double? latitude, double? longitude, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/consumer/album/contest/get'
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
      queryParams.addAll(_queryParams('', 'albumContestId', albumContestId));
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

  /// Get Contest
  ///
  /// Gets the contest object including the likes and notes
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] albumContestId (required):
  ///   the album contest ID
  ///
  /// * [String] deviceId:
  ///   a unique ID given by the device (deviceId or accountId required)
  ///
  /// * [int] accountId:
  ///   the account ID of the user (deviceId or accountId required)
  ///
  /// * [double] latitude:
  ///   latitude used to update the user's current location
  ///
  /// * [double] longitude:
  ///   longitude used to update the user's current location
  Future<AlbumContestResponse?> getAlbumContest(num version, int albumContestId, { String? deviceId, int? accountId, double? latitude, double? longitude, }) async {
    final response = await getAlbumContestWithHttpInfo(version, albumContestId,  deviceId: deviceId, accountId: accountId, latitude: latitude, longitude: longitude, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'AlbumContestResponse',) as AlbumContestResponse;
    
    }
    return null;
  }

  /// Search Contests
  ///
  /// Searches on contests.
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
  ///   the field to sort by. See AlbumContestApiMap
  ///
  /// * [bool] descending (required):
  ///   determines whether the sorted list is in descending or ascending order
  ///
  /// * [int] start (required):
  ///   the start index for pagination
  ///
  /// * [int] limit (required):
  ///   the limit for pagination (there is a hard limit of 30)
  ///
  /// * [String] deviceId:
  ///   a unique ID given by the device (deviceId or accountId required)
  ///
  /// * [int] accountId:
  ///   the account ID of the user (deviceId or accountId required)
  ///
  /// * [String] gameType:
  ///   This parameter is deprecated.
  ///
  /// * [String] appKey:
  ///   the application key
  ///
  /// * [String] appType:
  ///   the application type
  ///
  /// * [String] contestType:
  ///   filter contests with this contest type
  ///
  /// * [int] ownerId:
  ///   search on contests that have been created by this account (that the user has permissions to)
  ///
  /// * [String] q:
  ///   This parameter is deprecated.
  ///
  /// * [String] keyword:
  ///   keyword search string
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
  /// * [double] latitude:
  ///   latitude used to update the user's current location
  ///
  /// * [double] longitude:
  ///   longitude used to update the user's current location
  Future<Response> getAlbumContestsWithHttpInfo(num version, String filter, String sortField, bool descending, int start, int limit, { String? deviceId, int? accountId, String? gameType, String? appKey, String? appType, String? contestType, int? ownerId, String? q, String? keyword, int? i, int? l, int? dateCreated, double? latitude, double? longitude, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/consumer/album/contest/search'
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
    if (appKey != null) {
      queryParams.addAll(_queryParams('', 'appKey', appKey));
    }
    if (appType != null) {
      queryParams.addAll(_queryParams('', 'appType', appType));
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

  /// Search Contests
  ///
  /// Searches on contests.
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [String] filter (required):
  ///   a comma separated list of Ownership
  ///
  /// * [String] sortField (required):
  ///   the field to sort by. See AlbumContestApiMap
  ///
  /// * [bool] descending (required):
  ///   determines whether the sorted list is in descending or ascending order
  ///
  /// * [int] start (required):
  ///   the start index for pagination
  ///
  /// * [int] limit (required):
  ///   the limit for pagination (there is a hard limit of 30)
  ///
  /// * [String] deviceId:
  ///   a unique ID given by the device (deviceId or accountId required)
  ///
  /// * [int] accountId:
  ///   the account ID of the user (deviceId or accountId required)
  ///
  /// * [String] gameType:
  ///   This parameter is deprecated.
  ///
  /// * [String] appKey:
  ///   the application key
  ///
  /// * [String] appType:
  ///   the application type
  ///
  /// * [String] contestType:
  ///   filter contests with this contest type
  ///
  /// * [int] ownerId:
  ///   search on contests that have been created by this account (that the user has permissions to)
  ///
  /// * [String] q:
  ///   This parameter is deprecated.
  ///
  /// * [String] keyword:
  ///   keyword search string
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
  /// * [double] latitude:
  ///   latitude used to update the user's current location
  ///
  /// * [double] longitude:
  ///   longitude used to update the user's current location
  Future<AlbumContestListResponse?> getAlbumContests(num version, String filter, String sortField, bool descending, int start, int limit, { String? deviceId, int? accountId, String? gameType, String? appKey, String? appType, String? contestType, int? ownerId, String? q, String? keyword, int? i, int? l, int? dateCreated, double? latitude, double? longitude, }) async {
    final response = await getAlbumContestsWithHttpInfo(version, filter, sortField, descending, start, limit,  deviceId: deviceId, accountId: accountId, gameType: gameType, appKey: appKey, appType: appType, contestType: contestType, ownerId: ownerId, q: q, keyword: keyword, i: i, l: l, dateCreated: dateCreated, latitude: latitude, longitude: longitude, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'AlbumContestListResponse',) as AlbumContestListResponse;
    
    }
    return null;
  }

  /// Vote on Contest
  ///
  /// Vote on a collection in a contest.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] albumContestId (required):
  ///   the album contest ID
  ///
  /// * [int] albumId (required):
  ///   the ID of the album to vote on
  ///
  /// * [String] deviceId:
  ///   a unique ID given by the device (deviceId or accountId required)
  ///
  /// * [int] accountId:
  ///   the account ID of the user (deviceId or accountId required)
  ///
  /// * [String] contestType:
  ///   a custom field used for aggregation and searching
  ///
  /// * [double] latitude:
  ///   latitude used to update the user's current location
  ///
  /// * [double] longitude:
  ///   longitude used to update the user's current location
  Future<Response> voteOnAlbumContestWithHttpInfo(num version, int albumContestId, int albumId, { String? deviceId, int? accountId, String? contestType, double? latitude, double? longitude, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/consumer/album/contest/vote'
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
      queryParams.addAll(_queryParams('', 'albumContestId', albumContestId));
      queryParams.addAll(_queryParams('', 'albumId', albumId));
    if (contestType != null) {
      queryParams.addAll(_queryParams('', 'contestType', contestType));
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

  /// Vote on Contest
  ///
  /// Vote on a collection in a contest.
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] albumContestId (required):
  ///   the album contest ID
  ///
  /// * [int] albumId (required):
  ///   the ID of the album to vote on
  ///
  /// * [String] deviceId:
  ///   a unique ID given by the device (deviceId or accountId required)
  ///
  /// * [int] accountId:
  ///   the account ID of the user (deviceId or accountId required)
  ///
  /// * [String] contestType:
  ///   a custom field used for aggregation and searching
  ///
  /// * [double] latitude:
  ///   latitude used to update the user's current location
  ///
  /// * [double] longitude:
  ///   longitude used to update the user's current location
  Future<AlbumContestResponse?> voteOnAlbumContest(num version, int albumContestId, int albumId, { String? deviceId, int? accountId, String? contestType, double? latitude, double? longitude, }) async {
    final response = await voteOnAlbumContestWithHttpInfo(version, albumContestId, albumId,  deviceId: deviceId, accountId: accountId, contestType: contestType, latitude: latitude, longitude: longitude, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'AlbumContestResponse',) as AlbumContestResponse;
    
    }
    return null;
  }
}
