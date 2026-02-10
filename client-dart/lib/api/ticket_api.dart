//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class TicketApi {
  TicketApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Get Ticket Count
  ///
  /// Gets the ticket count.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [String] deviceId:
  ///   the id of the device that owns the tickets
  ///
  /// * [int] accountId:
  ///   the id of the account that owns the tickets
  ///
  /// * [String] gameType:
  ///   this is deprecated.
  ///
  /// * [String] appKey:
  ///   the applicationkey
  ///
  /// * [String] ticketType:
  ///   the type of ticket
  Future<Response> getTicketCountWithHttpInfo(num version, { String? deviceId, int? accountId, String? gameType, String? appKey, String? ticketType, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/ticket/count'
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
    if (ticketType != null) {
      queryParams.addAll(_queryParams('', 'ticketType', ticketType));
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

  /// Get Ticket Count
  ///
  /// Gets the ticket count.
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [String] deviceId:
  ///   the id of the device that owns the tickets
  ///
  /// * [int] accountId:
  ///   the id of the account that owns the tickets
  ///
  /// * [String] gameType:
  ///   this is deprecated.
  ///
  /// * [String] appKey:
  ///   the applicationkey
  ///
  /// * [String] ticketType:
  ///   the type of ticket
  Future<CountResponse?> getTicketCount(num version, { String? deviceId, int? accountId, String? gameType, String? appKey, String? ticketType, }) async {
    final response = await getTicketCountWithHttpInfo(version,  deviceId: deviceId, accountId: accountId, gameType: gameType, appKey: appKey, ticketType: ticketType, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CountResponse',) as CountResponse;
    
    }
    return null;
  }

  /// Get Ticket List
  ///
  /// Gets the list of tickets.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [String] deviceId:
  ///   the id of the device that owns the tickets
  ///
  /// * [int] accountId:
  ///   the id of the account that owns the tickets
  ///
  /// * [String] ticketObjectType:
  ///   comma separated list of TicketObjectType
  ///
  /// * [String] actionType:
  ///   comma separated list of TicketActionType
  ///
  /// * [String] ticketIds:
  ///   the ids of the tickets to get
  ///
  /// * [String] objectIds:
  ///   the ids of the objects to get
  ///
  /// * [String] receiptTokens:
  ///   
  ///
  /// * [String] gameType:
  ///   
  ///
  /// * [String] appKey:
  ///   the application key
  Future<Response> getTicketListWithHttpInfo(num version, { String? deviceId, int? accountId, String? ticketObjectType, String? actionType, String? ticketIds, String? objectIds, String? receiptTokens, String? gameType, String? appKey, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/ticket/getList'
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
    if (ticketObjectType != null) {
      queryParams.addAll(_queryParams('', 'ticketObjectType', ticketObjectType));
    }
    if (actionType != null) {
      queryParams.addAll(_queryParams('', 'actionType', actionType));
    }
    if (ticketIds != null) {
      queryParams.addAll(_queryParams('', 'ticketIds', ticketIds));
    }
    if (objectIds != null) {
      queryParams.addAll(_queryParams('', 'objectIds', objectIds));
    }
    if (receiptTokens != null) {
      queryParams.addAll(_queryParams('', 'receiptTokens', receiptTokens));
    }
    if (gameType != null) {
      queryParams.addAll(_queryParams('', 'gameType', gameType));
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

  /// Get Ticket List
  ///
  /// Gets the list of tickets.
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [String] deviceId:
  ///   the id of the device that owns the tickets
  ///
  /// * [int] accountId:
  ///   the id of the account that owns the tickets
  ///
  /// * [String] ticketObjectType:
  ///   comma separated list of TicketObjectType
  ///
  /// * [String] actionType:
  ///   comma separated list of TicketActionType
  ///
  /// * [String] ticketIds:
  ///   the ids of the tickets to get
  ///
  /// * [String] objectIds:
  ///   the ids of the objects to get
  ///
  /// * [String] receiptTokens:
  ///   
  ///
  /// * [String] gameType:
  ///   
  ///
  /// * [String] appKey:
  ///   the application key
  Future<TicketListResponse?> getTicketList(num version, { String? deviceId, int? accountId, String? ticketObjectType, String? actionType, String? ticketIds, String? objectIds, String? receiptTokens, String? gameType, String? appKey, }) async {
    final response = await getTicketListWithHttpInfo(version,  deviceId: deviceId, accountId: accountId, ticketObjectType: ticketObjectType, actionType: actionType, ticketIds: ticketIds, objectIds: objectIds, receiptTokens: receiptTokens, gameType: gameType, appKey: appKey, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'TicketListResponse',) as TicketListResponse;
    
    }
    return null;
  }

  /// Gift Tickets
  ///
  /// Gift tickets to another user.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] receiverAccountId (required):
  ///   the id of the account receiving the tickets
  ///
  /// * [int] ticketId (required):
  ///   the id of the tickets
  ///
  /// * [String] deviceId:
  ///   the id of the device
  ///
  /// * [int] accountId:
  ///   the id of the gift owner
  ///
  /// * [int] assetId:
  ///   the id of the asset
  ///
  /// * [String] customMessage:
  ///   a message that can be written to go along with the gift
  ///
  /// * [String] gameType:
  ///   the type of game associated with the tickets
  ///
  /// * [String] appKey:
  ///   the application key
  Future<Response> giftPurchaseWithHttpInfo(num version, int receiverAccountId, int ticketId, { String? deviceId, int? accountId, int? assetId, String? customMessage, String? gameType, String? appKey, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/purchase/gift'
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
      queryParams.addAll(_queryParams('', 'receiverAccountId', receiverAccountId));
      queryParams.addAll(_queryParams('', 'ticketId', ticketId));
    if (assetId != null) {
      queryParams.addAll(_queryParams('', 'assetId', assetId));
    }
    if (customMessage != null) {
      queryParams.addAll(_queryParams('', 'customMessage', customMessage));
    }
    if (gameType != null) {
      queryParams.addAll(_queryParams('', 'gameType', gameType));
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

  /// Gift Tickets
  ///
  /// Gift tickets to another user.
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] receiverAccountId (required):
  ///   the id of the account receiving the tickets
  ///
  /// * [int] ticketId (required):
  ///   the id of the tickets
  ///
  /// * [String] deviceId:
  ///   the id of the device
  ///
  /// * [int] accountId:
  ///   the id of the gift owner
  ///
  /// * [int] assetId:
  ///   the id of the asset
  ///
  /// * [String] customMessage:
  ///   a message that can be written to go along with the gift
  ///
  /// * [String] gameType:
  ///   the type of game associated with the tickets
  ///
  /// * [String] appKey:
  ///   the application key
  Future<SirqulResponse?> giftPurchase(num version, int receiverAccountId, int ticketId, { String? deviceId, int? accountId, int? assetId, String? customMessage, String? gameType, String? appKey, }) async {
    final response = await giftPurchaseWithHttpInfo(version, receiverAccountId, ticketId,  deviceId: deviceId, accountId: accountId, assetId: assetId, customMessage: customMessage, gameType: gameType, appKey: appKey, );
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

  /// Save Ticket
  ///
  /// Allow user to acquire a purchase item and generate a ticket record. Used to redeem tickets or add tickets to the system.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [String] actionType (required):
  ///   the action being performed, values: COMPLETED, // ADD TICKETS FOR COMPLETING A MISSION, CHALLENGE, GAME, PACK, LEVEL, LEVEL OBJECT REDEEMED, // REMOVE TICKETS FOR BUYING PACKS, HINTS, AND PEN TOOLS OPTIONS, ETC USERS_PLAYED, // ADD TICKETS FOR LEVELS PLAYED BY OTHER USERS TOURNAMENT_OWNER, // ADD TICKETS FOR TOURNAMENTS BY OTHER USERS PURCHASED, // ADD TICKET VIA IN APP PURCHASING SUMATION, // SUMATION OF TICKETS EARNED FROM CHILDREN GIFTED, // TRANSFERING OF PURCHASE ITEMS TO OTHER PEOPLE REFUNDED // FOR REFUNDING TICKETS BACK TO THE USER
  ///
  /// * [String] ticketObjectType (required):
  ///   the type of object being purchased, values: GAME_OBJECT, GAME_LEVEL, PACK, GAME, MISSION, PROFILE, APPLICATION, TICKETS, ASSET, CUSTOM
  ///
  /// * [bool] returnNulls:
  ///   whether to return nulls or not
  ///
  /// * [String] deviceId:
  ///   the device id that owns the tickets
  ///
  /// * [int] accountId:
  ///   the account id that owns the tickets
  ///
  /// * [String] gameType:
  ///   This parameter is deprecated. deprecated, use the appKey
  ///
  /// * [String] appKey:
  ///   the application key
  ///
  /// * [int] objectId:
  ///   the ID of the item being purchased
  ///
  /// * [String] purchaseCode:
  ///   a unique string identifier defined by the application owner or Executive
  ///
  /// * [String] receiptToken:
  ///   a unique transaction identifier from the purchase provider (i.e. the transaction ID from iTunes, Google Play, etc)
  ///
  /// * [String] receiptData:
  ///   the receipt/transaction data for validating a purchase via iTunes/Gooogle/etc. This should be in string format.
  ///
  /// * [int] count:
  ///   the count of tickets
  ///
  /// * [String] ticketType:
  ///   the ticket type
  ///
  /// * [String] purchaseProvider:
  ///   the provider for making the purchase {ITUNES, ITUNES_SANDBOX, GOOGLE}
  ///
  /// * [String] purchaseType:
  ///   a comma separated list of purchase types { SIRQUL, // purchasing from the sirqul store using tickets IOS, // purchasing from the itunes store for iPhone, iPod, iPod Touch GOOGLE, // purchasing from the google android store AMAZON, // purchasing from the amazon android store MAC, // purchasing from the itunes store for OSX WP8, // purhasing from the windows phone 8 store FREE }
  ///
  /// * [bool] returnProfileResponse:
  ///   returns a ProfileResponse if true, otherwise will return an AppResponse
  ///
  /// * [bool] includeProfileResponse:
  ///   if returnProfileResponse is false, will return an AppResponse with profile data if true
  ///
  /// * [String] appVersion:
  ///   the application version
  Future<Response> saveTicketWithHttpInfo(num version, String actionType, String ticketObjectType, { bool? returnNulls, String? deviceId, int? accountId, String? gameType, String? appKey, int? objectId, String? purchaseCode, String? receiptToken, String? receiptData, int? count, String? ticketType, String? purchaseProvider, String? purchaseType, bool? returnProfileResponse, bool? includeProfileResponse, String? appVersion, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/ticket/save'
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
    if (gameType != null) {
      queryParams.addAll(_queryParams('', 'gameType', gameType));
    }
    if (appKey != null) {
      queryParams.addAll(_queryParams('', 'appKey', appKey));
    }
      queryParams.addAll(_queryParams('', 'actionType', actionType));
      queryParams.addAll(_queryParams('', 'ticketObjectType', ticketObjectType));
    if (objectId != null) {
      queryParams.addAll(_queryParams('', 'objectId', objectId));
    }
    if (purchaseCode != null) {
      queryParams.addAll(_queryParams('', 'purchaseCode', purchaseCode));
    }
    if (receiptToken != null) {
      queryParams.addAll(_queryParams('', 'receiptToken', receiptToken));
    }
    if (receiptData != null) {
      queryParams.addAll(_queryParams('', 'receiptData', receiptData));
    }
    if (count != null) {
      queryParams.addAll(_queryParams('', 'count', count));
    }
    if (ticketType != null) {
      queryParams.addAll(_queryParams('', 'ticketType', ticketType));
    }
    if (purchaseProvider != null) {
      queryParams.addAll(_queryParams('', 'purchaseProvider', purchaseProvider));
    }
    if (purchaseType != null) {
      queryParams.addAll(_queryParams('', 'purchaseType', purchaseType));
    }
    if (returnProfileResponse != null) {
      queryParams.addAll(_queryParams('', 'returnProfileResponse', returnProfileResponse));
    }
    if (includeProfileResponse != null) {
      queryParams.addAll(_queryParams('', 'includeProfileResponse', includeProfileResponse));
    }
    if (appVersion != null) {
      queryParams.addAll(_queryParams('', 'appVersion', appVersion));
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

  /// Save Ticket
  ///
  /// Allow user to acquire a purchase item and generate a ticket record. Used to redeem tickets or add tickets to the system.
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [String] actionType (required):
  ///   the action being performed, values: COMPLETED, // ADD TICKETS FOR COMPLETING A MISSION, CHALLENGE, GAME, PACK, LEVEL, LEVEL OBJECT REDEEMED, // REMOVE TICKETS FOR BUYING PACKS, HINTS, AND PEN TOOLS OPTIONS, ETC USERS_PLAYED, // ADD TICKETS FOR LEVELS PLAYED BY OTHER USERS TOURNAMENT_OWNER, // ADD TICKETS FOR TOURNAMENTS BY OTHER USERS PURCHASED, // ADD TICKET VIA IN APP PURCHASING SUMATION, // SUMATION OF TICKETS EARNED FROM CHILDREN GIFTED, // TRANSFERING OF PURCHASE ITEMS TO OTHER PEOPLE REFUNDED // FOR REFUNDING TICKETS BACK TO THE USER
  ///
  /// * [String] ticketObjectType (required):
  ///   the type of object being purchased, values: GAME_OBJECT, GAME_LEVEL, PACK, GAME, MISSION, PROFILE, APPLICATION, TICKETS, ASSET, CUSTOM
  ///
  /// * [bool] returnNulls:
  ///   whether to return nulls or not
  ///
  /// * [String] deviceId:
  ///   the device id that owns the tickets
  ///
  /// * [int] accountId:
  ///   the account id that owns the tickets
  ///
  /// * [String] gameType:
  ///   This parameter is deprecated. deprecated, use the appKey
  ///
  /// * [String] appKey:
  ///   the application key
  ///
  /// * [int] objectId:
  ///   the ID of the item being purchased
  ///
  /// * [String] purchaseCode:
  ///   a unique string identifier defined by the application owner or Executive
  ///
  /// * [String] receiptToken:
  ///   a unique transaction identifier from the purchase provider (i.e. the transaction ID from iTunes, Google Play, etc)
  ///
  /// * [String] receiptData:
  ///   the receipt/transaction data for validating a purchase via iTunes/Gooogle/etc. This should be in string format.
  ///
  /// * [int] count:
  ///   the count of tickets
  ///
  /// * [String] ticketType:
  ///   the ticket type
  ///
  /// * [String] purchaseProvider:
  ///   the provider for making the purchase {ITUNES, ITUNES_SANDBOX, GOOGLE}
  ///
  /// * [String] purchaseType:
  ///   a comma separated list of purchase types { SIRQUL, // purchasing from the sirqul store using tickets IOS, // purchasing from the itunes store for iPhone, iPod, iPod Touch GOOGLE, // purchasing from the google android store AMAZON, // purchasing from the amazon android store MAC, // purchasing from the itunes store for OSX WP8, // purhasing from the windows phone 8 store FREE }
  ///
  /// * [bool] returnProfileResponse:
  ///   returns a ProfileResponse if true, otherwise will return an AppResponse
  ///
  /// * [bool] includeProfileResponse:
  ///   if returnProfileResponse is false, will return an AppResponse with profile data if true
  ///
  /// * [String] appVersion:
  ///   the application version
  Future<ProfileResponse?> saveTicket(num version, String actionType, String ticketObjectType, { bool? returnNulls, String? deviceId, int? accountId, String? gameType, String? appKey, int? objectId, String? purchaseCode, String? receiptToken, String? receiptData, int? count, String? ticketType, String? purchaseProvider, String? purchaseType, bool? returnProfileResponse, bool? includeProfileResponse, String? appVersion, }) async {
    final response = await saveTicketWithHttpInfo(version, actionType, ticketObjectType,  returnNulls: returnNulls, deviceId: deviceId, accountId: accountId, gameType: gameType, appKey: appKey, objectId: objectId, purchaseCode: purchaseCode, receiptToken: receiptToken, receiptData: receiptData, count: count, ticketType: ticketType, purchaseProvider: purchaseProvider, purchaseType: purchaseType, returnProfileResponse: returnProfileResponse, includeProfileResponse: includeProfileResponse, appVersion: appVersion, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ProfileResponse',) as ProfileResponse;
    
    }
    return null;
  }

  /// Save Ticket with Reciept
  ///
  /// Similar to the Save Ticket endpoint but allows the receiptData to be in binary format. This must be a multi-part post
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [String] actionType (required):
  ///   the action being performed { COMPLETED, // ADD TICKETS FOR COMPLETING A MISSION, CHALLENGE, GAME, PACK, LEVEL, LEVEL OBJECT REDEEMED, // REMOVE TICKETS FOR BUYING PACKS, HINTS, AND PEN TOOLS OPTIONS, ETC USERS_PLAYED, // ADD TICKETS FOR LEVELS PLAYED BY OTHER USERS TOURNAMENT_OWNER, // ADD TICKETS FOR TOURNAMENTS BY OTHER USERS PURCHASED, // ADD TICKET VIA IN APP PURCHASING SUMATION, // SUMATION OF TICKETS EARNED FROM CHILDREN GIFTED, // TRANSFERING OF PURCHASE ITEMS TO OTHER PEOPLE REFUNDED // FOR REFUNDING TICKETS BACK TO THE USER }
  ///
  /// * [String] ticketObjectType (required):
  ///   the type of object being purchased {GAME_OBJECT, GAME_LEVEL, PACK, GAME, MISSION, PROFILE, APPLICATION, TICKETS, ASSET, CUSTOM}
  ///
  /// * [MultipartFile] receiptData (required):
  ///   the receipt/transaction data for validating a purchase via iTunes/Gooogle/etc. This should be in binary format.
  ///
  /// * [bool] returnNulls:
  ///   whether to return nulls or not
  ///
  /// * [String] deviceId:
  ///   the device id
  ///
  /// * [int] accountId:
  ///   the account id
  ///
  /// * [String] gameType:
  ///   This parameter is deprecated. deprecated, use the appKey
  ///
  /// * [String] appKey:
  ///   the application key
  ///
  /// * [int] objectId:
  ///   the ID of the item being purchased
  ///
  /// * [String] purchaseCode:
  ///   a unique string identifier defined by the application owner or Executive
  ///
  /// * [String] receiptToken:
  ///   a unique transaction identifier from the purchase provider (i.e. the transaction ID from iTunes, Google Play, etc)
  ///
  /// * [int] count:
  ///   the count of tickets
  ///
  /// * [String] ticketType:
  ///   the ticket type
  ///
  /// * [String] purchaseProvider:
  ///   the provider for making the purchase {ITUNES, ITUNES_SANDBOX, GOOGLE}
  ///
  /// * [String] purchaseType:
  ///   a comma separated list of purchase types { SIRQUL, // purchasing from the sirqul store using tickets IOS, // purchasing from the itunes store for iPhone, iPod, iPod Touch GOOGLE, // purchasing from the google android store AMAZON, // purchasing from the amazon android store MAC, // purchasing from the itunes store for OSX WP8, // purhasing from the windows phone 8 store FREE }
  ///
  /// * [bool] returnProfileResponse:
  ///   returns a ProfileResponse if true, otherwise will return an AppResponse
  ///
  /// * [bool] includeProfileResponse:
  ///   if returnProfileResponse is false, will return an AppResponse with profile data if true
  ///
  /// * [String] appVersion:
  ///   the application version
  Future<Response> saveTicketViaFileUploadWithHttpInfo(num version, String actionType, String ticketObjectType, MultipartFile receiptData, { bool? returnNulls, String? deviceId, int? accountId, String? gameType, String? appKey, int? objectId, String? purchaseCode, String? receiptToken, int? count, String? ticketType, String? purchaseProvider, String? purchaseType, bool? returnProfileResponse, bool? includeProfileResponse, String? appVersion, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/ticket/save/fileUpload'
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
    if (gameType != null) {
      queryParams.addAll(_queryParams('', 'gameType', gameType));
    }
    if (appKey != null) {
      queryParams.addAll(_queryParams('', 'appKey', appKey));
    }
      queryParams.addAll(_queryParams('', 'actionType', actionType));
      queryParams.addAll(_queryParams('', 'ticketObjectType', ticketObjectType));
    if (objectId != null) {
      queryParams.addAll(_queryParams('', 'objectId', objectId));
    }
    if (purchaseCode != null) {
      queryParams.addAll(_queryParams('', 'purchaseCode', purchaseCode));
    }
    if (receiptToken != null) {
      queryParams.addAll(_queryParams('', 'receiptToken', receiptToken));
    }
      queryParams.addAll(_queryParams('', 'receiptData', receiptData));
    if (count != null) {
      queryParams.addAll(_queryParams('', 'count', count));
    }
    if (ticketType != null) {
      queryParams.addAll(_queryParams('', 'ticketType', ticketType));
    }
    if (purchaseProvider != null) {
      queryParams.addAll(_queryParams('', 'purchaseProvider', purchaseProvider));
    }
    if (purchaseType != null) {
      queryParams.addAll(_queryParams('', 'purchaseType', purchaseType));
    }
    if (returnProfileResponse != null) {
      queryParams.addAll(_queryParams('', 'returnProfileResponse', returnProfileResponse));
    }
    if (includeProfileResponse != null) {
      queryParams.addAll(_queryParams('', 'includeProfileResponse', includeProfileResponse));
    }
    if (appVersion != null) {
      queryParams.addAll(_queryParams('', 'appVersion', appVersion));
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

  /// Save Ticket with Reciept
  ///
  /// Similar to the Save Ticket endpoint but allows the receiptData to be in binary format. This must be a multi-part post
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [String] actionType (required):
  ///   the action being performed { COMPLETED, // ADD TICKETS FOR COMPLETING A MISSION, CHALLENGE, GAME, PACK, LEVEL, LEVEL OBJECT REDEEMED, // REMOVE TICKETS FOR BUYING PACKS, HINTS, AND PEN TOOLS OPTIONS, ETC USERS_PLAYED, // ADD TICKETS FOR LEVELS PLAYED BY OTHER USERS TOURNAMENT_OWNER, // ADD TICKETS FOR TOURNAMENTS BY OTHER USERS PURCHASED, // ADD TICKET VIA IN APP PURCHASING SUMATION, // SUMATION OF TICKETS EARNED FROM CHILDREN GIFTED, // TRANSFERING OF PURCHASE ITEMS TO OTHER PEOPLE REFUNDED // FOR REFUNDING TICKETS BACK TO THE USER }
  ///
  /// * [String] ticketObjectType (required):
  ///   the type of object being purchased {GAME_OBJECT, GAME_LEVEL, PACK, GAME, MISSION, PROFILE, APPLICATION, TICKETS, ASSET, CUSTOM}
  ///
  /// * [MultipartFile] receiptData (required):
  ///   the receipt/transaction data for validating a purchase via iTunes/Gooogle/etc. This should be in binary format.
  ///
  /// * [bool] returnNulls:
  ///   whether to return nulls or not
  ///
  /// * [String] deviceId:
  ///   the device id
  ///
  /// * [int] accountId:
  ///   the account id
  ///
  /// * [String] gameType:
  ///   This parameter is deprecated. deprecated, use the appKey
  ///
  /// * [String] appKey:
  ///   the application key
  ///
  /// * [int] objectId:
  ///   the ID of the item being purchased
  ///
  /// * [String] purchaseCode:
  ///   a unique string identifier defined by the application owner or Executive
  ///
  /// * [String] receiptToken:
  ///   a unique transaction identifier from the purchase provider (i.e. the transaction ID from iTunes, Google Play, etc)
  ///
  /// * [int] count:
  ///   the count of tickets
  ///
  /// * [String] ticketType:
  ///   the ticket type
  ///
  /// * [String] purchaseProvider:
  ///   the provider for making the purchase {ITUNES, ITUNES_SANDBOX, GOOGLE}
  ///
  /// * [String] purchaseType:
  ///   a comma separated list of purchase types { SIRQUL, // purchasing from the sirqul store using tickets IOS, // purchasing from the itunes store for iPhone, iPod, iPod Touch GOOGLE, // purchasing from the google android store AMAZON, // purchasing from the amazon android store MAC, // purchasing from the itunes store for OSX WP8, // purhasing from the windows phone 8 store FREE }
  ///
  /// * [bool] returnProfileResponse:
  ///   returns a ProfileResponse if true, otherwise will return an AppResponse
  ///
  /// * [bool] includeProfileResponse:
  ///   if returnProfileResponse is false, will return an AppResponse with profile data if true
  ///
  /// * [String] appVersion:
  ///   the application version
  Future<ProfileResponse?> saveTicketViaFileUpload(num version, String actionType, String ticketObjectType, MultipartFile receiptData, { bool? returnNulls, String? deviceId, int? accountId, String? gameType, String? appKey, int? objectId, String? purchaseCode, String? receiptToken, int? count, String? ticketType, String? purchaseProvider, String? purchaseType, bool? returnProfileResponse, bool? includeProfileResponse, String? appVersion, }) async {
    final response = await saveTicketViaFileUploadWithHttpInfo(version, actionType, ticketObjectType, receiptData,  returnNulls: returnNulls, deviceId: deviceId, accountId: accountId, gameType: gameType, appKey: appKey, objectId: objectId, purchaseCode: purchaseCode, receiptToken: receiptToken, count: count, ticketType: ticketType, purchaseProvider: purchaseProvider, purchaseType: purchaseType, returnProfileResponse: returnProfileResponse, includeProfileResponse: includeProfileResponse, appVersion: appVersion, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ProfileResponse',) as ProfileResponse;
    
    }
    return null;
  }

  /// Get Ticket Offers
  ///
  /// Get a list offers for tickets owned by sirqul.  Purchasing these will add the number of tickets to the account specified by the offer.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  Future<Response> ticketOffersWithHttpInfo(num version,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/ticket/ticketoffers'
      .replaceAll('{version}', version.toString());

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

  /// Get Ticket Offers
  ///
  /// Get a list offers for tickets owned by sirqul.  Purchasing these will add the number of tickets to the account specified by the offer.
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  Future<TicketOfferResponse?> ticketOffers(num version,) async {
    final response = await ticketOffersWithHttpInfo(version,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'TicketOfferResponse',) as TicketOfferResponse;
    
    }
    return null;
  }
}
