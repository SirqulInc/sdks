//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class ShipmentBatchApi {
  ShipmentBatchApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Create Shipment Batch
  ///
  /// Create a new shipment batch
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [ShipmentBatch] body:
  Future<Response> createShipmentBatchWithHttpInfo(num version, { ShipmentBatch? body, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/shipment/batch'
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

  /// Create Shipment Batch
  ///
  /// Create a new shipment batch
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [ShipmentBatch] body:
  Future<ShipmentBatch?> createShipmentBatch(num version, { ShipmentBatch? body, }) async {
    final response = await createShipmentBatchWithHttpInfo(version,  body: body, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ShipmentBatch',) as ShipmentBatch;
    
    }
    return null;
  }

  /// Delete Shipment Batch
  ///
  /// Search for shipment batches
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] batchId (required):
  ///   the id of the shipment batch to delete
  Future<Response> deleteShipmentBatchWithHttpInfo(num version, int batchId,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/shipment/batch/{batchId}'
      .replaceAll('{version}', version.toString())
      .replaceAll('{batchId}', batchId.toString());

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

  /// Delete Shipment Batch
  ///
  /// Search for shipment batches
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] batchId (required):
  ///   the id of the shipment batch to delete
  Future<void> deleteShipmentBatch(num version, int batchId,) async {
    final response = await deleteShipmentBatchWithHttpInfo(version, batchId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Get Shipment Batch
  ///
  /// Get an existing shipment batch
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] batchId (required):
  ///   the id of the shipment batch to get
  Future<Response> getShipmentBatchWithHttpInfo(num version, int batchId,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/shipment/batch/{batchId}'
      .replaceAll('{version}', version.toString())
      .replaceAll('{batchId}', batchId.toString());

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

  /// Get Shipment Batch
  ///
  /// Get an existing shipment batch
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] batchId (required):
  ///   the id of the shipment batch to get
  Future<ShipmentBatch?> getShipmentBatch(num version, int batchId,) async {
    final response = await getShipmentBatchWithHttpInfo(version, batchId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ShipmentBatch',) as ShipmentBatch;
    
    }
    return null;
  }

  /// Get Shipment Batch Status
  ///
  /// Get the import status list of the import shipment batch
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] batchId (required):
  ///   The id of the requested shipment batch
  ///
  /// * [int] accountId (required):
  ///   the id of the logged in user
  ///
  /// * [String] sortField (required):
  ///   The field to sort by
  ///
  /// * [bool] descending (required):
  ///   Determines whether the sorted list is in descending or ascending order
  ///
  /// * [int] start (required):
  ///   The start index for pagination
  ///
  /// * [int] limit (required):
  ///   The limit for pagination
  ///
  /// * [bool] valid:
  ///   Valid import status only or not
  ///
  /// * [bool] started:
  ///   Started import status only
  ///
  /// * [bool] completed:
  ///   Completed import status only
  ///
  /// * [bool] hasShipment:
  ///   Has shipment associate to the status
  ///
  /// * [bool] hasRoute:
  ///   Has route associate to the status
  ///
  /// * [String] keyword:
  ///   The keyword to search for
  Future<Response> getShipmentBatchStatusWithHttpInfo(num version, int batchId, int accountId, String sortField, bool descending, int start, int limit, { bool? valid, bool? started, bool? completed, bool? hasShipment, bool? hasRoute, String? keyword, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/shipment/batch/{batchId}/status'
      .replaceAll('{version}', version.toString())
      .replaceAll('{batchId}', batchId.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'accountId', accountId));
    if (valid != null) {
      queryParams.addAll(_queryParams('', 'valid', valid));
    }
    if (started != null) {
      queryParams.addAll(_queryParams('', 'started', started));
    }
    if (completed != null) {
      queryParams.addAll(_queryParams('', 'completed', completed));
    }
    if (hasShipment != null) {
      queryParams.addAll(_queryParams('', 'hasShipment', hasShipment));
    }
    if (hasRoute != null) {
      queryParams.addAll(_queryParams('', 'hasRoute', hasRoute));
    }
    if (keyword != null) {
      queryParams.addAll(_queryParams('', 'keyword', keyword));
    }
      queryParams.addAll(_queryParams('', 'sortField', sortField));
      queryParams.addAll(_queryParams('', 'descending', descending));
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

  /// Get Shipment Batch Status
  ///
  /// Get the import status list of the import shipment batch
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] batchId (required):
  ///   The id of the requested shipment batch
  ///
  /// * [int] accountId (required):
  ///   the id of the logged in user
  ///
  /// * [String] sortField (required):
  ///   The field to sort by
  ///
  /// * [bool] descending (required):
  ///   Determines whether the sorted list is in descending or ascending order
  ///
  /// * [int] start (required):
  ///   The start index for pagination
  ///
  /// * [int] limit (required):
  ///   The limit for pagination
  ///
  /// * [bool] valid:
  ///   Valid import status only or not
  ///
  /// * [bool] started:
  ///   Started import status only
  ///
  /// * [bool] completed:
  ///   Completed import status only
  ///
  /// * [bool] hasShipment:
  ///   Has shipment associate to the status
  ///
  /// * [bool] hasRoute:
  ///   Has route associate to the status
  ///
  /// * [String] keyword:
  ///   The keyword to search for
  Future<List<ShipmentImportStatus>?> getShipmentBatchStatus(num version, int batchId, int accountId, String sortField, bool descending, int start, int limit, { bool? valid, bool? started, bool? completed, bool? hasShipment, bool? hasRoute, String? keyword, }) async {
    final response = await getShipmentBatchStatusWithHttpInfo(version, batchId, accountId, sortField, descending, start, limit,  valid: valid, started: started, completed: completed, hasShipment: hasShipment, hasRoute: hasRoute, keyword: keyword, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<ShipmentImportStatus>') as List)
        .cast<ShipmentImportStatus>()
        .toList(growable: false);

    }
    return null;
  }

  /// Search Shipment Batch
  ///
  /// Search for shipment batches
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] hubId (required):
  ///   The associated service hub
  ///
  /// * [String] sortField (required):
  ///   The field to sort by
  ///
  /// * [bool] descending (required):
  ///   Determines whether the sorted list is in descending or ascending order
  ///
  /// * [int] start (required):
  ///   The start index for pagination
  ///
  /// * [int] limit (required):
  ///   The limit for pagination
  Future<Response> searchShipmentBatchWithHttpInfo(num version, int hubId, String sortField, bool descending, int start, int limit,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/shipment/batch'
      .replaceAll('{version}', version.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'hubId', hubId));
      queryParams.addAll(_queryParams('', 'sortField', sortField));
      queryParams.addAll(_queryParams('', 'descending', descending));
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

  /// Search Shipment Batch
  ///
  /// Search for shipment batches
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] hubId (required):
  ///   The associated service hub
  ///
  /// * [String] sortField (required):
  ///   The field to sort by
  ///
  /// * [bool] descending (required):
  ///   Determines whether the sorted list is in descending or ascending order
  ///
  /// * [int] start (required):
  ///   The start index for pagination
  ///
  /// * [int] limit (required):
  ///   The limit for pagination
  Future<List<ShipmentBatch>?> searchShipmentBatch(num version, int hubId, String sortField, bool descending, int start, int limit,) async {
    final response = await searchShipmentBatchWithHttpInfo(version, hubId, sortField, descending, start, limit,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<ShipmentBatch>') as List)
        .cast<ShipmentBatch>()
        .toList(growable: false);

    }
    return null;
  }
}
