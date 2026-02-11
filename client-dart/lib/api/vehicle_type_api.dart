//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class VehicleTypeApi {
  VehicleTypeApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Create Vehicle Type
  ///
  /// Create a new vehicle type
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] vehicleType (required):
  ///   A JSON representation of cargo type. ```json {   \"name\": \"Truck\",   \"width\": 100,   \"height\": 200,   \"depth\": 200,   \"maxWeight\": 5000,   \"hub\": { \"id\": 1 } } ``` 
  ///
  /// * [VehicleType] body:
  Future<Response> createVehicleTypeWithHttpInfo(String vehicleType, { VehicleType? body, }) async {
    // ignore: prefer_const_declarations
    final path = r'/vehicle/type';

    // ignore: prefer_final_locals
    Object? postBody = body;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'vehicleType', vehicleType));

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

  /// Create Vehicle Type
  ///
  /// Create a new vehicle type
  ///
  /// Parameters:
  ///
  /// * [String] vehicleType (required):
  ///   A JSON representation of cargo type. ```json {   \"name\": \"Truck\",   \"width\": 100,   \"height\": 200,   \"depth\": 200,   \"maxWeight\": 5000,   \"hub\": { \"id\": 1 } } ``` 
  ///
  /// * [VehicleType] body:
  Future<VehicleType?> createVehicleType(String vehicleType, { VehicleType? body, }) async {
    final response = await createVehicleTypeWithHttpInfo(vehicleType,  body: body, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'VehicleType',) as VehicleType;
    
    }
    return null;
  }

  /// Delete Vehicle Type
  ///
  /// Delete a vehicle type
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] vehicleTypeId (required):
  ///   The id of the requested vehicle type
  Future<Response> deleteVehicleTypeWithHttpInfo(int vehicleTypeId,) async {
    // ignore: prefer_const_declarations
    final path = r'/vehicle/type/{vehicleTypeId}'
      .replaceAll('{vehicleTypeId}', vehicleTypeId.toString());

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

  /// Delete Vehicle Type
  ///
  /// Delete a vehicle type
  ///
  /// Parameters:
  ///
  /// * [int] vehicleTypeId (required):
  ///   The id of the requested vehicle type
  Future<void> deleteVehicleType(int vehicleTypeId,) async {
    final response = await deleteVehicleTypeWithHttpInfo(vehicleTypeId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Get Vehicle Type
  ///
  /// Get a vehicle type
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] vehicleTypeId (required):
  ///   The id of the requested vehicle type
  Future<Response> getVehicleTypeWithHttpInfo(int vehicleTypeId,) async {
    // ignore: prefer_const_declarations
    final path = r'/vehicle/type/{vehicleTypeId}'
      .replaceAll('{vehicleTypeId}', vehicleTypeId.toString());

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

  /// Get Vehicle Type
  ///
  /// Get a vehicle type
  ///
  /// Parameters:
  ///
  /// * [int] vehicleTypeId (required):
  ///   The id of the requested vehicle type
  Future<VehicleType?> getVehicleType(int vehicleTypeId,) async {
    final response = await getVehicleTypeWithHttpInfo(vehicleTypeId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'VehicleType',) as VehicleType;
    
    }
    return null;
  }

  /// Search Vehicle Type
  ///
  /// Search for types of vehicles
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
  /// * [int] retailerId:
  ///   Filter by retailer
  ///
  /// * [int] hubId:
  ///   Filter by service hub
  Future<Response> searchVehicleTypesWithHttpInfo(String sortField, bool descending, int start, int limit, bool activeOnly, { int? retailerId, int? hubId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/vehicle/type';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (retailerId != null) {
      queryParams.addAll(_queryParams('', 'retailerId', retailerId));
    }
    if (hubId != null) {
      queryParams.addAll(_queryParams('', 'hubId', hubId));
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

  /// Search Vehicle Type
  ///
  /// Search for types of vehicles
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
  /// * [int] retailerId:
  ///   Filter by retailer
  ///
  /// * [int] hubId:
  ///   Filter by service hub
  Future<List<VehicleType>?> searchVehicleTypes(String sortField, bool descending, int start, int limit, bool activeOnly, { int? retailerId, int? hubId, }) async {
    final response = await searchVehicleTypesWithHttpInfo(sortField, descending, start, limit, activeOnly,  retailerId: retailerId, hubId: hubId, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<VehicleType>') as List)
        .cast<VehicleType>()
        .toList(growable: false);

    }
    return null;
  }

  /// Update Vehicle Type
  ///
  /// Update a vehicle type
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] vehicleTypeId (required):
  ///   The id of the vehicle type to update
  ///
  /// * [String] vehicleType (required):
  ///   The new data for the vehicle type to update to. A JSON representation of cargo type, for example: ```json {   \"name\": \"Truck\",   \"width\": 100,   \"height\": 200,   \"depth\": 200,   \"maxWeight\": 5000,   \"hub\": { \"id\": 1 } } ``` 
  ///
  /// * [VehicleType] body:
  Future<Response> updateVehicleTypeWithHttpInfo(int vehicleTypeId, String vehicleType, { VehicleType? body, }) async {
    // ignore: prefer_const_declarations
    final path = r'/vehicle/type/{vehicleTypeId}'
      .replaceAll('{vehicleTypeId}', vehicleTypeId.toString());

    // ignore: prefer_final_locals
    Object? postBody = body;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'vehicleType', vehicleType));

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

  /// Update Vehicle Type
  ///
  /// Update a vehicle type
  ///
  /// Parameters:
  ///
  /// * [int] vehicleTypeId (required):
  ///   The id of the vehicle type to update
  ///
  /// * [String] vehicleType (required):
  ///   The new data for the vehicle type to update to. A JSON representation of cargo type, for example: ```json {   \"name\": \"Truck\",   \"width\": 100,   \"height\": 200,   \"depth\": 200,   \"maxWeight\": 5000,   \"hub\": { \"id\": 1 } } ``` 
  ///
  /// * [VehicleType] body:
  Future<VehicleType?> updateVehicleType(int vehicleTypeId, String vehicleType, { VehicleType? body, }) async {
    final response = await updateVehicleTypeWithHttpInfo(vehicleTypeId, vehicleType,  body: body, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'VehicleType',) as VehicleType;
    
    }
    return null;
  }
}
