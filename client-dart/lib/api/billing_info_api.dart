//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class BillingInfoApi {
  BillingInfoApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Update Payment Method
  ///
  /// Update a method of payment. If the paymentMethodId is not passed in then will update their default payment method.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] accountId (required):
  ///   The account used to perform the the request
  ///
  /// * [int] paymentMethodId:
  ///   Payment Method Id
  ///
  /// * [String] accountName:
  ///   the name of the account
  ///
  /// * [String] firstName:
  ///   First Name that the account is filed as
  ///
  /// * [String] lastName:
  ///   Last Name that the account is filed as
  ///
  /// * [String] address:
  ///   Address that the account is filed as
  ///
  /// * [String] city:
  ///   City that the account is filed as
  ///
  /// * [String] state:
  ///   State that the account is filed as
  ///
  /// * [String] postalCode:
  ///   Postal Code that the account is filed as
  ///
  /// * [String] country:
  ///   Country that the account is filed as
  ///
  /// * [String] phone:
  ///   Phone that the account is filed as
  ///
  /// * [String] creditCardNumber:
  ///   The full credit card number to store on file
  ///
  /// * [String] expirationDate:
  ///   The credit card expiration date YYYY-MM
  ///
  /// * [String] ccv:
  ///   The 3 digit confirmation code
  ///
  /// * [String] accountNumber:
  ///   The bank account number
  ///
  /// * [String] bankName:
  ///   The bank name
  ///
  /// * [String] routingNumber:
  ///   Routing Number
  ///
  /// * [bool] defaultPaymentMethod:
  ///   Default Payment Method
  ///
  /// * [String] paymentMethodNickname:
  ///   Payment Method Nickname
  ///
  /// * [String] taxId:
  ///   Tax Id
  ///
  /// * [String] providerCustomerProfileId:
  ///   Provider customer profile Id
  ///
  /// * [String] providerPaymentProfileId:
  ///   Provider customer payment profile Id
  ///
  /// * [String] metaData:
  ///   Meta Data
  Future<Response> addPaymentMethodWithHttpInfo(num version, int accountId, { int? paymentMethodId, String? accountName, String? firstName, String? lastName, String? address, String? city, String? state, String? postalCode, String? country, String? phone, String? creditCardNumber, String? expirationDate, String? ccv, String? accountNumber, String? bankName, String? routingNumber, bool? defaultPaymentMethod, String? paymentMethodNickname, String? taxId, String? providerCustomerProfileId, String? providerPaymentProfileId, String? metaData, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/billing/update'
      .replaceAll('{version}', version.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'accountId', accountId));
    if (paymentMethodId != null) {
      queryParams.addAll(_queryParams('', 'paymentMethodId', paymentMethodId));
    }
    if (accountName != null) {
      queryParams.addAll(_queryParams('', 'accountName', accountName));
    }
    if (firstName != null) {
      queryParams.addAll(_queryParams('', 'firstName', firstName));
    }
    if (lastName != null) {
      queryParams.addAll(_queryParams('', 'lastName', lastName));
    }
    if (address != null) {
      queryParams.addAll(_queryParams('', 'address', address));
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
    if (country != null) {
      queryParams.addAll(_queryParams('', 'country', country));
    }
    if (phone != null) {
      queryParams.addAll(_queryParams('', 'phone', phone));
    }
    if (creditCardNumber != null) {
      queryParams.addAll(_queryParams('', 'creditCardNumber', creditCardNumber));
    }
    if (expirationDate != null) {
      queryParams.addAll(_queryParams('', 'expirationDate', expirationDate));
    }
    if (ccv != null) {
      queryParams.addAll(_queryParams('', 'ccv', ccv));
    }
    if (accountNumber != null) {
      queryParams.addAll(_queryParams('', 'accountNumber', accountNumber));
    }
    if (bankName != null) {
      queryParams.addAll(_queryParams('', 'bankName', bankName));
    }
    if (routingNumber != null) {
      queryParams.addAll(_queryParams('', 'routingNumber', routingNumber));
    }
    if (defaultPaymentMethod != null) {
      queryParams.addAll(_queryParams('', 'defaultPaymentMethod', defaultPaymentMethod));
    }
    if (paymentMethodNickname != null) {
      queryParams.addAll(_queryParams('', 'paymentMethodNickname', paymentMethodNickname));
    }
    if (taxId != null) {
      queryParams.addAll(_queryParams('', 'taxId', taxId));
    }
    if (providerCustomerProfileId != null) {
      queryParams.addAll(_queryParams('', 'providerCustomerProfileId', providerCustomerProfileId));
    }
    if (providerPaymentProfileId != null) {
      queryParams.addAll(_queryParams('', 'providerPaymentProfileId', providerPaymentProfileId));
    }
    if (metaData != null) {
      queryParams.addAll(_queryParams('', 'metaData', metaData));
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

  /// Update Payment Method
  ///
  /// Update a method of payment. If the paymentMethodId is not passed in then will update their default payment method.
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] accountId (required):
  ///   The account used to perform the the request
  ///
  /// * [int] paymentMethodId:
  ///   Payment Method Id
  ///
  /// * [String] accountName:
  ///   the name of the account
  ///
  /// * [String] firstName:
  ///   First Name that the account is filed as
  ///
  /// * [String] lastName:
  ///   Last Name that the account is filed as
  ///
  /// * [String] address:
  ///   Address that the account is filed as
  ///
  /// * [String] city:
  ///   City that the account is filed as
  ///
  /// * [String] state:
  ///   State that the account is filed as
  ///
  /// * [String] postalCode:
  ///   Postal Code that the account is filed as
  ///
  /// * [String] country:
  ///   Country that the account is filed as
  ///
  /// * [String] phone:
  ///   Phone that the account is filed as
  ///
  /// * [String] creditCardNumber:
  ///   The full credit card number to store on file
  ///
  /// * [String] expirationDate:
  ///   The credit card expiration date YYYY-MM
  ///
  /// * [String] ccv:
  ///   The 3 digit confirmation code
  ///
  /// * [String] accountNumber:
  ///   The bank account number
  ///
  /// * [String] bankName:
  ///   The bank name
  ///
  /// * [String] routingNumber:
  ///   Routing Number
  ///
  /// * [bool] defaultPaymentMethod:
  ///   Default Payment Method
  ///
  /// * [String] paymentMethodNickname:
  ///   Payment Method Nickname
  ///
  /// * [String] taxId:
  ///   Tax Id
  ///
  /// * [String] providerCustomerProfileId:
  ///   Provider customer profile Id
  ///
  /// * [String] providerPaymentProfileId:
  ///   Provider customer payment profile Id
  ///
  /// * [String] metaData:
  ///   Meta Data
  Future<PaymentTypesResponse?> addPaymentMethod(num version, int accountId, { int? paymentMethodId, String? accountName, String? firstName, String? lastName, String? address, String? city, String? state, String? postalCode, String? country, String? phone, String? creditCardNumber, String? expirationDate, String? ccv, String? accountNumber, String? bankName, String? routingNumber, bool? defaultPaymentMethod, String? paymentMethodNickname, String? taxId, String? providerCustomerProfileId, String? providerPaymentProfileId, String? metaData, }) async {
    final response = await addPaymentMethodWithHttpInfo(version, accountId,  paymentMethodId: paymentMethodId, accountName: accountName, firstName: firstName, lastName: lastName, address: address, city: city, state: state, postalCode: postalCode, country: country, phone: phone, creditCardNumber: creditCardNumber, expirationDate: expirationDate, ccv: ccv, accountNumber: accountNumber, bankName: bankName, routingNumber: routingNumber, defaultPaymentMethod: defaultPaymentMethod, paymentMethodNickname: paymentMethodNickname, taxId: taxId, providerCustomerProfileId: providerCustomerProfileId, providerPaymentProfileId: providerPaymentProfileId, metaData: metaData, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PaymentTypesResponse',) as PaymentTypesResponse;
    
    }
    return null;
  }

  /// Create Payment Method
  ///
  /// Add a new method of payment.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] accountId (required):
  ///   The account used to perform the the request
  ///
  /// * [String] accountName:
  ///   Account Name of the credit card user
  ///
  /// * [String] firstName:
  ///   The first name on the credit card
  ///
  /// * [String] lastName:
  ///   The last name on the credit card
  ///
  /// * [String] address:
  ///   The billing address of the credit card
  ///
  /// * [String] city:
  ///   The billing city of the credit card
  ///
  /// * [String] state:
  ///   The billing state of the credit card
  ///
  /// * [String] postalCode:
  ///   The billing zip code of the credit card
  ///
  /// * [String] country:
  ///   Country of the credit card
  ///
  /// * [String] phone:
  ///   The billing phone of the credit card
  ///
  /// * [String] creditCardNumber:
  ///   The full credit card number to store on file
  ///
  /// * [String] expirationDate:
  ///   The credit card expiration date YYYY-MM
  ///
  /// * [String] ccv:
  ///   The 3 digit confirmation code
  ///
  /// * [String] accountNumber:
  ///   The bank account number
  ///
  /// * [String] bankName:
  ///   The bank name
  ///
  /// * [String] routingNumber:
  ///   The bank routing number
  ///
  /// * [String] paymentMethodNickname:
  ///   The nickname to give the payment method
  ///
  /// * [String] taxId:
  ///   Tax Id
  ///
  /// * [bool] defaultPaymentMethod:
  ///   Whether this should be the default payment method
  ///
  /// * [String] authToken:
  ///   An authorization token for providers that provide this (like Amazon Payments)
  ///
  /// * [String] provider:
  ///   The payment provider (see PaymentMethodProvider)
  ///
  /// * [String] providerCustomerProfileId:
  ///   Provider customer profile Id
  ///
  /// * [String] providerPaymentProfileId:
  ///   Provider customer payment profile Id
  ///
  /// * [String] metaData:
  ///   Meta Data
  ///
  /// * [String] appKey:
  ///   Application Key
  Future<Response> createPaymentMethodWithHttpInfo(num version, int accountId, { String? accountName, String? firstName, String? lastName, String? address, String? city, String? state, String? postalCode, String? country, String? phone, String? creditCardNumber, String? expirationDate, String? ccv, String? accountNumber, String? bankName, String? routingNumber, String? paymentMethodNickname, String? taxId, bool? defaultPaymentMethod, String? authToken, String? provider, String? providerCustomerProfileId, String? providerPaymentProfileId, String? metaData, String? appKey, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/billing/create'
      .replaceAll('{version}', version.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'accountId', accountId));
    if (accountName != null) {
      queryParams.addAll(_queryParams('', 'accountName', accountName));
    }
    if (firstName != null) {
      queryParams.addAll(_queryParams('', 'firstName', firstName));
    }
    if (lastName != null) {
      queryParams.addAll(_queryParams('', 'lastName', lastName));
    }
    if (address != null) {
      queryParams.addAll(_queryParams('', 'address', address));
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
    if (country != null) {
      queryParams.addAll(_queryParams('', 'country', country));
    }
    if (phone != null) {
      queryParams.addAll(_queryParams('', 'phone', phone));
    }
    if (creditCardNumber != null) {
      queryParams.addAll(_queryParams('', 'creditCardNumber', creditCardNumber));
    }
    if (expirationDate != null) {
      queryParams.addAll(_queryParams('', 'expirationDate', expirationDate));
    }
    if (ccv != null) {
      queryParams.addAll(_queryParams('', 'ccv', ccv));
    }
    if (accountNumber != null) {
      queryParams.addAll(_queryParams('', 'accountNumber', accountNumber));
    }
    if (bankName != null) {
      queryParams.addAll(_queryParams('', 'bankName', bankName));
    }
    if (routingNumber != null) {
      queryParams.addAll(_queryParams('', 'routingNumber', routingNumber));
    }
    if (paymentMethodNickname != null) {
      queryParams.addAll(_queryParams('', 'paymentMethodNickname', paymentMethodNickname));
    }
    if (taxId != null) {
      queryParams.addAll(_queryParams('', 'taxId', taxId));
    }
    if (defaultPaymentMethod != null) {
      queryParams.addAll(_queryParams('', 'defaultPaymentMethod', defaultPaymentMethod));
    }
    if (authToken != null) {
      queryParams.addAll(_queryParams('', 'authToken', authToken));
    }
    if (provider != null) {
      queryParams.addAll(_queryParams('', 'provider', provider));
    }
    if (providerCustomerProfileId != null) {
      queryParams.addAll(_queryParams('', 'providerCustomerProfileId', providerCustomerProfileId));
    }
    if (providerPaymentProfileId != null) {
      queryParams.addAll(_queryParams('', 'providerPaymentProfileId', providerPaymentProfileId));
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

  /// Create Payment Method
  ///
  /// Add a new method of payment.
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] accountId (required):
  ///   The account used to perform the the request
  ///
  /// * [String] accountName:
  ///   Account Name of the credit card user
  ///
  /// * [String] firstName:
  ///   The first name on the credit card
  ///
  /// * [String] lastName:
  ///   The last name on the credit card
  ///
  /// * [String] address:
  ///   The billing address of the credit card
  ///
  /// * [String] city:
  ///   The billing city of the credit card
  ///
  /// * [String] state:
  ///   The billing state of the credit card
  ///
  /// * [String] postalCode:
  ///   The billing zip code of the credit card
  ///
  /// * [String] country:
  ///   Country of the credit card
  ///
  /// * [String] phone:
  ///   The billing phone of the credit card
  ///
  /// * [String] creditCardNumber:
  ///   The full credit card number to store on file
  ///
  /// * [String] expirationDate:
  ///   The credit card expiration date YYYY-MM
  ///
  /// * [String] ccv:
  ///   The 3 digit confirmation code
  ///
  /// * [String] accountNumber:
  ///   The bank account number
  ///
  /// * [String] bankName:
  ///   The bank name
  ///
  /// * [String] routingNumber:
  ///   The bank routing number
  ///
  /// * [String] paymentMethodNickname:
  ///   The nickname to give the payment method
  ///
  /// * [String] taxId:
  ///   Tax Id
  ///
  /// * [bool] defaultPaymentMethod:
  ///   Whether this should be the default payment method
  ///
  /// * [String] authToken:
  ///   An authorization token for providers that provide this (like Amazon Payments)
  ///
  /// * [String] provider:
  ///   The payment provider (see PaymentMethodProvider)
  ///
  /// * [String] providerCustomerProfileId:
  ///   Provider customer profile Id
  ///
  /// * [String] providerPaymentProfileId:
  ///   Provider customer payment profile Id
  ///
  /// * [String] metaData:
  ///   Meta Data
  ///
  /// * [String] appKey:
  ///   Application Key
  Future<PaymentTypesResponse?> createPaymentMethod(num version, int accountId, { String? accountName, String? firstName, String? lastName, String? address, String? city, String? state, String? postalCode, String? country, String? phone, String? creditCardNumber, String? expirationDate, String? ccv, String? accountNumber, String? bankName, String? routingNumber, String? paymentMethodNickname, String? taxId, bool? defaultPaymentMethod, String? authToken, String? provider, String? providerCustomerProfileId, String? providerPaymentProfileId, String? metaData, String? appKey, }) async {
    final response = await createPaymentMethodWithHttpInfo(version, accountId,  accountName: accountName, firstName: firstName, lastName: lastName, address: address, city: city, state: state, postalCode: postalCode, country: country, phone: phone, creditCardNumber: creditCardNumber, expirationDate: expirationDate, ccv: ccv, accountNumber: accountNumber, bankName: bankName, routingNumber: routingNumber, paymentMethodNickname: paymentMethodNickname, taxId: taxId, defaultPaymentMethod: defaultPaymentMethod, authToken: authToken, provider: provider, providerCustomerProfileId: providerCustomerProfileId, providerPaymentProfileId: providerPaymentProfileId, metaData: metaData, appKey: appKey, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PaymentTypesResponse',) as PaymentTypesResponse;
    
    }
    return null;
  }

  /// Create Smart Contract
  ///
  /// Adds a smart contract.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] accountId (required):
  ///   The account used to perform the the request
  ///
  /// * [String] tokenName (required):
  ///   The token name
  ///
  /// * [String] tokenSymbol (required):
  ///   The token symbol
  ///
  /// * [int] paymentMethodId:
  ///   The payment method to return details on. If this is not set, then the user's default payment method will be returned.
  Future<Response> createSmartContractWithHttpInfo(num version, int accountId, String tokenName, String tokenSymbol, { int? paymentMethodId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/billing/crypto/transfer'
      .replaceAll('{version}', version.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'accountId', accountId));
    if (paymentMethodId != null) {
      queryParams.addAll(_queryParams('', 'paymentMethodId', paymentMethodId));
    }
      queryParams.addAll(_queryParams('', 'tokenName', tokenName));
      queryParams.addAll(_queryParams('', 'tokenSymbol', tokenSymbol));

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

  /// Create Smart Contract
  ///
  /// Adds a smart contract.
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] accountId (required):
  ///   The account used to perform the the request
  ///
  /// * [String] tokenName (required):
  ///   The token name
  ///
  /// * [String] tokenSymbol (required):
  ///   The token symbol
  ///
  /// * [int] paymentMethodId:
  ///   The payment method to return details on. If this is not set, then the user's default payment method will be returned.
  Future<PaymentTypesResponse?> createSmartContract(num version, int accountId, String tokenName, String tokenSymbol, { int? paymentMethodId, }) async {
    final response = await createSmartContractWithHttpInfo(version, accountId, tokenName, tokenSymbol,  paymentMethodId: paymentMethodId, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PaymentTypesResponse',) as PaymentTypesResponse;
    
    }
    return null;
  }

  /// Get Crypto Balances
  ///
  /// Get the cypto balance details for a user
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] accountId (required):
  ///   The account used to perform the the request
  ///
  /// * [int] ownerAccountId:
  ///   The account to retreive balances for
  ///
  /// * [int] paymentMethodId:
  ///   The payment method to return details on. If this is not set, then the user's default payment method will be returned.
  Future<Response> getCryptoBalanceWithHttpInfo(num version, int accountId, { int? ownerAccountId, int? paymentMethodId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/billing/crypto/get'
      .replaceAll('{version}', version.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'accountId', accountId));
    if (ownerAccountId != null) {
      queryParams.addAll(_queryParams('', 'ownerAccountId', ownerAccountId));
    }
    if (paymentMethodId != null) {
      queryParams.addAll(_queryParams('', 'paymentMethodId', paymentMethodId));
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

  /// Get Crypto Balances
  ///
  /// Get the cypto balance details for a user
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] accountId (required):
  ///   The account used to perform the the request
  ///
  /// * [int] ownerAccountId:
  ///   The account to retreive balances for
  ///
  /// * [int] paymentMethodId:
  ///   The payment method to return details on. If this is not set, then the user's default payment method will be returned.
  Future<PaymentTypesResponse?> getCryptoBalance(num version, int accountId, { int? ownerAccountId, int? paymentMethodId, }) async {
    final response = await getCryptoBalanceWithHttpInfo(version, accountId,  ownerAccountId: ownerAccountId, paymentMethodId: paymentMethodId, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PaymentTypesResponse',) as PaymentTypesResponse;
    
    }
    return null;
  }

  /// Get Payment Method
  ///
  /// Get the details of the user's payment method or their current default method of payment
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] accountId (required):
  ///   The account used to perform the the request
  ///
  /// * [int] paymentMethodId:
  ///   The payment method to return details on. If this is not set, then the user's default payment method will be returned.
  ///
  /// * [bool] getCurrentBalance:
  ///   Determines whether to get the user's current balance for the requested payment method option (not all payment method options support this)
  Future<Response> getPaymentMethodWithHttpInfo(num version, int accountId, { int? paymentMethodId, bool? getCurrentBalance, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/billing/get'
      .replaceAll('{version}', version.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'accountId', accountId));
    if (paymentMethodId != null) {
      queryParams.addAll(_queryParams('', 'paymentMethodId', paymentMethodId));
    }
    if (getCurrentBalance != null) {
      queryParams.addAll(_queryParams('', 'getCurrentBalance', getCurrentBalance));
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

  /// Get Payment Method
  ///
  /// Get the details of the user's payment method or their current default method of payment
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] accountId (required):
  ///   The account used to perform the the request
  ///
  /// * [int] paymentMethodId:
  ///   The payment method to return details on. If this is not set, then the user's default payment method will be returned.
  ///
  /// * [bool] getCurrentBalance:
  ///   Determines whether to get the user's current balance for the requested payment method option (not all payment method options support this)
  Future<PaymentTypesResponse?> getPaymentMethod(num version, int accountId, { int? paymentMethodId, bool? getCurrentBalance, }) async {
    final response = await getPaymentMethodWithHttpInfo(version, accountId,  paymentMethodId: paymentMethodId, getCurrentBalance: getCurrentBalance, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PaymentTypesResponse',) as PaymentTypesResponse;
    
    }
    return null;
  }

  /// Search Payment Methods
  ///
  /// Search the payment methods of an account
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] accountId (required):
  ///   Account Id to search on
  ///
  /// * [String] provider:
  ///   Provider to search on
  ///
  /// * [String] type:
  ///   the type to search on
  ///
  /// * [String] keyword:
  ///   the keyword to search on
  ///
  /// * [String] sortField:
  ///   the sort field to use for the search
  ///
  /// * [bool] descending:
  ///   if the results should be in descending order
  ///
  /// * [int] start:
  ///   the start of the search
  ///
  /// * [int] limit:
  ///   the limit of the search
  Future<Response> searchPaymentMethodWithHttpInfo(num version, int accountId, { String? provider, String? type, String? keyword, String? sortField, bool? descending, int? start, int? limit, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/billing/search'
      .replaceAll('{version}', version.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'accountId', accountId));
    if (provider != null) {
      queryParams.addAll(_queryParams('', 'provider', provider));
    }
    if (type != null) {
      queryParams.addAll(_queryParams('', 'type', type));
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

  /// Search Payment Methods
  ///
  /// Search the payment methods of an account
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] accountId (required):
  ///   Account Id to search on
  ///
  /// * [String] provider:
  ///   Provider to search on
  ///
  /// * [String] type:
  ///   the type to search on
  ///
  /// * [String] keyword:
  ///   the keyword to search on
  ///
  /// * [String] sortField:
  ///   the sort field to use for the search
  ///
  /// * [bool] descending:
  ///   if the results should be in descending order
  ///
  /// * [int] start:
  ///   the start of the search
  ///
  /// * [int] limit:
  ///   the limit of the search
  Future<PaymentTypesResponse?> searchPaymentMethod(num version, int accountId, { String? provider, String? type, String? keyword, String? sortField, bool? descending, int? start, int? limit, }) async {
    final response = await searchPaymentMethodWithHttpInfo(version, accountId,  provider: provider, type: type, keyword: keyword, sortField: sortField, descending: descending, start: start, limit: limit, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PaymentTypesResponse',) as PaymentTypesResponse;
    
    }
    return null;
  }
}
