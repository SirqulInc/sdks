//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class RetailerV2Api {
  RetailerV2Api([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Get Retailer
  ///
  /// Gets a retailer. Only the owner and the employees of a retailer have access to view its information.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] retailerId (required):
  ///   the id of the retailer
  ///
  /// * [bool] activeOnly (required):
  ///   whether to return results that are active only or all
  ///
  /// * [String] keyword:
  ///   the keyword to search on to get retailer
  ///
  /// * [String] sortField:
  ///   the field to sort on
  ///
  /// * [int] start:
  ///   the start of the index and/or pagination
  ///
  /// * [int] limit:
  ///   the limit of the index and/or pagination
  Future<Response> getRetaokilerWithHttpInfo(int retailerId, bool activeOnly, { String? keyword, String? sortField, int? start, int? limit, }) async {
    // ignore: prefer_const_declarations
    final path = r'/retailer';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (keyword != null) {
      queryParams.addAll(_queryParams('', 'keyword', keyword));
    }
    if (sortField != null) {
      queryParams.addAll(_queryParams('', 'sortField', sortField));
    }
    if (start != null) {
      queryParams.addAll(_queryParams('', 'start', start));
    }
    if (limit != null) {
      queryParams.addAll(_queryParams('', 'limit', limit));
    }
      queryParams.addAll(_queryParams('', 'retailerId', retailerId));
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

  /// Get Retailer
  ///
  /// Gets a retailer. Only the owner and the employees of a retailer have access to view its information.
  ///
  /// Parameters:
  ///
  /// * [int] retailerId (required):
  ///   the id of the retailer
  ///
  /// * [bool] activeOnly (required):
  ///   whether to return results that are active only or all
  ///
  /// * [String] keyword:
  ///   the keyword to search on to get retailer
  ///
  /// * [String] sortField:
  ///   the field to sort on
  ///
  /// * [int] start:
  ///   the start of the index and/or pagination
  ///
  /// * [int] limit:
  ///   the limit of the index and/or pagination
  Future<SirqulResponse?> getRetaokiler(int retailerId, bool activeOnly, { String? keyword, String? sortField, int? start, int? limit, }) async {
    final response = await getRetaokilerWithHttpInfo(retailerId, activeOnly,  keyword: keyword, sortField: sortField, start: start, limit: limit, );
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
