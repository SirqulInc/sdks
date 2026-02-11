//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class OrsonApi {
  OrsonApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Add Movie
  ///
  /// Add a movie to be indexed for Topics. Indexing a movie analyses the content and incorporates it into the topics model for future /topics calls. This does not store the movie file long-term.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] accountId (required):
  ///   Sirqul Account Id
  ///
  /// * [String] movieName (required):
  ///   Movie Name
  ///
  /// * [String] thirdPartyAccountId:
  ///   A third-party account id that is meaningful to your systems
  ///
  /// * [String] tags:
  ///   A user defined list (comma-delimited) of tags associated with the movie
  ///
  /// * [MultipartFile] file:
  ///   An uploaded recording to analyze (Currently limited to 10MB)
  ///
  /// * [String] url:
  ///   A recording file to download and analyze (Size limit: 1GB)
  ///
  /// * [String] callback:
  ///   When provided, Orson will return a 202 and POST the results to this URL when complete instead of holding the Request open
  Future<Response> addMovieWithHttpInfo(int accountId, String movieName, { String? thirdPartyAccountId, String? tags, MultipartFile? file, String? url, String? callback, }) async {
    // ignore: prefer_const_declarations
    final path = r'/orson/ai/addMovie';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'accountId', accountId));
    if (thirdPartyAccountId != null) {
      queryParams.addAll(_queryParams('', 'thirdPartyAccountId', thirdPartyAccountId));
    }
    if (tags != null) {
      queryParams.addAll(_queryParams('', 'tags', tags));
    }
      queryParams.addAll(_queryParams('', 'movieName', movieName));
    if (file != null) {
      queryParams.addAll(_queryParams('', 'file', file));
    }
    if (url != null) {
      queryParams.addAll(_queryParams('', 'url', url));
    }
    if (callback != null) {
      queryParams.addAll(_queryParams('', 'callback', callback));
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

  /// Add Movie
  ///
  /// Add a movie to be indexed for Topics. Indexing a movie analyses the content and incorporates it into the topics model for future /topics calls. This does not store the movie file long-term.
  ///
  /// Parameters:
  ///
  /// * [int] accountId (required):
  ///   Sirqul Account Id
  ///
  /// * [String] movieName (required):
  ///   Movie Name
  ///
  /// * [String] thirdPartyAccountId:
  ///   A third-party account id that is meaningful to your systems
  ///
  /// * [String] tags:
  ///   A user defined list (comma-delimited) of tags associated with the movie
  ///
  /// * [MultipartFile] file:
  ///   An uploaded recording to analyze (Currently limited to 10MB)
  ///
  /// * [String] url:
  ///   A recording file to download and analyze (Size limit: 1GB)
  ///
  /// * [String] callback:
  ///   When provided, Orson will return a 202 and POST the results to this URL when complete instead of holding the Request open
  Future<OrsonAiAddMovieResponse?> addMovie(int accountId, String movieName, { String? thirdPartyAccountId, String? tags, MultipartFile? file, String? url, String? callback, }) async {
    final response = await addMovieWithHttpInfo(accountId, movieName,  thirdPartyAccountId: thirdPartyAccountId, tags: tags, file: file, url: url, callback: callback, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'OrsonAiAddMovieResponse',) as OrsonAiAddMovieResponse;
    
    }
    return null;
  }

  /// Search Docs
  ///
  /// Takes in a text string representing one or more sentences and it returns a list of documents which are related to the provided document.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] accountId (required):
  ///   Sirqul Account Id
  ///
  /// * [String] doc (required):
  ///   Doc
  ///
  /// * [bool] returnTopics:
  ///   Return Topics
  ///
  /// * [int] limit:
  ///   Limit
  ///
  /// * [int] offset:
  ///   Offset
  Future<Response> aiDocsWithHttpInfo(int accountId, String doc, { bool? returnTopics, int? limit, int? offset, }) async {
    // ignore: prefer_const_declarations
    final path = r'/orson/ai/docs';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'accountId', accountId));
      queryParams.addAll(_queryParams('', 'doc', doc));
    if (returnTopics != null) {
      queryParams.addAll(_queryParams('', 'return_topics', returnTopics));
    }
    if (limit != null) {
      queryParams.addAll(_queryParams('', 'limit', limit));
    }
    if (offset != null) {
      queryParams.addAll(_queryParams('', 'offset', offset));
    }

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

  /// Search Docs
  ///
  /// Takes in a text string representing one or more sentences and it returns a list of documents which are related to the provided document.
  ///
  /// Parameters:
  ///
  /// * [int] accountId (required):
  ///   Sirqul Account Id
  ///
  /// * [String] doc (required):
  ///   Doc
  ///
  /// * [bool] returnTopics:
  ///   Return Topics
  ///
  /// * [int] limit:
  ///   Limit
  ///
  /// * [int] offset:
  ///   Offset
  Future<OrsonAiProtoResponse?> aiDocs(int accountId, String doc, { bool? returnTopics, int? limit, int? offset, }) async {
    final response = await aiDocsWithHttpInfo(accountId, doc,  returnTopics: returnTopics, limit: limit, offset: offset, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'OrsonAiProtoResponse',) as OrsonAiProtoResponse;
    
    }
    return null;
  }

  /// Find images
  ///
  /// Returns a list of URIs of images that match the text.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] accountId (required):
  ///   Sirqul Account Id
  ///
  /// * [String] text (required):
  ///   Text
  ///
  /// * [String] parseFlag:
  ///   Parse Flag
  ///
  /// * [String] fetchFlag:
  ///   Fetch Flag
  ///
  /// * [String] size:
  ///   Size
  Future<Response> aiFindImagesWithHttpInfo(int accountId, String text, { String? parseFlag, String? fetchFlag, String? size, }) async {
    // ignore: prefer_const_declarations
    final path = r'/orson/ai/img';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'accountId', accountId));
      queryParams.addAll(_queryParams('', 'text', text));
    if (parseFlag != null) {
      queryParams.addAll(_queryParams('', 'parse_flag', parseFlag));
    }
    if (fetchFlag != null) {
      queryParams.addAll(_queryParams('', 'fetch_flag', fetchFlag));
    }
    if (size != null) {
      queryParams.addAll(_queryParams('', 'size', size));
    }

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

  /// Find images
  ///
  /// Returns a list of URIs of images that match the text.
  ///
  /// Parameters:
  ///
  /// * [int] accountId (required):
  ///   Sirqul Account Id
  ///
  /// * [String] text (required):
  ///   Text
  ///
  /// * [String] parseFlag:
  ///   Parse Flag
  ///
  /// * [String] fetchFlag:
  ///   Fetch Flag
  ///
  /// * [String] size:
  ///   Size
  Future<OrsonAiProtoResponse?> aiFindImages(int accountId, String text, { String? parseFlag, String? fetchFlag, String? size, }) async {
    final response = await aiFindImagesWithHttpInfo(accountId, text,  parseFlag: parseFlag, fetchFlag: fetchFlag, size: size, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'OrsonAiProtoResponse',) as OrsonAiProtoResponse;
    
    }
    return null;
  }

  /// Search Tags
  ///
  /// Search the tags column of user provided tags using this endpoint.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] accountId (required):
  ///   Sirqul Account Id
  ///
  /// * [String] tags (required):
  ///   Tags
  ///
  /// * [String] conditional:
  ///   Conditional
  ///
  /// * [int] limit:
  ///   Limit
  ///
  /// * [int] offset:
  ///   Offset
  Future<Response> aiTagsWithHttpInfo(int accountId, String tags, { String? conditional, int? limit, int? offset, }) async {
    // ignore: prefer_const_declarations
    final path = r'/orson/ai/tags';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'accountId', accountId));
      queryParams.addAll(_queryParams('', 'tags', tags));
    if (conditional != null) {
      queryParams.addAll(_queryParams('', 'conditional', conditional));
    }
    if (limit != null) {
      queryParams.addAll(_queryParams('', 'limit', limit));
    }
    if (offset != null) {
      queryParams.addAll(_queryParams('', 'offset', offset));
    }

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

  /// Search Tags
  ///
  /// Search the tags column of user provided tags using this endpoint.
  ///
  /// Parameters:
  ///
  /// * [int] accountId (required):
  ///   Sirqul Account Id
  ///
  /// * [String] tags (required):
  ///   Tags
  ///
  /// * [String] conditional:
  ///   Conditional
  ///
  /// * [int] limit:
  ///   Limit
  ///
  /// * [int] offset:
  ///   Offset
  Future<OrsonAiProtoResponse?> aiTags(int accountId, String tags, { String? conditional, int? limit, int? offset, }) async {
    final response = await aiTagsWithHttpInfo(accountId, tags,  conditional: conditional, limit: limit, offset: offset, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'OrsonAiProtoResponse',) as OrsonAiProtoResponse;
    
    }
    return null;
  }

  /// Search Text
  ///
  /// Search the movie text column of movie text using this endpoint.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] accountId (required):
  ///   Sirqul Account Id
  ///
  /// * [String] terms (required):
  ///   Terms
  ///
  /// * [String] conditional:
  ///   Conditional
  ///
  /// * [int] limit:
  ///   Limit
  ///
  /// * [int] offset:
  ///   Offset
  Future<Response> aiTextWithHttpInfo(int accountId, String terms, { String? conditional, int? limit, int? offset, }) async {
    // ignore: prefer_const_declarations
    final path = r'/orson/ai/text';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'accountId', accountId));
      queryParams.addAll(_queryParams('', 'terms', terms));
    if (conditional != null) {
      queryParams.addAll(_queryParams('', 'conditional', conditional));
    }
    if (limit != null) {
      queryParams.addAll(_queryParams('', 'limit', limit));
    }
    if (offset != null) {
      queryParams.addAll(_queryParams('', 'offset', offset));
    }

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

  /// Search Text
  ///
  /// Search the movie text column of movie text using this endpoint.
  ///
  /// Parameters:
  ///
  /// * [int] accountId (required):
  ///   Sirqul Account Id
  ///
  /// * [String] terms (required):
  ///   Terms
  ///
  /// * [String] conditional:
  ///   Conditional
  ///
  /// * [int] limit:
  ///   Limit
  ///
  /// * [int] offset:
  ///   Offset
  Future<OrsonAiProtoResponse?> aiText(int accountId, String terms, { String? conditional, int? limit, int? offset, }) async {
    final response = await aiTextWithHttpInfo(accountId, terms,  conditional: conditional, limit: limit, offset: offset, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'OrsonAiProtoResponse',) as OrsonAiProtoResponse;
    
    }
    return null;
  }

  /// Batch Analysis
  ///
  /// Run several types of analysis on an audio or video file in a single API call, instead of calling several operations for the same file..
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] accountId (required):
  ///   Sirqul Account Id
  ///
  /// * [String] thirdPartyAccountId:
  ///   A third-party account id that is meaningful to your systems
  ///
  /// * [int] limit:
  ///   The number of topics to return
  ///
  /// * [String] operations:
  ///   The comma-delimited list of A/V batch analysis operations to run on this file. Possible values: Transcript,Topics,Emotions
  ///
  /// * [MultipartFile] file:
  ///   An uploaded recording to analyze (Currently limited to 10MB)
  ///
  /// * [String] url:
  ///   A recording file to download and analyze (Size limit: 1GB)
  ///
  /// * [String] callback:
  ///   When provided, Orson will return a 202 and POST the results to this URL when complete instead of holding the Request open
  Future<Response> batchWithHttpInfo(int accountId, { String? thirdPartyAccountId, int? limit, String? operations, MultipartFile? file, String? url, String? callback, }) async {
    // ignore: prefer_const_declarations
    final path = r'/orson/ai/batch';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'accountId', accountId));
    if (thirdPartyAccountId != null) {
      queryParams.addAll(_queryParams('', 'thirdPartyAccountId', thirdPartyAccountId));
    }
    if (limit != null) {
      queryParams.addAll(_queryParams('', 'limit', limit));
    }
    if (operations != null) {
      queryParams.addAll(_queryParams('', 'operations', operations));
    }
    if (file != null) {
      queryParams.addAll(_queryParams('', 'file', file));
    }
    if (url != null) {
      queryParams.addAll(_queryParams('', 'url', url));
    }
    if (callback != null) {
      queryParams.addAll(_queryParams('', 'callback', callback));
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

  /// Batch Analysis
  ///
  /// Run several types of analysis on an audio or video file in a single API call, instead of calling several operations for the same file..
  ///
  /// Parameters:
  ///
  /// * [int] accountId (required):
  ///   Sirqul Account Id
  ///
  /// * [String] thirdPartyAccountId:
  ///   A third-party account id that is meaningful to your systems
  ///
  /// * [int] limit:
  ///   The number of topics to return
  ///
  /// * [String] operations:
  ///   The comma-delimited list of A/V batch analysis operations to run on this file. Possible values: Transcript,Topics,Emotions
  ///
  /// * [MultipartFile] file:
  ///   An uploaded recording to analyze (Currently limited to 10MB)
  ///
  /// * [String] url:
  ///   A recording file to download and analyze (Size limit: 1GB)
  ///
  /// * [String] callback:
  ///   When provided, Orson will return a 202 and POST the results to this URL when complete instead of holding the Request open
  Future<OrsonAiBatchResponse?> batch(int accountId, { String? thirdPartyAccountId, int? limit, String? operations, MultipartFile? file, String? url, String? callback, }) async {
    final response = await batchWithHttpInfo(accountId,  thirdPartyAccountId: thirdPartyAccountId, limit: limit, operations: operations, file: file, url: url, callback: callback, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'OrsonAiBatchResponse',) as OrsonAiBatchResponse;
    
    }
    return null;
  }

  /// Creates an instant episode
  ///
  /// Creates an instant episode for a given StoryStrip by providing all necessary inputs, interview recordings, and pictures, kicking off a render immediately.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] accountId (required):
  ///   Sirqul Account Id
  ///
  /// * [String] data (required):
  ///   Request Data String
  Future<Response> createInstantEpisodeWithHttpInfo(int accountId, String data,) async {
    // ignore: prefer_const_declarations
    final path = r'/orson/stories/episodes/instant';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'accountId', accountId));
      queryParams.addAll(_queryParams('', 'data', data));

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

  /// Creates an instant episode
  ///
  /// Creates an instant episode for a given StoryStrip by providing all necessary inputs, interview recordings, and pictures, kicking off a render immediately.
  ///
  /// Parameters:
  ///
  /// * [int] accountId (required):
  ///   Sirqul Account Id
  ///
  /// * [String] data (required):
  ///   Request Data String
  Future<OrsonEpisodeResponse?> createInstantEpisode(int accountId, String data,) async {
    final response = await createInstantEpisodeWithHttpInfo(accountId, data,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'OrsonEpisodeResponse',) as OrsonEpisodeResponse;
    
    }
    return null;
  }

  /// Create VoiceCanvas images
  ///
  /// Create VoiceCanvas images for provided text, file upload, or file URL
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] accountId (required):
  ///   Sirqul Account Id
  ///
  /// * [String] dimensions (required):
  ///   Enum: \"256x256\" \"512x512\" \"1024x1024\"
  ///
  /// * [String] thirdPartyAccountId:
  ///   A third-party account id that is meaningful to your systems
  ///
  /// * [String] text:
  ///   Provide a transcript or previously extracted topics for image generation
  ///
  /// * [MultipartFile] file:
  ///   An uploaded recording to analyze (Currently limited to 10MB)
  ///
  /// * [String] url:
  ///   A recording file to download and analyze (Size limit: 1GB)
  ///
  /// * [bool] parseFlag:
  ///   When false, uses the raw value from text instead of identifying topics to fetch/generate from
  ///
  /// * [bool] fetchFlag:
  ///   When true, fetches images instead of generating them
  ///
  /// * [String] callback:
  ///   When provided, Orson will return a 202 and POST the results to this URL when complete instead of holding the Request open
  Future<Response> createVoiceCanvasWithHttpInfo(int accountId, String dimensions, { String? thirdPartyAccountId, String? text, MultipartFile? file, String? url, bool? parseFlag, bool? fetchFlag, String? callback, }) async {
    // ignore: prefer_const_declarations
    final path = r'/orson/ai/voiceCanvas';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'accountId', accountId));
    if (thirdPartyAccountId != null) {
      queryParams.addAll(_queryParams('', 'thirdPartyAccountId', thirdPartyAccountId));
    }
      queryParams.addAll(_queryParams('', 'dimensions', dimensions));
    if (text != null) {
      queryParams.addAll(_queryParams('', 'text', text));
    }
    if (file != null) {
      queryParams.addAll(_queryParams('', 'file', file));
    }
    if (url != null) {
      queryParams.addAll(_queryParams('', 'url', url));
    }
    if (parseFlag != null) {
      queryParams.addAll(_queryParams('', 'parseFlag', parseFlag));
    }
    if (fetchFlag != null) {
      queryParams.addAll(_queryParams('', 'fetchFlag', fetchFlag));
    }
    if (callback != null) {
      queryParams.addAll(_queryParams('', 'callback', callback));
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

  /// Create VoiceCanvas images
  ///
  /// Create VoiceCanvas images for provided text, file upload, or file URL
  ///
  /// Parameters:
  ///
  /// * [int] accountId (required):
  ///   Sirqul Account Id
  ///
  /// * [String] dimensions (required):
  ///   Enum: \"256x256\" \"512x512\" \"1024x1024\"
  ///
  /// * [String] thirdPartyAccountId:
  ///   A third-party account id that is meaningful to your systems
  ///
  /// * [String] text:
  ///   Provide a transcript or previously extracted topics for image generation
  ///
  /// * [MultipartFile] file:
  ///   An uploaded recording to analyze (Currently limited to 10MB)
  ///
  /// * [String] url:
  ///   A recording file to download and analyze (Size limit: 1GB)
  ///
  /// * [bool] parseFlag:
  ///   When false, uses the raw value from text instead of identifying topics to fetch/generate from
  ///
  /// * [bool] fetchFlag:
  ///   When true, fetches images instead of generating them
  ///
  /// * [String] callback:
  ///   When provided, Orson will return a 202 and POST the results to this URL when complete instead of holding the Request open
  Future<OrsonAiVoiceCanvasResponse?> createVoiceCanvas(int accountId, String dimensions, { String? thirdPartyAccountId, String? text, MultipartFile? file, String? url, bool? parseFlag, bool? fetchFlag, String? callback, }) async {
    final response = await createVoiceCanvasWithHttpInfo(accountId, dimensions,  thirdPartyAccountId: thirdPartyAccountId, text: text, file: file, url: url, parseFlag: parseFlag, fetchFlag: fetchFlag, callback: callback, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'OrsonAiVoiceCanvasResponse',) as OrsonAiVoiceCanvasResponse;
    
    }
    return null;
  }

  /// Detect emotions
  ///
  /// Detects emotions in an audio or video recording.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] accountId (required):
  ///   Sirqul Account Id
  ///
  /// * [String] thirdPartyAccountId:
  ///   A third-party account id that is meaningful to your systems
  ///
  /// * [MultipartFile] file:
  ///   An uploaded recording to analyze (Currently limited to 10MB)
  ///
  /// * [String] url:
  ///   A recording file to download and analyze (Size limit: 1GB)
  ///
  /// * [String] callback:
  ///   When provided, Orson will return a 202 and POST the results to this URL when complete instead of holding the Request open
  Future<Response> emotionWithHttpInfo(int accountId, { String? thirdPartyAccountId, MultipartFile? file, String? url, String? callback, }) async {
    // ignore: prefer_const_declarations
    final path = r'/orson/ai/emotion';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'accountId', accountId));
    if (thirdPartyAccountId != null) {
      queryParams.addAll(_queryParams('', 'thirdPartyAccountId', thirdPartyAccountId));
    }
    if (file != null) {
      queryParams.addAll(_queryParams('', 'file', file));
    }
    if (url != null) {
      queryParams.addAll(_queryParams('', 'url', url));
    }
    if (callback != null) {
      queryParams.addAll(_queryParams('', 'callback', callback));
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

  /// Detect emotions
  ///
  /// Detects emotions in an audio or video recording.
  ///
  /// Parameters:
  ///
  /// * [int] accountId (required):
  ///   Sirqul Account Id
  ///
  /// * [String] thirdPartyAccountId:
  ///   A third-party account id that is meaningful to your systems
  ///
  /// * [MultipartFile] file:
  ///   An uploaded recording to analyze (Currently limited to 10MB)
  ///
  /// * [String] url:
  ///   A recording file to download and analyze (Size limit: 1GB)
  ///
  /// * [String] callback:
  ///   When provided, Orson will return a 202 and POST the results to this URL when complete instead of holding the Request open
  Future<OrsonAiEmotionsResponse?> emotion(int accountId, { String? thirdPartyAccountId, MultipartFile? file, String? url, String? callback, }) async {
    final response = await emotionWithHttpInfo(accountId,  thirdPartyAccountId: thirdPartyAccountId, file: file, url: url, callback: callback, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'OrsonAiEmotionsResponse',) as OrsonAiEmotionsResponse;
    
    }
    return null;
  }

  /// Get Add Movie Result
  ///
  /// Get the result of an in progress Add Movie request from an earlier POST.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] requestId (required):
  ///   Orson Request Id
  ///
  /// * [int] accountId (required):
  ///   Sirqul Account Id
  Future<Response> getAddMovieResultWithHttpInfo(String requestId, int accountId,) async {
    // ignore: prefer_const_declarations
    final path = r'/orson/ai/addMovie/{requestId}'
      .replaceAll('{requestId}', requestId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

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

  /// Get Add Movie Result
  ///
  /// Get the result of an in progress Add Movie request from an earlier POST.
  ///
  /// Parameters:
  ///
  /// * [String] requestId (required):
  ///   Orson Request Id
  ///
  /// * [int] accountId (required):
  ///   Sirqul Account Id
  Future<OrsonAiAddMovieResponse?> getAddMovieResult(String requestId, int accountId,) async {
    final response = await getAddMovieResultWithHttpInfo(requestId, accountId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'OrsonAiAddMovieResponse',) as OrsonAiAddMovieResponse;
    
    }
    return null;
  }

  /// Get Batch Analysis Results
  ///
  /// Gets the completed Video Batch results, if done, or an error or status update if not.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] requestId (required):
  ///   Orson Request Id
  ///
  /// * [int] accountId (required):
  ///   Sirqul Account Id
  Future<Response> getBatchWithHttpInfo(String requestId, int accountId,) async {
    // ignore: prefer_const_declarations
    final path = r'/orson/ai/batch/{requestId}'
      .replaceAll('{requestId}', requestId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

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

  /// Get Batch Analysis Results
  ///
  /// Gets the completed Video Batch results, if done, or an error or status update if not.
  ///
  /// Parameters:
  ///
  /// * [String] requestId (required):
  ///   Orson Request Id
  ///
  /// * [int] accountId (required):
  ///   Sirqul Account Id
  Future<OrsonAiBatchResponse?> getBatch(String requestId, int accountId,) async {
    final response = await getBatchWithHttpInfo(requestId, accountId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'OrsonAiBatchResponse',) as OrsonAiBatchResponse;
    
    }
    return null;
  }

  /// Get Emotion Results
  ///
  /// Checks the Emotion analysis and returns in progress, results, or error.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] requestId (required):
  ///   Orson Request Id
  ///
  /// * [int] accountId (required):
  ///   Sirqul Account Id
  Future<Response> getEmotionWithHttpInfo(String requestId, int accountId,) async {
    // ignore: prefer_const_declarations
    final path = r'/orson/ai/emotion/{requestId}'
      .replaceAll('{requestId}', requestId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

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

  /// Get Emotion Results
  ///
  /// Checks the Emotion analysis and returns in progress, results, or error.
  ///
  /// Parameters:
  ///
  /// * [String] requestId (required):
  ///   Orson Request Id
  ///
  /// * [int] accountId (required):
  ///   Sirqul Account Id
  Future<OrsonAiEmotionsResponse?> getEmotion(String requestId, int accountId,) async {
    final response = await getEmotionWithHttpInfo(requestId, accountId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'OrsonAiEmotionsResponse',) as OrsonAiEmotionsResponse;
    
    }
    return null;
  }

  /// Check episode status
  ///
  /// Gets a summary of the episode's status, including any renders.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] episodeId (required):
  ///   Episode ID
  ///
  /// * [int] accountId (required):
  ///   Sirqul Account Id
  Future<Response> getEpisodeStatusWithHttpInfo(int episodeId, int accountId,) async {
    // ignore: prefer_const_declarations
    final path = r'/orson/stories/episodes/{episodeId}/status'
      .replaceAll('{episodeId}', episodeId.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

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

  /// Check episode status
  ///
  /// Gets a summary of the episode's status, including any renders.
  ///
  /// Parameters:
  ///
  /// * [int] episodeId (required):
  ///   Episode ID
  ///
  /// * [int] accountId (required):
  ///   Sirqul Account Id
  Future<OrsonEpisodeResponse?> getEpisodeStatus(int episodeId, int accountId,) async {
    final response = await getEpisodeStatusWithHttpInfo(episodeId, accountId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'OrsonEpisodeResponse',) as OrsonEpisodeResponse;
    
    }
    return null;
  }

  /// Check episode status
  ///
  /// Gets a summary of the episode's status, including any renders.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] renderId (required):
  ///   Render ID
  ///
  /// * [int] accountId (required):
  ///   Sirqul Account Id
  Future<Response> getRenderStatusWithHttpInfo(String renderId, int accountId,) async {
    // ignore: prefer_const_declarations
    final path = r'/orson/stories/renders/{renderId}/status'
      .replaceAll('{renderId}', renderId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

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

  /// Check episode status
  ///
  /// Gets a summary of the episode's status, including any renders.
  ///
  /// Parameters:
  ///
  /// * [String] renderId (required):
  ///   Render ID
  ///
  /// * [int] accountId (required):
  ///   Sirqul Account Id
  Future<OrsonRenderResponse?> getRenderStatus(String renderId, int accountId,) async {
    final response = await getRenderStatusWithHttpInfo(renderId, accountId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'OrsonRenderResponse',) as OrsonRenderResponse;
    
    }
    return null;
  }

  /// Get Speach to Text Result
  ///
  /// The results of the video transcription and optional translation.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] requestId (required):
  ///   Orson Request Id
  ///
  /// * [int] accountId (required):
  ///   Sirqul Account Id
  Future<Response> getSTTWithHttpInfo(String requestId, int accountId,) async {
    // ignore: prefer_const_declarations
    final path = r'/orson/ai/stt/{requestId}'
      .replaceAll('{requestId}', requestId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

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

  /// Get Speach to Text Result
  ///
  /// The results of the video transcription and optional translation.
  ///
  /// Parameters:
  ///
  /// * [String] requestId (required):
  ///   Orson Request Id
  ///
  /// * [int] accountId (required):
  ///   Sirqul Account Id
  Future<OrsonAiSTTResponse?> getSTT(String requestId, int accountId,) async {
    final response = await getSTTWithHttpInfo(requestId, accountId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'OrsonAiSTTResponse',) as OrsonAiSTTResponse;
    
    }
    return null;
  }

  /// Get Text to Speach Result
  ///
  /// Check the status of an in progress Text-to-Speech call or download the result.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] requestId (required):
  ///   Orson Request Id
  ///
  /// * [int] accountId (required):
  ///   Sirqul Account Id
  Future<Response> getTTSWithHttpInfo(String requestId, int accountId,) async {
    // ignore: prefer_const_declarations
    final path = r'/orson/ai/tts/{requestId}'
      .replaceAll('{requestId}', requestId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

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

  /// Get Text to Speach Result
  ///
  /// Check the status of an in progress Text-to-Speech call or download the result.
  ///
  /// Parameters:
  ///
  /// * [String] requestId (required):
  ///   Orson Request Id
  ///
  /// * [int] accountId (required):
  ///   Sirqul Account Id
  Future<OrsonAiTTSResponse?> getTTS(String requestId, int accountId,) async {
    final response = await getTTSWithHttpInfo(requestId, accountId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'OrsonAiTTSResponse',) as OrsonAiTTSResponse;
    
    }
    return null;
  }

  /// Get TechTune Results
  ///
  /// Get a result or continue waiting for a pending request for TechTune analysis.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] requestId (required):
  ///   Orson Request Id
  ///
  /// * [int] accountId (required):
  ///   Sirqul Account Id
  Future<Response> getTechTuneWithHttpInfo(String requestId, int accountId,) async {
    // ignore: prefer_const_declarations
    final path = r'/orson/ai/techTune/{requestId}'
      .replaceAll('{requestId}', requestId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

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

  /// Get TechTune Results
  ///
  /// Get a result or continue waiting for a pending request for TechTune analysis.
  ///
  /// Parameters:
  ///
  /// * [String] requestId (required):
  ///   Orson Request Id
  ///
  /// * [int] accountId (required):
  ///   Sirqul Account Id
  Future<OrsonAiTechTuneResponse?> getTechTune(String requestId, int accountId,) async {
    final response = await getTechTuneWithHttpInfo(requestId, accountId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'OrsonAiTechTuneResponse',) as OrsonAiTechTuneResponse;
    
    }
    return null;
  }

  /// Get Topics
  ///
  /// Get the result of an in progress Topics Analysis from an earlier POST.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] requestId (required):
  ///   Orson Request Id
  ///
  /// * [int] accountId (required):
  ///   Sirqul Account Id
  Future<Response> getTopicsWithHttpInfo(String requestId, int accountId,) async {
    // ignore: prefer_const_declarations
    final path = r'/orson/ai/topics/{requestId}'
      .replaceAll('{requestId}', requestId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

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

  /// Get Topics
  ///
  /// Get the result of an in progress Topics Analysis from an earlier POST.
  ///
  /// Parameters:
  ///
  /// * [String] requestId (required):
  ///   Orson Request Id
  ///
  /// * [int] accountId (required):
  ///   Sirqul Account Id
  Future<OrsonAiTopicsResponse?> getTopics(String requestId, int accountId,) async {
    final response = await getTopicsWithHttpInfo(requestId, accountId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'OrsonAiTopicsResponse',) as OrsonAiTopicsResponse;
    
    }
    return null;
  }

  /// Get VoiceCanvas images
  ///
  /// Get a result or continue waiting for a pending request for VoiceCanvas Images.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] requestId (required):
  ///   Orson Request Id
  ///
  /// * [int] accountId (required):
  ///   Sirqul Account Id
  Future<Response> getVoiceCanvasWithHttpInfo(String requestId, int accountId,) async {
    // ignore: prefer_const_declarations
    final path = r'/orson/ai/voiceCanvas/{requestId}'
      .replaceAll('{requestId}', requestId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

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

  /// Get VoiceCanvas images
  ///
  /// Get a result or continue waiting for a pending request for VoiceCanvas Images.
  ///
  /// Parameters:
  ///
  /// * [String] requestId (required):
  ///   Orson Request Id
  ///
  /// * [int] accountId (required):
  ///   Sirqul Account Id
  Future<OrsonAiVoiceCanvasResponse?> getVoiceCanvas(String requestId, int accountId,) async {
    final response = await getVoiceCanvasWithHttpInfo(requestId, accountId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'OrsonAiVoiceCanvasResponse',) as OrsonAiVoiceCanvasResponse;
    
    }
    return null;
  }

  /// Starts a StoryStitch video render
  ///
  /// Starts a StoryStitch video render to produce your final video, returning the status details.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] accountId (required):
  ///   Sirqul Account Id
  ///
  /// * [String] data (required):
  ///   Request Data String
  Future<Response> startVideoRenderWithHttpInfo(int accountId, String data,) async {
    // ignore: prefer_const_declarations
    final path = r'/orson/stories/renders';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'accountId', accountId));
      queryParams.addAll(_queryParams('', 'data', data));

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

  /// Starts a StoryStitch video render
  ///
  /// Starts a StoryStitch video render to produce your final video, returning the status details.
  ///
  /// Parameters:
  ///
  /// * [int] accountId (required):
  ///   Sirqul Account Id
  ///
  /// * [String] data (required):
  ///   Request Data String
  Future<OrsonRenderResponse?> startVideoRender(int accountId, String data,) async {
    final response = await startVideoRenderWithHttpInfo(accountId, data,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'OrsonRenderResponse',) as OrsonRenderResponse;
    
    }
    return null;
  }

  /// Speach to Text
  ///
  /// Accepts a movie URL or uploaded file and transcribes it. You also have the option to translate it into one of our additional supported languages.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] accountId (required):
  ///   Sirqul Account Id
  ///
  /// * [String] thirdPartyAccountId:
  ///   A third-party account id that is meaningful to your systems
  ///
  /// * [String] sourceLanguage:
  ///   Source Language
  ///
  /// * [String] targetLanguage:
  ///   Target Language
  ///
  /// * [MultipartFile] file:
  ///   An uploaded recording to analyze (Currently limited to 10MB)
  ///
  /// * [String] url:
  ///   A recording file to download and analyze (Size limit: 1GB)
  ///
  /// * [String] callback:
  ///   When provided, Orson will return a 202 and POST the results to this URL when complete instead of holding the Request open
  Future<Response> sttWithHttpInfo(int accountId, { String? thirdPartyAccountId, String? sourceLanguage, String? targetLanguage, MultipartFile? file, String? url, String? callback, }) async {
    // ignore: prefer_const_declarations
    final path = r'/orson/ai/stt';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'accountId', accountId));
    if (thirdPartyAccountId != null) {
      queryParams.addAll(_queryParams('', 'thirdPartyAccountId', thirdPartyAccountId));
    }
    if (sourceLanguage != null) {
      queryParams.addAll(_queryParams('', 'sourceLanguage', sourceLanguage));
    }
    if (targetLanguage != null) {
      queryParams.addAll(_queryParams('', 'targetLanguage', targetLanguage));
    }
    if (file != null) {
      queryParams.addAll(_queryParams('', 'file', file));
    }
    if (url != null) {
      queryParams.addAll(_queryParams('', 'url', url));
    }
    if (callback != null) {
      queryParams.addAll(_queryParams('', 'callback', callback));
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

  /// Speach to Text
  ///
  /// Accepts a movie URL or uploaded file and transcribes it. You also have the option to translate it into one of our additional supported languages.
  ///
  /// Parameters:
  ///
  /// * [int] accountId (required):
  ///   Sirqul Account Id
  ///
  /// * [String] thirdPartyAccountId:
  ///   A third-party account id that is meaningful to your systems
  ///
  /// * [String] sourceLanguage:
  ///   Source Language
  ///
  /// * [String] targetLanguage:
  ///   Target Language
  ///
  /// * [MultipartFile] file:
  ///   An uploaded recording to analyze (Currently limited to 10MB)
  ///
  /// * [String] url:
  ///   A recording file to download and analyze (Size limit: 1GB)
  ///
  /// * [String] callback:
  ///   When provided, Orson will return a 202 and POST the results to this URL when complete instead of holding the Request open
  Future<OrsonAiSTTResponse?> stt(int accountId, { String? thirdPartyAccountId, String? sourceLanguage, String? targetLanguage, MultipartFile? file, String? url, String? callback, }) async {
    final response = await sttWithHttpInfo(accountId,  thirdPartyAccountId: thirdPartyAccountId, sourceLanguage: sourceLanguage, targetLanguage: targetLanguage, file: file, url: url, callback: callback, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'OrsonAiSTTResponse',) as OrsonAiSTTResponse;
    
    }
    return null;
  }

  /// Summarize Topics
  ///
  /// Takes in a string of text sentences (also known as a document) and returns a list of associated topics and their proximity score.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] accountId (required):
  ///   Sirqul Account Id
  ///
  /// * [String] thirdPartyAccountId:
  ///   A third-party account id that is meaningful to your systems
  ///
  /// * [String] doc:
  ///   The text to get topics for.
  ///
  /// * [MultipartFile] file:
  ///   An uploaded recording to analyze (Currently limited to 10MB)
  ///
  /// * [String] url:
  ///   A recording file to download and analyze (Size limit: 1GB)
  ///
  /// * [int] limit:
  ///   The number of results to return
  ///
  /// * [int] offset:
  ///   The starting offset into the total result set to start from
  ///
  /// * [String] callback:
  ///   When provided, Orson will return a 202 and POST the results to this URL when complete instead of holding the Request open
  Future<Response> summarizeTopicsWithHttpInfo(int accountId, { String? thirdPartyAccountId, String? doc, MultipartFile? file, String? url, int? limit, int? offset, String? callback, }) async {
    // ignore: prefer_const_declarations
    final path = r'/orson/ai/topics';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'accountId', accountId));
    if (thirdPartyAccountId != null) {
      queryParams.addAll(_queryParams('', 'thirdPartyAccountId', thirdPartyAccountId));
    }
    if (doc != null) {
      queryParams.addAll(_queryParams('', 'doc', doc));
    }
    if (file != null) {
      queryParams.addAll(_queryParams('', 'file', file));
    }
    if (url != null) {
      queryParams.addAll(_queryParams('', 'url', url));
    }
    if (limit != null) {
      queryParams.addAll(_queryParams('', 'limit', limit));
    }
    if (offset != null) {
      queryParams.addAll(_queryParams('', 'offset', offset));
    }
    if (callback != null) {
      queryParams.addAll(_queryParams('', 'callback', callback));
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

  /// Summarize Topics
  ///
  /// Takes in a string of text sentences (also known as a document) and returns a list of associated topics and their proximity score.
  ///
  /// Parameters:
  ///
  /// * [int] accountId (required):
  ///   Sirqul Account Id
  ///
  /// * [String] thirdPartyAccountId:
  ///   A third-party account id that is meaningful to your systems
  ///
  /// * [String] doc:
  ///   The text to get topics for.
  ///
  /// * [MultipartFile] file:
  ///   An uploaded recording to analyze (Currently limited to 10MB)
  ///
  /// * [String] url:
  ///   A recording file to download and analyze (Size limit: 1GB)
  ///
  /// * [int] limit:
  ///   The number of results to return
  ///
  /// * [int] offset:
  ///   The starting offset into the total result set to start from
  ///
  /// * [String] callback:
  ///   When provided, Orson will return a 202 and POST the results to this URL when complete instead of holding the Request open
  Future<OrsonAiTopicsResponse?> summarizeTopics(int accountId, { String? thirdPartyAccountId, String? doc, MultipartFile? file, String? url, int? limit, int? offset, String? callback, }) async {
    final response = await summarizeTopicsWithHttpInfo(accountId,  thirdPartyAccountId: thirdPartyAccountId, doc: doc, file: file, url: url, limit: limit, offset: offset, callback: callback, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'OrsonAiTopicsResponse',) as OrsonAiTopicsResponse;
    
    }
    return null;
  }

  /// Detect Technical Issues
  ///
  /// Analyses a movie file to detect technical issues, such as too few people in frame.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] accountId (required):
  ///   Sirqul Account Id
  ///
  /// * [int] numFacesExpected (required):
  ///   Number of expected faces
  ///
  /// * [String] thirdPartyAccountId:
  ///   A third-party account id that is meaningful to your systems
  ///
  /// * [MultipartFile] file:
  ///   An uploaded recording to analyze (Currently limited to 10MB)
  ///
  /// * [String] url:
  ///   A recording file to download and analyze (Size limit: 1GB)
  ///
  /// * [String] callback:
  ///   When provided, Orson will return a 202 and POST the results to this URL when complete instead of holding the Request open
  Future<Response> techTuneWithHttpInfo(int accountId, int numFacesExpected, { String? thirdPartyAccountId, MultipartFile? file, String? url, String? callback, }) async {
    // ignore: prefer_const_declarations
    final path = r'/orson/ai/techTune';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'accountId', accountId));
    if (thirdPartyAccountId != null) {
      queryParams.addAll(_queryParams('', 'thirdPartyAccountId', thirdPartyAccountId));
    }
      queryParams.addAll(_queryParams('', 'numFacesExpected', numFacesExpected));
    if (file != null) {
      queryParams.addAll(_queryParams('', 'file', file));
    }
    if (url != null) {
      queryParams.addAll(_queryParams('', 'url', url));
    }
    if (callback != null) {
      queryParams.addAll(_queryParams('', 'callback', callback));
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

  /// Detect Technical Issues
  ///
  /// Analyses a movie file to detect technical issues, such as too few people in frame.
  ///
  /// Parameters:
  ///
  /// * [int] accountId (required):
  ///   Sirqul Account Id
  ///
  /// * [int] numFacesExpected (required):
  ///   Number of expected faces
  ///
  /// * [String] thirdPartyAccountId:
  ///   A third-party account id that is meaningful to your systems
  ///
  /// * [MultipartFile] file:
  ///   An uploaded recording to analyze (Currently limited to 10MB)
  ///
  /// * [String] url:
  ///   A recording file to download and analyze (Size limit: 1GB)
  ///
  /// * [String] callback:
  ///   When provided, Orson will return a 202 and POST the results to this URL when complete instead of holding the Request open
  Future<OrsonAiTechTuneResponse?> techTune(int accountId, int numFacesExpected, { String? thirdPartyAccountId, MultipartFile? file, String? url, String? callback, }) async {
    final response = await techTuneWithHttpInfo(accountId, numFacesExpected,  thirdPartyAccountId: thirdPartyAccountId, file: file, url: url, callback: callback, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'OrsonAiTechTuneResponse',) as OrsonAiTechTuneResponse;
    
    }
    return null;
  }

  /// Text to Speach
  ///
  /// Creates an audio file for the given text, with the option of language and voice selection.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] accountId (required):
  ///   Sirqul Account Id
  ///
  /// * [String] text (required):
  ///   Text
  ///
  /// * [String] thirdPartyAccountId:
  ///   A third-party account id that is meaningful to your systems
  ///
  /// * [String] language:
  ///   The language to use for the speaker and incoming text
  ///
  /// * [String] voice:
  ///   A language-specific voice to use, or picks the language default if not provided
  ///
  /// * [String] callback:
  ///   When provided, Orson will return a 202 and POST the results to this URL when complete instead of holding the Request open
  Future<Response> ttsWithHttpInfo(int accountId, String text, { String? thirdPartyAccountId, String? language, String? voice, String? callback, }) async {
    // ignore: prefer_const_declarations
    final path = r'/orson/ai/tts';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'accountId', accountId));
    if (thirdPartyAccountId != null) {
      queryParams.addAll(_queryParams('', 'thirdPartyAccountId', thirdPartyAccountId));
    }
      queryParams.addAll(_queryParams('', 'text', text));
    if (language != null) {
      queryParams.addAll(_queryParams('', 'language', language));
    }
    if (voice != null) {
      queryParams.addAll(_queryParams('', 'voice', voice));
    }
    if (callback != null) {
      queryParams.addAll(_queryParams('', 'callback', callback));
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

  /// Text to Speach
  ///
  /// Creates an audio file for the given text, with the option of language and voice selection.
  ///
  /// Parameters:
  ///
  /// * [int] accountId (required):
  ///   Sirqul Account Id
  ///
  /// * [String] text (required):
  ///   Text
  ///
  /// * [String] thirdPartyAccountId:
  ///   A third-party account id that is meaningful to your systems
  ///
  /// * [String] language:
  ///   The language to use for the speaker and incoming text
  ///
  /// * [String] voice:
  ///   A language-specific voice to use, or picks the language default if not provided
  ///
  /// * [String] callback:
  ///   When provided, Orson will return a 202 and POST the results to this URL when complete instead of holding the Request open
  Future<OrsonAiTTSResponse?> tts(int accountId, String text, { String? thirdPartyAccountId, String? language, String? voice, String? callback, }) async {
    final response = await ttsWithHttpInfo(accountId, text,  thirdPartyAccountId: thirdPartyAccountId, language: language, voice: voice, callback: callback, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'OrsonAiTTSResponse',) as OrsonAiTTSResponse;
    
    }
    return null;
  }
}
