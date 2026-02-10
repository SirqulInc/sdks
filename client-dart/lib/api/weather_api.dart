//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class WeatherApi {
  WeatherApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Search Weather
  ///
  /// Search the weather forcast for the next 5 days
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] regionId:
  ///   Region Id
  ///
  /// * [double] latitude:
  ///   Latitude
  ///
  /// * [double] longitude:
  ///   Longitude
  ///
  /// * [int] timezoneOffset:
  ///   Timezone Offset
  Future<Response> searchWeatherWithHttpInfo(num version, { int? regionId, double? latitude, double? longitude, int? timezoneOffset, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/weather/search'
      .replaceAll('{version}', version.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (regionId != null) {
      queryParams.addAll(_queryParams('', 'regionId', regionId));
    }
    if (latitude != null) {
      queryParams.addAll(_queryParams('', 'latitude', latitude));
    }
    if (longitude != null) {
      queryParams.addAll(_queryParams('', 'longitude', longitude));
    }
    if (timezoneOffset != null) {
      queryParams.addAll(_queryParams('', 'timezoneOffset', timezoneOffset));
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

  /// Search Weather
  ///
  /// Search the weather forcast for the next 5 days
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] regionId:
  ///   Region Id
  ///
  /// * [double] latitude:
  ///   Latitude
  ///
  /// * [double] longitude:
  ///   Longitude
  ///
  /// * [int] timezoneOffset:
  ///   Timezone Offset
  Future<WeatherResponse?> searchWeather(num version, { int? regionId, double? latitude, double? longitude, int? timezoneOffset, }) async {
    final response = await searchWeatherWithHttpInfo(version,  regionId: regionId, latitude: latitude, longitude: longitude, timezoneOffset: timezoneOffset, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'WeatherResponse',) as WeatherResponse;
    
    }
    return null;
  }
}
