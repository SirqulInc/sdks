//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class StopApi {
  StopApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Get Stop
  ///
  /// Get an existing stop
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] id (required):
  ///   the id of the stop to get
  Future<Response> getStopWithHttpInfo(num version, int id,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/stop/{id}'
      .replaceAll('{version}', version.toString())
      .replaceAll('{id}', id.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

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

  /// Get Stop
  ///
  /// Get an existing stop
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] id (required):
  ///   the id of the stop to get
  Future<Stop?> getStop(num version, int id,) async {
    final response = await getStopWithHttpInfo(version, id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Stop',) as Stop;
    
    }
    return null;
  }

  /// Update Stop
  ///
  /// Update an existing stop
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] id (required):
  ///   the id of the stop to update
  ///
  /// * [Stop] body:
  Future<Response> updateStopWithHttpInfo(num version, int id, { Stop? body, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/stop/{id}'
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
      'PUT',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Update Stop
  ///
  /// Update an existing stop
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] id (required):
  ///   the id of the stop to update
  ///
  /// * [Stop] body:
  Future<Stop?> updateStop(num version, int id, { Stop? body, }) async {
    final response = await updateStopWithHttpInfo(version, id,  body: body, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Stop',) as Stop;
    
    }
    return null;
  }
}
