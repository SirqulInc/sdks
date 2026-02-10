//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class ReservationApi {
  ReservationApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Create Reservation
  ///
  /// Creates a reservation on an offer object
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [String] deviceId:
  ///   The device id (deviceId or accountId required)
  ///
  /// * [int] accountId:
  ///   The account id of the user (deviceId or accountId required)
  ///
  /// * [int] startDate:
  ///   The start date
  ///
  /// * [int] endDate:
  ///   The end date
  ///
  /// * [int] offerId:
  ///   The id of the offer being added (offerId or offeLocationId required)
  ///
  /// * [int] offerLocationId:
  ///   The id of the offer location being added (offerId or offeLocationId required)
  ///
  /// * [String] appKey:
  ///   The application requesting the reservation
  ///
  /// * [String] metaData:
  ///   External custom client defined data
  Future<Response> createReservationWithHttpInfo(num version, { String? deviceId, int? accountId, int? startDate, int? endDate, int? offerId, int? offerLocationId, String? appKey, String? metaData, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/reservation/create'
      .replaceAll('{version}', version.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (deviceId != null) {
      queryParams.addAll(_queryParams('', 'deviceId', deviceId));
    }
    if (accountId != null) {
      queryParams.addAll(_queryParams('', 'accountId', accountId));
    }
    if (startDate != null) {
      queryParams.addAll(_queryParams('', 'startDate', startDate));
    }
    if (endDate != null) {
      queryParams.addAll(_queryParams('', 'endDate', endDate));
    }
    if (offerId != null) {
      queryParams.addAll(_queryParams('', 'offerId', offerId));
    }
    if (offerLocationId != null) {
      queryParams.addAll(_queryParams('', 'offerLocationId', offerLocationId));
    }
    if (appKey != null) {
      queryParams.addAll(_queryParams('', 'appKey', appKey));
    }
    if (metaData != null) {
      queryParams.addAll(_queryParams('', 'metaData', metaData));
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

  /// Create Reservation
  ///
  /// Creates a reservation on an offer object
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [String] deviceId:
  ///   The device id (deviceId or accountId required)
  ///
  /// * [int] accountId:
  ///   The account id of the user (deviceId or accountId required)
  ///
  /// * [int] startDate:
  ///   The start date
  ///
  /// * [int] endDate:
  ///   The end date
  ///
  /// * [int] offerId:
  ///   The id of the offer being added (offerId or offeLocationId required)
  ///
  /// * [int] offerLocationId:
  ///   The id of the offer location being added (offerId or offeLocationId required)
  ///
  /// * [String] appKey:
  ///   The application requesting the reservation
  ///
  /// * [String] metaData:
  ///   External custom client defined data
  Future<void> createReservation(num version, { String? deviceId, int? accountId, int? startDate, int? endDate, int? offerId, int? offerLocationId, String? appKey, String? metaData, }) async {
    final response = await createReservationWithHttpInfo(version,  deviceId: deviceId, accountId: accountId, startDate: startDate, endDate: endDate, offerId: offerId, offerLocationId: offerLocationId, appKey: appKey, metaData: metaData, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Delete Reservation
  ///
  /// Deleted a reservation on a reservation object
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] reservationId (required):
  ///   The reservation id
  ///
  /// * [String] deviceId:
  ///   The device id (deviceId or accountId required)
  ///
  /// * [int] accountId:
  ///   The account id of the user (deviceId or accountId required)
  Future<Response> deleteReservationWithHttpInfo(num version, int reservationId, { String? deviceId, int? accountId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/reservation/delete'
      .replaceAll('{version}', version.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (deviceId != null) {
      queryParams.addAll(_queryParams('', 'deviceId', deviceId));
    }
    if (accountId != null) {
      queryParams.addAll(_queryParams('', 'accountId', accountId));
    }
      queryParams.addAll(_queryParams('', 'reservationId', reservationId));

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

  /// Delete Reservation
  ///
  /// Deleted a reservation on a reservation object
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] reservationId (required):
  ///   The reservation id
  ///
  /// * [String] deviceId:
  ///   The device id (deviceId or accountId required)
  ///
  /// * [int] accountId:
  ///   The account id of the user (deviceId or accountId required)
  Future<void> deleteReservation(num version, int reservationId, { String? deviceId, int? accountId, }) async {
    final response = await deleteReservationWithHttpInfo(version, reservationId,  deviceId: deviceId, accountId: accountId, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Update Availability
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] reservableId (required):
  ///   the id of the reservation
  ///
  /// * [String] reservableType (required):
  ///   the type of reservation
  ///
  /// * [String] deviceId:
  ///   the device id of the reservation
  ///
  /// * [int] accountId:
  ///   the id of the logged in user
  ///
  /// * [String] availability:
  ///   Availability
  ///
  /// * [String] availabilitySummary:
  ///   Availability Summary
  Future<Response> reservableAvailabilityWithHttpInfo(num version, int reservableId, String reservableType, { String? deviceId, int? accountId, String? availability, String? availabilitySummary, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/reservable/availability/update'
      .replaceAll('{version}', version.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (deviceId != null) {
      queryParams.addAll(_queryParams('', 'deviceId', deviceId));
    }
    if (accountId != null) {
      queryParams.addAll(_queryParams('', 'accountId', accountId));
    }
      queryParams.addAll(_queryParams('', 'reservableId', reservableId));
      queryParams.addAll(_queryParams('', 'reservableType', reservableType));
    if (availability != null) {
      queryParams.addAll(_queryParams('', 'availability', availability));
    }
    if (availabilitySummary != null) {
      queryParams.addAll(_queryParams('', 'availabilitySummary', availabilitySummary));
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

  /// Update Availability
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] reservableId (required):
  ///   the id of the reservation
  ///
  /// * [String] reservableType (required):
  ///   the type of reservation
  ///
  /// * [String] deviceId:
  ///   the device id of the reservation
  ///
  /// * [int] accountId:
  ///   the id of the logged in user
  ///
  /// * [String] availability:
  ///   Availability
  ///
  /// * [String] availabilitySummary:
  ///   Availability Summary
  Future<List<AvailabilityResponse>?> reservableAvailability(num version, int reservableId, String reservableType, { String? deviceId, int? accountId, String? availability, String? availabilitySummary, }) async {
    final response = await reservableAvailabilityWithHttpInfo(version, reservableId, reservableType,  deviceId: deviceId, accountId: accountId, availability: availability, availabilitySummary: availabilitySummary, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<AvailabilityResponse>') as List)
        .cast<AvailabilityResponse>()
        .toList(growable: false);

    }
    return null;
  }

  /// Search Availability
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] reservableId (required):
  ///   the id of the reservation
  ///
  /// * [String] reservableType (required):
  ///   the reservable type
  ///
  /// * [String] deviceId:
  ///   the device ID that the reservation is on
  ///
  /// * [int] accountId:
  ///   the id of the logged in user
  ///
  /// * [int] startDate:
  ///   the start date of the reservation
  ///
  /// * [int] endDate:
  ///   the end date of the reservation
  ///
  /// * [int] start:
  ///   the start of the index and/or pagination
  ///
  /// * [int] limit:
  ///   the limit of the index and/or pagination
  Future<Response> searchAvailabilityWithHttpInfo(num version, int reservableId, String reservableType, { String? deviceId, int? accountId, int? startDate, int? endDate, int? start, int? limit, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/reservable/availability/search'
      .replaceAll('{version}', version.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (deviceId != null) {
      queryParams.addAll(_queryParams('', 'deviceId', deviceId));
    }
    if (accountId != null) {
      queryParams.addAll(_queryParams('', 'accountId', accountId));
    }
      queryParams.addAll(_queryParams('', 'reservableId', reservableId));
      queryParams.addAll(_queryParams('', 'reservableType', reservableType));
    if (startDate != null) {
      queryParams.addAll(_queryParams('', 'startDate', startDate));
    }
    if (endDate != null) {
      queryParams.addAll(_queryParams('', 'endDate', endDate));
    }
    if (start != null) {
      queryParams.addAll(_queryParams('', 'start', start));
    }
    if (limit != null) {
      queryParams.addAll(_queryParams('', 'limit', limit));
    }

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

  /// Search Availability
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] reservableId (required):
  ///   the id of the reservation
  ///
  /// * [String] reservableType (required):
  ///   the reservable type
  ///
  /// * [String] deviceId:
  ///   the device ID that the reservation is on
  ///
  /// * [int] accountId:
  ///   the id of the logged in user
  ///
  /// * [int] startDate:
  ///   the start date of the reservation
  ///
  /// * [int] endDate:
  ///   the end date of the reservation
  ///
  /// * [int] start:
  ///   the start of the index and/or pagination
  ///
  /// * [int] limit:
  ///   the limit of the index and/or pagination
  Future<List<AvailabilityResponse>?> searchAvailability(num version, int reservableId, String reservableType, { String? deviceId, int? accountId, int? startDate, int? endDate, int? start, int? limit, }) async {
    final response = await searchAvailabilityWithHttpInfo(version, reservableId, reservableType,  deviceId: deviceId, accountId: accountId, startDate: startDate, endDate: endDate, start: start, limit: limit, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<AvailabilityResponse>') as List)
        .cast<AvailabilityResponse>()
        .toList(growable: false);

    }
    return null;
  }

  /// Search Reservations
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [String] deviceId:
  ///   Device Id
  ///
  /// * [String] appKey:
  ///   Appilcation Key
  ///
  /// * [int] accountId:
  ///   the id of the logged in user
  ///
  /// * [int] filterAccountId:
  ///   filter reservations by account ID
  ///
  /// * [int] reservableId:
  ///   the reservation ID
  ///
  /// * [String] reservableType:
  ///   the type of reservation
  ///
  /// * [String] keyword:
  ///   the keyword to search the reservation on
  ///
  /// * [int] startDate:
  ///   the start date of the reservation search
  ///
  /// * [int] endDate:
  ///   the end date of the reservation search
  ///
  /// * [int] start:
  ///   the start of the index and/or pagination
  ///
  /// * [int] limit:
  ///   the limit of the index and/or pagination
  Future<Response> searchReservationsWithHttpInfo(num version, { String? deviceId, String? appKey, int? accountId, int? filterAccountId, int? reservableId, String? reservableType, String? keyword, int? startDate, int? endDate, int? start, int? limit, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/reservation/search'
      .replaceAll('{version}', version.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (deviceId != null) {
      queryParams.addAll(_queryParams('', 'deviceId', deviceId));
    }
    if (appKey != null) {
      queryParams.addAll(_queryParams('', 'appKey', appKey));
    }
    if (accountId != null) {
      queryParams.addAll(_queryParams('', 'accountId', accountId));
    }
    if (filterAccountId != null) {
      queryParams.addAll(_queryParams('', 'filterAccountId', filterAccountId));
    }
    if (reservableId != null) {
      queryParams.addAll(_queryParams('', 'reservableId', reservableId));
    }
    if (reservableType != null) {
      queryParams.addAll(_queryParams('', 'reservableType', reservableType));
    }
    if (keyword != null) {
      queryParams.addAll(_queryParams('', 'keyword', keyword));
    }
    if (startDate != null) {
      queryParams.addAll(_queryParams('', 'startDate', startDate));
    }
    if (endDate != null) {
      queryParams.addAll(_queryParams('', 'endDate', endDate));
    }
    if (start != null) {
      queryParams.addAll(_queryParams('', 'start', start));
    }
    if (limit != null) {
      queryParams.addAll(_queryParams('', 'limit', limit));
    }

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

  /// Search Reservations
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [String] deviceId:
  ///   Device Id
  ///
  /// * [String] appKey:
  ///   Appilcation Key
  ///
  /// * [int] accountId:
  ///   the id of the logged in user
  ///
  /// * [int] filterAccountId:
  ///   filter reservations by account ID
  ///
  /// * [int] reservableId:
  ///   the reservation ID
  ///
  /// * [String] reservableType:
  ///   the type of reservation
  ///
  /// * [String] keyword:
  ///   the keyword to search the reservation on
  ///
  /// * [int] startDate:
  ///   the start date of the reservation search
  ///
  /// * [int] endDate:
  ///   the end date of the reservation search
  ///
  /// * [int] start:
  ///   the start of the index and/or pagination
  ///
  /// * [int] limit:
  ///   the limit of the index and/or pagination
  Future<List<ReservationResponse>?> searchReservations(num version, { String? deviceId, String? appKey, int? accountId, int? filterAccountId, int? reservableId, String? reservableType, String? keyword, int? startDate, int? endDate, int? start, int? limit, }) async {
    final response = await searchReservationsWithHttpInfo(version,  deviceId: deviceId, appKey: appKey, accountId: accountId, filterAccountId: filterAccountId, reservableId: reservableId, reservableType: reservableType, keyword: keyword, startDate: startDate, endDate: endDate, start: start, limit: limit, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<ReservationResponse>') as List)
        .cast<ReservationResponse>()
        .toList(growable: false);

    }
    return null;
  }

  /// Search Schedule
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] reservableId (required):
  ///   the id of the reservation
  ///
  /// * [String] reservableType (required):
  ///   the reservation type
  ///
  /// * [int] startDate (required):
  ///   the start date of the reservation
  ///
  /// * [int] endDate (required):
  ///   the end date of the reservation
  ///
  /// * [String] deviceId:
  ///   the id of the device that the reservation is on
  ///
  /// * [int] accountId:
  ///   the id of the logged in user
  ///
  /// * [int] timeBucketMins:
  ///   the length of time in minutes to search on for reservation
  Future<Response> searchScheduleWithHttpInfo(num version, int reservableId, String reservableType, int startDate, int endDate, { String? deviceId, int? accountId, int? timeBucketMins, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/reservable/schedule/search'
      .replaceAll('{version}', version.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (deviceId != null) {
      queryParams.addAll(_queryParams('', 'deviceId', deviceId));
    }
    if (accountId != null) {
      queryParams.addAll(_queryParams('', 'accountId', accountId));
    }
      queryParams.addAll(_queryParams('', 'reservableId', reservableId));
      queryParams.addAll(_queryParams('', 'reservableType', reservableType));
      queryParams.addAll(_queryParams('', 'startDate', startDate));
      queryParams.addAll(_queryParams('', 'endDate', endDate));
    if (timeBucketMins != null) {
      queryParams.addAll(_queryParams('', 'timeBucketMins', timeBucketMins));
    }

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

  /// Search Schedule
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] reservableId (required):
  ///   the id of the reservation
  ///
  /// * [String] reservableType (required):
  ///   the reservation type
  ///
  /// * [int] startDate (required):
  ///   the start date of the reservation
  ///
  /// * [int] endDate (required):
  ///   the end date of the reservation
  ///
  /// * [String] deviceId:
  ///   the id of the device that the reservation is on
  ///
  /// * [int] accountId:
  ///   the id of the logged in user
  ///
  /// * [int] timeBucketMins:
  ///   the length of time in minutes to search on for reservation
  Future<List<TimeSlotResponse>?> searchSchedule(num version, int reservableId, String reservableType, int startDate, int endDate, { String? deviceId, int? accountId, int? timeBucketMins, }) async {
    final response = await searchScheduleWithHttpInfo(version, reservableId, reservableType, startDate, endDate,  deviceId: deviceId, accountId: accountId, timeBucketMins: timeBucketMins, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<TimeSlotResponse>') as List)
        .cast<TimeSlotResponse>()
        .toList(growable: false);

    }
    return null;
  }
}
