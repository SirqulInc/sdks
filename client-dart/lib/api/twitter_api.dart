//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class TwitterApi {
  TwitterApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Authorize Twitter
  ///
  /// Makes an authorization call to twitter for a user to login and allow any app permissions.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [String] appKey (required):
  ///   the application key
  Future<Response> authorizeTwitterWithHttpInfo(num version, String appKey,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/twitter/authorize'
      .replaceAll('{version}', version.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

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

  /// Authorize Twitter
  ///
  /// Makes an authorization call to twitter for a user to login and allow any app permissions.
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [String] appKey (required):
  ///   the application key
  Future<SirqulResponse?> authorizeTwitter(num version, String appKey,) async {
    final response = await authorizeTwitterWithHttpInfo(version, appKey,);
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

  /// Login Twitter
  ///
  /// Returns the user profile information given an access token and the secret access token. This call verifies the tokens with twitter and creates a Sirqul account for the user if its their first time logging in.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [String] accessToken (required):
  ///   The access token
  ///
  /// * [String] accessTokenSecret (required):
  ///   The secret access token
  ///
  /// * [String] appKey (required):
  ///   The application key
  ///
  /// * [String] responseFilters (required):
  ///   a comma separated list of ProfileFilters for filtering the returned response data
  ///
  /// * [String] deviceId:
  ///   The device id
  ///
  /// * [double] latitude:
  ///   The current latitude of the user
  ///
  /// * [double] longitude:
  ///   The current longitude of the user
  Future<Response> loginTwitterWithHttpInfo(num version, String accessToken, String accessTokenSecret, String appKey, String responseFilters, { String? deviceId, double? latitude, double? longitude, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/twitter/login'
      .replaceAll('{version}', version.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (deviceId != null) {
      queryParams.addAll(_queryParams('', 'deviceId', deviceId));
    }
      queryParams.addAll(_queryParams('', 'accessToken', accessToken));
      queryParams.addAll(_queryParams('', 'accessTokenSecret', accessTokenSecret));
      queryParams.addAll(_queryParams('', 'appKey', appKey));
      queryParams.addAll(_queryParams('', 'responseFilters', responseFilters));
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

  /// Login Twitter
  ///
  /// Returns the user profile information given an access token and the secret access token. This call verifies the tokens with twitter and creates a Sirqul account for the user if its their first time logging in.
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [String] accessToken (required):
  ///   The access token
  ///
  /// * [String] accessTokenSecret (required):
  ///   The secret access token
  ///
  /// * [String] appKey (required):
  ///   The application key
  ///
  /// * [String] responseFilters (required):
  ///   a comma separated list of ProfileFilters for filtering the returned response data
  ///
  /// * [String] deviceId:
  ///   The device id
  ///
  /// * [double] latitude:
  ///   The current latitude of the user
  ///
  /// * [double] longitude:
  ///   The current longitude of the user
  Future<ProfileResponse?> loginTwitter(num version, String accessToken, String accessTokenSecret, String appKey, String responseFilters, { String? deviceId, double? latitude, double? longitude, }) async {
    final response = await loginTwitterWithHttpInfo(version, accessToken, accessTokenSecret, appKey, responseFilters,  deviceId: deviceId, latitude: latitude, longitude: longitude, );
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
}
