//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class LocationApiV2Api {
  LocationApiV2Api([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Create new location
  ///
  /// Create a new location from a real object location.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [Location] body:
  Future<Response> createLocationV2WithHttpInfo(num version, { Location? body, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/location'
      .replaceAll('{version}', version.toString());

    // ignore: prefer_final_locals
    Object? postBody = body;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

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

  /// Create new location
  ///
  /// Create a new location from a real object location.
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [Location] body:
  Future<SirqulResponse?> createLocationV2(num version, { Location? body, }) async {
    final response = await createLocationV2WithHttpInfo(version,  body: body, );
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

  /// Update an existing location
  ///
  /// Update an existing location
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] id (required):
  ///   the id of the location to update
  ///
  /// * [Location] body:
  Future<Response> updateLocationV2WithHttpInfo(num version, int id, { Location? body, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/location/{id}'
      .replaceAll('{version}', version.toString())
      .replaceAll('{id}', id.toString());

    // ignore: prefer_final_locals
    Object? postBody = body;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

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

  /// Update an existing location
  ///
  /// Update an existing location
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] id (required):
  ///   the id of the location to update
  ///
  /// * [Location] body:
  Future<SirqulResponse?> updateLocationV2(num version, int id, { Location? body, }) async {
    final response = await updateLocationV2WithHttpInfo(version, id,  body: body, );
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
