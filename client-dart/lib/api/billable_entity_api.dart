//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class BillableEntityApi {
  BillableEntityApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Create Billable
  ///
  /// reate a billable entity for an account. The creator is assumed to be the responsible account. An account can only have one billable entity
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] deviceId:
  ///   The unique device identifier that made the request (either deviceId or accountId must be used)
  ///
  /// * [int] accountId:
  ///   The unique accountId that made the request (either deviceId or accountId must be used)
  ///
  /// * [String] name:
  ///   The name of the entity responsible for billing 
  ///
  /// * [String] streetAddress:
  ///   The street address of the billable entity
  ///
  /// * [String] streetAddress2:
  ///   Additional address information (such as a suite number, floor number, building name, or PO Box) 
  ///
  /// * [String] city:
  ///   The city of the billable entity
  ///
  /// * [String] state:
  ///   The state of the billable entity
  ///
  /// * [String] postalCode:
  ///   The postal code of the billable entity
  ///
  /// * [String] businessPhone:
  ///   The business phone of the billable entity
  ///
  /// * [String] businessPhoneExt:
  ///   The business phone extension
  ///
  /// * [String] authorizeNetApiKey:
  ///   Authorize Net Api Key
  ///
  /// * [String] authorizeNetTransactionKey:
  ///   Authorize Net Transaction Key
  Future<Response> createBillableEntityWithHttpInfo({ String? deviceId, int? accountId, String? name, String? streetAddress, String? streetAddress2, String? city, String? state, String? postalCode, String? businessPhone, String? businessPhoneExt, String? authorizeNetApiKey, String? authorizeNetTransactionKey, }) async {
    // ignore: prefer_const_declarations
    final path = r'/billable/create';

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
    if (name != null) {
      queryParams.addAll(_queryParams('', 'name', name));
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
    if (businessPhone != null) {
      queryParams.addAll(_queryParams('', 'businessPhone', businessPhone));
    }
    if (businessPhoneExt != null) {
      queryParams.addAll(_queryParams('', 'businessPhoneExt', businessPhoneExt));
    }
    if (authorizeNetApiKey != null) {
      queryParams.addAll(_queryParams('', 'authorizeNetApiKey', authorizeNetApiKey));
    }
    if (authorizeNetTransactionKey != null) {
      queryParams.addAll(_queryParams('', 'authorizeNetTransactionKey', authorizeNetTransactionKey));
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

  /// Create Billable
  ///
  /// reate a billable entity for an account. The creator is assumed to be the responsible account. An account can only have one billable entity
  ///
  /// Parameters:
  ///
  /// * [String] deviceId:
  ///   The unique device identifier that made the request (either deviceId or accountId must be used)
  ///
  /// * [int] accountId:
  ///   The unique accountId that made the request (either deviceId or accountId must be used)
  ///
  /// * [String] name:
  ///   The name of the entity responsible for billing 
  ///
  /// * [String] streetAddress:
  ///   The street address of the billable entity
  ///
  /// * [String] streetAddress2:
  ///   Additional address information (such as a suite number, floor number, building name, or PO Box) 
  ///
  /// * [String] city:
  ///   The city of the billable entity
  ///
  /// * [String] state:
  ///   The state of the billable entity
  ///
  /// * [String] postalCode:
  ///   The postal code of the billable entity
  ///
  /// * [String] businessPhone:
  ///   The business phone of the billable entity
  ///
  /// * [String] businessPhoneExt:
  ///   The business phone extension
  ///
  /// * [String] authorizeNetApiKey:
  ///   Authorize Net Api Key
  ///
  /// * [String] authorizeNetTransactionKey:
  ///   Authorize Net Transaction Key
  Future<BillableEntityResponse?> createBillableEntity({ String? deviceId, int? accountId, String? name, String? streetAddress, String? streetAddress2, String? city, String? state, String? postalCode, String? businessPhone, String? businessPhoneExt, String? authorizeNetApiKey, String? authorizeNetTransactionKey, }) async {
    final response = await createBillableEntityWithHttpInfo( deviceId: deviceId, accountId: accountId, name: name, streetAddress: streetAddress, streetAddress2: streetAddress2, city: city, state: state, postalCode: postalCode, businessPhone: businessPhone, businessPhoneExt: businessPhoneExt, authorizeNetApiKey: authorizeNetApiKey, authorizeNetTransactionKey: authorizeNetTransactionKey, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'BillableEntityResponse',) as BillableEntityResponse;
    
    }
    return null;
  }

  /// Delete Billable
  ///
  /// Mark the billable as deleted
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] deviceId:
  ///   The device id (deviceId or accountId required)
  ///
  /// * [int] accountId:
  ///   The account used to perform the delete, must have rights to edit the billable entity.
  Future<Response> deleteBillableEntityWithHttpInfo({ String? deviceId, int? accountId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/billable/delete';

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

  /// Delete Billable
  ///
  /// Mark the billable as deleted
  ///
  /// Parameters:
  ///
  /// * [String] deviceId:
  ///   The device id (deviceId or accountId required)
  ///
  /// * [int] accountId:
  ///   The account used to perform the delete, must have rights to edit the billable entity.
  Future<SirqulResponse?> deleteBillableEntity({ String? deviceId, int? accountId, }) async {
    final response = await deleteBillableEntityWithHttpInfo( deviceId: deviceId, accountId: accountId, );
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

  /// Get Billable
  ///
  /// Used to determine the associated BillableEntity of an account
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] deviceId:
  ///   The unique device identifier that made the request (either deviceId or accountId must be used)
  ///
  /// * [int] accountId:
  ///   The unique accountId that made the request (either deviceId or accountId must be used)
  ///
  /// * [bool] includeCounts:
  ///   Determines whether to include the retailer dash board counts into the response
  ///
  /// * [bool] includePayments:
  ///   Whether to enable payments or not
  Future<Response> getBillableEntityWithHttpInfo({ String? deviceId, int? accountId, bool? includeCounts, bool? includePayments, }) async {
    // ignore: prefer_const_declarations
    final path = r'/billable/get';

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
    if (includeCounts != null) {
      queryParams.addAll(_queryParams('', 'includeCounts', includeCounts));
    }
    if (includePayments != null) {
      queryParams.addAll(_queryParams('', 'includePayments', includePayments));
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

  /// Get Billable
  ///
  /// Used to determine the associated BillableEntity of an account
  ///
  /// Parameters:
  ///
  /// * [String] deviceId:
  ///   The unique device identifier that made the request (either deviceId or accountId must be used)
  ///
  /// * [int] accountId:
  ///   The unique accountId that made the request (either deviceId or accountId must be used)
  ///
  /// * [bool] includeCounts:
  ///   Determines whether to include the retailer dash board counts into the response
  ///
  /// * [bool] includePayments:
  ///   Whether to enable payments or not
  Future<BillableEntityResponse?> getBillableEntity({ String? deviceId, int? accountId, bool? includeCounts, bool? includePayments, }) async {
    final response = await getBillableEntityWithHttpInfo( deviceId: deviceId, accountId: accountId, includeCounts: includeCounts, includePayments: includePayments, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'BillableEntityResponse',) as BillableEntityResponse;
    
    }
    return null;
  }

  /// Update Billable
  ///
  /// Updates the billable record for an account
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] deviceId:
  ///   The unique device identifier that made the request (either deviceId or accountId must be used)
  ///
  /// * [int] accountId:
  ///   The unique accountId that made the request (either deviceId or accountId must be used). The account must have rights to edit the billable entity.
  ///
  /// * [String] name:
  ///   The name of the entity responsible for billing 
  ///
  /// * [String] streetAddress:
  ///   The street address of the billable entity
  ///
  /// * [String] streetAddress2:
  ///   Additional address information (such as a suite number, floor number, building name, or PO Box) 
  ///
  /// * [String] city:
  ///   The city of the billable entity
  ///
  /// * [String] state:
  ///   The state of the billable entity
  ///
  /// * [String] postalCode:
  ///   The postal code of the billable entity
  ///
  /// * [String] businessPhone:
  ///   The business phone of the billable entity
  ///
  /// * [String] businessPhoneExt:
  ///   The business phone extension of the billable entity
  ///
  /// * [String] authorizeNetApiKey:
  ///   Authorize Net Api Key of the billable entity
  ///
  /// * [String] authorizeNetTransactionKey:
  ///   Authorize Net Transaction Key of the billable entity
  Future<Response> updateBillableEntityWithHttpInfo({ String? deviceId, int? accountId, String? name, String? streetAddress, String? streetAddress2, String? city, String? state, String? postalCode, String? businessPhone, String? businessPhoneExt, String? authorizeNetApiKey, String? authorizeNetTransactionKey, }) async {
    // ignore: prefer_const_declarations
    final path = r'/billable/update';

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
    if (name != null) {
      queryParams.addAll(_queryParams('', 'name', name));
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
    if (businessPhone != null) {
      queryParams.addAll(_queryParams('', 'businessPhone', businessPhone));
    }
    if (businessPhoneExt != null) {
      queryParams.addAll(_queryParams('', 'businessPhoneExt', businessPhoneExt));
    }
    if (authorizeNetApiKey != null) {
      queryParams.addAll(_queryParams('', 'authorizeNetApiKey', authorizeNetApiKey));
    }
    if (authorizeNetTransactionKey != null) {
      queryParams.addAll(_queryParams('', 'authorizeNetTransactionKey', authorizeNetTransactionKey));
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

  /// Update Billable
  ///
  /// Updates the billable record for an account
  ///
  /// Parameters:
  ///
  /// * [String] deviceId:
  ///   The unique device identifier that made the request (either deviceId or accountId must be used)
  ///
  /// * [int] accountId:
  ///   The unique accountId that made the request (either deviceId or accountId must be used). The account must have rights to edit the billable entity.
  ///
  /// * [String] name:
  ///   The name of the entity responsible for billing 
  ///
  /// * [String] streetAddress:
  ///   The street address of the billable entity
  ///
  /// * [String] streetAddress2:
  ///   Additional address information (such as a suite number, floor number, building name, or PO Box) 
  ///
  /// * [String] city:
  ///   The city of the billable entity
  ///
  /// * [String] state:
  ///   The state of the billable entity
  ///
  /// * [String] postalCode:
  ///   The postal code of the billable entity
  ///
  /// * [String] businessPhone:
  ///   The business phone of the billable entity
  ///
  /// * [String] businessPhoneExt:
  ///   The business phone extension of the billable entity
  ///
  /// * [String] authorizeNetApiKey:
  ///   Authorize Net Api Key of the billable entity
  ///
  /// * [String] authorizeNetTransactionKey:
  ///   Authorize Net Transaction Key of the billable entity
  Future<BillableEntityResponse?> updateBillableEntity({ String? deviceId, int? accountId, String? name, String? streetAddress, String? streetAddress2, String? city, String? state, String? postalCode, String? businessPhone, String? businessPhoneExt, String? authorizeNetApiKey, String? authorizeNetTransactionKey, }) async {
    final response = await updateBillableEntityWithHttpInfo( deviceId: deviceId, accountId: accountId, name: name, streetAddress: streetAddress, streetAddress2: streetAddress2, city: city, state: state, postalCode: postalCode, businessPhone: businessPhone, businessPhoneExt: businessPhoneExt, authorizeNetApiKey: authorizeNetApiKey, authorizeNetTransactionKey: authorizeNetTransactionKey, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'BillableEntityResponse',) as BillableEntityResponse;
    
    }
    return null;
  }
}
