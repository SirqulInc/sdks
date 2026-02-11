//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class QuestionApi {
  QuestionApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Create Question
  ///
  /// Create a question and related answers by the given params.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] accountId (required):
  ///   the id of the logged in user
  ///
  /// * [String] question (required):
  ///   the text of the question
  ///
  /// * [String] answers (required):
  ///   ```json [   {     \"text\": \"1942\",     \"image\": 123,     \"videoURL\": \"http://www.here.com\",     \"correct\": true   },   {     \"text\": \"1943\",     \"image\": 124,     \"videoURL\": \"http://www.there.com\",     \"correct\": false   } ] ``` 
  ///
  /// * [bool] active (required):
  ///   If true set the question to active. Default to false.
  ///
  /// * [bool] allocateTickets (required):
  ///   If true then scoring will give tickets. Default to false.
  ///
  /// * [int] ticketCount (required):
  ///   The number of tickets to reward
  ///
  /// * [String] tags:
  ///   The tags of the question for search.
  ///
  /// * [String] videoURL:
  ///   The video link for the question.
  ///
  /// * [int] assetId:
  ///   The asset id of the question.
  ///
  /// * [String] ticketType:
  ///   The type of ticket to reward, null means default type
  ///
  /// * [int] points:
  ///   The number of points to award for completing a mission
  Future<Response> createQuestionWithHttpInfo(int accountId, String question, String answers, bool active, bool allocateTickets, int ticketCount, { String? tags, String? videoURL, int? assetId, String? ticketType, int? points, }) async {
    // ignore: prefer_const_declarations
    final path = r'/game/question/create';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'accountId', accountId));
      queryParams.addAll(_queryParams('', 'question', question));
      queryParams.addAll(_queryParams('', 'answers', answers));
    if (tags != null) {
      queryParams.addAll(_queryParams('', 'tags', tags));
    }
    if (videoURL != null) {
      queryParams.addAll(_queryParams('', 'videoURL', videoURL));
    }
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

  /// Create Question
  ///
  /// Create a question and related answers by the given params.
  ///
  /// Parameters:
  ///
  /// * [int] accountId (required):
  ///   the id of the logged in user
  ///
  /// * [String] question (required):
  ///   the text of the question
  ///
  /// * [String] answers (required):
  ///   ```json [   {     \"text\": \"1942\",     \"image\": 123,     \"videoURL\": \"http://www.here.com\",     \"correct\": true   },   {     \"text\": \"1943\",     \"image\": 124,     \"videoURL\": \"http://www.there.com\",     \"correct\": false   } ] ``` 
  ///
  /// * [bool] active (required):
  ///   If true set the question to active. Default to false.
  ///
  /// * [bool] allocateTickets (required):
  ///   If true then scoring will give tickets. Default to false.
  ///
  /// * [int] ticketCount (required):
  ///   The number of tickets to reward
  ///
  /// * [String] tags:
  ///   The tags of the question for search.
  ///
  /// * [String] videoURL:
  ///   The video link for the question.
  ///
  /// * [int] assetId:
  ///   The asset id of the question.
  ///
  /// * [String] ticketType:
  ///   The type of ticket to reward, null means default type
  ///
  /// * [int] points:
  ///   The number of points to award for completing a mission
  Future<QuestionResponse?> createQuestion(int accountId, String question, String answers, bool active, bool allocateTickets, int ticketCount, { String? tags, String? videoURL, int? assetId, String? ticketType, int? points, }) async {
    final response = await createQuestionWithHttpInfo(accountId, question, answers, active, allocateTickets, ticketCount,  tags: tags, videoURL: videoURL, assetId: assetId, ticketType: ticketType, points: points, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'QuestionResponse',) as QuestionResponse;
    
    }
    return null;
  }

  /// Delete Question
  ///
  /// Delete a question by the given questionId. The accountId given needs to be the owner or executive to delete.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] questionId (required):
  ///   the id of the question to delete
  ///
  /// * [int] accountId (required):
  ///   the id of the account that can execute this request
  Future<Response> deleteQuestionWithHttpInfo(int questionId, int accountId,) async {
    // ignore: prefer_const_declarations
    final path = r'/game/question/delete';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'questionId', questionId));
      queryParams.addAll(_queryParams('', 'accountId', accountId));

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

  /// Delete Question
  ///
  /// Delete a question by the given questionId. The accountId given needs to be the owner or executive to delete.
  ///
  /// Parameters:
  ///
  /// * [int] questionId (required):
  ///   the id of the question to delete
  ///
  /// * [int] accountId (required):
  ///   the id of the account that can execute this request
  Future<SirqulResponse?> deleteQuestion(int questionId, int accountId,) async {
    final response = await deleteQuestionWithHttpInfo(questionId, accountId,);
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

  /// Get Question
  ///
  /// Get a question by the given id.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] questionId (required):
  ///   the id of the question to get
  ///
  /// * [int] accountId (required):
  ///   the id of the account that can make this request
  Future<Response> getQuestionWithHttpInfo(int questionId, int accountId,) async {
    // ignore: prefer_const_declarations
    final path = r'/game/question/get';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'questionId', questionId));
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

  /// Get Question
  ///
  /// Get a question by the given id.
  ///
  /// Parameters:
  ///
  /// * [int] questionId (required):
  ///   the id of the question to get
  ///
  /// * [int] accountId (required):
  ///   the id of the account that can make this request
  Future<QuestionResponse?> getQuestion(int questionId, int accountId,) async {
    final response = await getQuestionWithHttpInfo(questionId, accountId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'QuestionResponse',) as QuestionResponse;
    
    }
    return null;
  }

  /// Search Questions
  ///
  /// Search for questions by the given params.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
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
  ///   The keyword for searching questions with matching tags or question text.
  Future<Response> searchQuestionsWithHttpInfo(int accountId, String sortField, bool descending, bool activeOnly, int start, int limit, { String? keyword, }) async {
    // ignore: prefer_const_declarations
    final path = r'/game/question/search';

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

  /// Search Questions
  ///
  /// Search for questions by the given params.
  ///
  /// Parameters:
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
  ///   The keyword for searching questions with matching tags or question text.
  Future<List<QuestionResponse>?> searchQuestions(int accountId, String sortField, bool descending, bool activeOnly, int start, int limit, { String? keyword, }) async {
    final response = await searchQuestionsWithHttpInfo(accountId, sortField, descending, activeOnly, start, limit,  keyword: keyword, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<QuestionResponse>') as List)
        .cast<QuestionResponse>()
        .toList(growable: false);

    }
    return null;
  }

  /// Update Question
  ///
  /// Update a question and related answers.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] questionId (required):
  ///   The id of the question to update.
  ///
  /// * [int] accountId (required):
  ///   The logged in user.
  ///
  /// * [int] ticketCount (required):
  ///   The number of tickets to reward
  ///
  /// * [String] question:
  ///   The text of the question.
  ///
  /// * [String] answers:
  ///   The json representations of answers for the question.
  ///
  /// * [String] tags:
  ///   The tags of the question for search.
  ///
  /// * [String] videoURL:
  ///   The video link for the question.
  ///
  /// * [int] assetId:
  ///   The asset id of the question.
  ///
  /// * [bool] active:
  ///   If true set the question to active.
  ///
  /// * [bool] allocateTickets:
  ///   If true then scoring will give tickets.
  ///
  /// * [String] ticketType:
  ///   The type of ticket to reward, null means default type
  ///
  /// * [int] points:
  ///   The number of points to award for completing a mission
  Future<Response> updateQuestionWithHttpInfo(int questionId, int accountId, int ticketCount, { String? question, String? answers, String? tags, String? videoURL, int? assetId, bool? active, bool? allocateTickets, String? ticketType, int? points, }) async {
    // ignore: prefer_const_declarations
    final path = r'/game/question/update';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'questionId', questionId));
      queryParams.addAll(_queryParams('', 'accountId', accountId));
    if (question != null) {
      queryParams.addAll(_queryParams('', 'question', question));
    }
    if (answers != null) {
      queryParams.addAll(_queryParams('', 'answers', answers));
    }
    if (tags != null) {
      queryParams.addAll(_queryParams('', 'tags', tags));
    }
    if (videoURL != null) {
      queryParams.addAll(_queryParams('', 'videoURL', videoURL));
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

  /// Update Question
  ///
  /// Update a question and related answers.
  ///
  /// Parameters:
  ///
  /// * [int] questionId (required):
  ///   The id of the question to update.
  ///
  /// * [int] accountId (required):
  ///   The logged in user.
  ///
  /// * [int] ticketCount (required):
  ///   The number of tickets to reward
  ///
  /// * [String] question:
  ///   The text of the question.
  ///
  /// * [String] answers:
  ///   The json representations of answers for the question.
  ///
  /// * [String] tags:
  ///   The tags of the question for search.
  ///
  /// * [String] videoURL:
  ///   The video link for the question.
  ///
  /// * [int] assetId:
  ///   The asset id of the question.
  ///
  /// * [bool] active:
  ///   If true set the question to active.
  ///
  /// * [bool] allocateTickets:
  ///   If true then scoring will give tickets.
  ///
  /// * [String] ticketType:
  ///   The type of ticket to reward, null means default type
  ///
  /// * [int] points:
  ///   The number of points to award for completing a mission
  Future<QuestionResponse?> updateQuestion(int questionId, int accountId, int ticketCount, { String? question, String? answers, String? tags, String? videoURL, int? assetId, bool? active, bool? allocateTickets, String? ticketType, int? points, }) async {
    final response = await updateQuestionWithHttpInfo(questionId, accountId, ticketCount,  question: question, answers: answers, tags: tags, videoURL: videoURL, assetId: assetId, active: active, allocateTickets: allocateTickets, ticketType: ticketType, points: points, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'QuestionResponse',) as QuestionResponse;
    
    }
    return null;
  }
}
