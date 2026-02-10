//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class ConnectionApi {
  ConnectionApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Add Connection
  ///
  /// Adds a connection to a group.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [bool] returnNulls (required):
  ///   whether to return nulls or not
  ///
  /// * [int] groupId (required):
  ///   the group id
  ///
  /// * [String] deviceId:
  ///   the device id (deviceId or accountId required)
  ///
  /// * [int] accountId:
  ///   the account id of the user (deviceId or accountId required)
  ///
  /// * [int] connectionId:
  ///   the connection id
  ///
  /// * [int] connectionAccountId:
  ///   the connection account id
  ///
  /// * [int] pendingId:
  ///   the pending id
  ///
  /// * [double] latitude:
  ///   the current latitude of the user
  ///
  /// * [double] longitude:
  ///   the current longitude of the user
  Future<Response> addConnectionToGroupWithHttpInfo(num version, bool returnNulls, int groupId, { String? deviceId, int? accountId, int? connectionId, int? connectionAccountId, int? pendingId, double? latitude, double? longitude, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/consumer/connection/group/addConnection'
      .replaceAll('{version}', version.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'returnNulls', returnNulls));
    if (deviceId != null) {
      queryParams.addAll(_queryParams('', 'deviceId', deviceId));
    }
    if (accountId != null) {
      queryParams.addAll(_queryParams('', 'accountId', accountId));
    }
    if (connectionId != null) {
      queryParams.addAll(_queryParams('', 'connectionId', connectionId));
    }
    if (connectionAccountId != null) {
      queryParams.addAll(_queryParams('', 'connectionAccountId', connectionAccountId));
    }
    if (pendingId != null) {
      queryParams.addAll(_queryParams('', 'pendingId', pendingId));
    }
      queryParams.addAll(_queryParams('', 'groupId', groupId));
    if (latitude != null) {
      queryParams.addAll(_queryParams('', 'latitude', latitude));
    }
    if (longitude != null) {
      queryParams.addAll(_queryParams('', 'longitude', longitude));
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

  /// Add Connection
  ///
  /// Adds a connection to a group.
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [bool] returnNulls (required):
  ///   whether to return nulls or not
  ///
  /// * [int] groupId (required):
  ///   the group id
  ///
  /// * [String] deviceId:
  ///   the device id (deviceId or accountId required)
  ///
  /// * [int] accountId:
  ///   the account id of the user (deviceId or accountId required)
  ///
  /// * [int] connectionId:
  ///   the connection id
  ///
  /// * [int] connectionAccountId:
  ///   the connection account id
  ///
  /// * [int] pendingId:
  ///   the pending id
  ///
  /// * [double] latitude:
  ///   the current latitude of the user
  ///
  /// * [double] longitude:
  ///   the current longitude of the user
  Future<SirqulResponse?> addConnectionToGroup(num version, bool returnNulls, int groupId, { String? deviceId, int? accountId, int? connectionId, int? connectionAccountId, int? pendingId, double? latitude, double? longitude, }) async {
    final response = await addConnectionToGroupWithHttpInfo(version, returnNulls, groupId,  deviceId: deviceId, accountId: accountId, connectionId: connectionId, connectionAccountId: connectionAccountId, pendingId: pendingId, latitude: latitude, longitude: longitude, );
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

  /// Add Connections
  ///
  /// Adds a list of connections to a group.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] connectionGroupId (required):
  ///   the connection group ID
  ///
  /// * [String] deviceId:
  ///   the device id (deviceId or accountId required)
  ///
  /// * [int] accountId:
  ///   the account id of the user (deviceId or accountId required)
  ///
  /// * [String] connectionIds:
  ///   comma separated list of connection ids
  ///
  /// * [String] connectionAccountIds:
  ///   comma separated list of connection account ids
  ///
  /// * [double] latitude:
  ///   the current latitude of the user
  ///
  /// * [double] longitude:
  ///   the current longitude of the user
  Future<Response> addConnectionsToGroupWithHttpInfo(num version, int connectionGroupId, { String? deviceId, int? accountId, String? connectionIds, String? connectionAccountIds, double? latitude, double? longitude, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/connection/group/addConnections'
      .replaceAll('{version}', version.toString());

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
    if (connectionIds != null) {
      queryParams.addAll(_queryParams('', 'connectionIds', connectionIds));
    }
    if (connectionAccountIds != null) {
      queryParams.addAll(_queryParams('', 'connectionAccountIds', connectionAccountIds));
    }
      queryParams.addAll(_queryParams('', 'connectionGroupId', connectionGroupId));
    if (latitude != null) {
      queryParams.addAll(_queryParams('', 'latitude', latitude));
    }
    if (longitude != null) {
      queryParams.addAll(_queryParams('', 'longitude', longitude));
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

  /// Add Connections
  ///
  /// Adds a list of connections to a group.
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] connectionGroupId (required):
  ///   the connection group ID
  ///
  /// * [String] deviceId:
  ///   the device id (deviceId or accountId required)
  ///
  /// * [int] accountId:
  ///   the account id of the user (deviceId or accountId required)
  ///
  /// * [String] connectionIds:
  ///   comma separated list of connection ids
  ///
  /// * [String] connectionAccountIds:
  ///   comma separated list of connection account ids
  ///
  /// * [double] latitude:
  ///   the current latitude of the user
  ///
  /// * [double] longitude:
  ///   the current longitude of the user
  Future<SirqulResponse?> addConnectionsToGroup(num version, int connectionGroupId, { String? deviceId, int? accountId, String? connectionIds, String? connectionAccountIds, double? latitude, double? longitude, }) async {
    final response = await addConnectionsToGroupWithHttpInfo(version, connectionGroupId,  deviceId: deviceId, accountId: accountId, connectionIds: connectionIds, connectionAccountIds: connectionAccountIds, latitude: latitude, longitude: longitude, );
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

  /// Add Connection Groups
  ///
  /// Add sub groups to a group.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [bool] returnNulls (required):
  ///   whether to return nulls or not
  ///
  /// * [int] groupId (required):
  ///   the parent group id
  ///
  /// * [String] subGroupIds (required):
  ///   comma separated list of group IDs to add to the parent group
  ///
  /// * [String] deviceId:
  ///   the device id (deviceId or accountId required)
  ///
  /// * [int] accountId:
  ///   the account id of the user (deviceId or accountId required)
  ///
  /// * [double] latitude:
  ///   the current latitude of the user
  ///
  /// * [double] longitude:
  ///   the current longitude of the user
  Future<Response> addSubGroupsWithHttpInfo(num version, bool returnNulls, int groupId, String subGroupIds, { String? deviceId, int? accountId, double? latitude, double? longitude, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/consumer/connection/group/addSubGroup'
      .replaceAll('{version}', version.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'returnNulls', returnNulls));
    if (deviceId != null) {
      queryParams.addAll(_queryParams('', 'deviceId', deviceId));
    }
    if (accountId != null) {
      queryParams.addAll(_queryParams('', 'accountId', accountId));
    }
      queryParams.addAll(_queryParams('', 'groupId', groupId));
      queryParams.addAll(_queryParams('', 'subGroupIds', subGroupIds));
    if (latitude != null) {
      queryParams.addAll(_queryParams('', 'latitude', latitude));
    }
    if (longitude != null) {
      queryParams.addAll(_queryParams('', 'longitude', longitude));
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

  /// Add Connection Groups
  ///
  /// Add sub groups to a group.
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [bool] returnNulls (required):
  ///   whether to return nulls or not
  ///
  /// * [int] groupId (required):
  ///   the parent group id
  ///
  /// * [String] subGroupIds (required):
  ///   comma separated list of group IDs to add to the parent group
  ///
  /// * [String] deviceId:
  ///   the device id (deviceId or accountId required)
  ///
  /// * [int] accountId:
  ///   the account id of the user (deviceId or accountId required)
  ///
  /// * [double] latitude:
  ///   the current latitude of the user
  ///
  /// * [double] longitude:
  ///   the current longitude of the user
  Future<ConnectionGroupResponse?> addSubGroups(num version, bool returnNulls, int groupId, String subGroupIds, { String? deviceId, int? accountId, double? latitude, double? longitude, }) async {
    final response = await addSubGroupsWithHttpInfo(version, returnNulls, groupId, subGroupIds,  deviceId: deviceId, accountId: accountId, latitude: latitude, longitude: longitude, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ConnectionGroupResponse',) as ConnectionGroupResponse;
    
    }
    return null;
  }

  /// Create or Update Connection
  ///
  /// Creates or updates the connection of the user and another account. Allows a user to follow, block, mark as trusted, and/or add someone to a group.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [String] deviceId:
  ///   the device id (deviceId or accountId required)
  ///
  /// * [int] accountId:
  ///   the account id of the user (deviceId or accountId required)
  ///
  /// * [int] connectionId:
  ///   the connection id for editing
  ///
  /// * [int] connectionAccountId:
  ///   the connection account id (i.e. the account id of another user)
  ///
  /// * [int] pendingId:
  ///   the pending id (usually for people who do not have a Sirqul account but are already friends via other third party apps)
  ///
  /// * [int] groupId:
  ///   optional group id if the user wants to add this person into a group
  ///
  /// * [String] gameType:
  ///   This parameter is deprecated.
  ///
  /// * [String] appKey:
  ///   the application key
  ///
  /// * [bool] isTrusted:
  ///   determines whether the user is trusting this account
  ///
  /// * [bool] ignoreFriendRequest:
  ///   determines whether the user has set to ignore the user's friend request
  ///
  /// * [bool] isContact:
  ///   determines whether the user is a contact of this account
  ///
  /// * [bool] isBlocked:
  ///   determines whether the user is blocking this account
  ///
  /// * [bool] isFollowing:
  ///   determines whether the user is following this account
  ///
  /// * [bool] connectionResponse:
  ///   whether to return the connection response or not
  Future<Response> createOrUpdateConnectionWithHttpInfo(num version, { String? deviceId, int? accountId, int? connectionId, int? connectionAccountId, int? pendingId, int? groupId, String? gameType, String? appKey, bool? isTrusted, bool? ignoreFriendRequest, bool? isContact, bool? isBlocked, bool? isFollowing, bool? connectionResponse, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/consumer/connection/add'
      .replaceAll('{version}', version.toString());

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
    if (connectionId != null) {
      queryParams.addAll(_queryParams('', 'connectionId', connectionId));
    }
    if (connectionAccountId != null) {
      queryParams.addAll(_queryParams('', 'connectionAccountId', connectionAccountId));
    }
    if (pendingId != null) {
      queryParams.addAll(_queryParams('', 'pendingId', pendingId));
    }
    if (groupId != null) {
      queryParams.addAll(_queryParams('', 'groupId', groupId));
    }
    if (gameType != null) {
      queryParams.addAll(_queryParams('', 'gameType', gameType));
    }
    if (appKey != null) {
      queryParams.addAll(_queryParams('', 'appKey', appKey));
    }
    if (isTrusted != null) {
      queryParams.addAll(_queryParams('', 'isTrusted', isTrusted));
    }
    if (ignoreFriendRequest != null) {
      queryParams.addAll(_queryParams('', 'ignoreFriendRequest', ignoreFriendRequest));
    }
    if (isContact != null) {
      queryParams.addAll(_queryParams('', 'isContact', isContact));
    }
    if (isBlocked != null) {
      queryParams.addAll(_queryParams('', 'isBlocked', isBlocked));
    }
    if (isFollowing != null) {
      queryParams.addAll(_queryParams('', 'isFollowing', isFollowing));
    }
    if (connectionResponse != null) {
      queryParams.addAll(_queryParams('', 'connectionResponse', connectionResponse));
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

  /// Create or Update Connection
  ///
  /// Creates or updates the connection of the user and another account. Allows a user to follow, block, mark as trusted, and/or add someone to a group.
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [String] deviceId:
  ///   the device id (deviceId or accountId required)
  ///
  /// * [int] accountId:
  ///   the account id of the user (deviceId or accountId required)
  ///
  /// * [int] connectionId:
  ///   the connection id for editing
  ///
  /// * [int] connectionAccountId:
  ///   the connection account id (i.e. the account id of another user)
  ///
  /// * [int] pendingId:
  ///   the pending id (usually for people who do not have a Sirqul account but are already friends via other third party apps)
  ///
  /// * [int] groupId:
  ///   optional group id if the user wants to add this person into a group
  ///
  /// * [String] gameType:
  ///   This parameter is deprecated.
  ///
  /// * [String] appKey:
  ///   the application key
  ///
  /// * [bool] isTrusted:
  ///   determines whether the user is trusting this account
  ///
  /// * [bool] ignoreFriendRequest:
  ///   determines whether the user has set to ignore the user's friend request
  ///
  /// * [bool] isContact:
  ///   determines whether the user is a contact of this account
  ///
  /// * [bool] isBlocked:
  ///   determines whether the user is blocking this account
  ///
  /// * [bool] isFollowing:
  ///   determines whether the user is following this account
  ///
  /// * [bool] connectionResponse:
  ///   whether to return the connection response or not
  Future<ConnectionResponse?> createOrUpdateConnection(num version, { String? deviceId, int? accountId, int? connectionId, int? connectionAccountId, int? pendingId, int? groupId, String? gameType, String? appKey, bool? isTrusted, bool? ignoreFriendRequest, bool? isContact, bool? isBlocked, bool? isFollowing, bool? connectionResponse, }) async {
    final response = await createOrUpdateConnectionWithHttpInfo(version,  deviceId: deviceId, accountId: accountId, connectionId: connectionId, connectionAccountId: connectionAccountId, pendingId: pendingId, groupId: groupId, gameType: gameType, appKey: appKey, isTrusted: isTrusted, ignoreFriendRequest: ignoreFriendRequest, isContact: isContact, isBlocked: isBlocked, isFollowing: isFollowing, connectionResponse: connectionResponse, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ConnectionResponse',) as ConnectionResponse;
    
    }
    return null;
  }

  /// Create or Update Connection Group
  ///
  /// Creates a new private group.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [bool] returnNulls (required):
  ///   whether to return nulls or not
  ///
  /// * [String] deviceId:
  ///   the device id (deviceId or accountId required)
  ///
  /// * [int] accountId:
  ///   the account id of the user (deviceId or accountId required)
  ///
  /// * [String] name:
  ///   the name of the group
  ///
  /// * [int] groupId:
  ///   the group id to update a group (don't pass anything in if you want to create a new group)
  ///
  /// * [int] assetId:
  ///   the asset to attach to the group
  ///
  /// * [String] connections:
  ///   comma separated list of connection IDs
  ///
  /// * [String] description:
  ///   the description of the group
  ///
  /// * [bool] canViewProfileInfo:
  ///   determines whether the connections in the group can see the user's profile info
  ///
  /// * [bool] canViewGameInfo:
  ///   determines whether the connections in the group can see the user's game info
  ///
  /// * [bool] canViewFriendInfo:
  ///   determines whether the connections in the group can see the user's friends/connections
  ///
  /// * [bool] active:
  ///   Sets whether the connection group is active or inactive
  ///
  /// * [double] latitude:
  ///   the latitude of the group
  ///
  /// * [double] longitude:
  ///   the longitude of the group
  Future<Response> createOrUpdateGroupWithHttpInfo(num version, bool returnNulls, { String? deviceId, int? accountId, String? name, int? groupId, int? assetId, String? connections, String? description, bool? canViewProfileInfo, bool? canViewGameInfo, bool? canViewFriendInfo, bool? active, double? latitude, double? longitude, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/consumer/connection/group'
      .replaceAll('{version}', version.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'returnNulls', returnNulls));
    if (deviceId != null) {
      queryParams.addAll(_queryParams('', 'deviceId', deviceId));
    }
    if (accountId != null) {
      queryParams.addAll(_queryParams('', 'accountId', accountId));
    }
    if (name != null) {
      queryParams.addAll(_queryParams('', 'name', name));
    }
    if (groupId != null) {
      queryParams.addAll(_queryParams('', 'groupId', groupId));
    }
    if (assetId != null) {
      queryParams.addAll(_queryParams('', 'assetId', assetId));
    }
    if (connections != null) {
      queryParams.addAll(_queryParams('', 'connections', connections));
    }
    if (description != null) {
      queryParams.addAll(_queryParams('', 'description', description));
    }
    if (canViewProfileInfo != null) {
      queryParams.addAll(_queryParams('', 'canViewProfileInfo', canViewProfileInfo));
    }
    if (canViewGameInfo != null) {
      queryParams.addAll(_queryParams('', 'canViewGameInfo', canViewGameInfo));
    }
    if (canViewFriendInfo != null) {
      queryParams.addAll(_queryParams('', 'canViewFriendInfo', canViewFriendInfo));
    }
    if (active != null) {
      queryParams.addAll(_queryParams('', 'active', active));
    }
    if (latitude != null) {
      queryParams.addAll(_queryParams('', 'latitude', latitude));
    }
    if (longitude != null) {
      queryParams.addAll(_queryParams('', 'longitude', longitude));
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

  /// Create or Update Connection Group
  ///
  /// Creates a new private group.
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [bool] returnNulls (required):
  ///   whether to return nulls or not
  ///
  /// * [String] deviceId:
  ///   the device id (deviceId or accountId required)
  ///
  /// * [int] accountId:
  ///   the account id of the user (deviceId or accountId required)
  ///
  /// * [String] name:
  ///   the name of the group
  ///
  /// * [int] groupId:
  ///   the group id to update a group (don't pass anything in if you want to create a new group)
  ///
  /// * [int] assetId:
  ///   the asset to attach to the group
  ///
  /// * [String] connections:
  ///   comma separated list of connection IDs
  ///
  /// * [String] description:
  ///   the description of the group
  ///
  /// * [bool] canViewProfileInfo:
  ///   determines whether the connections in the group can see the user's profile info
  ///
  /// * [bool] canViewGameInfo:
  ///   determines whether the connections in the group can see the user's game info
  ///
  /// * [bool] canViewFriendInfo:
  ///   determines whether the connections in the group can see the user's friends/connections
  ///
  /// * [bool] active:
  ///   Sets whether the connection group is active or inactive
  ///
  /// * [double] latitude:
  ///   the latitude of the group
  ///
  /// * [double] longitude:
  ///   the longitude of the group
  Future<SirqulResponse?> createOrUpdateGroup(num version, bool returnNulls, { String? deviceId, int? accountId, String? name, int? groupId, int? assetId, String? connections, String? description, bool? canViewProfileInfo, bool? canViewGameInfo, bool? canViewFriendInfo, bool? active, double? latitude, double? longitude, }) async {
    final response = await createOrUpdateGroupWithHttpInfo(version, returnNulls,  deviceId: deviceId, accountId: accountId, name: name, groupId: groupId, assetId: assetId, connections: connections, description: description, canViewProfileInfo: canViewProfileInfo, canViewGameInfo: canViewGameInfo, canViewFriendInfo: canViewFriendInfo, active: active, latitude: latitude, longitude: longitude, );
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

  /// Accept Follow Request
  ///
  /// Accept someone's follow request.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] accountId (required):
  ///   the account id of the user
  ///
  /// * [int] connectionAccountId (required):
  ///   the account ID of the user who initiated the follow
  ///
  /// * [String] appKey (required):
  ///   the application key for sending notifications
  Future<Response> followAcceptWithHttpInfo(num version, int accountId, int connectionAccountId, String appKey,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/consumer/follow/accept'
      .replaceAll('{version}', version.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'accountId', accountId));
      queryParams.addAll(_queryParams('', 'connectionAccountId', connectionAccountId));
      queryParams.addAll(_queryParams('', 'appKey', appKey));

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

  /// Accept Follow Request
  ///
  /// Accept someone's follow request.
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] accountId (required):
  ///   the account id of the user
  ///
  /// * [int] connectionAccountId (required):
  ///   the account ID of the user who initiated the follow
  ///
  /// * [String] appKey (required):
  ///   the application key for sending notifications
  Future<SirqulResponse?> followAccept(num version, int accountId, int connectionAccountId, String appKey,) async {
    final response = await followAcceptWithHttpInfo(version, accountId, connectionAccountId, appKey,);
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

  /// Reject Follow Request
  ///
  /// Reject someone's follow request or remove them as a follower.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] accountId (required):
  ///   the account id of the user
  ///
  /// * [int] connectionAccountId (required):
  ///   the account ID of the user who initiated the follow
  ///
  /// * [String] appKey (required):
  ///   the application key for sending notifications
  Future<Response> followRejectWithHttpInfo(num version, int accountId, int connectionAccountId, String appKey,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/consumer/follow/reject'
      .replaceAll('{version}', version.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'accountId', accountId));
      queryParams.addAll(_queryParams('', 'connectionAccountId', connectionAccountId));
      queryParams.addAll(_queryParams('', 'appKey', appKey));

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

  /// Reject Follow Request
  ///
  /// Reject someone's follow request or remove them as a follower.
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] accountId (required):
  ///   the account id of the user
  ///
  /// * [int] connectionAccountId (required):
  ///   the account ID of the user who initiated the follow
  ///
  /// * [String] appKey (required):
  ///   the application key for sending notifications
  Future<SirqulResponse?> followReject(num version, int accountId, int connectionAccountId, String appKey,) async {
    final response = await followRejectWithHttpInfo(version, accountId, connectionAccountId, appKey,);
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

  /// Remove Follower / Unfollow
  ///
  /// Unfollow someone you are following or remove them as a follower.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] accountId (required):
  ///   the account id of the user
  ///
  /// * [int] connectionAccountId (required):
  ///   the account ID of the user who you want to unfollow
  ///
  /// * [String] appKey (required):
  ///   the application key for sending notifications
  Future<Response> followRemoveWithHttpInfo(num version, int accountId, int connectionAccountId, String appKey,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/consumer/follow/remove'
      .replaceAll('{version}', version.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'accountId', accountId));
      queryParams.addAll(_queryParams('', 'connectionAccountId', connectionAccountId));
      queryParams.addAll(_queryParams('', 'appKey', appKey));

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

  /// Remove Follower / Unfollow
  ///
  /// Unfollow someone you are following or remove them as a follower.
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] accountId (required):
  ///   the account id of the user
  ///
  /// * [int] connectionAccountId (required):
  ///   the account ID of the user who you want to unfollow
  ///
  /// * [String] appKey (required):
  ///   the application key for sending notifications
  Future<SirqulResponse?> followRemove(num version, int accountId, int connectionAccountId, String appKey,) async {
    final response = await followRemoveWithHttpInfo(version, accountId, connectionAccountId, appKey,);
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

  /// Send Follow Request
  ///
  /// Send a request to follow someone.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] accountId (required):
  ///   the account id of the user
  ///
  /// * [int] connectionAccountId (required):
  ///   the account ID of the user who you want to follow
  ///
  /// * [String] appKey (required):
  ///   the application key for sending notifications
  ///
  /// * [bool] approvalNeeded:
  ///   determines if the other user needs to confirm the follow request
  Future<Response> followRequestWithHttpInfo(num version, int accountId, int connectionAccountId, String appKey, { bool? approvalNeeded, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/consumer/follow/request'
      .replaceAll('{version}', version.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'accountId', accountId));
      queryParams.addAll(_queryParams('', 'connectionAccountId', connectionAccountId));
      queryParams.addAll(_queryParams('', 'appKey', appKey));
    if (approvalNeeded != null) {
      queryParams.addAll(_queryParams('', 'approvalNeeded', approvalNeeded));
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

  /// Send Follow Request
  ///
  /// Send a request to follow someone.
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] accountId (required):
  ///   the account id of the user
  ///
  /// * [int] connectionAccountId (required):
  ///   the account ID of the user who you want to follow
  ///
  /// * [String] appKey (required):
  ///   the application key for sending notifications
  ///
  /// * [bool] approvalNeeded:
  ///   determines if the other user needs to confirm the follow request
  Future<SirqulResponse?> followRequest(num version, int accountId, int connectionAccountId, String appKey, { bool? approvalNeeded, }) async {
    final response = await followRequestWithHttpInfo(version, accountId, connectionAccountId, appKey,  approvalNeeded: approvalNeeded, );
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

  /// Accept Friend
  ///
  /// Accept a friend request and optionally sends a notification.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] friendAccountId (required):
  ///   the friend's account id
  ///
  /// * [bool] notifyFriend (required):
  ///   determines whether to send a notification to the afflicting party
  ///
  /// * [String] deviceId:
  ///   the device id (deviceId or accountId required)
  ///
  /// * [int] accountId:
  ///   the account id of the user (deviceId or accountId required)
  ///
  /// * [String] gameType:
  ///   This parameter is deprecated.
  ///
  /// * [String] appKey:
  ///   the application key
  ///
  /// * [String] notificationMessage:
  ///   optional message to send in a notification
  Future<Response> friendAcceptWithHttpInfo(num version, int friendAccountId, bool notifyFriend, { String? deviceId, int? accountId, String? gameType, String? appKey, String? notificationMessage, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/consumer/friend/accept'
      .replaceAll('{version}', version.toString());

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
      queryParams.addAll(_queryParams('', 'friendAccountId', friendAccountId));
    if (gameType != null) {
      queryParams.addAll(_queryParams('', 'gameType', gameType));
    }
    if (appKey != null) {
      queryParams.addAll(_queryParams('', 'appKey', appKey));
    }
      queryParams.addAll(_queryParams('', 'notifyFriend', notifyFriend));
    if (notificationMessage != null) {
      queryParams.addAll(_queryParams('', 'notificationMessage', notificationMessage));
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

  /// Accept Friend
  ///
  /// Accept a friend request and optionally sends a notification.
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] friendAccountId (required):
  ///   the friend's account id
  ///
  /// * [bool] notifyFriend (required):
  ///   determines whether to send a notification to the afflicting party
  ///
  /// * [String] deviceId:
  ///   the device id (deviceId or accountId required)
  ///
  /// * [int] accountId:
  ///   the account id of the user (deviceId or accountId required)
  ///
  /// * [String] gameType:
  ///   This parameter is deprecated.
  ///
  /// * [String] appKey:
  ///   the application key
  ///
  /// * [String] notificationMessage:
  ///   optional message to send in a notification
  Future<SirqulResponse?> friendAccept(num version, int friendAccountId, bool notifyFriend, { String? deviceId, int? accountId, String? gameType, String? appKey, String? notificationMessage, }) async {
    final response = await friendAcceptWithHttpInfo(version, friendAccountId, notifyFriend,  deviceId: deviceId, accountId: accountId, gameType: gameType, appKey: appKey, notificationMessage: notificationMessage, );
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

  /// Decline Friend
  ///
  /// Request a friend request and optionally sends a notification.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] friendAccountId (required):
  ///   the friend's account id
  ///
  /// * [String] deviceId:
  ///   the device id (deviceId or accountId required)
  ///
  /// * [int] accountId:
  ///   the account id of the user (deviceId or accountId required)
  ///
  /// * [String] gameType:
  ///   This parameter is deprecated.
  ///
  /// * [String] appKey:
  ///   the application key
  ///
  /// * [bool] notifyFriend:
  ///   determines whether to send a notification to the afflicting party
  ///
  /// * [String] notificationMessage:
  ///   optional message to send in a notification
  Future<Response> friendRejectWithHttpInfo(num version, int friendAccountId, { String? deviceId, int? accountId, String? gameType, String? appKey, bool? notifyFriend, String? notificationMessage, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/consumer/friend/reject'
      .replaceAll('{version}', version.toString());

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
      queryParams.addAll(_queryParams('', 'friendAccountId', friendAccountId));
    if (gameType != null) {
      queryParams.addAll(_queryParams('', 'gameType', gameType));
    }
    if (appKey != null) {
      queryParams.addAll(_queryParams('', 'appKey', appKey));
    }
    if (notifyFriend != null) {
      queryParams.addAll(_queryParams('', 'notifyFriend', notifyFriend));
    }
    if (notificationMessage != null) {
      queryParams.addAll(_queryParams('', 'notificationMessage', notificationMessage));
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

  /// Decline Friend
  ///
  /// Request a friend request and optionally sends a notification.
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] friendAccountId (required):
  ///   the friend's account id
  ///
  /// * [String] deviceId:
  ///   the device id (deviceId or accountId required)
  ///
  /// * [int] accountId:
  ///   the account id of the user (deviceId or accountId required)
  ///
  /// * [String] gameType:
  ///   This parameter is deprecated.
  ///
  /// * [String] appKey:
  ///   the application key
  ///
  /// * [bool] notifyFriend:
  ///   determines whether to send a notification to the afflicting party
  ///
  /// * [String] notificationMessage:
  ///   optional message to send in a notification
  Future<SirqulResponse?> friendReject(num version, int friendAccountId, { String? deviceId, int? accountId, String? gameType, String? appKey, bool? notifyFriend, String? notificationMessage, }) async {
    final response = await friendRejectWithHttpInfo(version, friendAccountId,  deviceId: deviceId, accountId: accountId, gameType: gameType, appKey: appKey, notifyFriend: notifyFriend, notificationMessage: notificationMessage, );
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

  /// Delete Friend
  ///
  /// Removes a friend from the user's friends list.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] friendAccountId (required):
  ///   the account ID of the friend to remove
  ///
  /// * [String] deviceId:
  ///   the device id (deviceId or accountId required)
  ///
  /// * [int] accountId:
  ///   the account id of the user (deviceId or accountId required)
  ///
  /// * [bool] notifyFriend:
  ///   optionally notifies the connection that they have been removed as a friend
  ///
  /// * [bool] removeFromGroups:
  ///   optionally removes the connection from the user's groups
  Future<Response> friendRemoveWithHttpInfo(num version, int friendAccountId, { String? deviceId, int? accountId, bool? notifyFriend, bool? removeFromGroups, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/consumer/friend/remove'
      .replaceAll('{version}', version.toString());

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
      queryParams.addAll(_queryParams('', 'friendAccountId', friendAccountId));
    if (notifyFriend != null) {
      queryParams.addAll(_queryParams('', 'notifyFriend', notifyFriend));
    }
    if (removeFromGroups != null) {
      queryParams.addAll(_queryParams('', 'removeFromGroups', removeFromGroups));
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

  /// Delete Friend
  ///
  /// Removes a friend from the user's friends list.
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] friendAccountId (required):
  ///   the account ID of the friend to remove
  ///
  /// * [String] deviceId:
  ///   the device id (deviceId or accountId required)
  ///
  /// * [int] accountId:
  ///   the account id of the user (deviceId or accountId required)
  ///
  /// * [bool] notifyFriend:
  ///   optionally notifies the connection that they have been removed as a friend
  ///
  /// * [bool] removeFromGroups:
  ///   optionally removes the connection from the user's groups
  Future<SirqulResponse?> friendRemove(num version, int friendAccountId, { String? deviceId, int? accountId, bool? notifyFriend, bool? removeFromGroups, }) async {
    final response = await friendRemoveWithHttpInfo(version, friendAccountId,  deviceId: deviceId, accountId: accountId, notifyFriend: notifyFriend, removeFromGroups: removeFromGroups, );
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

  /// Request Friend
  ///
  /// Sends a friend request notification to another user.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] friendAccountId (required):
  ///   the friend's account id
  ///
  /// * [String] deviceId:
  ///   the device id (deviceId or accountId required)
  ///
  /// * [int] accountId:
  ///   the account id of the user (deviceId or accountId required)
  ///
  /// * [String] gameType:
  ///   This parameter is deprecated.
  ///
  /// * [String] appKey:
  ///   the application key
  ///
  /// * [String] notificationMessage:
  ///   optional message to send in a notification
  Future<Response> friendRequestWithHttpInfo(num version, int friendAccountId, { String? deviceId, int? accountId, String? gameType, String? appKey, String? notificationMessage, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/consumer/friend/request'
      .replaceAll('{version}', version.toString());

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
      queryParams.addAll(_queryParams('', 'friendAccountId', friendAccountId));
    if (gameType != null) {
      queryParams.addAll(_queryParams('', 'gameType', gameType));
    }
    if (appKey != null) {
      queryParams.addAll(_queryParams('', 'appKey', appKey));
    }
    if (notificationMessage != null) {
      queryParams.addAll(_queryParams('', 'notificationMessage', notificationMessage));
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

  /// Request Friend
  ///
  /// Sends a friend request notification to another user.
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] friendAccountId (required):
  ///   the friend's account id
  ///
  /// * [String] deviceId:
  ///   the device id (deviceId or accountId required)
  ///
  /// * [int] accountId:
  ///   the account id of the user (deviceId or accountId required)
  ///
  /// * [String] gameType:
  ///   This parameter is deprecated.
  ///
  /// * [String] appKey:
  ///   the application key
  ///
  /// * [String] notificationMessage:
  ///   optional message to send in a notification
  Future<SirqulResponse?> friendRequest(num version, int friendAccountId, { String? deviceId, int? accountId, String? gameType, String? appKey, String? notificationMessage, }) async {
    final response = await friendRequestWithHttpInfo(version, friendAccountId,  deviceId: deviceId, accountId: accountId, gameType: gameType, appKey: appKey, notificationMessage: notificationMessage, );
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

  /// Get Sent Friend Requests
  ///
  /// Gets the connection sent friend requests.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [String] deviceId:
  ///   the ID of the device
  ///
  /// * [int] accountId:
  ///   the id of the account
  Future<Response> getConnectionSentFriendRequestsWithHttpInfo(num version, { String? deviceId, int? accountId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/consumer/connection/getRequested'
      .replaceAll('{version}', version.toString());

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

  /// Get Sent Friend Requests
  ///
  /// Gets the connection sent friend requests.
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [String] deviceId:
  ///   the ID of the device
  ///
  /// * [int] accountId:
  ///   the id of the account
  Future<ConnectionListResponse?> getConnectionSentFriendRequests(num version, { String? deviceId, int? accountId, }) async {
    final response = await getConnectionSentFriendRequestsWithHttpInfo(version,  deviceId: deviceId, accountId: accountId, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ConnectionListResponse',) as ConnectionListResponse;
    
    }
    return null;
  }

  /// Search Connections
  ///
  /// Gets the connections.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [bool] returnNulls (required):
  ///   whether to return nulls or not
  ///
  /// * [String] filter (required):
  ///   a comma separated list of ConnectionApiMap. (NOTE on FOLLOWER vs FOLLOWING: FOLLOWER will get me a list of followers, FOLLOWING will get me a list of people I am following)
  ///
  /// * [String] sortField (required):
  ///   sorts the response list by ConnectionApiMap
  ///
  /// * [bool] descending (required):
  ///   sorts the response list by descending order if true
  ///
  /// * [int] start (required):
  ///   start index of the pagination
  ///
  /// * [int] limit (required):
  ///   limit of the pagination
  ///
  /// * [String] deviceId:
  ///   the device id (deviceId or accountId required)
  ///
  /// * [int] accountId:
  ///   the account id (deviceId or accountId required)
  ///
  /// * [int] connectionAccountId:
  ///   optional parameter to search on other account's connections
  ///
  /// * [String] q:
  ///   This parameter is deprecated.
  ///
  /// * [String] keyword:
  ///   an optional keyword to search on, this parameter is ignored if empty
  ///
  /// * [int] i:
  ///   This parameter is deprecated.
  ///
  /// * [int] l:
  ///   This parameter is deprecated.
  ///
  /// * [double] latitude:
  ///   the current latitude of the user
  ///
  /// * [double] longitude:
  ///   the current longitude of the user
  Future<Response> getConnectionsWithHttpInfo(num version, bool returnNulls, String filter, String sortField, bool descending, int start, int limit, { String? deviceId, int? accountId, int? connectionAccountId, String? q, String? keyword, int? i, int? l, double? latitude, double? longitude, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/consumer/connection/get'
      .replaceAll('{version}', version.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'returnNulls', returnNulls));
    if (deviceId != null) {
      queryParams.addAll(_queryParams('', 'deviceId', deviceId));
    }
    if (accountId != null) {
      queryParams.addAll(_queryParams('', 'accountId', accountId));
    }
    if (connectionAccountId != null) {
      queryParams.addAll(_queryParams('', 'connectionAccountId', connectionAccountId));
    }
      queryParams.addAll(_queryParams('', 'filter', filter));
    if (q != null) {
      queryParams.addAll(_queryParams('', 'q', q));
    }
    if (keyword != null) {
      queryParams.addAll(_queryParams('', 'keyword', keyword));
    }
      queryParams.addAll(_queryParams('', 'sortField', sortField));
      queryParams.addAll(_queryParams('', 'descending', descending));
    if (i != null) {
      queryParams.addAll(_queryParams('', '_i', i));
    }
      queryParams.addAll(_queryParams('', 'start', start));
    if (l != null) {
      queryParams.addAll(_queryParams('', '_l', l));
    }
      queryParams.addAll(_queryParams('', 'limit', limit));
    if (latitude != null) {
      queryParams.addAll(_queryParams('', 'latitude', latitude));
    }
    if (longitude != null) {
      queryParams.addAll(_queryParams('', 'longitude', longitude));
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

  /// Search Connections
  ///
  /// Gets the connections.
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [bool] returnNulls (required):
  ///   whether to return nulls or not
  ///
  /// * [String] filter (required):
  ///   a comma separated list of ConnectionApiMap. (NOTE on FOLLOWER vs FOLLOWING: FOLLOWER will get me a list of followers, FOLLOWING will get me a list of people I am following)
  ///
  /// * [String] sortField (required):
  ///   sorts the response list by ConnectionApiMap
  ///
  /// * [bool] descending (required):
  ///   sorts the response list by descending order if true
  ///
  /// * [int] start (required):
  ///   start index of the pagination
  ///
  /// * [int] limit (required):
  ///   limit of the pagination
  ///
  /// * [String] deviceId:
  ///   the device id (deviceId or accountId required)
  ///
  /// * [int] accountId:
  ///   the account id (deviceId or accountId required)
  ///
  /// * [int] connectionAccountId:
  ///   optional parameter to search on other account's connections
  ///
  /// * [String] q:
  ///   This parameter is deprecated.
  ///
  /// * [String] keyword:
  ///   an optional keyword to search on, this parameter is ignored if empty
  ///
  /// * [int] i:
  ///   This parameter is deprecated.
  ///
  /// * [int] l:
  ///   This parameter is deprecated.
  ///
  /// * [double] latitude:
  ///   the current latitude of the user
  ///
  /// * [double] longitude:
  ///   the current longitude of the user
  Future<ConnectionListResponse?> getConnections(num version, bool returnNulls, String filter, String sortField, bool descending, int start, int limit, { String? deviceId, int? accountId, int? connectionAccountId, String? q, String? keyword, int? i, int? l, double? latitude, double? longitude, }) async {
    final response = await getConnectionsWithHttpInfo(version, returnNulls, filter, sortField, descending, start, limit,  deviceId: deviceId, accountId: accountId, connectionAccountId: connectionAccountId, q: q, keyword: keyword, i: i, l: l, latitude: latitude, longitude: longitude, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ConnectionListResponse',) as ConnectionListResponse;
    
    }
    return null;
  }

  /// Get Connection Group
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [bool] combineConnections (required):
  ///   whether to combine connections or not
  ///
  /// * [String] deviceId:
  ///   the device id (deviceId or accountId required)
  ///
  /// * [int] accountId:
  ///   the account id of the user (deviceId or accountId required)
  ///
  /// * [int] groupId:
  ///   the group id
  ///
  /// * [double] latitude:
  ///   the current latitude of the user
  ///
  /// * [double] longitude:
  ///   the current longitude of the user
  Future<Response> getGroupDetailsWithHttpInfo(num version, bool combineConnections, { String? deviceId, int? accountId, int? groupId, double? latitude, double? longitude, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/consumer/connection/group/details/get'
      .replaceAll('{version}', version.toString());

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
    if (groupId != null) {
      queryParams.addAll(_queryParams('', 'groupId', groupId));
    }
      queryParams.addAll(_queryParams('', 'combineConnections', combineConnections));
    if (latitude != null) {
      queryParams.addAll(_queryParams('', 'latitude', latitude));
    }
    if (longitude != null) {
      queryParams.addAll(_queryParams('', 'longitude', longitude));
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

  /// Get Connection Group
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [bool] combineConnections (required):
  ///   whether to combine connections or not
  ///
  /// * [String] deviceId:
  ///   the device id (deviceId or accountId required)
  ///
  /// * [int] accountId:
  ///   the account id of the user (deviceId or accountId required)
  ///
  /// * [int] groupId:
  ///   the group id
  ///
  /// * [double] latitude:
  ///   the current latitude of the user
  ///
  /// * [double] longitude:
  ///   the current longitude of the user
  Future<ConnectionGroupResponse?> getGroupDetails(num version, bool combineConnections, { String? deviceId, int? accountId, int? groupId, double? latitude, double? longitude, }) async {
    final response = await getGroupDetailsWithHttpInfo(version, combineConnections,  deviceId: deviceId, accountId: accountId, groupId: groupId, latitude: latitude, longitude: longitude, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ConnectionGroupResponse',) as ConnectionGroupResponse;
    
    }
    return null;
  }

  /// Search Connection Groups
  ///
  /// Gets a user's private groups and default groups.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [String] sortField (required):
  ///   the field to sort by
  ///
  /// * [bool] descending (required):
  ///   whether to return results in descending or ascending order
  ///
  /// * [bool] activeOnly (required):
  ///   to search on active only or not
  ///
  /// * [int] start (required):
  ///   The start of the pagination
  ///
  /// * [int] limit (required):
  ///   the limit of the pagination
  ///
  /// * [String] deviceId:
  ///   the device id (deviceId or accountId required)
  ///
  /// * [int] accountId:
  ///   the account id of the user (deviceId or accountId required)
  ///
  /// * [double] latitude:
  ///   the current latitude of the user
  ///
  /// * [double] longitude:
  ///   the current longitude of the user
  ///
  /// * [String] keyword:
  ///   keyword search string
  Future<Response> groupSearchWithHttpInfo(num version, String sortField, bool descending, bool activeOnly, int start, int limit, { String? deviceId, int? accountId, double? latitude, double? longitude, String? keyword, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/connection/group/search'
      .replaceAll('{version}', version.toString());

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
    if (latitude != null) {
      queryParams.addAll(_queryParams('', 'latitude', latitude));
    }
    if (longitude != null) {
      queryParams.addAll(_queryParams('', 'longitude', longitude));
    }
    if (keyword != null) {
      queryParams.addAll(_queryParams('', 'keyword', keyword));
    }
      queryParams.addAll(_queryParams('', 'sortField', sortField));
      queryParams.addAll(_queryParams('', 'descending', descending));
      queryParams.addAll(_queryParams('', 'activeOnly', activeOnly));
      queryParams.addAll(_queryParams('', 'start', start));
      queryParams.addAll(_queryParams('', 'limit', limit));

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

  /// Search Connection Groups
  ///
  /// Gets a user's private groups and default groups.
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [String] sortField (required):
  ///   the field to sort by
  ///
  /// * [bool] descending (required):
  ///   whether to return results in descending or ascending order
  ///
  /// * [bool] activeOnly (required):
  ///   to search on active only or not
  ///
  /// * [int] start (required):
  ///   The start of the pagination
  ///
  /// * [int] limit (required):
  ///   the limit of the pagination
  ///
  /// * [String] deviceId:
  ///   the device id (deviceId or accountId required)
  ///
  /// * [int] accountId:
  ///   the account id of the user (deviceId or accountId required)
  ///
  /// * [double] latitude:
  ///   the current latitude of the user
  ///
  /// * [double] longitude:
  ///   the current longitude of the user
  ///
  /// * [String] keyword:
  ///   keyword search string
  Future<List<ConnectionInfoResponse>?> groupSearch(num version, String sortField, bool descending, bool activeOnly, int start, int limit, { String? deviceId, int? accountId, double? latitude, double? longitude, String? keyword, }) async {
    final response = await groupSearchWithHttpInfo(version, sortField, descending, activeOnly, start, limit,  deviceId: deviceId, accountId: accountId, latitude: latitude, longitude: longitude, keyword: keyword, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<ConnectionInfoResponse>') as List)
        .cast<ConnectionInfoResponse>()
        .toList(growable: false);

    }
    return null;
  }

  /// Delete Connection
  ///
  /// Removes the connection from group.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [bool] returnNulls (required):
  ///   whether to return nulls or not
  ///
  /// * [int] groupId (required):
  ///   the group id
  ///
  /// * [String] deviceId:
  ///   the device id (deviceId or accountId required)
  ///
  /// * [int] accountId:
  ///   the account id of the user (deviceId or accountId required)
  ///
  /// * [int] connectionId:
  ///   the connection id
  ///
  /// * [int] connectionAccountId:
  ///   the connection account id
  ///
  /// * [int] pendingId:
  ///   the pending id
  ///
  /// * [double] latitude:
  ///   the current latitude of the user
  ///
  /// * [double] longitude:
  ///   the current longitude of the user
  Future<Response> removeConnectionFromGroupWithHttpInfo(num version, bool returnNulls, int groupId, { String? deviceId, int? accountId, int? connectionId, int? connectionAccountId, int? pendingId, double? latitude, double? longitude, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/consumer/connection/group/removeConnection'
      .replaceAll('{version}', version.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'returnNulls', returnNulls));
    if (deviceId != null) {
      queryParams.addAll(_queryParams('', 'deviceId', deviceId));
    }
    if (accountId != null) {
      queryParams.addAll(_queryParams('', 'accountId', accountId));
    }
    if (connectionId != null) {
      queryParams.addAll(_queryParams('', 'connectionId', connectionId));
    }
    if (connectionAccountId != null) {
      queryParams.addAll(_queryParams('', 'connectionAccountId', connectionAccountId));
    }
    if (pendingId != null) {
      queryParams.addAll(_queryParams('', 'pendingId', pendingId));
    }
      queryParams.addAll(_queryParams('', 'groupId', groupId));
    if (latitude != null) {
      queryParams.addAll(_queryParams('', 'latitude', latitude));
    }
    if (longitude != null) {
      queryParams.addAll(_queryParams('', 'longitude', longitude));
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

  /// Delete Connection
  ///
  /// Removes the connection from group.
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [bool] returnNulls (required):
  ///   whether to return nulls or not
  ///
  /// * [int] groupId (required):
  ///   the group id
  ///
  /// * [String] deviceId:
  ///   the device id (deviceId or accountId required)
  ///
  /// * [int] accountId:
  ///   the account id of the user (deviceId or accountId required)
  ///
  /// * [int] connectionId:
  ///   the connection id
  ///
  /// * [int] connectionAccountId:
  ///   the connection account id
  ///
  /// * [int] pendingId:
  ///   the pending id
  ///
  /// * [double] latitude:
  ///   the current latitude of the user
  ///
  /// * [double] longitude:
  ///   the current longitude of the user
  Future<SirqulResponse?> removeConnectionFromGroup(num version, bool returnNulls, int groupId, { String? deviceId, int? accountId, int? connectionId, int? connectionAccountId, int? pendingId, double? latitude, double? longitude, }) async {
    final response = await removeConnectionFromGroupWithHttpInfo(version, returnNulls, groupId,  deviceId: deviceId, accountId: accountId, connectionId: connectionId, connectionAccountId: connectionAccountId, pendingId: pendingId, latitude: latitude, longitude: longitude, );
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

  /// Remove Connections
  ///
  /// Remove a list of connections from a group.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] connectionGroupId (required):
  ///   connection group id
  ///
  /// * [String] deviceId:
  ///   the device id (deviceId or accountId required)
  ///
  /// * [int] accountId:
  ///   the account id of the user (deviceId or accountId required)
  ///
  /// * [String] connectionIds:
  ///   comma separated list of connection ids
  ///
  /// * [String] connectionAccountIds:
  ///   comma separated list of connection account ids
  ///
  /// * [double] latitude:
  ///   the current latitude of the user
  ///
  /// * [double] longitude:
  ///   the current longitude of the user
  Future<Response> removeConnectionsFromGroupWithHttpInfo(num version, int connectionGroupId, { String? deviceId, int? accountId, String? connectionIds, String? connectionAccountIds, double? latitude, double? longitude, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/connection/group/removeConnections'
      .replaceAll('{version}', version.toString());

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
    if (connectionIds != null) {
      queryParams.addAll(_queryParams('', 'connectionIds', connectionIds));
    }
    if (connectionAccountIds != null) {
      queryParams.addAll(_queryParams('', 'connectionAccountIds', connectionAccountIds));
    }
      queryParams.addAll(_queryParams('', 'connectionGroupId', connectionGroupId));
    if (latitude != null) {
      queryParams.addAll(_queryParams('', 'latitude', latitude));
    }
    if (longitude != null) {
      queryParams.addAll(_queryParams('', 'longitude', longitude));
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

  /// Remove Connections
  ///
  /// Remove a list of connections from a group.
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] connectionGroupId (required):
  ///   connection group id
  ///
  /// * [String] deviceId:
  ///   the device id (deviceId or accountId required)
  ///
  /// * [int] accountId:
  ///   the account id of the user (deviceId or accountId required)
  ///
  /// * [String] connectionIds:
  ///   comma separated list of connection ids
  ///
  /// * [String] connectionAccountIds:
  ///   comma separated list of connection account ids
  ///
  /// * [double] latitude:
  ///   the current latitude of the user
  ///
  /// * [double] longitude:
  ///   the current longitude of the user
  Future<SirqulResponse?> removeConnectionsFromGroup(num version, int connectionGroupId, { String? deviceId, int? accountId, String? connectionIds, String? connectionAccountIds, double? latitude, double? longitude, }) async {
    final response = await removeConnectionsFromGroupWithHttpInfo(version, connectionGroupId,  deviceId: deviceId, accountId: accountId, connectionIds: connectionIds, connectionAccountIds: connectionAccountIds, latitude: latitude, longitude: longitude, );
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

  /// Delete Connection Group
  ///
  /// Remove a user's group.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [bool] returnNulls (required):
  ///   whether to return nulls or not
  ///
  /// * [int] groupId (required):
  ///   the group id
  ///
  /// * [String] deviceId:
  ///   the device id (deviceId or accountId required)
  ///
  /// * [int] accountId:
  ///   the account id of the user (deviceId or accountId required)
  ///
  /// * [double] latitude:
  ///   the current latitude of the user
  ///
  /// * [double] longitude:
  ///   the current longitude of the user
  Future<Response> removeGroupWithHttpInfo(num version, bool returnNulls, int groupId, { String? deviceId, int? accountId, double? latitude, double? longitude, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/consumer/connection/group/remove'
      .replaceAll('{version}', version.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'returnNulls', returnNulls));
    if (deviceId != null) {
      queryParams.addAll(_queryParams('', 'deviceId', deviceId));
    }
    if (accountId != null) {
      queryParams.addAll(_queryParams('', 'accountId', accountId));
    }
      queryParams.addAll(_queryParams('', 'groupId', groupId));
    if (latitude != null) {
      queryParams.addAll(_queryParams('', 'latitude', latitude));
    }
    if (longitude != null) {
      queryParams.addAll(_queryParams('', 'longitude', longitude));
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

  /// Delete Connection Group
  ///
  /// Remove a user's group.
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [bool] returnNulls (required):
  ///   whether to return nulls or not
  ///
  /// * [int] groupId (required):
  ///   the group id
  ///
  /// * [String] deviceId:
  ///   the device id (deviceId or accountId required)
  ///
  /// * [int] accountId:
  ///   the account id of the user (deviceId or accountId required)
  ///
  /// * [double] latitude:
  ///   the current latitude of the user
  ///
  /// * [double] longitude:
  ///   the current longitude of the user
  Future<SirqulResponse?> removeGroup(num version, bool returnNulls, int groupId, { String? deviceId, int? accountId, double? latitude, double? longitude, }) async {
    final response = await removeGroupWithHttpInfo(version, returnNulls, groupId,  deviceId: deviceId, accountId: accountId, latitude: latitude, longitude: longitude, );
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

  /// Remove Connection Groups
  ///
  /// Remove sub groups from a group
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [bool] returnNulls (required):
  ///   whether to return nulls or not
  ///
  /// * [int] groupId (required):
  ///   the parent group id
  ///
  /// * [String] subGroupIds (required):
  ///   comma separated list of group IDs to remove from the parent group
  ///
  /// * [String] deviceId:
  ///   the device id (deviceId or accountId required)
  ///
  /// * [int] accountId:
  ///   the account id of the user (deviceId or accountId required)
  ///
  /// * [double] latitude:
  ///   the current latitude of the user
  ///
  /// * [double] longitude:
  ///   the current longitude of the user
  Future<Response> removeSubGroupsWithHttpInfo(num version, bool returnNulls, int groupId, String subGroupIds, { String? deviceId, int? accountId, double? latitude, double? longitude, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/consumer/connection/group/removeSubGroup'
      .replaceAll('{version}', version.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'returnNulls', returnNulls));
    if (deviceId != null) {
      queryParams.addAll(_queryParams('', 'deviceId', deviceId));
    }
    if (accountId != null) {
      queryParams.addAll(_queryParams('', 'accountId', accountId));
    }
      queryParams.addAll(_queryParams('', 'groupId', groupId));
      queryParams.addAll(_queryParams('', 'subGroupIds', subGroupIds));
    if (latitude != null) {
      queryParams.addAll(_queryParams('', 'latitude', latitude));
    }
    if (longitude != null) {
      queryParams.addAll(_queryParams('', 'longitude', longitude));
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

  /// Remove Connection Groups
  ///
  /// Remove sub groups from a group
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [bool] returnNulls (required):
  ///   whether to return nulls or not
  ///
  /// * [int] groupId (required):
  ///   the parent group id
  ///
  /// * [String] subGroupIds (required):
  ///   comma separated list of group IDs to remove from the parent group
  ///
  /// * [String] deviceId:
  ///   the device id (deviceId or accountId required)
  ///
  /// * [int] accountId:
  ///   the account id of the user (deviceId or accountId required)
  ///
  /// * [double] latitude:
  ///   the current latitude of the user
  ///
  /// * [double] longitude:
  ///   the current longitude of the user
  Future<SirqulResponse?> removeSubGroups(num version, bool returnNulls, int groupId, String subGroupIds, { String? deviceId, int? accountId, double? latitude, double? longitude, }) async {
    final response = await removeSubGroupsWithHttpInfo(version, returnNulls, groupId, subGroupIds,  deviceId: deviceId, accountId: accountId, latitude: latitude, longitude: longitude, );
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

  /// Search Possible Connections
  ///
  /// Search for accounts that the user may not have a connection with.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [bool] returnNulls (required):
  ///   return all json attributes if true. defualt is true.
  ///
  /// * [int] start (required):
  ///   start index of the pagination
  ///
  /// * [int] limit (required):
  ///   limit of the pagination
  ///
  /// * [String] deviceId:
  ///   the device id (deviceId or accountId required)
  ///
  /// * [int] accountId:
  ///   the account id (deviceId or accountId required)
  ///
  /// * [String] q:
  ///   This parameter is deprecated.
  ///
  /// * [String] keyword:
  ///   keyword to search on, optional and this parameter is ignored if empt
  ///
  /// * [double] latitude:
  ///   the current latitude of the user
  ///
  /// * [double] longitude:
  ///   the current longitude of the user
  ///
  /// * [String] gameType:
  ///   This parameter is deprecated.
  ///
  /// * [String] appKey:
  ///   the public application key, if provided only looks for users of that application
  ///
  /// * [int] i:
  ///   This parameter is deprecated.
  ///
  /// * [int] l:
  ///   This parameter is deprecated.
  ///
  /// * [String] sortField:
  ///   the field to sort on
  ///
  /// * [bool] hasLocation:
  ///   whether the search has location or not
  Future<Response> searchConnectionsWithHttpInfo(num version, bool returnNulls, int start, int limit, { String? deviceId, int? accountId, String? q, String? keyword, double? latitude, double? longitude, String? gameType, String? appKey, int? i, int? l, String? sortField, bool? hasLocation, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/connection/search'
      .replaceAll('{version}', version.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'returnNulls', returnNulls));
    if (deviceId != null) {
      queryParams.addAll(_queryParams('', 'deviceId', deviceId));
    }
    if (accountId != null) {
      queryParams.addAll(_queryParams('', 'accountId', accountId));
    }
    if (q != null) {
      queryParams.addAll(_queryParams('', 'q', q));
    }
    if (keyword != null) {
      queryParams.addAll(_queryParams('', 'keyword', keyword));
    }
    if (latitude != null) {
      queryParams.addAll(_queryParams('', 'latitude', latitude));
    }
    if (longitude != null) {
      queryParams.addAll(_queryParams('', 'longitude', longitude));
    }
    if (gameType != null) {
      queryParams.addAll(_queryParams('', 'gameType', gameType));
    }
    if (appKey != null) {
      queryParams.addAll(_queryParams('', 'appKey', appKey));
    }
    if (i != null) {
      queryParams.addAll(_queryParams('', '_i', i));
    }
      queryParams.addAll(_queryParams('', 'start', start));
    if (l != null) {
      queryParams.addAll(_queryParams('', '_l', l));
    }
      queryParams.addAll(_queryParams('', 'limit', limit));
    if (sortField != null) {
      queryParams.addAll(_queryParams('', 'sortField', sortField));
    }
    if (hasLocation != null) {
      queryParams.addAll(_queryParams('', 'hasLocation', hasLocation));
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

  /// Search Possible Connections
  ///
  /// Search for accounts that the user may not have a connection with.
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [bool] returnNulls (required):
  ///   return all json attributes if true. defualt is true.
  ///
  /// * [int] start (required):
  ///   start index of the pagination
  ///
  /// * [int] limit (required):
  ///   limit of the pagination
  ///
  /// * [String] deviceId:
  ///   the device id (deviceId or accountId required)
  ///
  /// * [int] accountId:
  ///   the account id (deviceId or accountId required)
  ///
  /// * [String] q:
  ///   This parameter is deprecated.
  ///
  /// * [String] keyword:
  ///   keyword to search on, optional and this parameter is ignored if empt
  ///
  /// * [double] latitude:
  ///   the current latitude of the user
  ///
  /// * [double] longitude:
  ///   the current longitude of the user
  ///
  /// * [String] gameType:
  ///   This parameter is deprecated.
  ///
  /// * [String] appKey:
  ///   the public application key, if provided only looks for users of that application
  ///
  /// * [int] i:
  ///   This parameter is deprecated.
  ///
  /// * [int] l:
  ///   This parameter is deprecated.
  ///
  /// * [String] sortField:
  ///   the field to sort on
  ///
  /// * [bool] hasLocation:
  ///   whether the search has location or not
  Future<ConnectionListResponse?> searchConnections(num version, bool returnNulls, int start, int limit, { String? deviceId, int? accountId, String? q, String? keyword, double? latitude, double? longitude, String? gameType, String? appKey, int? i, int? l, String? sortField, bool? hasLocation, }) async {
    final response = await searchConnectionsWithHttpInfo(version, returnNulls, start, limit,  deviceId: deviceId, accountId: accountId, q: q, keyword: keyword, latitude: latitude, longitude: longitude, gameType: gameType, appKey: appKey, i: i, l: l, sortField: sortField, hasLocation: hasLocation, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ConnectionListResponse',) as ConnectionListResponse;
    
    }
    return null;
  }
}
