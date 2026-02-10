//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class SecureAppApi {
  SecureAppApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Create Secure Application
  ///
  /// Create a secure application record.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] accountId (required):
  ///   The unique id of the user making the request
  ///
  /// * [String] appKey (required):
  ///   The application to secure
  ///
  /// * [MultipartFile] keyCert (required):
  ///   
  ///
  /// * [MultipartFile] trustStore (required):
  ///   
  ///
  /// * [String] username (required):
  ///   
  ///
  /// * [String] password (required):
  ///   
  ///
  /// * [bool] active:
  ///   
  ///
  /// * [String] biometricType:
  ///   The type of biometric, options are: - FINGERPRINT - IRIS - FACIAL
  ///
  /// * [String] biometricPosition:
  ///   The position for the biometric file uploaded
  ///
  /// * [String] biometricPosition2:
  ///   The position for each the biometric2 file uploaded
  Future<Response> createSecureApplicationWithHttpInfo(num version, int accountId, String appKey, MultipartFile keyCert, MultipartFile trustStore, String username, String password, { bool? active, String? biometricType, String? biometricPosition, String? biometricPosition2, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/secure/application/create'
      .replaceAll('{version}', version.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'accountId', accountId));
      queryParams.addAll(_queryParams('', 'appKey', appKey));
    if (active != null) {
      queryParams.addAll(_queryParams('', 'active', active));
    }
      queryParams.addAll(_queryParams('', 'keyCert', keyCert));
      queryParams.addAll(_queryParams('', 'trustStore', trustStore));
      queryParams.addAll(_queryParams('', 'username', username));
      queryParams.addAll(_queryParams('', 'password', password));
    if (biometricType != null) {
      queryParams.addAll(_queryParams('', 'biometricType', biometricType));
    }
    if (biometricPosition != null) {
      queryParams.addAll(_queryParams('', 'biometricPosition', biometricPosition));
    }
    if (biometricPosition2 != null) {
      queryParams.addAll(_queryParams('', 'biometricPosition2', biometricPosition2));
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

  /// Create Secure Application
  ///
  /// Create a secure application record.
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] accountId (required):
  ///   The unique id of the user making the request
  ///
  /// * [String] appKey (required):
  ///   The application to secure
  ///
  /// * [MultipartFile] keyCert (required):
  ///   
  ///
  /// * [MultipartFile] trustStore (required):
  ///   
  ///
  /// * [String] username (required):
  ///   
  ///
  /// * [String] password (required):
  ///   
  ///
  /// * [bool] active:
  ///   
  ///
  /// * [String] biometricType:
  ///   The type of biometric, options are: - FINGERPRINT - IRIS - FACIAL
  ///
  /// * [String] biometricPosition:
  ///   The position for the biometric file uploaded
  ///
  /// * [String] biometricPosition2:
  ///   The position for each the biometric2 file uploaded
  Future<SirqulResponse?> createSecureApplication(num version, int accountId, String appKey, MultipartFile keyCert, MultipartFile trustStore, String username, String password, { bool? active, String? biometricType, String? biometricPosition, String? biometricPosition2, }) async {
    final response = await createSecureApplicationWithHttpInfo(version, accountId, appKey, keyCert, trustStore, username, password,  active: active, biometricType: biometricType, biometricPosition: biometricPosition, biometricPosition2: biometricPosition2, );
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

  /// Delete Secure Application
  ///
  /// Delete a secure application record.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] accountId (required):
  ///   The unique id of the user making the request
  ///
  /// * [String] appKey (required):
  ///   The application to secure
  Future<Response> deleteSecureApplicationWithHttpInfo(num version, int accountId, String appKey,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/secure/application/delete'
      .replaceAll('{version}', version.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'accountId', accountId));
      queryParams.addAll(_queryParams('', 'appKey', appKey));

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

  /// Delete Secure Application
  ///
  /// Delete a secure application record.
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] accountId (required):
  ///   The unique id of the user making the request
  ///
  /// * [String] appKey (required):
  ///   The application to secure
  Future<SirqulResponse?> deleteSecureApplication(num version, int accountId, String appKey,) async {
    final response = await deleteSecureApplicationWithHttpInfo(version, accountId, appKey,);
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

  /// Login Clear
  ///
  /// Login via Clear.me. Creates a new account if logging in for the first time.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [String] appKey (required):
  ///   The application making the request, defines what type and position is required to make a secure login the request.
  ///
  /// * [MultipartFile] biometricFile (required):
  ///   The data file used to perform authentication
  ///
  /// * [String] deviceId:
  ///   The unique id of the device making the request
  ///
  /// * [MultipartFile] biometricFile2:
  ///   The data file used to perform authentication
  ///
  /// * [int] ageRestriction:
  ///   Checks user's birthday to see if they meet an age requirement. If the user is under age, an error message is returned.
  ///
  /// * [bool] returnProfile:
  ///   Determines whether to return a ProfileResponse on success, or a PaymentTypesResponse
  ///
  /// * [String] responseFilters:
  ///   If returnProfile is set to true, this determines how much of the profile should be returned, see ProfileFilters
  ///
  /// * [double] latitude:
  ///   Used to update the user's current location
  ///
  /// * [double] longitude:
  ///   Used to update the user's current location
  Future<Response> loginSecureWithHttpInfo(num version, String appKey, MultipartFile biometricFile, { String? deviceId, MultipartFile? biometricFile2, int? ageRestriction, bool? returnProfile, String? responseFilters, double? latitude, double? longitude, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/secure/login'
      .replaceAll('{version}', version.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (deviceId != null) {
      queryParams.addAll(_queryParams('', 'deviceId', deviceId));
    }
      queryParams.addAll(_queryParams('', 'appKey', appKey));
      queryParams.addAll(_queryParams('', 'biometricFile', biometricFile));
    if (biometricFile2 != null) {
      queryParams.addAll(_queryParams('', 'biometricFile2', biometricFile2));
    }
    if (ageRestriction != null) {
      queryParams.addAll(_queryParams('', 'ageRestriction', ageRestriction));
    }
    if (returnProfile != null) {
      queryParams.addAll(_queryParams('', 'returnProfile', returnProfile));
    }
    if (responseFilters != null) {
      queryParams.addAll(_queryParams('', 'responseFilters', responseFilters));
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

  /// Login Clear
  ///
  /// Login via Clear.me. Creates a new account if logging in for the first time.
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [String] appKey (required):
  ///   The application making the request, defines what type and position is required to make a secure login the request.
  ///
  /// * [MultipartFile] biometricFile (required):
  ///   The data file used to perform authentication
  ///
  /// * [String] deviceId:
  ///   The unique id of the device making the request
  ///
  /// * [MultipartFile] biometricFile2:
  ///   The data file used to perform authentication
  ///
  /// * [int] ageRestriction:
  ///   Checks user's birthday to see if they meet an age requirement. If the user is under age, an error message is returned.
  ///
  /// * [bool] returnProfile:
  ///   Determines whether to return a ProfileResponse on success, or a PaymentTypesResponse
  ///
  /// * [String] responseFilters:
  ///   If returnProfile is set to true, this determines how much of the profile should be returned, see ProfileFilters
  ///
  /// * [double] latitude:
  ///   Used to update the user's current location
  ///
  /// * [double] longitude:
  ///   Used to update the user's current location
  Future<ProfileResponse?> loginSecure(num version, String appKey, MultipartFile biometricFile, { String? deviceId, MultipartFile? biometricFile2, int? ageRestriction, bool? returnProfile, String? responseFilters, double? latitude, double? longitude, }) async {
    final response = await loginSecureWithHttpInfo(version, appKey, biometricFile,  deviceId: deviceId, biometricFile2: biometricFile2, ageRestriction: ageRestriction, returnProfile: returnProfile, responseFilters: responseFilters, latitude: latitude, longitude: longitude, );
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

  /// Purchase Clear
  ///
  /// Purchase via Clear.me. Creates a new account if purchasing for the first time.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [PaymentRequest] body (required):
  ///   The payment request object
  Future<Response> purchaseSecureWithHttpInfo(num version, PaymentRequest body,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/secure/purchase'
      .replaceAll('{version}', version.toString());

    // ignore: prefer_final_locals
    Object? postBody = body;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


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

  /// Purchase Clear
  ///
  /// Purchase via Clear.me. Creates a new account if purchasing for the first time.
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [PaymentRequest] body (required):
  ///   The payment request object
  Future<ProfileResponse?> purchaseSecure(num version, PaymentRequest body,) async {
    final response = await purchaseSecureWithHttpInfo(version, body,);
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

  /// Rest Secure Application
  ///
  /// Reset a secure application client.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] accountId (required):
  ///   The unique id of the user making the request
  ///
  /// * [String] appKey (required):
  ///   The application to secure
  Future<Response> resetSecureWithHttpInfo(num version, int accountId, String appKey,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/secure/application/reset'
      .replaceAll('{version}', version.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'accountId', accountId));
      queryParams.addAll(_queryParams('', 'appKey', appKey));

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

  /// Rest Secure Application
  ///
  /// Reset a secure application client.
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] accountId (required):
  ///   The unique id of the user making the request
  ///
  /// * [String] appKey (required):
  ///   The application to secure
  Future<SirqulResponse?> resetSecure(num version, int accountId, String appKey,) async {
    final response = await resetSecureWithHttpInfo(version, accountId, appKey,);
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

  /// Update Secure Application
  ///
  /// Update a secure application record.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] accountId (required):
  ///   The unique id of the user making the request
  ///
  /// * [String] appKey (required):
  ///   The application to secure
  ///
  /// * [bool] active:
  ///   
  ///
  /// * [MultipartFile] keyCert:
  ///   
  ///
  /// * [MultipartFile] trustStore:
  ///   
  ///
  /// * [String] username:
  ///   
  ///
  /// * [String] password:
  ///   
  ///
  /// * [String] biometricType:
  ///   The type of biometric, options are: - FINGERPRINT - IRIS - FACIAL
  ///
  /// * [String] biometricPosition:
  ///   The position for the biometric file uploaded
  ///
  /// * [String] biometricPosition2:
  ///   The position for each the biometric2 file uploaded
  Future<Response> updateSecureApplicationWithHttpInfo(num version, int accountId, String appKey, { bool? active, MultipartFile? keyCert, MultipartFile? trustStore, String? username, String? password, String? biometricType, String? biometricPosition, String? biometricPosition2, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/secure/application/update'
      .replaceAll('{version}', version.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'accountId', accountId));
      queryParams.addAll(_queryParams('', 'appKey', appKey));
    if (active != null) {
      queryParams.addAll(_queryParams('', 'active', active));
    }
    if (keyCert != null) {
      queryParams.addAll(_queryParams('', 'keyCert', keyCert));
    }
    if (trustStore != null) {
      queryParams.addAll(_queryParams('', 'trustStore', trustStore));
    }
    if (username != null) {
      queryParams.addAll(_queryParams('', 'username', username));
    }
    if (password != null) {
      queryParams.addAll(_queryParams('', 'password', password));
    }
    if (biometricType != null) {
      queryParams.addAll(_queryParams('', 'biometricType', biometricType));
    }
    if (biometricPosition != null) {
      queryParams.addAll(_queryParams('', 'biometricPosition', biometricPosition));
    }
    if (biometricPosition2 != null) {
      queryParams.addAll(_queryParams('', 'biometricPosition2', biometricPosition2));
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

  /// Update Secure Application
  ///
  /// Update a secure application record.
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] accountId (required):
  ///   The unique id of the user making the request
  ///
  /// * [String] appKey (required):
  ///   The application to secure
  ///
  /// * [bool] active:
  ///   
  ///
  /// * [MultipartFile] keyCert:
  ///   
  ///
  /// * [MultipartFile] trustStore:
  ///   
  ///
  /// * [String] username:
  ///   
  ///
  /// * [String] password:
  ///   
  ///
  /// * [String] biometricType:
  ///   The type of biometric, options are: - FINGERPRINT - IRIS - FACIAL
  ///
  /// * [String] biometricPosition:
  ///   The position for the biometric file uploaded
  ///
  /// * [String] biometricPosition2:
  ///   The position for each the biometric2 file uploaded
  Future<SirqulResponse?> updateSecureApplication(num version, int accountId, String appKey, { bool? active, MultipartFile? keyCert, MultipartFile? trustStore, String? username, String? password, String? biometricType, String? biometricPosition, String? biometricPosition2, }) async {
    final response = await updateSecureApplicationWithHttpInfo(version, accountId, appKey,  active: active, keyCert: keyCert, trustStore: trustStore, username: username, password: password, biometricType: biometricType, biometricPosition: biometricPosition, biometricPosition2: biometricPosition2, );
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
