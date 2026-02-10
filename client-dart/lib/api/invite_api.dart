//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class InviteApi {
  InviteApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Accept Invite
  ///
  /// Allows a user to accept an invite. The user could also become the inviter's friend.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [String] token (required):
  ///   the invite token
  ///
  /// * [int] accountId (required):
  ///   the accountId of the user who is accepting the invite
  ///
  /// * [int] albumId:
  ///   the album id associated with this invite (if applicable)
  ///
  /// * [int] missionId:
  ///   the mission id associated with this invite (if applicable)
  ///
  /// * [int] albumContestId:
  ///   the album contest id associated with this invite (if applicable)
  ///
  /// * [int] offerId:
  ///   the offer id associated with this invite (if applicable)
  ///
  /// * [int] offerLocationId:
  ///   the offer location id associated with this invite (if applicable)
  ///
  /// * [int] retailerLocationId:
  ///   the retailer location id associated with this invite (if applicable)
  ///
  /// * [String] appKey:
  ///   the application key
  ///
  /// * [bool] autoFriend:
  ///   whether to auto-friend the invite sender and receiver
  ///
  /// * [bool] autoAttendEvent:
  ///   whether to mark the event as attending automatically after invite is accepted
  ///
  /// * [bool] autoFavoriteOffer:
  ///   whether to mark the offer as favorited automatically after invite is accepted
  ///
  /// * [bool] autoFavoriteOfferLocation:
  ///   whether to mark the offer location as favorited automatically after invite is accepted
  ///
  /// * [bool] autoFavoriteRetailerLocation:
  ///   whether to mark the retailer location as favorited automatically after invite is accepted
  Future<Response> acceptInviteWithHttpInfo(num version, String token, int accountId, { int? albumId, int? missionId, int? albumContestId, int? offerId, int? offerLocationId, int? retailerLocationId, String? appKey, bool? autoFriend, bool? autoAttendEvent, bool? autoFavoriteOffer, bool? autoFavoriteOfferLocation, bool? autoFavoriteRetailerLocation, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/invite/accept'
      .replaceAll('{version}', version.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'token', token));
      queryParams.addAll(_queryParams('', 'accountId', accountId));
    if (albumId != null) {
      queryParams.addAll(_queryParams('', 'albumId', albumId));
    }
    if (missionId != null) {
      queryParams.addAll(_queryParams('', 'missionId', missionId));
    }
    if (albumContestId != null) {
      queryParams.addAll(_queryParams('', 'albumContestId', albumContestId));
    }
    if (offerId != null) {
      queryParams.addAll(_queryParams('', 'offerId', offerId));
    }
    if (offerLocationId != null) {
      queryParams.addAll(_queryParams('', 'offerLocationId', offerLocationId));
    }
    if (retailerLocationId != null) {
      queryParams.addAll(_queryParams('', 'retailerLocationId', retailerLocationId));
    }
    if (appKey != null) {
      queryParams.addAll(_queryParams('', 'appKey', appKey));
    }
    if (autoFriend != null) {
      queryParams.addAll(_queryParams('', 'autoFriend', autoFriend));
    }
    if (autoAttendEvent != null) {
      queryParams.addAll(_queryParams('', 'autoAttendEvent', autoAttendEvent));
    }
    if (autoFavoriteOffer != null) {
      queryParams.addAll(_queryParams('', 'autoFavoriteOffer', autoFavoriteOffer));
    }
    if (autoFavoriteOfferLocation != null) {
      queryParams.addAll(_queryParams('', 'autoFavoriteOfferLocation', autoFavoriteOfferLocation));
    }
    if (autoFavoriteRetailerLocation != null) {
      queryParams.addAll(_queryParams('', 'autoFavoriteRetailerLocation', autoFavoriteRetailerLocation));
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

  /// Accept Invite
  ///
  /// Allows a user to accept an invite. The user could also become the inviter's friend.
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [String] token (required):
  ///   the invite token
  ///
  /// * [int] accountId (required):
  ///   the accountId of the user who is accepting the invite
  ///
  /// * [int] albumId:
  ///   the album id associated with this invite (if applicable)
  ///
  /// * [int] missionId:
  ///   the mission id associated with this invite (if applicable)
  ///
  /// * [int] albumContestId:
  ///   the album contest id associated with this invite (if applicable)
  ///
  /// * [int] offerId:
  ///   the offer id associated with this invite (if applicable)
  ///
  /// * [int] offerLocationId:
  ///   the offer location id associated with this invite (if applicable)
  ///
  /// * [int] retailerLocationId:
  ///   the retailer location id associated with this invite (if applicable)
  ///
  /// * [String] appKey:
  ///   the application key
  ///
  /// * [bool] autoFriend:
  ///   whether to auto-friend the invite sender and receiver
  ///
  /// * [bool] autoAttendEvent:
  ///   whether to mark the event as attending automatically after invite is accepted
  ///
  /// * [bool] autoFavoriteOffer:
  ///   whether to mark the offer as favorited automatically after invite is accepted
  ///
  /// * [bool] autoFavoriteOfferLocation:
  ///   whether to mark the offer location as favorited automatically after invite is accepted
  ///
  /// * [bool] autoFavoriteRetailerLocation:
  ///   whether to mark the retailer location as favorited automatically after invite is accepted
  Future<ConsumerInviteResponse?> acceptInvite(num version, String token, int accountId, { int? albumId, int? missionId, int? albumContestId, int? offerId, int? offerLocationId, int? retailerLocationId, String? appKey, bool? autoFriend, bool? autoAttendEvent, bool? autoFavoriteOffer, bool? autoFavoriteOfferLocation, bool? autoFavoriteRetailerLocation, }) async {
    final response = await acceptInviteWithHttpInfo(version, token, accountId,  albumId: albumId, missionId: missionId, albumContestId: albumContestId, offerId: offerId, offerLocationId: offerLocationId, retailerLocationId: retailerLocationId, appKey: appKey, autoFriend: autoFriend, autoAttendEvent: autoAttendEvent, autoFavoriteOffer: autoFavoriteOffer, autoFavoriteOfferLocation: autoFavoriteOfferLocation, autoFavoriteRetailerLocation: autoFavoriteRetailerLocation, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ConsumerInviteResponse',) as ConsumerInviteResponse;
    
    }
    return null;
  }

  /// Invite to Contest
  ///
  /// Allows a user to invite people to gain access to a contest. This will generate an invite token, which when used, will give the invitee access to a contest (whether it is private or not). The invitee will also become the user's friend when the invitation is accepted.
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
  /// * [int] appId:
  ///   This parameter is deprecated.
  ///
  /// * [String] appKey:
  ///   the application key
  ///
  /// * [int] albumContestId:
  ///   the album contest to share
  ///
  /// * [double] latitude:
  ///   the current latitude of the user
  ///
  /// * [double] longitude:
  ///   the current longitude of the user
  Future<Response> albumContestInviteWithHttpInfo(num version, { String? deviceId, int? accountId, int? appId, String? appKey, int? albumContestId, double? latitude, double? longitude, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/invite/albumContest'
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
    if (appId != null) {
      queryParams.addAll(_queryParams('', 'appId', appId));
    }
    if (appKey != null) {
      queryParams.addAll(_queryParams('', 'appKey', appKey));
    }
    if (albumContestId != null) {
      queryParams.addAll(_queryParams('', 'albumContestId', albumContestId));
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

  /// Invite to Contest
  ///
  /// Allows a user to invite people to gain access to a contest. This will generate an invite token, which when used, will give the invitee access to a contest (whether it is private or not). The invitee will also become the user's friend when the invitation is accepted.
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
  /// * [int] appId:
  ///   This parameter is deprecated.
  ///
  /// * [String] appKey:
  ///   the application key
  ///
  /// * [int] albumContestId:
  ///   the album contest to share
  ///
  /// * [double] latitude:
  ///   the current latitude of the user
  ///
  /// * [double] longitude:
  ///   the current longitude of the user
  Future<InviteResponse?> albumContestInvite(num version, { String? deviceId, int? accountId, int? appId, String? appKey, int? albumContestId, double? latitude, double? longitude, }) async {
    final response = await albumContestInviteWithHttpInfo(version,  deviceId: deviceId, accountId: accountId, appId: appId, appKey: appKey, albumContestId: albumContestId, latitude: latitude, longitude: longitude, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'InviteResponse',) as InviteResponse;
    
    }
    return null;
  }

  /// Invite to Collection
  ///
  /// Allows a user to invite people to gain access to a collection. This will generate an invite token, which when used, will give the invitee access to a collection (whether it is private or not). The invitee will also become the user's friend when the invitation is accepted.
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
  /// * [int] appId:
  ///   This parameter is deprecated.
  ///
  /// * [String] appKey:
  ///   the application key
  ///
  /// * [int] albumId:
  ///   the album to share
  ///
  /// * [double] latitude:
  ///   the current latitude of the user
  ///
  /// * [double] longitude:
  ///   the current longitude of the user
  Future<Response> albumInviteWithHttpInfo(num version, { String? deviceId, int? accountId, int? appId, String? appKey, int? albumId, double? latitude, double? longitude, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/invite/album'
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
    if (appId != null) {
      queryParams.addAll(_queryParams('', 'appId', appId));
    }
    if (appKey != null) {
      queryParams.addAll(_queryParams('', 'appKey', appKey));
    }
    if (albumId != null) {
      queryParams.addAll(_queryParams('', 'albumId', albumId));
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

  /// Invite to Collection
  ///
  /// Allows a user to invite people to gain access to a collection. This will generate an invite token, which when used, will give the invitee access to a collection (whether it is private or not). The invitee will also become the user's friend when the invitation is accepted.
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
  /// * [int] appId:
  ///   This parameter is deprecated.
  ///
  /// * [String] appKey:
  ///   the application key
  ///
  /// * [int] albumId:
  ///   the album to share
  ///
  /// * [double] latitude:
  ///   the current latitude of the user
  ///
  /// * [double] longitude:
  ///   the current longitude of the user
  Future<InviteResponse?> albumInvite(num version, { String? deviceId, int? accountId, int? appId, String? appKey, int? albumId, double? latitude, double? longitude, }) async {
    final response = await albumInviteWithHttpInfo(version,  deviceId: deviceId, accountId: accountId, appId: appId, appKey: appKey, albumId: albumId, latitude: latitude, longitude: longitude, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'InviteResponse',) as InviteResponse;
    
    }
    return null;
  }

  /// Invite to Event
  ///
  /// Allows a user to invite people to attend an event. This will generate an invite token, which when used, will allow the invitee to add the offer to their wallet.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] accountId (required):
  ///   the account ID of the user making the share
  ///
  /// * [String] appKey (required):
  ///   the application key
  ///
  /// * [int] listingId (required):
  ///   The ID of the event listing
  ///
  /// * [String] receiverAccountIds:
  ///   the account ID of a Sirqul user they would like to share an event with
  ///
  /// * [int] retailerLocationId:
  ///   The retailer location id of where the event will take place
  Future<Response> eventInviteWithHttpInfo(num version, int accountId, String appKey, int listingId, { String? receiverAccountIds, int? retailerLocationId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/invite/event'
      .replaceAll('{version}', version.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'accountId', accountId));
    if (receiverAccountIds != null) {
      queryParams.addAll(_queryParams('', 'receiverAccountIds', receiverAccountIds));
    }
      queryParams.addAll(_queryParams('', 'appKey', appKey));
      queryParams.addAll(_queryParams('', 'listingId', listingId));
    if (retailerLocationId != null) {
      queryParams.addAll(_queryParams('', 'retailerLocationId', retailerLocationId));
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

  /// Invite to Event
  ///
  /// Allows a user to invite people to attend an event. This will generate an invite token, which when used, will allow the invitee to add the offer to their wallet.
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] accountId (required):
  ///   the account ID of the user making the share
  ///
  /// * [String] appKey (required):
  ///   the application key
  ///
  /// * [int] listingId (required):
  ///   The ID of the event listing
  ///
  /// * [String] receiverAccountIds:
  ///   the account ID of a Sirqul user they would like to share an event with
  ///
  /// * [int] retailerLocationId:
  ///   The retailer location id of where the event will take place
  Future<InviteResponse?> eventInvite(num version, int accountId, String appKey, int listingId, { String? receiverAccountIds, int? retailerLocationId, }) async {
    final response = await eventInviteWithHttpInfo(version, accountId, appKey, listingId,  receiverAccountIds: receiverAccountIds, retailerLocationId: retailerLocationId, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'InviteResponse',) as InviteResponse;
    
    }
    return null;
  }

  /// Invite to Game Level
  ///
  /// Allows a user to invite people to gain access to an album. This will generate an invite token, which when used, will give the invitee access to an album (whether it is private or not). The invitee will also become the user's friend when the invitation is accepted.
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
  /// * [int] appId:
  ///   This parameter is deprecated.
  ///
  /// * [String] appKey:
  ///   the application key
  ///
  /// * [int] gameLevelId:
  ///   the game level that the user owns and is giving access to
  ///
  /// * [double] latitude:
  ///   the current latitude of the user
  ///
  /// * [double] longitude:
  ///   the current longitude of the user
  Future<Response> gameInviteWithHttpInfo(num version, { String? deviceId, int? accountId, int? appId, String? appKey, int? gameLevelId, double? latitude, double? longitude, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/invite/gameLevel'
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
    if (appId != null) {
      queryParams.addAll(_queryParams('', 'appId', appId));
    }
    if (appKey != null) {
      queryParams.addAll(_queryParams('', 'appKey', appKey));
    }
    if (gameLevelId != null) {
      queryParams.addAll(_queryParams('', 'gameLevelId', gameLevelId));
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

  /// Invite to Game Level
  ///
  /// Allows a user to invite people to gain access to an album. This will generate an invite token, which when used, will give the invitee access to an album (whether it is private or not). The invitee will also become the user's friend when the invitation is accepted.
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
  /// * [int] appId:
  ///   This parameter is deprecated.
  ///
  /// * [String] appKey:
  ///   the application key
  ///
  /// * [int] gameLevelId:
  ///   the game level that the user owns and is giving access to
  ///
  /// * [double] latitude:
  ///   the current latitude of the user
  ///
  /// * [double] longitude:
  ///   the current longitude of the user
  Future<InviteResponse?> gameInvite(num version, { String? deviceId, int? accountId, int? appId, String? appKey, int? gameLevelId, double? latitude, double? longitude, }) async {
    final response = await gameInviteWithHttpInfo(version,  deviceId: deviceId, accountId: accountId, appId: appId, appKey: appKey, gameLevelId: gameLevelId, latitude: latitude, longitude: longitude, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'InviteResponse',) as InviteResponse;
    
    }
    return null;
  }

  /// Get Invite
  ///
  /// This is used to determine whether an invite token is valid. If the token is valid, this will also return information about who invited the user, and what they are invited to.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] accountId:
  ///   Account ID of the user if they are logged in
  ///
  /// * [String] token:
  ///   the invite token
  ///
  /// * [int] albumId:
  ///   album id to match the invite against (if applicable)
  ///
  /// * [int] missionId:
  ///   mission id to match the invite against (if applicable)
  ///
  /// * [int] albumContestId:
  ///   album contest id to match the invite against (if applicable)
  ///
  /// * [int] offerId:
  ///   offer id to match the invite against (if applicable)
  ///
  /// * [int] offerLocationId:
  ///   offer location id to match the invite against (if applicable)
  ///
  /// * [int] retailerLocationId:
  ///   retailer location id to match the invite against (if applicable)
  ///
  /// * [String] appKey:
  ///   the application key
  Future<Response> getInviteWithHttpInfo(num version, { int? accountId, String? token, int? albumId, int? missionId, int? albumContestId, int? offerId, int? offerLocationId, int? retailerLocationId, String? appKey, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/invite/get'
      .replaceAll('{version}', version.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (accountId != null) {
      queryParams.addAll(_queryParams('', 'accountId', accountId));
    }
    if (token != null) {
      queryParams.addAll(_queryParams('', 'token', token));
    }
    if (albumId != null) {
      queryParams.addAll(_queryParams('', 'albumId', albumId));
    }
    if (missionId != null) {
      queryParams.addAll(_queryParams('', 'missionId', missionId));
    }
    if (albumContestId != null) {
      queryParams.addAll(_queryParams('', 'albumContestId', albumContestId));
    }
    if (offerId != null) {
      queryParams.addAll(_queryParams('', 'offerId', offerId));
    }
    if (offerLocationId != null) {
      queryParams.addAll(_queryParams('', 'offerLocationId', offerLocationId));
    }
    if (retailerLocationId != null) {
      queryParams.addAll(_queryParams('', 'retailerLocationId', retailerLocationId));
    }
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

  /// Get Invite
  ///
  /// This is used to determine whether an invite token is valid. If the token is valid, this will also return information about who invited the user, and what they are invited to.
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] accountId:
  ///   Account ID of the user if they are logged in
  ///
  /// * [String] token:
  ///   the invite token
  ///
  /// * [int] albumId:
  ///   album id to match the invite against (if applicable)
  ///
  /// * [int] missionId:
  ///   mission id to match the invite against (if applicable)
  ///
  /// * [int] albumContestId:
  ///   album contest id to match the invite against (if applicable)
  ///
  /// * [int] offerId:
  ///   offer id to match the invite against (if applicable)
  ///
  /// * [int] offerLocationId:
  ///   offer location id to match the invite against (if applicable)
  ///
  /// * [int] retailerLocationId:
  ///   retailer location id to match the invite against (if applicable)
  ///
  /// * [String] appKey:
  ///   the application key
  Future<SirqulResponse?> getInvite(num version, { int? accountId, String? token, int? albumId, int? missionId, int? albumContestId, int? offerId, int? offerLocationId, int? retailerLocationId, String? appKey, }) async {
    final response = await getInviteWithHttpInfo(version,  accountId: accountId, token: token, albumId: albumId, missionId: missionId, albumContestId: albumContestId, offerId: offerId, offerLocationId: offerLocationId, retailerLocationId: retailerLocationId, appKey: appKey, );
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

  /// Invite to Mission
  ///
  /// Allows a user to invite people to gain access to a mission. This will generate an invite token, which when used, will give the invitee access to a mission (whether it is private or not). The invitee will also become the user's friend when the invitation is accepted.
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
  /// * [int] appId:
  ///   This parameter is deprecated.
  ///
  /// * [String] appKey:
  ///   the application key
  ///
  /// * [int] missionId:
  ///   the mission to share
  ///
  /// * [double] latitude:
  ///   the current latitude of the user
  ///
  /// * [double] longitude:
  ///   the current longitude of the user
  Future<Response> missionInviteWithHttpInfo(num version, { String? deviceId, int? accountId, int? appId, String? appKey, int? missionId, double? latitude, double? longitude, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/invite/mission'
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
    if (appId != null) {
      queryParams.addAll(_queryParams('', 'appId', appId));
    }
    if (appKey != null) {
      queryParams.addAll(_queryParams('', 'appKey', appKey));
    }
    if (missionId != null) {
      queryParams.addAll(_queryParams('', 'missionId', missionId));
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

  /// Invite to Mission
  ///
  /// Allows a user to invite people to gain access to a mission. This will generate an invite token, which when used, will give the invitee access to a mission (whether it is private or not). The invitee will also become the user's friend when the invitation is accepted.
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
  /// * [int] appId:
  ///   This parameter is deprecated.
  ///
  /// * [String] appKey:
  ///   the application key
  ///
  /// * [int] missionId:
  ///   the mission to share
  ///
  /// * [double] latitude:
  ///   the current latitude of the user
  ///
  /// * [double] longitude:
  ///   the current longitude of the user
  Future<InviteResponse?> missionInvite(num version, { String? deviceId, int? accountId, int? appId, String? appKey, int? missionId, double? latitude, double? longitude, }) async {
    final response = await missionInviteWithHttpInfo(version,  deviceId: deviceId, accountId: accountId, appId: appId, appKey: appKey, missionId: missionId, latitude: latitude, longitude: longitude, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'InviteResponse',) as InviteResponse;
    
    }
    return null;
  }

  /// Invite to Offer
  ///
  /// Allows a user to invite people to favorite an offer. This will generate an invite token, which when used, will give the invitee the offer in their favorite's list.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] accountId (required):
  ///   the account ID of the user making the share
  ///
  /// * [String] appKey (required):
  ///   the application key
  ///
  /// * [int] offerId (required):
  ///   the ID of the offer used to invite to favorite
  Future<Response> offerInviteWithHttpInfo(num version, int accountId, String appKey, int offerId,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/invite/offer'
      .replaceAll('{version}', version.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'accountId', accountId));
      queryParams.addAll(_queryParams('', 'appKey', appKey));
      queryParams.addAll(_queryParams('', 'offerId', offerId));

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

  /// Invite to Offer
  ///
  /// Allows a user to invite people to favorite an offer. This will generate an invite token, which when used, will give the invitee the offer in their favorite's list.
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] accountId (required):
  ///   the account ID of the user making the share
  ///
  /// * [String] appKey (required):
  ///   the application key
  ///
  /// * [int] offerId (required):
  ///   the ID of the offer used to invite to favorite
  Future<InviteResponse?> offerInvite(num version, int accountId, String appKey, int offerId,) async {
    final response = await offerInviteWithHttpInfo(version, accountId, appKey, offerId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'InviteResponse',) as InviteResponse;
    
    }
    return null;
  }

  /// Invite to Offer Location
  ///
  /// Allows a user to invite people to favorite an offer location. This will generate an invite token, which when used, will give the invitee the offer location in their favorite's list.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] accountId (required):
  ///   the account ID of the user making the share
  ///
  /// * [String] appKey (required):
  ///   the application key
  ///
  /// * [int] offerLocationId (required):
  ///   the id of the offer location to share
  Future<Response> offerLocationInviteWithHttpInfo(num version, int accountId, String appKey, int offerLocationId,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/invite/offerLocation'
      .replaceAll('{version}', version.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'accountId', accountId));
      queryParams.addAll(_queryParams('', 'appKey', appKey));
      queryParams.addAll(_queryParams('', 'offerLocationId', offerLocationId));

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

  /// Invite to Offer Location
  ///
  /// Allows a user to invite people to favorite an offer location. This will generate an invite token, which when used, will give the invitee the offer location in their favorite's list.
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] accountId (required):
  ///   the account ID of the user making the share
  ///
  /// * [String] appKey (required):
  ///   the application key
  ///
  /// * [int] offerLocationId (required):
  ///   the id of the offer location to share
  Future<InviteResponse?> offerLocationInvite(num version, int accountId, String appKey, int offerLocationId,) async {
    final response = await offerLocationInviteWithHttpInfo(version, accountId, appKey, offerLocationId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'InviteResponse',) as InviteResponse;
    
    }
    return null;
  }

  /// Invite to Retailer Location
  ///
  /// Allows a user to invite people to favorite a retailer location. This will generate an invite token, which when used, will give the invitee the retailer location in their favorite's list.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] accountId (required):
  ///   the account ID of the user making the share
  ///
  /// * [String] appKey (required):
  ///   the application key
  ///
  /// * [int] retailerLocationId (required):
  ///   The retailer location id of where the event will take place
  ///
  /// * [int] albumId:
  ///   Optional album id to link with the invite
  Future<Response> retailerLocationInviteWithHttpInfo(num version, int accountId, String appKey, int retailerLocationId, { int? albumId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/invite/retailerLocation'
      .replaceAll('{version}', version.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'accountId', accountId));
      queryParams.addAll(_queryParams('', 'appKey', appKey));
      queryParams.addAll(_queryParams('', 'retailerLocationId', retailerLocationId));
    if (albumId != null) {
      queryParams.addAll(_queryParams('', 'albumId', albumId));
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

  /// Invite to Retailer Location
  ///
  /// Allows a user to invite people to favorite a retailer location. This will generate an invite token, which when used, will give the invitee the retailer location in their favorite's list.
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] accountId (required):
  ///   the account ID of the user making the share
  ///
  /// * [String] appKey (required):
  ///   the application key
  ///
  /// * [int] retailerLocationId (required):
  ///   The retailer location id of where the event will take place
  ///
  /// * [int] albumId:
  ///   Optional album id to link with the invite
  Future<InviteResponse?> retailerLocationInvite(num version, int accountId, String appKey, int retailerLocationId, { int? albumId, }) async {
    final response = await retailerLocationInviteWithHttpInfo(version, accountId, appKey, retailerLocationId,  albumId: albumId, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'InviteResponse',) as InviteResponse;
    
    }
    return null;
  }
}
