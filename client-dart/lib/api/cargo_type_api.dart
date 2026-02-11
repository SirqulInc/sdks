//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class CargoTypeApi {
  CargoTypeApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Create Cargo Type
  ///
  /// Create new cargo type
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [CargoType] body:
  Future<Response> createCargoTypeWithHttpInfo({ CargoType? body, }) async {
    // ignore: prefer_const_declarations
    final path = r'/cargo/type';

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

  /// Create Cargo Type
  ///
  /// Create new cargo type
  ///
  /// Parameters:
  ///
  /// * [CargoType] body:
  Future<CargoType?> createCargoType({ CargoType? body, }) async {
    final response = await createCargoTypeWithHttpInfo( body: body, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CargoType',) as CargoType;
    
    }
    return null;
  }

  /// Delete Cargo Type
  ///
  /// Delete a type of cargo
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] cargoTypeId (required):
  ///   the ID of the cargo type
  Future<Response> deleteCargoTypeWithHttpInfo(int cargoTypeId,) async {
    // ignore: prefer_const_declarations
    final path = r'/cargo/type/{cargoTypeId}'
      .replaceAll('{cargoTypeId}', cargoTypeId.toString());

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

  /// Delete Cargo Type
  ///
  /// Delete a type of cargo
  ///
  /// Parameters:
  ///
  /// * [int] cargoTypeId (required):
  ///   the ID of the cargo type
  Future<void> deleteCargoType(int cargoTypeId,) async {
    final response = await deleteCargoTypeWithHttpInfo(cargoTypeId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Get Cargo Type
  ///
  /// Get an existing cargo type
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] cargoTypeId (required):
  ///   the cargo type ID
  Future<Response> getCargoTypeWithHttpInfo(int cargoTypeId,) async {
    // ignore: prefer_const_declarations
    final path = r'/cargo/type/{cargoTypeId}'
      .replaceAll('{cargoTypeId}', cargoTypeId.toString());

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

  /// Get Cargo Type
  ///
  /// Get an existing cargo type
  ///
  /// Parameters:
  ///
  /// * [int] cargoTypeId (required):
  ///   the cargo type ID
  Future<CargoType?> getCargoType(int cargoTypeId,) async {
    final response = await getCargoTypeWithHttpInfo(cargoTypeId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CargoType',) as CargoType;
    
    }
    return null;
  }

  /// Search Cargo Type
  ///
  /// Search for types of cargo
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] sortField (required):
  ///   the sort field to use for the cargo type
  ///
  /// * [bool] descending (required):
  ///   if the cargo type should be should be in descending order
  ///
  /// * [int] start (required):
  ///   the start of the search
  ///
  /// * [int] limit (required):
  ///   the limit of the search
  ///
  /// * [bool] activeOnly (required):
  ///   if search should be on active only
  ///
  /// * [int] retailerId:
  ///   the id of the retailer location
  ///
  /// * [int] hubId:
  ///   the ID of the hub
  Future<Response> searchCargoTypesWithHttpInfo(String sortField, bool descending, int start, int limit, bool activeOnly, { int? retailerId, int? hubId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/cargo/type';

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

  /// Search Cargo Type
  ///
  /// Search for types of cargo
  ///
  /// Parameters:
  ///
  /// * [String] sortField (required):
  ///   the sort field to use for the cargo type
  ///
  /// * [bool] descending (required):
  ///   if the cargo type should be should be in descending order
  ///
  /// * [int] start (required):
  ///   the start of the search
  ///
  /// * [int] limit (required):
  ///   the limit of the search
  ///
  /// * [bool] activeOnly (required):
  ///   if search should be on active only
  ///
  /// * [int] retailerId:
  ///   the id of the retailer location
  ///
  /// * [int] hubId:
  ///   the ID of the hub
  Future<List<CargoType>?> searchCargoTypes(String sortField, bool descending, int start, int limit, bool activeOnly, { int? retailerId, int? hubId, }) async {
    final response = await searchCargoTypesWithHttpInfo(sortField, descending, start, limit, activeOnly,  retailerId: retailerId, hubId: hubId, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<CargoType>') as List)
        .cast<CargoType>()
        .toList(growable: false);

    }
    return null;
  }

  /// Update Cargo Type
  ///
  /// Update an existing cargo type
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] cargoTypeId (required):
  ///   the ID of the cargo type
  ///
  /// * [CargoType] body:
  Future<Response> updateCargoTypeWithHttpInfo(int cargoTypeId, { CargoType? body, }) async {
    // ignore: prefer_const_declarations
    final path = r'/cargo/type/{cargoTypeId}'
      .replaceAll('{cargoTypeId}', cargoTypeId.toString());

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

  /// Update Cargo Type
  ///
  /// Update an existing cargo type
  ///
  /// Parameters:
  ///
  /// * [int] cargoTypeId (required):
  ///   the ID of the cargo type
  ///
  /// * [CargoType] body:
  Future<CargoType?> updateCargoType(int cargoTypeId, { CargoType? body, }) async {
    final response = await updateCargoTypeWithHttpInfo(cargoTypeId,  body: body, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CargoType',) as CargoType;
    
    }
    return null;
  }
}
