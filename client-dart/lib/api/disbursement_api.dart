//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class DisbursementApi {
  DisbursementApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Check Disbursements
  ///
  /// Checks the status of a captured disbrusement to see if it has been settled.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] disbursementId (required):
  ///   the ID of the disbursement being checked on
  Future<Response> checkDisbursementsWithHttpInfo(num version, int disbursementId,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/disbursement/check'
      .replaceAll('{version}', version.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'disbursementId', disbursementId));

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

  /// Check Disbursements
  ///
  /// Checks the status of a captured disbrusement to see if it has been settled.
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] disbursementId (required):
  ///   the ID of the disbursement being checked on
  Future<DisbursementResponse?> checkDisbursements(num version, int disbursementId,) async {
    final response = await checkDisbursementsWithHttpInfo(version, disbursementId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'DisbursementResponse',) as DisbursementResponse;
    
    }
    return null;
  }

  /// Create Disbursement
  ///
  /// Creates a Disbursement for sending money to a retailer
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] accountId (required):
  ///   the ID of the logging in user (must be an EXECUTIVE account)
  ///
  /// * [int] receiverAccountId (required):
  ///   the ID of the account receiving the disbursement
  ///
  /// * [int] originalSenderAccountId (required):
  ///   the ID of the original sender account
  ///
  /// * [num] amount (required):
  ///   the dollar amount of the disbursement
  ///
  /// * [String] provider (required):
  ///   the provider (e.g. Authorize.net, Bill.com, etc.)
  ///
  /// * [int] scheduledDate:
  ///   the date that the disbursement is scheduled to go out to the payment provider
  ///
  /// * [String] title:
  ///   a title given for the disbursement
  ///
  /// * [String] comment:
  ///   a comment that could be made for a disbursement
  ///
  /// * [String] externalId:
  ///   external ID, which can be used as a way to reference the disbursement
  ///
  /// * [String] introspectionParams:
  ///   This is for specifying parameters to make an http callback request for validating that the disbursement is valid
  Future<Response> createDisbursementWithHttpInfo(num version, int accountId, int receiverAccountId, int originalSenderAccountId, num amount, String provider, { int? scheduledDate, String? title, String? comment, String? externalId, String? introspectionParams, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/disbursement/create'
      .replaceAll('{version}', version.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'accountId', accountId));
      queryParams.addAll(_queryParams('', 'receiverAccountId', receiverAccountId));
      queryParams.addAll(_queryParams('', 'originalSenderAccountId', originalSenderAccountId));
      queryParams.addAll(_queryParams('', 'amount', amount));
      queryParams.addAll(_queryParams('', 'provider', provider));
    if (scheduledDate != null) {
      queryParams.addAll(_queryParams('', 'scheduledDate', scheduledDate));
    }
    if (title != null) {
      queryParams.addAll(_queryParams('', 'title', title));
    }
    if (comment != null) {
      queryParams.addAll(_queryParams('', 'comment', comment));
    }
    if (externalId != null) {
      queryParams.addAll(_queryParams('', 'externalId', externalId));
    }
    if (introspectionParams != null) {
      queryParams.addAll(_queryParams('', 'introspectionParams', introspectionParams));
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

  /// Create Disbursement
  ///
  /// Creates a Disbursement for sending money to a retailer
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] accountId (required):
  ///   the ID of the logging in user (must be an EXECUTIVE account)
  ///
  /// * [int] receiverAccountId (required):
  ///   the ID of the account receiving the disbursement
  ///
  /// * [int] originalSenderAccountId (required):
  ///   the ID of the original sender account
  ///
  /// * [num] amount (required):
  ///   the dollar amount of the disbursement
  ///
  /// * [String] provider (required):
  ///   the provider (e.g. Authorize.net, Bill.com, etc.)
  ///
  /// * [int] scheduledDate:
  ///   the date that the disbursement is scheduled to go out to the payment provider
  ///
  /// * [String] title:
  ///   a title given for the disbursement
  ///
  /// * [String] comment:
  ///   a comment that could be made for a disbursement
  ///
  /// * [String] externalId:
  ///   external ID, which can be used as a way to reference the disbursement
  ///
  /// * [String] introspectionParams:
  ///   This is for specifying parameters to make an http callback request for validating that the disbursement is valid
  Future<DisbursementResponse?> createDisbursement(num version, int accountId, int receiverAccountId, int originalSenderAccountId, num amount, String provider, { int? scheduledDate, String? title, String? comment, String? externalId, String? introspectionParams, }) async {
    final response = await createDisbursementWithHttpInfo(version, accountId, receiverAccountId, originalSenderAccountId, amount, provider,  scheduledDate: scheduledDate, title: title, comment: comment, externalId: externalId, introspectionParams: introspectionParams, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'DisbursementResponse',) as DisbursementResponse;
    
    }
    return null;
  }

  /// Get Disbursement
  ///
  /// Get Disbursement details
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] accountId (required):
  ///   The logged in user.
  ///
  /// * [int] disbursementId (required):
  ///   the id of the disbursement
  Future<Response> getDisbursementWithHttpInfo(num version, int accountId, int disbursementId,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/disbursement/get'
      .replaceAll('{version}', version.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'accountId', accountId));
      queryParams.addAll(_queryParams('', 'disbursementId', disbursementId));

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

  /// Get Disbursement
  ///
  /// Get Disbursement details
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] accountId (required):
  ///   The logged in user.
  ///
  /// * [int] disbursementId (required):
  ///   the id of the disbursement
  Future<DisbursementResponse?> getDisbursement(num version, int accountId, int disbursementId,) async {
    final response = await getDisbursementWithHttpInfo(version, accountId, disbursementId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'DisbursementResponse',) as DisbursementResponse;
    
    }
    return null;
  }

  /// Search Disbursements
  ///
  /// Search Disbursements
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] accountId (required):
  ///   the id of the logged in user
  ///
  /// * [int] receiverAccountId:
  ///   filter results by the id of the account receiving the disbursement
  ///
  /// * [String] statuses:
  ///   comma separated list of status values to search for, possilbe values include: NEW, APPROVED, VALIDATING, ERROR, AUTHORIZED, CAPTURED, SETTLED
  ///
  /// * [String] providers:
  ///   comma separated list of payment providers to search for, possbile values include: AUTHORIZE_NET, AMAZON_FPS, BILL_COM
  ///
  /// * [int] beforeDate:
  ///   the date for searching disbursements before it has been processed
  ///
  /// * [int] afterDate:
  ///   the date for searching disbursements before it has been processed
  ///
  /// * [int] start:
  ///   the start index for pagination
  ///
  /// * [int] limit:
  ///   the limit per result set for pagination
  ///
  /// * [bool] activeOnly:
  ///   search on disbursements that are active only
  ///
  /// * [String] externalId:
  ///   search results by this external ID (that can be used to reference the disbursement)
  Future<Response> searchDisbursementsWithHttpInfo(num version, int accountId, { int? receiverAccountId, String? statuses, String? providers, int? beforeDate, int? afterDate, int? start, int? limit, bool? activeOnly, String? externalId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/disbursement/search'
      .replaceAll('{version}', version.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'accountId', accountId));
    if (receiverAccountId != null) {
      queryParams.addAll(_queryParams('', 'receiverAccountId', receiverAccountId));
    }
    if (statuses != null) {
      queryParams.addAll(_queryParams('', 'statuses', statuses));
    }
    if (providers != null) {
      queryParams.addAll(_queryParams('', 'providers', providers));
    }
    if (beforeDate != null) {
      queryParams.addAll(_queryParams('', 'beforeDate', beforeDate));
    }
    if (afterDate != null) {
      queryParams.addAll(_queryParams('', 'afterDate', afterDate));
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
    if (externalId != null) {
      queryParams.addAll(_queryParams('', 'externalId', externalId));
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

  /// Search Disbursements
  ///
  /// Search Disbursements
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] accountId (required):
  ///   the id of the logged in user
  ///
  /// * [int] receiverAccountId:
  ///   filter results by the id of the account receiving the disbursement
  ///
  /// * [String] statuses:
  ///   comma separated list of status values to search for, possilbe values include: NEW, APPROVED, VALIDATING, ERROR, AUTHORIZED, CAPTURED, SETTLED
  ///
  /// * [String] providers:
  ///   comma separated list of payment providers to search for, possbile values include: AUTHORIZE_NET, AMAZON_FPS, BILL_COM
  ///
  /// * [int] beforeDate:
  ///   the date for searching disbursements before it has been processed
  ///
  /// * [int] afterDate:
  ///   the date for searching disbursements before it has been processed
  ///
  /// * [int] start:
  ///   the start index for pagination
  ///
  /// * [int] limit:
  ///   the limit per result set for pagination
  ///
  /// * [bool] activeOnly:
  ///   search on disbursements that are active only
  ///
  /// * [String] externalId:
  ///   search results by this external ID (that can be used to reference the disbursement)
  Future<List<DisbursementResponse>?> searchDisbursements(num version, int accountId, { int? receiverAccountId, String? statuses, String? providers, int? beforeDate, int? afterDate, int? start, int? limit, bool? activeOnly, String? externalId, }) async {
    final response = await searchDisbursementsWithHttpInfo(version, accountId,  receiverAccountId: receiverAccountId, statuses: statuses, providers: providers, beforeDate: beforeDate, afterDate: afterDate, start: start, limit: limit, activeOnly: activeOnly, externalId: externalId, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<DisbursementResponse>') as List)
        .cast<DisbursementResponse>()
        .toList(growable: false);

    }
    return null;
  }

  /// Update Disbursement
  ///
  /// Update Disbursement
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] accountId (required):
  ///   the id of the logged in user
  ///
  /// * [int] disbursementId (required):
  ///   the id of the disbursement being updated
  ///
  /// * [num] amount:
  ///   the disbursement dollar amount being updated
  ///
  /// * [String] provider:
  ///   the payments and/or billing provider (e.g. Authorize.net, Bill.com, etc.)
  ///
  /// * [int] scheduledDate:
  ///   the date that the disbursement is scheduled to go out to the payment provider
  ///
  /// * [String] title:
  ///   the title given to the disbursement
  ///
  /// * [String] comment:
  ///   a comment that can be made on a disbursement
  ///
  /// * [String] externalId:
  ///   an external ID that can be used to reference the disbursement
  ///
  /// * [bool] retry:
  ///   determines whether to try sending the disbursement again in the case of a previous failure
  ///
  /// * [String] introspectionParams:
  ///   for specifying parameters to make an http callback request for validating that the disbursement is valid
  Future<Response> updateDisbursementWithHttpInfo(num version, int accountId, int disbursementId, { num? amount, String? provider, int? scheduledDate, String? title, String? comment, String? externalId, bool? retry, String? introspectionParams, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/disbursement/update'
      .replaceAll('{version}', version.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'accountId', accountId));
      queryParams.addAll(_queryParams('', 'disbursementId', disbursementId));
    if (amount != null) {
      queryParams.addAll(_queryParams('', 'amount', amount));
    }
    if (provider != null) {
      queryParams.addAll(_queryParams('', 'provider', provider));
    }
    if (scheduledDate != null) {
      queryParams.addAll(_queryParams('', 'scheduledDate', scheduledDate));
    }
    if (title != null) {
      queryParams.addAll(_queryParams('', 'title', title));
    }
    if (comment != null) {
      queryParams.addAll(_queryParams('', 'comment', comment));
    }
    if (externalId != null) {
      queryParams.addAll(_queryParams('', 'externalId', externalId));
    }
    if (retry != null) {
      queryParams.addAll(_queryParams('', 'retry', retry));
    }
    if (introspectionParams != null) {
      queryParams.addAll(_queryParams('', 'introspectionParams', introspectionParams));
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

  /// Update Disbursement
  ///
  /// Update Disbursement
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] accountId (required):
  ///   the id of the logged in user
  ///
  /// * [int] disbursementId (required):
  ///   the id of the disbursement being updated
  ///
  /// * [num] amount:
  ///   the disbursement dollar amount being updated
  ///
  /// * [String] provider:
  ///   the payments and/or billing provider (e.g. Authorize.net, Bill.com, etc.)
  ///
  /// * [int] scheduledDate:
  ///   the date that the disbursement is scheduled to go out to the payment provider
  ///
  /// * [String] title:
  ///   the title given to the disbursement
  ///
  /// * [String] comment:
  ///   a comment that can be made on a disbursement
  ///
  /// * [String] externalId:
  ///   an external ID that can be used to reference the disbursement
  ///
  /// * [bool] retry:
  ///   determines whether to try sending the disbursement again in the case of a previous failure
  ///
  /// * [String] introspectionParams:
  ///   for specifying parameters to make an http callback request for validating that the disbursement is valid
  Future<DisbursementResponse?> updateDisbursement(num version, int accountId, int disbursementId, { num? amount, String? provider, int? scheduledDate, String? title, String? comment, String? externalId, bool? retry, String? introspectionParams, }) async {
    final response = await updateDisbursementWithHttpInfo(version, accountId, disbursementId,  amount: amount, provider: provider, scheduledDate: scheduledDate, title: title, comment: comment, externalId: externalId, retry: retry, introspectionParams: introspectionParams, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'DisbursementResponse',) as DisbursementResponse;
    
    }
    return null;
  }
}
