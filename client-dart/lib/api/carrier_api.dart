//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class CarrierApi {
  CarrierApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Search Carriers
  ///
  /// Search on supported mobile telephone carriers that can be used to send SMS notifications via email.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [String] keyword:
  ///   The keyword to search on
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
  /// * [bool] activeOnly:
  ///   Determines whether to return inactive results
  Future<Response> searchCarriersWithHttpInfo(num version, { String? keyword, bool? descending, int? start, int? limit, bool? activeOnly, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/carrier/search'
      .replaceAll('{version}', version.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (keyword != null) {
      queryParams.addAll(_queryParams('', 'keyword', keyword));
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

  /// Search Carriers
  ///
  /// Search on supported mobile telephone carriers that can be used to send SMS notifications via email.
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [String] keyword:
  ///   The keyword to search on
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
  /// * [bool] activeOnly:
  ///   Determines whether to return inactive results
  Future<List<CellCarrierResponse>?> searchCarriers(num version, { String? keyword, bool? descending, int? start, int? limit, bool? activeOnly, }) async {
    final response = await searchCarriersWithHttpInfo(version,  keyword: keyword, descending: descending, start: start, limit: limit, activeOnly: activeOnly, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<CellCarrierResponse>') as List)
        .cast<CellCarrierResponse>()
        .toList(growable: false);

    }
    return null;
  }
}
