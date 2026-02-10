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
  /// * [num] version (required):
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
  Future<Response> addMovieWithHttpInfo(num version, int accountId, String movieName, { String? thirdPartyAccountId, String? tags, MultipartFile? file, String? url, String? callback, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/orson/ai/addMovie'
      .replaceAll('{version}', version.toString());

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
  /// * [num] version (required):
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
  Future<OrsonAiAddMovieResponse?> addMovie(num version, int accountId, String movieName, { String? thirdPartyAccountId, String? tags, MultipartFile? file, String? url, String? callback, }) async {
    final response = await addMovieWithHttpInfo(version, accountId, movieName,  thirdPartyAccountId: thirdPartyAccountId, tags: tags, file: file, url: url, callback: callback, );
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
  /// * [num] version (required):
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
  Future<Response> aiDocsWithHttpInfo(num version, int accountId, String doc, { bool? returnTopics, int? limit, int? offset, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/orson/ai/docs'
      .replaceAll('{version}', version.toString());

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
  /// * [num] version (required):
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
  Future<OrsonAiProtoResponse?> aiDocs(num version, int accountId, String doc, { bool? returnTopics, int? limit, int? offset, }) async {
    final response = await aiDocsWithHttpInfo(version, accountId, doc,  returnTopics: returnTopics, limit: limit, offset: offset, );
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
  /// * [num] version (required):
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
  Future<Response> aiFindImagesWithHttpInfo(num version, int accountId, String text, { String? parseFlag, String? fetchFlag, String? size, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/orson/ai/img'
      .replaceAll('{version}', version.toString());

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
  /// * [num] version (required):
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
  Future<OrsonAiProtoResponse?> aiFindImages(num version, int accountId, String text, { String? parseFlag, String? fetchFlag, String? size, }) async {
    final response = await aiFindImagesWithHttpInfo(version, accountId, text,  parseFlag: parseFlag, fetchFlag: fetchFlag, size: size, );
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
  /// * [num] version (required):
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
  Future<Response> aiTagsWithHttpInfo(num version, int accountId, String tags, { String? conditional, int? limit, int? offset, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/orson/ai/tags'
      .replaceAll('{version}', version.toString());

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
  /// * [num] version (required):
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
  Future<OrsonAiProtoResponse?> aiTags(num version, int accountId, String tags, { String? conditional, int? limit, int? offset, }) async {
    final response = await aiTagsWithHttpInfo(version, accountId, tags,  conditional: conditional, limit: limit, offset: offset, );
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
  /// * [num] version (required):
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
  Future<Response> aiTextWithHttpInfo(num version, int accountId, String terms, { String? conditional, int? limit, int? offset, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/orson/ai/text'
      .replaceAll('{version}', version.toString());

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
  /// * [num] version (required):
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
  Future<OrsonAiProtoResponse?> aiText(num version, int accountId, String terms, { String? conditional, int? limit, int? offset, }) async {
    final response = await aiTextWithHttpInfo(version, accountId, terms,  conditional: conditional, limit: limit, offset: offset, );
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
  /// * [num] version (required):
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
  Future<Response> batchWithHttpInfo(num version, int accountId, { String? thirdPartyAccountId, int? limit, String? operations, MultipartFile? file, String? url, String? callback, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/orson/ai/batch'
      .replaceAll('{version}', version.toString());

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
  /// * [num] version (required):
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
  Future<OrsonAiBatchResponse?> batch(num version, int accountId, { String? thirdPartyAccountId, int? limit, String? operations, MultipartFile? file, String? url, String? callback, }) async {
    final response = await batchWithHttpInfo(version, accountId,  thirdPartyAccountId: thirdPartyAccountId, limit: limit, operations: operations, file: file, url: url, callback: callback, );
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
  /// * [num] version (required):
  ///
  /// * [int] accountId (required):
  ///   Sirqul Account Id
  ///
  /// * [String] data (required):
  ///   Request Data String
  Future<Response> createInstantEpisodeWithHttpInfo(num version, int accountId, String data,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/orson/stories/episodes/instant'
      .replaceAll('{version}', version.toString());

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
  /// * [num] version (required):
  ///
  /// * [int] accountId (required):
  ///   Sirqul Account Id
  ///
  /// * [String] data (required):
  ///   Request Data String
  Future<OrsonEpisodeResponse?> createInstantEpisode(num version, int accountId, String data,) async {
    final response = await createInstantEpisodeWithHttpInfo(version, accountId, data,);
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
  /// * [num] version (required):
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
  Future<Response> createVoiceCanvasWithHttpInfo(num version, int accountId, String dimensions, { String? thirdPartyAccountId, String? text, MultipartFile? file, String? url, bool? parseFlag, bool? fetchFlag, String? callback, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/orson/ai/voiceCanvas'
      .replaceAll('{version}', version.toString());

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
  /// * [num] version (required):
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
  Future<OrsonAiVoiceCanvasResponse?> createVoiceCanvas(num version, int accountId, String dimensions, { String? thirdPartyAccountId, String? text, MultipartFile? file, String? url, bool? parseFlag, bool? fetchFlag, String? callback, }) async {
    final response = await createVoiceCanvasWithHttpInfo(version, accountId, dimensions,  thirdPartyAccountId: thirdPartyAccountId, text: text, file: file, url: url, parseFlag: parseFlag, fetchFlag: fetchFlag, callback: callback, );
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
  /// * [num] version (required):
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
  Future<Response> emotionWithHttpInfo(num version, int accountId, { String? thirdPartyAccountId, MultipartFile? file, String? url, String? callback, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/orson/ai/emotion'
      .replaceAll('{version}', version.toString());

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
  /// * [num] version (required):
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
  Future<OrsonAiEmotionsResponse?> emotion(num version, int accountId, { String? thirdPartyAccountId, MultipartFile? file, String? url, String? callback, }) async {
    final response = await emotionWithHttpInfo(version, accountId,  thirdPartyAccountId: thirdPartyAccountId, file: file, url: url, callback: callback, );
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
  /// * [num] version (required):
  ///
  /// * [String] requestId (required):
  ///   Orson Request Id
  ///
  /// * [int] accountId (required):
  ///   Sirqul Account Id
  Future<Response> getAddMovieResultWithHttpInfo(num version, String requestId, int accountId,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/orson/ai/addMovie/{requestId}'
      .replaceAll('{version}', version.toString())
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
  /// * [num] version (required):
  ///
  /// * [String] requestId (required):
  ///   Orson Request Id
  ///
  /// * [int] accountId (required):
  ///   Sirqul Account Id
  Future<OrsonAiAddMovieResponse?> getAddMovieResult(num version, String requestId, int accountId,) async {
    final response = await getAddMovieResultWithHttpInfo(version, requestId, accountId,);
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
  /// * [num] version (required):
  ///
  /// * [String] requestId (required):
  ///   Orson Request Id
  ///
  /// * [int] accountId (required):
  ///   Sirqul Account Id
  Future<Response> getBatchWithHttpInfo(num version, String requestId, int accountId,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/orson/ai/batch/{requestId}'
      .replaceAll('{version}', version.toString())
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
  /// * [num] version (required):
  ///
  /// * [String] requestId (required):
  ///   Orson Request Id
  ///
  /// * [int] accountId (required):
  ///   Sirqul Account Id
  Future<OrsonAiBatchResponse?> getBatch(num version, String requestId, int accountId,) async {
    final response = await getBatchWithHttpInfo(version, requestId, accountId,);
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
  /// * [num] version (required):
  ///
  /// * [String] requestId (required):
  ///   Orson Request Id
  ///
  /// * [int] accountId (required):
  ///   Sirqul Account Id
  Future<Response> getEmotionWithHttpInfo(num version, String requestId, int accountId,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/orson/ai/emotion/{requestId}'
      .replaceAll('{version}', version.toString())
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
  /// * [num] version (required):
  ///
  /// * [String] requestId (required):
  ///   Orson Request Id
  ///
  /// * [int] accountId (required):
  ///   Sirqul Account Id
  Future<OrsonAiEmotionsResponse?> getEmotion(num version, String requestId, int accountId,) async {
    final response = await getEmotionWithHttpInfo(version, requestId, accountId,);
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
  /// * [num] version (required):
  ///
  /// * [int] episodeId (required):
  ///   Episode ID
  ///
  /// * [int] accountId (required):
  ///   Sirqul Account Id
  Future<Response> getEpisodeStatusWithHttpInfo(num version, int episodeId, int accountId,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/orson/stories/episodes/{episodeId}/status'
      .replaceAll('{version}', version.toString())
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
  /// * [num] version (required):
  ///
  /// * [int] episodeId (required):
  ///   Episode ID
  ///
  /// * [int] accountId (required):
  ///   Sirqul Account Id
  Future<OrsonEpisodeResponse?> getEpisodeStatus(num version, int episodeId, int accountId,) async {
    final response = await getEpisodeStatusWithHttpInfo(version, episodeId, accountId,);
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
  /// * [num] version (required):
  ///
  /// * [String] renderId (required):
  ///   Render ID
  ///
  /// * [int] accountId (required):
  ///   Sirqul Account Id
  Future<Response> getRenderStatusWithHttpInfo(num version, String renderId, int accountId,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/orson/stories/renders/{renderId}/status'
      .replaceAll('{version}', version.toString())
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
  /// * [num] version (required):
  ///
  /// * [String] renderId (required):
  ///   Render ID
  ///
  /// * [int] accountId (required):
  ///   Sirqul Account Id
  Future<OrsonRenderResponse?> getRenderStatus(num version, String renderId, int accountId,) async {
    final response = await getRenderStatusWithHttpInfo(version, renderId, accountId,);
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
  /// * [num] version (required):
  ///
  /// * [String] requestId (required):
  ///   Orson Request Id
  ///
  /// * [int] accountId (required):
  ///   Sirqul Account Id
  Future<Response> getSTTWithHttpInfo(num version, String requestId, int accountId,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/orson/ai/stt/{requestId}'
      .replaceAll('{version}', version.toString())
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
  /// * [num] version (required):
  ///
  /// * [String] requestId (required):
  ///   Orson Request Id
  ///
  /// * [int] accountId (required):
  ///   Sirqul Account Id
  Future<OrsonAiSTTResponse?> getSTT(num version, String requestId, int accountId,) async {
    final response = await getSTTWithHttpInfo(version, requestId, accountId,);
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
  /// * [num] version (required):
  ///
  /// * [String] requestId (required):
  ///   Orson Request Id
  ///
  /// * [int] accountId (required):
  ///   Sirqul Account Id
  Future<Response> getTTSWithHttpInfo(num version, String requestId, int accountId,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/orson/ai/tts/{requestId}'
      .replaceAll('{version}', version.toString())
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
  /// * [num] version (required):
  ///
  /// * [String] requestId (required):
  ///   Orson Request Id
  ///
  /// * [int] accountId (required):
  ///   Sirqul Account Id
  Future<OrsonAiTTSResponse?> getTTS(num version, String requestId, int accountId,) async {
    final response = await getTTSWithHttpInfo(version, requestId, accountId,);
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
  /// * [num] version (required):
  ///
  /// * [String] requestId (required):
  ///   Orson Request Id
  ///
  /// * [int] accountId (required):
  ///   Sirqul Account Id
  Future<Response> getTechTuneWithHttpInfo(num version, String requestId, int accountId,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/orson/ai/techTune/{requestId}'
      .replaceAll('{version}', version.toString())
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
  /// * [num] version (required):
  ///
  /// * [String] requestId (required):
  ///   Orson Request Id
  ///
  /// * [int] accountId (required):
  ///   Sirqul Account Id
  Future<OrsonAiTechTuneResponse?> getTechTune(num version, String requestId, int accountId,) async {
    final response = await getTechTuneWithHttpInfo(version, requestId, accountId,);
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
  /// * [num] version (required):
  ///
  /// * [String] requestId (required):
  ///   Orson Request Id
  ///
  /// * [int] accountId (required):
  ///   Sirqul Account Id
  Future<Response> getTopicsWithHttpInfo(num version, String requestId, int accountId,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/orson/ai/topics/{requestId}'
      .replaceAll('{version}', version.toString())
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
  /// * [num] version (required):
  ///
  /// * [String] requestId (required):
  ///   Orson Request Id
  ///
  /// * [int] accountId (required):
  ///   Sirqul Account Id
  Future<OrsonAiTopicsResponse?> getTopics(num version, String requestId, int accountId,) async {
    final response = await getTopicsWithHttpInfo(version, requestId, accountId,);
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
  /// * [num] version (required):
  ///
  /// * [String] requestId (required):
  ///   Orson Request Id
  ///
  /// * [int] accountId (required):
  ///   Sirqul Account Id
  Future<Response> getVoiceCanvasWithHttpInfo(num version, String requestId, int accountId,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/orson/ai/voiceCanvas/{requestId}'
      .replaceAll('{version}', version.toString())
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
  /// * [num] version (required):
  ///
  /// * [String] requestId (required):
  ///   Orson Request Id
  ///
  /// * [int] accountId (required):
  ///   Sirqul Account Id
  Future<OrsonAiVoiceCanvasResponse?> getVoiceCanvas(num version, String requestId, int accountId,) async {
    final response = await getVoiceCanvasWithHttpInfo(version, requestId, accountId,);
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
  /// * [num] version (required):
  ///
  /// * [int] accountId (required):
  ///   Sirqul Account Id
  ///
  /// * [String] data (required):
  ///   Request Data String
  Future<Response> startVideoRenderWithHttpInfo(num version, int accountId, String data,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/orson/stories/renders'
      .replaceAll('{version}', version.toString());

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
  /// * [num] version (required):
  ///
  /// * [int] accountId (required):
  ///   Sirqul Account Id
  ///
  /// * [String] data (required):
  ///   Request Data String
  Future<OrsonRenderResponse?> startVideoRender(num version, int accountId, String data,) async {
    final response = await startVideoRenderWithHttpInfo(version, accountId, data,);
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
  /// * [num] version (required):
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
  Future<Response> sttWithHttpInfo(num version, int accountId, { String? thirdPartyAccountId, String? sourceLanguage, String? targetLanguage, MultipartFile? file, String? url, String? callback, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/orson/ai/stt'
      .replaceAll('{version}', version.toString());

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
  /// * [num] version (required):
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
  Future<OrsonAiSTTResponse?> stt(num version, int accountId, { String? thirdPartyAccountId, String? sourceLanguage, String? targetLanguage, MultipartFile? file, String? url, String? callback, }) async {
    final response = await sttWithHttpInfo(version, accountId,  thirdPartyAccountId: thirdPartyAccountId, sourceLanguage: sourceLanguage, targetLanguage: targetLanguage, file: file, url: url, callback: callback, );
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
  /// * [num] version (required):
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
  Future<Response> summarizeTopicsWithHttpInfo(num version, int accountId, { String? thirdPartyAccountId, String? doc, MultipartFile? file, String? url, int? limit, int? offset, String? callback, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/orson/ai/topics'
      .replaceAll('{version}', version.toString());

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
  /// * [num] version (required):
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
  Future<OrsonAiTopicsResponse?> summarizeTopics(num version, int accountId, { String? thirdPartyAccountId, String? doc, MultipartFile? file, String? url, int? limit, int? offset, String? callback, }) async {
    final response = await summarizeTopicsWithHttpInfo(version, accountId,  thirdPartyAccountId: thirdPartyAccountId, doc: doc, file: file, url: url, limit: limit, offset: offset, callback: callback, );
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
  /// * [num] version (required):
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
  Future<Response> techTuneWithHttpInfo(num version, int accountId, int numFacesExpected, { String? thirdPartyAccountId, MultipartFile? file, String? url, String? callback, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/orson/ai/techTune'
      .replaceAll('{version}', version.toString());

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
  /// * [num] version (required):
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
  Future<OrsonAiTechTuneResponse?> techTune(num version, int accountId, int numFacesExpected, { String? thirdPartyAccountId, MultipartFile? file, String? url, String? callback, }) async {
    final response = await techTuneWithHttpInfo(version, accountId, numFacesExpected,  thirdPartyAccountId: thirdPartyAccountId, file: file, url: url, callback: callback, );
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
  /// * [num] version (required):
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
  Future<Response> ttsWithHttpInfo(num version, int accountId, String text, { String? thirdPartyAccountId, String? language, String? voice, String? callback, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/orson/ai/tts'
      .replaceAll('{version}', version.toString());

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
  /// * [num] version (required):
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
  Future<OrsonAiTTSResponse?> tts(num version, int accountId, String text, { String? thirdPartyAccountId, String? language, String? voice, String? callback, }) async {
    final response = await ttsWithHttpInfo(version, accountId, text,  thirdPartyAccountId: thirdPartyAccountId, language: language, voice: voice, callback: callback, );
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
