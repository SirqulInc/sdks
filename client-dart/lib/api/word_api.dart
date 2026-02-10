//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class WordApi {
  WordApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Create Word
  ///
  /// Create a word by the given params.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] accountId (required):
  ///   The logged in user.
  ///
  /// * [String] word (required):
  ///   The text of the word.
  ///
  /// * [String] definition (required):
  ///   The definition of the word.
  ///
  /// * [bool] active (required):
  ///   If true set the word to active. Default to false.
  ///
  /// * [bool] allocateTickets (required):
  ///   If true then scoring will give tickets. Default to false.
  ///
  /// * [int] ticketCount (required):
  ///   The number of tickets to reward
  ///
  /// * [int] assetId:
  ///   The asset id of the word.
  ///
  /// * [String] ticketType:
  ///   The type of ticket to reward, null means default type
  ///
  /// * [int] points:
  ///   The number of points to award for completing a mission
  Future<Response> createWordWithHttpInfo(num version, int accountId, String word, String definition, bool active, bool allocateTickets, int ticketCount, { int? assetId, String? ticketType, int? points, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/game/word/create'
      .replaceAll('{version}', version.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'accountId', accountId));
      queryParams.addAll(_queryParams('', 'word', word));
      queryParams.addAll(_queryParams('', 'definition', definition));
    if (assetId != null) {
      queryParams.addAll(_queryParams('', 'assetId', assetId));
    }
      queryParams.addAll(_queryParams('', 'active', active));
      queryParams.addAll(_queryParams('', 'allocateTickets', allocateTickets));
      queryParams.addAll(_queryParams('', 'ticketCount', ticketCount));
    if (ticketType != null) {
      queryParams.addAll(_queryParams('', 'ticketType', ticketType));
    }
    if (points != null) {
      queryParams.addAll(_queryParams('', 'points', points));
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

  /// Create Word
  ///
  /// Create a word by the given params.
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] accountId (required):
  ///   The logged in user.
  ///
  /// * [String] word (required):
  ///   The text of the word.
  ///
  /// * [String] definition (required):
  ///   The definition of the word.
  ///
  /// * [bool] active (required):
  ///   If true set the word to active. Default to false.
  ///
  /// * [bool] allocateTickets (required):
  ///   If true then scoring will give tickets. Default to false.
  ///
  /// * [int] ticketCount (required):
  ///   The number of tickets to reward
  ///
  /// * [int] assetId:
  ///   The asset id of the word.
  ///
  /// * [String] ticketType:
  ///   The type of ticket to reward, null means default type
  ///
  /// * [int] points:
  ///   The number of points to award for completing a mission
  Future<WordzWordResponse?> createWord(num version, int accountId, String word, String definition, bool active, bool allocateTickets, int ticketCount, { int? assetId, String? ticketType, int? points, }) async {
    final response = await createWordWithHttpInfo(version, accountId, word, definition, active, allocateTickets, ticketCount,  assetId: assetId, ticketType: ticketType, points: points, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'WordzWordResponse',) as WordzWordResponse;
    
    }
    return null;
  }

  /// Delete Word
  ///
  /// Delete a word by the given id. The accountId given needs to be the owner or executive to delete.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] wordId (required):
  ///   The id of the word to delete.
  ///
  /// * [int] accountId (required):
  ///   The account vor validating permission
  Future<Response> deleteWordWithHttpInfo(num version, int wordId, int accountId,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/game/word/delete'
      .replaceAll('{version}', version.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'wordId', wordId));
      queryParams.addAll(_queryParams('', 'accountId', accountId));

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

  /// Delete Word
  ///
  /// Delete a word by the given id. The accountId given needs to be the owner or executive to delete.
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] wordId (required):
  ///   The id of the word to delete.
  ///
  /// * [int] accountId (required):
  ///   The account vor validating permission
  Future<SirqulResponse?> deleteWord(num version, int wordId, int accountId,) async {
    final response = await deleteWordWithHttpInfo(version, wordId, accountId,);
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

  /// Get Word
  ///
  /// Get a word by the given id.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] wordId (required):
  ///   The id of the word to get.
  ///
  /// * [int] accountId (required):
  ///   The logged in user.
  Future<Response> getWordWithHttpInfo(num version, int wordId, int accountId,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/game/word/get'
      .replaceAll('{version}', version.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'wordId', wordId));
      queryParams.addAll(_queryParams('', 'accountId', accountId));

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

  /// Get Word
  ///
  /// Get a word by the given id.
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] wordId (required):
  ///   The id of the word to get.
  ///
  /// * [int] accountId (required):
  ///   The logged in user.
  Future<WordzWordResponse?> getWord(num version, int wordId, int accountId,) async {
    final response = await getWordWithHttpInfo(version, wordId, accountId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'WordzWordResponse',) as WordzWordResponse;
    
    }
    return null;
  }

  /// Search Words
  ///
  /// Search for words by the given params.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] accountId (required):
  ///   The logged in user.
  ///
  /// * [String] sortField (required):
  ///   The column to sort the search on
  ///
  /// * [bool] descending (required):
  ///   The order to return the search results
  ///
  /// * [bool] activeOnly (required):
  ///   Return only active results if set to true.
  ///
  /// * [int] start (required):
  ///   The record to begin the return set on.
  ///
  /// * [int] limit (required):
  ///   The number of records to return.
  ///
  /// * [String] keyword:
  ///   The keyword for searching words with matching definition or word text.
  Future<Response> getWordsWithHttpInfo(num version, int accountId, String sortField, bool descending, bool activeOnly, int start, int limit, { String? keyword, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/game/word/search'
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
      queryParams.addAll(_queryParams('', 'activeOnly', activeOnly));
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

  /// Search Words
  ///
  /// Search for words by the given params.
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] accountId (required):
  ///   The logged in user.
  ///
  /// * [String] sortField (required):
  ///   The column to sort the search on
  ///
  /// * [bool] descending (required):
  ///   The order to return the search results
  ///
  /// * [bool] activeOnly (required):
  ///   Return only active results if set to true.
  ///
  /// * [int] start (required):
  ///   The record to begin the return set on.
  ///
  /// * [int] limit (required):
  ///   The number of records to return.
  ///
  /// * [String] keyword:
  ///   The keyword for searching words with matching definition or word text.
  Future<List<WordzWordResponse>?> getWords(num version, int accountId, String sortField, bool descending, bool activeOnly, int start, int limit, { String? keyword, }) async {
    final response = await getWordsWithHttpInfo(version, accountId, sortField, descending, activeOnly, start, limit,  keyword: keyword, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<WordzWordResponse>') as List)
        .cast<WordzWordResponse>()
        .toList(growable: false);

    }
    return null;
  }

  /// Update Word
  ///
  /// Update a word by the given params.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] wordId (required):
  ///   The id of the word to update.
  ///
  /// * [int] accountId (required):
  ///   The logged in user.
  ///
  /// * [int] ticketCount (required):
  ///   The number of tickets to reward
  ///
  /// * [String] wordText:
  ///   The text for the word
  ///
  /// * [String] definition:
  ///   The definition of the word.
  ///
  /// * [int] assetId:
  ///   The asset id of the word.
  ///
  /// * [bool] active:
  ///   If true set the word to active.
  ///
  /// * [bool] allocateTickets:
  ///   If true then scoring will give tickets.
  ///
  /// * [String] ticketType:
  ///   The type of ticket to reward, null means default type
  ///
  /// * [int] points:
  ///   The number of points to award for completing a mission
  Future<Response> updateWordWithHttpInfo(num version, int wordId, int accountId, int ticketCount, { String? wordText, String? definition, int? assetId, bool? active, bool? allocateTickets, String? ticketType, int? points, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/game/word/update'
      .replaceAll('{version}', version.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'wordId', wordId));
      queryParams.addAll(_queryParams('', 'accountId', accountId));
    if (wordText != null) {
      queryParams.addAll(_queryParams('', 'wordText', wordText));
    }
    if (definition != null) {
      queryParams.addAll(_queryParams('', 'definition', definition));
    }
    if (assetId != null) {
      queryParams.addAll(_queryParams('', 'assetId', assetId));
    }
    if (active != null) {
      queryParams.addAll(_queryParams('', 'active', active));
    }
    if (allocateTickets != null) {
      queryParams.addAll(_queryParams('', 'allocateTickets', allocateTickets));
    }
      queryParams.addAll(_queryParams('', 'ticketCount', ticketCount));
    if (ticketType != null) {
      queryParams.addAll(_queryParams('', 'ticketType', ticketType));
    }
    if (points != null) {
      queryParams.addAll(_queryParams('', 'points', points));
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

  /// Update Word
  ///
  /// Update a word by the given params.
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] wordId (required):
  ///   The id of the word to update.
  ///
  /// * [int] accountId (required):
  ///   The logged in user.
  ///
  /// * [int] ticketCount (required):
  ///   The number of tickets to reward
  ///
  /// * [String] wordText:
  ///   The text for the word
  ///
  /// * [String] definition:
  ///   The definition of the word.
  ///
  /// * [int] assetId:
  ///   The asset id of the word.
  ///
  /// * [bool] active:
  ///   If true set the word to active.
  ///
  /// * [bool] allocateTickets:
  ///   If true then scoring will give tickets.
  ///
  /// * [String] ticketType:
  ///   The type of ticket to reward, null means default type
  ///
  /// * [int] points:
  ///   The number of points to award for completing a mission
  Future<WordzWordResponse?> updateWord(num version, int wordId, int accountId, int ticketCount, { String? wordText, String? definition, int? assetId, bool? active, bool? allocateTickets, String? ticketType, int? points, }) async {
    final response = await updateWordWithHttpInfo(version, wordId, accountId, ticketCount,  wordText: wordText, definition: definition, assetId: assetId, active: active, allocateTickets: allocateTickets, ticketType: ticketType, points: points, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'WordzWordResponse',) as WordzWordResponse;
    
    }
    return null;
  }
}
