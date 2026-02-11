//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class VehicleApi {
  VehicleApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Create Vehicle
  ///
  /// Create new vehicle
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] vehicle (required):
  ///   A JSON representation of cargo type. ```json {   \"name\": \"Truck\",   \"vehicleType\": { \"id\": 1 },   \"hub\": { \"id\": 1 } } ``` 
  ///
  /// * [Vehicle] body:
  Future<Response> createVehicleWithHttpInfo(String vehicle, { Vehicle? body, }) async {
    // ignore: prefer_const_declarations
    final path = r'/vehicle';

    // ignore: prefer_final_locals
    Object? postBody = body;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'vehicle', vehicle));

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

  /// Create Vehicle
  ///
  /// Create new vehicle
  ///
  /// Parameters:
  ///
  /// * [String] vehicle (required):
  ///   A JSON representation of cargo type. ```json {   \"name\": \"Truck\",   \"vehicleType\": { \"id\": 1 },   \"hub\": { \"id\": 1 } } ``` 
  ///
  /// * [Vehicle] body:
  Future<Vehicle?> createVehicle(String vehicle, { Vehicle? body, }) async {
    final response = await createVehicleWithHttpInfo(vehicle,  body: body, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Vehicle',) as Vehicle;
    
    }
    return null;
  }

  /// Delete Vehicle
  ///
  /// Delete an existing vehicle
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   The id of the vehicle to delete
  Future<Response> deleteVehicleWithHttpInfo(int id,) async {
    // ignore: prefer_const_declarations
    final path = r'/vehicle/{id}'
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

  /// Delete Vehicle
  ///
  /// Delete an existing vehicle
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   The id of the vehicle to delete
  Future<void> deleteVehicle(int id,) async {
    final response = await deleteVehicleWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Get Vehicle
  ///
  /// Get an existing vehicle
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   The id of the vehicle requested
  Future<Response> getVehicleWithHttpInfo(int id,) async {
    // ignore: prefer_const_declarations
    final path = r'/vehicle/{id}'
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

  /// Get Vehicle
  ///
  /// Get an existing vehicle
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   The id of the vehicle requested
  Future<Vehicle?> getVehicle(int id,) async {
    final response = await getVehicleWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Vehicle',) as Vehicle;
    
    }
    return null;
  }

  /// Search Vehicle
  ///
  /// Search for vehicles
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] hubId (required):
  ///   Filter by service hub
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
  /// * [String] keyword:
  ///   The keyword to search for
  Future<Response> searchVehicleWithHttpInfo(int hubId, String sortField, bool descending, int start, int limit, bool activeOnly, { String? keyword, }) async {
    // ignore: prefer_const_declarations
    final path = r'/vehicle';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'hubId', hubId));
    if (keyword != null) {
      queryParams.addAll(_queryParams('', 'keyword', keyword));
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

  /// Search Vehicle
  ///
  /// Search for vehicles
  ///
  /// Parameters:
  ///
  /// * [int] hubId (required):
  ///   Filter by service hub
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
  /// * [String] keyword:
  ///   The keyword to search for
  Future<List<Vehicle>?> searchVehicle(int hubId, String sortField, bool descending, int start, int limit, bool activeOnly, { String? keyword, }) async {
    final response = await searchVehicleWithHttpInfo(hubId, sortField, descending, start, limit, activeOnly,  keyword: keyword, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<Vehicle>') as List)
        .cast<Vehicle>()
        .toList(growable: false);

    }
    return null;
  }

  /// Update Vehicle
  ///
  /// Update an existing vehicle
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   The id of the vehicle to update
  ///
  /// * [String] vehicle (required):
  ///   A JSON representation of cargo type, for example: ```json {   \"name\": \"Truck\",   \"vehicleType\": { \"id\": 1 },   \"hub\": { \"id\": 1 } } ``` 
  ///
  /// * [Vehicle] body:
  Future<Response> updateVehicleWithHttpInfo(int id, String vehicle, { Vehicle? body, }) async {
    // ignore: prefer_const_declarations
    final path = r'/vehicle/{id}'
      .replaceAll('{id}', id.toString());

    // ignore: prefer_final_locals
    Object? postBody = body;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'vehicle', vehicle));

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

  /// Update Vehicle
  ///
  /// Update an existing vehicle
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   The id of the vehicle to update
  ///
  /// * [String] vehicle (required):
  ///   A JSON representation of cargo type, for example: ```json {   \"name\": \"Truck\",   \"vehicleType\": { \"id\": 1 },   \"hub\": { \"id\": 1 } } ``` 
  ///
  /// * [Vehicle] body:
  Future<Vehicle?> updateVehicle(int id, String vehicle, { Vehicle? body, }) async {
    final response = await updateVehicleWithHttpInfo(id, vehicle,  body: body, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Vehicle',) as Vehicle;
    
    }
    return null;
  }
}
