//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class PurchaseItemApi {
  PurchaseItemApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Create Purchase
  ///
  /// Creates a purchase item for in app purchases
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] appKey (required):
  ///   The application key that the purchase can be used in
  ///
  /// * [String] name (required):
  ///   The name of the purchase item
  ///
  /// * [String] purchaseType (required):
  ///   The purchase provider <ul> <li>SIRQUL - the Sirqul store to make purchases using tickets</li> <li>IOS - the iTunes store for iPhone, iPod, iPod Touch</li> <li>GOOGLE - the Google Play store</li> <li>AMAZON - the Amazon Android store</li> <li>MAC - the iTunes store for OSX</li> <li>WP8 - the Windows Phone 8 store</li> <li>FREE - used for purchase items that are free (can be used for development/testing purposes)</li> </ul>
  ///
  /// * [String] deviceId:
  ///   The device id (deviceId or accountId required)
  ///
  /// * [int] accountId:
  ///   The account id of the user (deviceId or accountId required)
  ///
  /// * [String] description:
  ///   The description of the purchase item
  ///
  /// * [int] tickets:
  ///   How much the purchase item is worth in tickets
  ///
  /// * [double] price:
  ///   How much the purchase item will cost in real money
  ///
  /// * [String] purchaseCode:
  ///   The unique identifier used by purchase providers to identify in-app-purchases
  ///
  /// * [String] secretKey:
  ///   A secret key from purchase providers that would be used for validation
  ///
  /// * [int] purchaseLimit:
  ///   How many times a user acquire the same purchase item
  ///
  /// * [String] serviceAction:
  ///   Determines whether the purchase item will enable certain features <ul> <li>DAY_PREMIUM - subscribes a user for a day of membership</li> <li>WEEK_PREMIUM - subscribes a user for a week of membership</li> <li>MONTH_PREMIUM - subscribes a user for a month of membership</li> <li>ADD_TICKET - allows a user to add more tickets to their account</li> <li>ADD_GIFT - allows a user to send/recieve the purchase item as a gift</li> </ul>
  ///
  /// * [int] coverAssetId:
  ///   The cover image of the purchase item
  ///
  /// * [int] promoAssetId:
  ///   An application specific asset that can be used to store/provide additional data
  ///
  /// * [bool] giftable:
  ///   Determines whether the purchase item can be gifted to other users
  ///
  /// * [bool] assetable:
  ///   Determines whether users can attach their own media/asset to the purchase item
  ///
  /// * [bool] allocateTickets:
  ///   Flag to indicate owner should receive tickets for completed missions
  ///
  /// * [String] ticketType:
  ///   The type of ticket to reward, null means default type
  ///
  /// * [int] points:
  ///   The number of points to award for completing a mission
  ///
  /// * [int] offerLocationId:
  ///   The offer location that will get added to the user's wallet after purchase.
  Future<Response> createPurchaseItemWithHttpInfo(String appKey, String name, String purchaseType, { String? deviceId, int? accountId, String? description, int? tickets, double? price, String? purchaseCode, String? secretKey, int? purchaseLimit, String? serviceAction, int? coverAssetId, int? promoAssetId, bool? giftable, bool? assetable, bool? allocateTickets, String? ticketType, int? points, int? offerLocationId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/purchase/create';

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
      queryParams.addAll(_queryParams('', 'name', name));
    if (description != null) {
      queryParams.addAll(_queryParams('', 'description', description));
    }
    if (tickets != null) {
      queryParams.addAll(_queryParams('', 'tickets', tickets));
    }
    if (price != null) {
      queryParams.addAll(_queryParams('', 'price', price));
    }
      queryParams.addAll(_queryParams('', 'purchaseType', purchaseType));
    if (purchaseCode != null) {
      queryParams.addAll(_queryParams('', 'purchaseCode', purchaseCode));
    }
    if (secretKey != null) {
      queryParams.addAll(_queryParams('', 'secretKey', secretKey));
    }
    if (purchaseLimit != null) {
      queryParams.addAll(_queryParams('', 'purchaseLimit', purchaseLimit));
    }
    if (serviceAction != null) {
      queryParams.addAll(_queryParams('', 'serviceAction', serviceAction));
    }
    if (coverAssetId != null) {
      queryParams.addAll(_queryParams('', 'coverAssetId', coverAssetId));
    }
    if (promoAssetId != null) {
      queryParams.addAll(_queryParams('', 'promoAssetId', promoAssetId));
    }
    if (giftable != null) {
      queryParams.addAll(_queryParams('', 'giftable', giftable));
    }
    if (assetable != null) {
      queryParams.addAll(_queryParams('', 'assetable', assetable));
    }
    if (allocateTickets != null) {
      queryParams.addAll(_queryParams('', 'allocateTickets', allocateTickets));
    }
    if (ticketType != null) {
      queryParams.addAll(_queryParams('', 'ticketType', ticketType));
    }
    if (points != null) {
      queryParams.addAll(_queryParams('', 'points', points));
    }
    if (offerLocationId != null) {
      queryParams.addAll(_queryParams('', 'offerLocationId', offerLocationId));
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

  /// Create Purchase
  ///
  /// Creates a purchase item for in app purchases
  ///
  /// Parameters:
  ///
  /// * [String] appKey (required):
  ///   The application key that the purchase can be used in
  ///
  /// * [String] name (required):
  ///   The name of the purchase item
  ///
  /// * [String] purchaseType (required):
  ///   The purchase provider <ul> <li>SIRQUL - the Sirqul store to make purchases using tickets</li> <li>IOS - the iTunes store for iPhone, iPod, iPod Touch</li> <li>GOOGLE - the Google Play store</li> <li>AMAZON - the Amazon Android store</li> <li>MAC - the iTunes store for OSX</li> <li>WP8 - the Windows Phone 8 store</li> <li>FREE - used for purchase items that are free (can be used for development/testing purposes)</li> </ul>
  ///
  /// * [String] deviceId:
  ///   The device id (deviceId or accountId required)
  ///
  /// * [int] accountId:
  ///   The account id of the user (deviceId or accountId required)
  ///
  /// * [String] description:
  ///   The description of the purchase item
  ///
  /// * [int] tickets:
  ///   How much the purchase item is worth in tickets
  ///
  /// * [double] price:
  ///   How much the purchase item will cost in real money
  ///
  /// * [String] purchaseCode:
  ///   The unique identifier used by purchase providers to identify in-app-purchases
  ///
  /// * [String] secretKey:
  ///   A secret key from purchase providers that would be used for validation
  ///
  /// * [int] purchaseLimit:
  ///   How many times a user acquire the same purchase item
  ///
  /// * [String] serviceAction:
  ///   Determines whether the purchase item will enable certain features <ul> <li>DAY_PREMIUM - subscribes a user for a day of membership</li> <li>WEEK_PREMIUM - subscribes a user for a week of membership</li> <li>MONTH_PREMIUM - subscribes a user for a month of membership</li> <li>ADD_TICKET - allows a user to add more tickets to their account</li> <li>ADD_GIFT - allows a user to send/recieve the purchase item as a gift</li> </ul>
  ///
  /// * [int] coverAssetId:
  ///   The cover image of the purchase item
  ///
  /// * [int] promoAssetId:
  ///   An application specific asset that can be used to store/provide additional data
  ///
  /// * [bool] giftable:
  ///   Determines whether the purchase item can be gifted to other users
  ///
  /// * [bool] assetable:
  ///   Determines whether users can attach their own media/asset to the purchase item
  ///
  /// * [bool] allocateTickets:
  ///   Flag to indicate owner should receive tickets for completed missions
  ///
  /// * [String] ticketType:
  ///   The type of ticket to reward, null means default type
  ///
  /// * [int] points:
  ///   The number of points to award for completing a mission
  ///
  /// * [int] offerLocationId:
  ///   The offer location that will get added to the user's wallet after purchase.
  Future<PurchaseItemFullResponse?> createPurchaseItem(String appKey, String name, String purchaseType, { String? deviceId, int? accountId, String? description, int? tickets, double? price, String? purchaseCode, String? secretKey, int? purchaseLimit, String? serviceAction, int? coverAssetId, int? promoAssetId, bool? giftable, bool? assetable, bool? allocateTickets, String? ticketType, int? points, int? offerLocationId, }) async {
    final response = await createPurchaseItemWithHttpInfo(appKey, name, purchaseType,  deviceId: deviceId, accountId: accountId, description: description, tickets: tickets, price: price, purchaseCode: purchaseCode, secretKey: secretKey, purchaseLimit: purchaseLimit, serviceAction: serviceAction, coverAssetId: coverAssetId, promoAssetId: promoAssetId, giftable: giftable, assetable: assetable, allocateTickets: allocateTickets, ticketType: ticketType, points: points, offerLocationId: offerLocationId, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PurchaseItemFullResponse',) as PurchaseItemFullResponse;
    
    }
    return null;
  }

  /// Delete Purchase
  ///
  /// Marks the purchase item as deleted
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] purchaseItemId (required):
  ///   The purchase item id
  ///
  /// * [String] deviceId:
  ///   The device id (deviceId or accountId required)
  ///
  /// * [int] accountId:
  ///   The account id of the user (deviceId or accountId required)
  Future<Response> deletePurchaseItemWithHttpInfo(int purchaseItemId, { String? deviceId, int? accountId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/purchase/delete';

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
      queryParams.addAll(_queryParams('', 'purchaseItemId', purchaseItemId));

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

  /// Delete Purchase
  ///
  /// Marks the purchase item as deleted
  ///
  /// Parameters:
  ///
  /// * [int] purchaseItemId (required):
  ///   The purchase item id
  ///
  /// * [String] deviceId:
  ///   The device id (deviceId or accountId required)
  ///
  /// * [int] accountId:
  ///   The account id of the user (deviceId or accountId required)
  Future<SirqulResponse?> deletePurchaseItem(int purchaseItemId, { String? deviceId, int? accountId, }) async {
    final response = await deletePurchaseItemWithHttpInfo(purchaseItemId,  deviceId: deviceId, accountId: accountId, );
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

  /// Get Purchase
  ///
  /// Get detailed information about a purchase item
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] purchaseItemId (required):
  ///   The purchase item id
  ///
  /// * [String] deviceId:
  ///   The device id (deviceId or accountId required)
  ///
  /// * [int] accountId:
  ///   The account id of the user (deviceId or accountId required)
  Future<Response> getPurchaseItemWithHttpInfo(int purchaseItemId, { String? deviceId, int? accountId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/purchase/get';

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
      queryParams.addAll(_queryParams('', 'purchaseItemId', purchaseItemId));

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

  /// Get Purchase
  ///
  /// Get detailed information about a purchase item
  ///
  /// Parameters:
  ///
  /// * [int] purchaseItemId (required):
  ///   The purchase item id
  ///
  /// * [String] deviceId:
  ///   The device id (deviceId or accountId required)
  ///
  /// * [int] accountId:
  ///   The account id of the user (deviceId or accountId required)
  Future<PurchaseItemFullResponse?> getPurchaseItem(int purchaseItemId, { String? deviceId, int? accountId, }) async {
    final response = await getPurchaseItemWithHttpInfo(purchaseItemId,  deviceId: deviceId, accountId: accountId, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PurchaseItemFullResponse',) as PurchaseItemFullResponse;
    
    }
    return null;
  }

  /// Search Purchases
  ///
  /// Search for purchasable items from the system
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
  /// * [String] appKey:
  ///   The application key to filter results by application
  ///
  /// * [bool] filterByBillable:
  ///   Determines whether to filter results by the user's billable entity
  ///
  /// * [String] purchaseType:
  ///   A comma separated list of purchase providers to filter by. Possible values include: <ul> <li>SIRQUL - purchases from the Sirqul store using tickets</li> <li>IOS - purchases from the iTunes store for iPhone, iPod, iPod Touch</li> <li>GOOGLE - purchases from the Google Play store</li> <li>AMAZON - purchases from the Amazon Android store</li> <li>MAC - purchases from the iTunes store for OSX</li> <li>WP8 - purchases from the Windows Phone 8 store</li> <li>FREE - purchases that are free (can be used for development/testing purposes)</li> </ul>
  ///
  /// * [String] serviceAction:
  ///   A comma separated list of service actions to filter results by. Possible values include: <ul> <li>DAY_PREMIUM - purchases that subscribes a user for a day of membership</li> <li>WEEK_PREMIUM - purchases that subscribes a user for a week of membership</li> <li>MONTH_PREMIUM - purchases that subscribes a user for a month of membership</li> <li>ADD_TICKET - purchases that allow users to add more tickets</li> <li>ADD_GIFT - purchases that allow users to recieve gifts</li> </ul>
  ///
  /// * [String] keyword:
  ///   The keyword used to search
  ///
  /// * [String] sortField:
  ///   The column to sort the search on. Possible values include: ID, CREATED, UPDATED, ACTIVE, ACTIVATED, EXPIRES, TITLE, SUBTITLE, DETAILS, OFFER_TYPE, SPECIAL_OFFER_TYPE, OFFER_VISIBILITY, ESTIMATED_VALUE, VOUCHER_PRICE, RETAILER_ID, RETAILER_NAME, RETAILER_LOCATION_ID, RETAILER_LOCATION_NAME, BILLABLE_ENTITY_ID, BILLABLE_ENTITY_NAME, RESPONSIBLE_DISPLAY
  ///
  /// * [bool] descending:
  ///   The order to return the search results
  ///
  /// * [int] start:
  ///   The record to begin the return set on
  ///
  /// * [int] limit:
  ///   The number of records to return
  ///
  /// * [bool] activeOnly:
  ///   Return only active results
  Future<Response> searchPurchaseItemsWithHttpInfo({ String? deviceId, int? accountId, String? appKey, bool? filterByBillable, String? purchaseType, String? serviceAction, String? keyword, String? sortField, bool? descending, int? start, int? limit, bool? activeOnly, }) async {
    // ignore: prefer_const_declarations
    final path = r'/purchase/search';

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
    if (filterByBillable != null) {
      queryParams.addAll(_queryParams('', 'filterByBillable', filterByBillable));
    }
    if (purchaseType != null) {
      queryParams.addAll(_queryParams('', 'purchaseType', purchaseType));
    }
    if (serviceAction != null) {
      queryParams.addAll(_queryParams('', 'serviceAction', serviceAction));
    }
    if (keyword != null) {
      queryParams.addAll(_queryParams('', 'keyword', keyword));
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
    if (activeOnly != null) {
      queryParams.addAll(_queryParams('', 'activeOnly', activeOnly));
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

  /// Search Purchases
  ///
  /// Search for purchasable items from the system
  ///
  /// Parameters:
  ///
  /// * [String] deviceId:
  ///   The device id (deviceId or accountId required)
  ///
  /// * [int] accountId:
  ///   The account id of the user (deviceId or accountId required)
  ///
  /// * [String] appKey:
  ///   The application key to filter results by application
  ///
  /// * [bool] filterByBillable:
  ///   Determines whether to filter results by the user's billable entity
  ///
  /// * [String] purchaseType:
  ///   A comma separated list of purchase providers to filter by. Possible values include: <ul> <li>SIRQUL - purchases from the Sirqul store using tickets</li> <li>IOS - purchases from the iTunes store for iPhone, iPod, iPod Touch</li> <li>GOOGLE - purchases from the Google Play store</li> <li>AMAZON - purchases from the Amazon Android store</li> <li>MAC - purchases from the iTunes store for OSX</li> <li>WP8 - purchases from the Windows Phone 8 store</li> <li>FREE - purchases that are free (can be used for development/testing purposes)</li> </ul>
  ///
  /// * [String] serviceAction:
  ///   A comma separated list of service actions to filter results by. Possible values include: <ul> <li>DAY_PREMIUM - purchases that subscribes a user for a day of membership</li> <li>WEEK_PREMIUM - purchases that subscribes a user for a week of membership</li> <li>MONTH_PREMIUM - purchases that subscribes a user for a month of membership</li> <li>ADD_TICKET - purchases that allow users to add more tickets</li> <li>ADD_GIFT - purchases that allow users to recieve gifts</li> </ul>
  ///
  /// * [String] keyword:
  ///   The keyword used to search
  ///
  /// * [String] sortField:
  ///   The column to sort the search on. Possible values include: ID, CREATED, UPDATED, ACTIVE, ACTIVATED, EXPIRES, TITLE, SUBTITLE, DETAILS, OFFER_TYPE, SPECIAL_OFFER_TYPE, OFFER_VISIBILITY, ESTIMATED_VALUE, VOUCHER_PRICE, RETAILER_ID, RETAILER_NAME, RETAILER_LOCATION_ID, RETAILER_LOCATION_NAME, BILLABLE_ENTITY_ID, BILLABLE_ENTITY_NAME, RESPONSIBLE_DISPLAY
  ///
  /// * [bool] descending:
  ///   The order to return the search results
  ///
  /// * [int] start:
  ///   The record to begin the return set on
  ///
  /// * [int] limit:
  ///   The number of records to return
  ///
  /// * [bool] activeOnly:
  ///   Return only active results
  Future<List<PurchaseItemResponse>?> searchPurchaseItems({ String? deviceId, int? accountId, String? appKey, bool? filterByBillable, String? purchaseType, String? serviceAction, String? keyword, String? sortField, bool? descending, int? start, int? limit, bool? activeOnly, }) async {
    final response = await searchPurchaseItemsWithHttpInfo( deviceId: deviceId, accountId: accountId, appKey: appKey, filterByBillable: filterByBillable, purchaseType: purchaseType, serviceAction: serviceAction, keyword: keyword, sortField: sortField, descending: descending, start: start, limit: limit, activeOnly: activeOnly, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<PurchaseItemResponse>') as List)
        .cast<PurchaseItemResponse>()
        .toList(growable: false);

    }
    return null;
  }

  /// Update Purchase
  ///
  /// Updates a purchase item for in app purchases
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] purchaseItemId (required):
  ///   The purchase item id
  ///
  /// * [String] deviceId:
  ///   The device id (deviceId or accountId required)
  ///
  /// * [int] accountId:
  ///   The account id of the user (deviceId or accountId required)
  ///
  /// * [String] name:
  ///   The name of the purchase item
  ///
  /// * [String] description:
  ///   The description of the purchase item
  ///
  /// * [int] tickets:
  ///   How much the purchase item is worth in tickets
  ///
  /// * [double] price:
  ///   How much the purchase item will cost in real money
  ///
  /// * [String] purchaseType:
  ///   The purchase provider <ul> <li>SIRQUL - the Sirqul store to make purchases using tickets</li> <li>IOS - the iTunes store for iPhone, iPod, iPod Touch</li> <li>GOOGLE - the Google Play store</li> <li>AMAZON - the Amazon Android store</li> <li>MAC - the iTunes store for OSX</li> <li>WP8 - the Windows Phone 8 store</li> <li>FREE - used for purchase items that are free (can be used for development/testing purposes)</li> </ul>
  ///
  /// * [String] purchaseCode:
  ///   The unique identifier used by purchase providers to identify in-app-purchases
  ///
  /// * [String] secretKey:
  ///   A secret key from purchase providers that would be used for validation
  ///
  /// * [int] purchaseLimit:
  ///   How many times a user acquire the same purchase item
  ///
  /// * [String] serviceAction:
  ///   Determines whether the purchase item will enable certain features <ul> <li>DAY_PREMIUM - subscribes a user for a day of membership</li> <li>WEEK_PREMIUM - subscribes a user for a week of membership</li> <li>MONTH_PREMIUM - subscribes a user for a month of membership</li> <li>ADD_TICKET - allows a user to add more tickets to their account</li> <li>ADD_GIFT - allows a user to send/recieve the purchase item as a gift</li> </ul>
  ///
  /// * [int] coverAssetId:
  ///   The cover image of the purchase item
  ///
  /// * [int] promoAssetId:
  ///   An application specific asset that can be used to store/provide additional data
  ///
  /// * [bool] giftable:
  ///   Determines whether the purchase item can be gifted to other users
  ///
  /// * [bool] assetable:
  ///   Determines whether users can attach their own media/asset to the purchase item
  ///
  /// * [bool] active:
  ///   Sets whether the purchase item is active or inactive (hidden from consumers)
  ///
  /// * [bool] allocateTickets:
  ///   Flag to indicate owner should receive tickets for completed missions
  ///
  /// * [String] ticketType:
  ///   The type of ticket to reward, null means default type
  ///
  /// * [int] points:
  ///   The number of points to award for completing a mission
  ///
  /// * [int] offerLocationId:
  ///   The offer location that will get added to the user's wallet after purchase.
  Future<Response> updatePurchaseItemWithHttpInfo(int purchaseItemId, { String? deviceId, int? accountId, String? name, String? description, int? tickets, double? price, String? purchaseType, String? purchaseCode, String? secretKey, int? purchaseLimit, String? serviceAction, int? coverAssetId, int? promoAssetId, bool? giftable, bool? assetable, bool? active, bool? allocateTickets, String? ticketType, int? points, int? offerLocationId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/purchase/update';

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
      queryParams.addAll(_queryParams('', 'purchaseItemId', purchaseItemId));
    if (name != null) {
      queryParams.addAll(_queryParams('', 'name', name));
    }
    if (description != null) {
      queryParams.addAll(_queryParams('', 'description', description));
    }
    if (tickets != null) {
      queryParams.addAll(_queryParams('', 'tickets', tickets));
    }
    if (price != null) {
      queryParams.addAll(_queryParams('', 'price', price));
    }
    if (purchaseType != null) {
      queryParams.addAll(_queryParams('', 'purchaseType', purchaseType));
    }
    if (purchaseCode != null) {
      queryParams.addAll(_queryParams('', 'purchaseCode', purchaseCode));
    }
    if (secretKey != null) {
      queryParams.addAll(_queryParams('', 'secretKey', secretKey));
    }
    if (purchaseLimit != null) {
      queryParams.addAll(_queryParams('', 'purchaseLimit', purchaseLimit));
    }
    if (serviceAction != null) {
      queryParams.addAll(_queryParams('', 'serviceAction', serviceAction));
    }
    if (coverAssetId != null) {
      queryParams.addAll(_queryParams('', 'coverAssetId', coverAssetId));
    }
    if (promoAssetId != null) {
      queryParams.addAll(_queryParams('', 'promoAssetId', promoAssetId));
    }
    if (giftable != null) {
      queryParams.addAll(_queryParams('', 'giftable', giftable));
    }
    if (assetable != null) {
      queryParams.addAll(_queryParams('', 'assetable', assetable));
    }
    if (active != null) {
      queryParams.addAll(_queryParams('', 'active', active));
    }
    if (allocateTickets != null) {
      queryParams.addAll(_queryParams('', 'allocateTickets', allocateTickets));
    }
    if (ticketType != null) {
      queryParams.addAll(_queryParams('', 'ticketType', ticketType));
    }
    if (points != null) {
      queryParams.addAll(_queryParams('', 'points', points));
    }
    if (offerLocationId != null) {
      queryParams.addAll(_queryParams('', 'offerLocationId', offerLocationId));
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

  /// Update Purchase
  ///
  /// Updates a purchase item for in app purchases
  ///
  /// Parameters:
  ///
  /// * [int] purchaseItemId (required):
  ///   The purchase item id
  ///
  /// * [String] deviceId:
  ///   The device id (deviceId or accountId required)
  ///
  /// * [int] accountId:
  ///   The account id of the user (deviceId or accountId required)
  ///
  /// * [String] name:
  ///   The name of the purchase item
  ///
  /// * [String] description:
  ///   The description of the purchase item
  ///
  /// * [int] tickets:
  ///   How much the purchase item is worth in tickets
  ///
  /// * [double] price:
  ///   How much the purchase item will cost in real money
  ///
  /// * [String] purchaseType:
  ///   The purchase provider <ul> <li>SIRQUL - the Sirqul store to make purchases using tickets</li> <li>IOS - the iTunes store for iPhone, iPod, iPod Touch</li> <li>GOOGLE - the Google Play store</li> <li>AMAZON - the Amazon Android store</li> <li>MAC - the iTunes store for OSX</li> <li>WP8 - the Windows Phone 8 store</li> <li>FREE - used for purchase items that are free (can be used for development/testing purposes)</li> </ul>
  ///
  /// * [String] purchaseCode:
  ///   The unique identifier used by purchase providers to identify in-app-purchases
  ///
  /// * [String] secretKey:
  ///   A secret key from purchase providers that would be used for validation
  ///
  /// * [int] purchaseLimit:
  ///   How many times a user acquire the same purchase item
  ///
  /// * [String] serviceAction:
  ///   Determines whether the purchase item will enable certain features <ul> <li>DAY_PREMIUM - subscribes a user for a day of membership</li> <li>WEEK_PREMIUM - subscribes a user for a week of membership</li> <li>MONTH_PREMIUM - subscribes a user for a month of membership</li> <li>ADD_TICKET - allows a user to add more tickets to their account</li> <li>ADD_GIFT - allows a user to send/recieve the purchase item as a gift</li> </ul>
  ///
  /// * [int] coverAssetId:
  ///   The cover image of the purchase item
  ///
  /// * [int] promoAssetId:
  ///   An application specific asset that can be used to store/provide additional data
  ///
  /// * [bool] giftable:
  ///   Determines whether the purchase item can be gifted to other users
  ///
  /// * [bool] assetable:
  ///   Determines whether users can attach their own media/asset to the purchase item
  ///
  /// * [bool] active:
  ///   Sets whether the purchase item is active or inactive (hidden from consumers)
  ///
  /// * [bool] allocateTickets:
  ///   Flag to indicate owner should receive tickets for completed missions
  ///
  /// * [String] ticketType:
  ///   The type of ticket to reward, null means default type
  ///
  /// * [int] points:
  ///   The number of points to award for completing a mission
  ///
  /// * [int] offerLocationId:
  ///   The offer location that will get added to the user's wallet after purchase.
  Future<PurchaseItemFullResponse?> updatePurchaseItem(int purchaseItemId, { String? deviceId, int? accountId, String? name, String? description, int? tickets, double? price, String? purchaseType, String? purchaseCode, String? secretKey, int? purchaseLimit, String? serviceAction, int? coverAssetId, int? promoAssetId, bool? giftable, bool? assetable, bool? active, bool? allocateTickets, String? ticketType, int? points, int? offerLocationId, }) async {
    final response = await updatePurchaseItemWithHttpInfo(purchaseItemId,  deviceId: deviceId, accountId: accountId, name: name, description: description, tickets: tickets, price: price, purchaseType: purchaseType, purchaseCode: purchaseCode, secretKey: secretKey, purchaseLimit: purchaseLimit, serviceAction: serviceAction, coverAssetId: coverAssetId, promoAssetId: promoAssetId, giftable: giftable, assetable: assetable, active: active, allocateTickets: allocateTickets, ticketType: ticketType, points: points, offerLocationId: offerLocationId, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PurchaseItemFullResponse',) as PurchaseItemFullResponse;
    
    }
    return null;
  }
}
