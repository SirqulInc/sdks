//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class UserPermissionsApi {
  UserPermissionsApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Add User
  ///
  /// Adds a user to a permissionable object.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [String] permissionableType (required):
  ///   the permissionable type of the object
  ///
  /// * [int] permissionableId (required):
  ///   the id of the permissionable object
  ///
  /// * [String] deviceId:
  ///   the device id (deviceId or accountId required)
  ///
  /// * [int] accountId:
  ///   the account id of the user (deviceId or accountId required)
  ///
  /// * [bool] read:
  ///   the read permission of the users/groups
  ///
  /// * [bool] write:
  ///   the write permission of the users/groups
  ///
  /// * [bool] delete:
  ///   the delete permission of the users/groups
  ///
  /// * [bool] add:
  ///   the add permission of the users/groups
  ///
  /// * [String] connectionIds:
  ///   a comma separated list of connection ids (NOT the account ids)
  ///
  /// * [String] connectionAccountIds:
  ///   a comma separated list of account ids
  ///
  /// * [String] connectionGroupIds:
  ///   a comma separated list of connection group ids (these are groups made by the user)
  ///
  /// * [bool] pending:
  ///   sets whether the added users are marked as pending (and will require the album admins to accept) - admins can set this to false (to accept)
  ///
  /// * [bool] admin:
  ///   sets whether the added users will become admins or not
  ///
  /// * [bool] includeFriendGroup:
  ///   flag to determine whether to include the built-in \"friends\" group
  ///
  /// * [double] latitude:
  ///   the current latitude of the user
  ///
  /// * [double] longitude:
  ///   the current longitude of the user
  ///
  /// * [String] audienceIds:
  ///   comma separated list of audience ids. This is a feature only available to the permissionable's application owner (and its employees). This will add all users from these audiences to the permissionable object. Notifications will not be sent to users if this feature is used.
  Future<Response> addUsersToPermissionableWithHttpInfo(num version, String permissionableType, int permissionableId, { String? deviceId, int? accountId, bool? read, bool? write, bool? delete, bool? add, String? connectionIds, String? connectionAccountIds, String? connectionGroupIds, bool? pending, bool? admin, bool? includeFriendGroup, double? latitude, double? longitude, String? audienceIds, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/consumer/permissions/add'
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
      queryParams.addAll(_queryParams('', 'permissionableType', permissionableType));
      queryParams.addAll(_queryParams('', 'permissionableId', permissionableId));
    if (read != null) {
      queryParams.addAll(_queryParams('', 'read', read));
    }
    if (write != null) {
      queryParams.addAll(_queryParams('', 'write', write));
    }
    if (delete != null) {
      queryParams.addAll(_queryParams('', 'delete', delete));
    }
    if (add != null) {
      queryParams.addAll(_queryParams('', 'add', add));
    }
    if (connectionIds != null) {
      queryParams.addAll(_queryParams('', 'connectionIds', connectionIds));
    }
    if (connectionAccountIds != null) {
      queryParams.addAll(_queryParams('', 'connectionAccountIds', connectionAccountIds));
    }
    if (connectionGroupIds != null) {
      queryParams.addAll(_queryParams('', 'connectionGroupIds', connectionGroupIds));
    }
    if (pending != null) {
      queryParams.addAll(_queryParams('', 'pending', pending));
    }
    if (admin != null) {
      queryParams.addAll(_queryParams('', 'admin', admin));
    }
    if (includeFriendGroup != null) {
      queryParams.addAll(_queryParams('', 'includeFriendGroup', includeFriendGroup));
    }
    if (latitude != null) {
      queryParams.addAll(_queryParams('', 'latitude', latitude));
    }
    if (longitude != null) {
      queryParams.addAll(_queryParams('', 'longitude', longitude));
    }
    if (audienceIds != null) {
      queryParams.addAll(_queryParams('', 'audienceIds', audienceIds));
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

  /// Add User
  ///
  /// Adds a user to a permissionable object.
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [String] permissionableType (required):
  ///   the permissionable type of the object
  ///
  /// * [int] permissionableId (required):
  ///   the id of the permissionable object
  ///
  /// * [String] deviceId:
  ///   the device id (deviceId or accountId required)
  ///
  /// * [int] accountId:
  ///   the account id of the user (deviceId or accountId required)
  ///
  /// * [bool] read:
  ///   the read permission of the users/groups
  ///
  /// * [bool] write:
  ///   the write permission of the users/groups
  ///
  /// * [bool] delete:
  ///   the delete permission of the users/groups
  ///
  /// * [bool] add:
  ///   the add permission of the users/groups
  ///
  /// * [String] connectionIds:
  ///   a comma separated list of connection ids (NOT the account ids)
  ///
  /// * [String] connectionAccountIds:
  ///   a comma separated list of account ids
  ///
  /// * [String] connectionGroupIds:
  ///   a comma separated list of connection group ids (these are groups made by the user)
  ///
  /// * [bool] pending:
  ///   sets whether the added users are marked as pending (and will require the album admins to accept) - admins can set this to false (to accept)
  ///
  /// * [bool] admin:
  ///   sets whether the added users will become admins or not
  ///
  /// * [bool] includeFriendGroup:
  ///   flag to determine whether to include the built-in \"friends\" group
  ///
  /// * [double] latitude:
  ///   the current latitude of the user
  ///
  /// * [double] longitude:
  ///   the current longitude of the user
  ///
  /// * [String] audienceIds:
  ///   comma separated list of audience ids. This is a feature only available to the permissionable's application owner (and its employees). This will add all users from these audiences to the permissionable object. Notifications will not be sent to users if this feature is used.
  Future<SirqulResponse?> addUsersToPermissionable(num version, String permissionableType, int permissionableId, { String? deviceId, int? accountId, bool? read, bool? write, bool? delete, bool? add, String? connectionIds, String? connectionAccountIds, String? connectionGroupIds, bool? pending, bool? admin, bool? includeFriendGroup, double? latitude, double? longitude, String? audienceIds, }) async {
    final response = await addUsersToPermissionableWithHttpInfo(version, permissionableType, permissionableId,  deviceId: deviceId, accountId: accountId, read: read, write: write, delete: delete, add: add, connectionIds: connectionIds, connectionAccountIds: connectionAccountIds, connectionGroupIds: connectionGroupIds, pending: pending, admin: admin, includeFriendGroup: includeFriendGroup, latitude: latitude, longitude: longitude, audienceIds: audienceIds, );
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

  /// Approve Permissionable
  ///
  /// Sets the approval status of a permissionable object.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [String] permissionableType (required):
  ///   The permissionable type of the object
  ///
  /// * [int] permissionableId (required):
  ///   The id of the permissionable object
  ///
  /// * [String] deviceId:
  ///   A unique ID given by the device (deviceId or accountId required)
  ///
  /// * [int] accountId:
  ///   The account ID of the user (deviceId or accountId required)
  ///
  /// * [String] approvalStatus:
  ///   The approval status to set {PENDING, REJECTED, APPROVED, FEATURED}
  Future<Response> approvePermissionableWithHttpInfo(num version, String permissionableType, int permissionableId, { String? deviceId, int? accountId, String? approvalStatus, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/permissionable/approve'
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
      queryParams.addAll(_queryParams('', 'permissionableType', permissionableType));
      queryParams.addAll(_queryParams('', 'permissionableId', permissionableId));
    if (approvalStatus != null) {
      queryParams.addAll(_queryParams('', 'approvalStatus', approvalStatus));
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

  /// Approve Permissionable
  ///
  /// Sets the approval status of a permissionable object.
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [String] permissionableType (required):
  ///   The permissionable type of the object
  ///
  /// * [int] permissionableId (required):
  ///   The id of the permissionable object
  ///
  /// * [String] deviceId:
  ///   A unique ID given by the device (deviceId or accountId required)
  ///
  /// * [int] accountId:
  ///   The account ID of the user (deviceId or accountId required)
  ///
  /// * [String] approvalStatus:
  ///   The approval status to set {PENDING, REJECTED, APPROVED, FEATURED}
  Future<SirqulResponse?> approvePermissionable(num version, String permissionableType, int permissionableId, { String? deviceId, int? accountId, String? approvalStatus, }) async {
    final response = await approvePermissionableWithHttpInfo(version, permissionableType, permissionableId,  deviceId: deviceId, accountId: accountId, approvalStatus: approvalStatus, );
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

  /// Leave
  ///
  /// Used when the user wants to leave from someone else's permissionable object
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [String] permissionableType (required):
  ///   the permissionable type PermissionableType
  ///
  /// * [int] permissionableId (required):
  ///   the id of the permissionable object
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
  Future<Response> leaveFromPermissionableWithHttpInfo(num version, String permissionableType, int permissionableId, { String? deviceId, int? accountId, double? latitude, double? longitude, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/consumer/permissions/leave'
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
      queryParams.addAll(_queryParams('', 'permissionableType', permissionableType));
      queryParams.addAll(_queryParams('', 'permissionableId', permissionableId));
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

  /// Leave
  ///
  /// Used when the user wants to leave from someone else's permissionable object
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [String] permissionableType (required):
  ///   the permissionable type PermissionableType
  ///
  /// * [int] permissionableId (required):
  ///   the id of the permissionable object
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
  Future<SirqulResponse?> leaveFromPermissionable(num version, String permissionableType, int permissionableId, { String? deviceId, int? accountId, double? latitude, double? longitude, }) async {
    final response = await leaveFromPermissionableWithHttpInfo(version, permissionableType, permissionableId,  deviceId: deviceId, accountId: accountId, latitude: latitude, longitude: longitude, );
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

  /// Remove User
  ///
  /// Used to remove someone (assuming they have permission) from a permissionable object
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [String] permissionableType (required):
  ///   the permissionable type of the object
  ///
  /// * [int] permissionableId (required):
  ///   the id of the permissionable object
  ///
  /// * [String] deviceId:
  ///   the device id (deviceId or accountId required)
  ///
  /// * [int] accountId:
  ///   the account id of the user (deviceId or accountId required)
  ///
  /// * [String] connectionIds:
  ///   a comma separated list of connection ids (NOT the account ids)
  ///
  /// * [String] connectionAccountIds:
  ///   a comma separated list of account ids
  ///
  /// * [String] connectionGroupIds:
  ///   a comma separated list of connection group ids (these are groups made by the user)
  ///
  /// * [bool] removeFriendGroup:
  ///   flag to determine whether to remove the built-in \"friends\" group
  ///
  /// * [double] latitude:
  ///   the current latitude of the user
  ///
  /// * [double] longitude:
  ///   the current longitude of the user
  ///
  /// * [String] audienceIds:
  ///   comma separated list of audience ids. This will remove all users from these audiences from the permissionable object. Notifications will not be sent to users if this feature is used.
  Future<Response> removeUsersFromPermissionableWithHttpInfo(num version, String permissionableType, int permissionableId, { String? deviceId, int? accountId, String? connectionIds, String? connectionAccountIds, String? connectionGroupIds, bool? removeFriendGroup, double? latitude, double? longitude, String? audienceIds, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/consumer/permissions/remove'
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
      queryParams.addAll(_queryParams('', 'permissionableType', permissionableType));
      queryParams.addAll(_queryParams('', 'permissionableId', permissionableId));
    if (connectionIds != null) {
      queryParams.addAll(_queryParams('', 'connectionIds', connectionIds));
    }
    if (connectionAccountIds != null) {
      queryParams.addAll(_queryParams('', 'connectionAccountIds', connectionAccountIds));
    }
    if (connectionGroupIds != null) {
      queryParams.addAll(_queryParams('', 'connectionGroupIds', connectionGroupIds));
    }
    if (removeFriendGroup != null) {
      queryParams.addAll(_queryParams('', 'removeFriendGroup', removeFriendGroup));
    }
    if (latitude != null) {
      queryParams.addAll(_queryParams('', 'latitude', latitude));
    }
    if (longitude != null) {
      queryParams.addAll(_queryParams('', 'longitude', longitude));
    }
    if (audienceIds != null) {
      queryParams.addAll(_queryParams('', 'audienceIds', audienceIds));
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

  /// Remove User
  ///
  /// Used to remove someone (assuming they have permission) from a permissionable object
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [String] permissionableType (required):
  ///   the permissionable type of the object
  ///
  /// * [int] permissionableId (required):
  ///   the id of the permissionable object
  ///
  /// * [String] deviceId:
  ///   the device id (deviceId or accountId required)
  ///
  /// * [int] accountId:
  ///   the account id of the user (deviceId or accountId required)
  ///
  /// * [String] connectionIds:
  ///   a comma separated list of connection ids (NOT the account ids)
  ///
  /// * [String] connectionAccountIds:
  ///   a comma separated list of account ids
  ///
  /// * [String] connectionGroupIds:
  ///   a comma separated list of connection group ids (these are groups made by the user)
  ///
  /// * [bool] removeFriendGroup:
  ///   flag to determine whether to remove the built-in \"friends\" group
  ///
  /// * [double] latitude:
  ///   the current latitude of the user
  ///
  /// * [double] longitude:
  ///   the current longitude of the user
  ///
  /// * [String] audienceIds:
  ///   comma separated list of audience ids. This will remove all users from these audiences from the permissionable object. Notifications will not be sent to users if this feature is used.
  Future<SirqulResponse?> removeUsersFromPermissionable(num version, String permissionableType, int permissionableId, { String? deviceId, int? accountId, String? connectionIds, String? connectionAccountIds, String? connectionGroupIds, bool? removeFriendGroup, double? latitude, double? longitude, String? audienceIds, }) async {
    final response = await removeUsersFromPermissionableWithHttpInfo(version, permissionableType, permissionableId,  deviceId: deviceId, accountId: accountId, connectionIds: connectionIds, connectionAccountIds: connectionAccountIds, connectionGroupIds: connectionGroupIds, removeFriendGroup: removeFriendGroup, latitude: latitude, longitude: longitude, audienceIds: audienceIds, );
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

  /// Search Permissionables
  ///
  /// Search on UserPermissions
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [String] deviceId:
  ///   A unique ID given by the device (deviceId or accountId required)
  ///
  /// * [int] accountId:
  ///   The account ID of the user (deviceId or accountId required)
  ///
  /// * [int] connectionAccountId:
  ///   Filter results for a specific user account
  ///
  /// * [String] connectionAccountIds:
  ///   Comma separated list of account IDs to filter results with
  ///
  /// * [String] permissionableType:
  ///   Filter user permissions by the permissionable object type
  ///
  /// * [int] permissionableId:
  ///   The id of the permissionable object to filter by
  ///
  /// * [String] keyword:
  ///   Keyword to search within permissionable records
  ///
  /// * [String] sortField:
  ///   Field to sort results on
  ///
  /// * [bool] descending:
  ///   Sort descending when true
  ///
  /// * [bool] pending:
  ///   Return user permissions that are pending
  ///
  /// * [bool] admin:
  ///   Return user permissions that are admins
  ///
  /// * [int] start:
  ///   the start index for pagination
  ///
  /// * [int] limit:
  ///   the limit for pagination
  Future<Response> searchPermissionablesWithHttpInfo(num version, { String? deviceId, int? accountId, int? connectionAccountId, String? connectionAccountIds, String? permissionableType, int? permissionableId, String? keyword, String? sortField, bool? descending, bool? pending, bool? admin, int? start, int? limit, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/permissions/search'
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
    if (connectionAccountId != null) {
      queryParams.addAll(_queryParams('', 'connectionAccountId', connectionAccountId));
    }
    if (connectionAccountIds != null) {
      queryParams.addAll(_queryParams('', 'connectionAccountIds', connectionAccountIds));
    }
    if (permissionableType != null) {
      queryParams.addAll(_queryParams('', 'permissionableType', permissionableType));
    }
    if (permissionableId != null) {
      queryParams.addAll(_queryParams('', 'permissionableId', permissionableId));
    }
    if (keyword != null) {
      queryParams.addAll(_queryParams('', 'keyword', keyword));
    }
    if (sortField != null) {
      queryParams.addAll(_queryParams('', 'sortField', sortField));
    }
    if (descending != null) {
      queryParams.addAll(_queryParams('', 'descending', descending));
    }
    if (pending != null) {
      queryParams.addAll(_queryParams('', 'pending', pending));
    }
    if (admin != null) {
      queryParams.addAll(_queryParams('', 'admin', admin));
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

  /// Search Permissionables
  ///
  /// Search on UserPermissions
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [String] deviceId:
  ///   A unique ID given by the device (deviceId or accountId required)
  ///
  /// * [int] accountId:
  ///   The account ID of the user (deviceId or accountId required)
  ///
  /// * [int] connectionAccountId:
  ///   Filter results for a specific user account
  ///
  /// * [String] connectionAccountIds:
  ///   Comma separated list of account IDs to filter results with
  ///
  /// * [String] permissionableType:
  ///   Filter user permissions by the permissionable object type
  ///
  /// * [int] permissionableId:
  ///   The id of the permissionable object to filter by
  ///
  /// * [String] keyword:
  ///   Keyword to search within permissionable records
  ///
  /// * [String] sortField:
  ///   Field to sort results on
  ///
  /// * [bool] descending:
  ///   Sort descending when true
  ///
  /// * [bool] pending:
  ///   Return user permissions that are pending
  ///
  /// * [bool] admin:
  ///   Return user permissions that are admins
  ///
  /// * [int] start:
  ///   the start index for pagination
  ///
  /// * [int] limit:
  ///   the limit for pagination
  Future<List<UserPermissionsResponse>?> searchPermissionables(num version, { String? deviceId, int? accountId, int? connectionAccountId, String? connectionAccountIds, String? permissionableType, int? permissionableId, String? keyword, String? sortField, bool? descending, bool? pending, bool? admin, int? start, int? limit, }) async {
    final response = await searchPermissionablesWithHttpInfo(version,  deviceId: deviceId, accountId: accountId, connectionAccountId: connectionAccountId, connectionAccountIds: connectionAccountIds, permissionableType: permissionableType, permissionableId: permissionableId, keyword: keyword, sortField: sortField, descending: descending, pending: pending, admin: admin, start: start, limit: limit, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<UserPermissionsResponse>') as List)
        .cast<UserPermissionsResponse>()
        .toList(growable: false);

    }
    return null;
  }

  /// Search Permissionables by Distnace
  ///
  /// Search on UserPermissions by distance
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [double] latitude (required):
  ///   The latitude of the current account
  ///
  /// * [double] longitude (required):
  ///   The longitude of the current account
  ///
  /// * [String] deviceId:
  ///   A unique ID given by the device (deviceId or accountId required)
  ///
  /// * [int] accountId:
  ///   The account ID of the user (deviceId or accountId required)
  ///
  /// * [int] connectionAccountId:
  ///   Filter results for a specific user account
  ///
  /// * [String] connectionAccountIds:
  ///   Comma separated list of account IDs to filter results with
  ///
  /// * [String] permissionableType:
  ///   Filter user permissions by the permissionable object type
  ///
  /// * [int] permissionableId:
  ///   The id of the permissionable object to filter by
  ///
  /// * [double] searchRange:
  ///   The search range in miles
  ///
  /// * [String] keyword:
  ///   Keyword to search within permissionable records
  ///
  /// * [bool] pending:
  ///   Return user permissions that are pending
  ///
  /// * [bool] admin:
  ///   Return user permissions that are admins
  ///
  /// * [int] start:
  ///   The start index for pagination
  ///
  /// * [int] limit:
  ///   The limit for pagination
  Future<Response> searchPermissionablesFollowingDistanceWithHttpInfo(num version, double latitude, double longitude, { String? deviceId, int? accountId, int? connectionAccountId, String? connectionAccountIds, String? permissionableType, int? permissionableId, double? searchRange, String? keyword, bool? pending, bool? admin, int? start, int? limit, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/permissions/distancesearch'
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
    if (connectionAccountId != null) {
      queryParams.addAll(_queryParams('', 'connectionAccountId', connectionAccountId));
    }
    if (connectionAccountIds != null) {
      queryParams.addAll(_queryParams('', 'connectionAccountIds', connectionAccountIds));
    }
    if (permissionableType != null) {
      queryParams.addAll(_queryParams('', 'permissionableType', permissionableType));
    }
    if (permissionableId != null) {
      queryParams.addAll(_queryParams('', 'permissionableId', permissionableId));
    }
      queryParams.addAll(_queryParams('', 'latitude', latitude));
      queryParams.addAll(_queryParams('', 'longitude', longitude));
    if (searchRange != null) {
      queryParams.addAll(_queryParams('', 'searchRange', searchRange));
    }
    if (keyword != null) {
      queryParams.addAll(_queryParams('', 'keyword', keyword));
    }
    if (pending != null) {
      queryParams.addAll(_queryParams('', 'pending', pending));
    }
    if (admin != null) {
      queryParams.addAll(_queryParams('', 'admin', admin));
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

  /// Search Permissionables by Distnace
  ///
  /// Search on UserPermissions by distance
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [double] latitude (required):
  ///   The latitude of the current account
  ///
  /// * [double] longitude (required):
  ///   The longitude of the current account
  ///
  /// * [String] deviceId:
  ///   A unique ID given by the device (deviceId or accountId required)
  ///
  /// * [int] accountId:
  ///   The account ID of the user (deviceId or accountId required)
  ///
  /// * [int] connectionAccountId:
  ///   Filter results for a specific user account
  ///
  /// * [String] connectionAccountIds:
  ///   Comma separated list of account IDs to filter results with
  ///
  /// * [String] permissionableType:
  ///   Filter user permissions by the permissionable object type
  ///
  /// * [int] permissionableId:
  ///   The id of the permissionable object to filter by
  ///
  /// * [double] searchRange:
  ///   The search range in miles
  ///
  /// * [String] keyword:
  ///   Keyword to search within permissionable records
  ///
  /// * [bool] pending:
  ///   Return user permissions that are pending
  ///
  /// * [bool] admin:
  ///   Return user permissions that are admins
  ///
  /// * [int] start:
  ///   The start index for pagination
  ///
  /// * [int] limit:
  ///   The limit for pagination
  Future<List<UserPermissionsResponse>?> searchPermissionablesFollowingDistance(num version, double latitude, double longitude, { String? deviceId, int? accountId, int? connectionAccountId, String? connectionAccountIds, String? permissionableType, int? permissionableId, double? searchRange, String? keyword, bool? pending, bool? admin, int? start, int? limit, }) async {
    final response = await searchPermissionablesFollowingDistanceWithHttpInfo(version, latitude, longitude,  deviceId: deviceId, accountId: accountId, connectionAccountId: connectionAccountId, connectionAccountIds: connectionAccountIds, permissionableType: permissionableType, permissionableId: permissionableId, searchRange: searchRange, keyword: keyword, pending: pending, admin: admin, start: start, limit: limit, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<UserPermissionsResponse>') as List)
        .cast<UserPermissionsResponse>()
        .toList(growable: false);

    }
    return null;
  }
}
