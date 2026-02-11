//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class ApplicationConfigApi {
  ApplicationConfigApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Create AppConfig
  ///
  /// Creates a new application configuration. If the configVersion provided already exists for the given app, an invalid response is returned and the application configuration won't be created.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] accountId (required):
  ///   The account ID of the user
  ///
  /// * [String] appKey (required):
  ///   The application key that the newly created applicationConfig will be associated to
  ///
  /// * [String] configVersion (required):
  ///   The application configuration, has to be unique within the application
  ///
  /// * [int] assetId (required):
  ///   The json assetId that stores the configuration detail.
  ///
  /// * [int] retailerId:
  ///   The retailer id for retailer specific configurations
  ///
  /// * [int] retailerLocationId:
  ///   The retailer location id for retailer location specific configurations
  ///
  /// * [String] udid:
  ///   The device udid for device specific configurations
  Future<Response> createApplicationConfigWithHttpInfo(int accountId, String appKey, String configVersion, int assetId, { int? retailerId, int? retailerLocationId, String? udid, }) async {
    // ignore: prefer_const_declarations
    final path = r'/appconfig/create';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'accountId', accountId));
      queryParams.addAll(_queryParams('', 'appKey', appKey));
      queryParams.addAll(_queryParams('', 'configVersion', configVersion));
      queryParams.addAll(_queryParams('', 'assetId', assetId));
    if (retailerId != null) {
      queryParams.addAll(_queryParams('', 'retailerId', retailerId));
    }
    if (retailerLocationId != null) {
      queryParams.addAll(_queryParams('', 'retailerLocationId', retailerLocationId));
    }
    if (udid != null) {
      queryParams.addAll(_queryParams('', 'udid', udid));
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

  /// Create AppConfig
  ///
  /// Creates a new application configuration. If the configVersion provided already exists for the given app, an invalid response is returned and the application configuration won't be created.
  ///
  /// Parameters:
  ///
  /// * [int] accountId (required):
  ///   The account ID of the user
  ///
  /// * [String] appKey (required):
  ///   The application key that the newly created applicationConfig will be associated to
  ///
  /// * [String] configVersion (required):
  ///   The application configuration, has to be unique within the application
  ///
  /// * [int] assetId (required):
  ///   The json assetId that stores the configuration detail.
  ///
  /// * [int] retailerId:
  ///   The retailer id for retailer specific configurations
  ///
  /// * [int] retailerLocationId:
  ///   The retailer location id for retailer location specific configurations
  ///
  /// * [String] udid:
  ///   The device udid for device specific configurations
  Future<ApplicationConfigResponse?> createApplicationConfig(int accountId, String appKey, String configVersion, int assetId, { int? retailerId, int? retailerLocationId, String? udid, }) async {
    final response = await createApplicationConfigWithHttpInfo(accountId, appKey, configVersion, assetId,  retailerId: retailerId, retailerLocationId: retailerLocationId, udid: udid, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ApplicationConfigResponse',) as ApplicationConfigResponse;
    
    }
    return null;
  }

  /// Delete AppConfig
  ///
  /// Mark the application configuration for deletion.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] accountId (required):
  ///   The account ID of the user
  ///
  /// * [int] configId (required):
  ///   The config ID of the application configuration to delete
  Future<Response> deleteApplicationConfigWithHttpInfo(int accountId, int configId,) async {
    // ignore: prefer_const_declarations
    final path = r'/appconfig/delete';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'accountId', accountId));
      queryParams.addAll(_queryParams('', 'configId', configId));

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

  /// Delete AppConfig
  ///
  /// Mark the application configuration for deletion.
  ///
  /// Parameters:
  ///
  /// * [int] accountId (required):
  ///   The account ID of the user
  ///
  /// * [int] configId (required):
  ///   The config ID of the application configuration to delete
  Future<SirqulResponse?> deleteApplicationConfig(int accountId, int configId,) async {
    final response = await deleteApplicationConfigWithHttpInfo(accountId, configId,);
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

  /// Get AppConfig
  ///
  /// Gets the appConfig data by the given configId. If appConfig cannot be found, it returns an invalid response.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] accountId (required):
  ///   The account ID of the user
  ///
  /// * [int] configId (required):
  ///   The config ID of the application configuration
  Future<Response> getApplicationConfigWithHttpInfo(int accountId, int configId,) async {
    // ignore: prefer_const_declarations
    final path = r'/appconfig/get';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'accountId', accountId));
      queryParams.addAll(_queryParams('', 'configId', configId));

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

  /// Get AppConfig
  ///
  /// Gets the appConfig data by the given configId. If appConfig cannot be found, it returns an invalid response.
  ///
  /// Parameters:
  ///
  /// * [int] accountId (required):
  ///   The account ID of the user
  ///
  /// * [int] configId (required):
  ///   The config ID of the application configuration
  Future<ApplicationConfigResponse?> getApplicationConfig(int accountId, int configId,) async {
    final response = await getApplicationConfigWithHttpInfo(accountId, configId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ApplicationConfigResponse',) as ApplicationConfigResponse;
    
    }
    return null;
  }

  /// Get AppConfig by Version
  ///
  /// Gets the appConfig data by the given appKey and app configVersion number.If the appKey is is invalid or appConfig is not found, it returns an invalid response. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] appKey (required):
  ///   The application key
  ///
  /// * [String] configVersion (required):
  ///   The version of the application configuration
  ///
  /// * [int] retailerId:
  ///   Only returns the config that matches the given retailer
  ///
  /// * [int] retailerLocationId:
  ///   Only returns the config that matches the given retailer location
  ///
  /// * [String] udid:
  ///   Only returns only returns the config that matches the given device udid
  ///
  /// * [bool] allowOlderVersions:
  ///   Determines whether to return older config versions if the exact version is not found. If this happens, will try to return the latest version.
  Future<Response> getApplicationConfigByConfigVersionWithHttpInfo(String appKey, String configVersion, { int? retailerId, int? retailerLocationId, String? udid, bool? allowOlderVersions, }) async {
    // ignore: prefer_const_declarations
    final path = r'/appconfig/getbyversion';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'appKey', appKey));
      queryParams.addAll(_queryParams('', 'configVersion', configVersion));
    if (retailerId != null) {
      queryParams.addAll(_queryParams('', 'retailerId', retailerId));
    }
    if (retailerLocationId != null) {
      queryParams.addAll(_queryParams('', 'retailerLocationId', retailerLocationId));
    }
    if (udid != null) {
      queryParams.addAll(_queryParams('', 'udid', udid));
    }
    if (allowOlderVersions != null) {
      queryParams.addAll(_queryParams('', 'allowOlderVersions', allowOlderVersions));
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

  /// Get AppConfig by Version
  ///
  /// Gets the appConfig data by the given appKey and app configVersion number.If the appKey is is invalid or appConfig is not found, it returns an invalid response. 
  ///
  /// Parameters:
  ///
  /// * [String] appKey (required):
  ///   The application key
  ///
  /// * [String] configVersion (required):
  ///   The version of the application configuration
  ///
  /// * [int] retailerId:
  ///   Only returns the config that matches the given retailer
  ///
  /// * [int] retailerLocationId:
  ///   Only returns the config that matches the given retailer location
  ///
  /// * [String] udid:
  ///   Only returns only returns the config that matches the given device udid
  ///
  /// * [bool] allowOlderVersions:
  ///   Determines whether to return older config versions if the exact version is not found. If this happens, will try to return the latest version.
  Future<ApplicationConfigResponse?> getApplicationConfigByConfigVersion(String appKey, String configVersion, { int? retailerId, int? retailerLocationId, String? udid, bool? allowOlderVersions, }) async {
    final response = await getApplicationConfigByConfigVersionWithHttpInfo(appKey, configVersion,  retailerId: retailerId, retailerLocationId: retailerLocationId, udid: udid, allowOlderVersions: allowOlderVersions, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ApplicationConfigResponse',) as ApplicationConfigResponse;
    
    }
    return null;
  }

  /// Search AppConfigs
  ///
  /// Gets all versions of application configurations in a particular app by the given appKey.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] accountId (required):
  ///   The account ID of the user
  ///
  /// * [String] appKey:
  ///   The application key to filter results by application Leaving this empty will return all application configurations for all applications (executive user only)
  ///
  /// * [int] retailerId:
  ///   Only returns the configs that matches the given retailer
  ///
  /// * [int] retailerLocationId:
  ///   Only returns the configs that matches the given retailer location
  ///
  /// * [String] udid:
  ///   Only returns only returns the configs that matches the given device udid
  ///
  /// * [String] configVersion:
  ///   Config Version
  ///
  /// * [String] sortField:
  ///   Orders the results by: CREATED, UPDATED, ACTIVE, APPLICATION_ID,  APPLICATION_KEY, APPLICATION_NAME, RETAILER_NAME, RETAILER_ID, RETAILER_LOCATION_NAME,  RETAILER_LOCATION_ID, OFFER_TITLE, OFFER_ID, OFFER_LOCATION_ID, CONFIG_VERSION_MINOR,  CONFIG_VERSION_MAJOR, CONFIG_VERSION_INDEX 
  ///
  /// * [bool] descending:
  ///   Determines whether the results are in descending or ascending order
  ///
  /// * [int] start:
  ///   The start index for pagination
  ///
  /// * [int] limit:
  ///   The limit for pagination (There is a hard limit of 100)
  Future<Response> searchApplicationConfigWithHttpInfo(int accountId, { String? appKey, int? retailerId, int? retailerLocationId, String? udid, String? configVersion, String? sortField, bool? descending, int? start, int? limit, }) async {
    // ignore: prefer_const_declarations
    final path = r'/appconfig/search';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'accountId', accountId));
    if (appKey != null) {
      queryParams.addAll(_queryParams('', 'appKey', appKey));
    }
    if (retailerId != null) {
      queryParams.addAll(_queryParams('', 'retailerId', retailerId));
    }
    if (retailerLocationId != null) {
      queryParams.addAll(_queryParams('', 'retailerLocationId', retailerLocationId));
    }
    if (udid != null) {
      queryParams.addAll(_queryParams('', 'udid', udid));
    }
    if (configVersion != null) {
      queryParams.addAll(_queryParams('', 'configVersion', configVersion));
    }
    if (sortField != null) {
      queryParams.addAll(_queryParams('', 'sortField', sortField));
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

  /// Search AppConfigs
  ///
  /// Gets all versions of application configurations in a particular app by the given appKey.
  ///
  /// Parameters:
  ///
  /// * [int] accountId (required):
  ///   The account ID of the user
  ///
  /// * [String] appKey:
  ///   The application key to filter results by application Leaving this empty will return all application configurations for all applications (executive user only)
  ///
  /// * [int] retailerId:
  ///   Only returns the configs that matches the given retailer
  ///
  /// * [int] retailerLocationId:
  ///   Only returns the configs that matches the given retailer location
  ///
  /// * [String] udid:
  ///   Only returns only returns the configs that matches the given device udid
  ///
  /// * [String] configVersion:
  ///   Config Version
  ///
  /// * [String] sortField:
  ///   Orders the results by: CREATED, UPDATED, ACTIVE, APPLICATION_ID,  APPLICATION_KEY, APPLICATION_NAME, RETAILER_NAME, RETAILER_ID, RETAILER_LOCATION_NAME,  RETAILER_LOCATION_ID, OFFER_TITLE, OFFER_ID, OFFER_LOCATION_ID, CONFIG_VERSION_MINOR,  CONFIG_VERSION_MAJOR, CONFIG_VERSION_INDEX 
  ///
  /// * [bool] descending:
  ///   Determines whether the results are in descending or ascending order
  ///
  /// * [int] start:
  ///   The start index for pagination
  ///
  /// * [int] limit:
  ///   The limit for pagination (There is a hard limit of 100)
  Future<List<ApplicationConfigResponse>?> searchApplicationConfig(int accountId, { String? appKey, int? retailerId, int? retailerLocationId, String? udid, String? configVersion, String? sortField, bool? descending, int? start, int? limit, }) async {
    final response = await searchApplicationConfigWithHttpInfo(accountId,  appKey: appKey, retailerId: retailerId, retailerLocationId: retailerLocationId, udid: udid, configVersion: configVersion, sortField: sortField, descending: descending, start: start, limit: limit, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<ApplicationConfigResponse>') as List)
        .cast<ApplicationConfigResponse>()
        .toList(growable: false);

    }
    return null;
  }

  /// Update AppConfig
  ///
  /// pdates an existing application configuration. If the configVersion provided already exists for the given app the application configuration won't be updated.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] accountId (required):
  ///   The account ID of the user
  ///
  /// * [int] configId (required):
  ///   The config ID of the application configuration to update
  ///
  /// * [String] appKey:
  ///   The application key that the updated applicationConfig will be associated to
  ///
  /// * [String] configVersion:
  ///   The application configuration, has to be unique within the application
  ///
  /// * [int] assetId:
  ///   The json assetId that stores the configuration detail.
  ///
  /// * [int] retailerId:
  ///   The retailer id for retailer specific configurations
  ///
  /// * [int] retailerLocationId:
  ///   The retailer location id for retailer location specific configurations
  ///
  /// * [String] udid:
  ///   The device udid for device specific configurations
  Future<Response> updateApplicationConfigWithHttpInfo(int accountId, int configId, { String? appKey, String? configVersion, int? assetId, int? retailerId, int? retailerLocationId, String? udid, }) async {
    // ignore: prefer_const_declarations
    final path = r'/appconfig/update';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'accountId', accountId));
      queryParams.addAll(_queryParams('', 'configId', configId));
    if (appKey != null) {
      queryParams.addAll(_queryParams('', 'appKey', appKey));
    }
    if (configVersion != null) {
      queryParams.addAll(_queryParams('', 'configVersion', configVersion));
    }
    if (assetId != null) {
      queryParams.addAll(_queryParams('', 'assetId', assetId));
    }
    if (retailerId != null) {
      queryParams.addAll(_queryParams('', 'retailerId', retailerId));
    }
    if (retailerLocationId != null) {
      queryParams.addAll(_queryParams('', 'retailerLocationId', retailerLocationId));
    }
    if (udid != null) {
      queryParams.addAll(_queryParams('', 'udid', udid));
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

  /// Update AppConfig
  ///
  /// pdates an existing application configuration. If the configVersion provided already exists for the given app the application configuration won't be updated.
  ///
  /// Parameters:
  ///
  /// * [int] accountId (required):
  ///   The account ID of the user
  ///
  /// * [int] configId (required):
  ///   The config ID of the application configuration to update
  ///
  /// * [String] appKey:
  ///   The application key that the updated applicationConfig will be associated to
  ///
  /// * [String] configVersion:
  ///   The application configuration, has to be unique within the application
  ///
  /// * [int] assetId:
  ///   The json assetId that stores the configuration detail.
  ///
  /// * [int] retailerId:
  ///   The retailer id for retailer specific configurations
  ///
  /// * [int] retailerLocationId:
  ///   The retailer location id for retailer location specific configurations
  ///
  /// * [String] udid:
  ///   The device udid for device specific configurations
  Future<ApplicationConfigResponse?> updateApplicationConfig(int accountId, int configId, { String? appKey, String? configVersion, int? assetId, int? retailerId, int? retailerLocationId, String? udid, }) async {
    final response = await updateApplicationConfigWithHttpInfo(accountId, configId,  appKey: appKey, configVersion: configVersion, assetId: assetId, retailerId: retailerId, retailerLocationId: retailerLocationId, udid: udid, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ApplicationConfigResponse',) as ApplicationConfigResponse;
    
    }
    return null;
  }
}
