//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class CSVImportApi {
  CSVImportApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Detail Status
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
  ///   the id of the batch
  ///
  /// * [String] responseGroup (required):
  ///   The group of categories to return: SUMMARY, DETAILS, ERRORS, OR ALL
  ///
  /// * [int] start (required):
  ///   the start of the pagination
  ///
  /// * [int] limit (required):
  ///   the limit of the pagination
  Future<Response> getStatusCSVWithHttpInfo(num version, int accountId, int batchId, String responseGroup, int start, int limit,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/csvimport/batch/status/details'
      .replaceAll('{version}', version.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'accountId', accountId));
      queryParams.addAll(_queryParams('', 'batchId', batchId));
      queryParams.addAll(_queryParams('', 'responseGroup', responseGroup));
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

  /// Detail Status
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] accountId (required):
  ///   the id of the logged in user
  ///
  /// * [int] batchId (required):
  ///   the id of the batch
  ///
  /// * [String] responseGroup (required):
  ///   The group of categories to return: SUMMARY, DETAILS, ERRORS, OR ALL
  ///
  /// * [int] start (required):
  ///   the start of the pagination
  ///
  /// * [int] limit (required):
  ///   the limit of the pagination
  Future<SirqulResponse?> getStatusCSV(num version, int accountId, int batchId, String responseGroup, int start, int limit,) async {
    final response = await getStatusCSVWithHttpInfo(version, accountId, batchId, responseGroup, start, limit,);
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

  /// Search Status
  ///
  /// Retrieves batches for a user.
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
  /// * [int] start (required):
  ///   the start of the pagination
  ///
  /// * [int] limit (required):
  ///   the limit of the pagination
  Future<Response> listStatusCSVWithHttpInfo(num version, int accountId, int start, int limit,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/csvimport/batch/list'
      .replaceAll('{version}', version.toString());

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

  /// Search Status
  ///
  /// Retrieves batches for a user.
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] accountId (required):
  ///   the id of the account
  ///
  /// * [int] start (required):
  ///   the start of the pagination
  ///
  /// * [int] limit (required):
  ///   the limit of the pagination
  Future<CsvImportResponse?> listStatusCSV(num version, int accountId, int start, int limit,) async {
    final response = await listStatusCSVWithHttpInfo(version, accountId, start, limit,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CsvImportResponse',) as CsvImportResponse;
    
    }
    return null;
  }

  /// Batch Status
  ///
  /// Checks status of batch upload.
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
  ///   the id of the batch to get its status
  Future<Response> statusCSVWithHttpInfo(num version, int accountId, int batchId,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/csvimport/batch/status'
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
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Batch Status
  ///
  /// Checks status of batch upload.
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] accountId (required):
  ///   the id of the account
  ///
  /// * [int] batchId (required):
  ///   the id of the batch to get its status
  Future<CsvImportResponse?> statusCSV(num version, int accountId, int batchId,) async {
    final response = await statusCSVWithHttpInfo(version, accountId, batchId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CsvImportResponse',) as CsvImportResponse;
    
    }
    return null;
  }

  /// Upload CSV
  ///
  /// Uploads a CSV import file.
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
  /// * [String] uploadType (required):
  ///   the upload type: OFFERS, RETAILERS, RETAILERLOCATIONS, CATEGORIES, OR FILTERS
  ///
  /// * [MultipartFile] importFile (required):
  ///   the import file to reference
  ///
  /// * [String] fileFormat (required):
  ///   the format of the file
  ///
  /// * [String] appKey:
  ///   the application key
  Future<Response> uploadCSVWithHttpInfo(num version, int accountId, String uploadType, MultipartFile importFile, String fileFormat, { String? appKey, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/csvimport/upload'
      .replaceAll('{version}', version.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'accountId', accountId));
      queryParams.addAll(_queryParams('', 'uploadType', uploadType));
      queryParams.addAll(_queryParams('', 'importFile', importFile));
    if (appKey != null) {
      queryParams.addAll(_queryParams('', 'appKey', appKey));
    }
      queryParams.addAll(_queryParams('', 'fileFormat', fileFormat));

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

  /// Upload CSV
  ///
  /// Uploads a CSV import file.
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] accountId (required):
  ///   the id of the account
  ///
  /// * [String] uploadType (required):
  ///   the upload type: OFFERS, RETAILERS, RETAILERLOCATIONS, CATEGORIES, OR FILTERS
  ///
  /// * [MultipartFile] importFile (required):
  ///   the import file to reference
  ///
  /// * [String] fileFormat (required):
  ///   the format of the file
  ///
  /// * [String] appKey:
  ///   the application key
  Future<CsvImportResponse?> uploadCSV(num version, int accountId, String uploadType, MultipartFile importFile, String fileFormat, { String? appKey, }) async {
    final response = await uploadCSVWithHttpInfo(version, accountId, uploadType, importFile, fileFormat,  appKey: appKey, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CsvImportResponse',) as CsvImportResponse;
    
    }
    return null;
  }
}
