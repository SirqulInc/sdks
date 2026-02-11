//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class AlbumApi {
  AlbumApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Create Album
  ///
  /// Create an Album.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] title (required):
  ///   the title of the album
  ///
  /// * [bool] coverAssetNullable (required):
  ///   determines whether the cover image of the album can be empty, else will use the user's profile picture as the cover image
  ///
  /// * [bool] includeCoverInAssetList (required):
  ///   determines whether the cover image should be added to the album asset list
  ///
  /// * [bool] publicRead (required):
  ///   determines whether the album's participants has read permissions
  ///
  /// * [bool] publicWrite (required):
  ///   determines whether the album's participants has write permissions
  ///
  /// * [bool] publicDelete (required):
  ///   determines whether the album's participants has delete permissions
  ///
  /// * [bool] publicAdd (required):
  ///   determines whether the album's participants has add permissions
  ///
  /// * [bool] anonymous (required):
  ///   determines whether the album is posted anonymously
  ///
  /// * [String] deviceId:
  ///   a unique ID given by the device (deviceId or accountId required)
  ///
  /// * [int] accountId:
  ///   the account ID of the user (deviceId or accountId required)
  ///
  /// * [String] assetsToAdd:
  ///   Comma separated list of asset IDs to add to the album's asset list (use \"assetId\" for setting the cover of the album)
  ///
  /// * [MultipartFile] media:
  ///   a MultipartFile containing the cover image of the album (this will only be used if \"assetId\" is empty)
  ///
  /// * [String] mediaURL:
  ///   this can be used if the \"media\" is a link (this will only be used if \"assetId\" and media are empty)
  ///
  /// * [int] assetId:
  ///   The asset ID to set the album cover image
  ///
  /// * [MultipartFile] attachedMedia:
  ///   a MultipartFile containing an asset that the \"media\" file references. Example to upload a video: the \"media\" file should contain a screen capture of the video, and the \"attachedMedia\" should be the actual video.
  ///
  /// * [String] attachedMediaURL:
  ///   this can be used if the \"attachedMedia\" is a link (i.e. a Youtube video, etc)
  ///
  /// * [int] startDate:
  ///   the start date
  ///
  /// * [int] endDate:
  ///   the end date
  ///
  /// * [String] tags:
  ///   the tags
  ///
  /// * [String] description:
  ///   the description of the album
  ///
  /// * [String] albumType:
  ///   a custom field used for aggregation and searching
  ///
  /// * [int] albumTypeId:
  ///   a custom indexed number used for aggregation and searching
  ///
  /// * [String] subType:
  ///   a custom string field used for aggregation and searching
  ///
  /// * [double] latitude:
  ///   latitude used to update the album's location
  ///
  /// * [double] longitude:
  ///   longitude used to update the album's location
  ///
  /// * [String] locationDescription:
  ///   the location description
  ///
  /// * [String] visibility:
  ///   the determines the album's participants (PUBLIC - includes everyone in the system as a potential participant, PRIVATE - only considers people who have been invited as participants)
  ///
  /// * [String] gameType:
  ///   @deprecated, use the appKey
  ///
  /// * [String] appKey:
  ///   the application key
  ///
  /// * [String] cellPhone:
  ///   the cell phone number
  ///
  /// * [String] streetAddress:
  ///   The street address of the location
  ///
  /// * [String] streetAddress2:
  ///   Additional address information (such as a suite number, floor number, building name, or PO Box)
  ///
  /// * [String] city:
  ///   The city of the location
  ///
  /// * [String] state:
  ///   The state of of the location
  ///
  /// * [String] postalCode:
  ///   The postal code of the location
  ///
  /// * [String] fullAddress:
  ///   The full address of the location which should include the street address, city, state, and postal code
  ///
  /// * [String] metaData:
  ///   External custom client defined data
  ///
  /// * [String] categoryIds:
  ///   comma separated category ids string associated with the Album
  ///
  /// * [String] categoryFilterIds:
  ///   comma separated filter ids string associated with the Album
  ///
  /// * [String] audienceIds:
  ///   comma separated audience ids string associated with the album
  ///
  /// * [bool] includeAllAppUsersAsMembers:
  ///   determines whether to include all app users as members (only admins of the app can do this)
  ///
  /// * [bool] includeAudiencesAsMembers:
  ///   determines whether to include all users of the audiences as members (only admins of the app can do this)
  ///
  /// * [String] audienceOperator:
  ///   determines whether to use ands or ors when using the audience list to add users
  ///
  /// * [String] approvalStatus:
  ///   The approval status to set {PENDING, REJECTED, APPROVED, FEATURED}
  ///
  /// * [String] linkedObjectType:
  ///   sets a linked object so that it can be returned as part of the album response
  ///
  /// * [int] linkedObjectId:
  ///   sets a linked object id so that it can be returned as part of the album response
  Future<Response> addAlbumCollectionWithHttpInfo(String title, bool coverAssetNullable, bool includeCoverInAssetList, bool publicRead, bool publicWrite, bool publicDelete, bool publicAdd, bool anonymous, { String? deviceId, int? accountId, String? assetsToAdd, MultipartFile? media, String? mediaURL, int? assetId, MultipartFile? attachedMedia, String? attachedMediaURL, int? startDate, int? endDate, String? tags, String? description, String? albumType, int? albumTypeId, String? subType, double? latitude, double? longitude, String? locationDescription, String? visibility, String? gameType, String? appKey, String? cellPhone, String? streetAddress, String? streetAddress2, String? city, String? state, String? postalCode, String? fullAddress, String? metaData, String? categoryIds, String? categoryFilterIds, String? audienceIds, bool? includeAllAppUsersAsMembers, bool? includeAudiencesAsMembers, String? audienceOperator, String? approvalStatus, String? linkedObjectType, int? linkedObjectId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/album/create';

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
      queryParams.addAll(_queryParams('', 'title', title));
    if (assetsToAdd != null) {
      queryParams.addAll(_queryParams('', 'assetsToAdd', assetsToAdd));
    }
    if (media != null) {
      queryParams.addAll(_queryParams('', 'media', media));
    }
    if (mediaURL != null) {
      queryParams.addAll(_queryParams('', 'mediaURL', mediaURL));
    }
    if (assetId != null) {
      queryParams.addAll(_queryParams('', 'assetId', assetId));
    }
    if (attachedMedia != null) {
      queryParams.addAll(_queryParams('', 'attachedMedia', attachedMedia));
    }
    if (attachedMediaURL != null) {
      queryParams.addAll(_queryParams('', 'attachedMediaURL', attachedMediaURL));
    }
      queryParams.addAll(_queryParams('', 'coverAssetNullable', coverAssetNullable));
      queryParams.addAll(_queryParams('', 'includeCoverInAssetList', includeCoverInAssetList));
    if (startDate != null) {
      queryParams.addAll(_queryParams('', 'startDate', startDate));
    }
    if (endDate != null) {
      queryParams.addAll(_queryParams('', 'endDate', endDate));
    }
    if (tags != null) {
      queryParams.addAll(_queryParams('', 'tags', tags));
    }
    if (description != null) {
      queryParams.addAll(_queryParams('', 'description', description));
    }
    if (albumType != null) {
      queryParams.addAll(_queryParams('', 'albumType', albumType));
    }
    if (albumTypeId != null) {
      queryParams.addAll(_queryParams('', 'albumTypeId', albumTypeId));
    }
    if (subType != null) {
      queryParams.addAll(_queryParams('', 'subType', subType));
    }
      queryParams.addAll(_queryParams('', 'publicRead', publicRead));
      queryParams.addAll(_queryParams('', 'publicWrite', publicWrite));
      queryParams.addAll(_queryParams('', 'publicDelete', publicDelete));
      queryParams.addAll(_queryParams('', 'publicAdd', publicAdd));
    if (latitude != null) {
      queryParams.addAll(_queryParams('', 'latitude', latitude));
    }
    if (longitude != null) {
      queryParams.addAll(_queryParams('', 'longitude', longitude));
    }
    if (locationDescription != null) {
      queryParams.addAll(_queryParams('', 'locationDescription', locationDescription));
    }
    if (visibility != null) {
      queryParams.addAll(_queryParams('', 'visibility', visibility));
    }
    if (gameType != null) {
      queryParams.addAll(_queryParams('', 'gameType', gameType));
    }
    if (appKey != null) {
      queryParams.addAll(_queryParams('', 'appKey', appKey));
    }
    if (cellPhone != null) {
      queryParams.addAll(_queryParams('', 'cellPhone', cellPhone));
    }
    if (streetAddress != null) {
      queryParams.addAll(_queryParams('', 'streetAddress', streetAddress));
    }
    if (streetAddress2 != null) {
      queryParams.addAll(_queryParams('', 'streetAddress2', streetAddress2));
    }
    if (city != null) {
      queryParams.addAll(_queryParams('', 'city', city));
    }
    if (state != null) {
      queryParams.addAll(_queryParams('', 'state', state));
    }
    if (postalCode != null) {
      queryParams.addAll(_queryParams('', 'postalCode', postalCode));
    }
    if (fullAddress != null) {
      queryParams.addAll(_queryParams('', 'fullAddress', fullAddress));
    }
      queryParams.addAll(_queryParams('', 'anonymous', anonymous));
    if (metaData != null) {
      queryParams.addAll(_queryParams('', 'metaData', metaData));
    }
    if (categoryIds != null) {
      queryParams.addAll(_queryParams('', 'categoryIds', categoryIds));
    }
    if (categoryFilterIds != null) {
      queryParams.addAll(_queryParams('', 'categoryFilterIds', categoryFilterIds));
    }
    if (audienceIds != null) {
      queryParams.addAll(_queryParams('', 'audienceIds', audienceIds));
    }
    if (includeAllAppUsersAsMembers != null) {
      queryParams.addAll(_queryParams('', 'includeAllAppUsersAsMembers', includeAllAppUsersAsMembers));
    }
    if (includeAudiencesAsMembers != null) {
      queryParams.addAll(_queryParams('', 'includeAudiencesAsMembers', includeAudiencesAsMembers));
    }
    if (audienceOperator != null) {
      queryParams.addAll(_queryParams('', 'audienceOperator', audienceOperator));
    }
    if (approvalStatus != null) {
      queryParams.addAll(_queryParams('', 'approvalStatus', approvalStatus));
    }
    if (linkedObjectType != null) {
      queryParams.addAll(_queryParams('', 'linkedObjectType', linkedObjectType));
    }
    if (linkedObjectId != null) {
      queryParams.addAll(_queryParams('', 'linkedObjectId', linkedObjectId));
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

  /// Create Album
  ///
  /// Create an Album.
  ///
  /// Parameters:
  ///
  /// * [String] title (required):
  ///   the title of the album
  ///
  /// * [bool] coverAssetNullable (required):
  ///   determines whether the cover image of the album can be empty, else will use the user's profile picture as the cover image
  ///
  /// * [bool] includeCoverInAssetList (required):
  ///   determines whether the cover image should be added to the album asset list
  ///
  /// * [bool] publicRead (required):
  ///   determines whether the album's participants has read permissions
  ///
  /// * [bool] publicWrite (required):
  ///   determines whether the album's participants has write permissions
  ///
  /// * [bool] publicDelete (required):
  ///   determines whether the album's participants has delete permissions
  ///
  /// * [bool] publicAdd (required):
  ///   determines whether the album's participants has add permissions
  ///
  /// * [bool] anonymous (required):
  ///   determines whether the album is posted anonymously
  ///
  /// * [String] deviceId:
  ///   a unique ID given by the device (deviceId or accountId required)
  ///
  /// * [int] accountId:
  ///   the account ID of the user (deviceId or accountId required)
  ///
  /// * [String] assetsToAdd:
  ///   Comma separated list of asset IDs to add to the album's asset list (use \"assetId\" for setting the cover of the album)
  ///
  /// * [MultipartFile] media:
  ///   a MultipartFile containing the cover image of the album (this will only be used if \"assetId\" is empty)
  ///
  /// * [String] mediaURL:
  ///   this can be used if the \"media\" is a link (this will only be used if \"assetId\" and media are empty)
  ///
  /// * [int] assetId:
  ///   The asset ID to set the album cover image
  ///
  /// * [MultipartFile] attachedMedia:
  ///   a MultipartFile containing an asset that the \"media\" file references. Example to upload a video: the \"media\" file should contain a screen capture of the video, and the \"attachedMedia\" should be the actual video.
  ///
  /// * [String] attachedMediaURL:
  ///   this can be used if the \"attachedMedia\" is a link (i.e. a Youtube video, etc)
  ///
  /// * [int] startDate:
  ///   the start date
  ///
  /// * [int] endDate:
  ///   the end date
  ///
  /// * [String] tags:
  ///   the tags
  ///
  /// * [String] description:
  ///   the description of the album
  ///
  /// * [String] albumType:
  ///   a custom field used for aggregation and searching
  ///
  /// * [int] albumTypeId:
  ///   a custom indexed number used for aggregation and searching
  ///
  /// * [String] subType:
  ///   a custom string field used for aggregation and searching
  ///
  /// * [double] latitude:
  ///   latitude used to update the album's location
  ///
  /// * [double] longitude:
  ///   longitude used to update the album's location
  ///
  /// * [String] locationDescription:
  ///   the location description
  ///
  /// * [String] visibility:
  ///   the determines the album's participants (PUBLIC - includes everyone in the system as a potential participant, PRIVATE - only considers people who have been invited as participants)
  ///
  /// * [String] gameType:
  ///   @deprecated, use the appKey
  ///
  /// * [String] appKey:
  ///   the application key
  ///
  /// * [String] cellPhone:
  ///   the cell phone number
  ///
  /// * [String] streetAddress:
  ///   The street address of the location
  ///
  /// * [String] streetAddress2:
  ///   Additional address information (such as a suite number, floor number, building name, or PO Box)
  ///
  /// * [String] city:
  ///   The city of the location
  ///
  /// * [String] state:
  ///   The state of of the location
  ///
  /// * [String] postalCode:
  ///   The postal code of the location
  ///
  /// * [String] fullAddress:
  ///   The full address of the location which should include the street address, city, state, and postal code
  ///
  /// * [String] metaData:
  ///   External custom client defined data
  ///
  /// * [String] categoryIds:
  ///   comma separated category ids string associated with the Album
  ///
  /// * [String] categoryFilterIds:
  ///   comma separated filter ids string associated with the Album
  ///
  /// * [String] audienceIds:
  ///   comma separated audience ids string associated with the album
  ///
  /// * [bool] includeAllAppUsersAsMembers:
  ///   determines whether to include all app users as members (only admins of the app can do this)
  ///
  /// * [bool] includeAudiencesAsMembers:
  ///   determines whether to include all users of the audiences as members (only admins of the app can do this)
  ///
  /// * [String] audienceOperator:
  ///   determines whether to use ands or ors when using the audience list to add users
  ///
  /// * [String] approvalStatus:
  ///   The approval status to set {PENDING, REJECTED, APPROVED, FEATURED}
  ///
  /// * [String] linkedObjectType:
  ///   sets a linked object so that it can be returned as part of the album response
  ///
  /// * [int] linkedObjectId:
  ///   sets a linked object id so that it can be returned as part of the album response
  Future<SearchResponse?> addAlbumCollection(String title, bool coverAssetNullable, bool includeCoverInAssetList, bool publicRead, bool publicWrite, bool publicDelete, bool publicAdd, bool anonymous, { String? deviceId, int? accountId, String? assetsToAdd, MultipartFile? media, String? mediaURL, int? assetId, MultipartFile? attachedMedia, String? attachedMediaURL, int? startDate, int? endDate, String? tags, String? description, String? albumType, int? albumTypeId, String? subType, double? latitude, double? longitude, String? locationDescription, String? visibility, String? gameType, String? appKey, String? cellPhone, String? streetAddress, String? streetAddress2, String? city, String? state, String? postalCode, String? fullAddress, String? metaData, String? categoryIds, String? categoryFilterIds, String? audienceIds, bool? includeAllAppUsersAsMembers, bool? includeAudiencesAsMembers, String? audienceOperator, String? approvalStatus, String? linkedObjectType, int? linkedObjectId, }) async {
    final response = await addAlbumCollectionWithHttpInfo(title, coverAssetNullable, includeCoverInAssetList, publicRead, publicWrite, publicDelete, publicAdd, anonymous,  deviceId: deviceId, accountId: accountId, assetsToAdd: assetsToAdd, media: media, mediaURL: mediaURL, assetId: assetId, attachedMedia: attachedMedia, attachedMediaURL: attachedMediaURL, startDate: startDate, endDate: endDate, tags: tags, description: description, albumType: albumType, albumTypeId: albumTypeId, subType: subType, latitude: latitude, longitude: longitude, locationDescription: locationDescription, visibility: visibility, gameType: gameType, appKey: appKey, cellPhone: cellPhone, streetAddress: streetAddress, streetAddress2: streetAddress2, city: city, state: state, postalCode: postalCode, fullAddress: fullAddress, metaData: metaData, categoryIds: categoryIds, categoryFilterIds: categoryFilterIds, audienceIds: audienceIds, includeAllAppUsersAsMembers: includeAllAppUsersAsMembers, includeAudiencesAsMembers: includeAudiencesAsMembers, audienceOperator: audienceOperator, approvalStatus: approvalStatus, linkedObjectType: linkedObjectType, linkedObjectId: linkedObjectId, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'SearchResponse',) as SearchResponse;
    
    }
    return null;
  }

  /// Add Album Users
  ///
  /// Add users to an album as participants.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] albumId (required):
  ///   the album ID
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
  /// * [bool] read:
  ///   determines whether the users being added have read permissions
  ///
  /// * [bool] write:
  ///   determines whether the users being added have write permissions
  ///
  /// * [bool] delete:
  ///   determines whether the users being added have delete permissions
  ///
  /// * [bool] add:
  ///   determines whether the users being added have add permissions
  ///
  /// * [String] connections:
  ///   comma separated list of connection IDs
  ///
  /// * [String] connectionGroups:
  ///   comma separated list of connection group IDs
  Future<Response> addAlbumUsersWithHttpInfo(int albumId, bool includeFriendGroup, { String? deviceId, int? accountId, bool? read, bool? write, bool? delete, bool? add, String? connections, String? connectionGroups, }) async {
    // ignore: prefer_const_declarations
    final path = r'/album/user/add';

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
      queryParams.addAll(_queryParams('', 'albumId', albumId));
    if (read != null) {
      queryParams.addAll(_queryParams('', 'read', read));
    }
    if (write != null) {
      queryParams.addAll(_queryParams('', 'write', write));
    }
    if (delete != null) {
      queryParams.addAll(_queryParams('', 'delete', delete));
    }
    if (add != null) {
      queryParams.addAll(_queryParams('', 'add', add));
    }
    if (connections != null) {
      queryParams.addAll(_queryParams('', 'connections', connections));
    }
    if (connectionGroups != null) {
      queryParams.addAll(_queryParams('', 'connectionGroups', connectionGroups));
    }
      queryParams.addAll(_queryParams('', 'includeFriendGroup', includeFriendGroup));

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

  /// Add Album Users
  ///
  /// Add users to an album as participants.
  ///
  /// Parameters:
  ///
  /// * [int] albumId (required):
  ///   the album ID
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
  /// * [bool] read:
  ///   determines whether the users being added have read permissions
  ///
  /// * [bool] write:
  ///   determines whether the users being added have write permissions
  ///
  /// * [bool] delete:
  ///   determines whether the users being added have delete permissions
  ///
  /// * [bool] add:
  ///   determines whether the users being added have add permissions
  ///
  /// * [String] connections:
  ///   comma separated list of connection IDs
  ///
  /// * [String] connectionGroups:
  ///   comma separated list of connection group IDs
  Future<SirqulResponse?> addAlbumUsers(int albumId, bool includeFriendGroup, { String? deviceId, int? accountId, bool? read, bool? write, bool? delete, bool? add, String? connections, String? connectionGroups, }) async {
    final response = await addAlbumUsersWithHttpInfo(albumId, includeFriendGroup,  deviceId: deviceId, accountId: accountId, read: read, write: write, delete: delete, add: add, connections: connections, connectionGroups: connectionGroups, );
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

  /// Approve Album
  ///
  /// Sets the approval status of an Album.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] albumId (required):
  ///   The ID of the album
  ///
  /// * [String] deviceId:
  ///   A unique ID given by the device (deviceId or accountId required)
  ///
  /// * [int] accountId:
  ///   The account ID of the user (deviceId or accountId required)
  ///
  /// * [String] approvalStatus:
  ///   The approval status to set {PENDING, REJECTED, APPROVED, FEATURED}
  ///
  /// * [bool] verified:
  ///   Sets whether the album should be marked as \"verified\"
  Future<Response> approveAlbumWithHttpInfo(int albumId, { String? deviceId, int? accountId, String? approvalStatus, bool? verified, }) async {
    // ignore: prefer_const_declarations
    final path = r'/album/approve';

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
      queryParams.addAll(_queryParams('', 'albumId', albumId));
    if (approvalStatus != null) {
      queryParams.addAll(_queryParams('', 'approvalStatus', approvalStatus));
    }
    if (verified != null) {
      queryParams.addAll(_queryParams('', 'verified', verified));
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

  /// Approve Album
  ///
  /// Sets the approval status of an Album.
  ///
  /// Parameters:
  ///
  /// * [int] albumId (required):
  ///   The ID of the album
  ///
  /// * [String] deviceId:
  ///   A unique ID given by the device (deviceId or accountId required)
  ///
  /// * [int] accountId:
  ///   The account ID of the user (deviceId or accountId required)
  ///
  /// * [String] approvalStatus:
  ///   The approval status to set {PENDING, REJECTED, APPROVED, FEATURED}
  ///
  /// * [bool] verified:
  ///   Sets whether the album should be marked as \"verified\"
  Future<SirqulResponse?> approveAlbum(int albumId, { String? deviceId, int? accountId, String? approvalStatus, bool? verified, }) async {
    final response = await approveAlbumWithHttpInfo(albumId,  deviceId: deviceId, accountId: accountId, approvalStatus: approvalStatus, verified: verified, );
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

  ///  Get Album
  ///
  /// Get an Album.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [bool] returnNulls (required):
  ///   This parameter is deprecated.
  ///
  /// * [int] albumId (required):
  ///   the album to look up
  ///
  /// * [String] deviceId:
  ///   a unique ID given by the device (deviceId or accountId required)
  ///
  /// * [int] accountId:
  ///   the account ID of the user (deviceId or accountId required)
  ///
  /// * [int] likePreviewSize:
  ///   returns the last X likes. To search on and paginate the remaining likes - please use the \"/like/search\"Â endpoint.
  ///
  /// * [int] assetPreviewSize:
  ///   returns the first X assets. To search on and paginate the remaining assets - please use the \"/assets/search\"Â endpoint.
  ///
  /// * [int] notePreviewSize:
  ///   returns the last X notes. To search on and paginate the remaining notes - please use the \"/note/search\" endpoint.
  ///
  /// * [int] connectionPreviewSize:
  ///   returns the first X users/connections. To search on and paginate the remaining connections - please use the \"/permissions/search\" endpoint.
  ///
  /// * [int] audiencePreviewSize:
  ///   returns the first X audiences. To search on and paginate the remaining audiences - please use the \"/audience/search\" endpoint.
  Future<Response> getAlbumCollectionWithHttpInfo(bool returnNulls, int albumId, { String? deviceId, int? accountId, int? likePreviewSize, int? assetPreviewSize, int? notePreviewSize, int? connectionPreviewSize, int? audiencePreviewSize, }) async {
    // ignore: prefer_const_declarations
    final path = r'/album/get';

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
      queryParams.addAll(_queryParams('', 'albumId', albumId));
    if (likePreviewSize != null) {
      queryParams.addAll(_queryParams('', 'likePreviewSize', likePreviewSize));
    }
    if (assetPreviewSize != null) {
      queryParams.addAll(_queryParams('', 'assetPreviewSize', assetPreviewSize));
    }
    if (notePreviewSize != null) {
      queryParams.addAll(_queryParams('', 'notePreviewSize', notePreviewSize));
    }
    if (connectionPreviewSize != null) {
      queryParams.addAll(_queryParams('', 'connectionPreviewSize', connectionPreviewSize));
    }
    if (audiencePreviewSize != null) {
      queryParams.addAll(_queryParams('', 'audiencePreviewSize', audiencePreviewSize));
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

  ///  Get Album
  ///
  /// Get an Album.
  ///
  /// Parameters:
  ///
  /// * [bool] returnNulls (required):
  ///   This parameter is deprecated.
  ///
  /// * [int] albumId (required):
  ///   the album to look up
  ///
  /// * [String] deviceId:
  ///   a unique ID given by the device (deviceId or accountId required)
  ///
  /// * [int] accountId:
  ///   the account ID of the user (deviceId or accountId required)
  ///
  /// * [int] likePreviewSize:
  ///   returns the last X likes. To search on and paginate the remaining likes - please use the \"/like/search\"Â endpoint.
  ///
  /// * [int] assetPreviewSize:
  ///   returns the first X assets. To search on and paginate the remaining assets - please use the \"/assets/search\"Â endpoint.
  ///
  /// * [int] notePreviewSize:
  ///   returns the last X notes. To search on and paginate the remaining notes - please use the \"/note/search\" endpoint.
  ///
  /// * [int] connectionPreviewSize:
  ///   returns the first X users/connections. To search on and paginate the remaining connections - please use the \"/permissions/search\" endpoint.
  ///
  /// * [int] audiencePreviewSize:
  ///   returns the first X audiences. To search on and paginate the remaining audiences - please use the \"/audience/search\" endpoint.
  Future<AlbumFullResponse?> getAlbumCollection(bool returnNulls, int albumId, { String? deviceId, int? accountId, int? likePreviewSize, int? assetPreviewSize, int? notePreviewSize, int? connectionPreviewSize, int? audiencePreviewSize, }) async {
    final response = await getAlbumCollectionWithHttpInfo(returnNulls, albumId,  deviceId: deviceId, accountId: accountId, likePreviewSize: likePreviewSize, assetPreviewSize: assetPreviewSize, notePreviewSize: notePreviewSize, connectionPreviewSize: connectionPreviewSize, audiencePreviewSize: audiencePreviewSize, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'AlbumFullResponse',) as AlbumFullResponse;
    
    }
    return null;
  }

  /// Leave Album
  ///
  ///  Allows a user to leave an album (they are no longer considered a participant). The album creator cannot leave their own albums.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] albumId (required):
  ///   the album ID
  ///
  /// * [String] deviceId:
  ///   a unique ID given by the device (deviceId or accountId required)
  ///
  /// * [int] accountId:
  ///   the account ID of the user (deviceId or accountId required)
  Future<Response> leaveAlbumWithHttpInfo(int albumId, { String? deviceId, int? accountId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/album/user/leave';

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
      queryParams.addAll(_queryParams('', 'albumId', albumId));

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

  /// Leave Album
  ///
  ///  Allows a user to leave an album (they are no longer considered a participant). The album creator cannot leave their own albums.
  ///
  /// Parameters:
  ///
  /// * [int] albumId (required):
  ///   the album ID
  ///
  /// * [String] deviceId:
  ///   a unique ID given by the device (deviceId or accountId required)
  ///
  /// * [int] accountId:
  ///   the account ID of the user (deviceId or accountId required)
  Future<SirqulResponse?> leaveAlbum(int albumId, { String? deviceId, int? accountId, }) async {
    final response = await leaveAlbumWithHttpInfo(albumId,  deviceId: deviceId, accountId: accountId, );
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

  /// Delete Album
  ///
  /// Deletes an Album
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] albumId (required):
  ///   the album ID to delete
  ///
  /// * [String] deviceId:
  ///   a unique ID given by the device (deviceId or accountId required)
  ///
  /// * [int] accountId:
  ///   the account ID of the user (deviceId or accountId required)
  Future<Response> removeAlbumWithHttpInfo(int albumId, { String? deviceId, int? accountId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/album/delete';

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
      queryParams.addAll(_queryParams('', 'albumId', albumId));

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

  /// Delete Album
  ///
  /// Deletes an Album
  ///
  /// Parameters:
  ///
  /// * [int] albumId (required):
  ///   the album ID to delete
  ///
  /// * [String] deviceId:
  ///   a unique ID given by the device (deviceId or accountId required)
  ///
  /// * [int] accountId:
  ///   the account ID of the user (deviceId or accountId required)
  Future<SirqulResponse?> removeAlbum(int albumId, { String? deviceId, int? accountId, }) async {
    final response = await removeAlbumWithHttpInfo(albumId,  deviceId: deviceId, accountId: accountId, );
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

  /// Remove Album Users
  ///
  /// Remove participants of an album.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] albumId (required):
  ///   the album ID
  ///
  /// * [bool] removeFriendGroup (required):
  ///   remove friend group
  ///
  /// * [String] deviceId:
  ///   a unique ID given by the device (deviceId or accountId required)
  ///
  /// * [int] accountId:
  ///   the account ID of the user (deviceId or accountId required)
  ///
  /// * [String] connections:
  ///   comma separated list of connection IDs
  ///
  /// * [String] connectionGroups:
  ///   comma separated list of connection group IDs
  Future<Response> removeAlbumUsersWithHttpInfo(int albumId, bool removeFriendGroup, { String? deviceId, int? accountId, String? connections, String? connectionGroups, }) async {
    // ignore: prefer_const_declarations
    final path = r'/album/user/delete';

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
      queryParams.addAll(_queryParams('', 'albumId', albumId));
    if (connections != null) {
      queryParams.addAll(_queryParams('', 'connections', connections));
    }
    if (connectionGroups != null) {
      queryParams.addAll(_queryParams('', 'connectionGroups', connectionGroups));
    }
      queryParams.addAll(_queryParams('', 'removeFriendGroup', removeFriendGroup));

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

  /// Remove Album Users
  ///
  /// Remove participants of an album.
  ///
  /// Parameters:
  ///
  /// * [int] albumId (required):
  ///   the album ID
  ///
  /// * [bool] removeFriendGroup (required):
  ///   remove friend group
  ///
  /// * [String] deviceId:
  ///   a unique ID given by the device (deviceId or accountId required)
  ///
  /// * [int] accountId:
  ///   the account ID of the user (deviceId or accountId required)
  ///
  /// * [String] connections:
  ///   comma separated list of connection IDs
  ///
  /// * [String] connectionGroups:
  ///   comma separated list of connection group IDs
  Future<SirqulResponse?> removeAlbumUsers(int albumId, bool removeFriendGroup, { String? deviceId, int? accountId, String? connections, String? connectionGroups, }) async {
    final response = await removeAlbumUsersWithHttpInfo(albumId, removeFriendGroup,  deviceId: deviceId, accountId: accountId, connections: connections, connectionGroups: connectionGroups, );
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

  /// Search Albums
  ///
  /// Searches on Albums.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] filter (required):
  ///   a comma separated list of filters: * MINE - Return albums that the user has created. * SHARED - Return albums that have been shared to the user via addAlbumUsers, or addUsersToPermissionable . * FOLLOWER - Return albums that have been created by the user's followers (the content needs to have been APPROVED or FEATURED). * FOLLOWING - Return albums that have been created by people who the user is following (the content needs to have been APPROVED or FEATURED). * PUBLIC - Return all PUBLIC albums that have been APPROVED or FEATURED. * ALL_PUBLIC - Return all PUBLIC albums regardless of whether they are approved or not (ignores the approval status). * LIKED - Return all albums that the user has liked. * FEATURED - Return all albums that have been featured. * PENDING - Return all pending albums. 
  ///
  /// * [int] albumTypeId (required):
  ///   id of custom albumType
  ///
  /// * [String] subType (required):
  ///   filter albums with this album sub type
  ///
  /// * [bool] includeInactive (required):
  ///   determines whether to return inactive albums
  ///
  /// * [String] sortField (required):
  ///   the field to sort by. See AlbumApiMap
  ///
  /// * [bool] descending (required):
  ///   determines whether the sorted list is in descending or ascending order
  ///
  /// * [int] start (required):
  ///   the start index for pagination
  ///
  /// * [int] limit (required):
  ///   the limit for pagination (There is a hard limit of 100)
  ///
  /// * [double] range (required):
  ///   the maximum range the album can be from the center (used when sortField=ALBUM_DISTANCE)
  ///
  /// * [bool] includeLiked (required):
  ///   returns whether or not the current logged in user has liked the album
  ///
  /// * [bool] includeFavorited (required):
  ///   returns whether or not the current logged in user has favorited the album
  ///
  /// * [bool] includePermissions (required):
  ///   returns permission details on whether they have read/write/delete permissions etc (client app probably doesn't need this)
  ///
  /// * [int] likePreviewSize (required):
  ///   returns the last X likes
  ///
  /// * [int] assetPreviewSize (required):
  ///   returns the first X assets
  ///
  /// * [int] notePreviewSize (required):
  ///   returns the last X notes
  ///
  /// * [int] connectionPreviewSize (required):
  ///   returns the first X users/connections
  ///
  /// * [int] audiencePreviewSize (required):
  ///   returns the first X audiences. To search on and paginate the remaining audiences, please use the \"/audience/search\" endpoint.
  ///
  /// * [String] deviceId:
  ///   a unique ID given by the device (deviceId or accountId required)
  ///
  /// * [int] accountId:
  ///   the account ID of the user (deviceId or accountId required)
  ///
  /// * [int] connectionAccountId:
  ///   the account ID of the user that the results will be based on. This is used to return albums that this account has liked/favorited.
  ///
  /// * [int] ownerId:
  ///   search on albums that have been created by this account (that the user has permissions to)
  ///
  /// * [String] albumIds:
  ///   search on album within a comma separated list of album IDs (this does not work with sortField=ALBUM_DISTANCE, or when stackSearch=true)
  ///
  /// * [String] excludeAlbumIds:
  ///   Only for CLOUDINDEX mode, exclude albums with ids matching this list
  ///
  /// * [int] mediaId:
  ///   search on albums that are in a particular media offering
  ///
  /// * [String] keyword:
  ///   keyword search string
  ///
  /// * [String] albumType:
  ///   filter albums with this album type
  ///
  /// * [int] limitPerAlbumType:
  ///   When using multiple album types this sets a per-album-type limit (used with cloud index mode)
  ///
  /// * [int] dateCreated:
  ///   return items that have been created before this date (time-stamp in milliseconds)
  ///
  /// * [int] updatedSince:
  ///   return items that have been updated since this date (time-stamp in milliseconds)
  ///
  /// * [int] updatedBefore:
  ///   return items that have been updated before this date (time-stamp in milliseconds)
  ///
  /// * [int] createdSince:
  ///   return items that have been created since this date (time-stamp in milliseconds)
  ///
  /// * [int] createdBefore:
  ///   return items that have been created before this date (time-stamp in milliseconds)
  ///
  /// * [int] startedSince:
  ///   return items that have been started since this date (time-stamp in milliseconds)
  ///
  /// * [int] startedBefore:
  ///   return items that have been started before this date (time-stamp in milliseconds)
  ///
  /// * [int] endedSince:
  ///   return items that have been ended since this date (time-stamp in milliseconds)
  ///
  /// * [int] endedBefore:
  ///   return items that have been ended before this date (time-stamp in milliseconds)
  ///
  /// * [double] latitude:
  ///   the latitude of where the search is centered on (used when sortField=ALBUM_DISTANCE)
  ///
  /// * [double] longitude:
  ///   the longitude of where the search is centered on (used when sortField=ALBUM_DISTANCE)
  ///
  /// * [String] appKey:
  ///   the application key to filter results by application. This is required for consumer searches. Leaving this empty will return albums for the applications that the logged in user owns or has access to.
  ///
  /// * [String] categoryIds:
  ///   return results with categories matching this list
  ///
  /// * [String] categoryFilterIds:
  ///   return results with filters matching this list
  ///
  /// * [String] audienceIds:
  ///   return results with audiences matching this list
  ///
  /// * [String] excludeAudienceIds:
  ///   exclude audiences with ids matching this list
  ///
  /// * [bool] includeCompletable:
  ///   returns the user's completable object for the album if it exists
  ///
  /// * [bool] includeRating:
  ///   returns the user's rating for the album if it exists
  ///
  /// * [String] searchMode:
  ///   The search index mode to use (RDS, LUCENE, or CLOUDINDEX). If not provided will use server default.
  ///
  /// * [bool] stackSearch:
  ///   groups similar albums together that have the same albumTypeId, within a time window defined in stackWindowSize
  ///
  /// * [int] stackWindowSize:
  ///   size of each window for each stack
  ///
  /// * [int] minStackPerPage:
  ///   The minimum number of stacks returned in a response. For example,  first call, minStackPerPage = 20, the API will return at least 20 results
  ///
  /// * [String] stackPaginationIdentifier:
  ///   this is used to tell the system where it left off on the previous previous page, since we can't use start/limit for stackSearch
  ///
  /// * [bool] stackDetails:
  ///   set this to true when making the call to view the albums in the stack
  ///
  /// * [int] flagCountMinimum:
  ///   Return any results that have a minimum of the specified flag count (even ones that have met the flag threshold)
  ///
  /// * [bool] removeFlaggedContent:
  ///   return items that have flagCount >= flagThreshold (controls removal of flagged content)
  ///
  /// * [bool] verifiedFilter:
  ///   setting to true will return only verified albums only, setting to false will return non-verified albums only (leave empty to return both)
  ///
  /// * [String] linkedObjectType:
  ///   filter results by the linkedObjectType
  ///
  /// * [int] linkedObjectId:
  ///   filter results by the linkedObjectId
  ///
  /// * [int] orderAudienceId:
  ///   determines whether to use the order assigned via the /album/order/_* api (which is tied to an audience)
  ///
  /// * [bool] ignoreDefaultAppFilter:
  ///   if true, ignore the application's default app filter when searching
  ///
  /// * [String] searchExpression:
  ///   Advanced search expression to be used by the server
  ///
  /// * [bool] generateAlbums:
  ///   If true and results are empty, attempt to generate albums via templates
  Future<Response> searchAlbumsWithHttpInfo(String filter, int albumTypeId, String subType, bool includeInactive, String sortField, bool descending, int start, int limit, double range, bool includeLiked, bool includeFavorited, bool includePermissions, int likePreviewSize, int assetPreviewSize, int notePreviewSize, int connectionPreviewSize, int audiencePreviewSize, { String? deviceId, int? accountId, int? connectionAccountId, int? ownerId, String? albumIds, String? excludeAlbumIds, int? mediaId, String? keyword, String? albumType, int? limitPerAlbumType, int? dateCreated, int? updatedSince, int? updatedBefore, int? createdSince, int? createdBefore, int? startedSince, int? startedBefore, int? endedSince, int? endedBefore, double? latitude, double? longitude, String? appKey, String? categoryIds, String? categoryFilterIds, String? audienceIds, String? excludeAudienceIds, bool? includeCompletable, bool? includeRating, String? searchMode, bool? stackSearch, int? stackWindowSize, int? minStackPerPage, String? stackPaginationIdentifier, bool? stackDetails, int? flagCountMinimum, bool? removeFlaggedContent, bool? verifiedFilter, String? linkedObjectType, int? linkedObjectId, int? orderAudienceId, bool? ignoreDefaultAppFilter, String? searchExpression, bool? generateAlbums, }) async {
    // ignore: prefer_const_declarations
    final path = r'/album/search';

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
    if (connectionAccountId != null) {
      queryParams.addAll(_queryParams('', 'connectionAccountId', connectionAccountId));
    }
    if (ownerId != null) {
      queryParams.addAll(_queryParams('', 'ownerId', ownerId));
    }
    if (albumIds != null) {
      queryParams.addAll(_queryParams('', 'albumIds', albumIds));
    }
    if (excludeAlbumIds != null) {
      queryParams.addAll(_queryParams('', 'excludeAlbumIds', excludeAlbumIds));
    }
    if (mediaId != null) {
      queryParams.addAll(_queryParams('', 'mediaId', mediaId));
    }
    if (keyword != null) {
      queryParams.addAll(_queryParams('', 'keyword', keyword));
    }
      queryParams.addAll(_queryParams('', 'filter', filter));
    if (albumType != null) {
      queryParams.addAll(_queryParams('', 'albumType', albumType));
    }
      queryParams.addAll(_queryParams('', 'albumTypeId', albumTypeId));
      queryParams.addAll(_queryParams('', 'subType', subType));
      queryParams.addAll(_queryParams('', 'includeInactive', includeInactive));
      queryParams.addAll(_queryParams('', 'sortField', sortField));
      queryParams.addAll(_queryParams('', 'descending', descending));
      queryParams.addAll(_queryParams('', 'start', start));
      queryParams.addAll(_queryParams('', 'limit', limit));
    if (limitPerAlbumType != null) {
      queryParams.addAll(_queryParams('', 'limitPerAlbumType', limitPerAlbumType));
    }
    if (dateCreated != null) {
      queryParams.addAll(_queryParams('', 'dateCreated', dateCreated));
    }
    if (updatedSince != null) {
      queryParams.addAll(_queryParams('', 'updatedSince', updatedSince));
    }
    if (updatedBefore != null) {
      queryParams.addAll(_queryParams('', 'updatedBefore', updatedBefore));
    }
    if (createdSince != null) {
      queryParams.addAll(_queryParams('', 'createdSince', createdSince));
    }
    if (createdBefore != null) {
      queryParams.addAll(_queryParams('', 'createdBefore', createdBefore));
    }
    if (startedSince != null) {
      queryParams.addAll(_queryParams('', 'startedSince', startedSince));
    }
    if (startedBefore != null) {
      queryParams.addAll(_queryParams('', 'startedBefore', startedBefore));
    }
    if (endedSince != null) {
      queryParams.addAll(_queryParams('', 'endedSince', endedSince));
    }
    if (endedBefore != null) {
      queryParams.addAll(_queryParams('', 'endedBefore', endedBefore));
    }
    if (latitude != null) {
      queryParams.addAll(_queryParams('', 'latitude', latitude));
    }
    if (longitude != null) {
      queryParams.addAll(_queryParams('', 'longitude', longitude));
    }
      queryParams.addAll(_queryParams('', 'range', range));
    if (appKey != null) {
      queryParams.addAll(_queryParams('', 'appKey', appKey));
    }
    if (categoryIds != null) {
      queryParams.addAll(_queryParams('', 'categoryIds', categoryIds));
    }
    if (categoryFilterIds != null) {
      queryParams.addAll(_queryParams('', 'categoryFilterIds', categoryFilterIds));
    }
    if (audienceIds != null) {
      queryParams.addAll(_queryParams('', 'audienceIds', audienceIds));
    }
    if (excludeAudienceIds != null) {
      queryParams.addAll(_queryParams('', 'excludeAudienceIds', excludeAudienceIds));
    }
      queryParams.addAll(_queryParams('', 'includeLiked', includeLiked));
      queryParams.addAll(_queryParams('', 'includeFavorited', includeFavorited));
      queryParams.addAll(_queryParams('', 'includePermissions', includePermissions));
    if (includeCompletable != null) {
      queryParams.addAll(_queryParams('', 'includeCompletable', includeCompletable));
    }
    if (includeRating != null) {
      queryParams.addAll(_queryParams('', 'includeRating', includeRating));
    }
      queryParams.addAll(_queryParams('', 'likePreviewSize', likePreviewSize));
      queryParams.addAll(_queryParams('', 'assetPreviewSize', assetPreviewSize));
      queryParams.addAll(_queryParams('', 'notePreviewSize', notePreviewSize));
      queryParams.addAll(_queryParams('', 'connectionPreviewSize', connectionPreviewSize));
      queryParams.addAll(_queryParams('', 'audiencePreviewSize', audiencePreviewSize));
    if (searchMode != null) {
      queryParams.addAll(_queryParams('', 'searchMode', searchMode));
    }
    if (stackSearch != null) {
      queryParams.addAll(_queryParams('', 'stackSearch', stackSearch));
    }
    if (stackWindowSize != null) {
      queryParams.addAll(_queryParams('', 'stackWindowSize', stackWindowSize));
    }
    if (minStackPerPage != null) {
      queryParams.addAll(_queryParams('', 'minStackPerPage', minStackPerPage));
    }
    if (stackPaginationIdentifier != null) {
      queryParams.addAll(_queryParams('', 'stackPaginationIdentifier', stackPaginationIdentifier));
    }
    if (stackDetails != null) {
      queryParams.addAll(_queryParams('', 'stackDetails', stackDetails));
    }
    if (flagCountMinimum != null) {
      queryParams.addAll(_queryParams('', 'flagCountMinimum', flagCountMinimum));
    }
    if (removeFlaggedContent != null) {
      queryParams.addAll(_queryParams('', 'removeFlaggedContent', removeFlaggedContent));
    }
    if (verifiedFilter != null) {
      queryParams.addAll(_queryParams('', 'verifiedFilter', verifiedFilter));
    }
    if (linkedObjectType != null) {
      queryParams.addAll(_queryParams('', 'linkedObjectType', linkedObjectType));
    }
    if (linkedObjectId != null) {
      queryParams.addAll(_queryParams('', 'linkedObjectId', linkedObjectId));
    }
    if (orderAudienceId != null) {
      queryParams.addAll(_queryParams('', 'orderAudienceId', orderAudienceId));
    }
    if (ignoreDefaultAppFilter != null) {
      queryParams.addAll(_queryParams('', 'ignoreDefaultAppFilter', ignoreDefaultAppFilter));
    }
    if (searchExpression != null) {
      queryParams.addAll(_queryParams('', 'searchExpression', searchExpression));
    }
    if (generateAlbums != null) {
      queryParams.addAll(_queryParams('', 'generateAlbums', generateAlbums));
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

  /// Search Albums
  ///
  /// Searches on Albums.
  ///
  /// Parameters:
  ///
  /// * [String] filter (required):
  ///   a comma separated list of filters: * MINE - Return albums that the user has created. * SHARED - Return albums that have been shared to the user via addAlbumUsers, or addUsersToPermissionable . * FOLLOWER - Return albums that have been created by the user's followers (the content needs to have been APPROVED or FEATURED). * FOLLOWING - Return albums that have been created by people who the user is following (the content needs to have been APPROVED or FEATURED). * PUBLIC - Return all PUBLIC albums that have been APPROVED or FEATURED. * ALL_PUBLIC - Return all PUBLIC albums regardless of whether they are approved or not (ignores the approval status). * LIKED - Return all albums that the user has liked. * FEATURED - Return all albums that have been featured. * PENDING - Return all pending albums. 
  ///
  /// * [int] albumTypeId (required):
  ///   id of custom albumType
  ///
  /// * [String] subType (required):
  ///   filter albums with this album sub type
  ///
  /// * [bool] includeInactive (required):
  ///   determines whether to return inactive albums
  ///
  /// * [String] sortField (required):
  ///   the field to sort by. See AlbumApiMap
  ///
  /// * [bool] descending (required):
  ///   determines whether the sorted list is in descending or ascending order
  ///
  /// * [int] start (required):
  ///   the start index for pagination
  ///
  /// * [int] limit (required):
  ///   the limit for pagination (There is a hard limit of 100)
  ///
  /// * [double] range (required):
  ///   the maximum range the album can be from the center (used when sortField=ALBUM_DISTANCE)
  ///
  /// * [bool] includeLiked (required):
  ///   returns whether or not the current logged in user has liked the album
  ///
  /// * [bool] includeFavorited (required):
  ///   returns whether or not the current logged in user has favorited the album
  ///
  /// * [bool] includePermissions (required):
  ///   returns permission details on whether they have read/write/delete permissions etc (client app probably doesn't need this)
  ///
  /// * [int] likePreviewSize (required):
  ///   returns the last X likes
  ///
  /// * [int] assetPreviewSize (required):
  ///   returns the first X assets
  ///
  /// * [int] notePreviewSize (required):
  ///   returns the last X notes
  ///
  /// * [int] connectionPreviewSize (required):
  ///   returns the first X users/connections
  ///
  /// * [int] audiencePreviewSize (required):
  ///   returns the first X audiences. To search on and paginate the remaining audiences, please use the \"/audience/search\" endpoint.
  ///
  /// * [String] deviceId:
  ///   a unique ID given by the device (deviceId or accountId required)
  ///
  /// * [int] accountId:
  ///   the account ID of the user (deviceId or accountId required)
  ///
  /// * [int] connectionAccountId:
  ///   the account ID of the user that the results will be based on. This is used to return albums that this account has liked/favorited.
  ///
  /// * [int] ownerId:
  ///   search on albums that have been created by this account (that the user has permissions to)
  ///
  /// * [String] albumIds:
  ///   search on album within a comma separated list of album IDs (this does not work with sortField=ALBUM_DISTANCE, or when stackSearch=true)
  ///
  /// * [String] excludeAlbumIds:
  ///   Only for CLOUDINDEX mode, exclude albums with ids matching this list
  ///
  /// * [int] mediaId:
  ///   search on albums that are in a particular media offering
  ///
  /// * [String] keyword:
  ///   keyword search string
  ///
  /// * [String] albumType:
  ///   filter albums with this album type
  ///
  /// * [int] limitPerAlbumType:
  ///   When using multiple album types this sets a per-album-type limit (used with cloud index mode)
  ///
  /// * [int] dateCreated:
  ///   return items that have been created before this date (time-stamp in milliseconds)
  ///
  /// * [int] updatedSince:
  ///   return items that have been updated since this date (time-stamp in milliseconds)
  ///
  /// * [int] updatedBefore:
  ///   return items that have been updated before this date (time-stamp in milliseconds)
  ///
  /// * [int] createdSince:
  ///   return items that have been created since this date (time-stamp in milliseconds)
  ///
  /// * [int] createdBefore:
  ///   return items that have been created before this date (time-stamp in milliseconds)
  ///
  /// * [int] startedSince:
  ///   return items that have been started since this date (time-stamp in milliseconds)
  ///
  /// * [int] startedBefore:
  ///   return items that have been started before this date (time-stamp in milliseconds)
  ///
  /// * [int] endedSince:
  ///   return items that have been ended since this date (time-stamp in milliseconds)
  ///
  /// * [int] endedBefore:
  ///   return items that have been ended before this date (time-stamp in milliseconds)
  ///
  /// * [double] latitude:
  ///   the latitude of where the search is centered on (used when sortField=ALBUM_DISTANCE)
  ///
  /// * [double] longitude:
  ///   the longitude of where the search is centered on (used when sortField=ALBUM_DISTANCE)
  ///
  /// * [String] appKey:
  ///   the application key to filter results by application. This is required for consumer searches. Leaving this empty will return albums for the applications that the logged in user owns or has access to.
  ///
  /// * [String] categoryIds:
  ///   return results with categories matching this list
  ///
  /// * [String] categoryFilterIds:
  ///   return results with filters matching this list
  ///
  /// * [String] audienceIds:
  ///   return results with audiences matching this list
  ///
  /// * [String] excludeAudienceIds:
  ///   exclude audiences with ids matching this list
  ///
  /// * [bool] includeCompletable:
  ///   returns the user's completable object for the album if it exists
  ///
  /// * [bool] includeRating:
  ///   returns the user's rating for the album if it exists
  ///
  /// * [String] searchMode:
  ///   The search index mode to use (RDS, LUCENE, or CLOUDINDEX). If not provided will use server default.
  ///
  /// * [bool] stackSearch:
  ///   groups similar albums together that have the same albumTypeId, within a time window defined in stackWindowSize
  ///
  /// * [int] stackWindowSize:
  ///   size of each window for each stack
  ///
  /// * [int] minStackPerPage:
  ///   The minimum number of stacks returned in a response. For example,  first call, minStackPerPage = 20, the API will return at least 20 results
  ///
  /// * [String] stackPaginationIdentifier:
  ///   this is used to tell the system where it left off on the previous previous page, since we can't use start/limit for stackSearch
  ///
  /// * [bool] stackDetails:
  ///   set this to true when making the call to view the albums in the stack
  ///
  /// * [int] flagCountMinimum:
  ///   Return any results that have a minimum of the specified flag count (even ones that have met the flag threshold)
  ///
  /// * [bool] removeFlaggedContent:
  ///   return items that have flagCount >= flagThreshold (controls removal of flagged content)
  ///
  /// * [bool] verifiedFilter:
  ///   setting to true will return only verified albums only, setting to false will return non-verified albums only (leave empty to return both)
  ///
  /// * [String] linkedObjectType:
  ///   filter results by the linkedObjectType
  ///
  /// * [int] linkedObjectId:
  ///   filter results by the linkedObjectId
  ///
  /// * [int] orderAudienceId:
  ///   determines whether to use the order assigned via the /album/order/_* api (which is tied to an audience)
  ///
  /// * [bool] ignoreDefaultAppFilter:
  ///   if true, ignore the application's default app filter when searching
  ///
  /// * [String] searchExpression:
  ///   Advanced search expression to be used by the server
  ///
  /// * [bool] generateAlbums:
  ///   If true and results are empty, attempt to generate albums via templates
  Future<List<AlbumFullResponse>?> searchAlbums(String filter, int albumTypeId, String subType, bool includeInactive, String sortField, bool descending, int start, int limit, double range, bool includeLiked, bool includeFavorited, bool includePermissions, int likePreviewSize, int assetPreviewSize, int notePreviewSize, int connectionPreviewSize, int audiencePreviewSize, { String? deviceId, int? accountId, int? connectionAccountId, int? ownerId, String? albumIds, String? excludeAlbumIds, int? mediaId, String? keyword, String? albumType, int? limitPerAlbumType, int? dateCreated, int? updatedSince, int? updatedBefore, int? createdSince, int? createdBefore, int? startedSince, int? startedBefore, int? endedSince, int? endedBefore, double? latitude, double? longitude, String? appKey, String? categoryIds, String? categoryFilterIds, String? audienceIds, String? excludeAudienceIds, bool? includeCompletable, bool? includeRating, String? searchMode, bool? stackSearch, int? stackWindowSize, int? minStackPerPage, String? stackPaginationIdentifier, bool? stackDetails, int? flagCountMinimum, bool? removeFlaggedContent, bool? verifiedFilter, String? linkedObjectType, int? linkedObjectId, int? orderAudienceId, bool? ignoreDefaultAppFilter, String? searchExpression, bool? generateAlbums, }) async {
    final response = await searchAlbumsWithHttpInfo(filter, albumTypeId, subType, includeInactive, sortField, descending, start, limit, range, includeLiked, includeFavorited, includePermissions, likePreviewSize, assetPreviewSize, notePreviewSize, connectionPreviewSize, audiencePreviewSize,  deviceId: deviceId, accountId: accountId, connectionAccountId: connectionAccountId, ownerId: ownerId, albumIds: albumIds, excludeAlbumIds: excludeAlbumIds, mediaId: mediaId, keyword: keyword, albumType: albumType, limitPerAlbumType: limitPerAlbumType, dateCreated: dateCreated, updatedSince: updatedSince, updatedBefore: updatedBefore, createdSince: createdSince, createdBefore: createdBefore, startedSince: startedSince, startedBefore: startedBefore, endedSince: endedSince, endedBefore: endedBefore, latitude: latitude, longitude: longitude, appKey: appKey, categoryIds: categoryIds, categoryFilterIds: categoryFilterIds, audienceIds: audienceIds, excludeAudienceIds: excludeAudienceIds, includeCompletable: includeCompletable, includeRating: includeRating, searchMode: searchMode, stackSearch: stackSearch, stackWindowSize: stackWindowSize, minStackPerPage: minStackPerPage, stackPaginationIdentifier: stackPaginationIdentifier, stackDetails: stackDetails, flagCountMinimum: flagCountMinimum, removeFlaggedContent: removeFlaggedContent, verifiedFilter: verifiedFilter, linkedObjectType: linkedObjectType, linkedObjectId: linkedObjectId, orderAudienceId: orderAudienceId, ignoreDefaultAppFilter: ignoreDefaultAppFilter, searchExpression: searchExpression, generateAlbums: generateAlbums, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<AlbumFullResponse>') as List)
        .cast<AlbumFullResponse>()
        .toList(growable: false);

    }
    return null;
  }

  /// Update Album
  ///
  /// Update an Album.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] albumId (required):
  ///   the ID of the album to update
  ///
  /// * [String] deviceId:
  ///   a unique ID given by the device (deviceId or accountId required)
  ///
  /// * [int] accountId:
  ///   the account ID of the user (deviceId or accountId required)
  ///
  /// * [String] assetsToAdd:
  ///   Comma separated list of asset IDs to add to the album's asset list (use \"assetId\" for setting the cover of the album)
  ///
  /// * [String] assetsToRemove:
  ///   Comma separated list of asset IDs to remove from the album's asset list
  ///
  /// * [int] assetId:
  ///   the cover asset ID
  ///
  /// * [MultipartFile] media:
  ///   a MultipartFile containing the cover image of the album (this will only be used if \"assetId\" is empty)
  ///
  /// * [String] mediaURL:
  ///   this can be used if the \"media\" is a link (this will only be used if \"assetId\" and media are empty)
  ///
  /// * [bool] active:
  ///   determines whether the album is active or inactive
  ///
  /// * [String] title:
  ///   the title of the album
  ///
  /// * [int] startDate:
  ///   the start date
  ///
  /// * [int] endDate:
  ///   the end date
  ///
  /// * [String] tags:
  ///   the tags
  ///
  /// * [String] description:
  ///   the description of the album
  ///
  /// * [String] albumType:
  ///   a custom field used for aggregation and searching
  ///
  /// * [int] albumTypeId:
  ///   a custom indexed number used for aggregation and searching
  ///
  /// * [String] subType:
  ///   a custom string field used for aggregation and searching
  ///
  /// * [bool] publicRead:
  ///   determines whether the album's participants have read permissions
  ///
  /// * [bool] publicWrite:
  ///   determines whether the album's participants have write permissions
  ///
  /// * [bool] publicDelete:
  ///   determines whether the album's participants have delete permissions
  ///
  /// * [bool] publicAdd:
  ///   determines whether the album's participants have add permissions
  ///
  /// * [double] latitude:
  ///   latitude used to update the album's location
  ///
  /// * [double] longitude:
  ///   longitude used to update the album's location
  ///
  /// * [String] locationDescription:
  ///   the location description
  ///
  /// * [String] visibility:
  ///   the determines the album's participants (PUBLIC - includes everyone in the system as a potential participant, PRIVATE - only considers people who have been invited as participants)
  ///
  /// * [String] cellPhone:
  ///   the cell phone number
  ///
  /// * [String] streetAddress:
  ///   The street address of the location
  ///
  /// * [String] streetAddress2:
  ///   Additional address information (such as a suite number, floor number, building name, or PO Box)
  ///
  /// * [String] city:
  ///   The city of the location
  ///
  /// * [String] state:
  ///   The state of of the location
  ///
  /// * [String] postalCode:
  ///   The postal code of the location
  ///
  /// * [String] fullAddress:
  ///   The full address of the location which should include the street address, city, state, and postal code
  ///
  /// * [bool] anonymous:
  ///   determines whether the album is posted anonymously
  ///
  /// * [String] metaData:
  ///   External custom client defined data
  ///
  /// * [String] categoryIds:
  ///   comma separated category ids string associated with the Album
  ///
  /// * [String] categoryFilterIds:
  ///   comma separated filter ids string associated with the Album
  ///
  /// * [String] audienceIds:
  ///   comma separated audience ids string associated with the album
  ///
  /// * [String] audienceIdsToAdd:
  ///   comma separated audience ids to add to the album
  ///
  /// * [String] audienceIdsToRemove:
  ///   comma separated audience ids to remove from the album (overrides audienceIds and audienceIdsToAdd)
  ///
  /// * [bool] includeAllAppUsersAsMembers:
  ///   determines whether to include all app users as members (only admins of the app can do this)
  ///
  /// * [bool] includeAudiencesAsMembers:
  ///   determines whether to include all users of the audiences as members (only admins of the app can do this)
  ///
  /// * [String] audienceOperator:
  ///   determines whether to use ands or ors when using the audience list to add users
  ///
  /// * [String] linkedObjectType:
  ///   sets a linked object so that it can be returned as part of the album response
  ///
  /// * [int] linkedObjectId:
  ///   sets a linked object id so that it can be returned as part of the album response
  ///
  /// * [bool] indexNow:
  ///   determines whether the album should be indexed immediately
  Future<Response> updateAlbumCollectionWithHttpInfo(int albumId, { String? deviceId, int? accountId, String? assetsToAdd, String? assetsToRemove, int? assetId, MultipartFile? media, String? mediaURL, bool? active, String? title, int? startDate, int? endDate, String? tags, String? description, String? albumType, int? albumTypeId, String? subType, bool? publicRead, bool? publicWrite, bool? publicDelete, bool? publicAdd, double? latitude, double? longitude, String? locationDescription, String? visibility, String? cellPhone, String? streetAddress, String? streetAddress2, String? city, String? state, String? postalCode, String? fullAddress, bool? anonymous, String? metaData, String? categoryIds, String? categoryFilterIds, String? audienceIds, String? audienceIdsToAdd, String? audienceIdsToRemove, bool? includeAllAppUsersAsMembers, bool? includeAudiencesAsMembers, String? audienceOperator, String? linkedObjectType, int? linkedObjectId, bool? indexNow, }) async {
    // ignore: prefer_const_declarations
    final path = r'/album/update';

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
      queryParams.addAll(_queryParams('', 'albumId', albumId));
    if (assetsToAdd != null) {
      queryParams.addAll(_queryParams('', 'assetsToAdd', assetsToAdd));
    }
    if (assetsToRemove != null) {
      queryParams.addAll(_queryParams('', 'assetsToRemove', assetsToRemove));
    }
    if (assetId != null) {
      queryParams.addAll(_queryParams('', 'assetId', assetId));
    }
    if (media != null) {
      queryParams.addAll(_queryParams('', 'media', media));
    }
    if (mediaURL != null) {
      queryParams.addAll(_queryParams('', 'mediaURL', mediaURL));
    }
    if (active != null) {
      queryParams.addAll(_queryParams('', 'active', active));
    }
    if (title != null) {
      queryParams.addAll(_queryParams('', 'title', title));
    }
    if (startDate != null) {
      queryParams.addAll(_queryParams('', 'startDate', startDate));
    }
    if (endDate != null) {
      queryParams.addAll(_queryParams('', 'endDate', endDate));
    }
    if (tags != null) {
      queryParams.addAll(_queryParams('', 'tags', tags));
    }
    if (description != null) {
      queryParams.addAll(_queryParams('', 'description', description));
    }
    if (albumType != null) {
      queryParams.addAll(_queryParams('', 'albumType', albumType));
    }
    if (albumTypeId != null) {
      queryParams.addAll(_queryParams('', 'albumTypeId', albumTypeId));
    }
    if (subType != null) {
      queryParams.addAll(_queryParams('', 'subType', subType));
    }
    if (publicRead != null) {
      queryParams.addAll(_queryParams('', 'publicRead', publicRead));
    }
    if (publicWrite != null) {
      queryParams.addAll(_queryParams('', 'publicWrite', publicWrite));
    }
    if (publicDelete != null) {
      queryParams.addAll(_queryParams('', 'publicDelete', publicDelete));
    }
    if (publicAdd != null) {
      queryParams.addAll(_queryParams('', 'publicAdd', publicAdd));
    }
    if (latitude != null) {
      queryParams.addAll(_queryParams('', 'latitude', latitude));
    }
    if (longitude != null) {
      queryParams.addAll(_queryParams('', 'longitude', longitude));
    }
    if (locationDescription != null) {
      queryParams.addAll(_queryParams('', 'locationDescription', locationDescription));
    }
    if (visibility != null) {
      queryParams.addAll(_queryParams('', 'visibility', visibility));
    }
    if (cellPhone != null) {
      queryParams.addAll(_queryParams('', 'cellPhone', cellPhone));
    }
    if (streetAddress != null) {
      queryParams.addAll(_queryParams('', 'streetAddress', streetAddress));
    }
    if (streetAddress2 != null) {
      queryParams.addAll(_queryParams('', 'streetAddress2', streetAddress2));
    }
    if (city != null) {
      queryParams.addAll(_queryParams('', 'city', city));
    }
    if (state != null) {
      queryParams.addAll(_queryParams('', 'state', state));
    }
    if (postalCode != null) {
      queryParams.addAll(_queryParams('', 'postalCode', postalCode));
    }
    if (fullAddress != null) {
      queryParams.addAll(_queryParams('', 'fullAddress', fullAddress));
    }
    if (anonymous != null) {
      queryParams.addAll(_queryParams('', 'anonymous', anonymous));
    }
    if (metaData != null) {
      queryParams.addAll(_queryParams('', 'metaData', metaData));
    }
    if (categoryIds != null) {
      queryParams.addAll(_queryParams('', 'categoryIds', categoryIds));
    }
    if (categoryFilterIds != null) {
      queryParams.addAll(_queryParams('', 'categoryFilterIds', categoryFilterIds));
    }
    if (audienceIds != null) {
      queryParams.addAll(_queryParams('', 'audienceIds', audienceIds));
    }
    if (audienceIdsToAdd != null) {
      queryParams.addAll(_queryParams('', 'audienceIdsToAdd', audienceIdsToAdd));
    }
    if (audienceIdsToRemove != null) {
      queryParams.addAll(_queryParams('', 'audienceIdsToRemove', audienceIdsToRemove));
    }
    if (includeAllAppUsersAsMembers != null) {
      queryParams.addAll(_queryParams('', 'includeAllAppUsersAsMembers', includeAllAppUsersAsMembers));
    }
    if (includeAudiencesAsMembers != null) {
      queryParams.addAll(_queryParams('', 'includeAudiencesAsMembers', includeAudiencesAsMembers));
    }
    if (audienceOperator != null) {
      queryParams.addAll(_queryParams('', 'audienceOperator', audienceOperator));
    }
    if (linkedObjectType != null) {
      queryParams.addAll(_queryParams('', 'linkedObjectType', linkedObjectType));
    }
    if (linkedObjectId != null) {
      queryParams.addAll(_queryParams('', 'linkedObjectId', linkedObjectId));
    }
    if (indexNow != null) {
      queryParams.addAll(_queryParams('', 'indexNow', indexNow));
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

  /// Update Album
  ///
  /// Update an Album.
  ///
  /// Parameters:
  ///
  /// * [int] albumId (required):
  ///   the ID of the album to update
  ///
  /// * [String] deviceId:
  ///   a unique ID given by the device (deviceId or accountId required)
  ///
  /// * [int] accountId:
  ///   the account ID of the user (deviceId or accountId required)
  ///
  /// * [String] assetsToAdd:
  ///   Comma separated list of asset IDs to add to the album's asset list (use \"assetId\" for setting the cover of the album)
  ///
  /// * [String] assetsToRemove:
  ///   Comma separated list of asset IDs to remove from the album's asset list
  ///
  /// * [int] assetId:
  ///   the cover asset ID
  ///
  /// * [MultipartFile] media:
  ///   a MultipartFile containing the cover image of the album (this will only be used if \"assetId\" is empty)
  ///
  /// * [String] mediaURL:
  ///   this can be used if the \"media\" is a link (this will only be used if \"assetId\" and media are empty)
  ///
  /// * [bool] active:
  ///   determines whether the album is active or inactive
  ///
  /// * [String] title:
  ///   the title of the album
  ///
  /// * [int] startDate:
  ///   the start date
  ///
  /// * [int] endDate:
  ///   the end date
  ///
  /// * [String] tags:
  ///   the tags
  ///
  /// * [String] description:
  ///   the description of the album
  ///
  /// * [String] albumType:
  ///   a custom field used for aggregation and searching
  ///
  /// * [int] albumTypeId:
  ///   a custom indexed number used for aggregation and searching
  ///
  /// * [String] subType:
  ///   a custom string field used for aggregation and searching
  ///
  /// * [bool] publicRead:
  ///   determines whether the album's participants have read permissions
  ///
  /// * [bool] publicWrite:
  ///   determines whether the album's participants have write permissions
  ///
  /// * [bool] publicDelete:
  ///   determines whether the album's participants have delete permissions
  ///
  /// * [bool] publicAdd:
  ///   determines whether the album's participants have add permissions
  ///
  /// * [double] latitude:
  ///   latitude used to update the album's location
  ///
  /// * [double] longitude:
  ///   longitude used to update the album's location
  ///
  /// * [String] locationDescription:
  ///   the location description
  ///
  /// * [String] visibility:
  ///   the determines the album's participants (PUBLIC - includes everyone in the system as a potential participant, PRIVATE - only considers people who have been invited as participants)
  ///
  /// * [String] cellPhone:
  ///   the cell phone number
  ///
  /// * [String] streetAddress:
  ///   The street address of the location
  ///
  /// * [String] streetAddress2:
  ///   Additional address information (such as a suite number, floor number, building name, or PO Box)
  ///
  /// * [String] city:
  ///   The city of the location
  ///
  /// * [String] state:
  ///   The state of of the location
  ///
  /// * [String] postalCode:
  ///   The postal code of the location
  ///
  /// * [String] fullAddress:
  ///   The full address of the location which should include the street address, city, state, and postal code
  ///
  /// * [bool] anonymous:
  ///   determines whether the album is posted anonymously
  ///
  /// * [String] metaData:
  ///   External custom client defined data
  ///
  /// * [String] categoryIds:
  ///   comma separated category ids string associated with the Album
  ///
  /// * [String] categoryFilterIds:
  ///   comma separated filter ids string associated with the Album
  ///
  /// * [String] audienceIds:
  ///   comma separated audience ids string associated with the album
  ///
  /// * [String] audienceIdsToAdd:
  ///   comma separated audience ids to add to the album
  ///
  /// * [String] audienceIdsToRemove:
  ///   comma separated audience ids to remove from the album (overrides audienceIds and audienceIdsToAdd)
  ///
  /// * [bool] includeAllAppUsersAsMembers:
  ///   determines whether to include all app users as members (only admins of the app can do this)
  ///
  /// * [bool] includeAudiencesAsMembers:
  ///   determines whether to include all users of the audiences as members (only admins of the app can do this)
  ///
  /// * [String] audienceOperator:
  ///   determines whether to use ands or ors when using the audience list to add users
  ///
  /// * [String] linkedObjectType:
  ///   sets a linked object so that it can be returned as part of the album response
  ///
  /// * [int] linkedObjectId:
  ///   sets a linked object id so that it can be returned as part of the album response
  ///
  /// * [bool] indexNow:
  ///   determines whether the album should be indexed immediately
  Future<AlbumResponse?> updateAlbumCollection(int albumId, { String? deviceId, int? accountId, String? assetsToAdd, String? assetsToRemove, int? assetId, MultipartFile? media, String? mediaURL, bool? active, String? title, int? startDate, int? endDate, String? tags, String? description, String? albumType, int? albumTypeId, String? subType, bool? publicRead, bool? publicWrite, bool? publicDelete, bool? publicAdd, double? latitude, double? longitude, String? locationDescription, String? visibility, String? cellPhone, String? streetAddress, String? streetAddress2, String? city, String? state, String? postalCode, String? fullAddress, bool? anonymous, String? metaData, String? categoryIds, String? categoryFilterIds, String? audienceIds, String? audienceIdsToAdd, String? audienceIdsToRemove, bool? includeAllAppUsersAsMembers, bool? includeAudiencesAsMembers, String? audienceOperator, String? linkedObjectType, int? linkedObjectId, bool? indexNow, }) async {
    final response = await updateAlbumCollectionWithHttpInfo(albumId,  deviceId: deviceId, accountId: accountId, assetsToAdd: assetsToAdd, assetsToRemove: assetsToRemove, assetId: assetId, media: media, mediaURL: mediaURL, active: active, title: title, startDate: startDate, endDate: endDate, tags: tags, description: description, albumType: albumType, albumTypeId: albumTypeId, subType: subType, publicRead: publicRead, publicWrite: publicWrite, publicDelete: publicDelete, publicAdd: publicAdd, latitude: latitude, longitude: longitude, locationDescription: locationDescription, visibility: visibility, cellPhone: cellPhone, streetAddress: streetAddress, streetAddress2: streetAddress2, city: city, state: state, postalCode: postalCode, fullAddress: fullAddress, anonymous: anonymous, metaData: metaData, categoryIds: categoryIds, categoryFilterIds: categoryFilterIds, audienceIds: audienceIds, audienceIdsToAdd: audienceIdsToAdd, audienceIdsToRemove: audienceIdsToRemove, includeAllAppUsersAsMembers: includeAllAppUsersAsMembers, includeAudiencesAsMembers: includeAudiencesAsMembers, audienceOperator: audienceOperator, linkedObjectType: linkedObjectType, linkedObjectId: linkedObjectId, indexNow: indexNow, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'AlbumResponse',) as AlbumResponse;
    
    }
    return null;
  }
}
