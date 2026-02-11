//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class TripApi {
  TripApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Create Trip
  ///
  /// Create a new trip
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [Trip] body:
  Future<Response> createTripWithHttpInfo({ Trip? body, }) async {
    // ignore: prefer_const_declarations
    final path = r'/trip';

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

  /// Create Trip
  ///
  /// Create a new trip
  ///
  /// Parameters:
  ///
  /// * [Trip] body:
  Future<Trip?> createTrip({ Trip? body, }) async {
    final response = await createTripWithHttpInfo( body: body, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Trip',) as Trip;
    
    }
    return null;
  }

  /// Delete Trip
  ///
  /// Delete an existing trip
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   the id of the trip to delete
  Future<Response> deleteWithHttpInfo(int id,) async {
    // ignore: prefer_const_declarations
    final path = r'/trip/{id}'
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

  /// Delete Trip
  ///
  /// Delete an existing trip
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   the id of the trip to delete
  Future<void> delete(int id,) async {
    final response = await deleteWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Set Trip Preference Driver
  ///
  /// Update trip preference to drive, also create a route and assign the trip to the route
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   the id of the trip
  ///
  /// * [bool] recurrence (required):
  ///   the frequency of the trip (e.g. weekly, until 2018-08-09)
  Future<Response> driveTripWithHttpInfo(int id, bool recurrence,) async {
    // ignore: prefer_const_declarations
    final path = r'/trip/{id}/drive'
      .replaceAll('{id}', id.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'recurrence', recurrence));

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

  /// Set Trip Preference Driver
  ///
  /// Update trip preference to drive, also create a route and assign the trip to the route
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   the id of the trip
  ///
  /// * [bool] recurrence (required):
  ///   the frequency of the trip (e.g. weekly, until 2018-08-09)
  Future<Trip?> driveTrip(int id, bool recurrence,) async {
    final response = await driveTripWithHttpInfo(id, recurrence,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Trip',) as Trip;
    
    }
    return null;
  }

  /// Set Trip Preference Flexible
  ///
  /// Update trip preference to flexible.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   the id of the trip
  ///
  /// * [bool] recurrence (required):
  ///   the frequency of the trip (e.g. weekly, until 2018-08-09)
  Future<Response> flexibleTripWithHttpInfo(int id, bool recurrence,) async {
    // ignore: prefer_const_declarations
    final path = r'/trip/{id}/flexible'
      .replaceAll('{id}', id.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'recurrence', recurrence));

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

  /// Set Trip Preference Flexible
  ///
  /// Update trip preference to flexible.
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   the id of the trip
  ///
  /// * [bool] recurrence (required):
  ///   the frequency of the trip (e.g. weekly, until 2018-08-09)
  Future<Trip?> flexibleTrip(int id, bool recurrence,) async {
    final response = await flexibleTripWithHttpInfo(id, recurrence,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Trip',) as Trip;
    
    }
    return null;
  }

  /// Get Trip
  ///
  /// Get an existing trip
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   the id of the trip to get
  Future<Response> getTripWithHttpInfo(int id,) async {
    // ignore: prefer_const_declarations
    final path = r'/trip/{id}'
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

  /// Get Trip
  ///
  /// Get an existing trip
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   the id of the trip to get
  Future<Trip?> getTrip(int id,) async {
    final response = await getTripWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Trip',) as Trip;
    
    }
    return null;
  }

  /// Get Trip Matches
  ///
  /// Get matching trips of specific trip
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   The id The id of the trip to search for matches for
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
  /// * [bool] matchedHasRoute:
  ///   Only return matchings that already have route assigned
  ///
  /// * [bool] matchedHasDriver:
  ///   Only return matchings that already have driver assigned
  Future<Response> getTripMatchesWithHttpInfo(int id, String sortField, bool descending, int start, int limit, bool activeOnly, { bool? matchedHasRoute, bool? matchedHasDriver, }) async {
    // ignore: prefer_const_declarations
    final path = r'/trip/{id}/match'
      .replaceAll('{id}', id.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (matchedHasRoute != null) {
      queryParams.addAll(_queryParams('', 'matchedHasRoute', matchedHasRoute));
    }
    if (matchedHasDriver != null) {
      queryParams.addAll(_queryParams('', 'matchedHasDriver', matchedHasDriver));
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

  /// Get Trip Matches
  ///
  /// Get matching trips of specific trip
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   The id The id of the trip to search for matches for
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
  /// * [bool] matchedHasRoute:
  ///   Only return matchings that already have route assigned
  ///
  /// * [bool] matchedHasDriver:
  ///   Only return matchings that already have driver assigned
  Future<List<Trip>?> getTripMatches(int id, String sortField, bool descending, int start, int limit, bool activeOnly, { bool? matchedHasRoute, bool? matchedHasDriver, }) async {
    final response = await getTripMatchesWithHttpInfo(id, sortField, descending, start, limit, activeOnly,  matchedHasRoute: matchedHasRoute, matchedHasDriver: matchedHasDriver, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<Trip>') as List)
        .cast<Trip>()
        .toList(growable: false);

    }
    return null;
  }

  /// Process Trip Matches
  ///
  /// Process trip matching, assign trips with no route to matched trips with route.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] startDate:
  ///   The lower bound date to process matchings
  ///
  /// * [int] endDate:
  ///   The upper bound date to process matchings
  ///
  /// * [int] tripId:
  ///   the id of the trip to process
  Future<Response> processTripMatchesWithHttpInfo({ int? startDate, int? endDate, int? tripId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/trip/match/process';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (startDate != null) {
      queryParams.addAll(_queryParams('', 'startDate', startDate));
    }
    if (endDate != null) {
      queryParams.addAll(_queryParams('', 'endDate', endDate));
    }
    if (tripId != null) {
      queryParams.addAll(_queryParams('', 'tripId', tripId));
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

  /// Process Trip Matches
  ///
  /// Process trip matching, assign trips with no route to matched trips with route.
  ///
  /// Parameters:
  ///
  /// * [int] startDate:
  ///   The lower bound date to process matchings
  ///
  /// * [int] endDate:
  ///   The upper bound date to process matchings
  ///
  /// * [int] tripId:
  ///   the id of the trip to process
  Future<List<Trip>?> processTripMatches({ int? startDate, int? endDate, int? tripId, }) async {
    final response = await processTripMatchesWithHttpInfo( startDate: startDate, endDate: endDate, tripId: tripId, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<Trip>') as List)
        .cast<Trip>()
        .toList(growable: false);

    }
    return null;
  }

  /// Set Trip Preference Rider
  ///
  /// Update trip preference to ride.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   the id of the trip
  ///
  /// * [bool] recurrence (required):
  ///   the frequency of the trip (e.g. weekly, until 2018-08-09)
  Future<Response> rideWithHttpInfo(int id, bool recurrence,) async {
    // ignore: prefer_const_declarations
    final path = r'/trip/{id}/ride'
      .replaceAll('{id}', id.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'recurrence', recurrence));

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

  /// Set Trip Preference Rider
  ///
  /// Update trip preference to ride.
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   the id of the trip
  ///
  /// * [bool] recurrence (required):
  ///   the frequency of the trip (e.g. weekly, until 2018-08-09)
  Future<Trip?> ride(int id, bool recurrence,) async {
    final response = await rideWithHttpInfo(id, recurrence,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Trip',) as Trip;
    
    }
    return null;
  }

  /// Search Trips
  ///
  /// Search for trips
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] accountId (required):
  ///   The owner of the trips
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
  /// * [int] startDate:
  ///   The lower bound limit of time
  ///
  /// * [int] endDate:
  ///   The upper bound limit of time
  ///
  /// * [bool] hasNotifications:
  ///   whether to search on trips that have notifications or not
  Future<Response> searchWithHttpInfo(int accountId, String sortField, bool descending, int start, int limit, bool activeOnly, { int? startDate, int? endDate, bool? hasNotifications, }) async {
    // ignore: prefer_const_declarations
    final path = r'/trip';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'accountId', accountId));
    if (startDate != null) {
      queryParams.addAll(_queryParams('', 'startDate', startDate));
    }
    if (endDate != null) {
      queryParams.addAll(_queryParams('', 'endDate', endDate));
    }
    if (hasNotifications != null) {
      queryParams.addAll(_queryParams('', 'hasNotifications', hasNotifications));
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

  /// Search Trips
  ///
  /// Search for trips
  ///
  /// Parameters:
  ///
  /// * [int] accountId (required):
  ///   The owner of the trips
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
  /// * [int] startDate:
  ///   The lower bound limit of time
  ///
  /// * [int] endDate:
  ///   The upper bound limit of time
  ///
  /// * [bool] hasNotifications:
  ///   whether to search on trips that have notifications or not
  Future<List<Trip>?> search(int accountId, String sortField, bool descending, int start, int limit, bool activeOnly, { int? startDate, int? endDate, bool? hasNotifications, }) async {
    final response = await searchWithHttpInfo(accountId, sortField, descending, start, limit, activeOnly,  startDate: startDate, endDate: endDate, hasNotifications: hasNotifications, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<Trip>') as List)
        .cast<Trip>()
        .toList(growable: false);

    }
    return null;
  }

  /// Search Trips
  ///
  /// Search for trips with matching information.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] accountId (required):
  ///   The owner of the trips
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
  /// * [int] startDate:
  ///   The lower bound limit of time
  ///
  /// * [int] endDate:
  ///   The upper bound limit of time
  ///
  /// * [bool] matchedHasRoute:
  ///   Only return matchings that already have route assigned
  ///
  /// * [bool] matchedHasDriver:
  ///   Only return matchings that already have driver assigned
  Future<Response> searchTripsWithHttpInfo(int accountId, String sortField, bool descending, int start, int limit, bool activeOnly, { int? startDate, int? endDate, bool? matchedHasRoute, bool? matchedHasDriver, }) async {
    // ignore: prefer_const_declarations
    final path = r'/trip/match';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'accountId', accountId));
    if (startDate != null) {
      queryParams.addAll(_queryParams('', 'startDate', startDate));
    }
    if (endDate != null) {
      queryParams.addAll(_queryParams('', 'endDate', endDate));
    }
    if (matchedHasRoute != null) {
      queryParams.addAll(_queryParams('', 'matchedHasRoute', matchedHasRoute));
    }
    if (matchedHasDriver != null) {
      queryParams.addAll(_queryParams('', 'matchedHasDriver', matchedHasDriver));
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

  /// Search Trips
  ///
  /// Search for trips with matching information.
  ///
  /// Parameters:
  ///
  /// * [int] accountId (required):
  ///   The owner of the trips
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
  /// * [int] startDate:
  ///   The lower bound limit of time
  ///
  /// * [int] endDate:
  ///   The upper bound limit of time
  ///
  /// * [bool] matchedHasRoute:
  ///   Only return matchings that already have route assigned
  ///
  /// * [bool] matchedHasDriver:
  ///   Only return matchings that already have driver assigned
  Future<List<Trip>?> searchTrips(int accountId, String sortField, bool descending, int start, int limit, bool activeOnly, { int? startDate, int? endDate, bool? matchedHasRoute, bool? matchedHasDriver, }) async {
    final response = await searchTripsWithHttpInfo(accountId, sortField, descending, start, limit, activeOnly,  startDate: startDate, endDate: endDate, matchedHasRoute: matchedHasRoute, matchedHasDriver: matchedHasDriver, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<Trip>') as List)
        .cast<Trip>()
        .toList(growable: false);

    }
    return null;
  }

  /// Update Trip Locations
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   the id of the trip to update locations for
  ///
  /// * [Trip] body:
  Future<Response> updateLocationsWithHttpInfo(int id, { Trip? body, }) async {
    // ignore: prefer_const_declarations
    final path = r'/trip/{id}/locations'
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

  /// Update Trip Locations
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   the id of the trip to update locations for
  ///
  /// * [Trip] body:
  Future<Trip?> updateLocations(int id, { Trip? body, }) async {
    final response = await updateLocationsWithHttpInfo(id,  body: body, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Trip',) as Trip;
    
    }
    return null;
  }

  /// Update Recurrence Locations
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   the id of the trip
  ///
  /// * [Trip] body:
  Future<Response> updateRecurrenceLocationsWithHttpInfo(int id, { Trip? body, }) async {
    // ignore: prefer_const_declarations
    final path = r'/trip/{id}/locations/recurrence'
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

  /// Update Recurrence Locations
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   the id of the trip
  ///
  /// * [Trip] body:
  Future<List<Trip>?> updateRecurrenceLocations(int id, { Trip? body, }) async {
    final response = await updateRecurrenceLocationsWithHttpInfo(id,  body: body, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<Trip>') as List)
        .cast<Trip>()
        .toList(growable: false);

    }
    return null;
  }

  /// Update Recurrence Shipments
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   the id of the trip
  ///
  /// * [Trip] body:
  Future<Response> updateRecurrenceShipmentsWithHttpInfo(int id, { Trip? body, }) async {
    // ignore: prefer_const_declarations
    final path = r'/trip/{id}/shipments/recurrence'
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

  /// Update Recurrence Shipments
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   the id of the trip
  ///
  /// * [Trip] body:
  Future<List<Trip>?> updateRecurrenceShipments(int id, { Trip? body, }) async {
    final response = await updateRecurrenceShipmentsWithHttpInfo(id,  body: body, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<Trip>') as List)
        .cast<Trip>()
        .toList(growable: false);

    }
    return null;
  }

  /// Update Trip Shipments
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   the id of the trip shipments to update
  ///
  /// * [Trip] body:
  Future<Response> updateShipmentsWithHttpInfo(int id, { Trip? body, }) async {
    // ignore: prefer_const_declarations
    final path = r'/trip/{id}/shipments'
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

  /// Update Trip Shipments
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   the id of the trip shipments to update
  ///
  /// * [Trip] body:
  Future<Trip?> updateShipments(int id, { Trip? body, }) async {
    final response = await updateShipmentsWithHttpInfo(id,  body: body, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Trip',) as Trip;
    
    }
    return null;
  }

  /// Update Trip
  ///
  /// Update an existing trip. Does not support recurring trip update.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   the id of the trip to update
  ///
  /// * [Trip] body:
  Future<Response> updateTripWithHttpInfo(int id, { Trip? body, }) async {
    // ignore: prefer_const_declarations
    final path = r'/trip/{id}'
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

  /// Update Trip
  ///
  /// Update an existing trip. Does not support recurring trip update.
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   the id of the trip to update
  ///
  /// * [Trip] body:
  Future<Trip?> updateTrip(int id, { Trip? body, }) async {
    final response = await updateTripWithHttpInfo(id,  body: body, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Trip',) as Trip;
    
    }
    return null;
  }

  /// Trip Notifications
  ///
  /// Update the trip notifications
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   the id of the trip
  ///
  /// * [String] notifications:
  ///   the notifications to update on the trip
  Future<Response> updateTripNotificationsWithHttpInfo(int id, { String? notifications, }) async {
    // ignore: prefer_const_declarations
    final path = r'/trip/notifications';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'id', id));
    if (notifications != null) {
      queryParams.addAll(_queryParams('', 'notifications', notifications));
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

  /// Trip Notifications
  ///
  /// Update the trip notifications
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   the id of the trip
  ///
  /// * [String] notifications:
  ///   the notifications to update on the trip
  Future<Trip?> updateTripNotifications(int id, { String? notifications, }) async {
    final response = await updateTripNotificationsWithHttpInfo(id,  notifications: notifications, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Trip',) as Trip;
    
    }
    return null;
  }
}
