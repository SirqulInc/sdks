//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class ProgramApi {
  ProgramApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Create Program
  ///
  /// Create a new program
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [Program] body:
  Future<Response> createProgramWithHttpInfo({ Program? body, }) async {
    // ignore: prefer_const_declarations
    final path = r'/program';

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

  /// Create Program
  ///
  /// Create a new program
  ///
  /// Parameters:
  ///
  /// * [Program] body:
  Future<Program?> createProgram({ Program? body, }) async {
    final response = await createProgramWithHttpInfo( body: body, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Program',) as Program;
    
    }
    return null;
  }

  /// Delete Program
  ///
  /// Delete an existing program
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   the id of the program
  Future<Response> deleteProgramWithHttpInfo(int id,) async {
    // ignore: prefer_const_declarations
    final path = r'/program/{id}'
      .replaceAll('{id}', id.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'DELETE',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Delete Program
  ///
  /// Delete an existing program
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   the id of the program
  Future<void> deleteProgram(int id,) async {
    final response = await deleteProgramWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Get Program
  ///
  /// Get an existing program
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   the id of the program
  Future<Response> getProgramWithHttpInfo(int id,) async {
    // ignore: prefer_const_declarations
    final path = r'/program/{id}'
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

  /// Get Program
  ///
  /// Get an existing program
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   the id of the program
  Future<Program?> getProgram(int id,) async {
    final response = await getProgramWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Program',) as Program;
    
    }
    return null;
  }

  /// Update Program
  ///
  /// Update an existing program
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   the id of the program
  ///
  /// * [Program] body:
  Future<Response> postProgramWithHttpInfo(int id, { Program? body, }) async {
    // ignore: prefer_const_declarations
    final path = r'/program/{id}'
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

  /// Update Program
  ///
  /// Update an existing program
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   the id of the program
  ///
  /// * [Program] body:
  Future<Program?> postProgram(int id, { Program? body, }) async {
    final response = await postProgramWithHttpInfo(id,  body: body, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Program',) as Program;
    
    }
    return null;
  }

  /// Update Program
  ///
  /// Update an existing program
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   the id of the program
  ///
  /// * [Program] body:
  Future<Response> putProgramWithHttpInfo(int id, { Program? body, }) async {
    // ignore: prefer_const_declarations
    final path = r'/program/{id}'
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

  /// Update Program
  ///
  /// Update an existing program
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   the id of the program
  ///
  /// * [Program] body:
  Future<Program?> putProgram(int id, { Program? body, }) async {
    final response = await putProgramWithHttpInfo(id,  body: body, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Program',) as Program;
    
    }
    return null;
  }

  /// Search Programs
  ///
  /// Search for programs
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] sortField (required):
  ///   The field to sort by
  ///
  /// * [bool] descending (required):
  ///   Determines whether the sorted list is in descending or ascending order
  ///
  /// * [int] start (required):
  ///   The start index for pagination
  ///
  /// * [int] limit (required):
  ///   The limit for pagination
  ///
  /// * [bool] activeOnly (required):
  ///   Return only active results
  ///
  /// * [String] keyword:
  ///   The keyword to filter results by
  Future<Response> searchProgramsWithHttpInfo(String sortField, bool descending, int start, int limit, bool activeOnly, { String? keyword, }) async {
    // ignore: prefer_const_declarations
    final path = r'/program';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (keyword != null) {
      queryParams.addAll(_queryParams('', 'keyword', keyword));
    }
      queryParams.addAll(_queryParams('', 'sortField', sortField));
      queryParams.addAll(_queryParams('', 'descending', descending));
      queryParams.addAll(_queryParams('', 'start', start));
      queryParams.addAll(_queryParams('', 'limit', limit));
      queryParams.addAll(_queryParams('', 'activeOnly', activeOnly));

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

  /// Search Programs
  ///
  /// Search for programs
  ///
  /// Parameters:
  ///
  /// * [String] sortField (required):
  ///   The field to sort by
  ///
  /// * [bool] descending (required):
  ///   Determines whether the sorted list is in descending or ascending order
  ///
  /// * [int] start (required):
  ///   The start index for pagination
  ///
  /// * [int] limit (required):
  ///   The limit for pagination
  ///
  /// * [bool] activeOnly (required):
  ///   Return only active results
  ///
  /// * [String] keyword:
  ///   The keyword to filter results by
  Future<List<Program>?> searchPrograms(String sortField, bool descending, int start, int limit, bool activeOnly, { String? keyword, }) async {
    final response = await searchProgramsWithHttpInfo(sortField, descending, start, limit, activeOnly,  keyword: keyword, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<Program>') as List)
        .cast<Program>()
        .toList(growable: false);

    }
    return null;
  }
}
