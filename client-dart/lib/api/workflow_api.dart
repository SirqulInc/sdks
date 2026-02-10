//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class WorkflowApi {
  WorkflowApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Run Workflow
  ///
  /// Runs a published executable workflow
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] accountId (required):
  ///   the account ID of the user
  ///
  /// * [int] workflowId (required):
  ///   the workflow to run
  ///
  /// * [int] skuId:
  ///   this runs a particular sku on the workflow
  ///
  /// * [int] versionCode:
  ///   this runs a particular sku version on the workflow
  ///
  /// * [String] parameters:
  ///   Override parameters in JSON format. Example: ```json {   \"arguments_81\": { \"filter\": \"PUBLIC\" },   \"arguments_87\": { \"tag\": \"custom_tag\" } } ``` 
  Future<Response> runWorkflowWithHttpInfo(num version, int accountId, int workflowId, { int? skuId, int? versionCode, String? parameters, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/workflow/run'
      .replaceAll('{version}', version.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'accountId', accountId));
      queryParams.addAll(_queryParams('', 'workflowId', workflowId));
    if (skuId != null) {
      queryParams.addAll(_queryParams('', 'skuId', skuId));
    }
    if (versionCode != null) {
      queryParams.addAll(_queryParams('', 'versionCode', versionCode));
    }
    if (parameters != null) {
      queryParams.addAll(_queryParams('', 'parameters', parameters));
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

  /// Run Workflow
  ///
  /// Runs a published executable workflow
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] accountId (required):
  ///   the account ID of the user
  ///
  /// * [int] workflowId (required):
  ///   the workflow to run
  ///
  /// * [int] skuId:
  ///   this runs a particular sku on the workflow
  ///
  /// * [int] versionCode:
  ///   this runs a particular sku version on the workflow
  ///
  /// * [String] parameters:
  ///   Override parameters in JSON format. Example: ```json {   \"arguments_81\": { \"filter\": \"PUBLIC\" },   \"arguments_87\": { \"tag\": \"custom_tag\" } } ``` 
  Future<SirqulResponse?> runWorkflow(num version, int accountId, int workflowId, { int? skuId, int? versionCode, String? parameters, }) async {
    final response = await runWorkflowWithHttpInfo(version, accountId, workflowId,  skuId: skuId, versionCode: versionCode, parameters: parameters, );
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
