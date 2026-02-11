//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class WalletApi {
  WalletApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Create Wallet Offers
  ///
  /// Adds offers to the wallet
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
  /// * [int] offerId:
  ///   The id of the offer being added (offerId or offeLocationId required)
  ///
  /// * [int] offerLocationId:
  ///   The id of the offer location being added (offerId or offeLocationId required)
  ///
  /// * [String] offerCart:
  ///   A JSON list of offers to purchase. ```json [   {     \"offerId\": 123,     \"offerLocationId\": 234,     \"quantity\": 2   },   {     \"offerId\": 456,     \"offerLocationId\": 567,     \"quantity\": 1   } ] ``` 
  ///
  /// * [String] promoCode:
  ///   The promoCode
  ///
  /// * [String] currencyType:
  ///   Determines the method of purchasing offer. CASH = use card on file, POINTS = use points, TICKETS = use tickets
  ///
  /// * [bool] usePoints:
  ///   Sets the currencyType to POINTS
  ///
  /// * [String] metaData:
  ///   External custom client defined data
  ///
  /// * [String] appKey:
  ///   The application requesting the purchase, required when currencyType is TICKETS
  ///
  /// * [int] status:
  ///   Custom status value to change to (0 or 1 for redeem, 5 or 6 for membership)
  Future<Response> createOfferTransactionWithHttpInfo({ String? deviceId, int? accountId, int? offerId, int? offerLocationId, String? offerCart, String? promoCode, String? currencyType, bool? usePoints, String? metaData, String? appKey, int? status, }) async {
    // ignore: prefer_const_declarations
    final path = r'/wallet/create';

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
    if (offerId != null) {
      queryParams.addAll(_queryParams('', 'offerId', offerId));
    }
    if (offerLocationId != null) {
      queryParams.addAll(_queryParams('', 'offerLocationId', offerLocationId));
    }
    if (offerCart != null) {
      queryParams.addAll(_queryParams('', 'offerCart', offerCart));
    }
    if (promoCode != null) {
      queryParams.addAll(_queryParams('', 'promoCode', promoCode));
    }
    if (currencyType != null) {
      queryParams.addAll(_queryParams('', 'currencyType', currencyType));
    }
    if (usePoints != null) {
      queryParams.addAll(_queryParams('', 'usePoints', usePoints));
    }
    if (metaData != null) {
      queryParams.addAll(_queryParams('', 'metaData', metaData));
    }
    if (appKey != null) {
      queryParams.addAll(_queryParams('', 'appKey', appKey));
    }
    if (status != null) {
      queryParams.addAll(_queryParams('', 'status', status));
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

  /// Create Wallet Offers
  ///
  /// Adds offers to the wallet
  ///
  /// Parameters:
  ///
  /// * [String] deviceId:
  ///   The device id (deviceId or accountId required)
  ///
  /// * [int] accountId:
  ///   The account id of the user (deviceId or accountId required)
  ///
  /// * [int] offerId:
  ///   The id of the offer being added (offerId or offeLocationId required)
  ///
  /// * [int] offerLocationId:
  ///   The id of the offer location being added (offerId or offeLocationId required)
  ///
  /// * [String] offerCart:
  ///   A JSON list of offers to purchase. ```json [   {     \"offerId\": 123,     \"offerLocationId\": 234,     \"quantity\": 2   },   {     \"offerId\": 456,     \"offerLocationId\": 567,     \"quantity\": 1   } ] ``` 
  ///
  /// * [String] promoCode:
  ///   The promoCode
  ///
  /// * [String] currencyType:
  ///   Determines the method of purchasing offer. CASH = use card on file, POINTS = use points, TICKETS = use tickets
  ///
  /// * [bool] usePoints:
  ///   Sets the currencyType to POINTS
  ///
  /// * [String] metaData:
  ///   External custom client defined data
  ///
  /// * [String] appKey:
  ///   The application requesting the purchase, required when currencyType is TICKETS
  ///
  /// * [int] status:
  ///   Custom status value to change to (0 or 1 for redeem, 5 or 6 for membership)
  Future<List<OfferTransactionResponse>?> createOfferTransaction({ String? deviceId, int? accountId, int? offerId, int? offerLocationId, String? offerCart, String? promoCode, String? currencyType, bool? usePoints, String? metaData, String? appKey, int? status, }) async {
    final response = await createOfferTransactionWithHttpInfo( deviceId: deviceId, accountId: accountId, offerId: offerId, offerLocationId: offerLocationId, offerCart: offerCart, promoCode: promoCode, currencyType: currencyType, usePoints: usePoints, metaData: metaData, appKey: appKey, status: status, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<OfferTransactionResponse>') as List)
        .cast<OfferTransactionResponse>()
        .toList(growable: false);

    }
    return null;
  }

  /// Delete Wallet Offer
  ///
  /// Removes the transaction from the wallet by setting the deleted date to the current date/time.  Requires a valid account and transactionId.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] transactionId (required):
  ///   The offer transaction id to remove
  ///
  /// * [String] deviceId:
  ///   The device id (deviceId or accountId required)
  ///
  /// * [int] accountId:
  ///   The account id of the user (deviceId or accountId required)
  Future<Response> deleteOfferTransactionWithHttpInfo(int transactionId, { String? deviceId, int? accountId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/wallet/delete';

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
      queryParams.addAll(_queryParams('', 'transactionId', transactionId));

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

  /// Delete Wallet Offer
  ///
  /// Removes the transaction from the wallet by setting the deleted date to the current date/time.  Requires a valid account and transactionId.
  ///
  /// Parameters:
  ///
  /// * [int] transactionId (required):
  ///   The offer transaction id to remove
  ///
  /// * [String] deviceId:
  ///   The device id (deviceId or accountId required)
  ///
  /// * [int] accountId:
  ///   The account id of the user (deviceId or accountId required)
  Future<SirqulResponse?> deleteOfferTransaction(int transactionId, { String? deviceId, int? accountId, }) async {
    final response = await deleteOfferTransactionWithHttpInfo(transactionId,  deviceId: deviceId, accountId: accountId, );
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

  /// Get Wallet Offer
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] transactionId (required):
  ///   The offer transaction id to get details of
  ///
  /// * [String] deviceId:
  ///   The device id (deviceId or accountId required)
  ///
  /// * [int] accountId:
  ///   The account id of the user (deviceId or accountId required)
  ///
  /// * [bool] includeMission:
  ///   If true then include mission data, false to not include
  ///
  /// * [double] latitude:
  ///   The latitude location of the user
  ///
  /// * [double] longitude:
  ///   The latitude location of the user
  ///
  /// * [bool] returnFullResponse:
  ///   Determines whether to return a detailed version of the response
  Future<Response> getOfferTransactionWithHttpInfo(int transactionId, { String? deviceId, int? accountId, bool? includeMission, double? latitude, double? longitude, bool? returnFullResponse, }) async {
    // ignore: prefer_const_declarations
    final path = r'/wallet/get';

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
      queryParams.addAll(_queryParams('', 'transactionId', transactionId));
    if (includeMission != null) {
      queryParams.addAll(_queryParams('', 'includeMission', includeMission));
    }
    if (latitude != null) {
      queryParams.addAll(_queryParams('', 'latitude', latitude));
    }
    if (longitude != null) {
      queryParams.addAll(_queryParams('', 'longitude', longitude));
    }
    if (returnFullResponse != null) {
      queryParams.addAll(_queryParams('', 'returnFullResponse', returnFullResponse));
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

  /// Get Wallet Offer
  ///
  /// Parameters:
  ///
  /// * [int] transactionId (required):
  ///   The offer transaction id to get details of
  ///
  /// * [String] deviceId:
  ///   The device id (deviceId or accountId required)
  ///
  /// * [int] accountId:
  ///   The account id of the user (deviceId or accountId required)
  ///
  /// * [bool] includeMission:
  ///   If true then include mission data, false to not include
  ///
  /// * [double] latitude:
  ///   The latitude location of the user
  ///
  /// * [double] longitude:
  ///   The latitude location of the user
  ///
  /// * [bool] returnFullResponse:
  ///   Determines whether to return a detailed version of the response
  Future<OfferTransactionResponse?> getOfferTransaction(int transactionId, { String? deviceId, int? accountId, bool? includeMission, double? latitude, double? longitude, bool? returnFullResponse, }) async {
    final response = await getOfferTransactionWithHttpInfo(transactionId,  deviceId: deviceId, accountId: accountId, includeMission: includeMission, latitude: latitude, longitude: longitude, returnFullResponse: returnFullResponse, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'OfferTransactionResponse',) as OfferTransactionResponse;
    
    }
    return null;
  }

  /// Preview Wallet Offers
  ///
  /// Preview the final cost of a transaction without charging the user
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
  /// * [int] offerId:
  ///   The id of the offer being added (offerId or offeLocationId required)
  ///
  /// * [int] offerLocationId:
  ///   The id of the offer location being added (offerId or offeLocationId required)
  ///
  /// * [String] offerCart:
  ///   A JSON list of offers to purchase.
  ///
  /// * [String] promoCode:
  ///   The promoCode
  ///
  /// * [String] currencyType:
  ///   Determines the method of purchasing offer. CASH = use card on file, POINTS = use points, TICKETS = use tickets
  ///
  /// * [bool] usePoints:
  ///   Sets the currencyType to POINTS
  ///
  /// * [String] metaData:
  ///   External custom client defined data
  ///
  /// * [String] appKey:
  ///   The application requesting the purchase, required when currencyType is TICKETS
  Future<Response> previewOfferTransactionWithHttpInfo({ String? deviceId, int? accountId, int? offerId, int? offerLocationId, String? offerCart, String? promoCode, String? currencyType, bool? usePoints, String? metaData, String? appKey, }) async {
    // ignore: prefer_const_declarations
    final path = r'/wallet/preview';

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
    if (offerId != null) {
      queryParams.addAll(_queryParams('', 'offerId', offerId));
    }
    if (offerLocationId != null) {
      queryParams.addAll(_queryParams('', 'offerLocationId', offerLocationId));
    }
    if (offerCart != null) {
      queryParams.addAll(_queryParams('', 'offerCart', offerCart));
    }
    if (promoCode != null) {
      queryParams.addAll(_queryParams('', 'promoCode', promoCode));
    }
    if (currencyType != null) {
      queryParams.addAll(_queryParams('', 'currencyType', currencyType));
    }
    if (usePoints != null) {
      queryParams.addAll(_queryParams('', 'usePoints', usePoints));
    }
    if (metaData != null) {
      queryParams.addAll(_queryParams('', 'metaData', metaData));
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

  /// Preview Wallet Offers
  ///
  /// Preview the final cost of a transaction without charging the user
  ///
  /// Parameters:
  ///
  /// * [String] deviceId:
  ///   The device id (deviceId or accountId required)
  ///
  /// * [int] accountId:
  ///   The account id of the user (deviceId or accountId required)
  ///
  /// * [int] offerId:
  ///   The id of the offer being added (offerId or offeLocationId required)
  ///
  /// * [int] offerLocationId:
  ///   The id of the offer location being added (offerId or offeLocationId required)
  ///
  /// * [String] offerCart:
  ///   A JSON list of offers to purchase.
  ///
  /// * [String] promoCode:
  ///   The promoCode
  ///
  /// * [String] currencyType:
  ///   Determines the method of purchasing offer. CASH = use card on file, POINTS = use points, TICKETS = use tickets
  ///
  /// * [bool] usePoints:
  ///   Sets the currencyType to POINTS
  ///
  /// * [String] metaData:
  ///   External custom client defined data
  ///
  /// * [String] appKey:
  ///   The application requesting the purchase, required when currencyType is TICKETS
  Future<List<OfferTransactionResponse>?> previewOfferTransaction({ String? deviceId, int? accountId, int? offerId, int? offerLocationId, String? offerCart, String? promoCode, String? currencyType, bool? usePoints, String? metaData, String? appKey, }) async {
    final response = await previewOfferTransactionWithHttpInfo( deviceId: deviceId, accountId: accountId, offerId: offerId, offerLocationId: offerLocationId, offerCart: offerCart, promoCode: promoCode, currencyType: currencyType, usePoints: usePoints, metaData: metaData, appKey: appKey, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<OfferTransactionResponse>') as List)
        .cast<OfferTransactionResponse>()
        .toList(growable: false);

    }
    return null;
  }

  /// Search Wallet Offers
  ///
  /// Search on active offers currently in the user's wallet, or past offers the user has already redeemed.
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
  /// * [String] keyword:
  ///   The keyword to search for
  ///
  /// * [int] retailerId:
  ///   Filter results for this retailer
  ///
  /// * [String] retailerIds:
  ///   Filter results for a list of retailers
  ///
  /// * [int] retailerLocationId:
  ///   Filter results for this retailer location
  ///
  /// * [String] retailerLocationIds:
  ///   Filter results for a list of retailer locations
  ///
  /// * [String] excludeRetailerLocationIds:
  ///   Filter results to exclude retailer locations
  ///
  /// * [int] offerId:
  ///   Filter results for this offer
  ///
  /// * [String] offerIds:
  ///   Filter results for a list of offer
  ///
  /// * [int] offerLocationId:
  ///   Filter results for this offer location
  ///
  /// * [String] offerLocationIds:
  ///   Filter results for a list of offer locations
  ///
  /// * [String] offerType:
  ///   Filter results to return a specific offer type
  ///
  /// * [String] offerTypes:
  ///   Filter results to return specific offer types
  ///
  /// * [String] specialOfferType:
  ///   Filter results to return a specific special offer type
  ///
  /// * [String] specialOfferTypes:
  ///   Filter results to return specific special offer types
  ///
  /// * [String] categoryIds:
  ///   Category Ids
  ///
  /// * [String] filterIds:
  ///   Filter Ids
  ///
  /// * [String] offerAudienceIds:
  ///   Offer Audience Ids
  ///
  /// * [String] sortField:
  ///   Determines what to sort the results by
  ///
  /// * [bool] descending:
  ///   Determines whether the results are in descending order
  ///
  /// * [int] start:
  ///   The start index for pagination
  ///
  /// * [int] limit:
  ///   The limit for pagination
  ///
  /// * [double] latitude:
  ///   The latitude location of the user
  ///
  /// * [double] longitude:
  ///   The latitude location of the user
  ///
  /// * [int] redeemableStartDate:
  ///   Filter results by the offer redeemable date
  ///
  /// * [int] redeemableEndDate:
  ///   Filter results by the offer redeemable date
  ///
  /// * [bool] filterByParentOffer:
  ///   Apply params to offer's parent
  ///
  /// * [int] startedSince:
  ///   Filter results by the offer start date
  ///
  /// * [int] startedBefore:
  ///   Filter results by the offer start date
  ///
  /// * [int] endedSince:
  ///   Filter results by the offer end date
  ///
  /// * [int] endedBefore:
  ///   Filter results by the offer end date
  ///
  /// * [bool] redeemed:
  ///   If true return redeemed transactions (status 2), otherwise return active transactions (status 0 or 1)
  ///
  /// * [String] statuses:
  ///   Custom status value to change to (0 or 1 for redeem, 5 or 6 for membership)
  ///
  /// * [bool] reservationsOnly:
  ///   Returns only reservation transactions if true
  ///
  /// * [bool] activeOnly:
  ///   Active Only
  ///
  /// * [bool] returnFullResponse:
  ///   Determines whether to return a detailed version of the response
  ///
  /// * [int] recurringStartedSince:
  ///   Filter results by the recurring billing start date
  ///
  /// * [int] recurringStartedBefore:
  ///   Filter results by the recurring billing start date
  ///
  /// * [int] recurringExpirationSince:
  ///   Filter results by the recurring billing expiration date
  ///
  /// * [int] recurringExpirationBefore:
  ///   Filter results by the recurring billing expiration date
  Future<Response> searchOfferTransactionsWithHttpInfo({ String? deviceId, int? accountId, String? keyword, int? retailerId, String? retailerIds, int? retailerLocationId, String? retailerLocationIds, String? excludeRetailerLocationIds, int? offerId, String? offerIds, int? offerLocationId, String? offerLocationIds, String? offerType, String? offerTypes, String? specialOfferType, String? specialOfferTypes, String? categoryIds, String? filterIds, String? offerAudienceIds, String? sortField, bool? descending, int? start, int? limit, double? latitude, double? longitude, int? redeemableStartDate, int? redeemableEndDate, bool? filterByParentOffer, int? startedSince, int? startedBefore, int? endedSince, int? endedBefore, bool? redeemed, String? statuses, bool? reservationsOnly, bool? activeOnly, bool? returnFullResponse, int? recurringStartedSince, int? recurringStartedBefore, int? recurringExpirationSince, int? recurringExpirationBefore, }) async {
    // ignore: prefer_const_declarations
    final path = r'/wallet/search';

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
    if (keyword != null) {
      queryParams.addAll(_queryParams('', 'keyword', keyword));
    }
    if (retailerId != null) {
      queryParams.addAll(_queryParams('', 'retailerId', retailerId));
    }
    if (retailerIds != null) {
      queryParams.addAll(_queryParams('', 'retailerIds', retailerIds));
    }
    if (retailerLocationId != null) {
      queryParams.addAll(_queryParams('', 'retailerLocationId', retailerLocationId));
    }
    if (retailerLocationIds != null) {
      queryParams.addAll(_queryParams('', 'retailerLocationIds', retailerLocationIds));
    }
    if (excludeRetailerLocationIds != null) {
      queryParams.addAll(_queryParams('', 'excludeRetailerLocationIds', excludeRetailerLocationIds));
    }
    if (offerId != null) {
      queryParams.addAll(_queryParams('', 'offerId', offerId));
    }
    if (offerIds != null) {
      queryParams.addAll(_queryParams('', 'offerIds', offerIds));
    }
    if (offerLocationId != null) {
      queryParams.addAll(_queryParams('', 'offerLocationId', offerLocationId));
    }
    if (offerLocationIds != null) {
      queryParams.addAll(_queryParams('', 'offerLocationIds', offerLocationIds));
    }
    if (offerType != null) {
      queryParams.addAll(_queryParams('', 'offerType', offerType));
    }
    if (offerTypes != null) {
      queryParams.addAll(_queryParams('', 'offerTypes', offerTypes));
    }
    if (specialOfferType != null) {
      queryParams.addAll(_queryParams('', 'specialOfferType', specialOfferType));
    }
    if (specialOfferTypes != null) {
      queryParams.addAll(_queryParams('', 'specialOfferTypes', specialOfferTypes));
    }
    if (categoryIds != null) {
      queryParams.addAll(_queryParams('', 'categoryIds', categoryIds));
    }
    if (filterIds != null) {
      queryParams.addAll(_queryParams('', 'filterIds', filterIds));
    }
    if (offerAudienceIds != null) {
      queryParams.addAll(_queryParams('', 'offerAudienceIds', offerAudienceIds));
    }
    if (sortField != null) {
      queryParams.addAll(_queryParams('', 'sortField', sortField));
    }
    if (descending != null) {
      queryParams.addAll(_queryParams('', 'descending', descending));
    }
    if (start != null) {
      queryParams.addAll(_queryParams('', 'start', start));
    }
    if (limit != null) {
      queryParams.addAll(_queryParams('', 'limit', limit));
    }
    if (latitude != null) {
      queryParams.addAll(_queryParams('', 'latitude', latitude));
    }
    if (longitude != null) {
      queryParams.addAll(_queryParams('', 'longitude', longitude));
    }
    if (redeemableStartDate != null) {
      queryParams.addAll(_queryParams('', 'redeemableStartDate', redeemableStartDate));
    }
    if (redeemableEndDate != null) {
      queryParams.addAll(_queryParams('', 'redeemableEndDate', redeemableEndDate));
    }
    if (filterByParentOffer != null) {
      queryParams.addAll(_queryParams('', 'filterByParentOffer', filterByParentOffer));
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
    if (redeemed != null) {
      queryParams.addAll(_queryParams('', 'redeemed', redeemed));
    }
    if (statuses != null) {
      queryParams.addAll(_queryParams('', 'statuses', statuses));
    }
    if (reservationsOnly != null) {
      queryParams.addAll(_queryParams('', 'reservationsOnly', reservationsOnly));
    }
    if (activeOnly != null) {
      queryParams.addAll(_queryParams('', 'activeOnly', activeOnly));
    }
    if (returnFullResponse != null) {
      queryParams.addAll(_queryParams('', 'returnFullResponse', returnFullResponse));
    }
    if (recurringStartedSince != null) {
      queryParams.addAll(_queryParams('', 'recurringStartedSince', recurringStartedSince));
    }
    if (recurringStartedBefore != null) {
      queryParams.addAll(_queryParams('', 'recurringStartedBefore', recurringStartedBefore));
    }
    if (recurringExpirationSince != null) {
      queryParams.addAll(_queryParams('', 'recurringExpirationSince', recurringExpirationSince));
    }
    if (recurringExpirationBefore != null) {
      queryParams.addAll(_queryParams('', 'recurringExpirationBefore', recurringExpirationBefore));
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

  /// Search Wallet Offers
  ///
  /// Search on active offers currently in the user's wallet, or past offers the user has already redeemed.
  ///
  /// Parameters:
  ///
  /// * [String] deviceId:
  ///   The device id (deviceId or accountId required)
  ///
  /// * [int] accountId:
  ///   The account id of the user (deviceId or accountId required)
  ///
  /// * [String] keyword:
  ///   The keyword to search for
  ///
  /// * [int] retailerId:
  ///   Filter results for this retailer
  ///
  /// * [String] retailerIds:
  ///   Filter results for a list of retailers
  ///
  /// * [int] retailerLocationId:
  ///   Filter results for this retailer location
  ///
  /// * [String] retailerLocationIds:
  ///   Filter results for a list of retailer locations
  ///
  /// * [String] excludeRetailerLocationIds:
  ///   Filter results to exclude retailer locations
  ///
  /// * [int] offerId:
  ///   Filter results for this offer
  ///
  /// * [String] offerIds:
  ///   Filter results for a list of offer
  ///
  /// * [int] offerLocationId:
  ///   Filter results for this offer location
  ///
  /// * [String] offerLocationIds:
  ///   Filter results for a list of offer locations
  ///
  /// * [String] offerType:
  ///   Filter results to return a specific offer type
  ///
  /// * [String] offerTypes:
  ///   Filter results to return specific offer types
  ///
  /// * [String] specialOfferType:
  ///   Filter results to return a specific special offer type
  ///
  /// * [String] specialOfferTypes:
  ///   Filter results to return specific special offer types
  ///
  /// * [String] categoryIds:
  ///   Category Ids
  ///
  /// * [String] filterIds:
  ///   Filter Ids
  ///
  /// * [String] offerAudienceIds:
  ///   Offer Audience Ids
  ///
  /// * [String] sortField:
  ///   Determines what to sort the results by
  ///
  /// * [bool] descending:
  ///   Determines whether the results are in descending order
  ///
  /// * [int] start:
  ///   The start index for pagination
  ///
  /// * [int] limit:
  ///   The limit for pagination
  ///
  /// * [double] latitude:
  ///   The latitude location of the user
  ///
  /// * [double] longitude:
  ///   The latitude location of the user
  ///
  /// * [int] redeemableStartDate:
  ///   Filter results by the offer redeemable date
  ///
  /// * [int] redeemableEndDate:
  ///   Filter results by the offer redeemable date
  ///
  /// * [bool] filterByParentOffer:
  ///   Apply params to offer's parent
  ///
  /// * [int] startedSince:
  ///   Filter results by the offer start date
  ///
  /// * [int] startedBefore:
  ///   Filter results by the offer start date
  ///
  /// * [int] endedSince:
  ///   Filter results by the offer end date
  ///
  /// * [int] endedBefore:
  ///   Filter results by the offer end date
  ///
  /// * [bool] redeemed:
  ///   If true return redeemed transactions (status 2), otherwise return active transactions (status 0 or 1)
  ///
  /// * [String] statuses:
  ///   Custom status value to change to (0 or 1 for redeem, 5 or 6 for membership)
  ///
  /// * [bool] reservationsOnly:
  ///   Returns only reservation transactions if true
  ///
  /// * [bool] activeOnly:
  ///   Active Only
  ///
  /// * [bool] returnFullResponse:
  ///   Determines whether to return a detailed version of the response
  ///
  /// * [int] recurringStartedSince:
  ///   Filter results by the recurring billing start date
  ///
  /// * [int] recurringStartedBefore:
  ///   Filter results by the recurring billing start date
  ///
  /// * [int] recurringExpirationSince:
  ///   Filter results by the recurring billing expiration date
  ///
  /// * [int] recurringExpirationBefore:
  ///   Filter results by the recurring billing expiration date
  Future<List<OfferTransactionResponse>?> searchOfferTransactions({ String? deviceId, int? accountId, String? keyword, int? retailerId, String? retailerIds, int? retailerLocationId, String? retailerLocationIds, String? excludeRetailerLocationIds, int? offerId, String? offerIds, int? offerLocationId, String? offerLocationIds, String? offerType, String? offerTypes, String? specialOfferType, String? specialOfferTypes, String? categoryIds, String? filterIds, String? offerAudienceIds, String? sortField, bool? descending, int? start, int? limit, double? latitude, double? longitude, int? redeemableStartDate, int? redeemableEndDate, bool? filterByParentOffer, int? startedSince, int? startedBefore, int? endedSince, int? endedBefore, bool? redeemed, String? statuses, bool? reservationsOnly, bool? activeOnly, bool? returnFullResponse, int? recurringStartedSince, int? recurringStartedBefore, int? recurringExpirationSince, int? recurringExpirationBefore, }) async {
    final response = await searchOfferTransactionsWithHttpInfo( deviceId: deviceId, accountId: accountId, keyword: keyword, retailerId: retailerId, retailerIds: retailerIds, retailerLocationId: retailerLocationId, retailerLocationIds: retailerLocationIds, excludeRetailerLocationIds: excludeRetailerLocationIds, offerId: offerId, offerIds: offerIds, offerLocationId: offerLocationId, offerLocationIds: offerLocationIds, offerType: offerType, offerTypes: offerTypes, specialOfferType: specialOfferType, specialOfferTypes: specialOfferTypes, categoryIds: categoryIds, filterIds: filterIds, offerAudienceIds: offerAudienceIds, sortField: sortField, descending: descending, start: start, limit: limit, latitude: latitude, longitude: longitude, redeemableStartDate: redeemableStartDate, redeemableEndDate: redeemableEndDate, filterByParentOffer: filterByParentOffer, startedSince: startedSince, startedBefore: startedBefore, endedSince: endedSince, endedBefore: endedBefore, redeemed: redeemed, statuses: statuses, reservationsOnly: reservationsOnly, activeOnly: activeOnly, returnFullResponse: returnFullResponse, recurringStartedSince: recurringStartedSince, recurringStartedBefore: recurringStartedBefore, recurringExpirationSince: recurringExpirationSince, recurringExpirationBefore: recurringExpirationBefore, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<OfferTransactionResponse>') as List)
        .cast<OfferTransactionResponse>()
        .toList(growable: false);

    }
    return null;
  }

  /// Update Wallet Offer
  ///
  /// Update offer status. The status values are: 0 - not redeemable, 1 - redeemable.  Not redeemable means the customer has received the offer but has not decided to use (or print) it yet.  Until they choose to do this the merchant cannot redeem the offer (has not been given permission yet).   Redeemable means the customer has chosen to use the offer and wishes to redeem it.  Redeemed means the merchant has accepted the offer and the given the customer its value, then marked it a used in the system.  This status change is handled by a merchant end point.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] transactionId (required):
  ///   The offer transaction id to remove
  ///
  /// * [int] status (required):
  ///   The status value to change to (0 or 1)
  ///
  /// * [String] deviceId:
  ///   The device id (deviceId or accountId required)
  ///
  /// * [int] accountId:
  ///   The account id of the user (deviceId or accountId required)
  ///
  /// * [int] offerLocationId:
  ///   Offer Location Id
  ///
  /// * [String] currencyType:
  ///   Currency Type
  ///
  /// * [bool] usePoints:
  ///   Use Points
  ///
  /// * [String] appKey:
  ///   App Key
  ///
  /// * [double] latitude:
  ///   The latitude location of the user
  ///
  /// * [double] longitude:
  ///   The latitude location of the user
  ///
  /// * [String] metaData:
  ///   External custom client defined data
  ///
  /// * [bool] returnFullResponse:
  ///   Determines whether to return a detailed version of the response
  ///
  /// * [String] exceptionMembershipOfferIds:
  ///   Exception Offers, transaction audiences of these offers won't be removed out of the account when up
  Future<Response> updateOfferTransactionWithHttpInfo(int transactionId, int status, { String? deviceId, int? accountId, int? offerLocationId, String? currencyType, bool? usePoints, String? appKey, double? latitude, double? longitude, String? metaData, bool? returnFullResponse, String? exceptionMembershipOfferIds, }) async {
    // ignore: prefer_const_declarations
    final path = r'/wallet/update';

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
      queryParams.addAll(_queryParams('', 'transactionId', transactionId));
    if (offerLocationId != null) {
      queryParams.addAll(_queryParams('', 'offerLocationId', offerLocationId));
    }
    if (currencyType != null) {
      queryParams.addAll(_queryParams('', 'currencyType', currencyType));
    }
    if (usePoints != null) {
      queryParams.addAll(_queryParams('', 'usePoints', usePoints));
    }
    if (appKey != null) {
      queryParams.addAll(_queryParams('', 'appKey', appKey));
    }
      queryParams.addAll(_queryParams('', 'status', status));
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
    if (exceptionMembershipOfferIds != null) {
      queryParams.addAll(_queryParams('', 'exceptionMembershipOfferIds', exceptionMembershipOfferIds));
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

  /// Update Wallet Offer
  ///
  /// Update offer status. The status values are: 0 - not redeemable, 1 - redeemable.  Not redeemable means the customer has received the offer but has not decided to use (or print) it yet.  Until they choose to do this the merchant cannot redeem the offer (has not been given permission yet).   Redeemable means the customer has chosen to use the offer and wishes to redeem it.  Redeemed means the merchant has accepted the offer and the given the customer its value, then marked it a used in the system.  This status change is handled by a merchant end point.
  ///
  /// Parameters:
  ///
  /// * [int] transactionId (required):
  ///   The offer transaction id to remove
  ///
  /// * [int] status (required):
  ///   The status value to change to (0 or 1)
  ///
  /// * [String] deviceId:
  ///   The device id (deviceId or accountId required)
  ///
  /// * [int] accountId:
  ///   The account id of the user (deviceId or accountId required)
  ///
  /// * [int] offerLocationId:
  ///   Offer Location Id
  ///
  /// * [String] currencyType:
  ///   Currency Type
  ///
  /// * [bool] usePoints:
  ///   Use Points
  ///
  /// * [String] appKey:
  ///   App Key
  ///
  /// * [double] latitude:
  ///   The latitude location of the user
  ///
  /// * [double] longitude:
  ///   The latitude location of the user
  ///
  /// * [String] metaData:
  ///   External custom client defined data
  ///
  /// * [bool] returnFullResponse:
  ///   Determines whether to return a detailed version of the response
  ///
  /// * [String] exceptionMembershipOfferIds:
  ///   Exception Offers, transaction audiences of these offers won't be removed out of the account when up
  Future<OfferTransactionResponse?> updateOfferTransaction(int transactionId, int status, { String? deviceId, int? accountId, int? offerLocationId, String? currencyType, bool? usePoints, String? appKey, double? latitude, double? longitude, String? metaData, bool? returnFullResponse, String? exceptionMembershipOfferIds, }) async {
    final response = await updateOfferTransactionWithHttpInfo(transactionId, status,  deviceId: deviceId, accountId: accountId, offerLocationId: offerLocationId, currencyType: currencyType, usePoints: usePoints, appKey: appKey, latitude: latitude, longitude: longitude, metaData: metaData, returnFullResponse: returnFullResponse, exceptionMembershipOfferIds: exceptionMembershipOfferIds, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'OfferTransactionResponse',) as OfferTransactionResponse;
    
    }
    return null;
  }
}
