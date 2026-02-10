//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class ThirdPartyCredentialsApi {
  ThirdPartyCredentialsApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Create Credential
  ///
  /// This endpoint creates a third-party login for a Sirqul account. A third party login is a way for external systems (Third Party Networks) to link their own user accounts with a Sirqul account.   The thirdPartyId parameter is used to determine if the user already exists in Sirqul or not. This parameter needs to be unique for each user in the Third Party Network (identified by the networkUID parameter). Note that subsequent calls will update the user's third-party login credentials for the user with the same thirdPartyId and networkUID combination.    The thirdPartyToken parameter acts as a shared secret and used by client applications to log users into Sirqul without providing a Sirqul username and password. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [String] thirdPartyId (required):
  ///   the third party user account id
  ///
  /// * [String] thirdPartyToken (required):
  ///   the access token to authenticate with (ex: username or fb token or phone number)
  ///
  /// * [String] networkUID (required):
  ///   the access provider to authenticate against
  ///
  /// * [String] appKey (required):
  ///   the application key
  ///
  /// * [int] accountId:
  ///   the unique id of the account that needs authenticating (optional for PHONE_V2)
  ///
  /// * [String] deviceId:
  ///   the unique id of the device making the request
  ///
  /// * [String] sessionId:
  ///   the session id for the request
  ///
  /// * [String] thirdPartyName:
  ///   the third party user's display name
  ///
  /// * [String] emailAddress:
  ///   optional email address associated with the third party account
  ///
  /// * [bool] signinOnlyMode:
  ///   when true will error out if can't find any accounts matching (signin only)
  ///
  /// * [String] responseFilters:
  ///   this determines how much of the profile should be returned, see ProfileFilters
  ///
  /// * [double] latitude:
  ///   the latitude of the user
  ///
  /// * [double] longitude:
  ///   the longitude of the user
  ///
  /// * [String] metaData:
  ///   External custom client defined data
  ///
  /// * [String] thirdPartyRefreshToken:
  ///   optional refresh token for the third party
  ///
  /// * [String] audienceIdsToAdd:
  ///   audience ids to add to the account
  ///
  /// * [String] audienceIdsToRemove:
  ///   audience ids to remove from the account
  Future<Response> createCredentialWithHttpInfo(num version, String thirdPartyId, String thirdPartyToken, String networkUID, String appKey, { int? accountId, String? deviceId, String? sessionId, String? thirdPartyName, String? emailAddress, bool? signinOnlyMode, String? responseFilters, double? latitude, double? longitude, String? metaData, String? thirdPartyRefreshToken, String? audienceIdsToAdd, String? audienceIdsToRemove, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/thirdparty/credential/create'
      .replaceAll('{version}', version.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (accountId != null) {
      queryParams.addAll(_queryParams('', 'accountId', accountId));
    }
    if (deviceId != null) {
      queryParams.addAll(_queryParams('', 'deviceId', deviceId));
    }
    if (sessionId != null) {
      queryParams.addAll(_queryParams('', 'sessionId', sessionId));
    }
      queryParams.addAll(_queryParams('', 'thirdPartyId', thirdPartyId));
    if (thirdPartyName != null) {
      queryParams.addAll(_queryParams('', 'thirdPartyName', thirdPartyName));
    }
      queryParams.addAll(_queryParams('', 'thirdPartyToken', thirdPartyToken));
      queryParams.addAll(_queryParams('', 'networkUID', networkUID));
      queryParams.addAll(_queryParams('', 'appKey', appKey));
    if (emailAddress != null) {
      queryParams.addAll(_queryParams('', 'emailAddress', emailAddress));
    }
    if (signinOnlyMode != null) {
      queryParams.addAll(_queryParams('', 'signinOnlyMode', signinOnlyMode));
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
    if (metaData != null) {
      queryParams.addAll(_queryParams('', 'metaData', metaData));
    }
    if (thirdPartyRefreshToken != null) {
      queryParams.addAll(_queryParams('', 'thirdPartyRefreshToken', thirdPartyRefreshToken));
    }
    if (audienceIdsToAdd != null) {
      queryParams.addAll(_queryParams('', 'audienceIdsToAdd', audienceIdsToAdd));
    }
    if (audienceIdsToRemove != null) {
      queryParams.addAll(_queryParams('', 'audienceIdsToRemove', audienceIdsToRemove));
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

  /// Create Credential
  ///
  /// This endpoint creates a third-party login for a Sirqul account. A third party login is a way for external systems (Third Party Networks) to link their own user accounts with a Sirqul account.   The thirdPartyId parameter is used to determine if the user already exists in Sirqul or not. This parameter needs to be unique for each user in the Third Party Network (identified by the networkUID parameter). Note that subsequent calls will update the user's third-party login credentials for the user with the same thirdPartyId and networkUID combination.    The thirdPartyToken parameter acts as a shared secret and used by client applications to log users into Sirqul without providing a Sirqul username and password. 
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [String] thirdPartyId (required):
  ///   the third party user account id
  ///
  /// * [String] thirdPartyToken (required):
  ///   the access token to authenticate with (ex: username or fb token or phone number)
  ///
  /// * [String] networkUID (required):
  ///   the access provider to authenticate against
  ///
  /// * [String] appKey (required):
  ///   the application key
  ///
  /// * [int] accountId:
  ///   the unique id of the account that needs authenticating (optional for PHONE_V2)
  ///
  /// * [String] deviceId:
  ///   the unique id of the device making the request
  ///
  /// * [String] sessionId:
  ///   the session id for the request
  ///
  /// * [String] thirdPartyName:
  ///   the third party user's display name
  ///
  /// * [String] emailAddress:
  ///   optional email address associated with the third party account
  ///
  /// * [bool] signinOnlyMode:
  ///   when true will error out if can't find any accounts matching (signin only)
  ///
  /// * [String] responseFilters:
  ///   this determines how much of the profile should be returned, see ProfileFilters
  ///
  /// * [double] latitude:
  ///   the latitude of the user
  ///
  /// * [double] longitude:
  ///   the longitude of the user
  ///
  /// * [String] metaData:
  ///   External custom client defined data
  ///
  /// * [String] thirdPartyRefreshToken:
  ///   optional refresh token for the third party
  ///
  /// * [String] audienceIdsToAdd:
  ///   audience ids to add to the account
  ///
  /// * [String] audienceIdsToRemove:
  ///   audience ids to remove from the account
  Future<ProfileResponse?> createCredential(num version, String thirdPartyId, String thirdPartyToken, String networkUID, String appKey, { int? accountId, String? deviceId, String? sessionId, String? thirdPartyName, String? emailAddress, bool? signinOnlyMode, String? responseFilters, double? latitude, double? longitude, String? metaData, String? thirdPartyRefreshToken, String? audienceIdsToAdd, String? audienceIdsToRemove, }) async {
    final response = await createCredentialWithHttpInfo(version, thirdPartyId, thirdPartyToken, networkUID, appKey,  accountId: accountId, deviceId: deviceId, sessionId: sessionId, thirdPartyName: thirdPartyName, emailAddress: emailAddress, signinOnlyMode: signinOnlyMode, responseFilters: responseFilters, latitude: latitude, longitude: longitude, metaData: metaData, thirdPartyRefreshToken: thirdPartyRefreshToken, audienceIdsToAdd: audienceIdsToAdd, audienceIdsToRemove: audienceIdsToRemove, );
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

  /// Create Network
  ///
  /// Creates a custom third party network.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] accountId (required):
  ///   The account id making the request
  ///
  /// * [String] name (required):
  ///   The name of the network
  ///
  /// * [bool] enableIntrospection (required):
  ///   Whether the network uses introspection calls
  ///
  /// * [String] description:
  ///   The description of the network
  ///
  /// * [String] introspectionMethod:
  ///   HTTP method to use for introspection calls (e.g., GET, POST)
  ///
  /// * [String] introspectionURL:
  ///   The HTTP URL of the introspection call
  ///
  /// * [String] introspectionParams:
  ///   The parameters of the introspection call
  ///
  /// * [String] requiredRootField:
  ///   Required response params
  ///
  /// * [bool] enableMFA:
  ///   Whether this network uses MFA
  ///
  /// * [int] sizeMFA:
  ///   Size of the MFA token
  ///
  /// * [int] shelfLifeMFA:
  ///   Shelf life (seconds) of the MFA token
  ///
  /// * [String] oauthTokenURL:
  ///   OAuth token endpoint URL
  ///
  /// * [MultipartFile] oauthPrivateKey:
  ///   OAuth private key file (multipart)
  ///
  /// * [MultipartFile] oauthPublicKey:
  ///   OAuth public key file (multipart)
  ///
  /// * [String] oauthClientId:
  ///   OAuth client id
  ///
  /// * [String] oauthSecretKey:
  ///   OAuth secret key
  ///
  /// * [String] body:
  Future<Response> createNetworkWithHttpInfo(num version, int accountId, String name, bool enableIntrospection, { String? description, String? introspectionMethod, String? introspectionURL, String? introspectionParams, String? requiredRootField, bool? enableMFA, int? sizeMFA, int? shelfLifeMFA, String? oauthTokenURL, MultipartFile? oauthPrivateKey, MultipartFile? oauthPublicKey, String? oauthClientId, String? oauthSecretKey, String? body, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/thirdparty/network/create'
      .replaceAll('{version}', version.toString());

    // ignore: prefer_final_locals
    Object? postBody = body;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'accountId', accountId));
      queryParams.addAll(_queryParams('', 'name', name));
    if (description != null) {
      queryParams.addAll(_queryParams('', 'description', description));
    }
      queryParams.addAll(_queryParams('', 'enableIntrospection', enableIntrospection));
    if (introspectionMethod != null) {
      queryParams.addAll(_queryParams('', 'introspectionMethod', introspectionMethod));
    }
    if (introspectionURL != null) {
      queryParams.addAll(_queryParams('', 'introspectionURL', introspectionURL));
    }
    if (introspectionParams != null) {
      queryParams.addAll(_queryParams('', 'introspectionParams', introspectionParams));
    }
    if (requiredRootField != null) {
      queryParams.addAll(_queryParams('', 'requiredRootField', requiredRootField));
    }
    if (enableMFA != null) {
      queryParams.addAll(_queryParams('', 'enableMFA', enableMFA));
    }
    if (sizeMFA != null) {
      queryParams.addAll(_queryParams('', 'sizeMFA', sizeMFA));
    }
    if (shelfLifeMFA != null) {
      queryParams.addAll(_queryParams('', 'shelfLifeMFA', shelfLifeMFA));
    }
    if (oauthTokenURL != null) {
      queryParams.addAll(_queryParams('', 'oauthTokenURL', oauthTokenURL));
    }
    if (oauthPrivateKey != null) {
      queryParams.addAll(_queryParams('', 'oauthPrivateKey', oauthPrivateKey));
    }
    if (oauthPublicKey != null) {
      queryParams.addAll(_queryParams('', 'oauthPublicKey', oauthPublicKey));
    }
    if (oauthClientId != null) {
      queryParams.addAll(_queryParams('', 'oauthClientId', oauthClientId));
    }
    if (oauthSecretKey != null) {
      queryParams.addAll(_queryParams('', 'oauthSecretKey', oauthSecretKey));
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

  /// Create Network
  ///
  /// Creates a custom third party network.
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] accountId (required):
  ///   The account id making the request
  ///
  /// * [String] name (required):
  ///   The name of the network
  ///
  /// * [bool] enableIntrospection (required):
  ///   Whether the network uses introspection calls
  ///
  /// * [String] description:
  ///   The description of the network
  ///
  /// * [String] introspectionMethod:
  ///   HTTP method to use for introspection calls (e.g., GET, POST)
  ///
  /// * [String] introspectionURL:
  ///   The HTTP URL of the introspection call
  ///
  /// * [String] introspectionParams:
  ///   The parameters of the introspection call
  ///
  /// * [String] requiredRootField:
  ///   Required response params
  ///
  /// * [bool] enableMFA:
  ///   Whether this network uses MFA
  ///
  /// * [int] sizeMFA:
  ///   Size of the MFA token
  ///
  /// * [int] shelfLifeMFA:
  ///   Shelf life (seconds) of the MFA token
  ///
  /// * [String] oauthTokenURL:
  ///   OAuth token endpoint URL
  ///
  /// * [MultipartFile] oauthPrivateKey:
  ///   OAuth private key file (multipart)
  ///
  /// * [MultipartFile] oauthPublicKey:
  ///   OAuth public key file (multipart)
  ///
  /// * [String] oauthClientId:
  ///   OAuth client id
  ///
  /// * [String] oauthSecretKey:
  ///   OAuth secret key
  ///
  /// * [String] body:
  Future<ThirdPartyNetworkResponse?> createNetwork(num version, int accountId, String name, bool enableIntrospection, { String? description, String? introspectionMethod, String? introspectionURL, String? introspectionParams, String? requiredRootField, bool? enableMFA, int? sizeMFA, int? shelfLifeMFA, String? oauthTokenURL, MultipartFile? oauthPrivateKey, MultipartFile? oauthPublicKey, String? oauthClientId, String? oauthSecretKey, String? body, }) async {
    final response = await createNetworkWithHttpInfo(version, accountId, name, enableIntrospection,  description: description, introspectionMethod: introspectionMethod, introspectionURL: introspectionURL, introspectionParams: introspectionParams, requiredRootField: requiredRootField, enableMFA: enableMFA, sizeMFA: sizeMFA, shelfLifeMFA: shelfLifeMFA, oauthTokenURL: oauthTokenURL, oauthPrivateKey: oauthPrivateKey, oauthPublicKey: oauthPublicKey, oauthClientId: oauthClientId, oauthSecretKey: oauthSecretKey, body: body, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ThirdPartyNetworkResponse',) as ThirdPartyNetworkResponse;
    
    }
    return null;
  }

  /// Delete Credential
  ///
  /// Delete a third party network on a Sirqul account.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] accountId (required):
  ///   The account id of the user
  ///
  /// * [String] networkUID (required):
  ///   The third party network identifier
  ///
  /// * [String] thirdPartyId (required):
  ///   The third party user id
  ///
  /// * [String] appKey (required):
  ///   the application key
  Future<Response> deleteCredentialWithHttpInfo(num version, int accountId, String networkUID, String thirdPartyId, String appKey,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/thirdparty/credential/delete'
      .replaceAll('{version}', version.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'accountId', accountId));
      queryParams.addAll(_queryParams('', 'networkUID', networkUID));
      queryParams.addAll(_queryParams('', 'thirdPartyId', thirdPartyId));
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

  /// Delete Credential
  ///
  /// Delete a third party network on a Sirqul account.
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] accountId (required):
  ///   The account id of the user
  ///
  /// * [String] networkUID (required):
  ///   The third party network identifier
  ///
  /// * [String] thirdPartyId (required):
  ///   The third party user id
  ///
  /// * [String] appKey (required):
  ///   the application key
  Future<SirqulResponse?> deleteCredential(num version, int accountId, String networkUID, String thirdPartyId, String appKey,) async {
    final response = await deleteCredentialWithHttpInfo(version, accountId, networkUID, thirdPartyId, appKey,);
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

  /// Delete Network
  ///
  /// Marks a custom third party network as deleted. Only the network owners and managers have access to this.
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
  /// * [String] networkUID (required):
  ///   The unique identifier for the third party network defined by Sirqul
  Future<Response> deleteNetworkWithHttpInfo(num version, int accountId, String networkUID,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/thirdparty/network/delete'
      .replaceAll('{version}', version.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'accountId', accountId));
      queryParams.addAll(_queryParams('', 'networkUID', networkUID));

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

  /// Delete Network
  ///
  /// Marks a custom third party network as deleted. Only the network owners and managers have access to this.
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] accountId (required):
  ///   the id of the logged in user
  ///
  /// * [String] networkUID (required):
  ///   The unique identifier for the third party network defined by Sirqul
  Future<SirqulResponse?> deleteNetwork(num version, int accountId, String networkUID,) async {
    final response = await deleteNetworkWithHttpInfo(version, accountId, networkUID,);
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

  /// Get Credential
  ///
  /// Gets the account information given a third party token.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [String] networkUID (required):
  ///   the access provider to authenticate against
  ///
  /// * [String] appKey (required):
  ///   the application key
  ///
  /// * [int] accountId:
  ///   the unique account id of a specific account that will be bound to the third-party credentials
  ///
  /// * [String] deviceId:
  ///   the unique id of the device making the request
  ///
  /// * [String] sessionId:
  ///   the session id for the request
  ///
  /// * [int] thirdPartyCredentialId:
  ///   the third-party credentials id from the response of the credential/create step
  ///
  /// * [String] thirdPartyToken:
  ///   the access token to authenticate with
  ///
  /// * [String] thirdPartySecret:
  ///   the secret code to authenticate with (used for MFA)
  ///
  /// * [bool] createNewAccount:
  ///   flag to force creation of a new account when no accountId is passed and user chooses not to use listed accounts
  ///
  /// * [String] responseFilters:
  ///   this determines how much of the profile should be returned, see ProfileFilters
  ///
  /// * [double] latitude:
  ///   the latitude of the user
  ///
  /// * [double] longitude:
  ///   the longitude of the user
  ///
  /// * [String] audienceIdsToAdd:
  ///   audience ids to add to the account
  ///
  /// * [String] audienceIdsToRemove:
  ///   audience ids to remove from the account
  ///
  /// * [int] referralAccountId:
  ///   account id of the referrer (inviter-invitee relationship)
  Future<Response> getCredentialWithHttpInfo(num version, String networkUID, String appKey, { int? accountId, String? deviceId, String? sessionId, int? thirdPartyCredentialId, String? thirdPartyToken, String? thirdPartySecret, bool? createNewAccount, String? responseFilters, double? latitude, double? longitude, String? audienceIdsToAdd, String? audienceIdsToRemove, int? referralAccountId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/thirdparty/credential/get'
      .replaceAll('{version}', version.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (accountId != null) {
      queryParams.addAll(_queryParams('', 'accountId', accountId));
    }
    if (deviceId != null) {
      queryParams.addAll(_queryParams('', 'deviceId', deviceId));
    }
    if (sessionId != null) {
      queryParams.addAll(_queryParams('', 'sessionId', sessionId));
    }
    if (thirdPartyCredentialId != null) {
      queryParams.addAll(_queryParams('', 'thirdPartyCredentialId', thirdPartyCredentialId));
    }
    if (thirdPartyToken != null) {
      queryParams.addAll(_queryParams('', 'thirdPartyToken', thirdPartyToken));
    }
    if (thirdPartySecret != null) {
      queryParams.addAll(_queryParams('', 'thirdPartySecret', thirdPartySecret));
    }
    if (createNewAccount != null) {
      queryParams.addAll(_queryParams('', 'createNewAccount', createNewAccount));
    }
      queryParams.addAll(_queryParams('', 'networkUID', networkUID));
      queryParams.addAll(_queryParams('', 'appKey', appKey));
    if (responseFilters != null) {
      queryParams.addAll(_queryParams('', 'responseFilters', responseFilters));
    }
    if (latitude != null) {
      queryParams.addAll(_queryParams('', 'latitude', latitude));
    }
    if (longitude != null) {
      queryParams.addAll(_queryParams('', 'longitude', longitude));
    }
    if (audienceIdsToAdd != null) {
      queryParams.addAll(_queryParams('', 'audienceIdsToAdd', audienceIdsToAdd));
    }
    if (audienceIdsToRemove != null) {
      queryParams.addAll(_queryParams('', 'audienceIdsToRemove', audienceIdsToRemove));
    }
    if (referralAccountId != null) {
      queryParams.addAll(_queryParams('', 'referralAccountId', referralAccountId));
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

  /// Get Credential
  ///
  /// Gets the account information given a third party token.
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [String] networkUID (required):
  ///   the access provider to authenticate against
  ///
  /// * [String] appKey (required):
  ///   the application key
  ///
  /// * [int] accountId:
  ///   the unique account id of a specific account that will be bound to the third-party credentials
  ///
  /// * [String] deviceId:
  ///   the unique id of the device making the request
  ///
  /// * [String] sessionId:
  ///   the session id for the request
  ///
  /// * [int] thirdPartyCredentialId:
  ///   the third-party credentials id from the response of the credential/create step
  ///
  /// * [String] thirdPartyToken:
  ///   the access token to authenticate with
  ///
  /// * [String] thirdPartySecret:
  ///   the secret code to authenticate with (used for MFA)
  ///
  /// * [bool] createNewAccount:
  ///   flag to force creation of a new account when no accountId is passed and user chooses not to use listed accounts
  ///
  /// * [String] responseFilters:
  ///   this determines how much of the profile should be returned, see ProfileFilters
  ///
  /// * [double] latitude:
  ///   the latitude of the user
  ///
  /// * [double] longitude:
  ///   the longitude of the user
  ///
  /// * [String] audienceIdsToAdd:
  ///   audience ids to add to the account
  ///
  /// * [String] audienceIdsToRemove:
  ///   audience ids to remove from the account
  ///
  /// * [int] referralAccountId:
  ///   account id of the referrer (inviter-invitee relationship)
  Future<ProfileResponse?> getCredential(num version, String networkUID, String appKey, { int? accountId, String? deviceId, String? sessionId, int? thirdPartyCredentialId, String? thirdPartyToken, String? thirdPartySecret, bool? createNewAccount, String? responseFilters, double? latitude, double? longitude, String? audienceIdsToAdd, String? audienceIdsToRemove, int? referralAccountId, }) async {
    final response = await getCredentialWithHttpInfo(version, networkUID, appKey,  accountId: accountId, deviceId: deviceId, sessionId: sessionId, thirdPartyCredentialId: thirdPartyCredentialId, thirdPartyToken: thirdPartyToken, thirdPartySecret: thirdPartySecret, createNewAccount: createNewAccount, responseFilters: responseFilters, latitude: latitude, longitude: longitude, audienceIdsToAdd: audienceIdsToAdd, audienceIdsToRemove: audienceIdsToRemove, referralAccountId: referralAccountId, );
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

  /// Get Network
  ///
  /// Get the details of a third party network. Only the network owners and managers have access to this.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] accountId (required):
  ///   The account id making the request
  ///
  /// * [String] networkUID (required):
  ///   The unique identifier for the third party network defined by Sirqul
  Future<Response> getNetworkWithHttpInfo(num version, int accountId, String networkUID,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/thirdparty/network/get'
      .replaceAll('{version}', version.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'accountId', accountId));
      queryParams.addAll(_queryParams('', 'networkUID', networkUID));

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

  /// Get Network
  ///
  /// Get the details of a third party network. Only the network owners and managers have access to this.
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] accountId (required):
  ///   The account id making the request
  ///
  /// * [String] networkUID (required):
  ///   The unique identifier for the third party network defined by Sirqul
  Future<ThirdPartyNetworkResponse?> getNetwork(num version, int accountId, String networkUID,) async {
    final response = await getNetworkWithHttpInfo(version, accountId, networkUID,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ThirdPartyNetworkResponse',) as ThirdPartyNetworkResponse;
    
    }
    return null;
  }

  /// Search Credentials
  ///
  /// Search on a user's linked third party networks.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] accountId (required):
  ///   The account id of the user
  ///
  /// * [String] keyword:
  ///   The keyword used to search on the third party name and network string
  ///
  /// * [String] networkUID:
  ///   The network UID to filter results with
  ///
  /// * [bool] descending:
  ///   The order to return the search results
  ///
  /// * [int] start:
  ///   The start of the pagination
  ///
  /// * [int] limit:
  ///   The limit of the pagination
  Future<Response> searchCredentialsWithHttpInfo(num version, int accountId, { String? keyword, String? networkUID, bool? descending, int? start, int? limit, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/thirdparty/credential/search'
      .replaceAll('{version}', version.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'accountId', accountId));
    if (keyword != null) {
      queryParams.addAll(_queryParams('', 'keyword', keyword));
    }
    if (networkUID != null) {
      queryParams.addAll(_queryParams('', 'networkUID', networkUID));
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

  /// Search Credentials
  ///
  /// Search on a user's linked third party networks.
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] accountId (required):
  ///   The account id of the user
  ///
  /// * [String] keyword:
  ///   The keyword used to search on the third party name and network string
  ///
  /// * [String] networkUID:
  ///   The network UID to filter results with
  ///
  /// * [bool] descending:
  ///   The order to return the search results
  ///
  /// * [int] start:
  ///   The start of the pagination
  ///
  /// * [int] limit:
  ///   The limit of the pagination
  Future<List<ThirdPartyCredentialResponse>?> searchCredentials(num version, int accountId, { String? keyword, String? networkUID, bool? descending, int? start, int? limit, }) async {
    final response = await searchCredentialsWithHttpInfo(version, accountId,  keyword: keyword, networkUID: networkUID, descending: descending, start: start, limit: limit, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<ThirdPartyCredentialResponse>') as List)
        .cast<ThirdPartyCredentialResponse>()
        .toList(growable: false);

    }
    return null;
  }

  /// Search Networks
  ///
  /// Search on supported third party networks and custom networks from external users.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] accountId (required):
  ///   The account id making the request
  ///
  /// * [String] sortField (required):
  ///   The column to sort the search on, possible values include: UPDATED (default), CREATED, NAME
  ///
  /// * [bool] descending (required):
  ///   The order to return the search results
  ///
  /// * [int] start (required):
  ///   The start of the pagination
  ///
  /// * [int] limit (required):
  ///   The limit of the pagination
  ///
  /// * [bool] activeOnly (required):
  ///   Return only active results
  ///
  /// * [String] keyword:
  ///   The keyword used to search on the network name and description fields
  ///
  /// * [bool] filterBillable:
  ///   Determines whether to only return applications that the user has access to
  Future<Response> searchNetworksWithHttpInfo(num version, int accountId, String sortField, bool descending, int start, int limit, bool activeOnly, { String? keyword, bool? filterBillable, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/thirdparty/network/search'
      .replaceAll('{version}', version.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'accountId', accountId));
    if (keyword != null) {
      queryParams.addAll(_queryParams('', 'keyword', keyword));
    }
      queryParams.addAll(_queryParams('', 'sortField', sortField));
      queryParams.addAll(_queryParams('', 'descending', descending));
      queryParams.addAll(_queryParams('', 'start', start));
      queryParams.addAll(_queryParams('', 'limit', limit));
      queryParams.addAll(_queryParams('', 'activeOnly', activeOnly));
    if (filterBillable != null) {
      queryParams.addAll(_queryParams('', 'filterBillable', filterBillable));
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

  /// Search Networks
  ///
  /// Search on supported third party networks and custom networks from external users.
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] accountId (required):
  ///   The account id making the request
  ///
  /// * [String] sortField (required):
  ///   The column to sort the search on, possible values include: UPDATED (default), CREATED, NAME
  ///
  /// * [bool] descending (required):
  ///   The order to return the search results
  ///
  /// * [int] start (required):
  ///   The start of the pagination
  ///
  /// * [int] limit (required):
  ///   The limit of the pagination
  ///
  /// * [bool] activeOnly (required):
  ///   Return only active results
  ///
  /// * [String] keyword:
  ///   The keyword used to search on the network name and description fields
  ///
  /// * [bool] filterBillable:
  ///   Determines whether to only return applications that the user has access to
  Future<List<ThirdPartyNetworkShortResponse>?> searchNetworks(num version, int accountId, String sortField, bool descending, int start, int limit, bool activeOnly, { String? keyword, bool? filterBillable, }) async {
    final response = await searchNetworksWithHttpInfo(version, accountId, sortField, descending, start, limit, activeOnly,  keyword: keyword, filterBillable: filterBillable, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<ThirdPartyNetworkShortResponse>') as List)
        .cast<ThirdPartyNetworkShortResponse>()
        .toList(growable: false);

    }
    return null;
  }

  /// Send MFA Challenge
  ///
  /// Sends an MFA challenge (SMS or Email) for networks with MFA enabled.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [String] networkUID (required):
  ///   the third party network provider that has MFA enabled
  ///
  /// * [String] appKey (required):
  ///   the application key
  ///
  /// * [String] thirdPartyToken:
  ///   the access token to authenticate with
  ///
  /// * [int] thirdPartyCredentialId:
  ///   optional id of the existing third party credential
  ///
  /// * [String] deviceId:
  ///   the unique id of the device making the request
  Future<Response> sendMFAChallengeWithHttpInfo(num version, String networkUID, String appKey, { String? thirdPartyToken, int? thirdPartyCredentialId, String? deviceId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/thirdparty/credential/mfa/send'
      .replaceAll('{version}', version.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (thirdPartyToken != null) {
      queryParams.addAll(_queryParams('', 'thirdPartyToken', thirdPartyToken));
    }
    if (thirdPartyCredentialId != null) {
      queryParams.addAll(_queryParams('', 'thirdPartyCredentialId', thirdPartyCredentialId));
    }
      queryParams.addAll(_queryParams('', 'networkUID', networkUID));
      queryParams.addAll(_queryParams('', 'appKey', appKey));
    if (deviceId != null) {
      queryParams.addAll(_queryParams('', 'deviceId', deviceId));
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

  /// Send MFA Challenge
  ///
  /// Sends an MFA challenge (SMS or Email) for networks with MFA enabled.
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [String] networkUID (required):
  ///   the third party network provider that has MFA enabled
  ///
  /// * [String] appKey (required):
  ///   the application key
  ///
  /// * [String] thirdPartyToken:
  ///   the access token to authenticate with
  ///
  /// * [int] thirdPartyCredentialId:
  ///   optional id of the existing third party credential
  ///
  /// * [String] deviceId:
  ///   the unique id of the device making the request
  Future<SirqulResponse?> sendMFAChallenge(num version, String networkUID, String appKey, { String? thirdPartyToken, int? thirdPartyCredentialId, String? deviceId, }) async {
    final response = await sendMFAChallengeWithHttpInfo(version, networkUID, appKey,  thirdPartyToken: thirdPartyToken, thirdPartyCredentialId: thirdPartyCredentialId, deviceId: deviceId, );
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

  /// Update Credential
  ///
  /// Updates a third-party login for an account.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [String] networkUID (required):
  ///   the access provider to authenticate against
  ///
  /// * [String] thirdPartyId (required):
  ///   the third party user account id
  ///
  /// * [String] appKey (required):
  ///   the application key
  ///
  /// * [String] deviceId:
  ///   the unique id of the device making the request
  ///
  /// * [String] thirdPartyName:
  ///   the third party user name
  ///
  /// * [String] thirdPartyToken:
  ///   the access token to authenticate with (ex: username or fb token)
  ///
  /// * [String] responseFilters:
  ///   this determines how much of the profile should be returned, see ProfileFilters
  ///
  /// * [String] metaData:
  ///   External custom client defined data
  ///
  /// * [String] thirdPartyRefreshToken:
  ///   optional refresh token for the third party
  Future<Response> updateCredentialWithHttpInfo(num version, String networkUID, String thirdPartyId, String appKey, { String? deviceId, String? thirdPartyName, String? thirdPartyToken, String? responseFilters, String? metaData, String? thirdPartyRefreshToken, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/thirdparty/credential/update'
      .replaceAll('{version}', version.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (deviceId != null) {
      queryParams.addAll(_queryParams('', 'deviceId', deviceId));
    }
      queryParams.addAll(_queryParams('', 'networkUID', networkUID));
      queryParams.addAll(_queryParams('', 'thirdPartyId', thirdPartyId));
    if (thirdPartyName != null) {
      queryParams.addAll(_queryParams('', 'thirdPartyName', thirdPartyName));
    }
    if (thirdPartyToken != null) {
      queryParams.addAll(_queryParams('', 'thirdPartyToken', thirdPartyToken));
    }
      queryParams.addAll(_queryParams('', 'appKey', appKey));
    if (responseFilters != null) {
      queryParams.addAll(_queryParams('', 'responseFilters', responseFilters));
    }
    if (metaData != null) {
      queryParams.addAll(_queryParams('', 'metaData', metaData));
    }
    if (thirdPartyRefreshToken != null) {
      queryParams.addAll(_queryParams('', 'thirdPartyRefreshToken', thirdPartyRefreshToken));
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

  /// Update Credential
  ///
  /// Updates a third-party login for an account.
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [String] networkUID (required):
  ///   the access provider to authenticate against
  ///
  /// * [String] thirdPartyId (required):
  ///   the third party user account id
  ///
  /// * [String] appKey (required):
  ///   the application key
  ///
  /// * [String] deviceId:
  ///   the unique id of the device making the request
  ///
  /// * [String] thirdPartyName:
  ///   the third party user name
  ///
  /// * [String] thirdPartyToken:
  ///   the access token to authenticate with (ex: username or fb token)
  ///
  /// * [String] responseFilters:
  ///   this determines how much of the profile should be returned, see ProfileFilters
  ///
  /// * [String] metaData:
  ///   External custom client defined data
  ///
  /// * [String] thirdPartyRefreshToken:
  ///   optional refresh token for the third party
  Future<ProfileResponse?> updateCredential(num version, String networkUID, String thirdPartyId, String appKey, { String? deviceId, String? thirdPartyName, String? thirdPartyToken, String? responseFilters, String? metaData, String? thirdPartyRefreshToken, }) async {
    final response = await updateCredentialWithHttpInfo(version, networkUID, thirdPartyId, appKey,  deviceId: deviceId, thirdPartyName: thirdPartyName, thirdPartyToken: thirdPartyToken, responseFilters: responseFilters, metaData: metaData, thirdPartyRefreshToken: thirdPartyRefreshToken, );
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

  /// Update Network
  ///
  /// Updates a custom third party network. Only the network owners and managers have access to this.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] accountId (required):
  ///   The account id making the request
  ///
  /// * [String] networkUID (required):
  ///   The unique identifier for the third party network defined by Sirqul
  ///
  /// * [String] name:
  ///   The name of the network
  ///
  /// * [String] description:
  ///   The description of the network
  ///
  /// * [bool] enableIntrospection:
  ///   Whether the network uses introspection calls
  ///
  /// * [String] introspectionMethod:
  ///   HTTP method to use for introspection calls (e.g., GET, POST)
  ///
  /// * [String] introspectionURL:
  ///   The HTTP URL of the introspection call
  ///
  /// * [String] introspectionParams:
  ///   The parameters of the introspection call
  ///
  /// * [String] requiredRootField:
  ///   Required response params
  ///
  /// * [bool] enableMFA:
  ///   Whether this network uses MFA
  ///
  /// * [int] sizeMFA:
  ///   Size of the MFA token
  ///
  /// * [int] shelfLifeMFA:
  ///   Shelf life (seconds) of the MFA token
  ///
  /// * [String] oauthTokenURL:
  ///   OAuth token endpoint URL
  ///
  /// * [MultipartFile] oauthPrivateKey:
  ///   OAuth private key file (multipart)
  ///
  /// * [MultipartFile] oauthPublicKey:
  ///   OAuth public key file (multipart)
  ///
  /// * [String] oauthClientId:
  ///   OAuth client id
  ///
  /// * [String] oauthSecretKey:
  ///   OAuth secret key
  ///
  /// * [String] body:
  Future<Response> updateNetworkWithHttpInfo(num version, int accountId, String networkUID, { String? name, String? description, bool? enableIntrospection, String? introspectionMethod, String? introspectionURL, String? introspectionParams, String? requiredRootField, bool? enableMFA, int? sizeMFA, int? shelfLifeMFA, String? oauthTokenURL, MultipartFile? oauthPrivateKey, MultipartFile? oauthPublicKey, String? oauthClientId, String? oauthSecretKey, String? body, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/thirdparty/network/update'
      .replaceAll('{version}', version.toString());

    // ignore: prefer_final_locals
    Object? postBody = body;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'accountId', accountId));
      queryParams.addAll(_queryParams('', 'networkUID', networkUID));
    if (name != null) {
      queryParams.addAll(_queryParams('', 'name', name));
    }
    if (description != null) {
      queryParams.addAll(_queryParams('', 'description', description));
    }
    if (enableIntrospection != null) {
      queryParams.addAll(_queryParams('', 'enableIntrospection', enableIntrospection));
    }
    if (introspectionMethod != null) {
      queryParams.addAll(_queryParams('', 'introspectionMethod', introspectionMethod));
    }
    if (introspectionURL != null) {
      queryParams.addAll(_queryParams('', 'introspectionURL', introspectionURL));
    }
    if (introspectionParams != null) {
      queryParams.addAll(_queryParams('', 'introspectionParams', introspectionParams));
    }
    if (requiredRootField != null) {
      queryParams.addAll(_queryParams('', 'requiredRootField', requiredRootField));
    }
    if (enableMFA != null) {
      queryParams.addAll(_queryParams('', 'enableMFA', enableMFA));
    }
    if (sizeMFA != null) {
      queryParams.addAll(_queryParams('', 'sizeMFA', sizeMFA));
    }
    if (shelfLifeMFA != null) {
      queryParams.addAll(_queryParams('', 'shelfLifeMFA', shelfLifeMFA));
    }
    if (oauthTokenURL != null) {
      queryParams.addAll(_queryParams('', 'oauthTokenURL', oauthTokenURL));
    }
    if (oauthPrivateKey != null) {
      queryParams.addAll(_queryParams('', 'oauthPrivateKey', oauthPrivateKey));
    }
    if (oauthPublicKey != null) {
      queryParams.addAll(_queryParams('', 'oauthPublicKey', oauthPublicKey));
    }
    if (oauthClientId != null) {
      queryParams.addAll(_queryParams('', 'oauthClientId', oauthClientId));
    }
    if (oauthSecretKey != null) {
      queryParams.addAll(_queryParams('', 'oauthSecretKey', oauthSecretKey));
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

  /// Update Network
  ///
  /// Updates a custom third party network. Only the network owners and managers have access to this.
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] accountId (required):
  ///   The account id making the request
  ///
  /// * [String] networkUID (required):
  ///   The unique identifier for the third party network defined by Sirqul
  ///
  /// * [String] name:
  ///   The name of the network
  ///
  /// * [String] description:
  ///   The description of the network
  ///
  /// * [bool] enableIntrospection:
  ///   Whether the network uses introspection calls
  ///
  /// * [String] introspectionMethod:
  ///   HTTP method to use for introspection calls (e.g., GET, POST)
  ///
  /// * [String] introspectionURL:
  ///   The HTTP URL of the introspection call
  ///
  /// * [String] introspectionParams:
  ///   The parameters of the introspection call
  ///
  /// * [String] requiredRootField:
  ///   Required response params
  ///
  /// * [bool] enableMFA:
  ///   Whether this network uses MFA
  ///
  /// * [int] sizeMFA:
  ///   Size of the MFA token
  ///
  /// * [int] shelfLifeMFA:
  ///   Shelf life (seconds) of the MFA token
  ///
  /// * [String] oauthTokenURL:
  ///   OAuth token endpoint URL
  ///
  /// * [MultipartFile] oauthPrivateKey:
  ///   OAuth private key file (multipart)
  ///
  /// * [MultipartFile] oauthPublicKey:
  ///   OAuth public key file (multipart)
  ///
  /// * [String] oauthClientId:
  ///   OAuth client id
  ///
  /// * [String] oauthSecretKey:
  ///   OAuth secret key
  ///
  /// * [String] body:
  Future<ThirdPartyNetworkResponse?> updateNetwork(num version, int accountId, String networkUID, { String? name, String? description, bool? enableIntrospection, String? introspectionMethod, String? introspectionURL, String? introspectionParams, String? requiredRootField, bool? enableMFA, int? sizeMFA, int? shelfLifeMFA, String? oauthTokenURL, MultipartFile? oauthPrivateKey, MultipartFile? oauthPublicKey, String? oauthClientId, String? oauthSecretKey, String? body, }) async {
    final response = await updateNetworkWithHttpInfo(version, accountId, networkUID,  name: name, description: description, enableIntrospection: enableIntrospection, introspectionMethod: introspectionMethod, introspectionURL: introspectionURL, introspectionParams: introspectionParams, requiredRootField: requiredRootField, enableMFA: enableMFA, sizeMFA: sizeMFA, shelfLifeMFA: shelfLifeMFA, oauthTokenURL: oauthTokenURL, oauthPrivateKey: oauthPrivateKey, oauthPublicKey: oauthPublicKey, oauthClientId: oauthClientId, oauthSecretKey: oauthSecretKey, body: body, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ThirdPartyNetworkResponse',) as ThirdPartyNetworkResponse;
    
    }
    return null;
  }
}
