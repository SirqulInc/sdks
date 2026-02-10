//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class TwilioApi {
  TwilioApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Buy Offer by SMS
  ///
  /// Recieve an SMS payload from Twillio to purchase an offer.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [String] appKey (required):
  ///   the application key
  ///
  /// * [String] body (required):
  ///   the message of the text
  ///
  /// * [String] from (required):
  ///   the sender of the sms
  ///
  /// * [String] currencyType (required):
  ///   the type of currency
  Future<Response> smsBuyOfferWithHttpInfo(num version, String appKey, String body, String from, String currencyType,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/sms/buyoffer/{appKey}'
      .replaceAll('{version}', version.toString())
      .replaceAll('{appKey}', appKey);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'Body', body));
      queryParams.addAll(_queryParams('', 'From', from));
      queryParams.addAll(_queryParams('', 'currencyType', currencyType));

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

  /// Buy Offer by SMS
  ///
  /// Recieve an SMS payload from Twillio to purchase an offer.
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [String] appKey (required):
  ///   the application key
  ///
  /// * [String] body (required):
  ///   the message of the text
  ///
  /// * [String] from (required):
  ///   the sender of the sms
  ///
  /// * [String] currencyType (required):
  ///   the type of currency
  Future<TwiMLResponse?> smsBuyOffer(num version, String appKey, String body, String from, String currencyType,) async {
    final response = await smsBuyOfferWithHttpInfo(version, appKey, body, from, currencyType,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'TwiMLResponse',) as TwiMLResponse;
    
    }
    return null;
  }
}
