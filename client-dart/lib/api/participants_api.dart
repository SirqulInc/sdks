//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class ParticipantsApi {
  ParticipantsApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Process All Participant Feeds
  ///
  /// Processes all supported participant feeds.
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
  /// * [String] appKey:
  ///   The application key used to identify the application
  ///
  /// * [bool] useShortNameAsID:
  ///   Whether to use short name as the participant ID
  Future<Response> processAllParticipantsWithHttpInfo(num version, int accountId, { String? appKey, bool? useShortNameAsID, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/participant/process/all'
      .replaceAll('{version}', version.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'accountId', accountId));
    if (appKey != null) {
      queryParams.addAll(_queryParams('', 'appKey', appKey));
    }
    if (useShortNameAsID != null) {
      queryParams.addAll(_queryParams('', 'useShortNameAsID', useShortNameAsID));
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

  /// Process All Participant Feeds
  ///
  /// Processes all supported participant feeds.
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] accountId (required):
  ///   The account id of the user
  ///
  /// * [String] appKey:
  ///   The application key used to identify the application
  ///
  /// * [bool] useShortNameAsID:
  ///   Whether to use short name as the participant ID
  Future<SirqulResponse?> processAllParticipants(num version, int accountId, { String? appKey, bool? useShortNameAsID, }) async {
    final response = await processAllParticipantsWithHttpInfo(version, accountId,  appKey: appKey, useShortNameAsID: useShortNameAsID, );
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

  /// Process Participants Feed
  ///
  /// Processes a participant feed or uploaded file for a specific league.
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
  /// * [String] league (required):
  ///   The league identifier to process
  ///
  /// * [String] appKey:
  ///   The application key used to identify the application
  ///
  /// * [bool] useShortNameAsID:
  ///   Whether to use short name as the participant ID
  ///
  /// * [MultipartFile] file:
  ///   Multipart file containing participant feed contents
  Future<Response> processParticipantsWithHttpInfo(num version, int accountId, String league, { String? appKey, bool? useShortNameAsID, MultipartFile? file, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/participant/process'
      .replaceAll('{version}', version.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'accountId', accountId));
      queryParams.addAll(_queryParams('', 'league', league));
    if (appKey != null) {
      queryParams.addAll(_queryParams('', 'appKey', appKey));
    }
    if (useShortNameAsID != null) {
      queryParams.addAll(_queryParams('', 'useShortNameAsID', useShortNameAsID));
    }
    if (file != null) {
      queryParams.addAll(_queryParams('', 'file', file));
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

  /// Process Participants Feed
  ///
  /// Processes a participant feed or uploaded file for a specific league.
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] accountId (required):
  ///   The account id of the user
  ///
  /// * [String] league (required):
  ///   The league identifier to process
  ///
  /// * [String] appKey:
  ///   The application key used to identify the application
  ///
  /// * [bool] useShortNameAsID:
  ///   Whether to use short name as the participant ID
  ///
  /// * [MultipartFile] file:
  ///   Multipart file containing participant feed contents
  Future<SirqulResponse?> processParticipants(num version, int accountId, String league, { String? appKey, bool? useShortNameAsID, MultipartFile? file, }) async {
    final response = await processParticipantsWithHttpInfo(version, accountId, league,  appKey: appKey, useShortNameAsID: useShortNameAsID, file: file, );
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
