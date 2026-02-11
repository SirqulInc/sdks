//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class RouteApi {
  RouteApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Approve Route
  ///
  /// Approve a route
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] routeId (required):
  ///   the id of the route to approve
  Future<Response> approveRouteWithHttpInfo(int routeId,) async {
    // ignore: prefer_const_declarations
    final path = r'/route/{routeId}/approve'
      .replaceAll('{routeId}', routeId.toString());

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

  /// Approve Route
  ///
  /// Approve a route
  ///
  /// Parameters:
  ///
  /// * [int] routeId (required):
  ///   the id of the route to approve
  Future<Route?> approveRoute(int routeId,) async {
    final response = await approveRouteWithHttpInfo(routeId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Route',) as Route;
    
    }
    return null;
  }

  /// Copy Route
  ///
  /// Make an copy of the given route with optional overriding properties
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] routeId (required):
  ///   the id of the route to duplicate
  ///
  /// * [Route] body:
  Future<Response> copyRouteWithHttpInfo(int routeId, { Route? body, }) async {
    // ignore: prefer_const_declarations
    final path = r'/route/{routeId}/copy'
      .replaceAll('{routeId}', routeId.toString());

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

  /// Copy Route
  ///
  /// Make an copy of the given route with optional overriding properties
  ///
  /// Parameters:
  ///
  /// * [int] routeId (required):
  ///   the id of the route to duplicate
  ///
  /// * [Route] body:
  Future<Route?> copyRoute(int routeId, { Route? body, }) async {
    final response = await copyRouteWithHttpInfo(routeId,  body: body, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Route',) as Route;
    
    }
    return null;
  }

  /// Create Route
  ///
  /// Create new route
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [Route] body:
  Future<Response> createRouteWithHttpInfo({ Route? body, }) async {
    // ignore: prefer_const_declarations
    final path = r'/route';

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

  /// Create Route
  ///
  /// Create new route
  ///
  /// Parameters:
  ///
  /// * [Route] body:
  Future<Route?> createRoute({ Route? body, }) async {
    final response = await createRouteWithHttpInfo( body: body, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Route',) as Route;
    
    }
    return null;
  }

  /// Update Route Directions
  ///
  /// Regenerate the directions of a route
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] routeId (required):
  ///   the id of the route to update directions for
  Future<Response> createRouteDirectionsWithHttpInfo(int routeId,) async {
    // ignore: prefer_const_declarations
    final path = r'/route/{routeId}/directions'
      .replaceAll('{routeId}', routeId.toString());

    // ignore: prefer_final_locals
    Object? postBody;

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

  /// Update Route Directions
  ///
  /// Regenerate the directions of a route
  ///
  /// Parameters:
  ///
  /// * [int] routeId (required):
  ///   the id of the route to update directions for
  Future<List<Direction>?> createRouteDirections(int routeId,) async {
    final response = await createRouteDirectionsWithHttpInfo(routeId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<Direction>') as List)
        .cast<Direction>()
        .toList(growable: false);

    }
    return null;
  }

  /// Create Route Polyline
  ///
  /// Update the polyline of the requested route
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] routeId (required):
  ///   the id of the route to create a polyline for
  Future<Response> createRoutePolylineWithHttpInfo(int routeId,) async {
    // ignore: prefer_const_declarations
    final path = r'/route/{routeId}/polyline'
      .replaceAll('{routeId}', routeId.toString());

    // ignore: prefer_final_locals
    Object? postBody;

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

  /// Create Route Polyline
  ///
  /// Update the polyline of the requested route
  ///
  /// Parameters:
  ///
  /// * [int] routeId (required):
  ///   the id of the route to create a polyline for
  Future<Route?> createRoutePolyline(int routeId,) async {
    final response = await createRoutePolylineWithHttpInfo(routeId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Route',) as Route;
    
    }
    return null;
  }

  /// Delete Route
  ///
  /// Delete an existing route
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] routeId (required):
  ///   the id of the route
  Future<Response> deleteRouteWithHttpInfo(int routeId,) async {
    // ignore: prefer_const_declarations
    final path = r'/route/{routeId}'
      .replaceAll('{routeId}', routeId.toString());

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

  /// Delete Route
  ///
  /// Delete an existing route
  ///
  /// Parameters:
  ///
  /// * [int] routeId (required):
  ///   the id of the route
  Future<void> deleteRoute(int routeId,) async {
    final response = await deleteRouteWithHttpInfo(routeId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Disapprove Route
  ///
  /// Disapprove a route
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] routeId (required):
  ///   the id of the route to reject
  Future<Response> disapproveRouteWithHttpInfo(int routeId,) async {
    // ignore: prefer_const_declarations
    final path = r'/route/{routeId}/disapprove'
      .replaceAll('{routeId}', routeId.toString());

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

  /// Disapprove Route
  ///
  /// Disapprove a route
  ///
  /// Parameters:
  ///
  /// * [int] routeId (required):
  ///   the id of the route to reject
  Future<Route?> disapproveRoute(int routeId,) async {
    final response = await disapproveRouteWithHttpInfo(routeId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Route',) as Route;
    
    }
    return null;
  }

  /// Get Route
  ///
  /// Get an existing route
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] routeId (required):
  ///   the id of the route to get
  ///
  /// * [bool] showInheritedProperties (required):
  ///   return inherited properties from parent or not
  Future<Response> getRouteWithHttpInfo(int routeId, bool showInheritedProperties,) async {
    // ignore: prefer_const_declarations
    final path = r'/route/{routeId}'
      .replaceAll('{routeId}', routeId.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'showInheritedProperties', showInheritedProperties));

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

  /// Get Route
  ///
  /// Get an existing route
  ///
  /// Parameters:
  ///
  /// * [int] routeId (required):
  ///   the id of the route to get
  ///
  /// * [bool] showInheritedProperties (required):
  ///   return inherited properties from parent or not
  Future<Route?> getRoute(int routeId, bool showInheritedProperties,) async {
    final response = await getRouteWithHttpInfo(routeId, showInheritedProperties,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Route',) as Route;
    
    }
    return null;
  }

  /// Get Route Directions
  ///
  /// Get the directions of a route
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] routeId (required):
  ///   the id of the route to get directions for
  Future<Response> getRouteDirectionsWithHttpInfo(int routeId,) async {
    // ignore: prefer_const_declarations
    final path = r'/route/{routeId}/directions'
      .replaceAll('{routeId}', routeId.toString());

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

  /// Get Route Directions
  ///
  /// Get the directions of a route
  ///
  /// Parameters:
  ///
  /// * [int] routeId (required):
  ///   the id of the route to get directions for
  Future<List<Direction>?> getRouteDirections(int routeId,) async {
    final response = await getRouteDirectionsWithHttpInfo(routeId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<Direction>') as List)
        .cast<Direction>()
        .toList(growable: false);

    }
    return null;
  }

  /// Get Route Shipments
  ///
  /// Get the shipments on the requested route
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] routeId (required):
  ///   the id of the route to get shipments for
  Future<Response> getRouteShipmentsWithHttpInfo(int routeId,) async {
    // ignore: prefer_const_declarations
    final path = r'/route/{routeId}/shipments'
      .replaceAll('{routeId}', routeId.toString());

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

  /// Get Route Shipments
  ///
  /// Get the shipments on the requested route
  ///
  /// Parameters:
  ///
  /// * [int] routeId (required):
  ///   the id of the route to get shipments for
  Future<List<Shipment>?> getRouteShipments(int routeId,) async {
    final response = await getRouteShipmentsWithHttpInfo(routeId,);
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

  /// Get Route Stop
  ///
  /// Get the specific stop on a route
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] routeId (required):
  ///   the id of the route to get stops for
  ///
  /// * [int] stopId (required):
  ///   the id of the specific stop on the route
  Future<Response> getRouteStopWithHttpInfo(int routeId, int stopId,) async {
    // ignore: prefer_const_declarations
    final path = r'/route/{routeId}/stop/{stopId}'
      .replaceAll('{routeId}', routeId.toString())
      .replaceAll('{stopId}', stopId.toString());

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

  /// Get Route Stop
  ///
  /// Get the specific stop on a route
  ///
  /// Parameters:
  ///
  /// * [int] routeId (required):
  ///   the id of the route to get stops for
  ///
  /// * [int] stopId (required):
  ///   the id of the specific stop on the route
  Future<Stop?> getRouteStop(int routeId, int stopId,) async {
    final response = await getRouteStopWithHttpInfo(routeId, stopId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Stop',) as Stop;
    
    }
    return null;
  }

  /// Get Route Stops
  ///
  /// The stops of the route requested
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] routeId (required):
  ///   the id of the route
  ///
  /// * [bool] confirmedOnly (required):
  ///   only get stops that have been confirmed or not
  Future<Response> getRouteStopsWithHttpInfo(int routeId, bool confirmedOnly,) async {
    // ignore: prefer_const_declarations
    final path = r'/route/{routeId}/stops'
      .replaceAll('{routeId}', routeId.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'confirmedOnly', confirmedOnly));

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

  /// Get Route Stops
  ///
  /// The stops of the route requested
  ///
  /// Parameters:
  ///
  /// * [int] routeId (required):
  ///   the id of the route
  ///
  /// * [bool] confirmedOnly (required):
  ///   only get stops that have been confirmed or not
  Future<List<Stop>?> getRouteStops(int routeId, bool confirmedOnly,) async {
    final response = await getRouteStopsWithHttpInfo(routeId, confirmedOnly,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<Stop>') as List)
        .cast<Stop>()
        .toList(growable: false);

    }
    return null;
  }

  /// Get Shipments At Stop
  ///
  /// Get the list of shipments on the requested route at a stop
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] routeId (required):
  ///   the id of the route
  ///
  /// * [int] stopId (required):
  ///   the id of the stop to get shipments on
  Future<Response> getShipmentsAtStopWithHttpInfo(int routeId, int stopId,) async {
    // ignore: prefer_const_declarations
    final path = r'/route/{routeId}/stop/{stopId}/shipments'
      .replaceAll('{routeId}', routeId.toString())
      .replaceAll('{stopId}', stopId.toString());

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

  /// Get Shipments At Stop
  ///
  /// Get the list of shipments on the requested route at a stop
  ///
  /// Parameters:
  ///
  /// * [int] routeId (required):
  ///   the id of the route
  ///
  /// * [int] stopId (required):
  ///   the id of the stop to get shipments on
  Future<List<Shipment>?> getShipmentsAtStop(int routeId, int stopId,) async {
    final response = await getShipmentsAtStopWithHttpInfo(routeId, stopId,);
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

  /// Optimize Route
  ///
  /// Optimize a route. The optimization method based on how the server is configured.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] routeId (required):
  ///   the id of the route to optimize
  Future<Response> optimizeRouteWithHttpInfo(int routeId,) async {
    // ignore: prefer_const_declarations
    final path = r'/route/{routeId}/optimize'
      .replaceAll('{routeId}', routeId.toString());

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

  /// Optimize Route
  ///
  /// Optimize a route. The optimization method based on how the server is configured.
  ///
  /// Parameters:
  ///
  /// * [int] routeId (required):
  ///   the id of the route to optimize
  Future<void> optimizeRoute(int routeId,) async {
    final response = await optimizeRouteWithHttpInfo(routeId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Delete Stop
  ///
  /// Delete a stop on a route
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] routeId (required):
  ///   the id of the route
  ///
  /// * [int] stopId (required):
  ///   the id of the specific stop to delete on the route
  Future<Response> removeStopWithHttpInfo(int routeId, int stopId,) async {
    // ignore: prefer_const_declarations
    final path = r'/route/{routeId}/stop/{stopId}'
      .replaceAll('{routeId}', routeId.toString())
      .replaceAll('{stopId}', stopId.toString());

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

  /// Delete Stop
  ///
  /// Delete a stop on a route
  ///
  /// Parameters:
  ///
  /// * [int] routeId (required):
  ///   the id of the route
  ///
  /// * [int] stopId (required):
  ///   the id of the specific stop to delete on the route
  Future<void> removeStop(int routeId, int stopId,) async {
    final response = await removeStopWithHttpInfo(routeId, stopId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Reorder Route Stops
  ///
  /// Reordering the stops on the route with and update route distance, time, direction, and polyline
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] routeId (required):
  ///   the id of the route
  ///
  /// * [List<Stop>] body:
  Future<Response> reorderRouteStopsPatchWithHttpInfo(int routeId, { List<Stop>? body, }) async {
    // ignore: prefer_const_declarations
    final path = r'/route/{routeId}/stops/reorder'
      .replaceAll('{routeId}', routeId.toString());

    // ignore: prefer_final_locals
    Object? postBody = body;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'PATCH',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Reorder Route Stops
  ///
  /// Reordering the stops on the route with and update route distance, time, direction, and polyline
  ///
  /// Parameters:
  ///
  /// * [int] routeId (required):
  ///   the id of the route
  ///
  /// * [List<Stop>] body:
  Future<List<Stop>?> reorderRouteStopsPatch(int routeId, { List<Stop>? body, }) async {
    final response = await reorderRouteStopsPatchWithHttpInfo(routeId,  body: body, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<Stop>') as List)
        .cast<Stop>()
        .toList(growable: false);

    }
    return null;
  }

  /// Reorder Route Stops
  ///
  /// Reordering the stops on the route with and update route distance, time, direction, and polyline
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] routeId (required):
  ///   the id of the route
  ///
  /// * [List<Stop>] body:
  Future<Response> reorderRouteStopsPostWithHttpInfo(int routeId, { List<Stop>? body, }) async {
    // ignore: prefer_const_declarations
    final path = r'/route/{routeId}/stops/reorder'
      .replaceAll('{routeId}', routeId.toString());

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

  /// Reorder Route Stops
  ///
  /// Reordering the stops on the route with and update route distance, time, direction, and polyline
  ///
  /// Parameters:
  ///
  /// * [int] routeId (required):
  ///   the id of the route
  ///
  /// * [List<Stop>] body:
  Future<List<Stop>?> reorderRouteStopsPost(int routeId, { List<Stop>? body, }) async {
    final response = await reorderRouteStopsPostWithHttpInfo(routeId,  body: body, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<Stop>') as List)
        .cast<Stop>()
        .toList(growable: false);

    }
    return null;
  }

  /// Search Routes
  ///
  /// Search for routes.
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
  /// * [bool] includesEmpty (required):
  ///   Include empty routes or not
  ///
  /// * [bool] rootOnly (required):
  ///   Only return root instance routes
  ///
  /// * [bool] showInheritedProperties (required):
  ///   Display root route properties
  ///
  /// * [int] hubId:
  ///   Filter results by service hub
  ///
  /// * [int] programId:
  ///   Filter results by program
  ///
  /// * [int] scheduledStart:
  ///   The start date to filter the results by
  ///
  /// * [int] scheduledEnd:
  ///   The end date to filter the results by
  ///
  /// * [int] updatedStart:
  ///   The lower bound of updated date
  ///
  /// * [int] updatedEnd:
  ///   The upper bound of updated date
  ///
  /// * [bool] featured:
  ///   The route is featured or not
  ///
  /// * [int] seatCount:
  ///   Has at least this many seat available
  ///
  /// * [bool] approved:
  ///   Has been approved or not
  ///
  /// * [bool] started:
  ///   Has started or not
  ///
  /// * [bool] completed:
  ///   Has completed or not
  ///
  /// * [bool] valid:
  ///   Is valid or not
  ///
  /// * [int] parentId:
  ///   If it is a recurring route based on the parent route
  Future<Response> searchRoutesWithHttpInfo(String sortField, bool descending, int start, int limit, bool activeOnly, bool includesEmpty, bool rootOnly, bool showInheritedProperties, { int? hubId, int? programId, int? scheduledStart, int? scheduledEnd, int? updatedStart, int? updatedEnd, bool? featured, int? seatCount, bool? approved, bool? started, bool? completed, bool? valid, int? parentId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/route';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (hubId != null) {
      queryParams.addAll(_queryParams('', 'hubId', hubId));
    }
    if (programId != null) {
      queryParams.addAll(_queryParams('', 'programId', programId));
    }
    if (scheduledStart != null) {
      queryParams.addAll(_queryParams('', 'scheduledStart', scheduledStart));
    }
    if (scheduledEnd != null) {
      queryParams.addAll(_queryParams('', 'scheduledEnd', scheduledEnd));
    }
    if (updatedStart != null) {
      queryParams.addAll(_queryParams('', 'updatedStart', updatedStart));
    }
    if (updatedEnd != null) {
      queryParams.addAll(_queryParams('', 'updatedEnd', updatedEnd));
    }
    if (featured != null) {
      queryParams.addAll(_queryParams('', 'featured', featured));
    }
    if (seatCount != null) {
      queryParams.addAll(_queryParams('', 'seatCount', seatCount));
    }
    if (approved != null) {
      queryParams.addAll(_queryParams('', 'approved', approved));
    }
    if (started != null) {
      queryParams.addAll(_queryParams('', 'started', started));
    }
    if (completed != null) {
      queryParams.addAll(_queryParams('', 'completed', completed));
    }
    if (valid != null) {
      queryParams.addAll(_queryParams('', 'valid', valid));
    }
    if (parentId != null) {
      queryParams.addAll(_queryParams('', 'parentId', parentId));
    }
      queryParams.addAll(_queryParams('', 'sortField', sortField));
      queryParams.addAll(_queryParams('', 'descending', descending));
      queryParams.addAll(_queryParams('', 'start', start));
      queryParams.addAll(_queryParams('', 'limit', limit));
      queryParams.addAll(_queryParams('', 'activeOnly', activeOnly));
      queryParams.addAll(_queryParams('', 'includesEmpty', includesEmpty));
      queryParams.addAll(_queryParams('', 'rootOnly', rootOnly));
      queryParams.addAll(_queryParams('', 'showInheritedProperties', showInheritedProperties));

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

  /// Search Routes
  ///
  /// Search for routes.
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
  /// * [bool] includesEmpty (required):
  ///   Include empty routes or not
  ///
  /// * [bool] rootOnly (required):
  ///   Only return root instance routes
  ///
  /// * [bool] showInheritedProperties (required):
  ///   Display root route properties
  ///
  /// * [int] hubId:
  ///   Filter results by service hub
  ///
  /// * [int] programId:
  ///   Filter results by program
  ///
  /// * [int] scheduledStart:
  ///   The start date to filter the results by
  ///
  /// * [int] scheduledEnd:
  ///   The end date to filter the results by
  ///
  /// * [int] updatedStart:
  ///   The lower bound of updated date
  ///
  /// * [int] updatedEnd:
  ///   The upper bound of updated date
  ///
  /// * [bool] featured:
  ///   The route is featured or not
  ///
  /// * [int] seatCount:
  ///   Has at least this many seat available
  ///
  /// * [bool] approved:
  ///   Has been approved or not
  ///
  /// * [bool] started:
  ///   Has started or not
  ///
  /// * [bool] completed:
  ///   Has completed or not
  ///
  /// * [bool] valid:
  ///   Is valid or not
  ///
  /// * [int] parentId:
  ///   If it is a recurring route based on the parent route
  Future<List<Route>?> searchRoutes(String sortField, bool descending, int start, int limit, bool activeOnly, bool includesEmpty, bool rootOnly, bool showInheritedProperties, { int? hubId, int? programId, int? scheduledStart, int? scheduledEnd, int? updatedStart, int? updatedEnd, bool? featured, int? seatCount, bool? approved, bool? started, bool? completed, bool? valid, int? parentId, }) async {
    final response = await searchRoutesWithHttpInfo(sortField, descending, start, limit, activeOnly, includesEmpty, rootOnly, showInheritedProperties,  hubId: hubId, programId: programId, scheduledStart: scheduledStart, scheduledEnd: scheduledEnd, updatedStart: updatedStart, updatedEnd: updatedEnd, featured: featured, seatCount: seatCount, approved: approved, started: started, completed: completed, valid: valid, parentId: parentId, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<Route>') as List)
        .cast<Route>()
        .toList(growable: false);

    }
    return null;
  }

  /// Set Driver
  ///
  /// Update the driver of the route.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   the id of the route
  ///
  /// * [int] driverId (required):
  ///   the id of the driver
  Future<Response> setDriverWithHttpInfo(int id, int driverId,) async {
    // ignore: prefer_const_declarations
    final path = r'/route/{id}/driver/{driverId}'
      .replaceAll('{id}', id.toString())
      .replaceAll('{driverId}', driverId.toString());

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

  /// Set Driver
  ///
  /// Update the driver of the route.
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   the id of the route
  ///
  /// * [int] driverId (required):
  ///   the id of the driver
  Future<void> setDriver(int id, int driverId,) async {
    final response = await setDriverWithHttpInfo(id, driverId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Update Route
  ///
  /// Update an existing route
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] routeId (required):
  ///   the id of the route
  ///
  /// * [Route] body:
  Future<Response> updateRouteWithHttpInfo(int routeId, { Route? body, }) async {
    // ignore: prefer_const_declarations
    final path = r'/route/{routeId}'
      .replaceAll('{routeId}', routeId.toString());

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

  /// Update Route
  ///
  /// Update an existing route
  ///
  /// Parameters:
  ///
  /// * [int] routeId (required):
  ///   the id of the route
  ///
  /// * [Route] body:
  Future<Route?> updateRoute(int routeId, { Route? body, }) async {
    final response = await updateRouteWithHttpInfo(routeId,  body: body, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Route',) as Route;
    
    }
    return null;
  }

  /// Update Route Stop
  ///
  /// Update a stop on a specified route
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] routeId (required):
  ///   the id of the route to update stops for
  ///
  /// * [int] stopId (required):
  ///   the id of the specific stop to update on the route
  ///
  /// * [Stop] body:
  Future<Response> updateRouteStopWithHttpInfo(int routeId, int stopId, { Stop? body, }) async {
    // ignore: prefer_const_declarations
    final path = r'/route/{routeId}/stop/{stopId}'
      .replaceAll('{routeId}', routeId.toString())
      .replaceAll('{stopId}', stopId.toString());

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

  /// Update Route Stop
  ///
  /// Update a stop on a specified route
  ///
  /// Parameters:
  ///
  /// * [int] routeId (required):
  ///   the id of the route to update stops for
  ///
  /// * [int] stopId (required):
  ///   the id of the specific stop to update on the route
  ///
  /// * [Stop] body:
  Future<void> updateRouteStop(int routeId, int stopId, { Stop? body, }) async {
    final response = await updateRouteStopWithHttpInfo(routeId, stopId,  body: body, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }
}
