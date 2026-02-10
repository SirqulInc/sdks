//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class PurchaseOrderApi {
  PurchaseOrderApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Create Order
  ///
  /// Creates a new purchase with some number of items associated with it. The purchase is added to the order that was created
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [String] appKey (required):
  ///   The application requesting the purchase
  ///
  /// * [String] cart (required):
  ///   ```json [   { \"orderItemType\": \"OFFER\", \"orderItemId\": 234, \"orderCustomType\": \"OfferLocation\", \"orderCustomId\": 123, \"retailerLocationId\": 1234, \"quantity\": 2 },   { \"orderItemType\": \"OFFER\", \"orderItemId\": 235, \"quantity\": 2 },   { \"orderItemType\": \"CUSTOM\", \"amount\": 10.50, \"orderCustomType\": \"ServiceFee\" },   { \"orderItemType\": \"CUSTOM\", \"amount\": 25.10, \"quantity\": 2, \"orderCustomType\": \"Hat\", \"orderCustomId\": 123 } ] ``` 
  ///
  /// * [String] deviceId:
  ///   The device id (deviceId or accountId required)
  ///
  /// * [int] accountId:
  ///   The account id of the user (deviceId or accountId required)
  ///
  /// * [String] description:
  ///   A description of the purchase
  ///
  /// * [String] currencyType:
  ///   Determines the method of purchasing offer.  * VOID: used for when there is no payment involved (ie. for updating the status of a purchase order)  * CASH: use card on file  * POINTS: use account balance  * TICKETS: use tickets  * REFUND: not allowed for a create, requires a paymentTransactionId.  * CREDIT: add to the account balance  * RELOAD: charge a credit card then add to the account balance  
  ///
  /// * [int] paymentMethodId:
  ///   Use a specific payment method (CASH), if not provided use default
  ///
  /// * [String] externalOrderId:
  ///   Store identifier from external system
  ///
  /// * [String] externalPaymentId:
  ///   Store identifier from external system
  ///
  /// * [String] remoteRefType:
  ///   Remote Reference type
  ///
  /// * [int] externalDate:
  ///   External Date
  ///
  /// * [String] promoCode:
  ///   The Promo Code
  Future<Response> createOrderWithHttpInfo(num version, String appKey, String cart, { String? deviceId, int? accountId, String? description, String? currencyType, int? paymentMethodId, String? externalOrderId, String? externalPaymentId, String? remoteRefType, int? externalDate, String? promoCode, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/order/create'
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
      queryParams.addAll(_queryParams('', 'appKey', appKey));
    if (description != null) {
      queryParams.addAll(_queryParams('', 'description', description));
    }
    if (currencyType != null) {
      queryParams.addAll(_queryParams('', 'currencyType', currencyType));
    }
      queryParams.addAll(_queryParams('', 'cart', cart));
    if (paymentMethodId != null) {
      queryParams.addAll(_queryParams('', 'paymentMethodId', paymentMethodId));
    }
    if (externalOrderId != null) {
      queryParams.addAll(_queryParams('', 'externalOrderId', externalOrderId));
    }
    if (externalPaymentId != null) {
      queryParams.addAll(_queryParams('', 'externalPaymentId', externalPaymentId));
    }
    if (remoteRefType != null) {
      queryParams.addAll(_queryParams('', 'remoteRefType', remoteRefType));
    }
    if (externalDate != null) {
      queryParams.addAll(_queryParams('', 'externalDate', externalDate));
    }
    if (promoCode != null) {
      queryParams.addAll(_queryParams('', 'promoCode', promoCode));
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

  /// Create Order
  ///
  /// Creates a new purchase with some number of items associated with it. The purchase is added to the order that was created
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [String] appKey (required):
  ///   The application requesting the purchase
  ///
  /// * [String] cart (required):
  ///   ```json [   { \"orderItemType\": \"OFFER\", \"orderItemId\": 234, \"orderCustomType\": \"OfferLocation\", \"orderCustomId\": 123, \"retailerLocationId\": 1234, \"quantity\": 2 },   { \"orderItemType\": \"OFFER\", \"orderItemId\": 235, \"quantity\": 2 },   { \"orderItemType\": \"CUSTOM\", \"amount\": 10.50, \"orderCustomType\": \"ServiceFee\" },   { \"orderItemType\": \"CUSTOM\", \"amount\": 25.10, \"quantity\": 2, \"orderCustomType\": \"Hat\", \"orderCustomId\": 123 } ] ``` 
  ///
  /// * [String] deviceId:
  ///   The device id (deviceId or accountId required)
  ///
  /// * [int] accountId:
  ///   The account id of the user (deviceId or accountId required)
  ///
  /// * [String] description:
  ///   A description of the purchase
  ///
  /// * [String] currencyType:
  ///   Determines the method of purchasing offer.  * VOID: used for when there is no payment involved (ie. for updating the status of a purchase order)  * CASH: use card on file  * POINTS: use account balance  * TICKETS: use tickets  * REFUND: not allowed for a create, requires a paymentTransactionId.  * CREDIT: add to the account balance  * RELOAD: charge a credit card then add to the account balance  
  ///
  /// * [int] paymentMethodId:
  ///   Use a specific payment method (CASH), if not provided use default
  ///
  /// * [String] externalOrderId:
  ///   Store identifier from external system
  ///
  /// * [String] externalPaymentId:
  ///   Store identifier from external system
  ///
  /// * [String] remoteRefType:
  ///   Remote Reference type
  ///
  /// * [int] externalDate:
  ///   External Date
  ///
  /// * [String] promoCode:
  ///   The Promo Code
  Future<OrderResponse?> createOrder(num version, String appKey, String cart, { String? deviceId, int? accountId, String? description, String? currencyType, int? paymentMethodId, String? externalOrderId, String? externalPaymentId, String? remoteRefType, int? externalDate, String? promoCode, }) async {
    final response = await createOrderWithHttpInfo(version, appKey, cart,  deviceId: deviceId, accountId: accountId, description: description, currencyType: currencyType, paymentMethodId: paymentMethodId, externalOrderId: externalOrderId, externalPaymentId: externalPaymentId, remoteRefType: remoteRefType, externalDate: externalDate, promoCode: promoCode, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'OrderResponse',) as OrderResponse;
    
    }
    return null;
  }

  /// Delete Order
  ///
  /// Removes the transaction from the wallet by setting the deleted date to the current date/time.  Requires a valid account and transactionId.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] orderId (required):
  ///   Order Id
  ///
  /// * [String] deviceId:
  ///   The device id (deviceId or accountId required)
  ///
  /// * [int] accountId:
  ///   The account id of the user (deviceId or accountId required)
  Future<Response> deleteOrderWithHttpInfo(num version, int orderId, { String? deviceId, int? accountId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/order/delete'
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
      queryParams.addAll(_queryParams('', 'orderId', orderId));

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

  /// Delete Order
  ///
  /// Removes the transaction from the wallet by setting the deleted date to the current date/time.  Requires a valid account and transactionId.
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] orderId (required):
  ///   Order Id
  ///
  /// * [String] deviceId:
  ///   The device id (deviceId or accountId required)
  ///
  /// * [int] accountId:
  ///   The account id of the user (deviceId or accountId required)
  Future<SirqulResponse?> deleteOrder(num version, int orderId, { String? deviceId, int? accountId, }) async {
    final response = await deleteOrderWithHttpInfo(version, orderId,  deviceId: deviceId, accountId: accountId, );
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

  /// Get Order
  ///
  /// Get an order record
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [String] deviceId:
  ///   The device id (deviceId or accountId required)
  ///
  /// * [int] accountId:
  ///   The account id of the user (deviceId or accountId required)
  ///
  /// * [int] orderId:
  ///   The order id to get details of, either orderId or externalOrderId must be provided
  ///
  /// * [String] externalOrderId:
  ///   The external order id to get details of, either orderId or externalOrderId must be provided
  Future<Response> getOrderWithHttpInfo(num version, { String? deviceId, int? accountId, int? orderId, String? externalOrderId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/order/get'
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
    if (orderId != null) {
      queryParams.addAll(_queryParams('', 'orderId', orderId));
    }
    if (externalOrderId != null) {
      queryParams.addAll(_queryParams('', 'externalOrderId', externalOrderId));
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

  /// Get Order
  ///
  /// Get an order record
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [String] deviceId:
  ///   The device id (deviceId or accountId required)
  ///
  /// * [int] accountId:
  ///   The account id of the user (deviceId or accountId required)
  ///
  /// * [int] orderId:
  ///   The order id to get details of, either orderId or externalOrderId must be provided
  ///
  /// * [String] externalOrderId:
  ///   The external order id to get details of, either orderId or externalOrderId must be provided
  Future<OrderResponse?> getOrder(num version, { String? deviceId, int? accountId, int? orderId, String? externalOrderId, }) async {
    final response = await getOrderWithHttpInfo(version,  deviceId: deviceId, accountId: accountId, orderId: orderId, externalOrderId: externalOrderId, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'OrderResponse',) as OrderResponse;
    
    }
    return null;
  }

  /// Preview Order
  ///
  /// Previews a purchase to see the total cost before making it.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [String] appKey (required):
  ///   The application requesting the purchase
  ///
  /// * [String] cart (required):
  ///   A JSON list of items to purchase
  ///
  /// * [String] deviceId:
  ///   The device id (deviceId or accountId required)
  ///
  /// * [int] accountId:
  ///   The account id of the user (deviceId or accountId required)
  ///
  /// * [String] description:
  ///   A description of the purchase
  ///
  /// * [String] currencyType:
  ///   Determines the method of purchasing offer. ```json {   \"VOID\": \"used for when there is no payment involved (ie. for updating the status of a purchase order)\",   \"CASH\": \"use card on file\",   \"POINTS\": \"use account balance\",   \"TICKETS\": \"use tickets\",   \"REFUND\": \"not allowed for a create, requires a paymentTransactionId\",   \"CREDIT\": \"add to the account balance\",   \"RELOAD\": \"charge a credit card then add to the account balance\" } ``` 
  ///
  /// * [int] paymentMethodId:
  ///   Use a specific payment method (CASH), if not provided use default
  ///
  /// * [String] externalOrderId:
  ///   Store identifier from external system
  ///
  /// * [String] externalPaymentId:
  ///   Store identifier from external system
  ///
  /// * [String] remoteRefType:
  ///   Remote Reference type
  ///
  /// * [int] externalDate:
  ///   External Date
  ///
  /// * [String] promoCode:
  ///   The Promo Code
  Future<Response> previewOrderWithHttpInfo(num version, String appKey, String cart, { String? deviceId, int? accountId, String? description, String? currencyType, int? paymentMethodId, String? externalOrderId, String? externalPaymentId, String? remoteRefType, int? externalDate, String? promoCode, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/order/preview'
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
      queryParams.addAll(_queryParams('', 'appKey', appKey));
    if (description != null) {
      queryParams.addAll(_queryParams('', 'description', description));
    }
    if (currencyType != null) {
      queryParams.addAll(_queryParams('', 'currencyType', currencyType));
    }
      queryParams.addAll(_queryParams('', 'cart', cart));
    if (paymentMethodId != null) {
      queryParams.addAll(_queryParams('', 'paymentMethodId', paymentMethodId));
    }
    if (externalOrderId != null) {
      queryParams.addAll(_queryParams('', 'externalOrderId', externalOrderId));
    }
    if (externalPaymentId != null) {
      queryParams.addAll(_queryParams('', 'externalPaymentId', externalPaymentId));
    }
    if (remoteRefType != null) {
      queryParams.addAll(_queryParams('', 'remoteRefType', remoteRefType));
    }
    if (externalDate != null) {
      queryParams.addAll(_queryParams('', 'externalDate', externalDate));
    }
    if (promoCode != null) {
      queryParams.addAll(_queryParams('', 'promoCode', promoCode));
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

  /// Preview Order
  ///
  /// Previews a purchase to see the total cost before making it.
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [String] appKey (required):
  ///   The application requesting the purchase
  ///
  /// * [String] cart (required):
  ///   A JSON list of items to purchase
  ///
  /// * [String] deviceId:
  ///   The device id (deviceId or accountId required)
  ///
  /// * [int] accountId:
  ///   The account id of the user (deviceId or accountId required)
  ///
  /// * [String] description:
  ///   A description of the purchase
  ///
  /// * [String] currencyType:
  ///   Determines the method of purchasing offer. ```json {   \"VOID\": \"used for when there is no payment involved (ie. for updating the status of a purchase order)\",   \"CASH\": \"use card on file\",   \"POINTS\": \"use account balance\",   \"TICKETS\": \"use tickets\",   \"REFUND\": \"not allowed for a create, requires a paymentTransactionId\",   \"CREDIT\": \"add to the account balance\",   \"RELOAD\": \"charge a credit card then add to the account balance\" } ``` 
  ///
  /// * [int] paymentMethodId:
  ///   Use a specific payment method (CASH), if not provided use default
  ///
  /// * [String] externalOrderId:
  ///   Store identifier from external system
  ///
  /// * [String] externalPaymentId:
  ///   Store identifier from external system
  ///
  /// * [String] remoteRefType:
  ///   Remote Reference type
  ///
  /// * [int] externalDate:
  ///   External Date
  ///
  /// * [String] promoCode:
  ///   The Promo Code
  Future<OrderResponse?> previewOrder(num version, String appKey, String cart, { String? deviceId, int? accountId, String? description, String? currencyType, int? paymentMethodId, String? externalOrderId, String? externalPaymentId, String? remoteRefType, int? externalDate, String? promoCode, }) async {
    final response = await previewOrderWithHttpInfo(version, appKey, cart,  deviceId: deviceId, accountId: accountId, description: description, currencyType: currencyType, paymentMethodId: paymentMethodId, externalOrderId: externalOrderId, externalPaymentId: externalPaymentId, remoteRefType: remoteRefType, externalDate: externalDate, promoCode: promoCode, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'OrderResponse',) as OrderResponse;
    
    }
    return null;
  }

  /// Search Orders
  ///
  /// Search on active orders by customer
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [String] appKey (required):
  ///   The application requesting the purchase
  ///
  /// * [String] deviceId:
  ///   The device id (deviceId or accountId required)
  ///
  /// * [int] accountId:
  ///   The account id of the user (deviceId or accountId required)
  ///
  /// * [int] start:
  ///   The start index for pagination
  ///
  /// * [int] limit:
  ///   The limit for pagination
  ///
  /// * [bool] descending:
  ///   Determines whether to return the resulting list in descending or ascending order
  ///
  /// * [bool] activeOnly:
  ///   Only return active orders
  ///
  /// * [bool] ignoreCustomerFilter:
  ///   Determines whether to ignore the customer filter (requires an Admin/Exec account)
  ///
  /// * [String] orderItemTypes:
  ///   Filter results by orderItemTypes
  ///
  /// * [String] orderItemIds:
  ///   Filter results by orderItemIds
  ///
  /// * [String] orderCustomTypes:
  ///   Filter results by orderCustomTypes
  ///
  /// * [String] orderCustomIds:
  ///   Filter results by orderCustomIds
  ///
  /// * [String] sortField:
  ///   Determines what to sort the results by
  ///
  /// * [String] offerTypes:
  ///   Filter results by offer type
  ///
  /// * [String] specialOfferTypes:
  ///   Filter results by special offer type
  ///
  /// * [String] categoryIds:
  ///   Filter results by category Ids
  ///
  /// * [String] filterIds:
  ///   Filter results by filter Ids
  ///
  /// * [String] offerAudienceIds:
  ///   Filter results by offer audience Ids
  ///
  /// * [String] transactionAudienceIds:
  ///   Filter results by transaction audience Ids
  ///
  /// * [String] offerIds:
  ///   Filter results by offer Ids
  ///
  /// * [String] offerLocationIds:
  ///   Filter results by offer location Ids
  ///
  /// * [String] retailerIds:
  ///   Filter results by retailer Ids
  ///
  /// * [String] retailerLocationIds:
  ///   Filter results by retailer location Ids
  ///
  /// * [String] statuses:
  ///   Filter results by offer transaction status (0: non-redeemable, 1: redeemable, 2: redeemed, 3: user deleted, 4: unclaimed/rewarded, 5: membership active, 6: membership cancelled)
  ///
  /// * [String] keyword:
  ///   The keyword to search for
  ///
  /// * [int] redeemableStartDate:
  ///   Filter results by the offer redeemable date
  ///
  /// * [int] redeemableEndDate:
  ///   Filter results by the offer redeemable date
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
  Future<Response> searchOrdersWithHttpInfo(num version, String appKey, { String? deviceId, int? accountId, int? start, int? limit, bool? descending, bool? activeOnly, bool? ignoreCustomerFilter, String? orderItemTypes, String? orderItemIds, String? orderCustomTypes, String? orderCustomIds, String? sortField, String? offerTypes, String? specialOfferTypes, String? categoryIds, String? filterIds, String? offerAudienceIds, String? transactionAudienceIds, String? offerIds, String? offerLocationIds, String? retailerIds, String? retailerLocationIds, String? statuses, String? keyword, int? redeemableStartDate, int? redeemableEndDate, int? startedSince, int? startedBefore, int? endedSince, int? endedBefore, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/order/search'
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
      queryParams.addAll(_queryParams('', 'appKey', appKey));
    if (start != null) {
      queryParams.addAll(_queryParams('', 'start', start));
    }
    if (limit != null) {
      queryParams.addAll(_queryParams('', 'limit', limit));
    }
    if (descending != null) {
      queryParams.addAll(_queryParams('', 'descending', descending));
    }
    if (activeOnly != null) {
      queryParams.addAll(_queryParams('', 'activeOnly', activeOnly));
    }
    if (ignoreCustomerFilter != null) {
      queryParams.addAll(_queryParams('', 'ignoreCustomerFilter', ignoreCustomerFilter));
    }
    if (orderItemTypes != null) {
      queryParams.addAll(_queryParams('', 'orderItemTypes', orderItemTypes));
    }
    if (orderItemIds != null) {
      queryParams.addAll(_queryParams('', 'orderItemIds', orderItemIds));
    }
    if (orderCustomTypes != null) {
      queryParams.addAll(_queryParams('', 'orderCustomTypes', orderCustomTypes));
    }
    if (orderCustomIds != null) {
      queryParams.addAll(_queryParams('', 'orderCustomIds', orderCustomIds));
    }
    if (sortField != null) {
      queryParams.addAll(_queryParams('', 'sortField', sortField));
    }
    if (offerTypes != null) {
      queryParams.addAll(_queryParams('', 'offerTypes', offerTypes));
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
    if (transactionAudienceIds != null) {
      queryParams.addAll(_queryParams('', 'transactionAudienceIds', transactionAudienceIds));
    }
    if (offerIds != null) {
      queryParams.addAll(_queryParams('', 'offerIds', offerIds));
    }
    if (offerLocationIds != null) {
      queryParams.addAll(_queryParams('', 'offerLocationIds', offerLocationIds));
    }
    if (retailerIds != null) {
      queryParams.addAll(_queryParams('', 'retailerIds', retailerIds));
    }
    if (retailerLocationIds != null) {
      queryParams.addAll(_queryParams('', 'retailerLocationIds', retailerLocationIds));
    }
    if (statuses != null) {
      queryParams.addAll(_queryParams('', 'statuses', statuses));
    }
    if (keyword != null) {
      queryParams.addAll(_queryParams('', 'keyword', keyword));
    }
    if (redeemableStartDate != null) {
      queryParams.addAll(_queryParams('', 'redeemableStartDate', redeemableStartDate));
    }
    if (redeemableEndDate != null) {
      queryParams.addAll(_queryParams('', 'redeemableEndDate', redeemableEndDate));
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

  /// Search Orders
  ///
  /// Search on active orders by customer
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [String] appKey (required):
  ///   The application requesting the purchase
  ///
  /// * [String] deviceId:
  ///   The device id (deviceId or accountId required)
  ///
  /// * [int] accountId:
  ///   The account id of the user (deviceId or accountId required)
  ///
  /// * [int] start:
  ///   The start index for pagination
  ///
  /// * [int] limit:
  ///   The limit for pagination
  ///
  /// * [bool] descending:
  ///   Determines whether to return the resulting list in descending or ascending order
  ///
  /// * [bool] activeOnly:
  ///   Only return active orders
  ///
  /// * [bool] ignoreCustomerFilter:
  ///   Determines whether to ignore the customer filter (requires an Admin/Exec account)
  ///
  /// * [String] orderItemTypes:
  ///   Filter results by orderItemTypes
  ///
  /// * [String] orderItemIds:
  ///   Filter results by orderItemIds
  ///
  /// * [String] orderCustomTypes:
  ///   Filter results by orderCustomTypes
  ///
  /// * [String] orderCustomIds:
  ///   Filter results by orderCustomIds
  ///
  /// * [String] sortField:
  ///   Determines what to sort the results by
  ///
  /// * [String] offerTypes:
  ///   Filter results by offer type
  ///
  /// * [String] specialOfferTypes:
  ///   Filter results by special offer type
  ///
  /// * [String] categoryIds:
  ///   Filter results by category Ids
  ///
  /// * [String] filterIds:
  ///   Filter results by filter Ids
  ///
  /// * [String] offerAudienceIds:
  ///   Filter results by offer audience Ids
  ///
  /// * [String] transactionAudienceIds:
  ///   Filter results by transaction audience Ids
  ///
  /// * [String] offerIds:
  ///   Filter results by offer Ids
  ///
  /// * [String] offerLocationIds:
  ///   Filter results by offer location Ids
  ///
  /// * [String] retailerIds:
  ///   Filter results by retailer Ids
  ///
  /// * [String] retailerLocationIds:
  ///   Filter results by retailer location Ids
  ///
  /// * [String] statuses:
  ///   Filter results by offer transaction status (0: non-redeemable, 1: redeemable, 2: redeemed, 3: user deleted, 4: unclaimed/rewarded, 5: membership active, 6: membership cancelled)
  ///
  /// * [String] keyword:
  ///   The keyword to search for
  ///
  /// * [int] redeemableStartDate:
  ///   Filter results by the offer redeemable date
  ///
  /// * [int] redeemableEndDate:
  ///   Filter results by the offer redeemable date
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
  Future<List<OrderResponse>?> searchOrders(num version, String appKey, { String? deviceId, int? accountId, int? start, int? limit, bool? descending, bool? activeOnly, bool? ignoreCustomerFilter, String? orderItemTypes, String? orderItemIds, String? orderCustomTypes, String? orderCustomIds, String? sortField, String? offerTypes, String? specialOfferTypes, String? categoryIds, String? filterIds, String? offerAudienceIds, String? transactionAudienceIds, String? offerIds, String? offerLocationIds, String? retailerIds, String? retailerLocationIds, String? statuses, String? keyword, int? redeemableStartDate, int? redeemableEndDate, int? startedSince, int? startedBefore, int? endedSince, int? endedBefore, }) async {
    final response = await searchOrdersWithHttpInfo(version, appKey,  deviceId: deviceId, accountId: accountId, start: start, limit: limit, descending: descending, activeOnly: activeOnly, ignoreCustomerFilter: ignoreCustomerFilter, orderItemTypes: orderItemTypes, orderItemIds: orderItemIds, orderCustomTypes: orderCustomTypes, orderCustomIds: orderCustomIds, sortField: sortField, offerTypes: offerTypes, specialOfferTypes: specialOfferTypes, categoryIds: categoryIds, filterIds: filterIds, offerAudienceIds: offerAudienceIds, transactionAudienceIds: transactionAudienceIds, offerIds: offerIds, offerLocationIds: offerLocationIds, retailerIds: retailerIds, retailerLocationIds: retailerLocationIds, statuses: statuses, keyword: keyword, redeemableStartDate: redeemableStartDate, redeemableEndDate: redeemableEndDate, startedSince: startedSince, startedBefore: startedBefore, endedSince: endedSince, endedBefore: endedBefore, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<OrderResponse>') as List)
        .cast<OrderResponse>()
        .toList(growable: false);

    }
    return null;
  }

  /// Update Order
  ///
  /// Updates new purchase with some number of items associated with it. The orderId provided is used to retrieve the record and the payment is added to it.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] orderId (required):
  ///   The order to add the purchase to, leave null for new order.
  ///
  /// * [String] appKey (required):
  ///   The application requesting the purchase
  ///
  /// * [String] cart (required):
  ///   ```json [   { \"orderItemType\": \"OFFER\", \"orderItemId\": 234, \"orderCustomType\": \"OfferLocation\", \"orderCustomId\": 123, \"retailerLocationId\": 1234, \"quantity\": 2 },   { \"orderItemType\": \"OFFER\", \"orderItemId\": 235, \"quantity\": 2 },   { \"orderItemType\": \"CUSTOM\", \"amount\": 10.50, \"orderCustomType\": \"ServiceFee\" },   { \"orderItemType\": \"CUSTOM\", \"amount\": 25.10, \"quantity\": 2, \"orderCustomType\": \"Hat\", \"orderCustomId\": 123 } ] ``` 
  ///
  /// * [String] deviceId:
  ///   The device id (deviceId or accountId required)
  ///
  /// * [int] accountId:
  ///   The account id of the user (deviceId or accountId required)
  ///
  /// * [int] paymentTransactionId:
  ///   The payment transaction to apply the refund to
  ///
  /// * [String] description:
  ///   A description of the purchase
  ///
  /// * [String] currencyType:
  ///   Determines the method of purchasing offer.  * VOID: used for when there is no payment involved (ie. for updating the status of a purchase order)  * CASH: use card on file  * POINTS: use account balance  * TICKETS: use tickets  * REFUND: not allowed for a create, requires a paymentTransactionId.  * CREDIT: add to the account balance  * RELOAD: charge a credit card then add to the account balance  
  ///
  /// * [int] paymentMethodId:
  ///   Use a specific payment method (CASH), if not provided use default
  ///
  /// * [String] externalPaymentId:
  ///   Store identifier from external system
  ///
  /// * [int] externalDate:
  ///   External Date
  Future<Response> updateOrderWithHttpInfo(num version, int orderId, String appKey, String cart, { String? deviceId, int? accountId, int? paymentTransactionId, String? description, String? currencyType, int? paymentMethodId, String? externalPaymentId, int? externalDate, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/order/update'
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
      queryParams.addAll(_queryParams('', 'orderId', orderId));
    if (paymentTransactionId != null) {
      queryParams.addAll(_queryParams('', 'paymentTransactionId', paymentTransactionId));
    }
      queryParams.addAll(_queryParams('', 'appKey', appKey));
    if (description != null) {
      queryParams.addAll(_queryParams('', 'description', description));
    }
    if (currencyType != null) {
      queryParams.addAll(_queryParams('', 'currencyType', currencyType));
    }
      queryParams.addAll(_queryParams('', 'cart', cart));
    if (paymentMethodId != null) {
      queryParams.addAll(_queryParams('', 'paymentMethodId', paymentMethodId));
    }
    if (externalPaymentId != null) {
      queryParams.addAll(_queryParams('', 'externalPaymentId', externalPaymentId));
    }
    if (externalDate != null) {
      queryParams.addAll(_queryParams('', 'externalDate', externalDate));
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

  /// Update Order
  ///
  /// Updates new purchase with some number of items associated with it. The orderId provided is used to retrieve the record and the payment is added to it.
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] orderId (required):
  ///   The order to add the purchase to, leave null for new order.
  ///
  /// * [String] appKey (required):
  ///   The application requesting the purchase
  ///
  /// * [String] cart (required):
  ///   ```json [   { \"orderItemType\": \"OFFER\", \"orderItemId\": 234, \"orderCustomType\": \"OfferLocation\", \"orderCustomId\": 123, \"retailerLocationId\": 1234, \"quantity\": 2 },   { \"orderItemType\": \"OFFER\", \"orderItemId\": 235, \"quantity\": 2 },   { \"orderItemType\": \"CUSTOM\", \"amount\": 10.50, \"orderCustomType\": \"ServiceFee\" },   { \"orderItemType\": \"CUSTOM\", \"amount\": 25.10, \"quantity\": 2, \"orderCustomType\": \"Hat\", \"orderCustomId\": 123 } ] ``` 
  ///
  /// * [String] deviceId:
  ///   The device id (deviceId or accountId required)
  ///
  /// * [int] accountId:
  ///   The account id of the user (deviceId or accountId required)
  ///
  /// * [int] paymentTransactionId:
  ///   The payment transaction to apply the refund to
  ///
  /// * [String] description:
  ///   A description of the purchase
  ///
  /// * [String] currencyType:
  ///   Determines the method of purchasing offer.  * VOID: used for when there is no payment involved (ie. for updating the status of a purchase order)  * CASH: use card on file  * POINTS: use account balance  * TICKETS: use tickets  * REFUND: not allowed for a create, requires a paymentTransactionId.  * CREDIT: add to the account balance  * RELOAD: charge a credit card then add to the account balance  
  ///
  /// * [int] paymentMethodId:
  ///   Use a specific payment method (CASH), if not provided use default
  ///
  /// * [String] externalPaymentId:
  ///   Store identifier from external system
  ///
  /// * [int] externalDate:
  ///   External Date
  Future<OrderResponse?> updateOrder(num version, int orderId, String appKey, String cart, { String? deviceId, int? accountId, int? paymentTransactionId, String? description, String? currencyType, int? paymentMethodId, String? externalPaymentId, int? externalDate, }) async {
    final response = await updateOrderWithHttpInfo(version, orderId, appKey, cart,  deviceId: deviceId, accountId: accountId, paymentTransactionId: paymentTransactionId, description: description, currencyType: currencyType, paymentMethodId: paymentMethodId, externalPaymentId: externalPaymentId, externalDate: externalDate, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'OrderResponse',) as OrderResponse;
    
    }
    return null;
  }
}
