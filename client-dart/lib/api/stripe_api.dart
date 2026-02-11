//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class StripeApi {
  StripeApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Create Stripe Checkout Session
  ///
  /// Create a Stripe checkout session
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] appKey (required):
  ///   Sirqul Application Key
  ///
  /// * [String] stripeParameters (required):
  ///   Stripe Parameters
  Future<Response> createStripeCheckoutSessionWithHttpInfo(String appKey, String stripeParameters,) async {
    // ignore: prefer_const_declarations
    final path = r'/stripe/checkout/session/create';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'appKey', appKey));
      queryParams.addAll(_queryParams('', 'stripeParameters', stripeParameters));

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

  /// Create Stripe Checkout Session
  ///
  /// Create a Stripe checkout session
  ///
  /// Parameters:
  ///
  /// * [String] appKey (required):
  ///   Sirqul Application Key
  ///
  /// * [String] stripeParameters (required):
  ///   Stripe Parameters
  Future<SirqulResponse?> createStripeCheckoutSession(String appKey, String stripeParameters,) async {
    final response = await createStripeCheckoutSessionWithHttpInfo(appKey, stripeParameters,);
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
