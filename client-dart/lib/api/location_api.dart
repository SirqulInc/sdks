//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class LocationApi {
  LocationApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Create Trilateration Data with File
  ///
  /// Creates trilateration samples for a source device (i.e. a router).
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] udid (required):
  ///   The unique identifier of the source device
  ///
  /// * [int] sourceTime:
  ///   The current timestamp of the source device
  ///
  /// * [int] minimumSampleSize:
  ///   the minimum number of Edysen devices that must be used to be able to trilaterate a device
  ///
  /// * [String] data:
  ///   The json formated sample data:  ```json {    \"count\": 2,   \"timespan\": 10,    \"samples\": [     {       \"deviceId\": \"device1\",       \"randomizedId\": true,        \"deviceSignature\": \"probe:xyz...\",        \"alternativeId\":\"adc123\",        \"rssi\": [-63, -75]     },      {       \"deviceId\": \"device2\",       \"randomizedId\": true,        \"deviceSignature\": \"probe:xyz...\",        \"alternativeId\": \"adc123\",        \"rssi\": [-83, -79]     }   ] } ``` 
  ///
  /// * [MultipartFile] dataFile:
  ///   Binary file containing data (multipart upload)
  Future<Response> cacheTrilaterationDataWithHttpInfo(String udid, { int? sourceTime, int? minimumSampleSize, String? data, MultipartFile? dataFile, }) async {
    // ignore: prefer_const_declarations
    final path = r'/location/trilaterate/cache';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'udid', udid));
    if (sourceTime != null) {
      queryParams.addAll(_queryParams('', 'sourceTime', sourceTime));
    }
    if (minimumSampleSize != null) {
      queryParams.addAll(_queryParams('', 'minimumSampleSize', minimumSampleSize));
    }
    if (data != null) {
      queryParams.addAll(_queryParams('', 'data', data));
    }
    if (dataFile != null) {
      queryParams.addAll(_queryParams('', 'dataFile', dataFile));
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

  /// Create Trilateration Data with File
  ///
  /// Creates trilateration samples for a source device (i.e. a router).
  ///
  /// Parameters:
  ///
  /// * [String] udid (required):
  ///   The unique identifier of the source device
  ///
  /// * [int] sourceTime:
  ///   The current timestamp of the source device
  ///
  /// * [int] minimumSampleSize:
  ///   the minimum number of Edysen devices that must be used to be able to trilaterate a device
  ///
  /// * [String] data:
  ///   The json formated sample data:  ```json {    \"count\": 2,   \"timespan\": 10,    \"samples\": [     {       \"deviceId\": \"device1\",       \"randomizedId\": true,        \"deviceSignature\": \"probe:xyz...\",        \"alternativeId\":\"adc123\",        \"rssi\": [-63, -75]     },      {       \"deviceId\": \"device2\",       \"randomizedId\": true,        \"deviceSignature\": \"probe:xyz...\",        \"alternativeId\": \"adc123\",        \"rssi\": [-83, -79]     }   ] } ``` 
  ///
  /// * [MultipartFile] dataFile:
  ///   Binary file containing data (multipart upload)
  Future<SirqulResponse?> cacheTrilaterationData(String udid, { int? sourceTime, int? minimumSampleSize, String? data, MultipartFile? dataFile, }) async {
    final response = await cacheTrilaterationDataWithHttpInfo(udid,  sourceTime: sourceTime, minimumSampleSize: minimumSampleSize, data: data, dataFile: dataFile, );
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

  /// Create Trilateration Data with Rest
  ///
  /// Creates trilateration samples for a source device (i.e. a router).
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [TrilatCacheRequest] body:
  Future<Response> cacheTrilaterationDataGzipWithHttpInfo({ TrilatCacheRequest? body, }) async {
    // ignore: prefer_const_declarations
    final path = r'/location/trilaterate/cache/submit';

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

  /// Create Trilateration Data with Rest
  ///
  /// Creates trilateration samples for a source device (i.e. a router).
  ///
  /// Parameters:
  ///
  /// * [TrilatCacheRequest] body:
  Future<SirqulResponse?> cacheTrilaterationDataGzip({ TrilatCacheRequest? body, }) async {
    final response = await cacheTrilaterationDataGzipWithHttpInfo( body: body, );
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

  /// Get Location by IP
  ///
  /// Get location information based on an IP address.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] ip:
  ///   the ip address of the client device
  Future<Response> getLocationByIpWithHttpInfo({ String? ip, }) async {
    // ignore: prefer_const_declarations
    final path = r'/location/ip';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (ip != null) {
      queryParams.addAll(_queryParams('', 'ip', ip));
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

  /// Get Location by IP
  ///
  /// Get location information based on an IP address.
  ///
  /// Parameters:
  ///
  /// * [String] ip:
  ///   the ip address of the client device
  Future<CoordsResponse?> getLocationByIp({ String? ip, }) async {
    final response = await getLocationByIpWithHttpInfo( ip: ip, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CoordsResponse',) as CoordsResponse;
    
    }
    return null;
  }

  /// Get Location by Trilateration
  ///
  /// Send in device data and calculate a position based on signal strengths.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] accountId:
  ///   The account making the request, if provided the last know location will be updated
  ///
  /// * [double] latitude:
  ///   The known GPS latitude to compare to the calculated version
  ///
  /// * [double] longitude:
  ///   The known GPS longitude to compare to the calculated version
  ///
  /// * [String] data:
  ///   The json formated sample data:  ```json {    \"count\": 2,   \"timespan\": 10,    \"samples\": [     {       \"deviceId\": \"device1\",       \"rssi\": [-63, -75]     },      {       \"deviceId\": \"device2\",       \"rssi\": [-83, -79]     }   ] } ``` 
  ///
  /// * [String] responseFilters:
  ///   Optional response filters (not used currently)
  Future<Response> getLocationByTrilaterationWithHttpInfo({ int? accountId, double? latitude, double? longitude, String? data, String? responseFilters, }) async {
    // ignore: prefer_const_declarations
    final path = r'/account/location/trilaterate';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (accountId != null) {
      queryParams.addAll(_queryParams('', 'accountId', accountId));
    }
    if (latitude != null) {
      queryParams.addAll(_queryParams('', 'latitude', latitude));
    }
    if (longitude != null) {
      queryParams.addAll(_queryParams('', 'longitude', longitude));
    }
    if (data != null) {
      queryParams.addAll(_queryParams('', 'data', data));
    }
    if (responseFilters != null) {
      queryParams.addAll(_queryParams('', 'responseFilters', responseFilters));
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

  /// Get Location by Trilateration
  ///
  /// Send in device data and calculate a position based on signal strengths.
  ///
  /// Parameters:
  ///
  /// * [int] accountId:
  ///   The account making the request, if provided the last know location will be updated
  ///
  /// * [double] latitude:
  ///   The known GPS latitude to compare to the calculated version
  ///
  /// * [double] longitude:
  ///   The known GPS longitude to compare to the calculated version
  ///
  /// * [String] data:
  ///   The json formated sample data:  ```json {    \"count\": 2,   \"timespan\": 10,    \"samples\": [     {       \"deviceId\": \"device1\",       \"rssi\": [-63, -75]     },      {       \"deviceId\": \"device2\",       \"rssi\": [-83, -79]     }   ] } ``` 
  ///
  /// * [String] responseFilters:
  ///   Optional response filters (not used currently)
  Future<GeoPointResponse?> getLocationByTrilateration({ int? accountId, double? latitude, double? longitude, String? data, String? responseFilters, }) async {
    final response = await getLocationByTrilaterationWithHttpInfo( accountId: accountId, latitude: latitude, longitude: longitude, data: data, responseFilters: responseFilters, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GeoPointResponse',) as GeoPointResponse;
    
    }
    return null;
  }

  /// Search Regions or Postal Codes
  ///
  /// Searches geographic locations by proximity via address or keyword.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] deviceId:
  ///   the device id
  ///
  /// * [int] accountId:
  ///   the account id
  ///
  /// * [double] currentlatitude:
  ///   This parameter is deprecated.
  ///
  /// * [double] currentlongitude:
  ///   This parameter is deprecated.
  ///
  /// * [double] currentLatitude:
  ///   the current latitude of the user
  ///
  /// * [double] currentLongitude:
  ///   the current longitude of the user
  ///
  /// * [String] query:
  ///   the query results by keyword or address
  ///
  /// * [String] zipcode:
  ///   This parameter is deprecated.
  ///
  /// * [String] zipCode:
  ///   the zip code to filter results
  ///
  /// * [double] selectedMaplatitude:
  ///   This parameter is deprecated.
  ///
  /// * [double] selectedMaplongitude:
  ///   This parameter is deprecated.
  ///
  /// * [double] selectedMapLatitude:
  ///   the latitude of where the search should originate from
  ///
  /// * [double] selectedMapLongitude:
  ///   the longitude of where the search should originate from
  ///
  /// * [double] searchRange:
  ///   the search range of the search in miles
  ///
  /// * [bool] useGeocode:
  ///   determines whether to allow searches via address
  ///
  /// * [int] i:
  ///   This parameter is deprecated.
  ///
  /// * [int] start:
  ///   the start index for pagination
  ///
  /// * [int] l:
  ///   This parameter is deprecated.
  ///
  /// * [int] limit:
  ///   the limit for pagination
  Future<Response> getLocationsWithHttpInfo({ String? deviceId, int? accountId, double? currentlatitude, double? currentlongitude, double? currentLatitude, double? currentLongitude, String? query, String? zipcode, String? zipCode, double? selectedMaplatitude, double? selectedMaplongitude, double? selectedMapLatitude, double? selectedMapLongitude, double? searchRange, bool? useGeocode, int? i, int? start, int? l, int? limit, }) async {
    // ignore: prefer_const_declarations
    final path = r'/location/search';

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
    if (currentlatitude != null) {
      queryParams.addAll(_queryParams('', 'currentlatitude', currentlatitude));
    }
    if (currentlongitude != null) {
      queryParams.addAll(_queryParams('', 'currentlongitude', currentlongitude));
    }
    if (currentLatitude != null) {
      queryParams.addAll(_queryParams('', 'currentLatitude', currentLatitude));
    }
    if (currentLongitude != null) {
      queryParams.addAll(_queryParams('', 'currentLongitude', currentLongitude));
    }
    if (query != null) {
      queryParams.addAll(_queryParams('', 'query', query));
    }
    if (zipcode != null) {
      queryParams.addAll(_queryParams('', 'zipcode', zipcode));
    }
    if (zipCode != null) {
      queryParams.addAll(_queryParams('', 'zipCode', zipCode));
    }
    if (selectedMaplatitude != null) {
      queryParams.addAll(_queryParams('', 'selectedMaplatitude', selectedMaplatitude));
    }
    if (selectedMaplongitude != null) {
      queryParams.addAll(_queryParams('', 'selectedMaplongitude', selectedMaplongitude));
    }
    if (selectedMapLatitude != null) {
      queryParams.addAll(_queryParams('', 'selectedMapLatitude', selectedMapLatitude));
    }
    if (selectedMapLongitude != null) {
      queryParams.addAll(_queryParams('', 'selectedMapLongitude', selectedMapLongitude));
    }
    if (searchRange != null) {
      queryParams.addAll(_queryParams('', 'searchRange', searchRange));
    }
    if (useGeocode != null) {
      queryParams.addAll(_queryParams('', 'useGeocode', useGeocode));
    }
    if (i != null) {
      queryParams.addAll(_queryParams('', '_i', i));
    }
    if (start != null) {
      queryParams.addAll(_queryParams('', 'start', start));
    }
    if (l != null) {
      queryParams.addAll(_queryParams('', '_l', l));
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

  /// Search Regions or Postal Codes
  ///
  /// Searches geographic locations by proximity via address or keyword.
  ///
  /// Parameters:
  ///
  /// * [String] deviceId:
  ///   the device id
  ///
  /// * [int] accountId:
  ///   the account id
  ///
  /// * [double] currentlatitude:
  ///   This parameter is deprecated.
  ///
  /// * [double] currentlongitude:
  ///   This parameter is deprecated.
  ///
  /// * [double] currentLatitude:
  ///   the current latitude of the user
  ///
  /// * [double] currentLongitude:
  ///   the current longitude of the user
  ///
  /// * [String] query:
  ///   the query results by keyword or address
  ///
  /// * [String] zipcode:
  ///   This parameter is deprecated.
  ///
  /// * [String] zipCode:
  ///   the zip code to filter results
  ///
  /// * [double] selectedMaplatitude:
  ///   This parameter is deprecated.
  ///
  /// * [double] selectedMaplongitude:
  ///   This parameter is deprecated.
  ///
  /// * [double] selectedMapLatitude:
  ///   the latitude of where the search should originate from
  ///
  /// * [double] selectedMapLongitude:
  ///   the longitude of where the search should originate from
  ///
  /// * [double] searchRange:
  ///   the search range of the search in miles
  ///
  /// * [bool] useGeocode:
  ///   determines whether to allow searches via address
  ///
  /// * [int] i:
  ///   This parameter is deprecated.
  ///
  /// * [int] start:
  ///   the start index for pagination
  ///
  /// * [int] l:
  ///   This parameter is deprecated.
  ///
  /// * [int] limit:
  ///   the limit for pagination
  Future<LocationSearchResponse?> getLocations({ String? deviceId, int? accountId, double? currentlatitude, double? currentlongitude, double? currentLatitude, double? currentLongitude, String? query, String? zipcode, String? zipCode, double? selectedMaplatitude, double? selectedMaplongitude, double? selectedMapLatitude, double? selectedMapLongitude, double? searchRange, bool? useGeocode, int? i, int? start, int? l, int? limit, }) async {
    final response = await getLocationsWithHttpInfo( deviceId: deviceId, accountId: accountId, currentlatitude: currentlatitude, currentlongitude: currentlongitude, currentLatitude: currentLatitude, currentLongitude: currentLongitude, query: query, zipcode: zipcode, zipCode: zipCode, selectedMaplatitude: selectedMaplatitude, selectedMaplongitude: selectedMaplongitude, selectedMapLatitude: selectedMapLatitude, selectedMapLongitude: selectedMapLongitude, searchRange: searchRange, useGeocode: useGeocode, i: i, start: start, l: l, limit: limit, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'LocationSearchResponse',) as LocationSearchResponse;
    
    }
    return null;
  }
}
