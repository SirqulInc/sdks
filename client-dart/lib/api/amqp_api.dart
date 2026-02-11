//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class AMQPApi {
  AMQPApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Create Consumer
  ///
  /// Create a connection to an existing amqp queue and register as a consumer.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] appKey (required):
  ///   The application key to use when creating an analytic or service request. The account needs to have permissions to the applicaton or it will be denied.
  ///
  /// * [String] name (required):
  ///   The name of the queue to connect to
  ///
  /// * [String] hostname (required):
  ///   The hostname of the server the queue is hosted on
  ///
  /// * [String] username (required):
  ///   The username to access the server the queue is hosted on
  ///
  /// * [String] password (required):
  ///   The password to access the queue to connect to
  ///
  /// * [String] dataMapping (required):
  ///   The data mapping information in the format of AMQPRequest
  ///
  /// * [String] deviceId:
  ///   The client deviceID
  ///
  /// * [int] accountId:
  ///   The logged in user ID
  ///
  /// * [int] port:
  ///   The port of the server the queue is hosted on
  ///
  /// * [String] virtualHost:
  ///   The virtual host defined on the server the queue is associated on
  ///
  /// * [String] exchanger:
  ///   The exchanger of the queue to connect to
  ///
  /// * [String] exchangerType:
  ///   The exchanger type of the queue to connect to
  ///
  /// * [int] workers:
  ///   The number of workers to generate 
  ///
  /// * [bool] useSSL:
  ///   Use SSL
  Future<Response> consumerCreateWithHttpInfo(String appKey, String name, String hostname, String username, String password, String dataMapping, { String? deviceId, int? accountId, int? port, String? virtualHost, String? exchanger, String? exchangerType, int? workers, bool? useSSL, }) async {
    // ignore: prefer_const_declarations
    final path = r'/queue/consumer/create';

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
      queryParams.addAll(_queryParams('', 'appKey', appKey));
      queryParams.addAll(_queryParams('', 'name', name));
      queryParams.addAll(_queryParams('', 'hostname', hostname));
    if (port != null) {
      queryParams.addAll(_queryParams('', 'port', port));
    }
      queryParams.addAll(_queryParams('', 'username', username));
      queryParams.addAll(_queryParams('', 'password', password));
    if (virtualHost != null) {
      queryParams.addAll(_queryParams('', 'virtualHost', virtualHost));
    }
    if (exchanger != null) {
      queryParams.addAll(_queryParams('', 'exchanger', exchanger));
    }
    if (exchangerType != null) {
      queryParams.addAll(_queryParams('', 'exchangerType', exchangerType));
    }
    if (workers != null) {
      queryParams.addAll(_queryParams('', 'workers', workers));
    }
      queryParams.addAll(_queryParams('', 'dataMapping', dataMapping));
    if (useSSL != null) {
      queryParams.addAll(_queryParams('', 'useSSL', useSSL));
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

  /// Create Consumer
  ///
  /// Create a connection to an existing amqp queue and register as a consumer.
  ///
  /// Parameters:
  ///
  /// * [String] appKey (required):
  ///   The application key to use when creating an analytic or service request. The account needs to have permissions to the applicaton or it will be denied.
  ///
  /// * [String] name (required):
  ///   The name of the queue to connect to
  ///
  /// * [String] hostname (required):
  ///   The hostname of the server the queue is hosted on
  ///
  /// * [String] username (required):
  ///   The username to access the server the queue is hosted on
  ///
  /// * [String] password (required):
  ///   The password to access the queue to connect to
  ///
  /// * [String] dataMapping (required):
  ///   The data mapping information in the format of AMQPRequest
  ///
  /// * [String] deviceId:
  ///   The client deviceID
  ///
  /// * [int] accountId:
  ///   The logged in user ID
  ///
  /// * [int] port:
  ///   The port of the server the queue is hosted on
  ///
  /// * [String] virtualHost:
  ///   The virtual host defined on the server the queue is associated on
  ///
  /// * [String] exchanger:
  ///   The exchanger of the queue to connect to
  ///
  /// * [String] exchangerType:
  ///   The exchanger type of the queue to connect to
  ///
  /// * [int] workers:
  ///   The number of workers to generate 
  ///
  /// * [bool] useSSL:
  ///   Use SSL
  Future<QueueResponse?> consumerCreate(String appKey, String name, String hostname, String username, String password, String dataMapping, { String? deviceId, int? accountId, int? port, String? virtualHost, String? exchanger, String? exchangerType, int? workers, bool? useSSL, }) async {
    final response = await consumerCreateWithHttpInfo(appKey, name, hostname, username, password, dataMapping,  deviceId: deviceId, accountId: accountId, port: port, virtualHost: virtualHost, exchanger: exchanger, exchangerType: exchangerType, workers: workers, useSSL: useSSL, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'QueueResponse',) as QueueResponse;
    
    }
    return null;
  }

  /// Update Consumer
  ///
  /// Update an existing amqp queue's data mapping.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] appKey (required):
  ///   The application key to use when creating an analytic or service request. The account needs to have permissions to the applicaton or it will be denied.
  ///
  /// * [int] queueId (required):
  ///   The queue to update
  ///
  /// * [String] dataMapping (required):
  ///   The data mapping information in the format of AMQPRequest
  ///
  /// * [String] deviceId:
  ///   The client deviceID
  ///
  /// * [int] accountId:
  ///   The logged in user ID
  ///
  /// * [bool] useSSL:
  ///   Use SSL
  Future<Response> consumerUpdateWithHttpInfo(String appKey, int queueId, String dataMapping, { String? deviceId, int? accountId, bool? useSSL, }) async {
    // ignore: prefer_const_declarations
    final path = r'/queue/consumer/update';

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
      queryParams.addAll(_queryParams('', 'appKey', appKey));
      queryParams.addAll(_queryParams('', 'queueId', queueId));
      queryParams.addAll(_queryParams('', 'dataMapping', dataMapping));
    if (useSSL != null) {
      queryParams.addAll(_queryParams('', 'useSSL', useSSL));
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

  /// Update Consumer
  ///
  /// Update an existing amqp queue's data mapping.
  ///
  /// Parameters:
  ///
  /// * [String] appKey (required):
  ///   The application key to use when creating an analytic or service request. The account needs to have permissions to the applicaton or it will be denied.
  ///
  /// * [int] queueId (required):
  ///   The queue to update
  ///
  /// * [String] dataMapping (required):
  ///   The data mapping information in the format of AMQPRequest
  ///
  /// * [String] deviceId:
  ///   The client deviceID
  ///
  /// * [int] accountId:
  ///   The logged in user ID
  ///
  /// * [bool] useSSL:
  ///   Use SSL
  Future<QueueResponse?> consumerUpdate(String appKey, int queueId, String dataMapping, { String? deviceId, int? accountId, bool? useSSL, }) async {
    final response = await consumerUpdateWithHttpInfo(appKey, queueId, dataMapping,  deviceId: deviceId, accountId: accountId, useSSL: useSSL, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'QueueResponse',) as QueueResponse;
    
    }
    return null;
  }

  /// Create Queue
  ///
  /// Create a basic AMQP queue. If the username and password and virtual host is not sepcified, the queue will be created on the virtual host assigned to the application.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] appKey (required):
  ///   The application key unique to each application.
  ///
  /// * [String] name (required):
  ///   The name of the queue to create
  ///
  /// * [String] deviceId:
  ///   The client deviceID
  ///
  /// * [int] accountId:
  ///   The logged in user ID
  ///
  /// * [int] workers:
  ///   The number of workers to generate 
  ///
  /// * [String] analyticTags:
  ///   If provided the analytic processing will publsih to this queue instead of the default one for the provided list of tags
  ///
  /// * [String] hostname:
  ///   The hostname of the server the queue is hosted on
  ///
  /// * [int] port:
  ///   The port of the server the queue is hosted on
  ///
  /// * [String] username:
  ///   The username to access the server that the queue is on
  ///
  /// * [String] password:
  ///   The password to access the queue to connect to
  ///
  /// * [String] virtualHost:
  ///   The virtual host defined on the server to queue
  ///
  /// * [bool] useSSL:
  ///   Use SSL
  Future<Response> queueCreateWithHttpInfo(String appKey, String name, { String? deviceId, int? accountId, int? workers, String? analyticTags, String? hostname, int? port, String? username, String? password, String? virtualHost, bool? useSSL, }) async {
    // ignore: prefer_const_declarations
    final path = r'/queue/create';

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
      queryParams.addAll(_queryParams('', 'appKey', appKey));
      queryParams.addAll(_queryParams('', 'name', name));
    if (workers != null) {
      queryParams.addAll(_queryParams('', 'workers', workers));
    }
    if (analyticTags != null) {
      queryParams.addAll(_queryParams('', 'analyticTags', analyticTags));
    }
    if (hostname != null) {
      queryParams.addAll(_queryParams('', 'hostname', hostname));
    }
    if (port != null) {
      queryParams.addAll(_queryParams('', 'port', port));
    }
    if (username != null) {
      queryParams.addAll(_queryParams('', 'username', username));
    }
    if (password != null) {
      queryParams.addAll(_queryParams('', 'password', password));
    }
    if (virtualHost != null) {
      queryParams.addAll(_queryParams('', 'virtualHost', virtualHost));
    }
    if (useSSL != null) {
      queryParams.addAll(_queryParams('', 'useSSL', useSSL));
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

  /// Create Queue
  ///
  /// Create a basic AMQP queue. If the username and password and virtual host is not sepcified, the queue will be created on the virtual host assigned to the application.
  ///
  /// Parameters:
  ///
  /// * [String] appKey (required):
  ///   The application key unique to each application.
  ///
  /// * [String] name (required):
  ///   The name of the queue to create
  ///
  /// * [String] deviceId:
  ///   The client deviceID
  ///
  /// * [int] accountId:
  ///   The logged in user ID
  ///
  /// * [int] workers:
  ///   The number of workers to generate 
  ///
  /// * [String] analyticTags:
  ///   If provided the analytic processing will publsih to this queue instead of the default one for the provided list of tags
  ///
  /// * [String] hostname:
  ///   The hostname of the server the queue is hosted on
  ///
  /// * [int] port:
  ///   The port of the server the queue is hosted on
  ///
  /// * [String] username:
  ///   The username to access the server that the queue is on
  ///
  /// * [String] password:
  ///   The password to access the queue to connect to
  ///
  /// * [String] virtualHost:
  ///   The virtual host defined on the server to queue
  ///
  /// * [bool] useSSL:
  ///   Use SSL
  Future<QueueResponse?> queueCreate(String appKey, String name, { String? deviceId, int? accountId, int? workers, String? analyticTags, String? hostname, int? port, String? username, String? password, String? virtualHost, bool? useSSL, }) async {
    final response = await queueCreateWithHttpInfo(appKey, name,  deviceId: deviceId, accountId: accountId, workers: workers, analyticTags: analyticTags, hostname: hostname, port: port, username: username, password: password, virtualHost: virtualHost, useSSL: useSSL, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'QueueResponse',) as QueueResponse;
    
    }
    return null;
  }

  /// Delete Queue
  ///
  /// Delete the stored queue record and close any active connections to the AMQP servers.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] queueId (required):
  ///   The id of the queue to find
  ///
  /// * [String] deviceId:
  ///   The client device ID
  ///
  /// * [int] accountId:
  ///   The logged in user ID
  Future<Response> queueDeleteWithHttpInfo(int queueId, { String? deviceId, int? accountId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/queue/delete';

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
      queryParams.addAll(_queryParams('', 'queueId', queueId));

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

  /// Delete Queue
  ///
  /// Delete the stored queue record and close any active connections to the AMQP servers.
  ///
  /// Parameters:
  ///
  /// * [int] queueId (required):
  ///   The id of the queue to find
  ///
  /// * [String] deviceId:
  ///   The client device ID
  ///
  /// * [int] accountId:
  ///   The logged in user ID
  Future<SirqulResponse?> queueDelete(int queueId, { String? deviceId, int? accountId, }) async {
    final response = await queueDeleteWithHttpInfo(queueId,  deviceId: deviceId, accountId: accountId, );
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

  /// Get Queue
  ///
  /// Get the stored queue record. Must supply the queueId, or the name and hostname and virtualHost, or the name and appKey to find the record.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] deviceId:
  ///   The client device ID
  ///
  /// * [int] accountId:
  ///   The logged in user ID
  ///
  /// * [int] queueId:
  ///   The id of the queue to find
  ///
  /// * [String] appKey:
  ///   The application key the queue was assigned to
  ///
  /// * [String] name:
  ///   The name of the queue to find
  ///
  /// * [String] hostname:
  ///   The hostname of the queue to find
  ///
  /// * [String] virtualHost:
  ///   The virtual host of the queue to find
  Future<Response> queueGetWithHttpInfo({ String? deviceId, int? accountId, int? queueId, String? appKey, String? name, String? hostname, String? virtualHost, }) async {
    // ignore: prefer_const_declarations
    final path = r'/queue/get';

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
    if (queueId != null) {
      queryParams.addAll(_queryParams('', 'queueId', queueId));
    }
    if (appKey != null) {
      queryParams.addAll(_queryParams('', 'appKey', appKey));
    }
    if (name != null) {
      queryParams.addAll(_queryParams('', 'name', name));
    }
    if (hostname != null) {
      queryParams.addAll(_queryParams('', 'hostname', hostname));
    }
    if (virtualHost != null) {
      queryParams.addAll(_queryParams('', 'virtualHost', virtualHost));
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

  /// Get Queue
  ///
  /// Get the stored queue record. Must supply the queueId, or the name and hostname and virtualHost, or the name and appKey to find the record.
  ///
  /// Parameters:
  ///
  /// * [String] deviceId:
  ///   The client device ID
  ///
  /// * [int] accountId:
  ///   The logged in user ID
  ///
  /// * [int] queueId:
  ///   The id of the queue to find
  ///
  /// * [String] appKey:
  ///   The application key the queue was assigned to
  ///
  /// * [String] name:
  ///   The name of the queue to find
  ///
  /// * [String] hostname:
  ///   The hostname of the queue to find
  ///
  /// * [String] virtualHost:
  ///   The virtual host of the queue to find
  Future<QueueResponse?> queueGet({ String? deviceId, int? accountId, int? queueId, String? appKey, String? name, String? hostname, String? virtualHost, }) async {
    final response = await queueGetWithHttpInfo( deviceId: deviceId, accountId: accountId, queueId: queueId, appKey: appKey, name: name, hostname: hostname, virtualHost: virtualHost, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'QueueResponse',) as QueueResponse;
    
    }
    return null;
  }

  /// Publish Queue
  ///
  /// Publish a message to a stored queue. Must supply the queueId, or the name and hostname and virtualHost, or the name and appKey to find the record.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] message (required):
  ///   The payload to send to the queue
  ///
  /// * [int] queueId:
  ///   The id of the queue to publish to
  ///
  /// * [String] appKey:
  ///   The application key the queue was assigned to
  ///
  /// * [String] name:
  ///   The name of the queue to publish to or the analytic tag to handle if the analytic param is true
  ///
  /// * [String] hostname:
  ///   The hostname of the server the queue is hosted on
  ///
  /// * [String] virtualHost:
  ///   The virtual host defined on the server to queue
  Future<Response> queuePublishWithHttpInfo(String message, { int? queueId, String? appKey, String? name, String? hostname, String? virtualHost, }) async {
    // ignore: prefer_const_declarations
    final path = r'/queue/publish';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (queueId != null) {
      queryParams.addAll(_queryParams('', 'queueId', queueId));
    }
    if (appKey != null) {
      queryParams.addAll(_queryParams('', 'appKey', appKey));
    }
    if (name != null) {
      queryParams.addAll(_queryParams('', 'name', name));
    }
    if (hostname != null) {
      queryParams.addAll(_queryParams('', 'hostname', hostname));
    }
    if (virtualHost != null) {
      queryParams.addAll(_queryParams('', 'virtualHost', virtualHost));
    }
      queryParams.addAll(_queryParams('', 'message', message));

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

  /// Publish Queue
  ///
  /// Publish a message to a stored queue. Must supply the queueId, or the name and hostname and virtualHost, or the name and appKey to find the record.
  ///
  /// Parameters:
  ///
  /// * [String] message (required):
  ///   The payload to send to the queue
  ///
  /// * [int] queueId:
  ///   The id of the queue to publish to
  ///
  /// * [String] appKey:
  ///   The application key the queue was assigned to
  ///
  /// * [String] name:
  ///   The name of the queue to publish to or the analytic tag to handle if the analytic param is true
  ///
  /// * [String] hostname:
  ///   The hostname of the server the queue is hosted on
  ///
  /// * [String] virtualHost:
  ///   The virtual host defined on the server to queue
  Future<SirqulResponse?> queuePublish(String message, { int? queueId, String? appKey, String? name, String? hostname, String? virtualHost, }) async {
    final response = await queuePublishWithHttpInfo(message,  queueId: queueId, appKey: appKey, name: name, hostname: hostname, virtualHost: virtualHost, );
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

  /// Search Queue
  ///
  /// Get the queues setup for the BillableEntity's applications.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] queueId:
  ///   The id of the queue to find
  ///
  /// * [String] deviceId:
  ///   The client device ID
  ///
  /// * [int] accountId:
  ///   The logged in user ID
  ///
  /// * [String] name:
  ///   The name of the queue to find
  ///
  /// * [int] start:
  ///   Start of the index
  ///
  /// * [int] limit:
  ///   Limit of the index
  Future<Response> queueSearchWithHttpInfo({ int? queueId, String? deviceId, int? accountId, String? name, int? start, int? limit, }) async {
    // ignore: prefer_const_declarations
    final path = r'/queue/search';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (queueId != null) {
      queryParams.addAll(_queryParams('', 'queueId', queueId));
    }
    if (deviceId != null) {
      queryParams.addAll(_queryParams('', 'deviceId', deviceId));
    }
    if (accountId != null) {
      queryParams.addAll(_queryParams('', 'accountId', accountId));
    }
    if (name != null) {
      queryParams.addAll(_queryParams('', 'name', name));
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

  /// Search Queue
  ///
  /// Get the queues setup for the BillableEntity's applications.
  ///
  /// Parameters:
  ///
  /// * [int] queueId:
  ///   The id of the queue to find
  ///
  /// * [String] deviceId:
  ///   The client device ID
  ///
  /// * [int] accountId:
  ///   The logged in user ID
  ///
  /// * [String] name:
  ///   The name of the queue to find
  ///
  /// * [int] start:
  ///   Start of the index
  ///
  /// * [int] limit:
  ///   Limit of the index
  Future<QueueResponse?> queueSearch({ int? queueId, String? deviceId, int? accountId, String? name, int? start, int? limit, }) async {
    final response = await queueSearchWithHttpInfo( queueId: queueId, deviceId: deviceId, accountId: accountId, name: name, start: start, limit: limit, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'QueueResponse',) as QueueResponse;
    
    }
    return null;
  }

  /// Update Queue
  ///
  /// Update the basic AMQP queue.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] queueId (required):
  ///   The id of the queue to update
  ///
  /// * [String] deviceId:
  ///   The client deviceID
  ///
  /// * [int] accountId:
  ///   The logged in user ID
  ///
  /// * [String] appKey:
  ///   The application key unique to each application.
  ///
  /// * [int] workers:
  ///   The number of workers to generate
  ///
  /// * [String] analyticTags:
  ///   If provided the analytic processing will publsih to this queue instead of the default one for the provided list of tags
  ///
  /// * [String] hostname:
  ///   The hostname of the server the queue is hosted on
  ///
  /// * [int] port:
  ///   The port of the server the queue is hosted on
  ///
  /// * [String] username:
  ///   The username to access the server that the queue is on
  ///
  /// * [String] password:
  ///   The password to access the queue to connect to
  ///
  /// * [String] virtualHost:
  ///   The virtual host defined on the server to queue
  ///
  /// * [bool] useSSL:
  ///   the SSL to use
  Future<Response> queueUpdateWithHttpInfo(int queueId, { String? deviceId, int? accountId, String? appKey, int? workers, String? analyticTags, String? hostname, int? port, String? username, String? password, String? virtualHost, bool? useSSL, }) async {
    // ignore: prefer_const_declarations
    final path = r'/queue/update';

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
    if (appKey != null) {
      queryParams.addAll(_queryParams('', 'appKey', appKey));
    }
      queryParams.addAll(_queryParams('', 'queueId', queueId));
    if (workers != null) {
      queryParams.addAll(_queryParams('', 'workers', workers));
    }
    if (analyticTags != null) {
      queryParams.addAll(_queryParams('', 'analyticTags', analyticTags));
    }
    if (hostname != null) {
      queryParams.addAll(_queryParams('', 'hostname', hostname));
    }
    if (port != null) {
      queryParams.addAll(_queryParams('', 'port', port));
    }
    if (username != null) {
      queryParams.addAll(_queryParams('', 'username', username));
    }
    if (password != null) {
      queryParams.addAll(_queryParams('', 'password', password));
    }
    if (virtualHost != null) {
      queryParams.addAll(_queryParams('', 'virtualHost', virtualHost));
    }
    if (useSSL != null) {
      queryParams.addAll(_queryParams('', 'useSSL', useSSL));
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

  /// Update Queue
  ///
  /// Update the basic AMQP queue.
  ///
  /// Parameters:
  ///
  /// * [int] queueId (required):
  ///   The id of the queue to update
  ///
  /// * [String] deviceId:
  ///   The client deviceID
  ///
  /// * [int] accountId:
  ///   The logged in user ID
  ///
  /// * [String] appKey:
  ///   The application key unique to each application.
  ///
  /// * [int] workers:
  ///   The number of workers to generate
  ///
  /// * [String] analyticTags:
  ///   If provided the analytic processing will publsih to this queue instead of the default one for the provided list of tags
  ///
  /// * [String] hostname:
  ///   The hostname of the server the queue is hosted on
  ///
  /// * [int] port:
  ///   The port of the server the queue is hosted on
  ///
  /// * [String] username:
  ///   The username to access the server that the queue is on
  ///
  /// * [String] password:
  ///   The password to access the queue to connect to
  ///
  /// * [String] virtualHost:
  ///   The virtual host defined on the server to queue
  ///
  /// * [bool] useSSL:
  ///   the SSL to use
  Future<QueueResponse?> queueUpdate(int queueId, { String? deviceId, int? accountId, String? appKey, int? workers, String? analyticTags, String? hostname, int? port, String? username, String? password, String? virtualHost, bool? useSSL, }) async {
    final response = await queueUpdateWithHttpInfo(queueId,  deviceId: deviceId, accountId: accountId, appKey: appKey, workers: workers, analyticTags: analyticTags, hostname: hostname, port: port, username: username, password: password, virtualHost: virtualHost, useSSL: useSSL, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'QueueResponse',) as QueueResponse;
    
    }
    return null;
  }
}
