//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class PathingApi {
  PathingApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Calculate Path
  ///
  /// Calculates the shortest path from point to point on a grid
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] data (required):
  ///   the data to with start, end point and exclusion points
  ///
  /// * [String] units (required):
  ///   the system of measurement for directions: {METRIC, IMPERIAL}
  ///
  /// * [bool] reducePath (required):
  ///   determines whether to reduce the path to go in diagonal lines
  ///
  /// * [bool] directions (required):
  ///   determines whether to return text directions
  Future<Response> computePathWithHttpInfo(String data, String units, bool reducePath, bool directions,) async {
    // ignore: prefer_const_declarations
    final path = r'/pathing/compute';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'data', data));
      queryParams.addAll(_queryParams('', 'units', units));
      queryParams.addAll(_queryParams('', 'reducePath', reducePath));
      queryParams.addAll(_queryParams('', 'directions', directions));

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

  /// Calculate Path
  ///
  /// Calculates the shortest path from point to point on a grid
  ///
  /// Parameters:
  ///
  /// * [String] data (required):
  ///   the data to with start, end point and exclusion points
  ///
  /// * [String] units (required):
  ///   the system of measurement for directions: {METRIC, IMPERIAL}
  ///
  /// * [bool] reducePath (required):
  ///   determines whether to reduce the path to go in diagonal lines
  ///
  /// * [bool] directions (required):
  ///   determines whether to return text directions
  Future<PathingResponse?> computePath(String data, String units, bool reducePath, bool directions,) async {
    final response = await computePathWithHttpInfo(data, units, reducePath, directions,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PathingResponse',) as PathingResponse;
    
    }
    return null;
  }
}
