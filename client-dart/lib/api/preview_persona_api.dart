//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class PreviewPersonaApi {
  PreviewPersonaApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Create Persona
  ///
  /// Creates a new persona. If the given params are null those attributes will be override by null.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] accountId (required):
  ///   the account ID of the user
  ///
  /// * [String] title (required):
  ///   the title of the persona
  ///
  /// * [String] previewAccounts:
  ///   the accounts that are able to preview from this persona
  ///
  /// * [int] date:
  ///   the sepcified date that this persona is viewing the app
  ///
  /// * [int] age:
  ///   the specified age of this persona
  ///
  /// * [String] gender:
  ///   the specified gender of this persona
  ///
  /// * [String] gameExperienceLevel:
  ///   the specified experience level of the persona
  ///
  /// * [double] latitude:
  ///   the specified latitude of the persona
  ///
  /// * [double] longitude:
  ///   the specified longitude of the persona
  Future<Response> createPersonaWithHttpInfo(int accountId, String title, { String? previewAccounts, int? date, int? age, String? gender, String? gameExperienceLevel, double? latitude, double? longitude, }) async {
    // ignore: prefer_const_declarations
    final path = r'/persona/create';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'accountId', accountId));
      queryParams.addAll(_queryParams('', 'title', title));
    if (previewAccounts != null) {
      queryParams.addAll(_queryParams('', 'previewAccounts', previewAccounts));
    }
    if (date != null) {
      queryParams.addAll(_queryParams('', 'date', date));
    }
    if (age != null) {
      queryParams.addAll(_queryParams('', 'age', age));
    }
    if (gender != null) {
      queryParams.addAll(_queryParams('', 'gender', gender));
    }
    if (gameExperienceLevel != null) {
      queryParams.addAll(_queryParams('', 'gameExperienceLevel', gameExperienceLevel));
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

  /// Create Persona
  ///
  /// Creates a new persona. If the given params are null those attributes will be override by null.
  ///
  /// Parameters:
  ///
  /// * [int] accountId (required):
  ///   the account ID of the user
  ///
  /// * [String] title (required):
  ///   the title of the persona
  ///
  /// * [String] previewAccounts:
  ///   the accounts that are able to preview from this persona
  ///
  /// * [int] date:
  ///   the sepcified date that this persona is viewing the app
  ///
  /// * [int] age:
  ///   the specified age of this persona
  ///
  /// * [String] gender:
  ///   the specified gender of this persona
  ///
  /// * [String] gameExperienceLevel:
  ///   the specified experience level of the persona
  ///
  /// * [double] latitude:
  ///   the specified latitude of the persona
  ///
  /// * [double] longitude:
  ///   the specified longitude of the persona
  Future<PreviewPersonaResponse?> createPersona(int accountId, String title, { String? previewAccounts, int? date, int? age, String? gender, String? gameExperienceLevel, double? latitude, double? longitude, }) async {
    final response = await createPersonaWithHttpInfo(accountId, title,  previewAccounts: previewAccounts, date: date, age: age, gender: gender, gameExperienceLevel: gameExperienceLevel, latitude: latitude, longitude: longitude, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PreviewPersonaResponse',) as PreviewPersonaResponse;
    
    }
    return null;
  }

  /// Delete Persona
  ///
  /// Mark the persona for deletion.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] accountId (required):
  ///   the account id of the user
  ///
  /// * [int] personaId (required):
  ///   the id of the persona to delete
  Future<Response> deletePersonaWithHttpInfo(int accountId, int personaId,) async {
    // ignore: prefer_const_declarations
    final path = r'/persona/delete';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'accountId', accountId));
      queryParams.addAll(_queryParams('', 'personaId', personaId));

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

  /// Delete Persona
  ///
  /// Mark the persona for deletion.
  ///
  /// Parameters:
  ///
  /// * [int] accountId (required):
  ///   the account id of the user
  ///
  /// * [int] personaId (required):
  ///   the id of the persona to delete
  Future<SirqulResponse?> deletePersona(int accountId, int personaId,) async {
    final response = await deletePersonaWithHttpInfo(accountId, personaId,);
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

  /// Get Persona
  ///
  /// Get the persona by the given persona ID. If the persona cannot be found, a invalid response is returned.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] accountId (required):
  ///   the account ID of the user
  ///
  /// * [int] personaId (required):
  ///   the persona ID of the persona
  Future<Response> getPersonaListWithHttpInfo(int accountId, int personaId,) async {
    // ignore: prefer_const_declarations
    final path = r'/persona/get';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'accountId', accountId));
      queryParams.addAll(_queryParams('', 'personaId', personaId));

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

  /// Get Persona
  ///
  /// Get the persona by the given persona ID. If the persona cannot be found, a invalid response is returned.
  ///
  /// Parameters:
  ///
  /// * [int] accountId (required):
  ///   the account ID of the user
  ///
  /// * [int] personaId (required):
  ///   the persona ID of the persona
  Future<PreviewPersonaResponse?> getPersonaList(int accountId, int personaId,) async {
    final response = await getPersonaListWithHttpInfo(accountId, personaId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PreviewPersonaResponse',) as PreviewPersonaResponse;
    
    }
    return null;
  }

  /// Search Personas
  ///
  /// Search for persona that the account owns by the given account ID.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] accountId (required):
  ///   the account ID of the user
  ///
  /// * [int] start (required):
  ///   the start index for pagination
  ///
  /// * [int] limit (required):
  ///   the limit for pagination (There is a hard limit of 100)
  Future<Response> searchPersonaWithHttpInfo(int accountId, int start, int limit,) async {
    // ignore: prefer_const_declarations
    final path = r'/persona/search';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'accountId', accountId));
      queryParams.addAll(_queryParams('', 'start', start));
      queryParams.addAll(_queryParams('', 'limit', limit));

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

  /// Search Personas
  ///
  /// Search for persona that the account owns by the given account ID.
  ///
  /// Parameters:
  ///
  /// * [int] accountId (required):
  ///   the account ID of the user
  ///
  /// * [int] start (required):
  ///   the start index for pagination
  ///
  /// * [int] limit (required):
  ///   the limit for pagination (There is a hard limit of 100)
  Future<PreviewPersonaResponse?> searchPersona(int accountId, int start, int limit,) async {
    final response = await searchPersonaWithHttpInfo(accountId, start, limit,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PreviewPersonaResponse',) as PreviewPersonaResponse;
    
    }
    return null;
  }

  /// Update Persona
  ///
  /// Update the persona by the given personaId. If the given params are null those attributes will be override by null. If active is assigned, all other params will be ignored.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] accountId (required):
  ///   the account ID of the user
  ///
  /// * [int] personaId (required):
  ///   the persona ID of the persona to update
  ///
  /// * [String] title:
  ///   the title of the persona
  ///
  /// * [String] previewAccounts:
  ///   the accounts that are able to preview from this persona
  ///
  /// * [bool] active:
  ///   the status of the persona, there can only be one active persona per account
  ///
  /// * [int] date:
  ///   the sepcified date that this persona is viewing the app
  ///
  /// * [int] age:
  ///   the specified age of this persona
  ///
  /// * [String] gender:
  ///   the specified gender of this persona
  ///
  /// * [String] gameExperienceLevel:
  ///   the specified experience level of the persona
  ///
  /// * [double] latitude:
  ///   the specified latitude of the persona
  ///
  /// * [double] longitude:
  ///   the specified longitude of the persona
  Future<Response> updatePersonaWithHttpInfo(int accountId, int personaId, { String? title, String? previewAccounts, bool? active, int? date, int? age, String? gender, String? gameExperienceLevel, double? latitude, double? longitude, }) async {
    // ignore: prefer_const_declarations
    final path = r'/persona/update';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'accountId', accountId));
      queryParams.addAll(_queryParams('', 'personaId', personaId));
    if (title != null) {
      queryParams.addAll(_queryParams('', 'title', title));
    }
    if (previewAccounts != null) {
      queryParams.addAll(_queryParams('', 'previewAccounts', previewAccounts));
    }
    if (active != null) {
      queryParams.addAll(_queryParams('', 'active', active));
    }
    if (date != null) {
      queryParams.addAll(_queryParams('', 'date', date));
    }
    if (age != null) {
      queryParams.addAll(_queryParams('', 'age', age));
    }
    if (gender != null) {
      queryParams.addAll(_queryParams('', 'gender', gender));
    }
    if (gameExperienceLevel != null) {
      queryParams.addAll(_queryParams('', 'gameExperienceLevel', gameExperienceLevel));
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

  /// Update Persona
  ///
  /// Update the persona by the given personaId. If the given params are null those attributes will be override by null. If active is assigned, all other params will be ignored.
  ///
  /// Parameters:
  ///
  /// * [int] accountId (required):
  ///   the account ID of the user
  ///
  /// * [int] personaId (required):
  ///   the persona ID of the persona to update
  ///
  /// * [String] title:
  ///   the title of the persona
  ///
  /// * [String] previewAccounts:
  ///   the accounts that are able to preview from this persona
  ///
  /// * [bool] active:
  ///   the status of the persona, there can only be one active persona per account
  ///
  /// * [int] date:
  ///   the sepcified date that this persona is viewing the app
  ///
  /// * [int] age:
  ///   the specified age of this persona
  ///
  /// * [String] gender:
  ///   the specified gender of this persona
  ///
  /// * [String] gameExperienceLevel:
  ///   the specified experience level of the persona
  ///
  /// * [double] latitude:
  ///   the specified latitude of the persona
  ///
  /// * [double] longitude:
  ///   the specified longitude of the persona
  Future<PreviewPersonaResponse?> updatePersona(int accountId, int personaId, { String? title, String? previewAccounts, bool? active, int? date, int? age, String? gender, String? gameExperienceLevel, double? latitude, double? longitude, }) async {
    final response = await updatePersonaWithHttpInfo(accountId, personaId,  title: title, previewAccounts: previewAccounts, active: active, date: date, age: age, gender: gender, gameExperienceLevel: gameExperienceLevel, latitude: latitude, longitude: longitude, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PreviewPersonaResponse',) as PreviewPersonaResponse;
    
    }
    return null;
  }
}
