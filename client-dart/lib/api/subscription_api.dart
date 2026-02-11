//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class SubscriptionApi {
  SubscriptionApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Create Subscription
  ///
  /// Create a subscription for a billable entity.  Provide a planId, if not provided then the base plan will be assigned.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] accountId (required):
  ///   The account used to perform the create, must be the responsible manager
  ///
  /// * [int] planId:
  ///   The plan to subscribe to, if null use default plan
  ///
  /// * [String] promoCode:
  ///   Set a promo code for a discount.
  Future<Response> createSubscriptionWithHttpInfo(int accountId, { int? planId, String? promoCode, }) async {
    // ignore: prefer_const_declarations
    final path = r'/subscription/create';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'accountId', accountId));
    if (planId != null) {
      queryParams.addAll(_queryParams('', 'planId', planId));
    }
    if (promoCode != null) {
      queryParams.addAll(_queryParams('', 'promoCode', promoCode));
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

  /// Create Subscription
  ///
  /// Create a subscription for a billable entity.  Provide a planId, if not provided then the base plan will be assigned.
  ///
  /// Parameters:
  ///
  /// * [int] accountId (required):
  ///   The account used to perform the create, must be the responsible manager
  ///
  /// * [int] planId:
  ///   The plan to subscribe to, if null use default plan
  ///
  /// * [String] promoCode:
  ///   Set a promo code for a discount.
  Future<SubscriptionResponse?> createSubscription(int accountId, { int? planId, String? promoCode, }) async {
    final response = await createSubscriptionWithHttpInfo(accountId,  planId: planId, promoCode: promoCode, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'SubscriptionResponse',) as SubscriptionResponse;
    
    }
    return null;
  }

  /// Delete Subscription
  ///
  /// Suspend the current subscription for the billable entity managed by the account.  The account must be the responsible manager to perform this action
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] accountId (required):
  ///   The account used to perform the delete, must be the responsible manager
  Future<Response> deleteSubscriptionWithHttpInfo(int accountId,) async {
    // ignore: prefer_const_declarations
    final path = r'/subscription/delete';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'accountId', accountId));

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

  /// Delete Subscription
  ///
  /// Suspend the current subscription for the billable entity managed by the account.  The account must be the responsible manager to perform this action
  ///
  /// Parameters:
  ///
  /// * [int] accountId (required):
  ///   The account used to perform the delete, must be the responsible manager
  Future<SirqulResponse?> deleteSubscription(int accountId,) async {
    final response = await deleteSubscriptionWithHttpInfo(accountId,);
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

  /// Get Subscription
  ///
  /// Use the accountId to determine the associated BillableEntity.  Then get the subscription.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] accountId (required):
  ///   The account used to perform the lookup
  Future<Response> getSubscriptionWithHttpInfo(int accountId,) async {
    // ignore: prefer_const_declarations
    final path = r'/subscription/get';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

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

  /// Get Subscription
  ///
  /// Use the accountId to determine the associated BillableEntity.  Then get the subscription.
  ///
  /// Parameters:
  ///
  /// * [int] accountId (required):
  ///   The account used to perform the lookup
  Future<SubscriptionResponse?> getSubscription(int accountId,) async {
    final response = await getSubscriptionWithHttpInfo(accountId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'SubscriptionResponse',) as SubscriptionResponse;
    
    }
    return null;
  }

  /// Get Subscription Plan
  ///
  /// Get the matched subscription plan
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] planId (required):
  ///   The ID of the plan to get
  Future<Response> getSubscriptionPlanWithHttpInfo(int planId,) async {
    // ignore: prefer_const_declarations
    final path = r'/subscription/plan/get';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'planId', planId));

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

  /// Get Subscription Plan
  ///
  /// Get the matched subscription plan
  ///
  /// Parameters:
  ///
  /// * [int] planId (required):
  ///   The ID of the plan to get
  Future<SubscriptionPlanResponse?> getSubscriptionPlan(int planId,) async {
    final response = await getSubscriptionPlanWithHttpInfo(planId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'SubscriptionPlanResponse',) as SubscriptionPlanResponse;
    
    }
    return null;
  }

  /// List Subscription Plans
  ///
  /// Get the matched subscription plan
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [bool] visible:
  ///   Include visible only (true), hidden only (false), or all (null)
  ///
  /// * [String] role:
  ///   The role the plan is targeted for, values are: DEVELOPER, RETAILER, ADVERTISER
  Future<Response> getSubscriptionPlansWithHttpInfo({ bool? visible, String? role, }) async {
    // ignore: prefer_const_declarations
    final path = r'/subscription/plan/list';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (visible != null) {
      queryParams.addAll(_queryParams('', 'visible', visible));
    }
    if (role != null) {
      queryParams.addAll(_queryParams('', 'role', role));
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

  /// List Subscription Plans
  ///
  /// Get the matched subscription plan
  ///
  /// Parameters:
  ///
  /// * [bool] visible:
  ///   Include visible only (true), hidden only (false), or all (null)
  ///
  /// * [String] role:
  ///   The role the plan is targeted for, values are: DEVELOPER, RETAILER, ADVERTISER
  Future<List<SubscriptionPlanResponse>?> getSubscriptionPlans({ bool? visible, String? role, }) async {
    final response = await getSubscriptionPlansWithHttpInfo( visible: visible, role: role, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<SubscriptionPlanResponse>') as List)
        .cast<SubscriptionPlanResponse>()
        .toList(growable: false);

    }
    return null;
  }

  /// Get Subscription Usage
  ///
  /// Use the accountId to determine the associated BillableEntity.  Then get the application usage.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] accountId (required):
  ///   The account used to perform the lookup
  ///
  /// * [int] applicationId:
  ///   Get for just 1 application instead of the BillableEntity
  ///
  /// * [int] start:
  ///   The start time frame
  ///
  /// * [int] end:
  ///   The end time frame
  Future<Response> getSubscriptionUsageWithHttpInfo(int accountId, { int? applicationId, int? start, int? end, }) async {
    // ignore: prefer_const_declarations
    final path = r'/subscription/usage/get';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'accountId', accountId));
    if (applicationId != null) {
      queryParams.addAll(_queryParams('', 'applicationId', applicationId));
    }
    if (start != null) {
      queryParams.addAll(_queryParams('', 'start', start));
    }
    if (end != null) {
      queryParams.addAll(_queryParams('', 'end', end));
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

  /// Get Subscription Usage
  ///
  /// Use the accountId to determine the associated BillableEntity.  Then get the application usage.
  ///
  /// Parameters:
  ///
  /// * [int] accountId (required):
  ///   The account used to perform the lookup
  ///
  /// * [int] applicationId:
  ///   Get for just 1 application instead of the BillableEntity
  ///
  /// * [int] start:
  ///   The start time frame
  ///
  /// * [int] end:
  ///   The end time frame
  Future<ApplicationUsageResponse?> getSubscriptionUsage(int accountId, { int? applicationId, int? start, int? end, }) async {
    final response = await getSubscriptionUsageWithHttpInfo(accountId,  applicationId: applicationId, start: start, end: end, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ApplicationUsageResponse',) as ApplicationUsageResponse;
    
    }
    return null;
  }

  /// Update Subscription
  ///
  /// Updates the subscription for the billable entity for an account
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] accountId (required):
  ///   The account used to perform the update, must be the responsible manager
  ///
  /// * [int] planId:
  ///   The plan to subscribe to
  ///
  /// * [String] promoCode:
  ///   Set a promo code for a discount.
  ///
  /// * [bool] active:
  ///   Set active status
  Future<Response> updateSubscriptionWithHttpInfo(int accountId, { int? planId, String? promoCode, bool? active, }) async {
    // ignore: prefer_const_declarations
    final path = r'/subscription/update';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'accountId', accountId));
    if (planId != null) {
      queryParams.addAll(_queryParams('', 'planId', planId));
    }
    if (promoCode != null) {
      queryParams.addAll(_queryParams('', 'promoCode', promoCode));
    }
    if (active != null) {
      queryParams.addAll(_queryParams('', 'active', active));
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

  /// Update Subscription
  ///
  /// Updates the subscription for the billable entity for an account
  ///
  /// Parameters:
  ///
  /// * [int] accountId (required):
  ///   The account used to perform the update, must be the responsible manager
  ///
  /// * [int] planId:
  ///   The plan to subscribe to
  ///
  /// * [String] promoCode:
  ///   Set a promo code for a discount.
  ///
  /// * [bool] active:
  ///   Set active status
  Future<SubscriptionResponse?> updateSubscription(int accountId, { int? planId, String? promoCode, bool? active, }) async {
    final response = await updateSubscriptionWithHttpInfo(accountId,  planId: planId, promoCode: promoCode, active: active, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'SubscriptionResponse',) as SubscriptionResponse;
    
    }
    return null;
  }
}
