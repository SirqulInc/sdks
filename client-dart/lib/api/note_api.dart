//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class NoteApi {
  NoteApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Batch Note Operation
  ///
  /// Perform a batch operation on notes for a notable object (for example: DELETE_ALL_NOTES_IN_NOTABLE). 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] notableId (required):
  ///   The id of the notable object the batch operation will affect
  ///
  /// * [String] notableType (required):
  ///   The notable object type (for example ALBUM, ASSET, OFFER, etc.)
  ///
  /// * [String] deviceId:
  ///   The device id (deviceId or accountId required)
  ///
  /// * [int] accountId:
  ///   The account id of the user (deviceId or accountId required)
  ///
  /// * [String] batchOperation:
  ///   The batch operation to perform (e.g., DELETE_ALL_NOTES_IN_NOTABLE). Optional.
  Future<Response> batchOperationWithHttpInfo(int notableId, String notableType, { String? deviceId, int? accountId, String? batchOperation, }) async {
    // ignore: prefer_const_declarations
    final path = r'/note/batch';

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
      queryParams.addAll(_queryParams('', 'notableId', notableId));
      queryParams.addAll(_queryParams('', 'notableType', notableType));
    if (batchOperation != null) {
      queryParams.addAll(_queryParams('', 'batchOperation', batchOperation));
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

  /// Batch Note Operation
  ///
  /// Perform a batch operation on notes for a notable object (for example: DELETE_ALL_NOTES_IN_NOTABLE). 
  ///
  /// Parameters:
  ///
  /// * [int] notableId (required):
  ///   The id of the notable object the batch operation will affect
  ///
  /// * [String] notableType (required):
  ///   The notable object type (for example ALBUM, ASSET, OFFER, etc.)
  ///
  /// * [String] deviceId:
  ///   The device id (deviceId or accountId required)
  ///
  /// * [int] accountId:
  ///   The account id of the user (deviceId or accountId required)
  ///
  /// * [String] batchOperation:
  ///   The batch operation to perform (e.g., DELETE_ALL_NOTES_IN_NOTABLE). Optional.
  Future<SirqulResponse?> batchOperation(int notableId, String notableType, { String? deviceId, int? accountId, String? batchOperation, }) async {
    final response = await batchOperationWithHttpInfo(notableId, notableType,  deviceId: deviceId, accountId: accountId, batchOperation: batchOperation, );
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

  /// Create Note
  ///
  /// This is used to leave a comment (note) on a notable object (i.e. albums, album contests, assets, game levels, offers, offer locations, retailers, retailer locations, and theme descriptors). Leaving a comment on a notable object will be visiable to everyone who has access to view the object.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] comment (required):
  ///   The message the user wishes to leave a comment on
  ///
  /// * [String] deviceId:
  ///   The unique device identifier that made the request (either deviceId or accountId must be used)
  ///
  /// * [int] accountId:
  ///   The unique accountId that made the request (either deviceId or accountId must be used)
  ///
  /// * [String] notableType:
  ///   The notable object type {ALBUM, ALBUM_CONTEST, ASSET, GAME_LEVEL, OFFER, OFFER_LOCATION, RETAILER, RETAILER_LOCATION, THEME_DESCRIPTOR}
  ///
  /// * [int] notableId:
  ///   The id of the notable object
  ///
  /// * [String] noteType:
  ///   The custom string defined by the client (used for differentiating various note types)
  ///
  /// * [String] assetIds:
  ///   A comma separated list of asset IDs to add with the note
  ///
  /// * [String] tags:
  ///   search tags
  ///
  /// * [String] permissionableType:
  ///   This is used for sending out group notifications. For example, when someone adds a note to an asset which is also a part of an album, everyone in the album will receive a notification. This is achieved by passing in the permissionable type (in this case \"album\"), and the permissionable id (the album id). Possible types: {ALBUM, ALBUM_CONTEST, GAME_LEVEL, THEME_DESCRIPTOR}
  ///
  /// * [int] permissionableId:
  ///   The id of the permissionable object (for sending group notifications)
  ///
  /// * [String] appKey:
  ///   The application key used to identify the application
  ///
  /// * [String] locationDescription:
  ///   The description of the location
  ///
  /// * [double] latitude:
  ///   The current location of the user
  ///
  /// * [double] longitude:
  ///   The current location of the user
  ///
  /// * [String] metaData:
  ///   External custom client defined data
  ///
  /// * [String] receiverAccountIds:
  ///   Comma separated list of additional account IDs that will receive the note notifications
  ///
  /// * [bool] returnFullResponse:
  ///   whether to return the full response or not
  ///
  /// * [bool] initializeAsset:
  ///   Check true if need to initialize an asset and assign to current note
  ///
  /// * [bool] assetReturnNulls:
  ///   Return null fields for asset response when creating an asset
  ///
  /// * [int] assetAlbumId:
  ///   the album the asset will be added to (optional)
  ///
  /// * [int] assetCollectionId:
  ///   the collection ID that the asset is associated with
  ///
  /// * [String] assetAddToDefaultAlbum:
  ///   the default album to add the asset to
  ///
  /// * [bool] assetAddToMediaLibrary:
  ///   the media library to add the asset to
  ///
  /// * [int] assetVersionCode:
  ///   the version code of the asset
  ///
  /// * [String] assetVersionName:
  ///   the version name of the asset
  ///
  /// * [String] assetMetaData:
  ///   the meta data of the asset
  ///
  /// * [String] assetCaption:
  ///   the caption of the asset
  ///
  /// * [MultipartFile] assetMedia:
  ///   the media of the asset
  ///
  /// * [String] assetMediaUrl:
  ///   the media URL of the asset
  ///
  /// * [String] assetMediaString:
  ///   the media string of the asset
  ///
  /// * [String] assetMediaStringFileName:
  ///   the media string file name of the asset
  ///
  /// * [String] assetMediaStringContentType:
  ///   the media string content type of the asset
  ///
  /// * [MultipartFile] assetAttachedMedia:
  ///   the attached media of the asset
  ///
  /// * [String] assetAttachedMediaUrl:
  ///   the attached media URL of the asset
  ///
  /// * [String] assetAttachedMediaString:
  ///   the attached media string of the asset
  ///
  /// * [String] assetAttachedMediaStringFileName:
  ///   the attached media string file name of the asset
  ///
  /// * [String] assetAttachedMediaStringContentType:
  ///   the attached media string content type of the asset
  ///
  /// * [String] assetLocationDescription:
  ///   the location description for the asset
  ///
  /// * [String] assetApp:
  ///   the application for the asset
  ///
  /// * [String] assetSearchTags:
  ///   the search tags used for the asset
  ///
  /// * [double] assetLatitude:
  ///   the latitude of the asset
  ///
  /// * [num] assetLongitude:
  ///   the longitude of the asset
  Future<Response> createNoteWithHttpInfo(String comment, { String? deviceId, int? accountId, String? notableType, int? notableId, String? noteType, String? assetIds, String? tags, String? permissionableType, int? permissionableId, String? appKey, String? locationDescription, double? latitude, double? longitude, String? metaData, String? receiverAccountIds, bool? returnFullResponse, bool? initializeAsset, bool? assetReturnNulls, int? assetAlbumId, int? assetCollectionId, String? assetAddToDefaultAlbum, bool? assetAddToMediaLibrary, int? assetVersionCode, String? assetVersionName, String? assetMetaData, String? assetCaption, MultipartFile? assetMedia, String? assetMediaUrl, String? assetMediaString, String? assetMediaStringFileName, String? assetMediaStringContentType, MultipartFile? assetAttachedMedia, String? assetAttachedMediaUrl, String? assetAttachedMediaString, String? assetAttachedMediaStringFileName, String? assetAttachedMediaStringContentType, String? assetLocationDescription, String? assetApp, String? assetSearchTags, double? assetLatitude, num? assetLongitude, }) async {
    // ignore: prefer_const_declarations
    final path = r'/note/create';

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
    if (notableType != null) {
      queryParams.addAll(_queryParams('', 'notableType', notableType));
    }
    if (notableId != null) {
      queryParams.addAll(_queryParams('', 'notableId', notableId));
    }
      queryParams.addAll(_queryParams('', 'comment', comment));
    if (noteType != null) {
      queryParams.addAll(_queryParams('', 'noteType', noteType));
    }
    if (assetIds != null) {
      queryParams.addAll(_queryParams('', 'assetIds', assetIds));
    }
    if (tags != null) {
      queryParams.addAll(_queryParams('', 'tags', tags));
    }
    if (permissionableType != null) {
      queryParams.addAll(_queryParams('', 'permissionableType', permissionableType));
    }
    if (permissionableId != null) {
      queryParams.addAll(_queryParams('', 'permissionableId', permissionableId));
    }
    if (appKey != null) {
      queryParams.addAll(_queryParams('', 'appKey', appKey));
    }
    if (locationDescription != null) {
      queryParams.addAll(_queryParams('', 'locationDescription', locationDescription));
    }
    if (latitude != null) {
      queryParams.addAll(_queryParams('', 'latitude', latitude));
    }
    if (longitude != null) {
      queryParams.addAll(_queryParams('', 'longitude', longitude));
    }
    if (metaData != null) {
      queryParams.addAll(_queryParams('', 'metaData', metaData));
    }
    if (receiverAccountIds != null) {
      queryParams.addAll(_queryParams('', 'receiverAccountIds', receiverAccountIds));
    }
    if (returnFullResponse != null) {
      queryParams.addAll(_queryParams('', 'returnFullResponse', returnFullResponse));
    }
    if (initializeAsset != null) {
      queryParams.addAll(_queryParams('', 'initializeAsset', initializeAsset));
    }
    if (assetReturnNulls != null) {
      queryParams.addAll(_queryParams('', 'assetReturnNulls', assetReturnNulls));
    }
    if (assetAlbumId != null) {
      queryParams.addAll(_queryParams('', 'assetAlbumId', assetAlbumId));
    }
    if (assetCollectionId != null) {
      queryParams.addAll(_queryParams('', 'assetCollectionId', assetCollectionId));
    }
    if (assetAddToDefaultAlbum != null) {
      queryParams.addAll(_queryParams('', 'assetAddToDefaultAlbum', assetAddToDefaultAlbum));
    }
    if (assetAddToMediaLibrary != null) {
      queryParams.addAll(_queryParams('', 'assetAddToMediaLibrary', assetAddToMediaLibrary));
    }
    if (assetVersionCode != null) {
      queryParams.addAll(_queryParams('', 'assetVersionCode', assetVersionCode));
    }
    if (assetVersionName != null) {
      queryParams.addAll(_queryParams('', 'assetVersionName', assetVersionName));
    }
    if (assetMetaData != null) {
      queryParams.addAll(_queryParams('', 'assetMetaData', assetMetaData));
    }
    if (assetCaption != null) {
      queryParams.addAll(_queryParams('', 'assetCaption', assetCaption));
    }
    if (assetMedia != null) {
      queryParams.addAll(_queryParams('', 'assetMedia', assetMedia));
    }
    if (assetMediaUrl != null) {
      queryParams.addAll(_queryParams('', 'assetMediaUrl', assetMediaUrl));
    }
    if (assetMediaString != null) {
      queryParams.addAll(_queryParams('', 'assetMediaString', assetMediaString));
    }
    if (assetMediaStringFileName != null) {
      queryParams.addAll(_queryParams('', 'assetMediaStringFileName', assetMediaStringFileName));
    }
    if (assetMediaStringContentType != null) {
      queryParams.addAll(_queryParams('', 'assetMediaStringContentType', assetMediaStringContentType));
    }
    if (assetAttachedMedia != null) {
      queryParams.addAll(_queryParams('', 'assetAttachedMedia', assetAttachedMedia));
    }
    if (assetAttachedMediaUrl != null) {
      queryParams.addAll(_queryParams('', 'assetAttachedMediaUrl', assetAttachedMediaUrl));
    }
    if (assetAttachedMediaString != null) {
      queryParams.addAll(_queryParams('', 'assetAttachedMediaString', assetAttachedMediaString));
    }
    if (assetAttachedMediaStringFileName != null) {
      queryParams.addAll(_queryParams('', 'assetAttachedMediaStringFileName', assetAttachedMediaStringFileName));
    }
    if (assetAttachedMediaStringContentType != null) {
      queryParams.addAll(_queryParams('', 'assetAttachedMediaStringContentType', assetAttachedMediaStringContentType));
    }
    if (assetLocationDescription != null) {
      queryParams.addAll(_queryParams('', 'assetLocationDescription', assetLocationDescription));
    }
    if (assetApp != null) {
      queryParams.addAll(_queryParams('', 'assetApp', assetApp));
    }
    if (assetSearchTags != null) {
      queryParams.addAll(_queryParams('', 'assetSearchTags', assetSearchTags));
    }
    if (assetLatitude != null) {
      queryParams.addAll(_queryParams('', 'assetLatitude', assetLatitude));
    }
    if (assetLongitude != null) {
      queryParams.addAll(_queryParams('', 'assetLongitude', assetLongitude));
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

  /// Create Note
  ///
  /// This is used to leave a comment (note) on a notable object (i.e. albums, album contests, assets, game levels, offers, offer locations, retailers, retailer locations, and theme descriptors). Leaving a comment on a notable object will be visiable to everyone who has access to view the object.
  ///
  /// Parameters:
  ///
  /// * [String] comment (required):
  ///   The message the user wishes to leave a comment on
  ///
  /// * [String] deviceId:
  ///   The unique device identifier that made the request (either deviceId or accountId must be used)
  ///
  /// * [int] accountId:
  ///   The unique accountId that made the request (either deviceId or accountId must be used)
  ///
  /// * [String] notableType:
  ///   The notable object type {ALBUM, ALBUM_CONTEST, ASSET, GAME_LEVEL, OFFER, OFFER_LOCATION, RETAILER, RETAILER_LOCATION, THEME_DESCRIPTOR}
  ///
  /// * [int] notableId:
  ///   The id of the notable object
  ///
  /// * [String] noteType:
  ///   The custom string defined by the client (used for differentiating various note types)
  ///
  /// * [String] assetIds:
  ///   A comma separated list of asset IDs to add with the note
  ///
  /// * [String] tags:
  ///   search tags
  ///
  /// * [String] permissionableType:
  ///   This is used for sending out group notifications. For example, when someone adds a note to an asset which is also a part of an album, everyone in the album will receive a notification. This is achieved by passing in the permissionable type (in this case \"album\"), and the permissionable id (the album id). Possible types: {ALBUM, ALBUM_CONTEST, GAME_LEVEL, THEME_DESCRIPTOR}
  ///
  /// * [int] permissionableId:
  ///   The id of the permissionable object (for sending group notifications)
  ///
  /// * [String] appKey:
  ///   The application key used to identify the application
  ///
  /// * [String] locationDescription:
  ///   The description of the location
  ///
  /// * [double] latitude:
  ///   The current location of the user
  ///
  /// * [double] longitude:
  ///   The current location of the user
  ///
  /// * [String] metaData:
  ///   External custom client defined data
  ///
  /// * [String] receiverAccountIds:
  ///   Comma separated list of additional account IDs that will receive the note notifications
  ///
  /// * [bool] returnFullResponse:
  ///   whether to return the full response or not
  ///
  /// * [bool] initializeAsset:
  ///   Check true if need to initialize an asset and assign to current note
  ///
  /// * [bool] assetReturnNulls:
  ///   Return null fields for asset response when creating an asset
  ///
  /// * [int] assetAlbumId:
  ///   the album the asset will be added to (optional)
  ///
  /// * [int] assetCollectionId:
  ///   the collection ID that the asset is associated with
  ///
  /// * [String] assetAddToDefaultAlbum:
  ///   the default album to add the asset to
  ///
  /// * [bool] assetAddToMediaLibrary:
  ///   the media library to add the asset to
  ///
  /// * [int] assetVersionCode:
  ///   the version code of the asset
  ///
  /// * [String] assetVersionName:
  ///   the version name of the asset
  ///
  /// * [String] assetMetaData:
  ///   the meta data of the asset
  ///
  /// * [String] assetCaption:
  ///   the caption of the asset
  ///
  /// * [MultipartFile] assetMedia:
  ///   the media of the asset
  ///
  /// * [String] assetMediaUrl:
  ///   the media URL of the asset
  ///
  /// * [String] assetMediaString:
  ///   the media string of the asset
  ///
  /// * [String] assetMediaStringFileName:
  ///   the media string file name of the asset
  ///
  /// * [String] assetMediaStringContentType:
  ///   the media string content type of the asset
  ///
  /// * [MultipartFile] assetAttachedMedia:
  ///   the attached media of the asset
  ///
  /// * [String] assetAttachedMediaUrl:
  ///   the attached media URL of the asset
  ///
  /// * [String] assetAttachedMediaString:
  ///   the attached media string of the asset
  ///
  /// * [String] assetAttachedMediaStringFileName:
  ///   the attached media string file name of the asset
  ///
  /// * [String] assetAttachedMediaStringContentType:
  ///   the attached media string content type of the asset
  ///
  /// * [String] assetLocationDescription:
  ///   the location description for the asset
  ///
  /// * [String] assetApp:
  ///   the application for the asset
  ///
  /// * [String] assetSearchTags:
  ///   the search tags used for the asset
  ///
  /// * [double] assetLatitude:
  ///   the latitude of the asset
  ///
  /// * [num] assetLongitude:
  ///   the longitude of the asset
  Future<NoteResponse?> createNote(String comment, { String? deviceId, int? accountId, String? notableType, int? notableId, String? noteType, String? assetIds, String? tags, String? permissionableType, int? permissionableId, String? appKey, String? locationDescription, double? latitude, double? longitude, String? metaData, String? receiverAccountIds, bool? returnFullResponse, bool? initializeAsset, bool? assetReturnNulls, int? assetAlbumId, int? assetCollectionId, String? assetAddToDefaultAlbum, bool? assetAddToMediaLibrary, int? assetVersionCode, String? assetVersionName, String? assetMetaData, String? assetCaption, MultipartFile? assetMedia, String? assetMediaUrl, String? assetMediaString, String? assetMediaStringFileName, String? assetMediaStringContentType, MultipartFile? assetAttachedMedia, String? assetAttachedMediaUrl, String? assetAttachedMediaString, String? assetAttachedMediaStringFileName, String? assetAttachedMediaStringContentType, String? assetLocationDescription, String? assetApp, String? assetSearchTags, double? assetLatitude, num? assetLongitude, }) async {
    final response = await createNoteWithHttpInfo(comment,  deviceId: deviceId, accountId: accountId, notableType: notableType, notableId: notableId, noteType: noteType, assetIds: assetIds, tags: tags, permissionableType: permissionableType, permissionableId: permissionableId, appKey: appKey, locationDescription: locationDescription, latitude: latitude, longitude: longitude, metaData: metaData, receiverAccountIds: receiverAccountIds, returnFullResponse: returnFullResponse, initializeAsset: initializeAsset, assetReturnNulls: assetReturnNulls, assetAlbumId: assetAlbumId, assetCollectionId: assetCollectionId, assetAddToDefaultAlbum: assetAddToDefaultAlbum, assetAddToMediaLibrary: assetAddToMediaLibrary, assetVersionCode: assetVersionCode, assetVersionName: assetVersionName, assetMetaData: assetMetaData, assetCaption: assetCaption, assetMedia: assetMedia, assetMediaUrl: assetMediaUrl, assetMediaString: assetMediaString, assetMediaStringFileName: assetMediaStringFileName, assetMediaStringContentType: assetMediaStringContentType, assetAttachedMedia: assetAttachedMedia, assetAttachedMediaUrl: assetAttachedMediaUrl, assetAttachedMediaString: assetAttachedMediaString, assetAttachedMediaStringFileName: assetAttachedMediaStringFileName, assetAttachedMediaStringContentType: assetAttachedMediaStringContentType, assetLocationDescription: assetLocationDescription, assetApp: assetApp, assetSearchTags: assetSearchTags, assetLatitude: assetLatitude, assetLongitude: assetLongitude, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'NoteResponse',) as NoteResponse;
    
    }
    return null;
  }

  /// Delete Note
  ///
  /// Sets a comment (note) as deleted.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] noteId (required):
  ///   The ID of the note to delete
  ///
  /// * [String] deviceId:
  ///   The unique device identifier that made the request (either deviceId or accountId must be used)
  ///
  /// * [int] accountId:
  ///   The unique accountId that made the request (either deviceId or accountId must be used)
  ///
  /// * [double] latitude:
  ///   The current location of the user
  ///
  /// * [double] longitude:
  ///   The current location of the user
  ///
  /// * [String] appKey:
  ///   The application key used to identify the application
  Future<Response> deleteNoteWithHttpInfo(int noteId, { String? deviceId, int? accountId, double? latitude, double? longitude, String? appKey, }) async {
    // ignore: prefer_const_declarations
    final path = r'/note/delete';

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
      queryParams.addAll(_queryParams('', 'noteId', noteId));
    if (latitude != null) {
      queryParams.addAll(_queryParams('', 'latitude', latitude));
    }
    if (longitude != null) {
      queryParams.addAll(_queryParams('', 'longitude', longitude));
    }
    if (appKey != null) {
      queryParams.addAll(_queryParams('', 'appKey', appKey));
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

  /// Delete Note
  ///
  /// Sets a comment (note) as deleted.
  ///
  /// Parameters:
  ///
  /// * [int] noteId (required):
  ///   The ID of the note to delete
  ///
  /// * [String] deviceId:
  ///   The unique device identifier that made the request (either deviceId or accountId must be used)
  ///
  /// * [int] accountId:
  ///   The unique accountId that made the request (either deviceId or accountId must be used)
  ///
  /// * [double] latitude:
  ///   The current location of the user
  ///
  /// * [double] longitude:
  ///   The current location of the user
  ///
  /// * [String] appKey:
  ///   The application key used to identify the application
  Future<SirqulResponse?> deleteNote(int noteId, { String? deviceId, int? accountId, double? latitude, double? longitude, String? appKey, }) async {
    final response = await deleteNoteWithHttpInfo(noteId,  deviceId: deviceId, accountId: accountId, latitude: latitude, longitude: longitude, appKey: appKey, );
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

  /// Get Note
  ///
  /// Get for a note based on its Id.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] noteId (required):
  ///   the id of the note to get
  ///
  /// * [String] deviceId:
  ///   The unique device identifier that made the request (either deviceId or accountId must be used)
  ///
  /// * [int] accountId:
  ///   The unique accountId that made the request (either deviceId or accountId must be used)
  ///
  /// * [bool] returnFullResponse:
  ///   Determines whether to return the NoteFullResponse for the item
  Future<Response> getNoteWithHttpInfo(int noteId, { String? deviceId, int? accountId, bool? returnFullResponse, }) async {
    // ignore: prefer_const_declarations
    final path = r'/note/get';

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
    if (returnFullResponse != null) {
      queryParams.addAll(_queryParams('', 'returnFullResponse', returnFullResponse));
    }
      queryParams.addAll(_queryParams('', 'noteId', noteId));

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

  /// Get Note
  ///
  /// Get for a note based on its Id.
  ///
  /// Parameters:
  ///
  /// * [int] noteId (required):
  ///   the id of the note to get
  ///
  /// * [String] deviceId:
  ///   The unique device identifier that made the request (either deviceId or accountId must be used)
  ///
  /// * [int] accountId:
  ///   The unique accountId that made the request (either deviceId or accountId must be used)
  ///
  /// * [bool] returnFullResponse:
  ///   Determines whether to return the NoteFullResponse for the item
  Future<SirqulResponse?> getNote(int noteId, { String? deviceId, int? accountId, bool? returnFullResponse, }) async {
    final response = await getNoteWithHttpInfo(noteId,  deviceId: deviceId, accountId: accountId, returnFullResponse: returnFullResponse, );
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

  /// Search Notes
  ///
  /// Search for notes on a notable object.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] deviceId:
  ///   The device id (deviceId or accountId required)
  ///
  /// * [int] accountId:
  ///   The account id of the user (deviceId or accountId required)
  ///
  /// * [String] notableType:
  ///   The notable object type {ALBUM, ALBUM_CONTEST, ASSET, GAME_LEVEL, OFFER, OFFER_LOCATION, RETAILER, RETAILER_LOCATION, THEME_DESCRIPTOR}
  ///
  /// * [int] notableId:
  ///   The id of the notable object
  ///
  /// * [String] noteTypes:
  ///   Comma separated list of noteType strings to filter results with
  ///
  /// * [String] appKey:
  ///   The application key used to identify the application
  ///
  /// * [String] keyword:
  ///   The keyword used to search
  ///
  /// * [int] flagCountMinimum:
  ///   return items that has flagCount >= flagCountMinimum if this is set, return all items, even ones with flagCount >= flagThreshold
  ///
  /// * [bool] flagsExceedThreshold:
  ///   return items that has flagCount >= flagThreshold, which are hidden by default
  ///
  /// * [bool] includeInactive:
  ///   include inactive in the result
  ///
  /// * [String] sortField:
  ///   The column to sort the search on
  ///
  /// * [bool] descending:
  ///   The order to return the search results
  ///
  /// * [bool] returnFullResponse:
  ///   Determines whether to return the NoteFullResponse for each search item
  ///
  /// * [int] updatedSince:
  ///   return items that have been updated since this date (time-stamp in milliseconds)
  ///
  /// * [int] updatedBefore:
  ///   return items that have been updated before this date (time-stamp in milliseconds)
  ///
  /// * [int] start:
  ///   The record to begin the return set on
  ///
  /// * [int] limit:
  ///   The number of records to return
  Future<Response> searchNotesWithHttpInfo({ String? deviceId, int? accountId, String? notableType, int? notableId, String? noteTypes, String? appKey, String? keyword, int? flagCountMinimum, bool? flagsExceedThreshold, bool? includeInactive, String? sortField, bool? descending, bool? returnFullResponse, int? updatedSince, int? updatedBefore, int? start, int? limit, }) async {
    // ignore: prefer_const_declarations
    final path = r'/note/search';

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
    if (notableType != null) {
      queryParams.addAll(_queryParams('', 'notableType', notableType));
    }
    if (notableId != null) {
      queryParams.addAll(_queryParams('', 'notableId', notableId));
    }
    if (noteTypes != null) {
      queryParams.addAll(_queryParams('', 'noteTypes', noteTypes));
    }
    if (appKey != null) {
      queryParams.addAll(_queryParams('', 'appKey', appKey));
    }
    if (keyword != null) {
      queryParams.addAll(_queryParams('', 'keyword', keyword));
    }
    if (flagCountMinimum != null) {
      queryParams.addAll(_queryParams('', 'flagCountMinimum', flagCountMinimum));
    }
    if (flagsExceedThreshold != null) {
      queryParams.addAll(_queryParams('', 'flagsExceedThreshold', flagsExceedThreshold));
    }
    if (includeInactive != null) {
      queryParams.addAll(_queryParams('', 'includeInactive', includeInactive));
    }
    if (sortField != null) {
      queryParams.addAll(_queryParams('', 'sortField', sortField));
    }
    if (descending != null) {
      queryParams.addAll(_queryParams('', 'descending', descending));
    }
    if (returnFullResponse != null) {
      queryParams.addAll(_queryParams('', 'returnFullResponse', returnFullResponse));
    }
    if (updatedSince != null) {
      queryParams.addAll(_queryParams('', 'updatedSince', updatedSince));
    }
    if (updatedBefore != null) {
      queryParams.addAll(_queryParams('', 'updatedBefore', updatedBefore));
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

  /// Search Notes
  ///
  /// Search for notes on a notable object.
  ///
  /// Parameters:
  ///
  /// * [String] deviceId:
  ///   The device id (deviceId or accountId required)
  ///
  /// * [int] accountId:
  ///   The account id of the user (deviceId or accountId required)
  ///
  /// * [String] notableType:
  ///   The notable object type {ALBUM, ALBUM_CONTEST, ASSET, GAME_LEVEL, OFFER, OFFER_LOCATION, RETAILER, RETAILER_LOCATION, THEME_DESCRIPTOR}
  ///
  /// * [int] notableId:
  ///   The id of the notable object
  ///
  /// * [String] noteTypes:
  ///   Comma separated list of noteType strings to filter results with
  ///
  /// * [String] appKey:
  ///   The application key used to identify the application
  ///
  /// * [String] keyword:
  ///   The keyword used to search
  ///
  /// * [int] flagCountMinimum:
  ///   return items that has flagCount >= flagCountMinimum if this is set, return all items, even ones with flagCount >= flagThreshold
  ///
  /// * [bool] flagsExceedThreshold:
  ///   return items that has flagCount >= flagThreshold, which are hidden by default
  ///
  /// * [bool] includeInactive:
  ///   include inactive in the result
  ///
  /// * [String] sortField:
  ///   The column to sort the search on
  ///
  /// * [bool] descending:
  ///   The order to return the search results
  ///
  /// * [bool] returnFullResponse:
  ///   Determines whether to return the NoteFullResponse for each search item
  ///
  /// * [int] updatedSince:
  ///   return items that have been updated since this date (time-stamp in milliseconds)
  ///
  /// * [int] updatedBefore:
  ///   return items that have been updated before this date (time-stamp in milliseconds)
  ///
  /// * [int] start:
  ///   The record to begin the return set on
  ///
  /// * [int] limit:
  ///   The number of records to return
  Future<List<NoteResponse>?> searchNotes({ String? deviceId, int? accountId, String? notableType, int? notableId, String? noteTypes, String? appKey, String? keyword, int? flagCountMinimum, bool? flagsExceedThreshold, bool? includeInactive, String? sortField, bool? descending, bool? returnFullResponse, int? updatedSince, int? updatedBefore, int? start, int? limit, }) async {
    final response = await searchNotesWithHttpInfo( deviceId: deviceId, accountId: accountId, notableType: notableType, notableId: notableId, noteTypes: noteTypes, appKey: appKey, keyword: keyword, flagCountMinimum: flagCountMinimum, flagsExceedThreshold: flagsExceedThreshold, includeInactive: includeInactive, sortField: sortField, descending: descending, returnFullResponse: returnFullResponse, updatedSince: updatedSince, updatedBefore: updatedBefore, start: start, limit: limit, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<NoteResponse>') as List)
        .cast<NoteResponse>()
        .toList(growable: false);

    }
    return null;
  }

  /// Update Note
  ///
  /// Update an existing comment (note). Only the creator of the note have permission to update.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] noteId (required):
  ///   The id of the note, used when editing a comment
  ///
  /// * [String] deviceId:
  ///   The unique device identifier that made the request (either deviceId or accountId must be used)
  ///
  /// * [int] accountId:
  ///   The unique accountId that made the request (either deviceId or accountId must be used)
  ///
  /// * [String] comment:
  ///   The message the user wishes to leave a comment on
  ///
  /// * [String] noteType:
  ///   The custom string defined by the client (used for differentiating on various note types)
  ///
  /// * [String] assetIds:
  ///   A comma separated list of asset IDs to add with the note
  ///
  /// * [String] tags:
  ///   search tags
  ///
  /// * [String] permissionableType:
  ///   This is used for sending out group notifications. For example, when someone adds a note to an asset which is also a part of an album, everyone in the album will receive a notification. This is achieved by passing in the permissionable type (in this case \"album\"), and the permissionable id (the album id). Possible types: {ALBUM, ALBUM_CONTEST, GAME_LEVEL, THEME_DESCRIPTOR}
  ///
  /// * [int] permissionableId:
  ///   The id of the permissionable object (for sending group notifications)
  ///
  /// * [String] appKey:
  ///   The application key used to identify the application
  ///
  /// * [String] locationDescription:
  ///   The description of the location
  ///
  /// * [double] latitude:
  ///   The current location of the user
  ///
  /// * [double] longitude:
  ///   The current location of the user
  ///
  /// * [String] metaData:
  ///   meta data to update with the note
  ///
  /// * [bool] returnFullResponse:
  ///   whether to return the full response or not
  ///
  /// * [bool] active:
  ///   Sets the active flag for the note
  ///
  /// * [bool] updateAsset:
  ///   main flag for updating asset in note, must set to true if you want to update the note's asset
  ///
  /// * [bool] assetReturnNulls:
  ///   Return null fields for asset response when updating an asset
  ///
  /// * [int] assetAlbumId:
  ///   the album the asset will be added to (optional)
  ///
  /// * [int] assetCollectionId:
  ///   the collection ID that the asset is associated with
  ///
  /// * [String] assetAddToDefaultAlbum:
  ///   the default album to add the asset to
  ///
  /// * [bool] assetAddToMediaLibrary:
  ///   the media library to add the asset to
  ///
  /// * [int] assetVersionCode:
  ///   the version code of the asset
  ///
  /// * [String] assetVersionName:
  ///   the version name of the asset
  ///
  /// * [String] assetMetaData:
  ///   the meta data of the asset
  ///
  /// * [String] assetCaption:
  ///   the caption of the asset
  ///
  /// * [MultipartFile] assetMedia:
  ///   the media of the asset
  ///
  /// * [String] assetMediaUrl:
  ///   the media URL of the asset
  ///
  /// * [String] assetMediaString:
  ///   the media string of the asset
  ///
  /// * [String] assetMediaStringFileName:
  ///   the media string file name of the asset
  ///
  /// * [String] assetMediaStringContentType:
  ///   the media string content type of the asset
  ///
  /// * [MultipartFile] assetAttachedMedia:
  ///   the attached media of the asset
  ///
  /// * [String] assetAttachedMediaUrl:
  ///   the attached media URL of the asset
  ///
  /// * [String] assetAttachedMediaString:
  ///   the attached media string of the asset
  ///
  /// * [String] assetAttachedMediaStringFileName:
  ///   the attached media string file name of the asset
  ///
  /// * [String] assetAttachedMediaStringContentType:
  ///   the attached media string content type of the asset
  ///
  /// * [String] assetLocationDescription:
  ///   the location description for the asset
  ///
  /// * [String] assetApp:
  ///   the application for the asset
  ///
  /// * [String] assetSearchTags:
  ///   the search tags used for the asset
  ///
  /// * [double] assetLatitude:
  ///   the latitude of the asset
  ///
  /// * [double] assetLongitude:
  ///   the longitude of the asset
  Future<Response> updateNoteWithHttpInfo(int noteId, { String? deviceId, int? accountId, String? comment, String? noteType, String? assetIds, String? tags, String? permissionableType, int? permissionableId, String? appKey, String? locationDescription, double? latitude, double? longitude, String? metaData, bool? returnFullResponse, bool? active, bool? updateAsset, bool? assetReturnNulls, int? assetAlbumId, int? assetCollectionId, String? assetAddToDefaultAlbum, bool? assetAddToMediaLibrary, int? assetVersionCode, String? assetVersionName, String? assetMetaData, String? assetCaption, MultipartFile? assetMedia, String? assetMediaUrl, String? assetMediaString, String? assetMediaStringFileName, String? assetMediaStringContentType, MultipartFile? assetAttachedMedia, String? assetAttachedMediaUrl, String? assetAttachedMediaString, String? assetAttachedMediaStringFileName, String? assetAttachedMediaStringContentType, String? assetLocationDescription, String? assetApp, String? assetSearchTags, double? assetLatitude, double? assetLongitude, }) async {
    // ignore: prefer_const_declarations
    final path = r'/note/update';

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
      queryParams.addAll(_queryParams('', 'noteId', noteId));
    if (comment != null) {
      queryParams.addAll(_queryParams('', 'comment', comment));
    }
    if (noteType != null) {
      queryParams.addAll(_queryParams('', 'noteType', noteType));
    }
    if (assetIds != null) {
      queryParams.addAll(_queryParams('', 'assetIds', assetIds));
    }
    if (tags != null) {
      queryParams.addAll(_queryParams('', 'tags', tags));
    }
    if (permissionableType != null) {
      queryParams.addAll(_queryParams('', 'permissionableType', permissionableType));
    }
    if (permissionableId != null) {
      queryParams.addAll(_queryParams('', 'permissionableId', permissionableId));
    }
    if (appKey != null) {
      queryParams.addAll(_queryParams('', 'appKey', appKey));
    }
    if (locationDescription != null) {
      queryParams.addAll(_queryParams('', 'locationDescription', locationDescription));
    }
    if (latitude != null) {
      queryParams.addAll(_queryParams('', 'latitude', latitude));
    }
    if (longitude != null) {
      queryParams.addAll(_queryParams('', 'longitude', longitude));
    }
    if (metaData != null) {
      queryParams.addAll(_queryParams('', 'metaData', metaData));
    }
    if (returnFullResponse != null) {
      queryParams.addAll(_queryParams('', 'returnFullResponse', returnFullResponse));
    }
    if (active != null) {
      queryParams.addAll(_queryParams('', 'active', active));
    }
    if (updateAsset != null) {
      queryParams.addAll(_queryParams('', 'updateAsset', updateAsset));
    }
    if (assetReturnNulls != null) {
      queryParams.addAll(_queryParams('', 'assetReturnNulls', assetReturnNulls));
    }
    if (assetAlbumId != null) {
      queryParams.addAll(_queryParams('', 'assetAlbumId', assetAlbumId));
    }
    if (assetCollectionId != null) {
      queryParams.addAll(_queryParams('', 'assetCollectionId', assetCollectionId));
    }
    if (assetAddToDefaultAlbum != null) {
      queryParams.addAll(_queryParams('', 'assetAddToDefaultAlbum', assetAddToDefaultAlbum));
    }
    if (assetAddToMediaLibrary != null) {
      queryParams.addAll(_queryParams('', 'assetAddToMediaLibrary', assetAddToMediaLibrary));
    }
    if (assetVersionCode != null) {
      queryParams.addAll(_queryParams('', 'assetVersionCode', assetVersionCode));
    }
    if (assetVersionName != null) {
      queryParams.addAll(_queryParams('', 'assetVersionName', assetVersionName));
    }
    if (assetMetaData != null) {
      queryParams.addAll(_queryParams('', 'assetMetaData', assetMetaData));
    }
    if (assetCaption != null) {
      queryParams.addAll(_queryParams('', 'assetCaption', assetCaption));
    }
    if (assetMedia != null) {
      queryParams.addAll(_queryParams('', 'assetMedia', assetMedia));
    }
    if (assetMediaUrl != null) {
      queryParams.addAll(_queryParams('', 'assetMediaUrl', assetMediaUrl));
    }
    if (assetMediaString != null) {
      queryParams.addAll(_queryParams('', 'assetMediaString', assetMediaString));
    }
    if (assetMediaStringFileName != null) {
      queryParams.addAll(_queryParams('', 'assetMediaStringFileName', assetMediaStringFileName));
    }
    if (assetMediaStringContentType != null) {
      queryParams.addAll(_queryParams('', 'assetMediaStringContentType', assetMediaStringContentType));
    }
    if (assetAttachedMedia != null) {
      queryParams.addAll(_queryParams('', 'assetAttachedMedia', assetAttachedMedia));
    }
    if (assetAttachedMediaUrl != null) {
      queryParams.addAll(_queryParams('', 'assetAttachedMediaUrl', assetAttachedMediaUrl));
    }
    if (assetAttachedMediaString != null) {
      queryParams.addAll(_queryParams('', 'assetAttachedMediaString', assetAttachedMediaString));
    }
    if (assetAttachedMediaStringFileName != null) {
      queryParams.addAll(_queryParams('', 'assetAttachedMediaStringFileName', assetAttachedMediaStringFileName));
    }
    if (assetAttachedMediaStringContentType != null) {
      queryParams.addAll(_queryParams('', 'assetAttachedMediaStringContentType', assetAttachedMediaStringContentType));
    }
    if (assetLocationDescription != null) {
      queryParams.addAll(_queryParams('', 'assetLocationDescription', assetLocationDescription));
    }
    if (assetApp != null) {
      queryParams.addAll(_queryParams('', 'assetApp', assetApp));
    }
    if (assetSearchTags != null) {
      queryParams.addAll(_queryParams('', 'assetSearchTags', assetSearchTags));
    }
    if (assetLatitude != null) {
      queryParams.addAll(_queryParams('', 'assetLatitude', assetLatitude));
    }
    if (assetLongitude != null) {
      queryParams.addAll(_queryParams('', 'assetLongitude', assetLongitude));
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

  /// Update Note
  ///
  /// Update an existing comment (note). Only the creator of the note have permission to update.
  ///
  /// Parameters:
  ///
  /// * [int] noteId (required):
  ///   The id of the note, used when editing a comment
  ///
  /// * [String] deviceId:
  ///   The unique device identifier that made the request (either deviceId or accountId must be used)
  ///
  /// * [int] accountId:
  ///   The unique accountId that made the request (either deviceId or accountId must be used)
  ///
  /// * [String] comment:
  ///   The message the user wishes to leave a comment on
  ///
  /// * [String] noteType:
  ///   The custom string defined by the client (used for differentiating on various note types)
  ///
  /// * [String] assetIds:
  ///   A comma separated list of asset IDs to add with the note
  ///
  /// * [String] tags:
  ///   search tags
  ///
  /// * [String] permissionableType:
  ///   This is used for sending out group notifications. For example, when someone adds a note to an asset which is also a part of an album, everyone in the album will receive a notification. This is achieved by passing in the permissionable type (in this case \"album\"), and the permissionable id (the album id). Possible types: {ALBUM, ALBUM_CONTEST, GAME_LEVEL, THEME_DESCRIPTOR}
  ///
  /// * [int] permissionableId:
  ///   The id of the permissionable object (for sending group notifications)
  ///
  /// * [String] appKey:
  ///   The application key used to identify the application
  ///
  /// * [String] locationDescription:
  ///   The description of the location
  ///
  /// * [double] latitude:
  ///   The current location of the user
  ///
  /// * [double] longitude:
  ///   The current location of the user
  ///
  /// * [String] metaData:
  ///   meta data to update with the note
  ///
  /// * [bool] returnFullResponse:
  ///   whether to return the full response or not
  ///
  /// * [bool] active:
  ///   Sets the active flag for the note
  ///
  /// * [bool] updateAsset:
  ///   main flag for updating asset in note, must set to true if you want to update the note's asset
  ///
  /// * [bool] assetReturnNulls:
  ///   Return null fields for asset response when updating an asset
  ///
  /// * [int] assetAlbumId:
  ///   the album the asset will be added to (optional)
  ///
  /// * [int] assetCollectionId:
  ///   the collection ID that the asset is associated with
  ///
  /// * [String] assetAddToDefaultAlbum:
  ///   the default album to add the asset to
  ///
  /// * [bool] assetAddToMediaLibrary:
  ///   the media library to add the asset to
  ///
  /// * [int] assetVersionCode:
  ///   the version code of the asset
  ///
  /// * [String] assetVersionName:
  ///   the version name of the asset
  ///
  /// * [String] assetMetaData:
  ///   the meta data of the asset
  ///
  /// * [String] assetCaption:
  ///   the caption of the asset
  ///
  /// * [MultipartFile] assetMedia:
  ///   the media of the asset
  ///
  /// * [String] assetMediaUrl:
  ///   the media URL of the asset
  ///
  /// * [String] assetMediaString:
  ///   the media string of the asset
  ///
  /// * [String] assetMediaStringFileName:
  ///   the media string file name of the asset
  ///
  /// * [String] assetMediaStringContentType:
  ///   the media string content type of the asset
  ///
  /// * [MultipartFile] assetAttachedMedia:
  ///   the attached media of the asset
  ///
  /// * [String] assetAttachedMediaUrl:
  ///   the attached media URL of the asset
  ///
  /// * [String] assetAttachedMediaString:
  ///   the attached media string of the asset
  ///
  /// * [String] assetAttachedMediaStringFileName:
  ///   the attached media string file name of the asset
  ///
  /// * [String] assetAttachedMediaStringContentType:
  ///   the attached media string content type of the asset
  ///
  /// * [String] assetLocationDescription:
  ///   the location description for the asset
  ///
  /// * [String] assetApp:
  ///   the application for the asset
  ///
  /// * [String] assetSearchTags:
  ///   the search tags used for the asset
  ///
  /// * [double] assetLatitude:
  ///   the latitude of the asset
  ///
  /// * [double] assetLongitude:
  ///   the longitude of the asset
  Future<NoteResponse?> updateNote(int noteId, { String? deviceId, int? accountId, String? comment, String? noteType, String? assetIds, String? tags, String? permissionableType, int? permissionableId, String? appKey, String? locationDescription, double? latitude, double? longitude, String? metaData, bool? returnFullResponse, bool? active, bool? updateAsset, bool? assetReturnNulls, int? assetAlbumId, int? assetCollectionId, String? assetAddToDefaultAlbum, bool? assetAddToMediaLibrary, int? assetVersionCode, String? assetVersionName, String? assetMetaData, String? assetCaption, MultipartFile? assetMedia, String? assetMediaUrl, String? assetMediaString, String? assetMediaStringFileName, String? assetMediaStringContentType, MultipartFile? assetAttachedMedia, String? assetAttachedMediaUrl, String? assetAttachedMediaString, String? assetAttachedMediaStringFileName, String? assetAttachedMediaStringContentType, String? assetLocationDescription, String? assetApp, String? assetSearchTags, double? assetLatitude, double? assetLongitude, }) async {
    final response = await updateNoteWithHttpInfo(noteId,  deviceId: deviceId, accountId: accountId, comment: comment, noteType: noteType, assetIds: assetIds, tags: tags, permissionableType: permissionableType, permissionableId: permissionableId, appKey: appKey, locationDescription: locationDescription, latitude: latitude, longitude: longitude, metaData: metaData, returnFullResponse: returnFullResponse, active: active, updateAsset: updateAsset, assetReturnNulls: assetReturnNulls, assetAlbumId: assetAlbumId, assetCollectionId: assetCollectionId, assetAddToDefaultAlbum: assetAddToDefaultAlbum, assetAddToMediaLibrary: assetAddToMediaLibrary, assetVersionCode: assetVersionCode, assetVersionName: assetVersionName, assetMetaData: assetMetaData, assetCaption: assetCaption, assetMedia: assetMedia, assetMediaUrl: assetMediaUrl, assetMediaString: assetMediaString, assetMediaStringFileName: assetMediaStringFileName, assetMediaStringContentType: assetMediaStringContentType, assetAttachedMedia: assetAttachedMedia, assetAttachedMediaUrl: assetAttachedMediaUrl, assetAttachedMediaString: assetAttachedMediaString, assetAttachedMediaStringFileName: assetAttachedMediaStringFileName, assetAttachedMediaStringContentType: assetAttachedMediaStringContentType, assetLocationDescription: assetLocationDescription, assetApp: assetApp, assetSearchTags: assetSearchTags, assetLatitude: assetLatitude, assetLongitude: assetLongitude, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'NoteResponse',) as NoteResponse;
    
    }
    return null;
  }
}
