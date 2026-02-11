//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class AnalyticsApi {
  AnalyticsApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Get User Activity
  ///
  /// Get an activity feed by user.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] start (required):
  ///   The start of the pagination
  ///
  /// * [int] limit (required):
  ///   The limit of the pagination
  ///
  /// * [int] accountId (required):
  ///   the account id of the user
  Future<Response> activitiesWithHttpInfo(int start, int limit, int accountId,) async {
    // ignore: prefer_const_declarations
    final path = r'/analytics/useractivity';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'start', start));
      queryParams.addAll(_queryParams('', 'limit', limit));
      queryParams.addAll(_queryParams('', 'accountId', accountId));

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

  /// Get User Activity
  ///
  /// Get an activity feed by user.
  ///
  /// Parameters:
  ///
  /// * [int] start (required):
  ///   The start of the pagination
  ///
  /// * [int] limit (required):
  ///   The limit of the pagination
  ///
  /// * [int] accountId (required):
  ///   the account id of the user
  Future<List<UserActivityResponse>?> activities(int start, int limit, int accountId,) async {
    final response = await activitiesWithHttpInfo(start, limit, accountId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<UserActivityResponse>') as List)
        .cast<UserActivityResponse>()
        .toList(growable: false);

    }
    return null;
  }

  /// Get Aggregated Filtered Usage
  ///
  /// Query analytics to get data used for nested graphs and charts
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] deviceId:
  ///   The unique id of the device making the request (deviceId or accountId required)
  ///
  /// * [int] accountId:
  ///   The account id of the user (deviceId or accountId required)
  ///
  /// * [int] applicationId:
  ///   This parameter is deprecated.
  ///
  /// * [String] appKey:
  ///   The application key used to filter results by application
  ///
  /// * [int] startDate:
  ///   Used to search for results after or equal to this date (UNIX time-stamp in milliseconds)
  ///
  /// * [int] endDate:
  ///   Used to search for results before or equal to this date (UNIX time-stamp in milliseconds)
  ///
  /// * [String] deviceType:
  ///   The device type to filter results by (performs a LIKE search)
  ///
  /// * [String] device:
  ///   The device to filter results by (performs a LIKE search)
  ///
  /// * [String] deviceOS:
  ///   The device OS to filter results by (performs a LIKE search)
  ///
  /// * [String] gender:
  ///   The gender to filter results by {MALE, FEMALE}
  ///
  /// * [String] ageGroup:
  ///   Comma separated list of age groups to filter by {AGE_0_13, AGE_14_17, AGE_18_22, AGE_23_30, AGE_31_54, AGE_55_PLUS}
  ///
  /// * [String] country:
  ///   The country to filter results by (performs a wild-card search)
  ///
  /// * [String] state:
  ///   The state to filter results by (performs a wild-card search)
  ///
  /// * [String] city:
  ///   The city to filter results by (performs a wild-card search)
  ///
  /// * [String] zip:
  ///   The zip to filter results by (performs a wild-card search)
  ///
  /// * [String] model:
  ///   The model to filter results by (performs a wild-card search)
  ///
  /// * [String] tag:
  ///   The tag to filter results by (performs a wild-card search)
  ///
  /// * [int] userAccountId:
  ///   The account id to filter results for a particular user
  ///
  /// * [String] userAccountDisplay:
  ///   The user display to filter results by (performs a wild-card search)
  ///
  /// * [String] userAccountUsername:
  ///   The username to filter results by (performs a wild-card search)
  ///
  /// * [String] groupByRoot:
  ///   Determines how to group results. For example, passing in 'CREATED' will return results by date. Passing in 'ACCOUNT' will return results by user {TAG, CUSTOM_ID, TOKEN, MODEL, DEVICE_TYPE, DEVICE, DEVICE_OS, IP_ADDRESS, STATE, CITY, ZIP, COUNTRY, ACCOUNT, APPLICATION_ID, APPLICATION_NAME_BY_ID}
  ///
  /// * [String] groupBy:
  ///   Determines how to group the nested data. {TAG, CUSTOM_ID, TOKEN, MODEL, DEVICE_TYPE, DEVICE, DEVICE_OS, IP_ADDRESS, STATE, CITY, ZIP, COUNTRY, ACCOUNT, APPLICATION_ID, APPLICATION_NAME_BY_ID}
  ///
  /// * [String] distinctCount:
  ///   Performs a unique query on the specified column. For example, passing in 'ACCOUNT' will return the number of unique users. {TAG, CUSTOM_ID, TOKEN, MODEL, DEVICE_TYPE, DEVICE, DEVICE_OS, IP_ADDRESS, STATE, CITY, ZIP, COUNTRY, ACCOUNT, APPLICATION_ID, NEW_ACCOUNT}
  ///
  /// * [String] sortField:
  ///   Determines whether the results will be sorted by day or by number of hits {CREATED, TAG_COUNT}
  ///
  /// * [bool] descending:
  ///   Determines whether to return results in descending order
  ///
  /// * [bool] hideUnknown:
  ///   Determines whether to return data that has empty or unknown values
  ///
  /// * [String] responseFormat:
  ///   Determines whether to return a JOSN or XML representation of the graph results
  ///
  /// * [int] l:
  ///   This parameter is deprecated.
  ///
  /// * [int] limit:
  ///   Used to limit results to get a cleaner graph. The results that gets filtered out will be combined
  ///
  /// * [double] latitude:
  ///   the current latitude of the user
  ///
  /// * [double] longitude:
  ///   the current longitude of the user
  Future<Response> aggregatedFilteredUsageWithHttpInfo({ String? deviceId, int? accountId, int? applicationId, String? appKey, int? startDate, int? endDate, String? deviceType, String? device, String? deviceOS, String? gender, String? ageGroup, String? country, String? state, String? city, String? zip, String? model, String? tag, int? userAccountId, String? userAccountDisplay, String? userAccountUsername, String? groupByRoot, String? groupBy, String? distinctCount, String? sortField, bool? descending, bool? hideUnknown, String? responseFormat, int? l, int? limit, double? latitude, double? longitude, }) async {
    // ignore: prefer_const_declarations
    final path = r'/analytics/aggregatedFilteredUsage';

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
    if (applicationId != null) {
      queryParams.addAll(_queryParams('', 'applicationId', applicationId));
    }
    if (appKey != null) {
      queryParams.addAll(_queryParams('', 'appKey', appKey));
    }
    if (startDate != null) {
      queryParams.addAll(_queryParams('', 'startDate', startDate));
    }
    if (endDate != null) {
      queryParams.addAll(_queryParams('', 'endDate', endDate));
    }
    if (deviceType != null) {
      queryParams.addAll(_queryParams('', 'deviceType', deviceType));
    }
    if (device != null) {
      queryParams.addAll(_queryParams('', 'device', device));
    }
    if (deviceOS != null) {
      queryParams.addAll(_queryParams('', 'deviceOS', deviceOS));
    }
    if (gender != null) {
      queryParams.addAll(_queryParams('', 'gender', gender));
    }
    if (ageGroup != null) {
      queryParams.addAll(_queryParams('', 'ageGroup', ageGroup));
    }
    if (country != null) {
      queryParams.addAll(_queryParams('', 'country', country));
    }
    if (state != null) {
      queryParams.addAll(_queryParams('', 'state', state));
    }
    if (city != null) {
      queryParams.addAll(_queryParams('', 'city', city));
    }
    if (zip != null) {
      queryParams.addAll(_queryParams('', 'zip', zip));
    }
    if (model != null) {
      queryParams.addAll(_queryParams('', 'model', model));
    }
    if (tag != null) {
      queryParams.addAll(_queryParams('', 'tag', tag));
    }
    if (userAccountId != null) {
      queryParams.addAll(_queryParams('', 'userAccountId', userAccountId));
    }
    if (userAccountDisplay != null) {
      queryParams.addAll(_queryParams('', 'userAccountDisplay', userAccountDisplay));
    }
    if (userAccountUsername != null) {
      queryParams.addAll(_queryParams('', 'userAccountUsername', userAccountUsername));
    }
    if (groupByRoot != null) {
      queryParams.addAll(_queryParams('', 'groupByRoot', groupByRoot));
    }
    if (groupBy != null) {
      queryParams.addAll(_queryParams('', 'groupBy', groupBy));
    }
    if (distinctCount != null) {
      queryParams.addAll(_queryParams('', 'distinctCount', distinctCount));
    }
    if (sortField != null) {
      queryParams.addAll(_queryParams('', 'sortField', sortField));
    }
    if (descending != null) {
      queryParams.addAll(_queryParams('', 'descending', descending));
    }
    if (hideUnknown != null) {
      queryParams.addAll(_queryParams('', 'hideUnknown', hideUnknown));
    }
    if (responseFormat != null) {
      queryParams.addAll(_queryParams('', 'responseFormat', responseFormat));
    }
    if (l != null) {
      queryParams.addAll(_queryParams('', '_l', l));
    }
    if (limit != null) {
      queryParams.addAll(_queryParams('', 'limit', limit));
    }
    if (latitude != null) {
      queryParams.addAll(_queryParams('', 'latitude', latitude));
    }
    if (longitude != null) {
      queryParams.addAll(_queryParams('', 'longitude', longitude));
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

  /// Get Aggregated Filtered Usage
  ///
  /// Query analytics to get data used for nested graphs and charts
  ///
  /// Parameters:
  ///
  /// * [String] deviceId:
  ///   The unique id of the device making the request (deviceId or accountId required)
  ///
  /// * [int] accountId:
  ///   The account id of the user (deviceId or accountId required)
  ///
  /// * [int] applicationId:
  ///   This parameter is deprecated.
  ///
  /// * [String] appKey:
  ///   The application key used to filter results by application
  ///
  /// * [int] startDate:
  ///   Used to search for results after or equal to this date (UNIX time-stamp in milliseconds)
  ///
  /// * [int] endDate:
  ///   Used to search for results before or equal to this date (UNIX time-stamp in milliseconds)
  ///
  /// * [String] deviceType:
  ///   The device type to filter results by (performs a LIKE search)
  ///
  /// * [String] device:
  ///   The device to filter results by (performs a LIKE search)
  ///
  /// * [String] deviceOS:
  ///   The device OS to filter results by (performs a LIKE search)
  ///
  /// * [String] gender:
  ///   The gender to filter results by {MALE, FEMALE}
  ///
  /// * [String] ageGroup:
  ///   Comma separated list of age groups to filter by {AGE_0_13, AGE_14_17, AGE_18_22, AGE_23_30, AGE_31_54, AGE_55_PLUS}
  ///
  /// * [String] country:
  ///   The country to filter results by (performs a wild-card search)
  ///
  /// * [String] state:
  ///   The state to filter results by (performs a wild-card search)
  ///
  /// * [String] city:
  ///   The city to filter results by (performs a wild-card search)
  ///
  /// * [String] zip:
  ///   The zip to filter results by (performs a wild-card search)
  ///
  /// * [String] model:
  ///   The model to filter results by (performs a wild-card search)
  ///
  /// * [String] tag:
  ///   The tag to filter results by (performs a wild-card search)
  ///
  /// * [int] userAccountId:
  ///   The account id to filter results for a particular user
  ///
  /// * [String] userAccountDisplay:
  ///   The user display to filter results by (performs a wild-card search)
  ///
  /// * [String] userAccountUsername:
  ///   The username to filter results by (performs a wild-card search)
  ///
  /// * [String] groupByRoot:
  ///   Determines how to group results. For example, passing in 'CREATED' will return results by date. Passing in 'ACCOUNT' will return results by user {TAG, CUSTOM_ID, TOKEN, MODEL, DEVICE_TYPE, DEVICE, DEVICE_OS, IP_ADDRESS, STATE, CITY, ZIP, COUNTRY, ACCOUNT, APPLICATION_ID, APPLICATION_NAME_BY_ID}
  ///
  /// * [String] groupBy:
  ///   Determines how to group the nested data. {TAG, CUSTOM_ID, TOKEN, MODEL, DEVICE_TYPE, DEVICE, DEVICE_OS, IP_ADDRESS, STATE, CITY, ZIP, COUNTRY, ACCOUNT, APPLICATION_ID, APPLICATION_NAME_BY_ID}
  ///
  /// * [String] distinctCount:
  ///   Performs a unique query on the specified column. For example, passing in 'ACCOUNT' will return the number of unique users. {TAG, CUSTOM_ID, TOKEN, MODEL, DEVICE_TYPE, DEVICE, DEVICE_OS, IP_ADDRESS, STATE, CITY, ZIP, COUNTRY, ACCOUNT, APPLICATION_ID, NEW_ACCOUNT}
  ///
  /// * [String] sortField:
  ///   Determines whether the results will be sorted by day or by number of hits {CREATED, TAG_COUNT}
  ///
  /// * [bool] descending:
  ///   Determines whether to return results in descending order
  ///
  /// * [bool] hideUnknown:
  ///   Determines whether to return data that has empty or unknown values
  ///
  /// * [String] responseFormat:
  ///   Determines whether to return a JOSN or XML representation of the graph results
  ///
  /// * [int] l:
  ///   This parameter is deprecated.
  ///
  /// * [int] limit:
  ///   Used to limit results to get a cleaner graph. The results that gets filtered out will be combined
  ///
  /// * [double] latitude:
  ///   the current latitude of the user
  ///
  /// * [double] longitude:
  ///   the current longitude of the user
  Future<ChartData?> aggregatedFilteredUsage({ String? deviceId, int? accountId, int? applicationId, String? appKey, int? startDate, int? endDate, String? deviceType, String? device, String? deviceOS, String? gender, String? ageGroup, String? country, String? state, String? city, String? zip, String? model, String? tag, int? userAccountId, String? userAccountDisplay, String? userAccountUsername, String? groupByRoot, String? groupBy, String? distinctCount, String? sortField, bool? descending, bool? hideUnknown, String? responseFormat, int? l, int? limit, double? latitude, double? longitude, }) async {
    final response = await aggregatedFilteredUsageWithHttpInfo( deviceId: deviceId, accountId: accountId, applicationId: applicationId, appKey: appKey, startDate: startDate, endDate: endDate, deviceType: deviceType, device: device, deviceOS: deviceOS, gender: gender, ageGroup: ageGroup, country: country, state: state, city: city, zip: zip, model: model, tag: tag, userAccountId: userAccountId, userAccountDisplay: userAccountDisplay, userAccountUsername: userAccountUsername, groupByRoot: groupByRoot, groupBy: groupBy, distinctCount: distinctCount, sortField: sortField, descending: descending, hideUnknown: hideUnknown, responseFormat: responseFormat, l: l, limit: limit, latitude: latitude, longitude: longitude, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ChartData',) as ChartData;
    
    }
    return null;
  }

  /// Get Filtered Usage
  ///
  /// Query analytics to get data used for graphs and charts
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] deviceId:
  ///   The unique id of the device making the request (deviceId or accountId required)
  ///
  /// * [int] accountId:
  ///   The account id of the user (deviceId or accountId required)
  ///
  /// * [int] applicationId:
  ///   This parameter is deprecated.
  ///
  /// * [String] appKey:
  ///   The application key used to filter results by application
  ///
  /// * [int] startDate:
  ///   Used to search for results after or equal to this date (UNIX time-stamp in milliseconds)
  ///
  /// * [int] endDate:
  ///   Used to search for results before or equal to this date (UNIX time-stamp in milliseconds)
  ///
  /// * [String] deviceType:
  ///   The device type to filter results by (performs a LIKE search)
  ///
  /// * [String] device:
  ///   The device to filter results by (performs a LIKE search)
  ///
  /// * [String] deviceOS:
  ///   The device OS to filter results by (performs a LIKE search)
  ///
  /// * [String] gender:
  ///   The gender to filter results by {MALE, FEMALE}
  ///
  /// * [String] ageGroup:
  ///   Comma separated list of age groups to filter by {AGE_0_13, AGE_14_17, AGE_18_22, AGE_23_30, AGE_31_54, AGE_55_PLUS}
  ///
  /// * [String] country:
  ///   The country to filter results by (performs a wild-card search)
  ///
  /// * [String] state:
  ///   The state to filter results by (performs a wild-card search)
  ///
  /// * [String] city:
  ///   The city to filter results by (performs a wild-card search)
  ///
  /// * [String] zip:
  ///   The zip to filter results by (performs a wild-card search)
  ///
  /// * [String] model:
  ///   The model to filter results by (performs a wild-card search)
  ///
  /// * [String] tag:
  ///   The tag to filter results by (performs a wild-card search)
  ///
  /// * [int] userAccountId:
  ///   The account id to filter results for a particular user
  ///
  /// * [String] userAccountDisplay:
  ///   The user display to filter results by (performs a wild-card search)
  ///
  /// * [String] userAccountUsername:
  ///   The username to filter results by (performs a wild-card search)
  ///
  /// * [int] customId:
  ///   The ID for the custom table column
  ///
  /// * [String] customType:
  ///   The type defined for the custom table column
  ///
  /// * [double] customValue:
  ///   The value for the custom table column
  ///
  /// * [double] customValue2:
  ///   The value for another custom table column
  ///
  /// * [int] customLong:
  ///   The value that supports Longs for custom table column
  ///
  /// * [int] customLong2:
  ///   The value that supports Longs for custom table column
  ///
  /// * [String] customMessage:
  ///   The message for the custom table column
  ///
  /// * [String] customMessage2:
  ///   The message for the custom table column
  ///
  /// * [String] groupBy:
  ///   Determines how to group results. For example, passing in 'CREATED' will return results by date. Passing in 'ACCOUNT' will return results by user {TAG, CUSTOM_ID, TOKEN, MODEL, DEVICE_TYPE, DEVICE, DEVICE_OS, DEVICE_ID, IP_ADDRESS, STATE, CITY, ZIP, COUNTRY, ACCOUNT, APPLICATION_ID}
  ///
  /// * [String] distinctCount:
  ///   Performs a unique query on the specified column. For example, passing in 'ACCOUNT' will return the number of unique users. {TAG, CUSTOM_ID, TOKEN, MODEL, DEVICE_TYPE, DEVICE, DEVICE_OS, DEVICE_ID, IP_ADDRESS, STATE, CITY, ZIP, COUNTRY, ACCOUNT, APPLICATION_ID}
  ///
  /// * [String] sumColumn:
  ///   sum of the column values
  ///
  /// * [String] sortField:
  ///   Determines whether the results will be sorted by day or by number of hits {CREATED, TAG_COUNT}
  ///
  /// * [bool] descending:
  ///   Determines whether to return results in descending order
  ///
  /// * [bool] hideUnknown:
  ///   Determines whether to return data that has empty or unknown values
  ///
  /// * [String] responseFormat:
  ///   Determines whether to return a JOSN or XML representation of the graph results
  ///
  /// * [int] l:
  ///   This parameter is deprecated.
  ///
  /// * [int] limit:
  ///   Used to limit results to get a cleaner graph. The results that gets filtered out will be combined
  ///
  /// * [double] latitude:
  ///   the current latitude of the user
  ///
  /// * [double] longitude:
  ///   the current longitude of the user
  Future<Response> filteredUsageWithHttpInfo({ String? deviceId, int? accountId, int? applicationId, String? appKey, int? startDate, int? endDate, String? deviceType, String? device, String? deviceOS, String? gender, String? ageGroup, String? country, String? state, String? city, String? zip, String? model, String? tag, int? userAccountId, String? userAccountDisplay, String? userAccountUsername, int? customId, String? customType, double? customValue, double? customValue2, int? customLong, int? customLong2, String? customMessage, String? customMessage2, String? groupBy, String? distinctCount, String? sumColumn, String? sortField, bool? descending, bool? hideUnknown, String? responseFormat, int? l, int? limit, double? latitude, double? longitude, }) async {
    // ignore: prefer_const_declarations
    final path = r'/analytics/filteredUsage';

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
    if (applicationId != null) {
      queryParams.addAll(_queryParams('', 'applicationId', applicationId));
    }
    if (appKey != null) {
      queryParams.addAll(_queryParams('', 'appKey', appKey));
    }
    if (startDate != null) {
      queryParams.addAll(_queryParams('', 'startDate', startDate));
    }
    if (endDate != null) {
      queryParams.addAll(_queryParams('', 'endDate', endDate));
    }
    if (deviceType != null) {
      queryParams.addAll(_queryParams('', 'deviceType', deviceType));
    }
    if (device != null) {
      queryParams.addAll(_queryParams('', 'device', device));
    }
    if (deviceOS != null) {
      queryParams.addAll(_queryParams('', 'deviceOS', deviceOS));
    }
    if (gender != null) {
      queryParams.addAll(_queryParams('', 'gender', gender));
    }
    if (ageGroup != null) {
      queryParams.addAll(_queryParams('', 'ageGroup', ageGroup));
    }
    if (country != null) {
      queryParams.addAll(_queryParams('', 'country', country));
    }
    if (state != null) {
      queryParams.addAll(_queryParams('', 'state', state));
    }
    if (city != null) {
      queryParams.addAll(_queryParams('', 'city', city));
    }
    if (zip != null) {
      queryParams.addAll(_queryParams('', 'zip', zip));
    }
    if (model != null) {
      queryParams.addAll(_queryParams('', 'model', model));
    }
    if (tag != null) {
      queryParams.addAll(_queryParams('', 'tag', tag));
    }
    if (userAccountId != null) {
      queryParams.addAll(_queryParams('', 'userAccountId', userAccountId));
    }
    if (userAccountDisplay != null) {
      queryParams.addAll(_queryParams('', 'userAccountDisplay', userAccountDisplay));
    }
    if (userAccountUsername != null) {
      queryParams.addAll(_queryParams('', 'userAccountUsername', userAccountUsername));
    }
    if (customId != null) {
      queryParams.addAll(_queryParams('', 'customId', customId));
    }
    if (customType != null) {
      queryParams.addAll(_queryParams('', 'customType', customType));
    }
    if (customValue != null) {
      queryParams.addAll(_queryParams('', 'customValue', customValue));
    }
    if (customValue2 != null) {
      queryParams.addAll(_queryParams('', 'customValue2', customValue2));
    }
    if (customLong != null) {
      queryParams.addAll(_queryParams('', 'customLong', customLong));
    }
    if (customLong2 != null) {
      queryParams.addAll(_queryParams('', 'customLong2', customLong2));
    }
    if (customMessage != null) {
      queryParams.addAll(_queryParams('', 'customMessage', customMessage));
    }
    if (customMessage2 != null) {
      queryParams.addAll(_queryParams('', 'customMessage2', customMessage2));
    }
    if (groupBy != null) {
      queryParams.addAll(_queryParams('', 'groupBy', groupBy));
    }
    if (distinctCount != null) {
      queryParams.addAll(_queryParams('', 'distinctCount', distinctCount));
    }
    if (sumColumn != null) {
      queryParams.addAll(_queryParams('', 'sumColumn', sumColumn));
    }
    if (sortField != null) {
      queryParams.addAll(_queryParams('', 'sortField', sortField));
    }
    if (descending != null) {
      queryParams.addAll(_queryParams('', 'descending', descending));
    }
    if (hideUnknown != null) {
      queryParams.addAll(_queryParams('', 'hideUnknown', hideUnknown));
    }
    if (responseFormat != null) {
      queryParams.addAll(_queryParams('', 'responseFormat', responseFormat));
    }
    if (l != null) {
      queryParams.addAll(_queryParams('', '_l', l));
    }
    if (limit != null) {
      queryParams.addAll(_queryParams('', 'limit', limit));
    }
    if (latitude != null) {
      queryParams.addAll(_queryParams('', 'latitude', latitude));
    }
    if (longitude != null) {
      queryParams.addAll(_queryParams('', 'longitude', longitude));
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

  /// Get Filtered Usage
  ///
  /// Query analytics to get data used for graphs and charts
  ///
  /// Parameters:
  ///
  /// * [String] deviceId:
  ///   The unique id of the device making the request (deviceId or accountId required)
  ///
  /// * [int] accountId:
  ///   The account id of the user (deviceId or accountId required)
  ///
  /// * [int] applicationId:
  ///   This parameter is deprecated.
  ///
  /// * [String] appKey:
  ///   The application key used to filter results by application
  ///
  /// * [int] startDate:
  ///   Used to search for results after or equal to this date (UNIX time-stamp in milliseconds)
  ///
  /// * [int] endDate:
  ///   Used to search for results before or equal to this date (UNIX time-stamp in milliseconds)
  ///
  /// * [String] deviceType:
  ///   The device type to filter results by (performs a LIKE search)
  ///
  /// * [String] device:
  ///   The device to filter results by (performs a LIKE search)
  ///
  /// * [String] deviceOS:
  ///   The device OS to filter results by (performs a LIKE search)
  ///
  /// * [String] gender:
  ///   The gender to filter results by {MALE, FEMALE}
  ///
  /// * [String] ageGroup:
  ///   Comma separated list of age groups to filter by {AGE_0_13, AGE_14_17, AGE_18_22, AGE_23_30, AGE_31_54, AGE_55_PLUS}
  ///
  /// * [String] country:
  ///   The country to filter results by (performs a wild-card search)
  ///
  /// * [String] state:
  ///   The state to filter results by (performs a wild-card search)
  ///
  /// * [String] city:
  ///   The city to filter results by (performs a wild-card search)
  ///
  /// * [String] zip:
  ///   The zip to filter results by (performs a wild-card search)
  ///
  /// * [String] model:
  ///   The model to filter results by (performs a wild-card search)
  ///
  /// * [String] tag:
  ///   The tag to filter results by (performs a wild-card search)
  ///
  /// * [int] userAccountId:
  ///   The account id to filter results for a particular user
  ///
  /// * [String] userAccountDisplay:
  ///   The user display to filter results by (performs a wild-card search)
  ///
  /// * [String] userAccountUsername:
  ///   The username to filter results by (performs a wild-card search)
  ///
  /// * [int] customId:
  ///   The ID for the custom table column
  ///
  /// * [String] customType:
  ///   The type defined for the custom table column
  ///
  /// * [double] customValue:
  ///   The value for the custom table column
  ///
  /// * [double] customValue2:
  ///   The value for another custom table column
  ///
  /// * [int] customLong:
  ///   The value that supports Longs for custom table column
  ///
  /// * [int] customLong2:
  ///   The value that supports Longs for custom table column
  ///
  /// * [String] customMessage:
  ///   The message for the custom table column
  ///
  /// * [String] customMessage2:
  ///   The message for the custom table column
  ///
  /// * [String] groupBy:
  ///   Determines how to group results. For example, passing in 'CREATED' will return results by date. Passing in 'ACCOUNT' will return results by user {TAG, CUSTOM_ID, TOKEN, MODEL, DEVICE_TYPE, DEVICE, DEVICE_OS, DEVICE_ID, IP_ADDRESS, STATE, CITY, ZIP, COUNTRY, ACCOUNT, APPLICATION_ID}
  ///
  /// * [String] distinctCount:
  ///   Performs a unique query on the specified column. For example, passing in 'ACCOUNT' will return the number of unique users. {TAG, CUSTOM_ID, TOKEN, MODEL, DEVICE_TYPE, DEVICE, DEVICE_OS, DEVICE_ID, IP_ADDRESS, STATE, CITY, ZIP, COUNTRY, ACCOUNT, APPLICATION_ID}
  ///
  /// * [String] sumColumn:
  ///   sum of the column values
  ///
  /// * [String] sortField:
  ///   Determines whether the results will be sorted by day or by number of hits {CREATED, TAG_COUNT}
  ///
  /// * [bool] descending:
  ///   Determines whether to return results in descending order
  ///
  /// * [bool] hideUnknown:
  ///   Determines whether to return data that has empty or unknown values
  ///
  /// * [String] responseFormat:
  ///   Determines whether to return a JOSN or XML representation of the graph results
  ///
  /// * [int] l:
  ///   This parameter is deprecated.
  ///
  /// * [int] limit:
  ///   Used to limit results to get a cleaner graph. The results that gets filtered out will be combined
  ///
  /// * [double] latitude:
  ///   the current latitude of the user
  ///
  /// * [double] longitude:
  ///   the current longitude of the user
  Future<ChartData?> filteredUsage({ String? deviceId, int? accountId, int? applicationId, String? appKey, int? startDate, int? endDate, String? deviceType, String? device, String? deviceOS, String? gender, String? ageGroup, String? country, String? state, String? city, String? zip, String? model, String? tag, int? userAccountId, String? userAccountDisplay, String? userAccountUsername, int? customId, String? customType, double? customValue, double? customValue2, int? customLong, int? customLong2, String? customMessage, String? customMessage2, String? groupBy, String? distinctCount, String? sumColumn, String? sortField, bool? descending, bool? hideUnknown, String? responseFormat, int? l, int? limit, double? latitude, double? longitude, }) async {
    final response = await filteredUsageWithHttpInfo( deviceId: deviceId, accountId: accountId, applicationId: applicationId, appKey: appKey, startDate: startDate, endDate: endDate, deviceType: deviceType, device: device, deviceOS: deviceOS, gender: gender, ageGroup: ageGroup, country: country, state: state, city: city, zip: zip, model: model, tag: tag, userAccountId: userAccountId, userAccountDisplay: userAccountDisplay, userAccountUsername: userAccountUsername, customId: customId, customType: customType, customValue: customValue, customValue2: customValue2, customLong: customLong, customLong2: customLong2, customMessage: customMessage, customMessage2: customMessage2, groupBy: groupBy, distinctCount: distinctCount, sumColumn: sumColumn, sortField: sortField, descending: descending, hideUnknown: hideUnknown, responseFormat: responseFormat, l: l, limit: limit, latitude: latitude, longitude: longitude, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ChartData',) as ChartData;
    
    }
    return null;
  }

  /// Create Usage Record
  ///
  /// Record an analytic record for a known state within the application.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] tag (required):
  ///   The tag to apply: the name of the action or thing being logged.
  ///
  /// * [String] deviceId:
  ///   The client deviceID
  ///
  /// * [int] accountId:
  ///   The logged in user ID
  ///
  /// * [int] applicationId:
  ///   This parameter is deprecated. This is deprecated, use appKey.
  ///
  /// * [String] appKey:
  ///   The application key unique to each application.
  ///
  /// * [String] appVersion:
  ///   The current build version of the application
  ///
  /// * [String] device:
  ///   The name of the device being used (iPhone5,1 , HTC Nexus One, x86_64, etc.)
  ///
  /// * [String] deviceType:
  ///   The type of device (Handheld or Desktop)
  ///
  /// * [String] deviceOS:
  ///   The operating system that the device is using (iPhone OS 5.0, Android OS 2.3.6, Windows 7 Service Pack 1, etc)
  ///
  /// * [String] model:
  ///   The model of the device (iPhone5,1 , Nexus One, etc.)
  ///
  /// * [double] latitude:
  ///   The current position of the user
  ///
  /// * [double] longitude:
  ///   The current position of the user
  ///
  /// * [int] customId:
  ///   A customId used to associate the usage record with some other record in the system
  ///
  /// * [String] customType:
  ///   The type of record the customId is recorded for
  ///
  /// * [int] achievementIncrement:
  ///   This parameter is deprecated. This is deprecated, use \"customValue\". Determines how many achievement points and/or ranking points the user gets if this analytic is associated with an achievement
  ///
  /// * [String] city:
  ///   The current city of the user
  ///
  /// * [String] state:
  ///   The current state of the user
  ///
  /// * [String] country:
  ///   The current country of the user
  ///
  /// * [String] zip:
  ///   The current zip of the user
  ///
  /// * [String] locationDescription:
  ///   The general description of the user's location
  ///
  /// * [int] clientTime:
  ///   Timestamp sent from device
  ///
  /// * [String] errorMessage:
  ///   This parameter is deprecated.
  ///
  /// * [String] ip:
  ///   the ip address of the client device
  ///
  /// * [String] userAgent:
  ///   this is a description of the client (might contain the device's OS, browser version etc - its a common term)
  ///
  /// * [bool] backgroundEvent:
  ///   This is deprecated.
  ///
  /// * [String] customMessage:
  ///   a custom message for the usage record
  ///
  /// * [String] customMessage2:
  ///   a custom message for the usage record
  ///
  /// * [double] customValue:
  ///   a custom value for the usage record
  ///
  /// * [double] customValue2:
  ///   a custom value for the usage record
  ///
  /// * [int] customLong:
  ///   a custom long value for the usage record
  ///
  /// * [int] customLong2:
  ///   a custom long value for the usage record
  Future<Response> usageWithHttpInfo(String tag, { String? deviceId, int? accountId, int? applicationId, String? appKey, String? appVersion, String? device, String? deviceType, String? deviceOS, String? model, double? latitude, double? longitude, int? customId, String? customType, int? achievementIncrement, String? city, String? state, String? country, String? zip, String? locationDescription, int? clientTime, String? errorMessage, String? ip, String? userAgent, bool? backgroundEvent, String? customMessage, String? customMessage2, double? customValue, double? customValue2, int? customLong, int? customLong2, }) async {
    // ignore: prefer_const_declarations
    final path = r'/analytics/usage';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'tag', tag));
    if (deviceId != null) {
      queryParams.addAll(_queryParams('', 'deviceId', deviceId));
    }
    if (accountId != null) {
      queryParams.addAll(_queryParams('', 'accountId', accountId));
    }
    if (applicationId != null) {
      queryParams.addAll(_queryParams('', 'applicationId', applicationId));
    }
    if (appKey != null) {
      queryParams.addAll(_queryParams('', 'appKey', appKey));
    }
    if (appVersion != null) {
      queryParams.addAll(_queryParams('', 'appVersion', appVersion));
    }
    if (device != null) {
      queryParams.addAll(_queryParams('', 'device', device));
    }
    if (deviceType != null) {
      queryParams.addAll(_queryParams('', 'deviceType', deviceType));
    }
    if (deviceOS != null) {
      queryParams.addAll(_queryParams('', 'deviceOS', deviceOS));
    }
    if (model != null) {
      queryParams.addAll(_queryParams('', 'model', model));
    }
    if (latitude != null) {
      queryParams.addAll(_queryParams('', 'latitude', latitude));
    }
    if (longitude != null) {
      queryParams.addAll(_queryParams('', 'longitude', longitude));
    }
    if (customId != null) {
      queryParams.addAll(_queryParams('', 'customId', customId));
    }
    if (customType != null) {
      queryParams.addAll(_queryParams('', 'customType', customType));
    }
    if (achievementIncrement != null) {
      queryParams.addAll(_queryParams('', 'achievementIncrement', achievementIncrement));
    }
    if (city != null) {
      queryParams.addAll(_queryParams('', 'city', city));
    }
    if (state != null) {
      queryParams.addAll(_queryParams('', 'state', state));
    }
    if (country != null) {
      queryParams.addAll(_queryParams('', 'country', country));
    }
    if (zip != null) {
      queryParams.addAll(_queryParams('', 'zip', zip));
    }
    if (locationDescription != null) {
      queryParams.addAll(_queryParams('', 'locationDescription', locationDescription));
    }
    if (clientTime != null) {
      queryParams.addAll(_queryParams('', 'clientTime', clientTime));
    }
    if (errorMessage != null) {
      queryParams.addAll(_queryParams('', 'errorMessage', errorMessage));
    }
    if (ip != null) {
      queryParams.addAll(_queryParams('', 'ip', ip));
    }
    if (userAgent != null) {
      queryParams.addAll(_queryParams('', 'userAgent', userAgent));
    }
    if (backgroundEvent != null) {
      queryParams.addAll(_queryParams('', 'backgroundEvent', backgroundEvent));
    }
    if (customMessage != null) {
      queryParams.addAll(_queryParams('', 'customMessage', customMessage));
    }
    if (customMessage2 != null) {
      queryParams.addAll(_queryParams('', 'customMessage2', customMessage2));
    }
    if (customValue != null) {
      queryParams.addAll(_queryParams('', 'customValue', customValue));
    }
    if (customValue2 != null) {
      queryParams.addAll(_queryParams('', 'customValue2', customValue2));
    }
    if (customLong != null) {
      queryParams.addAll(_queryParams('', 'customLong', customLong));
    }
    if (customLong2 != null) {
      queryParams.addAll(_queryParams('', 'customLong2', customLong2));
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

  /// Create Usage Record
  ///
  /// Record an analytic record for a known state within the application.
  ///
  /// Parameters:
  ///
  /// * [String] tag (required):
  ///   The tag to apply: the name of the action or thing being logged.
  ///
  /// * [String] deviceId:
  ///   The client deviceID
  ///
  /// * [int] accountId:
  ///   The logged in user ID
  ///
  /// * [int] applicationId:
  ///   This parameter is deprecated. This is deprecated, use appKey.
  ///
  /// * [String] appKey:
  ///   The application key unique to each application.
  ///
  /// * [String] appVersion:
  ///   The current build version of the application
  ///
  /// * [String] device:
  ///   The name of the device being used (iPhone5,1 , HTC Nexus One, x86_64, etc.)
  ///
  /// * [String] deviceType:
  ///   The type of device (Handheld or Desktop)
  ///
  /// * [String] deviceOS:
  ///   The operating system that the device is using (iPhone OS 5.0, Android OS 2.3.6, Windows 7 Service Pack 1, etc)
  ///
  /// * [String] model:
  ///   The model of the device (iPhone5,1 , Nexus One, etc.)
  ///
  /// * [double] latitude:
  ///   The current position of the user
  ///
  /// * [double] longitude:
  ///   The current position of the user
  ///
  /// * [int] customId:
  ///   A customId used to associate the usage record with some other record in the system
  ///
  /// * [String] customType:
  ///   The type of record the customId is recorded for
  ///
  /// * [int] achievementIncrement:
  ///   This parameter is deprecated. This is deprecated, use \"customValue\". Determines how many achievement points and/or ranking points the user gets if this analytic is associated with an achievement
  ///
  /// * [String] city:
  ///   The current city of the user
  ///
  /// * [String] state:
  ///   The current state of the user
  ///
  /// * [String] country:
  ///   The current country of the user
  ///
  /// * [String] zip:
  ///   The current zip of the user
  ///
  /// * [String] locationDescription:
  ///   The general description of the user's location
  ///
  /// * [int] clientTime:
  ///   Timestamp sent from device
  ///
  /// * [String] errorMessage:
  ///   This parameter is deprecated.
  ///
  /// * [String] ip:
  ///   the ip address of the client device
  ///
  /// * [String] userAgent:
  ///   this is a description of the client (might contain the device's OS, browser version etc - its a common term)
  ///
  /// * [bool] backgroundEvent:
  ///   This is deprecated.
  ///
  /// * [String] customMessage:
  ///   a custom message for the usage record
  ///
  /// * [String] customMessage2:
  ///   a custom message for the usage record
  ///
  /// * [double] customValue:
  ///   a custom value for the usage record
  ///
  /// * [double] customValue2:
  ///   a custom value for the usage record
  ///
  /// * [int] customLong:
  ///   a custom long value for the usage record
  ///
  /// * [int] customLong2:
  ///   a custom long value for the usage record
  Future<SirqulResponse?> usage(String tag, { String? deviceId, int? accountId, int? applicationId, String? appKey, String? appVersion, String? device, String? deviceType, String? deviceOS, String? model, double? latitude, double? longitude, int? customId, String? customType, int? achievementIncrement, String? city, String? state, String? country, String? zip, String? locationDescription, int? clientTime, String? errorMessage, String? ip, String? userAgent, bool? backgroundEvent, String? customMessage, String? customMessage2, double? customValue, double? customValue2, int? customLong, int? customLong2, }) async {
    final response = await usageWithHttpInfo(tag,  deviceId: deviceId, accountId: accountId, applicationId: applicationId, appKey: appKey, appVersion: appVersion, device: device, deviceType: deviceType, deviceOS: deviceOS, model: model, latitude: latitude, longitude: longitude, customId: customId, customType: customType, achievementIncrement: achievementIncrement, city: city, state: state, country: country, zip: zip, locationDescription: locationDescription, clientTime: clientTime, errorMessage: errorMessage, ip: ip, userAgent: userAgent, backgroundEvent: backgroundEvent, customMessage: customMessage, customMessage2: customMessage2, customValue: customValue, customValue2: customValue2, customLong: customLong, customLong2: customLong2, );
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

  /// Create Multiple Usage Records
  ///
  /// Sends multiple analytics. Can be used to send in the user's stored usage when they did not have internet access. Should not include more than 100 items per batch.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] appKey (required):
  ///   The application key unique to each application.
  ///
  /// * [String] device (required):
  ///   The name of the device being used (iPhone5,1 , HTC Nexus One, x86_64, etc.)
  ///
  /// * [String] data (required):
  ///   The analytic data AnalyticListResponse
  ///
  /// * [String] deviceId:
  ///   The unique id of the device making the request
  ///
  /// * [int] accountId:
  ///   The account ID of the logged in user making the request
  ///
  /// * [String] appVersion:
  ///   The current build version of the application
  ///
  /// * [String] deviceType:
  ///   The type of device (Handheld or Desktop)
  ///
  /// * [String] deviceOS:
  ///   The operating system that the device is using (iPhone OS 5.0, Android OS 2.3.6, Windows 7 Service Pack 1, etc.)
  ///
  /// * [String] model:
  ///   The model of the device (iPhone5,1 , Nexus One, etc.)
  ///
  /// * [bool] updateRanking:
  ///   Will create a leaderboard if one does not exist for the \"tag\" yet
  ///
  /// * [bool] returnSummaryResponse:
  ///   Returns a summary response of the achievements that have been completed due to the analytics
  Future<Response> usageBatchWithHttpInfo(String appKey, String device, String data, { String? deviceId, int? accountId, String? appVersion, String? deviceType, String? deviceOS, String? model, bool? updateRanking, bool? returnSummaryResponse, }) async {
    // ignore: prefer_const_declarations
    final path = r'/analytics/usage/batch';

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
      queryParams.addAll(_queryParams('', 'appKey', appKey));
    if (appVersion != null) {
      queryParams.addAll(_queryParams('', 'appVersion', appVersion));
    }
      queryParams.addAll(_queryParams('', 'device', device));
    if (deviceType != null) {
      queryParams.addAll(_queryParams('', 'deviceType', deviceType));
    }
    if (deviceOS != null) {
      queryParams.addAll(_queryParams('', 'deviceOS', deviceOS));
    }
    if (model != null) {
      queryParams.addAll(_queryParams('', 'model', model));
    }
      queryParams.addAll(_queryParams('', 'data', data));
    if (updateRanking != null) {
      queryParams.addAll(_queryParams('', 'updateRanking', updateRanking));
    }
    if (returnSummaryResponse != null) {
      queryParams.addAll(_queryParams('', 'returnSummaryResponse', returnSummaryResponse));
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

  /// Create Multiple Usage Records
  ///
  /// Sends multiple analytics. Can be used to send in the user's stored usage when they did not have internet access. Should not include more than 100 items per batch.
  ///
  /// Parameters:
  ///
  /// * [String] appKey (required):
  ///   The application key unique to each application.
  ///
  /// * [String] device (required):
  ///   The name of the device being used (iPhone5,1 , HTC Nexus One, x86_64, etc.)
  ///
  /// * [String] data (required):
  ///   The analytic data AnalyticListResponse
  ///
  /// * [String] deviceId:
  ///   The unique id of the device making the request
  ///
  /// * [int] accountId:
  ///   The account ID of the logged in user making the request
  ///
  /// * [String] appVersion:
  ///   The current build version of the application
  ///
  /// * [String] deviceType:
  ///   The type of device (Handheld or Desktop)
  ///
  /// * [String] deviceOS:
  ///   The operating system that the device is using (iPhone OS 5.0, Android OS 2.3.6, Windows 7 Service Pack 1, etc.)
  ///
  /// * [String] model:
  ///   The model of the device (iPhone5,1 , Nexus One, etc.)
  ///
  /// * [bool] updateRanking:
  ///   Will create a leaderboard if one does not exist for the \"tag\" yet
  ///
  /// * [bool] returnSummaryResponse:
  ///   Returns a summary response of the achievements that have been completed due to the analytics
  Future<SirqulResponse?> usageBatch(String appKey, String device, String data, { String? deviceId, int? accountId, String? appVersion, String? deviceType, String? deviceOS, String? model, bool? updateRanking, bool? returnSummaryResponse, }) async {
    final response = await usageBatchWithHttpInfo(appKey, device, data,  deviceId: deviceId, accountId: accountId, appVersion: appVersion, deviceType: deviceType, deviceOS: deviceOS, model: model, updateRanking: updateRanking, returnSummaryResponse: returnSummaryResponse, );
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
}
