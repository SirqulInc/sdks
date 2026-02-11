//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class PostalCodeApi {
  PostalCodeApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Create Postal Code
  ///
  /// Create a Postal Code
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] accountId (required):
  ///   the id of the logged in user
  ///
  /// * [String] code (required):
  ///   the postal code
  ///
  /// * [double] latitude (required):
  ///   the latitude of the postal code
  ///
  /// * [double] longitude (required):
  ///   the longitude of the postal code
  ///
  /// * [String] stateCode:
  ///   the state code (e.g WA, WV, WI) that the postal code is located
  ///
  /// * [String] city:
  ///   the city that the postal code is located
  ///
  /// * [bool] active:
  ///   whether the postal code created should be active or inactive
  Future<Response> createPostalCodeWithHttpInfo(int accountId, String code, double latitude, double longitude, { String? stateCode, String? city, bool? active, }) async {
    // ignore: prefer_const_declarations
    final path = r'/postalCode/create';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'accountId', accountId));
      queryParams.addAll(_queryParams('', 'code', code));
      queryParams.addAll(_queryParams('', 'latitude', latitude));
      queryParams.addAll(_queryParams('', 'longitude', longitude));
    if (stateCode != null) {
      queryParams.addAll(_queryParams('', 'stateCode', stateCode));
    }
    if (city != null) {
      queryParams.addAll(_queryParams('', 'city', city));
    }
    if (active != null) {
      queryParams.addAll(_queryParams('', 'active', active));
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

  /// Create Postal Code
  ///
  /// Create a Postal Code
  ///
  /// Parameters:
  ///
  /// * [int] accountId (required):
  ///   the id of the logged in user
  ///
  /// * [String] code (required):
  ///   the postal code
  ///
  /// * [double] latitude (required):
  ///   the latitude of the postal code
  ///
  /// * [double] longitude (required):
  ///   the longitude of the postal code
  ///
  /// * [String] stateCode:
  ///   the state code (e.g WA, WV, WI) that the postal code is located
  ///
  /// * [String] city:
  ///   the city that the postal code is located
  ///
  /// * [bool] active:
  ///   whether the postal code created should be active or inactive
  Future<PostalCodeResponse?> createPostalCode(int accountId, String code, double latitude, double longitude, { String? stateCode, String? city, bool? active, }) async {
    final response = await createPostalCodeWithHttpInfo(accountId, code, latitude, longitude,  stateCode: stateCode, city: city, active: active, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PostalCodeResponse',) as PostalCodeResponse;
    
    }
    return null;
  }

  /// Delete Postal Code
  ///
  /// Delete a Postal Code
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] accountId (required):
  ///   the id of the logged in user
  ///
  /// * [int] postalCodeId (required):
  ///   the id of the postal code to delete
  Future<Response> deletePostalCodeWithHttpInfo(int accountId, int postalCodeId,) async {
    // ignore: prefer_const_declarations
    final path = r'/postalCode/delete';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'accountId', accountId));
      queryParams.addAll(_queryParams('', 'postalCodeId', postalCodeId));

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

  /// Delete Postal Code
  ///
  /// Delete a Postal Code
  ///
  /// Parameters:
  ///
  /// * [int] accountId (required):
  ///   the id of the logged in user
  ///
  /// * [int] postalCodeId (required):
  ///   the id of the postal code to delete
  Future<SirqulResponse?> deletePostalCode(int accountId, int postalCodeId,) async {
    final response = await deletePostalCodeWithHttpInfo(accountId, postalCodeId,);
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

  /// Get Postal Code
  ///
  /// Get a Postal Code
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] postalCodeId (required):
  ///   the id of the postal code to get
  Future<Response> getPostalCodeWithHttpInfo(int postalCodeId,) async {
    // ignore: prefer_const_declarations
    final path = r'/postalCode/get';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'postalCodeId', postalCodeId));

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

  /// Get Postal Code
  ///
  /// Get a Postal Code
  ///
  /// Parameters:
  ///
  /// * [int] postalCodeId (required):
  ///   the id of the postal code to get
  Future<PostalCodeResponse?> getPostalCode(int postalCodeId,) async {
    final response = await getPostalCodeWithHttpInfo(postalCodeId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PostalCodeResponse',) as PostalCodeResponse;
    
    }
    return null;
  }

  /// Search Postal Codes
  ///
  /// Get the list of regions. If latitude or longitude is null, will return all postal codes in the system with paginated response.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] sortField (required):
  ///   the field to sort the results on
  ///
  /// * [bool] descending (required):
  ///   whether to order results in ascending or descending order
  ///
  /// * [double] latitude:
  ///   the latitude of the postal code to search on
  ///
  /// * [double] longitude:
  ///   the longitude of the postal code to search on
  ///
  /// * [String] keyword:
  ///   the keyword of the postal code to search on
  ///
  /// * [double] miles:
  ///   how far (in miles) to search on for the postal code
  ///
  /// * [int] start:
  ///   the start of the index and/or pagination
  ///
  /// * [int] limit:
  ///   the limit of the index and/or pagination
  Future<Response> getPostalCodesWithHttpInfo(String sortField, bool descending, { double? latitude, double? longitude, String? keyword, double? miles, int? start, int? limit, }) async {
    // ignore: prefer_const_declarations
    final path = r'/postalCode/search';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (latitude != null) {
      queryParams.addAll(_queryParams('', 'latitude', latitude));
    }
    if (longitude != null) {
      queryParams.addAll(_queryParams('', 'longitude', longitude));
    }
    if (keyword != null) {
      queryParams.addAll(_queryParams('', 'keyword', keyword));
    }
    if (miles != null) {
      queryParams.addAll(_queryParams('', 'miles', miles));
    }
    if (start != null) {
      queryParams.addAll(_queryParams('', 'start', start));
    }
    if (limit != null) {
      queryParams.addAll(_queryParams('', 'limit', limit));
    }
      queryParams.addAll(_queryParams('', 'sortField', sortField));
      queryParams.addAll(_queryParams('', 'descending', descending));

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

  /// Search Postal Codes
  ///
  /// Get the list of regions. If latitude or longitude is null, will return all postal codes in the system with paginated response.
  ///
  /// Parameters:
  ///
  /// * [String] sortField (required):
  ///   the field to sort the results on
  ///
  /// * [bool] descending (required):
  ///   whether to order results in ascending or descending order
  ///
  /// * [double] latitude:
  ///   the latitude of the postal code to search on
  ///
  /// * [double] longitude:
  ///   the longitude of the postal code to search on
  ///
  /// * [String] keyword:
  ///   the keyword of the postal code to search on
  ///
  /// * [double] miles:
  ///   how far (in miles) to search on for the postal code
  ///
  /// * [int] start:
  ///   the start of the index and/or pagination
  ///
  /// * [int] limit:
  ///   the limit of the index and/or pagination
  Future<List<PostalCodeResponse>?> getPostalCodes(String sortField, bool descending, { double? latitude, double? longitude, String? keyword, double? miles, int? start, int? limit, }) async {
    final response = await getPostalCodesWithHttpInfo(sortField, descending,  latitude: latitude, longitude: longitude, keyword: keyword, miles: miles, start: start, limit: limit, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<PostalCodeResponse>') as List)
        .cast<PostalCodeResponse>()
        .toList(growable: false);

    }
    return null;
  }

  /// Update Postal Code
  ///
  /// Update a Postal Code
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] accountId (required):
  ///   the id of the logged in user
  ///
  /// * [int] postalCodeId (required):
  ///   the id of the postal code to update
  ///
  /// * [String] code:
  ///   the postal code to update
  ///
  /// * [double] latitude:
  ///   the latitude of the postal code
  ///
  /// * [double] longitude:
  ///   the longitude of the postal code
  ///
  /// * [String] stateCode:
  ///   the state code (e.g. WA, WI, WY) where the postal code is located
  ///
  /// * [String] city:
  ///   the city where the postal code is located
  ///
  /// * [bool] active:
  ///   whether the postal code is active or inactive
  Future<Response> updatePostalCodeWithHttpInfo(int accountId, int postalCodeId, { String? code, double? latitude, double? longitude, String? stateCode, String? city, bool? active, }) async {
    // ignore: prefer_const_declarations
    final path = r'/postalCode/update';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'accountId', accountId));
      queryParams.addAll(_queryParams('', 'postalCodeId', postalCodeId));
    if (code != null) {
      queryParams.addAll(_queryParams('', 'code', code));
    }
    if (latitude != null) {
      queryParams.addAll(_queryParams('', 'latitude', latitude));
    }
    if (longitude != null) {
      queryParams.addAll(_queryParams('', 'longitude', longitude));
    }
    if (stateCode != null) {
      queryParams.addAll(_queryParams('', 'stateCode', stateCode));
    }
    if (city != null) {
      queryParams.addAll(_queryParams('', 'city', city));
    }
    if (active != null) {
      queryParams.addAll(_queryParams('', 'active', active));
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

  /// Update Postal Code
  ///
  /// Update a Postal Code
  ///
  /// Parameters:
  ///
  /// * [int] accountId (required):
  ///   the id of the logged in user
  ///
  /// * [int] postalCodeId (required):
  ///   the id of the postal code to update
  ///
  /// * [String] code:
  ///   the postal code to update
  ///
  /// * [double] latitude:
  ///   the latitude of the postal code
  ///
  /// * [double] longitude:
  ///   the longitude of the postal code
  ///
  /// * [String] stateCode:
  ///   the state code (e.g. WA, WI, WY) where the postal code is located
  ///
  /// * [String] city:
  ///   the city where the postal code is located
  ///
  /// * [bool] active:
  ///   whether the postal code is active or inactive
  Future<PostalCodeResponse?> updatePostalCode(int accountId, int postalCodeId, { String? code, double? latitude, double? longitude, String? stateCode, String? city, bool? active, }) async {
    final response = await updatePostalCodeWithHttpInfo(accountId, postalCodeId,  code: code, latitude: latitude, longitude: longitude, stateCode: stateCode, city: city, active: active, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PostalCodeResponse',) as PostalCodeResponse;
    
    }
    return null;
  }
}
