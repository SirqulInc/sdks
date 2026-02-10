//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class OptimizeApi {
  OptimizeApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Get Optimization Result
  ///
  /// Get the results of the import batch.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [String] batchID (required):
  ///   The batchID for getting the import status of.
  ///
  /// * [int] start (required):
  ///   The start index for pagination
  ///
  /// * [int] limit (required):
  ///   The limit for pagination
  Future<Response> getOptimizationResultWithHttpInfo(num version, String batchID, int start, int limit,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/optimize/result/{batchID}'
      .replaceAll('{version}', version.toString())
      .replaceAll('{batchID}', batchID);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

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

  /// Get Optimization Result
  ///
  /// Get the results of the import batch.
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [String] batchID (required):
  ///   The batchID for getting the import status of.
  ///
  /// * [int] start (required):
  ///   The start index for pagination
  ///
  /// * [int] limit (required):
  ///   The limit for pagination
  Future<Map<String, ShipmentOrder>?> getOptimizationResult(num version, String batchID, int start, int limit,) async {
    final response = await getOptimizationResultWithHttpInfo(version, batchID, start, limit,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return Map<String, ShipmentOrder>.from(await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Map<String, ShipmentOrder>'),);

    }
    return null;
  }

  /// Request Optimization
  ///
  /// Request and upload of shipment orders and create ShipmentImportBatch for optimization.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [Orders] body:
  Future<Response> requestOptimizationWithHttpInfo(num version, { Orders? body, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/optimize/request'
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

  /// Request Optimization
  ///
  /// Request and upload of shipment orders and create ShipmentImportBatch for optimization.
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [Orders] body:
  Future<ImportStatuses?> requestOptimization(num version, { Orders? body, }) async {
    final response = await requestOptimizationWithHttpInfo(version,  body: body, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ImportStatuses',) as ImportStatuses;
    
    }
    return null;
  }
}
