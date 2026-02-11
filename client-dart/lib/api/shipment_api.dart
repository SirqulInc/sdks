//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class ShipmentApi {
  ShipmentApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Cancel Shipment
  ///
  /// Remove shipment from route
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   the id of the shipment to cancel
  Future<Response> cancelShipmentWithHttpInfo(int id,) async {
    // ignore: prefer_const_declarations
    final path = r'/shipment/{id}/cancel'
      .replaceAll('{id}', id.toString());

    // ignore: prefer_final_locals
    Object? postBody;

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

  /// Cancel Shipment
  ///
  /// Remove shipment from route
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   the id of the shipment to cancel
  Future<void> cancelShipment(int id,) async {
    final response = await cancelShipmentWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Create Shipment
  ///
  /// Create new shipment
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [Shipment] body:
  Future<Response> createShipmentWithHttpInfo({ Shipment? body, }) async {
    // ignore: prefer_const_declarations
    final path = r'/shipment';

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

  /// Create Shipment
  ///
  /// Create new shipment
  ///
  /// Parameters:
  ///
  /// * [Shipment] body:
  Future<Shipment?> createShipment({ Shipment? body, }) async {
    final response = await createShipmentWithHttpInfo( body: body, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Shipment',) as Shipment;
    
    }
    return null;
  }

  /// Delete Shipment
  ///
  /// Delete an existing shipment
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   the id of the shipment to delete
  Future<Response> deleteShipmentWithHttpInfo(int id,) async {
    // ignore: prefer_const_declarations
    final path = r'/shipment/{id}'
      .replaceAll('{id}', id.toString());

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

  /// Delete Shipment
  ///
  /// Delete an existing shipment
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   the id of the shipment to delete
  Future<void> deleteShipment(int id,) async {
    final response = await deleteShipmentWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Get Shipment
  ///
  /// Get an existing shipment
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   the id of the shipment to get
  Future<Response> getShipmentWithHttpInfo(int id,) async {
    // ignore: prefer_const_declarations
    final path = r'/shipment/{id}'
      .replaceAll('{id}', id.toString());

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

  /// Get Shipment
  ///
  /// Get an existing shipment
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   the id of the shipment to get
  Future<Shipment?> getShipment(int id,) async {
    final response = await getShipmentWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Shipment',) as Shipment;
    
    }
    return null;
  }

  /// Search Shipments
  ///
  /// Search for shipments
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
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
  /// * [bool] activeOnly (required):
  ///   Return only active results
  ///
  /// * [int] ownerId:
  ///   The owner of the shipment
  ///
  /// * [int] riderId:
  ///   The rider associate to this shipment
  ///
  /// * [int] routeId:
  ///   The route associate to this shipment
  Future<Response> searchShipmentsWithHttpInfo(String sortField, bool descending, int start, int limit, bool activeOnly, { int? ownerId, int? riderId, int? routeId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/shipment';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (ownerId != null) {
      queryParams.addAll(_queryParams('', 'ownerId', ownerId));
    }
    if (riderId != null) {
      queryParams.addAll(_queryParams('', 'riderId', riderId));
    }
    if (routeId != null) {
      queryParams.addAll(_queryParams('', 'routeId', routeId));
    }
      queryParams.addAll(_queryParams('', 'sortField', sortField));
      queryParams.addAll(_queryParams('', 'descending', descending));
      queryParams.addAll(_queryParams('', 'start', start));
      queryParams.addAll(_queryParams('', 'limit', limit));
      queryParams.addAll(_queryParams('', 'activeOnly', activeOnly));

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

  /// Search Shipments
  ///
  /// Search for shipments
  ///
  /// Parameters:
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
  /// * [bool] activeOnly (required):
  ///   Return only active results
  ///
  /// * [int] ownerId:
  ///   The owner of the shipment
  ///
  /// * [int] riderId:
  ///   The rider associate to this shipment
  ///
  /// * [int] routeId:
  ///   The route associate to this shipment
  Future<List<Shipment>?> searchShipments(String sortField, bool descending, int start, int limit, bool activeOnly, { int? ownerId, int? riderId, int? routeId, }) async {
    final response = await searchShipmentsWithHttpInfo(sortField, descending, start, limit, activeOnly,  ownerId: ownerId, riderId: riderId, routeId: routeId, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<Shipment>') as List)
        .cast<Shipment>()
        .toList(growable: false);

    }
    return null;
  }

  /// Update Shipment
  ///
  /// Update an existing shipment
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   the id of the shipment to update
  ///
  /// * [Shipment] body:
  Future<Response> updateShipmentWithHttpInfo(int id, { Shipment? body, }) async {
    // ignore: prefer_const_declarations
    final path = r'/shipment/{id}'
      .replaceAll('{id}', id.toString());

    // ignore: prefer_final_locals
    Object? postBody = body;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'PUT',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Update Shipment
  ///
  /// Update an existing shipment
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   the id of the shipment to update
  ///
  /// * [Shipment] body:
  Future<Shipment?> updateShipment(int id, { Shipment? body, }) async {
    final response = await updateShipmentWithHttpInfo(id,  body: body, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Shipment',) as Shipment;
    
    }
    return null;
  }

  /// Uupdate Shipment Status
  ///
  /// Update status of an existing shipment
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   the id of the shipment to update status
  ///
  /// * [Map<String, bool>] body:
  Future<Response> updateShipmentStatusWithHttpInfo(int id, { Map<String, bool>? body, }) async {
    // ignore: prefer_const_declarations
    final path = r'/shipment/{id}/status'
      .replaceAll('{id}', id.toString());

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

  /// Uupdate Shipment Status
  ///
  /// Update status of an existing shipment
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   the id of the shipment to update status
  ///
  /// * [Map<String, bool>] body:
  Future<void> updateShipmentStatus(int id, { Map<String, bool>? body, }) async {
    final response = await updateShipmentStatusWithHttpInfo(id,  body: body, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }
}
