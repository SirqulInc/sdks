//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class BidApi {
  BidApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Create Bid
  ///
  /// Creates a bid on a biddable object
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] biddableType (required):
  ///   A biddable object type. Possible values include: CREATIVE (ads).
  ///
  /// * [int] biddableId (required):
  ///   The id of the biddable object
  ///
  /// * [double] amountPerView (required):
  ///   The bid amount for views. For ads, this is the amount that will be taken for each impression.
  ///
  /// * [double] amountPerAction (required):
  ///   The bid amount for actions. For ads, this is the amount that will be taken for each click.
  ///
  /// * [double] budgetAmount (required):
  ///   The allocated budget amount that will be used
  ///
  /// * [String] budgetSchedule (required):
  ///   The schedule for when the allocated budget amount is reset
  ///
  /// * [String] deviceId:
  ///   The device id (deviceId or accountId required)
  ///
  /// * [int] accountId:
  ///   The account id of the user (deviceId or accountId required)
  Future<Response> createBidWithHttpInfo(String biddableType, int biddableId, double amountPerView, double amountPerAction, double budgetAmount, String budgetSchedule, { String? deviceId, int? accountId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/bid/create';

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
      queryParams.addAll(_queryParams('', 'biddableType', biddableType));
      queryParams.addAll(_queryParams('', 'biddableId', biddableId));
      queryParams.addAll(_queryParams('', 'amountPerView', amountPerView));
      queryParams.addAll(_queryParams('', 'amountPerAction', amountPerAction));
      queryParams.addAll(_queryParams('', 'budgetAmount', budgetAmount));
      queryParams.addAll(_queryParams('', 'budgetSchedule', budgetSchedule));

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

  /// Create Bid
  ///
  /// Creates a bid on a biddable object
  ///
  /// Parameters:
  ///
  /// * [String] biddableType (required):
  ///   A biddable object type. Possible values include: CREATIVE (ads).
  ///
  /// * [int] biddableId (required):
  ///   The id of the biddable object
  ///
  /// * [double] amountPerView (required):
  ///   The bid amount for views. For ads, this is the amount that will be taken for each impression.
  ///
  /// * [double] amountPerAction (required):
  ///   The bid amount for actions. For ads, this is the amount that will be taken for each click.
  ///
  /// * [double] budgetAmount (required):
  ///   The allocated budget amount that will be used
  ///
  /// * [String] budgetSchedule (required):
  ///   The schedule for when the allocated budget amount is reset
  ///
  /// * [String] deviceId:
  ///   The device id (deviceId or accountId required)
  ///
  /// * [int] accountId:
  ///   The account id of the user (deviceId or accountId required)
  Future<BidResponse?> createBid(String biddableType, int biddableId, double amountPerView, double amountPerAction, double budgetAmount, String budgetSchedule, { String? deviceId, int? accountId, }) async {
    final response = await createBidWithHttpInfo(biddableType, biddableId, amountPerView, amountPerAction, budgetAmount, budgetSchedule,  deviceId: deviceId, accountId: accountId, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'BidResponse',) as BidResponse;
    
    }
    return null;
  }

  /// Delete Bid
  ///
  /// Deleted a bid on a biddable object
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] bidId (required):
  ///   The bid id
  ///
  /// * [String] deviceId:
  ///   The device id (deviceId or accountId required)
  ///
  /// * [int] accountId:
  ///   The account id of the user (deviceId or accountId required)
  Future<Response> deleteBidWithHttpInfo(int bidId, { String? deviceId, int? accountId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/bid/delete';

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
      queryParams.addAll(_queryParams('', 'bidId', bidId));

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

  /// Delete Bid
  ///
  /// Deleted a bid on a biddable object
  ///
  /// Parameters:
  ///
  /// * [int] bidId (required):
  ///   The bid id
  ///
  /// * [String] deviceId:
  ///   The device id (deviceId or accountId required)
  ///
  /// * [int] accountId:
  ///   The account id of the user (deviceId or accountId required)
  Future<SirqulResponse?> deleteBid(int bidId, { String? deviceId, int? accountId, }) async {
    final response = await deleteBidWithHttpInfo(bidId,  deviceId: deviceId, accountId: accountId, );
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

  /// Get Bid
  ///
  /// Get the bid details of a biddable object
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] bidId (required):
  ///   The bid id
  ///
  /// * [String] deviceId:
  ///   The device id (deviceId or accountId required)
  ///
  /// * [int] accountId:
  ///   The account id of the user (deviceId or accountId required)
  Future<Response> getBidWithHttpInfo(int bidId, { String? deviceId, int? accountId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/bid/get';

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
      queryParams.addAll(_queryParams('', 'bidId', bidId));

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

  /// Get Bid
  ///
  /// Get the bid details of a biddable object
  ///
  /// Parameters:
  ///
  /// * [int] bidId (required):
  ///   The bid id
  ///
  /// * [String] deviceId:
  ///   The device id (deviceId or accountId required)
  ///
  /// * [int] accountId:
  ///   The account id of the user (deviceId or accountId required)
  Future<BidResponse?> getBid(int bidId, { String? deviceId, int? accountId, }) async {
    final response = await getBidWithHttpInfo(bidId,  deviceId: deviceId, accountId: accountId, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'BidResponse',) as BidResponse;
    
    }
    return null;
  }

  /// Update Bid
  ///
  /// Updates a bid on a biddable object
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] bidId (required):
  ///   The bid id
  ///
  /// * [String] deviceId:
  ///   The device id (deviceId or accountId required)
  ///
  /// * [int] accountId:
  ///   The account id of the user (deviceId or accountId required)
  ///
  /// * [double] amountPerView:
  ///   The bid amount for views. For ads, this is the amount that will be taken for each impression.
  ///
  /// * [double] amountPerAction:
  ///   The bid amount for actions. For ads, this is the amount that will be taken for each click.
  ///
  /// * [double] budgetAmount:
  ///   The allocated budget amount that will be used
  ///
  /// * [String] budgetSchedule:
  ///   The schedule for when the allocated budget amount is reset
  Future<Response> updateBidWithHttpInfo(int bidId, { String? deviceId, int? accountId, double? amountPerView, double? amountPerAction, double? budgetAmount, String? budgetSchedule, }) async {
    // ignore: prefer_const_declarations
    final path = r'/bid/update';

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
      queryParams.addAll(_queryParams('', 'bidId', bidId));
    if (amountPerView != null) {
      queryParams.addAll(_queryParams('', 'amountPerView', amountPerView));
    }
    if (amountPerAction != null) {
      queryParams.addAll(_queryParams('', 'amountPerAction', amountPerAction));
    }
    if (budgetAmount != null) {
      queryParams.addAll(_queryParams('', 'budgetAmount', budgetAmount));
    }
    if (budgetSchedule != null) {
      queryParams.addAll(_queryParams('', 'budgetSchedule', budgetSchedule));
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

  /// Update Bid
  ///
  /// Updates a bid on a biddable object
  ///
  /// Parameters:
  ///
  /// * [int] bidId (required):
  ///   The bid id
  ///
  /// * [String] deviceId:
  ///   The device id (deviceId or accountId required)
  ///
  /// * [int] accountId:
  ///   The account id of the user (deviceId or accountId required)
  ///
  /// * [double] amountPerView:
  ///   The bid amount for views. For ads, this is the amount that will be taken for each impression.
  ///
  /// * [double] amountPerAction:
  ///   The bid amount for actions. For ads, this is the amount that will be taken for each click.
  ///
  /// * [double] budgetAmount:
  ///   The allocated budget amount that will be used
  ///
  /// * [String] budgetSchedule:
  ///   The schedule for when the allocated budget amount is reset
  Future<BidResponse?> updateBid(int bidId, { String? deviceId, int? accountId, double? amountPerView, double? amountPerAction, double? budgetAmount, String? budgetSchedule, }) async {
    final response = await updateBidWithHttpInfo(bidId,  deviceId: deviceId, accountId: accountId, amountPerView: amountPerView, amountPerAction: amountPerAction, budgetAmount: budgetAmount, budgetSchedule: budgetSchedule, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'BidResponse',) as BidResponse;
    
    }
    return null;
  }
}
