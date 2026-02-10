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
  /// * [num] version (required):
  ///
  /// * [Trip] body:
  Future<Response> createTripWithHttpInfo(num version, { Trip? body, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/trip'
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

  /// Create Trip
  ///
  /// Create a new trip
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [Trip] body:
  Future<Trip?> createTrip(num version, { Trip? body, }) async {
    final response = await createTripWithHttpInfo(version,  body: body, );
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
  /// * [num] version (required):
  ///
  /// * [int] id (required):
  ///   the id of the trip to delete
  Future<Response> deleteWithHttpInfo(num version, int id,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/trip/{id}'
      .replaceAll('{version}', version.toString())
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
  /// * [num] version (required):
  ///
  /// * [int] id (required):
  ///   the id of the trip to delete
  Future<void> delete(num version, int id,) async {
    final response = await deleteWithHttpInfo(version, id,);
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
  /// * [num] version (required):
  ///
  /// * [int] id (required):
  ///   the id of the trip
  ///
  /// * [bool] recurrence (required):
  ///   the frequency of the trip (e.g. weekly, until 2018-08-09)
  Future<Response> driveTripWithHttpInfo(num version, int id, bool recurrence,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/trip/{id}/drive'
      .replaceAll('{version}', version.toString())
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
  /// * [num] version (required):
  ///
  /// * [int] id (required):
  ///   the id of the trip
  ///
  /// * [bool] recurrence (required):
  ///   the frequency of the trip (e.g. weekly, until 2018-08-09)
  Future<Trip?> driveTrip(num version, int id, bool recurrence,) async {
    final response = await driveTripWithHttpInfo(version, id, recurrence,);
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
  /// * [num] version (required):
  ///
  /// * [int] id (required):
  ///   the id of the trip
  ///
  /// * [bool] recurrence (required):
  ///   the frequency of the trip (e.g. weekly, until 2018-08-09)
  Future<Response> flexibleTripWithHttpInfo(num version, int id, bool recurrence,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/trip/{id}/flexible'
      .replaceAll('{version}', version.toString())
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
  /// * [num] version (required):
  ///
  /// * [int] id (required):
  ///   the id of the trip
  ///
  /// * [bool] recurrence (required):
  ///   the frequency of the trip (e.g. weekly, until 2018-08-09)
  Future<Trip?> flexibleTrip(num version, int id, bool recurrence,) async {
    final response = await flexibleTripWithHttpInfo(version, id, recurrence,);
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
  /// * [num] version (required):
  ///
  /// * [int] id (required):
  ///   the id of the trip to get
  Future<Response> getTripWithHttpInfo(num version, int id,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/trip/{id}'
      .replaceAll('{version}', version.toString())
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
  /// * [num] version (required):
  ///
  /// * [int] id (required):
  ///   the id of the trip to get
  Future<Trip?> getTrip(num version, int id,) async {
    final response = await getTripWithHttpInfo(version, id,);
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
  /// * [num] version (required):
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
  Future<Response> getTripMatchesWithHttpInfo(num version, int id, String sortField, bool descending, int start, int limit, bool activeOnly, { bool? matchedHasRoute, bool? matchedHasDriver, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/trip/{id}/match'
      .replaceAll('{version}', version.toString())
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
  /// * [num] version (required):
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
  Future<List<Trip>?> getTripMatches(num version, int id, String sortField, bool descending, int start, int limit, bool activeOnly, { bool? matchedHasRoute, bool? matchedHasDriver, }) async {
    final response = await getTripMatchesWithHttpInfo(version, id, sortField, descending, start, limit, activeOnly,  matchedHasRoute: matchedHasRoute, matchedHasDriver: matchedHasDriver, );
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
  /// * [num] version (required):
  ///
  /// * [int] startDate:
  ///   The lower bound date to process matchings
  ///
  /// * [int] endDate:
  ///   The upper bound date to process matchings
  ///
  /// * [int] tripId:
  ///   the id of the trip to process
  Future<Response> processTripMatchesWithHttpInfo(num version, { int? startDate, int? endDate, int? tripId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/trip/match/process'
      .replaceAll('{version}', version.toString());

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
  /// * [num] version (required):
  ///
  /// * [int] startDate:
  ///   The lower bound date to process matchings
  ///
  /// * [int] endDate:
  ///   The upper bound date to process matchings
  ///
  /// * [int] tripId:
  ///   the id of the trip to process
  Future<List<Trip>?> processTripMatches(num version, { int? startDate, int? endDate, int? tripId, }) async {
    final response = await processTripMatchesWithHttpInfo(version,  startDate: startDate, endDate: endDate, tripId: tripId, );
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
  /// * [num] version (required):
  ///
  /// * [int] id (required):
  ///   the id of the trip
  ///
  /// * [bool] recurrence (required):
  ///   the frequency of the trip (e.g. weekly, until 2018-08-09)
  Future<Response> rideWithHttpInfo(num version, int id, bool recurrence,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/trip/{id}/ride'
      .replaceAll('{version}', version.toString())
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
  /// * [num] version (required):
  ///
  /// * [int] id (required):
  ///   the id of the trip
  ///
  /// * [bool] recurrence (required):
  ///   the frequency of the trip (e.g. weekly, until 2018-08-09)
  Future<Trip?> ride(num version, int id, bool recurrence,) async {
    final response = await rideWithHttpInfo(version, id, recurrence,);
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
  /// * [num] version (required):
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
  Future<Response> searchWithHttpInfo(num version, int accountId, String sortField, bool descending, int start, int limit, bool activeOnly, { int? startDate, int? endDate, bool? hasNotifications, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/trip'
      .replaceAll('{version}', version.toString());

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
  /// * [num] version (required):
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
  Future<List<Trip>?> search(num version, int accountId, String sortField, bool descending, int start, int limit, bool activeOnly, { int? startDate, int? endDate, bool? hasNotifications, }) async {
    final response = await searchWithHttpInfo(version, accountId, sortField, descending, start, limit, activeOnly,  startDate: startDate, endDate: endDate, hasNotifications: hasNotifications, );
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
  /// * [num] version (required):
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
  Future<Response> searchTripsWithHttpInfo(num version, int accountId, String sortField, bool descending, int start, int limit, bool activeOnly, { int? startDate, int? endDate, bool? matchedHasRoute, bool? matchedHasDriver, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/trip/match'
      .replaceAll('{version}', version.toString());

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
  /// * [num] version (required):
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
  Future<List<Trip>?> searchTrips(num version, int accountId, String sortField, bool descending, int start, int limit, bool activeOnly, { int? startDate, int? endDate, bool? matchedHasRoute, bool? matchedHasDriver, }) async {
    final response = await searchTripsWithHttpInfo(version, accountId, sortField, descending, start, limit, activeOnly,  startDate: startDate, endDate: endDate, matchedHasRoute: matchedHasRoute, matchedHasDriver: matchedHasDriver, );
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
  /// * [num] version (required):
  ///
  /// * [int] id (required):
  ///   the id of the trip to update locations for
  ///
  /// * [Trip] body:
  Future<Response> updateLocationsWithHttpInfo(num version, int id, { Trip? body, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/trip/{id}/locations'
      .replaceAll('{version}', version.toString())
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
  /// * [num] version (required):
  ///
  /// * [int] id (required):
  ///   the id of the trip to update locations for
  ///
  /// * [Trip] body:
  Future<Trip?> updateLocations(num version, int id, { Trip? body, }) async {
    final response = await updateLocationsWithHttpInfo(version, id,  body: body, );
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
  /// * [num] version (required):
  ///
  /// * [int] id (required):
  ///   the id of the trip
  ///
  /// * [Trip] body:
  Future<Response> updateRecurrenceLocationsWithHttpInfo(num version, int id, { Trip? body, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/trip/{id}/locations/recurrence'
      .replaceAll('{version}', version.toString())
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
  /// * [num] version (required):
  ///
  /// * [int] id (required):
  ///   the id of the trip
  ///
  /// * [Trip] body:
  Future<List<Trip>?> updateRecurrenceLocations(num version, int id, { Trip? body, }) async {
    final response = await updateRecurrenceLocationsWithHttpInfo(version, id,  body: body, );
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
  /// * [num] version (required):
  ///
  /// * [int] id (required):
  ///   the id of the trip
  ///
  /// * [Trip] body:
  Future<Response> updateRecurrenceShipmentsWithHttpInfo(num version, int id, { Trip? body, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/trip/{id}/shipments/recurrence'
      .replaceAll('{version}', version.toString())
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
  /// * [num] version (required):
  ///
  /// * [int] id (required):
  ///   the id of the trip
  ///
  /// * [Trip] body:
  Future<List<Trip>?> updateRecurrenceShipments(num version, int id, { Trip? body, }) async {
    final response = await updateRecurrenceShipmentsWithHttpInfo(version, id,  body: body, );
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
  /// * [num] version (required):
  ///
  /// * [int] id (required):
  ///   the id of the trip shipments to update
  ///
  /// * [Trip] body:
  Future<Response> updateShipmentsWithHttpInfo(num version, int id, { Trip? body, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/trip/{id}/shipments'
      .replaceAll('{version}', version.toString())
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
  /// * [num] version (required):
  ///
  /// * [int] id (required):
  ///   the id of the trip shipments to update
  ///
  /// * [Trip] body:
  Future<Trip?> updateShipments(num version, int id, { Trip? body, }) async {
    final response = await updateShipmentsWithHttpInfo(version, id,  body: body, );
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
  /// * [num] version (required):
  ///
  /// * [int] id (required):
  ///   the id of the trip to update
  ///
  /// * [Trip] body:
  Future<Response> updateTripWithHttpInfo(num version, int id, { Trip? body, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/trip/{id}'
      .replaceAll('{version}', version.toString())
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
  /// * [num] version (required):
  ///
  /// * [int] id (required):
  ///   the id of the trip to update
  ///
  /// * [Trip] body:
  Future<Trip?> updateTrip(num version, int id, { Trip? body, }) async {
    final response = await updateTripWithHttpInfo(version, id,  body: body, );
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
  /// * [num] version (required):
  ///
  /// * [int] id (required):
  ///   the id of the trip
  ///
  /// * [String] notifications:
  ///   the notifications to update on the trip
  Future<Response> updateTripNotificationsWithHttpInfo(num version, int id, { String? notifications, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/trip/notifications'
      .replaceAll('{version}', version.toString());

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
  /// * [num] version (required):
  ///
  /// * [int] id (required):
  ///   the id of the trip
  ///
  /// * [String] notifications:
  ///   the notifications to update on the trip
  Future<Trip?> updateTripNotifications(num version, int id, { String? notifications, }) async {
    final response = await updateTripNotificationsWithHttpInfo(version, id,  notifications: notifications, );
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
