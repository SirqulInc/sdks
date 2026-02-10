//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class AssetApi {
  AssetApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Download Asset
  ///
  /// Downloads an asset from the server for assets that have been uploaded to the server.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [String] filename (required):
  ///   the filename in the following formats: {assetId}-{suffix}.{extension} | {assetId}.{extension} | {assetId}
  Future<Response> assetDownloadWithHttpInfo(num version, String filename,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/asset/download/{filename}'
      .replaceAll('{version}', version.toString())
      .replaceAll('{filename}', filename);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

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

  /// Download Asset
  ///
  /// Downloads an asset from the server for assets that have been uploaded to the server.
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [String] filename (required):
  ///   the filename in the following formats: {assetId}-{suffix}.{extension} | {assetId}.{extension} | {assetId}
  Future<SirqulResponse?> assetDownload(num version, String filename,) async {
    final response = await assetDownloadWithHttpInfo(version, filename,);
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

  /// Convert Offer to Creative
  ///
  /// Converts an offer image + text into a creative image.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] offerId (required):
  ///   offer id used for inserting offer text/flavor
  ///
  /// * [String] adSize (required):
  ///   the ad size used for selecting a format for the creative image
  ///
  /// * [int] creativeId:
  ///   used for inserting the newly created image into
  ///
  /// * [int] width:
  ///   total width of the creative image
  ///
  /// * [int] height:
  ///   total height of the creative image
  ///
  /// * [String] backgroundSize:
  ///   the size of the background
  ///
  /// * [String] template:
  ///   the template to use
  Future<Response> assetMorphWithHttpInfo(num version, int offerId, String adSize, { int? creativeId, int? width, int? height, String? backgroundSize, String? template, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/asset/morph'
      .replaceAll('{version}', version.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'offerId', offerId));
    if (creativeId != null) {
      queryParams.addAll(_queryParams('', 'creativeId', creativeId));
    }
      queryParams.addAll(_queryParams('', 'adSize', adSize));
    if (width != null) {
      queryParams.addAll(_queryParams('', 'width', width));
    }
    if (height != null) {
      queryParams.addAll(_queryParams('', 'height', height));
    }
    if (backgroundSize != null) {
      queryParams.addAll(_queryParams('', 'backgroundSize', backgroundSize));
    }
    if (template != null) {
      queryParams.addAll(_queryParams('', 'template', template));
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

  /// Convert Offer to Creative
  ///
  /// Converts an offer image + text into a creative image.
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] offerId (required):
  ///   offer id used for inserting offer text/flavor
  ///
  /// * [String] adSize (required):
  ///   the ad size used for selecting a format for the creative image
  ///
  /// * [int] creativeId:
  ///   used for inserting the newly created image into
  ///
  /// * [int] width:
  ///   total width of the creative image
  ///
  /// * [int] height:
  ///   total height of the creative image
  ///
  /// * [String] backgroundSize:
  ///   the size of the background
  ///
  /// * [String] template:
  ///   the template to use
  Future<AssetShortResponse?> assetMorph(num version, int offerId, String adSize, { int? creativeId, int? width, int? height, String? backgroundSize, String? template, }) async {
    final response = await assetMorphWithHttpInfo(version, offerId, adSize,  creativeId: creativeId, width: width, height: height, backgroundSize: backgroundSize, template: template, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'AssetShortResponse',) as AssetShortResponse;
    
    }
    return null;
  }

  /// Create Asset
  ///
  /// Uploads an asset to server and returns an asset id which can be used to assign to various objects.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [bool] returnNulls:
  ///   to return nulls
  ///
  /// * [String] deviceId:
  ///   a unique ID given by the device (deviceId or accountId required)
  ///
  /// * [int] accountId:
  ///   the account ID of the user (deviceId or accountId required)
  ///
  /// * [int] albumId:
  ///   the album the asset will be added to (optional)
  ///
  /// * [int] collectionId:
  ///   Deprecated: use collections via the collection endpoints.
  ///
  /// * [String] addToDefaultAlbum:
  ///   Whether to add to a default album
  ///
  /// * [bool] addToMediaLibrary:
  ///   Whether to add to the media library
  ///
  /// * [int] versionCode:
  ///   the version code
  ///
  /// * [String] versionName:
  ///   the version name
  ///
  /// * [String] metaData:
  ///   External custom client defined data
  ///
  /// * [String] caption:
  ///   the caption (optional)
  ///
  /// * [String] assetType:
  ///   the asset type
  ///
  /// * [String] approvalStatus:
  ///   approval status for the asset
  ///
  /// * [int] assignedAccountId:
  ///   account id assigned to the asset
  ///
  /// * [MultipartFile] media:
  ///   a MultipartFile containing the mimetype, etc
  ///
  /// * [String] mediaUrl:
  ///   this can be used if the \"media\" is a link (optional)
  ///
  /// * [String] mediaString:
  ///   the media content as a string (optional)
  ///
  /// * [String] mediaStringFileName:
  ///   file name for mediaString (optional)
  ///
  /// * [String] mediaStringContentType:
  ///   content type for mediaString (optional)
  ///
  /// * [int] mediaHeight:
  ///   the media height (optional)
  ///
  /// * [int] mediaWidth:
  ///   the media width (optional)
  ///
  /// * [MultipartFile] attachedMedia:
  ///   a MultipartFile containing an asset that the \"media\" file references (optional). Example: to upload a video the \"media\" file should contain a screen capture and the \"attachedMedia\" should be the actual video.
  ///
  /// * [String] attachedMediaUrl:
  ///   this can be used if the \"attachedMedia\" is a link (i.e. a Youtube video, etc) (optional)
  ///
  /// * [String] attachedMediaString:
  ///   attached media content as a string (optional)
  ///
  /// * [String] attachedMediaStringFileName:
  ///   file name for attachedMediaString (optional)
  ///
  /// * [String] attachedMediaStringContentType:
  ///   content type for attachedMediaString (optional)
  ///
  /// * [int] attachedMediaHeight:
  ///   the attached media height (optional)
  ///
  /// * [int] attachedMediaWidth:
  ///   the attached media width (optional)
  ///
  /// * [String] locationDescription:
  ///   the location description (optional)
  ///
  /// * [String] app:
  ///   Deprecated: app parameter
  ///
  /// * [String] appKey:
  ///   the application key
  ///
  /// * [String] searchTags:
  ///   the search tags
  ///
  /// * [double] latitude:
  ///   the latitude (optional)
  ///
  /// * [double] longitude:
  ///   the longitude (optional)
  Future<Response> createAssetWithHttpInfo(num version, { bool? returnNulls, String? deviceId, int? accountId, int? albumId, int? collectionId, String? addToDefaultAlbum, bool? addToMediaLibrary, int? versionCode, String? versionName, String? metaData, String? caption, String? assetType, String? approvalStatus, int? assignedAccountId, MultipartFile? media, String? mediaUrl, String? mediaString, String? mediaStringFileName, String? mediaStringContentType, int? mediaHeight, int? mediaWidth, MultipartFile? attachedMedia, String? attachedMediaUrl, String? attachedMediaString, String? attachedMediaStringFileName, String? attachedMediaStringContentType, int? attachedMediaHeight, int? attachedMediaWidth, String? locationDescription, String? app, String? appKey, String? searchTags, double? latitude, double? longitude, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/asset/create'
      .replaceAll('{version}', version.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (returnNulls != null) {
      queryParams.addAll(_queryParams('', 'returnNulls', returnNulls));
    }
    if (deviceId != null) {
      queryParams.addAll(_queryParams('', 'deviceId', deviceId));
    }
    if (accountId != null) {
      queryParams.addAll(_queryParams('', 'accountId', accountId));
    }
    if (albumId != null) {
      queryParams.addAll(_queryParams('', 'albumId', albumId));
    }
    if (collectionId != null) {
      queryParams.addAll(_queryParams('', 'collectionId', collectionId));
    }
    if (addToDefaultAlbum != null) {
      queryParams.addAll(_queryParams('', 'addToDefaultAlbum', addToDefaultAlbum));
    }
    if (addToMediaLibrary != null) {
      queryParams.addAll(_queryParams('', 'addToMediaLibrary', addToMediaLibrary));
    }
    if (versionCode != null) {
      queryParams.addAll(_queryParams('', 'versionCode', versionCode));
    }
    if (versionName != null) {
      queryParams.addAll(_queryParams('', 'versionName', versionName));
    }
    if (metaData != null) {
      queryParams.addAll(_queryParams('', 'metaData', metaData));
    }
    if (caption != null) {
      queryParams.addAll(_queryParams('', 'caption', caption));
    }
    if (assetType != null) {
      queryParams.addAll(_queryParams('', 'assetType', assetType));
    }
    if (approvalStatus != null) {
      queryParams.addAll(_queryParams('', 'approvalStatus', approvalStatus));
    }
    if (assignedAccountId != null) {
      queryParams.addAll(_queryParams('', 'assignedAccountId', assignedAccountId));
    }
    if (media != null) {
      queryParams.addAll(_queryParams('', 'media', media));
    }
    if (mediaUrl != null) {
      queryParams.addAll(_queryParams('', 'mediaUrl', mediaUrl));
    }
    if (mediaString != null) {
      queryParams.addAll(_queryParams('', 'mediaString', mediaString));
    }
    if (mediaStringFileName != null) {
      queryParams.addAll(_queryParams('', 'mediaStringFileName', mediaStringFileName));
    }
    if (mediaStringContentType != null) {
      queryParams.addAll(_queryParams('', 'mediaStringContentType', mediaStringContentType));
    }
    if (mediaHeight != null) {
      queryParams.addAll(_queryParams('', 'mediaHeight', mediaHeight));
    }
    if (mediaWidth != null) {
      queryParams.addAll(_queryParams('', 'mediaWidth', mediaWidth));
    }
    if (attachedMedia != null) {
      queryParams.addAll(_queryParams('', 'attachedMedia', attachedMedia));
    }
    if (attachedMediaUrl != null) {
      queryParams.addAll(_queryParams('', 'attachedMediaUrl', attachedMediaUrl));
    }
    if (attachedMediaString != null) {
      queryParams.addAll(_queryParams('', 'attachedMediaString', attachedMediaString));
    }
    if (attachedMediaStringFileName != null) {
      queryParams.addAll(_queryParams('', 'attachedMediaStringFileName', attachedMediaStringFileName));
    }
    if (attachedMediaStringContentType != null) {
      queryParams.addAll(_queryParams('', 'attachedMediaStringContentType', attachedMediaStringContentType));
    }
    if (attachedMediaHeight != null) {
      queryParams.addAll(_queryParams('', 'attachedMediaHeight', attachedMediaHeight));
    }
    if (attachedMediaWidth != null) {
      queryParams.addAll(_queryParams('', 'attachedMediaWidth', attachedMediaWidth));
    }
    if (locationDescription != null) {
      queryParams.addAll(_queryParams('', 'locationDescription', locationDescription));
    }
    if (app != null) {
      queryParams.addAll(_queryParams('', 'app', app));
    }
    if (appKey != null) {
      queryParams.addAll(_queryParams('', 'appKey', appKey));
    }
    if (searchTags != null) {
      queryParams.addAll(_queryParams('', 'searchTags', searchTags));
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

  /// Create Asset
  ///
  /// Uploads an asset to server and returns an asset id which can be used to assign to various objects.
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [bool] returnNulls:
  ///   to return nulls
  ///
  /// * [String] deviceId:
  ///   a unique ID given by the device (deviceId or accountId required)
  ///
  /// * [int] accountId:
  ///   the account ID of the user (deviceId or accountId required)
  ///
  /// * [int] albumId:
  ///   the album the asset will be added to (optional)
  ///
  /// * [int] collectionId:
  ///   Deprecated: use collections via the collection endpoints.
  ///
  /// * [String] addToDefaultAlbum:
  ///   Whether to add to a default album
  ///
  /// * [bool] addToMediaLibrary:
  ///   Whether to add to the media library
  ///
  /// * [int] versionCode:
  ///   the version code
  ///
  /// * [String] versionName:
  ///   the version name
  ///
  /// * [String] metaData:
  ///   External custom client defined data
  ///
  /// * [String] caption:
  ///   the caption (optional)
  ///
  /// * [String] assetType:
  ///   the asset type
  ///
  /// * [String] approvalStatus:
  ///   approval status for the asset
  ///
  /// * [int] assignedAccountId:
  ///   account id assigned to the asset
  ///
  /// * [MultipartFile] media:
  ///   a MultipartFile containing the mimetype, etc
  ///
  /// * [String] mediaUrl:
  ///   this can be used if the \"media\" is a link (optional)
  ///
  /// * [String] mediaString:
  ///   the media content as a string (optional)
  ///
  /// * [String] mediaStringFileName:
  ///   file name for mediaString (optional)
  ///
  /// * [String] mediaStringContentType:
  ///   content type for mediaString (optional)
  ///
  /// * [int] mediaHeight:
  ///   the media height (optional)
  ///
  /// * [int] mediaWidth:
  ///   the media width (optional)
  ///
  /// * [MultipartFile] attachedMedia:
  ///   a MultipartFile containing an asset that the \"media\" file references (optional). Example: to upload a video the \"media\" file should contain a screen capture and the \"attachedMedia\" should be the actual video.
  ///
  /// * [String] attachedMediaUrl:
  ///   this can be used if the \"attachedMedia\" is a link (i.e. a Youtube video, etc) (optional)
  ///
  /// * [String] attachedMediaString:
  ///   attached media content as a string (optional)
  ///
  /// * [String] attachedMediaStringFileName:
  ///   file name for attachedMediaString (optional)
  ///
  /// * [String] attachedMediaStringContentType:
  ///   content type for attachedMediaString (optional)
  ///
  /// * [int] attachedMediaHeight:
  ///   the attached media height (optional)
  ///
  /// * [int] attachedMediaWidth:
  ///   the attached media width (optional)
  ///
  /// * [String] locationDescription:
  ///   the location description (optional)
  ///
  /// * [String] app:
  ///   Deprecated: app parameter
  ///
  /// * [String] appKey:
  ///   the application key
  ///
  /// * [String] searchTags:
  ///   the search tags
  ///
  /// * [double] latitude:
  ///   the latitude (optional)
  ///
  /// * [double] longitude:
  ///   the longitude (optional)
  Future<AssetResponse?> createAsset(num version, { bool? returnNulls, String? deviceId, int? accountId, int? albumId, int? collectionId, String? addToDefaultAlbum, bool? addToMediaLibrary, int? versionCode, String? versionName, String? metaData, String? caption, String? assetType, String? approvalStatus, int? assignedAccountId, MultipartFile? media, String? mediaUrl, String? mediaString, String? mediaStringFileName, String? mediaStringContentType, int? mediaHeight, int? mediaWidth, MultipartFile? attachedMedia, String? attachedMediaUrl, String? attachedMediaString, String? attachedMediaStringFileName, String? attachedMediaStringContentType, int? attachedMediaHeight, int? attachedMediaWidth, String? locationDescription, String? app, String? appKey, String? searchTags, double? latitude, double? longitude, }) async {
    final response = await createAssetWithHttpInfo(version,  returnNulls: returnNulls, deviceId: deviceId, accountId: accountId, albumId: albumId, collectionId: collectionId, addToDefaultAlbum: addToDefaultAlbum, addToMediaLibrary: addToMediaLibrary, versionCode: versionCode, versionName: versionName, metaData: metaData, caption: caption, assetType: assetType, approvalStatus: approvalStatus, assignedAccountId: assignedAccountId, media: media, mediaUrl: mediaUrl, mediaString: mediaString, mediaStringFileName: mediaStringFileName, mediaStringContentType: mediaStringContentType, mediaHeight: mediaHeight, mediaWidth: mediaWidth, attachedMedia: attachedMedia, attachedMediaUrl: attachedMediaUrl, attachedMediaString: attachedMediaString, attachedMediaStringFileName: attachedMediaStringFileName, attachedMediaStringContentType: attachedMediaStringContentType, attachedMediaHeight: attachedMediaHeight, attachedMediaWidth: attachedMediaWidth, locationDescription: locationDescription, app: app, appKey: appKey, searchTags: searchTags, latitude: latitude, longitude: longitude, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'AssetResponse',) as AssetResponse;
    
    }
    return null;
  }

  /// Delete Asset
  ///
  /// Delete an asset.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [String] assetId (required):
  ///   the id of the asset to delete
  ///
  /// * [String] deviceId:
  ///   the device id (deviceId or accountId required)
  ///
  /// * [int] accountId:
  ///   the account id of the user (deviceId or accountId required)
  ///
  /// * [double] latitude:
  ///   latitude used to update the user's current location
  ///
  /// * [double] longitude:
  ///   longitude used to update the user's current location
  Future<Response> deleteAssetWithHttpInfo(num version, String assetId, { String? deviceId, int? accountId, double? latitude, double? longitude, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/asset/delete'
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
      queryParams.addAll(_queryParams('', 'assetId', assetId));
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

  /// Delete Asset
  ///
  /// Delete an asset.
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [String] assetId (required):
  ///   the id of the asset to delete
  ///
  /// * [String] deviceId:
  ///   the device id (deviceId or accountId required)
  ///
  /// * [int] accountId:
  ///   the account id of the user (deviceId or accountId required)
  ///
  /// * [double] latitude:
  ///   latitude used to update the user's current location
  ///
  /// * [double] longitude:
  ///   longitude used to update the user's current location
  Future<SirqulResponse?> deleteAsset(num version, String assetId, { String? deviceId, int? accountId, double? latitude, double? longitude, }) async {
    final response = await deleteAssetWithHttpInfo(version, assetId,  deviceId: deviceId, accountId: accountId, latitude: latitude, longitude: longitude, );
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

  /// Get Asset
  ///
  /// Gets the full asset response including attached likes and notes.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] assetId (required):
  ///   the asset ID
  ///
  /// * [String] deviceId:
  ///   a unique ID given by the device (deviceId or accountId required)
  ///
  /// * [int] accountId:
  ///   the account ID of the user (deviceId or accountId required)
  ///
  /// * [bool] noteDescending:
  ///   determines whether the notes on the asset are in descending order
  Future<Response> getAssetWithHttpInfo(num version, int assetId, { String? deviceId, int? accountId, bool? noteDescending, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/asset/get'
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
      queryParams.addAll(_queryParams('', 'assetId', assetId));
    if (noteDescending != null) {
      queryParams.addAll(_queryParams('', 'noteDescending', noteDescending));
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

  /// Get Asset
  ///
  /// Gets the full asset response including attached likes and notes.
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] assetId (required):
  ///   the asset ID
  ///
  /// * [String] deviceId:
  ///   a unique ID given by the device (deviceId or accountId required)
  ///
  /// * [int] accountId:
  ///   the account ID of the user (deviceId or accountId required)
  ///
  /// * [bool] noteDescending:
  ///   determines whether the notes on the asset are in descending order
  Future<AssetFullResponse?> getAsset(num version, int assetId, { String? deviceId, int? accountId, bool? noteDescending, }) async {
    final response = await getAssetWithHttpInfo(version, assetId,  deviceId: deviceId, accountId: accountId, noteDescending: noteDescending, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'AssetFullResponse',) as AssetFullResponse;
    
    }
    return null;
  }

  /// Remove Asset from Collection
  ///
  /// Remove assets from collections
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [String] assetId (required):
  ///   the id of the asset to remove
  ///
  /// * [String] deviceId:
  ///   the device id (deviceId or accountId required)
  ///
  /// * [int] accountId:
  ///   the account id of the user (deviceId or accountId required)
  ///
  /// * [int] albumId:
  ///   the album id to remove the asset from
  ///
  /// * [int] collectionId:
  ///   the collection id to remove the asset from
  ///
  /// * [bool] removeFromDefaultAlbums:
  ///   remove from the user's profile album
  ///
  /// * [double] latitude:
  ///   latitude used to update the user's current location
  ///
  /// * [double] longitude:
  ///   longitude used to update the user's current location
  Future<Response> removeAssetWithHttpInfo(num version, String assetId, { String? deviceId, int? accountId, int? albumId, int? collectionId, bool? removeFromDefaultAlbums, double? latitude, double? longitude, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/asset/remove'
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
    if (albumId != null) {
      queryParams.addAll(_queryParams('', 'albumId', albumId));
    }
    if (collectionId != null) {
      queryParams.addAll(_queryParams('', 'collectionId', collectionId));
    }
      queryParams.addAll(_queryParams('', 'assetId', assetId));
    if (removeFromDefaultAlbums != null) {
      queryParams.addAll(_queryParams('', 'removeFromDefaultAlbums', removeFromDefaultAlbums));
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

  /// Remove Asset from Collection
  ///
  /// Remove assets from collections
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [String] assetId (required):
  ///   the id of the asset to remove
  ///
  /// * [String] deviceId:
  ///   the device id (deviceId or accountId required)
  ///
  /// * [int] accountId:
  ///   the account id of the user (deviceId or accountId required)
  ///
  /// * [int] albumId:
  ///   the album id to remove the asset from
  ///
  /// * [int] collectionId:
  ///   the collection id to remove the asset from
  ///
  /// * [bool] removeFromDefaultAlbums:
  ///   remove from the user's profile album
  ///
  /// * [double] latitude:
  ///   latitude used to update the user's current location
  ///
  /// * [double] longitude:
  ///   longitude used to update the user's current location
  Future<SirqulResponse?> removeAsset(num version, String assetId, { String? deviceId, int? accountId, int? albumId, int? collectionId, bool? removeFromDefaultAlbums, double? latitude, double? longitude, }) async {
    final response = await removeAssetWithHttpInfo(version, assetId,  deviceId: deviceId, accountId: accountId, albumId: albumId, collectionId: collectionId, removeFromDefaultAlbums: removeFromDefaultAlbums, latitude: latitude, longitude: longitude, );
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

  /// Search Assets
  ///
  /// Searches for assets
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [String] deviceId:
  ///   a unique ID given by the device (deviceId or accountId required)
  ///
  /// * [int] accountId:
  ///   the account ID of the user (deviceId or accountId required)
  ///
  /// * [String] albumIds:
  ///   comma separated list of album ids to search on
  ///
  /// * [String] assetIds:
  ///   comma separated list of asset ids to search on
  ///
  /// * [String] appKey:
  ///   the application key to filter results by application.
  ///
  /// * [String] mediaType:
  ///   filter results by media type. Possible values include: APPLICATION, IMAGE, AUDIO, VIDEO, MULTIPART, TEXT
  ///
  /// * [String] mimeType:
  ///   filter results by mime type
  ///
  /// * [String] keyword:
  ///   keyword search string
  ///
  /// * [int] versionCode:
  ///   filter results by version code
  ///
  /// * [String] versionName:
  ///   filter results by version name
  ///
  /// * [int] updatedSince:
  ///   return items that have been updated since this date (time-stamp in milliseconds)
  ///
  /// * [int] updatedBefore:
  ///   return items that have been updated before this date (time-stamp in milliseconds)
  ///
  /// * [String] sortField:
  ///   the field to sort by. See AssetApiMap
  ///
  /// * [bool] descending:
  ///   determines whether the sorted list is in descending or ascending order
  ///
  /// * [bool] searchMediaLibrary:
  ///   determines whether to search on the media library album
  ///
  /// * [bool] filterByBillable:
  ///   filter results by billable entity
  ///
  /// * [bool] activeOnly:
  ///   if only searching for active assets
  ///
  /// * [bool] returnApp:
  ///   determines whether to include the application response as part of the asset response
  ///
  /// * [int] start:
  ///   the start index for pagination
  ///
  /// * [int] limit:
  ///   the limit for pagination (there is a hard limit of 200)
  ///
  /// * [String] searchMode:
  ///   search mode for index (SearchIndexMode)
  ///
  /// * [String] assetType:
  ///   filter by asset type
  ///
  /// * [String] approvalStatus:
  ///   filter by approval status
  ///
  /// * [int] assignedAccountId:
  ///   filter results by an assigned account id
  Future<Response> searchAssetsWithHttpInfo(num version, { String? deviceId, int? accountId, String? albumIds, String? assetIds, String? appKey, String? mediaType, String? mimeType, String? keyword, int? versionCode, String? versionName, int? updatedSince, int? updatedBefore, String? sortField, bool? descending, bool? searchMediaLibrary, bool? filterByBillable, bool? activeOnly, bool? returnApp, int? start, int? limit, String? searchMode, String? assetType, String? approvalStatus, int? assignedAccountId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/asset/search'
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
    if (albumIds != null) {
      queryParams.addAll(_queryParams('', 'albumIds', albumIds));
    }
    if (assetIds != null) {
      queryParams.addAll(_queryParams('', 'assetIds', assetIds));
    }
    if (appKey != null) {
      queryParams.addAll(_queryParams('', 'appKey', appKey));
    }
    if (mediaType != null) {
      queryParams.addAll(_queryParams('', 'mediaType', mediaType));
    }
    if (mimeType != null) {
      queryParams.addAll(_queryParams('', 'mimeType', mimeType));
    }
    if (keyword != null) {
      queryParams.addAll(_queryParams('', 'keyword', keyword));
    }
    if (versionCode != null) {
      queryParams.addAll(_queryParams('', 'versionCode', versionCode));
    }
    if (versionName != null) {
      queryParams.addAll(_queryParams('', 'versionName', versionName));
    }
    if (updatedSince != null) {
      queryParams.addAll(_queryParams('', 'updatedSince', updatedSince));
    }
    if (updatedBefore != null) {
      queryParams.addAll(_queryParams('', 'updatedBefore', updatedBefore));
    }
    if (sortField != null) {
      queryParams.addAll(_queryParams('', 'sortField', sortField));
    }
    if (descending != null) {
      queryParams.addAll(_queryParams('', 'descending', descending));
    }
    if (searchMediaLibrary != null) {
      queryParams.addAll(_queryParams('', 'searchMediaLibrary', searchMediaLibrary));
    }
    if (filterByBillable != null) {
      queryParams.addAll(_queryParams('', 'filterByBillable', filterByBillable));
    }
    if (activeOnly != null) {
      queryParams.addAll(_queryParams('', 'activeOnly', activeOnly));
    }
    if (returnApp != null) {
      queryParams.addAll(_queryParams('', 'returnApp', returnApp));
    }
    if (start != null) {
      queryParams.addAll(_queryParams('', 'start', start));
    }
    if (limit != null) {
      queryParams.addAll(_queryParams('', 'limit', limit));
    }
    if (searchMode != null) {
      queryParams.addAll(_queryParams('', 'searchMode', searchMode));
    }
    if (assetType != null) {
      queryParams.addAll(_queryParams('', 'assetType', assetType));
    }
    if (approvalStatus != null) {
      queryParams.addAll(_queryParams('', 'approvalStatus', approvalStatus));
    }
    if (assignedAccountId != null) {
      queryParams.addAll(_queryParams('', 'assignedAccountId', assignedAccountId));
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

  /// Search Assets
  ///
  /// Searches for assets
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [String] deviceId:
  ///   a unique ID given by the device (deviceId or accountId required)
  ///
  /// * [int] accountId:
  ///   the account ID of the user (deviceId or accountId required)
  ///
  /// * [String] albumIds:
  ///   comma separated list of album ids to search on
  ///
  /// * [String] assetIds:
  ///   comma separated list of asset ids to search on
  ///
  /// * [String] appKey:
  ///   the application key to filter results by application.
  ///
  /// * [String] mediaType:
  ///   filter results by media type. Possible values include: APPLICATION, IMAGE, AUDIO, VIDEO, MULTIPART, TEXT
  ///
  /// * [String] mimeType:
  ///   filter results by mime type
  ///
  /// * [String] keyword:
  ///   keyword search string
  ///
  /// * [int] versionCode:
  ///   filter results by version code
  ///
  /// * [String] versionName:
  ///   filter results by version name
  ///
  /// * [int] updatedSince:
  ///   return items that have been updated since this date (time-stamp in milliseconds)
  ///
  /// * [int] updatedBefore:
  ///   return items that have been updated before this date (time-stamp in milliseconds)
  ///
  /// * [String] sortField:
  ///   the field to sort by. See AssetApiMap
  ///
  /// * [bool] descending:
  ///   determines whether the sorted list is in descending or ascending order
  ///
  /// * [bool] searchMediaLibrary:
  ///   determines whether to search on the media library album
  ///
  /// * [bool] filterByBillable:
  ///   filter results by billable entity
  ///
  /// * [bool] activeOnly:
  ///   if only searching for active assets
  ///
  /// * [bool] returnApp:
  ///   determines whether to include the application response as part of the asset response
  ///
  /// * [int] start:
  ///   the start index for pagination
  ///
  /// * [int] limit:
  ///   the limit for pagination (there is a hard limit of 200)
  ///
  /// * [String] searchMode:
  ///   search mode for index (SearchIndexMode)
  ///
  /// * [String] assetType:
  ///   filter by asset type
  ///
  /// * [String] approvalStatus:
  ///   filter by approval status
  ///
  /// * [int] assignedAccountId:
  ///   filter results by an assigned account id
  Future<List<AssetResponse>?> searchAssets(num version, { String? deviceId, int? accountId, String? albumIds, String? assetIds, String? appKey, String? mediaType, String? mimeType, String? keyword, int? versionCode, String? versionName, int? updatedSince, int? updatedBefore, String? sortField, bool? descending, bool? searchMediaLibrary, bool? filterByBillable, bool? activeOnly, bool? returnApp, int? start, int? limit, String? searchMode, String? assetType, String? approvalStatus, int? assignedAccountId, }) async {
    final response = await searchAssetsWithHttpInfo(version,  deviceId: deviceId, accountId: accountId, albumIds: albumIds, assetIds: assetIds, appKey: appKey, mediaType: mediaType, mimeType: mimeType, keyword: keyword, versionCode: versionCode, versionName: versionName, updatedSince: updatedSince, updatedBefore: updatedBefore, sortField: sortField, descending: descending, searchMediaLibrary: searchMediaLibrary, filterByBillable: filterByBillable, activeOnly: activeOnly, returnApp: returnApp, start: start, limit: limit, searchMode: searchMode, assetType: assetType, approvalStatus: approvalStatus, assignedAccountId: assignedAccountId, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<AssetResponse>') as List)
        .cast<AssetResponse>()
        .toList(growable: false);

    }
    return null;
  }

  /// Update Asset
  ///
  /// Updates an asset's meta data. If an album reference is passed in, the participants with write permissions are allowed to edit the asset. Otherwise, only the asset up-loader has permission to edit the data.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] assetId (required):
  ///   the ID of the asset to update
  ///
  /// * [String] deviceId:
  ///   a unique ID given by the device (deviceId or accountId required)
  ///
  /// * [int] accountId:
  ///   the account ID of the user (deviceId or accountId required)
  ///
  /// * [int] albumId:
  ///   the ID of the album to check user permissions
  ///
  /// * [int] attachedAssetId:
  ///   the ID of the attached asset
  ///
  /// * [int] versionCode:
  ///   the version code
  ///
  /// * [String] versionName:
  ///   the version name
  ///
  /// * [String] metaData:
  ///   External custom client defined data
  ///
  /// * [String] caption:
  ///   the caption
  ///
  /// * [String] assetType:
  ///   the asset type
  ///
  /// * [String] approvalStatus:
  ///   approval status for the asset
  ///
  /// * [int] assignedAccountId:
  ///   account id assigned to the asset
  ///
  /// * [MultipartFile] media:
  ///   a MultipartFile containing the mimetype, etc
  ///
  /// * [String] mediaUrl:
  ///   this can be used if the \"media\" is a link (optional)
  ///
  /// * [String] mediaString:
  ///   the media content as a string (optional)
  ///
  /// * [String] mediaStringFileName:
  ///   file name for mediaString (optional)
  ///
  /// * [String] mediaStringContentType:
  ///   content type for mediaString (optional)
  ///
  /// * [int] mediaHeight:
  ///   the media height (optional)
  ///
  /// * [int] mediaWidth:
  ///   the media width (optional)
  ///
  /// * [MultipartFile] attachedMedia:
  ///   a MultipartFile containing an asset that the \"media\" file references (optional). Example: to upload a video the \"media\" file should contain a screen capture and the \"attachedMedia\" should be the actual video.
  ///
  /// * [String] attachedMediaUrl:
  ///   this can be used if the \"attachedMedia\" is a link (i.e. a Youtube video, etc) (optional)
  ///
  /// * [String] attachedMediaString:
  ///   attached media content as a string (optional)
  ///
  /// * [String] attachedMediaStringFileName:
  ///   file name for attachedMediaString (optional)
  ///
  /// * [String] attachedMediaStringContentType:
  ///   content type for attachedMediaString (optional)
  ///
  /// * [int] attachedMediaHeight:
  ///   the attached media height (optional)
  ///
  /// * [int] attachedMediaWidth:
  ///   the attached media width (optional)
  ///
  /// * [String] locationDescription:
  ///   the location description
  ///
  /// * [String] searchTags:
  ///   search tags
  ///
  /// * [String] appKey:
  ///   the application key
  ///
  /// * [double] latitude:
  ///   latitude used to update the asset's location
  ///
  /// * [double] longitude:
  ///   longitude used to update the asset's location
  Future<Response> updateAssetWithHttpInfo(num version, int assetId, { String? deviceId, int? accountId, int? albumId, int? attachedAssetId, int? versionCode, String? versionName, String? metaData, String? caption, String? assetType, String? approvalStatus, int? assignedAccountId, MultipartFile? media, String? mediaUrl, String? mediaString, String? mediaStringFileName, String? mediaStringContentType, int? mediaHeight, int? mediaWidth, MultipartFile? attachedMedia, String? attachedMediaUrl, String? attachedMediaString, String? attachedMediaStringFileName, String? attachedMediaStringContentType, int? attachedMediaHeight, int? attachedMediaWidth, String? locationDescription, String? searchTags, String? appKey, double? latitude, double? longitude, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/asset/update'
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
      queryParams.addAll(_queryParams('', 'assetId', assetId));
    if (albumId != null) {
      queryParams.addAll(_queryParams('', 'albumId', albumId));
    }
    if (attachedAssetId != null) {
      queryParams.addAll(_queryParams('', 'attachedAssetId', attachedAssetId));
    }
    if (versionCode != null) {
      queryParams.addAll(_queryParams('', 'versionCode', versionCode));
    }
    if (versionName != null) {
      queryParams.addAll(_queryParams('', 'versionName', versionName));
    }
    if (metaData != null) {
      queryParams.addAll(_queryParams('', 'metaData', metaData));
    }
    if (caption != null) {
      queryParams.addAll(_queryParams('', 'caption', caption));
    }
    if (assetType != null) {
      queryParams.addAll(_queryParams('', 'assetType', assetType));
    }
    if (approvalStatus != null) {
      queryParams.addAll(_queryParams('', 'approvalStatus', approvalStatus));
    }
    if (assignedAccountId != null) {
      queryParams.addAll(_queryParams('', 'assignedAccountId', assignedAccountId));
    }
    if (media != null) {
      queryParams.addAll(_queryParams('', 'media', media));
    }
    if (mediaUrl != null) {
      queryParams.addAll(_queryParams('', 'mediaUrl', mediaUrl));
    }
    if (mediaString != null) {
      queryParams.addAll(_queryParams('', 'mediaString', mediaString));
    }
    if (mediaStringFileName != null) {
      queryParams.addAll(_queryParams('', 'mediaStringFileName', mediaStringFileName));
    }
    if (mediaStringContentType != null) {
      queryParams.addAll(_queryParams('', 'mediaStringContentType', mediaStringContentType));
    }
    if (mediaHeight != null) {
      queryParams.addAll(_queryParams('', 'mediaHeight', mediaHeight));
    }
    if (mediaWidth != null) {
      queryParams.addAll(_queryParams('', 'mediaWidth', mediaWidth));
    }
    if (attachedMedia != null) {
      queryParams.addAll(_queryParams('', 'attachedMedia', attachedMedia));
    }
    if (attachedMediaUrl != null) {
      queryParams.addAll(_queryParams('', 'attachedMediaUrl', attachedMediaUrl));
    }
    if (attachedMediaString != null) {
      queryParams.addAll(_queryParams('', 'attachedMediaString', attachedMediaString));
    }
    if (attachedMediaStringFileName != null) {
      queryParams.addAll(_queryParams('', 'attachedMediaStringFileName', attachedMediaStringFileName));
    }
    if (attachedMediaStringContentType != null) {
      queryParams.addAll(_queryParams('', 'attachedMediaStringContentType', attachedMediaStringContentType));
    }
    if (attachedMediaHeight != null) {
      queryParams.addAll(_queryParams('', 'attachedMediaHeight', attachedMediaHeight));
    }
    if (attachedMediaWidth != null) {
      queryParams.addAll(_queryParams('', 'attachedMediaWidth', attachedMediaWidth));
    }
    if (locationDescription != null) {
      queryParams.addAll(_queryParams('', 'locationDescription', locationDescription));
    }
    if (searchTags != null) {
      queryParams.addAll(_queryParams('', 'searchTags', searchTags));
    }
    if (appKey != null) {
      queryParams.addAll(_queryParams('', 'appKey', appKey));
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

  /// Update Asset
  ///
  /// Updates an asset's meta data. If an album reference is passed in, the participants with write permissions are allowed to edit the asset. Otherwise, only the asset up-loader has permission to edit the data.
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] assetId (required):
  ///   the ID of the asset to update
  ///
  /// * [String] deviceId:
  ///   a unique ID given by the device (deviceId or accountId required)
  ///
  /// * [int] accountId:
  ///   the account ID of the user (deviceId or accountId required)
  ///
  /// * [int] albumId:
  ///   the ID of the album to check user permissions
  ///
  /// * [int] attachedAssetId:
  ///   the ID of the attached asset
  ///
  /// * [int] versionCode:
  ///   the version code
  ///
  /// * [String] versionName:
  ///   the version name
  ///
  /// * [String] metaData:
  ///   External custom client defined data
  ///
  /// * [String] caption:
  ///   the caption
  ///
  /// * [String] assetType:
  ///   the asset type
  ///
  /// * [String] approvalStatus:
  ///   approval status for the asset
  ///
  /// * [int] assignedAccountId:
  ///   account id assigned to the asset
  ///
  /// * [MultipartFile] media:
  ///   a MultipartFile containing the mimetype, etc
  ///
  /// * [String] mediaUrl:
  ///   this can be used if the \"media\" is a link (optional)
  ///
  /// * [String] mediaString:
  ///   the media content as a string (optional)
  ///
  /// * [String] mediaStringFileName:
  ///   file name for mediaString (optional)
  ///
  /// * [String] mediaStringContentType:
  ///   content type for mediaString (optional)
  ///
  /// * [int] mediaHeight:
  ///   the media height (optional)
  ///
  /// * [int] mediaWidth:
  ///   the media width (optional)
  ///
  /// * [MultipartFile] attachedMedia:
  ///   a MultipartFile containing an asset that the \"media\" file references (optional). Example: to upload a video the \"media\" file should contain a screen capture and the \"attachedMedia\" should be the actual video.
  ///
  /// * [String] attachedMediaUrl:
  ///   this can be used if the \"attachedMedia\" is a link (i.e. a Youtube video, etc) (optional)
  ///
  /// * [String] attachedMediaString:
  ///   attached media content as a string (optional)
  ///
  /// * [String] attachedMediaStringFileName:
  ///   file name for attachedMediaString (optional)
  ///
  /// * [String] attachedMediaStringContentType:
  ///   content type for attachedMediaString (optional)
  ///
  /// * [int] attachedMediaHeight:
  ///   the attached media height (optional)
  ///
  /// * [int] attachedMediaWidth:
  ///   the attached media width (optional)
  ///
  /// * [String] locationDescription:
  ///   the location description
  ///
  /// * [String] searchTags:
  ///   search tags
  ///
  /// * [String] appKey:
  ///   the application key
  ///
  /// * [double] latitude:
  ///   latitude used to update the asset's location
  ///
  /// * [double] longitude:
  ///   longitude used to update the asset's location
  Future<SirqulResponse?> updateAsset(num version, int assetId, { String? deviceId, int? accountId, int? albumId, int? attachedAssetId, int? versionCode, String? versionName, String? metaData, String? caption, String? assetType, String? approvalStatus, int? assignedAccountId, MultipartFile? media, String? mediaUrl, String? mediaString, String? mediaStringFileName, String? mediaStringContentType, int? mediaHeight, int? mediaWidth, MultipartFile? attachedMedia, String? attachedMediaUrl, String? attachedMediaString, String? attachedMediaStringFileName, String? attachedMediaStringContentType, int? attachedMediaHeight, int? attachedMediaWidth, String? locationDescription, String? searchTags, String? appKey, double? latitude, double? longitude, }) async {
    final response = await updateAssetWithHttpInfo(version, assetId,  deviceId: deviceId, accountId: accountId, albumId: albumId, attachedAssetId: attachedAssetId, versionCode: versionCode, versionName: versionName, metaData: metaData, caption: caption, assetType: assetType, approvalStatus: approvalStatus, assignedAccountId: assignedAccountId, media: media, mediaUrl: mediaUrl, mediaString: mediaString, mediaStringFileName: mediaStringFileName, mediaStringContentType: mediaStringContentType, mediaHeight: mediaHeight, mediaWidth: mediaWidth, attachedMedia: attachedMedia, attachedMediaUrl: attachedMediaUrl, attachedMediaString: attachedMediaString, attachedMediaStringFileName: attachedMediaStringFileName, attachedMediaStringContentType: attachedMediaStringContentType, attachedMediaHeight: attachedMediaHeight, attachedMediaWidth: attachedMediaWidth, locationDescription: locationDescription, searchTags: searchTags, appKey: appKey, latitude: latitude, longitude: longitude, );
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
