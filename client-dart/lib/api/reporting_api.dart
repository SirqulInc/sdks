//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class ReportingApi {
  ReportingApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Create Offline Report
  ///
  /// Create an entry for the batch for offline report
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] accountId (required):
  ///   The account id of the user for passing account related params
  ///
  /// * [String] status (required):
  ///   the status of the report
  ///
  /// * [int] previewLimit (required):
  ///   the limit on how much you can preview of the batch report
  ///
  /// * [String] appKey:
  ///   The application key for passing application related params
  ///
  /// * [String] endpoint:
  ///   
  ///
  /// * [String] parameters:
  ///   a json structure list of the parameter values, example: ```json {   \"string\":\"value\",    \"number\":3.345,   \"date\":\"2014-05-01 00:00:00\" } ``` 
  ///
  /// * [String] name:
  ///   name of the batch report
  ///
  /// * [int] startDate:
  ///   the start date of the batch report
  ///
  /// * [int] endDate:
  ///   the end date of the batch report
  ///
  /// * [String] description:
  ///   the description of the batch report
  ///
  /// * [String] pageUrl:
  ///   
  Future<Response> createBatchWithHttpInfo(num version, int accountId, String status, int previewLimit, { String? appKey, String? endpoint, String? parameters, String? name, int? startDate, int? endDate, String? description, String? pageUrl, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/report/batch/create'
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
      queryParams.addAll(_queryParams('', 'status', status));
    if (endpoint != null) {
      queryParams.addAll(_queryParams('', 'endpoint', endpoint));
    }
    if (parameters != null) {
      queryParams.addAll(_queryParams('', 'parameters', parameters));
    }
    if (name != null) {
      queryParams.addAll(_queryParams('', 'name', name));
    }
    if (startDate != null) {
      queryParams.addAll(_queryParams('', 'startDate', startDate));
    }
    if (endDate != null) {
      queryParams.addAll(_queryParams('', 'endDate', endDate));
    }
    if (description != null) {
      queryParams.addAll(_queryParams('', 'description', description));
    }
      queryParams.addAll(_queryParams('', 'previewLimit', previewLimit));
    if (pageUrl != null) {
      queryParams.addAll(_queryParams('', 'pageUrl', pageUrl));
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

  /// Create Offline Report
  ///
  /// Create an entry for the batch for offline report
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] accountId (required):
  ///   The account id of the user for passing account related params
  ///
  /// * [String] status (required):
  ///   the status of the report
  ///
  /// * [int] previewLimit (required):
  ///   the limit on how much you can preview of the batch report
  ///
  /// * [String] appKey:
  ///   The application key for passing application related params
  ///
  /// * [String] endpoint:
  ///   
  ///
  /// * [String] parameters:
  ///   a json structure list of the parameter values, example: ```json {   \"string\":\"value\",    \"number\":3.345,   \"date\":\"2014-05-01 00:00:00\" } ``` 
  ///
  /// * [String] name:
  ///   name of the batch report
  ///
  /// * [int] startDate:
  ///   the start date of the batch report
  ///
  /// * [int] endDate:
  ///   the end date of the batch report
  ///
  /// * [String] description:
  ///   the description of the batch report
  ///
  /// * [String] pageUrl:
  ///   
  Future<ReportBatchResponse?> createBatch(num version, int accountId, String status, int previewLimit, { String? appKey, String? endpoint, String? parameters, String? name, int? startDate, int? endDate, String? description, String? pageUrl, }) async {
    final response = await createBatchWithHttpInfo(version, accountId, status, previewLimit,  appKey: appKey, endpoint: endpoint, parameters: parameters, name: name, startDate: startDate, endDate: endDate, description: description, pageUrl: pageUrl, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ReportBatchResponse',) as ReportBatchResponse;
    
    }
    return null;
  }

  /// Create Offline Report
  ///
  /// Create an entry for the batch for offline report
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [List<RegionLegSummary>] body:
  Future<Response> createRegionLegSummaryBatchWithHttpInfo(num version, { List<RegionLegSummary>? body, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/report/region/summary/batch'
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

  /// Create Offline Report
  ///
  /// Create an entry for the batch for offline report
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [List<RegionLegSummary>] body:
  Future<ReportRegionLegSummaryBatchResponse?> createRegionLegSummaryBatch(num version, { List<RegionLegSummary>? body, }) async {
    final response = await createRegionLegSummaryBatchWithHttpInfo(version,  body: body, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ReportRegionLegSummaryBatchResponse',) as ReportRegionLegSummaryBatchResponse;
    
    }
    return null;
  }

  /// Delete Offline Report
  ///
  /// Deletes a batch report.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] accountId (required):
  ///   the id of the account
  ///
  /// * [int] batchId (required):
  ///   the id of the batch to delete
  Future<Response> deleteBatchWithHttpInfo(num version, int accountId, int batchId,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/report/batch/delete'
      .replaceAll('{version}', version.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'accountId', accountId));
      queryParams.addAll(_queryParams('', 'batchId', batchId));

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

  /// Delete Offline Report
  ///
  /// Deletes a batch report.
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] accountId (required):
  ///   the id of the account
  ///
  /// * [int] batchId (required):
  ///   the id of the batch to delete
  Future<SirqulResponse?> deleteBatch(num version, int accountId, int batchId,) async {
    final response = await deleteBatchWithHttpInfo(version, accountId, batchId,);
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

  /// Get Offline Report
  ///
  /// Checks status of batch report.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] accountId (required):
  ///   the id of the logged in user
  ///
  /// * [int] batchId (required):
  ///   returned by /report/batch/create
  ///
  /// * [bool] allResults (required):
  ///   whether to return all batch results or not
  Future<Response> getReportBatchWithHttpInfo(num version, int accountId, int batchId, bool allResults,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/report/batch/get'
      .replaceAll('{version}', version.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'accountId', accountId));
      queryParams.addAll(_queryParams('', 'batchId', batchId));
      queryParams.addAll(_queryParams('', 'allResults', allResults));

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

  /// Get Offline Report
  ///
  /// Checks status of batch report.
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] accountId (required):
  ///   the id of the logged in user
  ///
  /// * [int] batchId (required):
  ///   returned by /report/batch/create
  ///
  /// * [bool] allResults (required):
  ///   whether to return all batch results or not
  Future<ReportBatchResponse?> getReportBatch(num version, int accountId, int batchId, bool allResults,) async {
    final response = await getReportBatchWithHttpInfo(version, accountId, batchId, allResults,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ReportBatchResponse',) as ReportBatchResponse;
    
    }
    return null;
  }

  /// Run Report
  ///
  ///  This endpoint allows you to run a set of predefined reports that can be used to understand your users' behavior as well as trends within your application.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [bool] desc (required):
  ///   If true then descending order, false is ascending
  ///
  /// * [int] accountId:
  ///   The account id of the user for passing account related params
  ///
  /// * [String] query:
  ///   The named identifier of the query
  ///
  /// * [String] parameters:
  ///   Parameter values used in the query in JSON format, example: ```json {   \"string\":\"value\",    \"number\":3.345,   \"date\":\"2014-05-01 00:00:00\" } ``` 
  ///
  /// * [String] order:
  ///   The order to use, must be a column name (see response results for list of column names)
  ///
  /// * [int] start:
  ///   The start of the pagination
  ///
  /// * [int] limit:
  ///   The limit of the pagination
  ///
  /// * [String] responseFormat:
  ///   Determines what response format to return. Options are: JSON or CSV
  Future<Response> runReportWithHttpInfo(num version, bool desc, { int? accountId, String? query, String? parameters, String? order, int? start, int? limit, String? responseFormat, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/report/run'
      .replaceAll('{version}', version.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (accountId != null) {
      queryParams.addAll(_queryParams('', 'accountId', accountId));
    }
    if (query != null) {
      queryParams.addAll(_queryParams('', 'query', query));
    }
    if (parameters != null) {
      queryParams.addAll(_queryParams('', 'parameters', parameters));
    }
    if (order != null) {
      queryParams.addAll(_queryParams('', 'order', order));
    }
      queryParams.addAll(_queryParams('', 'desc', desc));
    if (start != null) {
      queryParams.addAll(_queryParams('', 'start', start));
    }
    if (limit != null) {
      queryParams.addAll(_queryParams('', 'limit', limit));
    }
    if (responseFormat != null) {
      queryParams.addAll(_queryParams('', 'responseFormat', responseFormat));
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

  /// Run Report
  ///
  ///  This endpoint allows you to run a set of predefined reports that can be used to understand your users' behavior as well as trends within your application.
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [bool] desc (required):
  ///   If true then descending order, false is ascending
  ///
  /// * [int] accountId:
  ///   The account id of the user for passing account related params
  ///
  /// * [String] query:
  ///   The named identifier of the query
  ///
  /// * [String] parameters:
  ///   Parameter values used in the query in JSON format, example: ```json {   \"string\":\"value\",    \"number\":3.345,   \"date\":\"2014-05-01 00:00:00\" } ``` 
  ///
  /// * [String] order:
  ///   The order to use, must be a column name (see response results for list of column names)
  ///
  /// * [int] start:
  ///   The start of the pagination
  ///
  /// * [int] limit:
  ///   The limit of the pagination
  ///
  /// * [String] responseFormat:
  ///   Determines what response format to return. Options are: JSON or CSV
  Future<ReportResponse?> runReport(num version, bool desc, { int? accountId, String? query, String? parameters, String? order, int? start, int? limit, String? responseFormat, }) async {
    final response = await runReportWithHttpInfo(version, desc,  accountId: accountId, query: query, parameters: parameters, order: order, start: start, limit: limit, responseFormat: responseFormat, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ReportResponse',) as ReportResponse;
    
    }
    return null;
  }

  /// Search Offline Reports
  ///
  /// Retrieves batches for a user..
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] accountId (required):
  ///   the id of the account logged in
  ///
  /// * [int] start (required):
  ///   the start of the index and/or pagination
  ///
  /// * [int] limit (required):
  ///   the limit of the index and/or pagination
  ///
  /// * [String] names:
  ///   the names of the report batch to search on
  ///
  /// * [String] appKey:
  ///   the application key
  ///
  /// * [String] status:
  ///   the report batch status
  ///
  /// * [bool] globalAppSearch:
  ///   the global app to search on
  ///
  /// * [int] startDate:
  ///   the start date of the report batch to search on
  ///
  /// * [int] endDate:
  ///   the end date of the report batch to search on
  Future<Response> searchBatchWithHttpInfo(num version, int accountId, int start, int limit, { String? names, String? appKey, String? status, bool? globalAppSearch, int? startDate, int? endDate, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/report/batch/search'
      .replaceAll('{version}', version.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'accountId', accountId));
    if (names != null) {
      queryParams.addAll(_queryParams('', 'names', names));
    }
    if (appKey != null) {
      queryParams.addAll(_queryParams('', 'appKey', appKey));
    }
    if (status != null) {
      queryParams.addAll(_queryParams('', 'status', status));
    }
    if (globalAppSearch != null) {
      queryParams.addAll(_queryParams('', 'globalAppSearch', globalAppSearch));
    }
    if (startDate != null) {
      queryParams.addAll(_queryParams('', 'startDate', startDate));
    }
    if (endDate != null) {
      queryParams.addAll(_queryParams('', 'endDate', endDate));
    }
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

  /// Search Offline Reports
  ///
  /// Retrieves batches for a user..
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] accountId (required):
  ///   the id of the account logged in
  ///
  /// * [int] start (required):
  ///   the start of the index and/or pagination
  ///
  /// * [int] limit (required):
  ///   the limit of the index and/or pagination
  ///
  /// * [String] names:
  ///   the names of the report batch to search on
  ///
  /// * [String] appKey:
  ///   the application key
  ///
  /// * [String] status:
  ///   the report batch status
  ///
  /// * [bool] globalAppSearch:
  ///   the global app to search on
  ///
  /// * [int] startDate:
  ///   the start date of the report batch to search on
  ///
  /// * [int] endDate:
  ///   the end date of the report batch to search on
  Future<List<ReportBatchResponse>?> searchBatch(num version, int accountId, int start, int limit, { String? names, String? appKey, String? status, bool? globalAppSearch, int? startDate, int? endDate, }) async {
    final response = await searchBatchWithHttpInfo(version, accountId, start, limit,  names: names, appKey: appKey, status: status, globalAppSearch: globalAppSearch, startDate: startDate, endDate: endDate, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<ReportBatchResponse>') as List)
        .cast<ReportBatchResponse>()
        .toList(growable: false);

    }
    return null;
  }
}
