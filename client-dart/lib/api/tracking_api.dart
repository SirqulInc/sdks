//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class TrackingApi {
  TrackingApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Create Batch Tracking
  ///
  /// Batch create tracking legs
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [String] data (required):
  ///   JSON array of tracking legs ```json [   \"distance\": \"0.08\",   \"duration\": \"10000\",   \"startLatitude\": \"47.614603\",   \"startLongitude\": \"-122.350518\",   \"endLatitude\": \"47.614384\",   \"endLongitude\": \"-122.349161\",   \"startDate\": \"1361924010000\",   \"endDate\": \"1361924020000\",   \"steps\": [     {       \"distance\": \"0.03\",       \"duration\": \"5000\",       \"startLat\": \"47.614603\",       \"startLng\": \"-122.350518\",       \"startDate\": \"1361924010000\",       \"endLat\": \"47.614941\",       \"endLng\": \"-122.350062\",       \"endDate\": \"1361924015000\"     },{       \"distance\": \"0.05\",       \"duration\": \"5000\",       \"startLat\": \"47.614941\",       \"startLng\": \"-122.350062\",       \"startDate\": \"1361924015000\",       \"endLat\": \"47.614384\",       \"endLng\": \"-122.349161\",       \"endDate\": \"1361924020000\"     }   ] ] ``` 
  ///
  /// * [String] deviceId:
  ///   the device id (deviceId or accountId required)
  ///
  /// * [int] accountId:
  ///   the account id of the user (deviceId or accountId required)
  ///
  /// * [bool] generateAccounts:
  ///   Whether to generate accounts for tracking entries when the owner does not exist
  ///
  /// * [bool] updateAccountLocations:
  ///   Whether to update the account's current location from the incoming tracking data
  ///
  /// * [String] defaultTag:
  ///   The default tag to apply to incoming legs when no tag is provided
  ///
  /// * [String] slaveUID:
  ///   
  Future<Response> batchSaveTrackingWithHttpInfo(num version, String data, { String? deviceId, int? accountId, bool? generateAccounts, bool? updateAccountLocations, String? defaultTag, String? slaveUID, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/tracking/batch/create'
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
      queryParams.addAll(_queryParams('', 'data', data));
    if (generateAccounts != null) {
      queryParams.addAll(_queryParams('', 'generateAccounts', generateAccounts));
    }
    if (updateAccountLocations != null) {
      queryParams.addAll(_queryParams('', 'updateAccountLocations', updateAccountLocations));
    }
    if (defaultTag != null) {
      queryParams.addAll(_queryParams('', 'defaultTag', defaultTag));
    }
    if (slaveUID != null) {
      queryParams.addAll(_queryParams('', 'slaveUID', slaveUID));
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

  /// Create Batch Tracking
  ///
  /// Batch create tracking legs
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [String] data (required):
  ///   JSON array of tracking legs ```json [   \"distance\": \"0.08\",   \"duration\": \"10000\",   \"startLatitude\": \"47.614603\",   \"startLongitude\": \"-122.350518\",   \"endLatitude\": \"47.614384\",   \"endLongitude\": \"-122.349161\",   \"startDate\": \"1361924010000\",   \"endDate\": \"1361924020000\",   \"steps\": [     {       \"distance\": \"0.03\",       \"duration\": \"5000\",       \"startLat\": \"47.614603\",       \"startLng\": \"-122.350518\",       \"startDate\": \"1361924010000\",       \"endLat\": \"47.614941\",       \"endLng\": \"-122.350062\",       \"endDate\": \"1361924015000\"     },{       \"distance\": \"0.05\",       \"duration\": \"5000\",       \"startLat\": \"47.614941\",       \"startLng\": \"-122.350062\",       \"startDate\": \"1361924015000\",       \"endLat\": \"47.614384\",       \"endLng\": \"-122.349161\",       \"endDate\": \"1361924020000\"     }   ] ] ``` 
  ///
  /// * [String] deviceId:
  ///   the device id (deviceId or accountId required)
  ///
  /// * [int] accountId:
  ///   the account id of the user (deviceId or accountId required)
  ///
  /// * [bool] generateAccounts:
  ///   Whether to generate accounts for tracking entries when the owner does not exist
  ///
  /// * [bool] updateAccountLocations:
  ///   Whether to update the account's current location from the incoming tracking data
  ///
  /// * [String] defaultTag:
  ///   The default tag to apply to incoming legs when no tag is provided
  ///
  /// * [String] slaveUID:
  ///   
  Future<List<Leg>?> batchSaveTracking(num version, String data, { String? deviceId, int? accountId, bool? generateAccounts, bool? updateAccountLocations, String? defaultTag, String? slaveUID, }) async {
    final response = await batchSaveTrackingWithHttpInfo(version, data,  deviceId: deviceId, accountId: accountId, generateAccounts: generateAccounts, updateAccountLocations: updateAccountLocations, defaultTag: defaultTag, slaveUID: slaveUID, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<Leg>') as List)
        .cast<Leg>()
        .toList(growable: false);

    }
    return null;
  }

  /// Get Predicted Locations
  ///
  /// Get the predicted location for a customer based on previous behavior.  If a customer resides in a place for a period of time this is marked as a preferred location.  We look back over the previous few days and the previous days of the week from the day specified.  If for instance the day was a Wednesday then this would check the days before, including: Tuesday, Monday, Sunday, etc. It will also check some number of previous Wednesdays in the past few weeks.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] accountId (required):
  ///   The account id of the customer
  ///
  /// * [double] latitude:
  ///   latitude to return a more likely result set based on the user's current location
  ///
  /// * [double] longitude:
  ///   longitude to return a more likely result set based on the user's current location
  ///
  /// * [int] dateCheck:
  ///   Used to specify which day to get predicted locations for. So if you want to look at where they might be tomorrow, pass in tomorrow's date (timestamp in milliseconds). If no value is passed in, the current date will be used.
  ///
  /// * [String] hourCheck:
  ///   Comma separated list of hours that will filter the results on the hours specified. For example, if you want to see predicted locations for the mornings and evening you can pass in \"8,9,10,11,17,18,19,20\".
  ///
  /// * [int] threshold:
  ///   The minimum number matches in 1 hour to be considered a likely location.
  ///
  /// * [String] distanceUnit:
  ///   Determines which unit of measurement gets returned for distances: {MILES, KILOMETERS}
  ///
  /// * [double] searchRange:
  ///   Filter results so only locations within the specified radius will be returned. The distance can either be in miles or kilometers as specified in the distanceUnit parameter. A value of \"0\" (zero) will ignore the radius restriction.
  ///
  /// * [String] sortOrder:
  ///   The ordering algorithm for sorting the returned results: {MATCHES, DISTANCE, WEIGHTED}
  Future<Response> getPredictedLocationsWithHttpInfo(num version, int accountId, { double? latitude, double? longitude, int? dateCheck, String? hourCheck, int? threshold, String? distanceUnit, double? searchRange, String? sortOrder, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/tracking/predicted/get'
      .replaceAll('{version}', version.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'accountId', accountId));
    if (latitude != null) {
      queryParams.addAll(_queryParams('', 'latitude', latitude));
    }
    if (longitude != null) {
      queryParams.addAll(_queryParams('', 'longitude', longitude));
    }
    if (dateCheck != null) {
      queryParams.addAll(_queryParams('', 'dateCheck', dateCheck));
    }
    if (hourCheck != null) {
      queryParams.addAll(_queryParams('', 'hourCheck', hourCheck));
    }
    if (threshold != null) {
      queryParams.addAll(_queryParams('', 'threshold', threshold));
    }
    if (distanceUnit != null) {
      queryParams.addAll(_queryParams('', 'distanceUnit', distanceUnit));
    }
    if (searchRange != null) {
      queryParams.addAll(_queryParams('', 'searchRange', searchRange));
    }
    if (sortOrder != null) {
      queryParams.addAll(_queryParams('', 'sortOrder', sortOrder));
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

  /// Get Predicted Locations
  ///
  /// Get the predicted location for a customer based on previous behavior.  If a customer resides in a place for a period of time this is marked as a preferred location.  We look back over the previous few days and the previous days of the week from the day specified.  If for instance the day was a Wednesday then this would check the days before, including: Tuesday, Monday, Sunday, etc. It will also check some number of previous Wednesdays in the past few weeks.
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] accountId (required):
  ///   The account id of the customer
  ///
  /// * [double] latitude:
  ///   latitude to return a more likely result set based on the user's current location
  ///
  /// * [double] longitude:
  ///   longitude to return a more likely result set based on the user's current location
  ///
  /// * [int] dateCheck:
  ///   Used to specify which day to get predicted locations for. So if you want to look at where they might be tomorrow, pass in tomorrow's date (timestamp in milliseconds). If no value is passed in, the current date will be used.
  ///
  /// * [String] hourCheck:
  ///   Comma separated list of hours that will filter the results on the hours specified. For example, if you want to see predicted locations for the mornings and evening you can pass in \"8,9,10,11,17,18,19,20\".
  ///
  /// * [int] threshold:
  ///   The minimum number matches in 1 hour to be considered a likely location.
  ///
  /// * [String] distanceUnit:
  ///   Determines which unit of measurement gets returned for distances: {MILES, KILOMETERS}
  ///
  /// * [double] searchRange:
  ///   Filter results so only locations within the specified radius will be returned. The distance can either be in miles or kilometers as specified in the distanceUnit parameter. A value of \"0\" (zero) will ignore the radius restriction.
  ///
  /// * [String] sortOrder:
  ///   The ordering algorithm for sorting the returned results: {MATCHES, DISTANCE, WEIGHTED}
  Future<PredictedLocationResponse?> getPredictedLocations(num version, int accountId, { double? latitude, double? longitude, int? dateCheck, String? hourCheck, int? threshold, String? distanceUnit, double? searchRange, String? sortOrder, }) async {
    final response = await getPredictedLocationsWithHttpInfo(version, accountId,  latitude: latitude, longitude: longitude, dateCheck: dateCheck, hourCheck: hourCheck, threshold: threshold, distanceUnit: distanceUnit, searchRange: searchRange, sortOrder: sortOrder, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PredictedLocationResponse',) as PredictedLocationResponse;
    
    }
    return null;
  }

  /// Get Tracking Path
  ///
  /// Get the path (lat/long coordinates) between 2 steps previously logged for a customer.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] accountId (required):
  ///   The account id of the customer
  ///
  /// * [int] startStepId (required):
  ///   The stepId to begin from
  ///
  /// * [int] endStepId (required):
  ///   The stepId to end with
  Future<Response> getPredictedPathWithHttpInfo(num version, int accountId, int startStepId, int endStepId,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/tracking/path/get'
      .replaceAll('{version}', version.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'accountId', accountId));
      queryParams.addAll(_queryParams('', 'startStepId', startStepId));
      queryParams.addAll(_queryParams('', 'endStepId', endStepId));

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

  /// Get Tracking Path
  ///
  /// Get the path (lat/long coordinates) between 2 steps previously logged for a customer.
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] accountId (required):
  ///   The account id of the customer
  ///
  /// * [int] startStepId (required):
  ///   The stepId to begin from
  ///
  /// * [int] endStepId (required):
  ///   The stepId to end with
  Future<List<StepResponse>?> getPredictedPath(num version, int accountId, int startStepId, int endStepId,) async {
    final response = await getPredictedPathWithHttpInfo(version, accountId, startStepId, endStepId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<StepResponse>') as List)
        .cast<StepResponse>()
        .toList(growable: false);

    }
    return null;
  }

  /// Search Preferred Locations
  ///
  /// Search on preferred locations for a user, which is created when a customer resides in a place for a period of time.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] accountId (required):
  ///   The account id of the customer
  ///
  /// * [double] latitude:
  ///   latitude to return a more likely result set based on the user's current location
  ///
  /// * [double] longitude:
  ///   longitude to return a more likely result set based on the user's current location
  ///
  /// * [int] dateCheck:
  ///   Used to specify which day to get preferred locations for. So if you want to look at where they might be tomorrow, pass in tomorrow's date (timestamp in milliseconds). If no value is passed in, results from all time will be returned.
  ///
  /// * [String] hourCheck:
  ///   Comma separated list of hours that will filter the results on the hours specified. For example, if you want to see preferred locations for the mornings and evening you can pass in \"8,9,10,11,17,18,19,20\".
  ///
  /// * [String] sortField:
  ///   Specifies how the results will be ordered. Supported values include: CREATED - the time of when the preferred location data was processed. PREFERRED_DATE - the time of when the user sent in the tracking data. HOUR - the hour of when the user sent in the tracking data. DURATION - the duration of the preferred location
  ///
  /// * [bool] descending:
  ///   Determines whether the sorted list is in descending or ascending order
  ///
  /// * [int] start:
  ///   The start index for pagination
  ///
  /// * [int] limit:
  ///   The limit for pagination
  ///
  /// * [double] searchRange:
  ///   Filter results so only locations within the specified radius will be returned. The distance can either be in miles or kilometers as specified in the distanceUnit parameter. A value of \"0\" (zero) will ignore the radius restriction.
  ///
  /// * [String] distanceUnit:
  ///   Determines which unit of measurement gets returned for distances: {MILES, KILOMETERS}
  Future<Response> getPreferredLocationsWithHttpInfo(num version, int accountId, { double? latitude, double? longitude, int? dateCheck, String? hourCheck, String? sortField, bool? descending, int? start, int? limit, double? searchRange, String? distanceUnit, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/tracking/preferred/search'
      .replaceAll('{version}', version.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'accountId', accountId));
    if (latitude != null) {
      queryParams.addAll(_queryParams('', 'latitude', latitude));
    }
    if (longitude != null) {
      queryParams.addAll(_queryParams('', 'longitude', longitude));
    }
    if (dateCheck != null) {
      queryParams.addAll(_queryParams('', 'dateCheck', dateCheck));
    }
    if (hourCheck != null) {
      queryParams.addAll(_queryParams('', 'hourCheck', hourCheck));
    }
    if (sortField != null) {
      queryParams.addAll(_queryParams('', 'sortField', sortField));
    }
    if (descending != null) {
      queryParams.addAll(_queryParams('', 'descending', descending));
    }
    if (start != null) {
      queryParams.addAll(_queryParams('', 'start', start));
    }
    if (limit != null) {
      queryParams.addAll(_queryParams('', 'limit', limit));
    }
    if (searchRange != null) {
      queryParams.addAll(_queryParams('', 'searchRange', searchRange));
    }
    if (distanceUnit != null) {
      queryParams.addAll(_queryParams('', 'distanceUnit', distanceUnit));
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

  /// Search Preferred Locations
  ///
  /// Search on preferred locations for a user, which is created when a customer resides in a place for a period of time.
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] accountId (required):
  ///   The account id of the customer
  ///
  /// * [double] latitude:
  ///   latitude to return a more likely result set based on the user's current location
  ///
  /// * [double] longitude:
  ///   longitude to return a more likely result set based on the user's current location
  ///
  /// * [int] dateCheck:
  ///   Used to specify which day to get preferred locations for. So if you want to look at where they might be tomorrow, pass in tomorrow's date (timestamp in milliseconds). If no value is passed in, results from all time will be returned.
  ///
  /// * [String] hourCheck:
  ///   Comma separated list of hours that will filter the results on the hours specified. For example, if you want to see preferred locations for the mornings and evening you can pass in \"8,9,10,11,17,18,19,20\".
  ///
  /// * [String] sortField:
  ///   Specifies how the results will be ordered. Supported values include: CREATED - the time of when the preferred location data was processed. PREFERRED_DATE - the time of when the user sent in the tracking data. HOUR - the hour of when the user sent in the tracking data. DURATION - the duration of the preferred location
  ///
  /// * [bool] descending:
  ///   Determines whether the sorted list is in descending or ascending order
  ///
  /// * [int] start:
  ///   The start index for pagination
  ///
  /// * [int] limit:
  ///   The limit for pagination
  ///
  /// * [double] searchRange:
  ///   Filter results so only locations within the specified radius will be returned. The distance can either be in miles or kilometers as specified in the distanceUnit parameter. A value of \"0\" (zero) will ignore the radius restriction.
  ///
  /// * [String] distanceUnit:
  ///   Determines which unit of measurement gets returned for distances: {MILES, KILOMETERS}
  Future<List<PreferredLocationResponse>?> getPreferredLocations(num version, int accountId, { double? latitude, double? longitude, int? dateCheck, String? hourCheck, String? sortField, bool? descending, int? start, int? limit, double? searchRange, String? distanceUnit, }) async {
    final response = await getPreferredLocationsWithHttpInfo(version, accountId,  latitude: latitude, longitude: longitude, dateCheck: dateCheck, hourCheck: hourCheck, sortField: sortField, descending: descending, start: start, limit: limit, searchRange: searchRange, distanceUnit: distanceUnit, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<PreferredLocationResponse>') as List)
        .cast<PreferredLocationResponse>()
        .toList(growable: false);

    }
    return null;
  }

  /// Search Tracking
  ///
  /// Retrieve tracking data to be able to show where a user has been.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [String] deviceId:
  ///   the device id (deviceId or accountId required)
  ///
  /// * [int] accountId:
  ///   the account id of the user (deviceId or accountId required)
  ///
  /// * [int] ownerId:
  ///   the account id of the person the user wants to tracking data for
  ///
  /// * [String] trackingDeviceId:
  ///   the id of the tracking device
  ///
  /// * [int] startDate:
  ///   the start date in (UTC milliseconds) to filter the tracking results. If no startDate is passed in, the last 30 days will be returned.
  ///
  /// * [int] endDate:
  ///   the end date in (UTC milliseconds) to filter the tracking results
  ///
  /// * [String] tags:
  ///   filter results by tag
  ///
  /// * [bool] getLastPoint:
  ///   gets the last known location of the user
  Future<Response> getTrackingLegsWithHttpInfo(num version, { String? deviceId, int? accountId, int? ownerId, String? trackingDeviceId, int? startDate, int? endDate, String? tags, bool? getLastPoint, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/tracking/search'
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
    if (ownerId != null) {
      queryParams.addAll(_queryParams('', 'ownerId', ownerId));
    }
    if (trackingDeviceId != null) {
      queryParams.addAll(_queryParams('', 'trackingDeviceId', trackingDeviceId));
    }
    if (startDate != null) {
      queryParams.addAll(_queryParams('', 'startDate', startDate));
    }
    if (endDate != null) {
      queryParams.addAll(_queryParams('', 'endDate', endDate));
    }
    if (tags != null) {
      queryParams.addAll(_queryParams('', 'tags', tags));
    }
    if (getLastPoint != null) {
      queryParams.addAll(_queryParams('', 'getLastPoint', getLastPoint));
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

  /// Search Tracking
  ///
  /// Retrieve tracking data to be able to show where a user has been.
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [String] deviceId:
  ///   the device id (deviceId or accountId required)
  ///
  /// * [int] accountId:
  ///   the account id of the user (deviceId or accountId required)
  ///
  /// * [int] ownerId:
  ///   the account id of the person the user wants to tracking data for
  ///
  /// * [String] trackingDeviceId:
  ///   the id of the tracking device
  ///
  /// * [int] startDate:
  ///   the start date in (UTC milliseconds) to filter the tracking results. If no startDate is passed in, the last 30 days will be returned.
  ///
  /// * [int] endDate:
  ///   the end date in (UTC milliseconds) to filter the tracking results
  ///
  /// * [String] tags:
  ///   filter results by tag
  ///
  /// * [bool] getLastPoint:
  ///   gets the last known location of the user
  Future<List<LegResponse>?> getTrackingLegs(num version, { String? deviceId, int? accountId, int? ownerId, String? trackingDeviceId, int? startDate, int? endDate, String? tags, bool? getLastPoint, }) async {
    final response = await getTrackingLegsWithHttpInfo(version,  deviceId: deviceId, accountId: accountId, ownerId: ownerId, trackingDeviceId: trackingDeviceId, startDate: startDate, endDate: endDate, tags: tags, getLastPoint: getLastPoint, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<LegResponse>') as List)
        .cast<LegResponse>()
        .toList(growable: false);

    }
    return null;
  }

  /// Create Tracking Leg
  ///
  /// Send tracking points to be able to generate pathing data
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [double] startLat (required):
  ///   the latitude of the first point
  ///
  /// * [double] startLng (required):
  ///   the longitude of the first point
  ///
  /// * [int] startDate (required):
  ///   the start date (in UTC milliseconds) of the first point
  ///
  /// * [double] endLat (required):
  ///   the latitude of the last point
  ///
  /// * [double] endLng (required):
  ///   the longitude of the last point
  ///
  /// * [int] endDate (required):
  ///   the end date (in UTC milliseconds) of the last point
  ///
  /// * [String] deviceId:
  ///   the device id (deviceId or accountId required)
  ///
  /// * [int] accountId:
  ///   the account id of the user (deviceId or accountId required)
  ///
  /// * [double] distance:
  ///   the total distance
  ///
  /// * [int] duration:
  ///   the total duration
  ///
  /// * [String] steps:
  ///   JSON array of tracking vectors used for smoother pathing data. If null then the leg data will be used to generate a single step, if an empty array then no steps will be generated. ```json [{   \"distance\": \"0.03\",   \"duration\": \"5000\",   \"startLat\": \"47.614603\",   \"startLng\": \"-122.350518\",   \"startDate\": \"1361924010000\",   \"endLat\": \"47.614941\",   \"endLng\": \"-122.350062\",   \"endDate\": \"1361924015000\" }] ``` 
  ///
  /// * [String] tags:
  ///   name the leg for searching
  Future<Response> saveTrackingLegWithHttpInfo(num version, double startLat, double startLng, int startDate, double endLat, double endLng, int endDate, { String? deviceId, int? accountId, double? distance, int? duration, String? steps, String? tags, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/tracking/leg/create'
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
    if (distance != null) {
      queryParams.addAll(_queryParams('', 'distance', distance));
    }
    if (duration != null) {
      queryParams.addAll(_queryParams('', 'duration', duration));
    }
      queryParams.addAll(_queryParams('', 'startLat', startLat));
      queryParams.addAll(_queryParams('', 'startLng', startLng));
      queryParams.addAll(_queryParams('', 'startDate', startDate));
      queryParams.addAll(_queryParams('', 'endLat', endLat));
      queryParams.addAll(_queryParams('', 'endLng', endLng));
      queryParams.addAll(_queryParams('', 'endDate', endDate));
    if (steps != null) {
      queryParams.addAll(_queryParams('', 'steps', steps));
    }
    if (tags != null) {
      queryParams.addAll(_queryParams('', 'tags', tags));
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

  /// Create Tracking Leg
  ///
  /// Send tracking points to be able to generate pathing data
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [double] startLat (required):
  ///   the latitude of the first point
  ///
  /// * [double] startLng (required):
  ///   the longitude of the first point
  ///
  /// * [int] startDate (required):
  ///   the start date (in UTC milliseconds) of the first point
  ///
  /// * [double] endLat (required):
  ///   the latitude of the last point
  ///
  /// * [double] endLng (required):
  ///   the longitude of the last point
  ///
  /// * [int] endDate (required):
  ///   the end date (in UTC milliseconds) of the last point
  ///
  /// * [String] deviceId:
  ///   the device id (deviceId or accountId required)
  ///
  /// * [int] accountId:
  ///   the account id of the user (deviceId or accountId required)
  ///
  /// * [double] distance:
  ///   the total distance
  ///
  /// * [int] duration:
  ///   the total duration
  ///
  /// * [String] steps:
  ///   JSON array of tracking vectors used for smoother pathing data. If null then the leg data will be used to generate a single step, if an empty array then no steps will be generated. ```json [{   \"distance\": \"0.03\",   \"duration\": \"5000\",   \"startLat\": \"47.614603\",   \"startLng\": \"-122.350518\",   \"startDate\": \"1361924010000\",   \"endLat\": \"47.614941\",   \"endLng\": \"-122.350062\",   \"endDate\": \"1361924015000\" }] ``` 
  ///
  /// * [String] tags:
  ///   name the leg for searching
  Future<SirqulResponse?> saveTrackingLeg(num version, double startLat, double startLng, int startDate, double endLat, double endLng, int endDate, { String? deviceId, int? accountId, double? distance, int? duration, String? steps, String? tags, }) async {
    final response = await saveTrackingLegWithHttpInfo(version, startLat, startLng, startDate, endLat, endLng, endDate,  deviceId: deviceId, accountId: accountId, distance: distance, duration: duration, steps: steps, tags: tags, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'SirqulResponse',) as SirqulResponse;
    
    }
    return null;
  }

  /// Create Tracking Step
  ///
  /// Send tracking points to be able to generate pathing data
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] legId (required):
  ///   the leg to add the step to
  ///
  /// * [double] startLat (required):
  ///   the latitude of the first point
  ///
  /// * [double] startLng (required):
  ///   the longitude of the first point
  ///
  /// * [int] startDate (required):
  ///   the start date (in UTC milliseconds) of the first point
  ///
  /// * [double] endLat (required):
  ///   the latitude of the last point
  ///
  /// * [double] endLng (required):
  ///   the longitude of the last point
  ///
  /// * [int] endDate (required):
  ///   the end date (in UTC milliseconds) of the last point
  ///
  /// * [String] deviceId:
  ///   the device id (deviceId or accountId required)
  ///
  /// * [int] accountId:
  ///   the account id of the user (deviceId or accountId required)
  ///
  /// * [double] distance:
  ///   the total distance
  ///
  /// * [int] duration:
  ///   the total duration
  Future<Response> saveTrackingStepWithHttpInfo(num version, int legId, double startLat, double startLng, int startDate, double endLat, double endLng, int endDate, { String? deviceId, int? accountId, double? distance, int? duration, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/tracking/step/create'
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
      queryParams.addAll(_queryParams('', 'legId', legId));
    if (distance != null) {
      queryParams.addAll(_queryParams('', 'distance', distance));
    }
    if (duration != null) {
      queryParams.addAll(_queryParams('', 'duration', duration));
    }
      queryParams.addAll(_queryParams('', 'startLat', startLat));
      queryParams.addAll(_queryParams('', 'startLng', startLng));
      queryParams.addAll(_queryParams('', 'startDate', startDate));
      queryParams.addAll(_queryParams('', 'endLat', endLat));
      queryParams.addAll(_queryParams('', 'endLng', endLng));
      queryParams.addAll(_queryParams('', 'endDate', endDate));

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

  /// Create Tracking Step
  ///
  /// Send tracking points to be able to generate pathing data
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] legId (required):
  ///   the leg to add the step to
  ///
  /// * [double] startLat (required):
  ///   the latitude of the first point
  ///
  /// * [double] startLng (required):
  ///   the longitude of the first point
  ///
  /// * [int] startDate (required):
  ///   the start date (in UTC milliseconds) of the first point
  ///
  /// * [double] endLat (required):
  ///   the latitude of the last point
  ///
  /// * [double] endLng (required):
  ///   the longitude of the last point
  ///
  /// * [int] endDate (required):
  ///   the end date (in UTC milliseconds) of the last point
  ///
  /// * [String] deviceId:
  ///   the device id (deviceId or accountId required)
  ///
  /// * [int] accountId:
  ///   the account id of the user (deviceId or accountId required)
  ///
  /// * [double] distance:
  ///   the total distance
  ///
  /// * [int] duration:
  ///   the total duration
  Future<SirqulResponse?> saveTrackingStep(num version, int legId, double startLat, double startLng, int startDate, double endLat, double endLng, int endDate, { String? deviceId, int? accountId, double? distance, int? duration, }) async {
    final response = await saveTrackingStepWithHttpInfo(version, legId, startLat, startLng, startDate, endLat, endLng, endDate,  deviceId: deviceId, accountId: accountId, distance: distance, duration: duration, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'SirqulResponse',) as SirqulResponse;
    
    }
    return null;
  }

  /// List Tracking
  ///
  /// Search for all accounts that have tracking legs data by the given constraints.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] accountId (required):
  ///   The account id of the user
  ///
  /// * [String] keyword:
  ///   Used for LIKE search of first or last name on the acocunt
  ///
  /// * [int] startDate:
  ///   Range to begin in UTC milliseconds
  ///
  /// * [int] endDate:
  ///   Range to end in UTC milliseconds
  ///
  /// * [String] tags:
  ///   Exact match on tag field of Legs's searchTag
  ///
  /// * [String] audienceIds:
  ///   
  ///
  /// * [double] latitude:
  ///   Origin latitude to perform searching constraints with given range
  ///
  /// * [double] longitude:
  ///   Origin longitude to perform searching constraints with given range
  ///
  /// * [double] range:
  ///   The radius, in miles, to perform the search for
  ///
  /// * [String] sortField:
  ///   The column to sort the search on. Possible values include: {LEG_START_DATE, ACCOUNT_DISPLAY}
  ///
  /// * [bool] descending:
  ///   The order to return the results. Default is false, which will return the results in ascending order.
  ///
  /// * [int] start:
  ///   The index into the record set to start with. Default is 0.
  ///
  /// * [int] limit:
  ///   The total number of records to return. Default is 20.
  ///
  /// * [bool] activeOnly:
  ///   Determines whether to return only active results. Default is false.
  Future<Response> searchAccountsWithTrackingLegsWithHttpInfo(num version, int accountId, { String? keyword, int? startDate, int? endDate, String? tags, String? audienceIds, double? latitude, double? longitude, double? range, String? sortField, bool? descending, int? start, int? limit, bool? activeOnly, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/tracking/list'
      .replaceAll('{version}', version.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'accountId', accountId));
    if (keyword != null) {
      queryParams.addAll(_queryParams('', 'keyword', keyword));
    }
    if (startDate != null) {
      queryParams.addAll(_queryParams('', 'startDate', startDate));
    }
    if (endDate != null) {
      queryParams.addAll(_queryParams('', 'endDate', endDate));
    }
    if (tags != null) {
      queryParams.addAll(_queryParams('', 'tags', tags));
    }
    if (audienceIds != null) {
      queryParams.addAll(_queryParams('', 'audienceIds', audienceIds));
    }
    if (latitude != null) {
      queryParams.addAll(_queryParams('', 'latitude', latitude));
    }
    if (longitude != null) {
      queryParams.addAll(_queryParams('', 'longitude', longitude));
    }
    if (range != null) {
      queryParams.addAll(_queryParams('', 'range', range));
    }
    if (sortField != null) {
      queryParams.addAll(_queryParams('', 'sortField', sortField));
    }
    if (descending != null) {
      queryParams.addAll(_queryParams('', 'descending', descending));
    }
    if (start != null) {
      queryParams.addAll(_queryParams('', 'start', start));
    }
    if (limit != null) {
      queryParams.addAll(_queryParams('', 'limit', limit));
    }
    if (activeOnly != null) {
      queryParams.addAll(_queryParams('', 'activeOnly', activeOnly));
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

  /// List Tracking
  ///
  /// Search for all accounts that have tracking legs data by the given constraints.
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] accountId (required):
  ///   The account id of the user
  ///
  /// * [String] keyword:
  ///   Used for LIKE search of first or last name on the acocunt
  ///
  /// * [int] startDate:
  ///   Range to begin in UTC milliseconds
  ///
  /// * [int] endDate:
  ///   Range to end in UTC milliseconds
  ///
  /// * [String] tags:
  ///   Exact match on tag field of Legs's searchTag
  ///
  /// * [String] audienceIds:
  ///   
  ///
  /// * [double] latitude:
  ///   Origin latitude to perform searching constraints with given range
  ///
  /// * [double] longitude:
  ///   Origin longitude to perform searching constraints with given range
  ///
  /// * [double] range:
  ///   The radius, in miles, to perform the search for
  ///
  /// * [String] sortField:
  ///   The column to sort the search on. Possible values include: {LEG_START_DATE, ACCOUNT_DISPLAY}
  ///
  /// * [bool] descending:
  ///   The order to return the results. Default is false, which will return the results in ascending order.
  ///
  /// * [int] start:
  ///   The index into the record set to start with. Default is 0.
  ///
  /// * [int] limit:
  ///   The total number of records to return. Default is 20.
  ///
  /// * [bool] activeOnly:
  ///   Determines whether to return only active results. Default is false.
  Future<List<AccountMiniResponse>?> searchAccountsWithTrackingLegs(num version, int accountId, { String? keyword, int? startDate, int? endDate, String? tags, String? audienceIds, double? latitude, double? longitude, double? range, String? sortField, bool? descending, int? start, int? limit, bool? activeOnly, }) async {
    final response = await searchAccountsWithTrackingLegsWithHttpInfo(version, accountId,  keyword: keyword, startDate: startDate, endDate: endDate, tags: tags, audienceIds: audienceIds, latitude: latitude, longitude: longitude, range: range, sortField: sortField, descending: descending, start: start, limit: limit, activeOnly: activeOnly, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<AccountMiniResponse>') as List)
        .cast<AccountMiniResponse>()
        .toList(growable: false);

    }
    return null;
  }

  /// Search Tracking (Billable)
  ///
  /// Retrieve tracking data for billable/account scoped queries.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] accountId (required):
  ///   The account id to search tracking for
  ///
  /// * [String] appKey (required):
  ///   The application key
  ///
  /// * [String] trackingDeviceId:
  ///   The id of the tracking device
  ///
  /// * [int] startDate:
  ///   The start date in (UTC milliseconds) to filter the tracking results
  ///
  /// * [int] endDate:
  ///   The end date in (UTC milliseconds) to filter the tracking results
  ///
  /// * [String] tags:
  ///   Filter results by tag
  ///
  /// * [int] start:
  ///   The start index for pagination
  ///
  /// * [int] limit:
  ///   The limit for pagination
  Future<Response> searchTrackingLegsWithHttpInfo(num version, int accountId, String appKey, { String? trackingDeviceId, int? startDate, int? endDate, String? tags, int? start, int? limit, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/tracking/searchByBillable'
      .replaceAll('{version}', version.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'accountId', accountId));
      queryParams.addAll(_queryParams('', 'appKey', appKey));
    if (trackingDeviceId != null) {
      queryParams.addAll(_queryParams('', 'trackingDeviceId', trackingDeviceId));
    }
    if (startDate != null) {
      queryParams.addAll(_queryParams('', 'startDate', startDate));
    }
    if (endDate != null) {
      queryParams.addAll(_queryParams('', 'endDate', endDate));
    }
    if (tags != null) {
      queryParams.addAll(_queryParams('', 'tags', tags));
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

  /// Search Tracking (Billable)
  ///
  /// Retrieve tracking data for billable/account scoped queries.
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] accountId (required):
  ///   The account id to search tracking for
  ///
  /// * [String] appKey (required):
  ///   The application key
  ///
  /// * [String] trackingDeviceId:
  ///   The id of the tracking device
  ///
  /// * [int] startDate:
  ///   The start date in (UTC milliseconds) to filter the tracking results
  ///
  /// * [int] endDate:
  ///   The end date in (UTC milliseconds) to filter the tracking results
  ///
  /// * [String] tags:
  ///   Filter results by tag
  ///
  /// * [int] start:
  ///   The start index for pagination
  ///
  /// * [int] limit:
  ///   The limit for pagination
  Future<List<LegResponse>?> searchTrackingLegs(num version, int accountId, String appKey, { String? trackingDeviceId, int? startDate, int? endDate, String? tags, int? start, int? limit, }) async {
    final response = await searchTrackingLegsWithHttpInfo(version, accountId, appKey,  trackingDeviceId: trackingDeviceId, startDate: startDate, endDate: endDate, tags: tags, start: start, limit: limit, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<LegResponse>') as List)
        .cast<LegResponse>()
        .toList(growable: false);

    }
    return null;
  }
}
