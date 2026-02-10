//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class DependentApi {
  DependentApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Create Dependent
  ///
  /// Create dependent of the account
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] accountId (required):
  ///   the id of the parent account to create a dependent for
  ///
  /// * [Account] body:
  Future<Response> createWithHttpInfo(num version, int accountId, { Account? body, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/cargo/dependent/{accountId}'
      .replaceAll('{version}', version.toString())
      .replaceAll('{accountId}', accountId.toString());

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

  /// Create Dependent
  ///
  /// Create dependent of the account
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] accountId (required):
  ///   the id of the parent account to create a dependent for
  ///
  /// * [Account] body:
  Future<SirqulResponse?> create(num version, int accountId, { Account? body, }) async {
    final response = await createWithHttpInfo(version, accountId,  body: body, );
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

  /// Get dependent list of an account
  ///
  /// Get the dependent list of an account
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] accountId (required):
  ///   the id of the parent account to get a list of dependents
  Future<Response> getDependentsWithHttpInfo(num version, int accountId,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/cargo/dependent/{accountId}'
      .replaceAll('{version}', version.toString())
      .replaceAll('{accountId}', accountId.toString());

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

  /// Get dependent list of an account
  ///
  /// Get the dependent list of an account
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] accountId (required):
  ///   the id of the parent account to get a list of dependents
  Future<SirqulResponse?> getDependents(num version, int accountId,) async {
    final response = await getDependentsWithHttpInfo(version, accountId,);
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

  /// Delete Dependent
  ///
  /// Delete the Dependent
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] accountId (required):
  ///   the id of the parent account tied to the dependent
  ///
  /// * [int] dependentId (required):
  ///   the id of the dependent to delete
  Future<Response> removeDependentWithHttpInfo(num version, int accountId, int dependentId,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/cargo/dependent/{accountId}'
      .replaceAll('{version}', version.toString())
      .replaceAll('{accountId}', accountId.toString())
      .replaceAll('{dependentId}', dependentId.toString());

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

  /// Delete Dependent
  ///
  /// Delete the Dependent
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] accountId (required):
  ///   the id of the parent account tied to the dependent
  ///
  /// * [int] dependentId (required):
  ///   the id of the dependent to delete
  Future<void> removeDependent(num version, int accountId, int dependentId,) async {
    final response = await removeDependentWithHttpInfo(version, accountId, dependentId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }
}
