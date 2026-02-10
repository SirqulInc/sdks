//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class AudienceApi {
  AudienceApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Create Audience
  ///
  /// Create a user defined audience.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] accountId (required):
  ///   The logged in user.
  ///
  /// * [String] name (required):
  ///   The name of the audience
  ///
  /// * [String] description:
  ///   The description of the audience
  ///
  /// * [String] searchTags:
  ///   The search tags
  ///
  /// * [String] gender:
  ///   The gender; possible values are: MALE, FEMALE, ANY
  ///
  /// * [String] ageGroups:
  ///   The list of age groups, comma separated; possible values are AGE_0_13, AGE_14_17, AGE_18_22, AGE_23_30, AGE_31_54, AGE_55_PLUS, AGE_ANY (to reset to none)
  ///
  /// * [String] categoryIds:
  ///   The list of category ids, comma separated; possible values are retrieved via /api/{version}/category/search (pass in id values)
  ///
  /// * [String] applicationIds:
  ///   The list of application ids, comma separated; possible values are retrieved via /api/{version}/application/list (pass in id values)
  ///
  /// * [String] gameExperienceLevel:
  ///   The experience level of the player; possible values are: ANY, NEW, BEGINNER, INTERMEDIATE, EXPERT
  ///
  /// * [String] devices:
  ///   (Deprecated) Use deviceIds. The list of targeted device names, comma separated; possible values are retrieved via /api/{version}/audience/devices (pass in name values)
  ///
  /// * [String] deviceIds:
  ///   The list of targeted device ids, comma separated; possible values are retrieved via /api/{version}/audience/devices (pass in id values)
  ///
  /// * [String] deviceVersions:
  ///   The list of targeted device version ranges that are aligned with the provided devices list, comma separated (examples: 2.3-X, 0-5.1.4, 4.3.1-6.1.4)
  ///
  /// * [String] locations:
  ///   The list of locations to build the center around; comma separated list of latitude/longitude pairs (example: lat1,long1,lat2,long2)
  ///
  /// * [String] radius:
  ///   The list of radius of influence for the audience, in miles; comma separated list. Either provide 1 to be applied to all location pairs or a matching list to each lat/long pair.
  ///
  /// * [int] startTimeOffset:
  ///   Seconds from the start time of an event
  ///
  /// * [int] endTimeOffset:
  ///   Seconds from the end time of an event
  ///
  /// * [bool] sendSuggestion:
  ///   If true, then notify matching users when they are inside the radius
  ///
  /// * [String] associateDescription:
  ///   The description of the associated object
  ///
  /// * [String] associateType:
  ///   The type of the object to center the audience geofence
  ///
  /// * [int] associateId:
  ///   The ID of the object to center the audience geofence
  ///
  /// * [String] groupingId:
  ///   Optional grouping id for the audience
  ///
  /// * [String] metaData:
  ///   External custom client defined data
  ///
  /// * [String] visibility:
  ///   Visibility of the audience
  ///
  /// * [String] audienceType:
  ///   Type of audience
  ///
  /// * [bool] useOrder:
  ///   Use order for cohort
  ///
  /// * [String] cohortRegionsData:
  ///   Cohort data for \"cohort\" audience type
  ///
  /// * [String] appKey:
  ///   Filter results by application key
  ///
  /// * [String] trilaterationTypes:
  ///   Trilateration types
  ///
  /// * [bool] uniqueName:
  ///   If true, makes sure the audience name is unique
  Future<Response> createAudienceWithHttpInfo(num version, int accountId, String name, { String? description, String? searchTags, String? gender, String? ageGroups, String? categoryIds, String? applicationIds, String? gameExperienceLevel, String? devices, String? deviceIds, String? deviceVersions, String? locations, String? radius, int? startTimeOffset, int? endTimeOffset, bool? sendSuggestion, String? associateDescription, String? associateType, int? associateId, String? groupingId, String? metaData, String? visibility, String? audienceType, bool? useOrder, String? cohortRegionsData, String? appKey, String? trilaterationTypes, bool? uniqueName, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/audience/create'
      .replaceAll('{version}', version.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'accountId', accountId));
      queryParams.addAll(_queryParams('', 'name', name));
    if (description != null) {
      queryParams.addAll(_queryParams('', 'description', description));
    }
    if (searchTags != null) {
      queryParams.addAll(_queryParams('', 'searchTags', searchTags));
    }
    if (gender != null) {
      queryParams.addAll(_queryParams('', 'gender', gender));
    }
    if (ageGroups != null) {
      queryParams.addAll(_queryParams('', 'ageGroups', ageGroups));
    }
    if (categoryIds != null) {
      queryParams.addAll(_queryParams('', 'categoryIds', categoryIds));
    }
    if (applicationIds != null) {
      queryParams.addAll(_queryParams('', 'applicationIds', applicationIds));
    }
    if (gameExperienceLevel != null) {
      queryParams.addAll(_queryParams('', 'gameExperienceLevel', gameExperienceLevel));
    }
    if (devices != null) {
      queryParams.addAll(_queryParams('', 'devices', devices));
    }
    if (deviceIds != null) {
      queryParams.addAll(_queryParams('', 'deviceIds', deviceIds));
    }
    if (deviceVersions != null) {
      queryParams.addAll(_queryParams('', 'deviceVersions', deviceVersions));
    }
    if (locations != null) {
      queryParams.addAll(_queryParams('', 'locations', locations));
    }
    if (radius != null) {
      queryParams.addAll(_queryParams('', 'radius', radius));
    }
    if (startTimeOffset != null) {
      queryParams.addAll(_queryParams('', 'startTimeOffset', startTimeOffset));
    }
    if (endTimeOffset != null) {
      queryParams.addAll(_queryParams('', 'endTimeOffset', endTimeOffset));
    }
    if (sendSuggestion != null) {
      queryParams.addAll(_queryParams('', 'sendSuggestion', sendSuggestion));
    }
    if (associateDescription != null) {
      queryParams.addAll(_queryParams('', 'associateDescription', associateDescription));
    }
    if (associateType != null) {
      queryParams.addAll(_queryParams('', 'associateType', associateType));
    }
    if (associateId != null) {
      queryParams.addAll(_queryParams('', 'associateId', associateId));
    }
    if (groupingId != null) {
      queryParams.addAll(_queryParams('', 'groupingId', groupingId));
    }
    if (metaData != null) {
      queryParams.addAll(_queryParams('', 'metaData', metaData));
    }
    if (visibility != null) {
      queryParams.addAll(_queryParams('', 'visibility', visibility));
    }
    if (audienceType != null) {
      queryParams.addAll(_queryParams('', 'audienceType', audienceType));
    }
    if (useOrder != null) {
      queryParams.addAll(_queryParams('', 'useOrder', useOrder));
    }
    if (cohortRegionsData != null) {
      queryParams.addAll(_queryParams('', 'cohortRegionsData', cohortRegionsData));
    }
    if (appKey != null) {
      queryParams.addAll(_queryParams('', 'appKey', appKey));
    }
    if (trilaterationTypes != null) {
      queryParams.addAll(_queryParams('', 'trilaterationTypes', trilaterationTypes));
    }
    if (uniqueName != null) {
      queryParams.addAll(_queryParams('', 'uniqueName', uniqueName));
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

  /// Create Audience
  ///
  /// Create a user defined audience.
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] accountId (required):
  ///   The logged in user.
  ///
  /// * [String] name (required):
  ///   The name of the audience
  ///
  /// * [String] description:
  ///   The description of the audience
  ///
  /// * [String] searchTags:
  ///   The search tags
  ///
  /// * [String] gender:
  ///   The gender; possible values are: MALE, FEMALE, ANY
  ///
  /// * [String] ageGroups:
  ///   The list of age groups, comma separated; possible values are AGE_0_13, AGE_14_17, AGE_18_22, AGE_23_30, AGE_31_54, AGE_55_PLUS, AGE_ANY (to reset to none)
  ///
  /// * [String] categoryIds:
  ///   The list of category ids, comma separated; possible values are retrieved via /api/{version}/category/search (pass in id values)
  ///
  /// * [String] applicationIds:
  ///   The list of application ids, comma separated; possible values are retrieved via /api/{version}/application/list (pass in id values)
  ///
  /// * [String] gameExperienceLevel:
  ///   The experience level of the player; possible values are: ANY, NEW, BEGINNER, INTERMEDIATE, EXPERT
  ///
  /// * [String] devices:
  ///   (Deprecated) Use deviceIds. The list of targeted device names, comma separated; possible values are retrieved via /api/{version}/audience/devices (pass in name values)
  ///
  /// * [String] deviceIds:
  ///   The list of targeted device ids, comma separated; possible values are retrieved via /api/{version}/audience/devices (pass in id values)
  ///
  /// * [String] deviceVersions:
  ///   The list of targeted device version ranges that are aligned with the provided devices list, comma separated (examples: 2.3-X, 0-5.1.4, 4.3.1-6.1.4)
  ///
  /// * [String] locations:
  ///   The list of locations to build the center around; comma separated list of latitude/longitude pairs (example: lat1,long1,lat2,long2)
  ///
  /// * [String] radius:
  ///   The list of radius of influence for the audience, in miles; comma separated list. Either provide 1 to be applied to all location pairs or a matching list to each lat/long pair.
  ///
  /// * [int] startTimeOffset:
  ///   Seconds from the start time of an event
  ///
  /// * [int] endTimeOffset:
  ///   Seconds from the end time of an event
  ///
  /// * [bool] sendSuggestion:
  ///   If true, then notify matching users when they are inside the radius
  ///
  /// * [String] associateDescription:
  ///   The description of the associated object
  ///
  /// * [String] associateType:
  ///   The type of the object to center the audience geofence
  ///
  /// * [int] associateId:
  ///   The ID of the object to center the audience geofence
  ///
  /// * [String] groupingId:
  ///   Optional grouping id for the audience
  ///
  /// * [String] metaData:
  ///   External custom client defined data
  ///
  /// * [String] visibility:
  ///   Visibility of the audience
  ///
  /// * [String] audienceType:
  ///   Type of audience
  ///
  /// * [bool] useOrder:
  ///   Use order for cohort
  ///
  /// * [String] cohortRegionsData:
  ///   Cohort data for \"cohort\" audience type
  ///
  /// * [String] appKey:
  ///   Filter results by application key
  ///
  /// * [String] trilaterationTypes:
  ///   Trilateration types
  ///
  /// * [bool] uniqueName:
  ///   If true, makes sure the audience name is unique
  Future<AudienceResponse?> createAudience(num version, int accountId, String name, { String? description, String? searchTags, String? gender, String? ageGroups, String? categoryIds, String? applicationIds, String? gameExperienceLevel, String? devices, String? deviceIds, String? deviceVersions, String? locations, String? radius, int? startTimeOffset, int? endTimeOffset, bool? sendSuggestion, String? associateDescription, String? associateType, int? associateId, String? groupingId, String? metaData, String? visibility, String? audienceType, bool? useOrder, String? cohortRegionsData, String? appKey, String? trilaterationTypes, bool? uniqueName, }) async {
    final response = await createAudienceWithHttpInfo(version, accountId, name,  description: description, searchTags: searchTags, gender: gender, ageGroups: ageGroups, categoryIds: categoryIds, applicationIds: applicationIds, gameExperienceLevel: gameExperienceLevel, devices: devices, deviceIds: deviceIds, deviceVersions: deviceVersions, locations: locations, radius: radius, startTimeOffset: startTimeOffset, endTimeOffset: endTimeOffset, sendSuggestion: sendSuggestion, associateDescription: associateDescription, associateType: associateType, associateId: associateId, groupingId: groupingId, metaData: metaData, visibility: visibility, audienceType: audienceType, useOrder: useOrder, cohortRegionsData: cohortRegionsData, appKey: appKey, trilaterationTypes: trilaterationTypes, uniqueName: uniqueName, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'AudienceResponse',) as AudienceResponse;
    
    }
    return null;
  }

  /// Delete Audience
  ///
  /// Delete an audience. The audience and account must be valid and have the appropirate permissions to view the content.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] accountId (required):
  ///   The logged in user.
  ///
  /// * [int] audienceId (required):
  ///   The id of the audience to delete.
  Future<Response> deleteAudienceWithHttpInfo(num version, int accountId, int audienceId,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/audience/delete'
      .replaceAll('{version}', version.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'accountId', accountId));
      queryParams.addAll(_queryParams('', 'audienceId', audienceId));

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

  /// Delete Audience
  ///
  /// Delete an audience. The audience and account must be valid and have the appropirate permissions to view the content.
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] accountId (required):
  ///   The logged in user.
  ///
  /// * [int] audienceId (required):
  ///   The id of the audience to delete.
  Future<SirqulResponse?> deleteAudience(num version, int accountId, int audienceId,) async {
    final response = await deleteAudienceWithHttpInfo(version, accountId, audienceId,);
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

  /// Get Age Groups
  ///
  /// Gets the list of available age groups that can be selected by consumers and retailers targeting offers.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  Future<Response> getAgeGroupsWithHttpInfo(num version,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/audience/ageGroups'
      .replaceAll('{version}', version.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

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

  /// Get Age Groups
  ///
  /// Gets the list of available age groups that can be selected by consumers and retailers targeting offers.
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  Future<List<AgeGroupResponse>?> getAgeGroups(num version,) async {
    final response = await getAgeGroupsWithHttpInfo(version,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<AgeGroupResponse>') as List)
        .cast<AgeGroupResponse>()
        .toList(growable: false);

    }
    return null;
  }

  /// Get Audience
  ///
  /// Get an audience. The audience and account must be valid and have the appropriate permissions to view the content.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] accountId (required):
  ///   The logged in user.
  ///
  /// * [int] audienceId (required):
  ///   The id of the audience to return.
  ///
  /// * [String] appKey:
  ///   The application key (optional). If provided, results may be scoped to this application.
  ///
  /// * [bool] returnAccountCount:
  ///   (boolean) set to true to include the accountCount associated with current audience of the current app
  ///
  /// * [bool] returnAlbumCount:
  ///   (boolean) set to true to include the albumCount associated with current audience of the current app
  ///
  /// * [String] albumTypesForCount:
  ///   (String) comma separated list, return an array with each item is the count of each album type. If not provided, \"all_types\" count is returned.
  Future<Response> getAudienceWithHttpInfo(num version, int accountId, int audienceId, { String? appKey, bool? returnAccountCount, bool? returnAlbumCount, String? albumTypesForCount, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/audience/get'
      .replaceAll('{version}', version.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'accountId', accountId));
      queryParams.addAll(_queryParams('', 'audienceId', audienceId));
    if (appKey != null) {
      queryParams.addAll(_queryParams('', 'appKey', appKey));
    }
    if (returnAccountCount != null) {
      queryParams.addAll(_queryParams('', 'returnAccountCount', returnAccountCount));
    }
    if (returnAlbumCount != null) {
      queryParams.addAll(_queryParams('', 'returnAlbumCount', returnAlbumCount));
    }
    if (albumTypesForCount != null) {
      queryParams.addAll(_queryParams('', 'albumTypesForCount', albumTypesForCount));
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

  /// Get Audience
  ///
  /// Get an audience. The audience and account must be valid and have the appropriate permissions to view the content.
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] accountId (required):
  ///   The logged in user.
  ///
  /// * [int] audienceId (required):
  ///   The id of the audience to return.
  ///
  /// * [String] appKey:
  ///   The application key (optional). If provided, results may be scoped to this application.
  ///
  /// * [bool] returnAccountCount:
  ///   (boolean) set to true to include the accountCount associated with current audience of the current app
  ///
  /// * [bool] returnAlbumCount:
  ///   (boolean) set to true to include the albumCount associated with current audience of the current app
  ///
  /// * [String] albumTypesForCount:
  ///   (String) comma separated list, return an array with each item is the count of each album type. If not provided, \"all_types\" count is returned.
  Future<AudienceResponse?> getAudience(num version, int accountId, int audienceId, { String? appKey, bool? returnAccountCount, bool? returnAlbumCount, String? albumTypesForCount, }) async {
    final response = await getAudienceWithHttpInfo(version, accountId, audienceId,  appKey: appKey, returnAccountCount: returnAccountCount, returnAlbumCount: returnAlbumCount, albumTypesForCount: albumTypesForCount, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'AudienceResponse',) as AudienceResponse;
    
    }
    return null;
  }

  /// Search Audiences
  ///
  /// Get the list audiences owned by the account
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] accountId:
  ///   The logged in user.
  ///
  /// * [String] albumIds:
  ///   Comma separated list of album IDs to filter results with
  ///
  /// * [String] keyword:
  ///   The keyword used to search
  ///
  /// * [String] keywordFields:
  ///   Comma separated list of fields that the keywords will match against. Possible values include: SEARCH_TAGS, NAME, DESCRIPTION, OWNER_DISPLAY
  ///
  /// * [String] sortField:
  ///   The field to sort by, possible values include: {ID, CREATED, UPDATED, DELETED, SEARCH_TAGS, ACTIVE, NAME, DESCRIPTION, OWNER_ID, OWNER_DISPLAY, GENDER}
  ///
  /// * [bool] descending:
  ///   The order to return the results. Default is false, which will return the results in ascending order.
  ///
  /// * [int] start:
  ///   The index into the record set to start with.
  ///
  /// * [int] limit:
  ///   The total number of record to return (there is a hard limit of 100).
  ///
  /// * [bool] sendSuggestion:
  ///   Filter results based on whether or not the audience is set to send suggestions
  ///
  /// * [bool] activeOnly:
  ///   Determines whether to return only active results. Default is false.
  ///
  /// * [bool] groupByGroupingId:
  ///   Groups results by the audience groupingId (this does not work in conjunction with the following parameters: albumIds, audienceType, appKey, returnGlobal)
  ///
  /// * [String] appKey:
  ///   Filter results by application key
  ///
  /// * [bool] returnGlobal:
  ///   If filtering by appKey, determines whether or not audiences that do not have an application set will also be returned as well
  ///
  /// * [bool] exactKeyword:
  ///   If true, match keyword exactly
  ///
  /// * [String] audienceType:
  ///   (Deprecated) Filter results by audience type
  ///
  /// * [String] audienceTypes:
  ///   comma separated string with the different audience types you want to filter for
  ///
  /// * [bool] returnAccountCount:
  ///   (boolean) set to true to include the accountCount associated with current audience of the current app
  ///
  /// * [bool] returnAlbumCount:
  ///   (boolean) set to true to include the albumCount associated with current audience of the current app
  ///
  /// * [String] albumTypesForCount:
  ///   (String) comma separated list, return an array with each item is the count of each album type. If not provided, \"all_types\" count is returned.
  Future<Response> getAudienceListWithHttpInfo(num version, { int? accountId, String? albumIds, String? keyword, String? keywordFields, String? sortField, bool? descending, int? start, int? limit, bool? sendSuggestion, bool? activeOnly, bool? groupByGroupingId, String? appKey, bool? returnGlobal, bool? exactKeyword, String? audienceType, String? audienceTypes, bool? returnAccountCount, bool? returnAlbumCount, String? albumTypesForCount, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/audience/search'
      .replaceAll('{version}', version.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (accountId != null) {
      queryParams.addAll(_queryParams('', 'accountId', accountId));
    }
    if (albumIds != null) {
      queryParams.addAll(_queryParams('', 'albumIds', albumIds));
    }
    if (keyword != null) {
      queryParams.addAll(_queryParams('', 'keyword', keyword));
    }
    if (keywordFields != null) {
      queryParams.addAll(_queryParams('', 'keywordFields', keywordFields));
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
    if (sendSuggestion != null) {
      queryParams.addAll(_queryParams('', 'sendSuggestion', sendSuggestion));
    }
    if (activeOnly != null) {
      queryParams.addAll(_queryParams('', 'activeOnly', activeOnly));
    }
    if (groupByGroupingId != null) {
      queryParams.addAll(_queryParams('', 'groupByGroupingId', groupByGroupingId));
    }
    if (appKey != null) {
      queryParams.addAll(_queryParams('', 'appKey', appKey));
    }
    if (returnGlobal != null) {
      queryParams.addAll(_queryParams('', 'returnGlobal', returnGlobal));
    }
    if (exactKeyword != null) {
      queryParams.addAll(_queryParams('', 'exactKeyword', exactKeyword));
    }
    if (audienceType != null) {
      queryParams.addAll(_queryParams('', 'audienceType', audienceType));
    }
    if (audienceTypes != null) {
      queryParams.addAll(_queryParams('', 'audienceTypes', audienceTypes));
    }
    if (returnAccountCount != null) {
      queryParams.addAll(_queryParams('', 'returnAccountCount', returnAccountCount));
    }
    if (returnAlbumCount != null) {
      queryParams.addAll(_queryParams('', 'returnAlbumCount', returnAlbumCount));
    }
    if (albumTypesForCount != null) {
      queryParams.addAll(_queryParams('', 'albumTypesForCount', albumTypesForCount));
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

  /// Search Audiences
  ///
  /// Get the list audiences owned by the account
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] accountId:
  ///   The logged in user.
  ///
  /// * [String] albumIds:
  ///   Comma separated list of album IDs to filter results with
  ///
  /// * [String] keyword:
  ///   The keyword used to search
  ///
  /// * [String] keywordFields:
  ///   Comma separated list of fields that the keywords will match against. Possible values include: SEARCH_TAGS, NAME, DESCRIPTION, OWNER_DISPLAY
  ///
  /// * [String] sortField:
  ///   The field to sort by, possible values include: {ID, CREATED, UPDATED, DELETED, SEARCH_TAGS, ACTIVE, NAME, DESCRIPTION, OWNER_ID, OWNER_DISPLAY, GENDER}
  ///
  /// * [bool] descending:
  ///   The order to return the results. Default is false, which will return the results in ascending order.
  ///
  /// * [int] start:
  ///   The index into the record set to start with.
  ///
  /// * [int] limit:
  ///   The total number of record to return (there is a hard limit of 100).
  ///
  /// * [bool] sendSuggestion:
  ///   Filter results based on whether or not the audience is set to send suggestions
  ///
  /// * [bool] activeOnly:
  ///   Determines whether to return only active results. Default is false.
  ///
  /// * [bool] groupByGroupingId:
  ///   Groups results by the audience groupingId (this does not work in conjunction with the following parameters: albumIds, audienceType, appKey, returnGlobal)
  ///
  /// * [String] appKey:
  ///   Filter results by application key
  ///
  /// * [bool] returnGlobal:
  ///   If filtering by appKey, determines whether or not audiences that do not have an application set will also be returned as well
  ///
  /// * [bool] exactKeyword:
  ///   If true, match keyword exactly
  ///
  /// * [String] audienceType:
  ///   (Deprecated) Filter results by audience type
  ///
  /// * [String] audienceTypes:
  ///   comma separated string with the different audience types you want to filter for
  ///
  /// * [bool] returnAccountCount:
  ///   (boolean) set to true to include the accountCount associated with current audience of the current app
  ///
  /// * [bool] returnAlbumCount:
  ///   (boolean) set to true to include the albumCount associated with current audience of the current app
  ///
  /// * [String] albumTypesForCount:
  ///   (String) comma separated list, return an array with each item is the count of each album type. If not provided, \"all_types\" count is returned.
  Future<List<SearchResponse>?> getAudienceList(num version, { int? accountId, String? albumIds, String? keyword, String? keywordFields, String? sortField, bool? descending, int? start, int? limit, bool? sendSuggestion, bool? activeOnly, bool? groupByGroupingId, String? appKey, bool? returnGlobal, bool? exactKeyword, String? audienceType, String? audienceTypes, bool? returnAccountCount, bool? returnAlbumCount, String? albumTypesForCount, }) async {
    final response = await getAudienceListWithHttpInfo(version,  accountId: accountId, albumIds: albumIds, keyword: keyword, keywordFields: keywordFields, sortField: sortField, descending: descending, start: start, limit: limit, sendSuggestion: sendSuggestion, activeOnly: activeOnly, groupByGroupingId: groupByGroupingId, appKey: appKey, returnGlobal: returnGlobal, exactKeyword: exactKeyword, audienceType: audienceType, audienceTypes: audienceTypes, returnAccountCount: returnAccountCount, returnAlbumCount: returnAlbumCount, albumTypesForCount: albumTypesForCount, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<SearchResponse>') as List)
        .cast<SearchResponse>()
        .toList(growable: false);

    }
    return null;
  }

  /// Get Devices
  ///
  /// Gets the list of available devices that can be selected by consumers and retailers.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [bool] includeInactive (required):
  ///   If true return inactive record as well. default is false.
  Future<Response> getDevicesWithHttpInfo(num version, bool includeInactive,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/audience/devices'
      .replaceAll('{version}', version.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'includeInactive', includeInactive));

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

  /// Get Devices
  ///
  /// Gets the list of available devices that can be selected by consumers and retailers.
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [bool] includeInactive (required):
  ///   If true return inactive record as well. default is false.
  Future<List<AudienceDeviceResponse>?> getDevices(num version, bool includeInactive,) async {
    final response = await getDevicesWithHttpInfo(version, includeInactive,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<AudienceDeviceResponse>') as List)
        .cast<AudienceDeviceResponse>()
        .toList(growable: false);

    }
    return null;
  }

  /// Get Experiences
  ///
  /// Gets the list of available experiences that can be selected by consumers and retailers.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  Future<Response> getExperiencesWithHttpInfo(num version,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/audience/experiences'
      .replaceAll('{version}', version.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

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

  /// Get Experiences
  ///
  /// Gets the list of available experiences that can be selected by consumers and retailers.
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  Future<SirqulResponse?> getExperiences(num version,) async {
    final response = await getExperiencesWithHttpInfo(version,);
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

  /// Get GroupedAudiences
  ///
  /// Get a group of audiences. The audience and account must be valid and have the appropriate permissions to view the content.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] accountId (required):
  ///   The logged in user.
  ///
  /// * [String] audienceGroupingId (required):
  ///   The audience grouping id to return.
  Future<Response> getGroupedAudiencesWithHttpInfo(num version, int accountId, String audienceGroupingId,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/audience/grouped/get'
      .replaceAll('{version}', version.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'accountId', accountId));
      queryParams.addAll(_queryParams('', 'audienceGroupingId', audienceGroupingId));

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

  /// Get GroupedAudiences
  ///
  /// Get a group of audiences. The audience and account must be valid and have the appropriate permissions to view the content.
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] accountId (required):
  ///   The logged in user.
  ///
  /// * [String] audienceGroupingId (required):
  ///   The audience grouping id to return.
  Future<AudienceResponse?> getGroupedAudiences(num version, int accountId, String audienceGroupingId,) async {
    final response = await getGroupedAudiencesWithHttpInfo(version, accountId, audienceGroupingId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'AudienceResponse',) as AudienceResponse;
    
    }
    return null;
  }

  /// List Suggestions by Audience
  ///
  /// List either Missions or Offers that the user matches the assigned audience.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] accountId (required):
  ///   The account to match offers for.
  ///
  /// * [int] limit (required):
  ///   the limit of the index
  ///
  /// * [String] suggestionType (required):
  ///   the type of suggestion
  Future<Response> listByAccountWithHttpInfo(num version, int accountId, int limit, String suggestionType,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/audience/suggestion/list'
      .replaceAll('{version}', version.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'accountId', accountId));
      queryParams.addAll(_queryParams('', 'limit', limit));
      queryParams.addAll(_queryParams('', 'suggestionType', suggestionType));

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

  /// List Suggestions by Audience
  ///
  /// List either Missions or Offers that the user matches the assigned audience.
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] accountId (required):
  ///   The account to match offers for.
  ///
  /// * [int] limit (required):
  ///   the limit of the index
  ///
  /// * [String] suggestionType (required):
  ///   the type of suggestion
  Future<OfferListResponse?> listByAccount(num version, int accountId, int limit, String suggestionType,) async {
    final response = await listByAccountWithHttpInfo(version, accountId, limit, suggestionType,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'OfferListResponse',) as OfferListResponse;
    
    }
    return null;
  }

  /// List Offers by Audience
  ///
  /// Get a list of offer locations based on audience information provided.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] limit (required):
  ///   this is the limit of the index
  ///
  /// * [String] gender:
  ///   this is the gender to list offers by
  ///
  /// * [int] age:
  ///   this is the age to list offers by
  ///
  /// * [String] categoryIds:
  ///   this is the category IDs to list offers by
  ///
  /// * [double] latitude:
  ///   this is the latitude to list offers by
  ///
  /// * [double] longitude:
  ///   this is the longitude to list offers by
  Future<Response> listByAudienceWithHttpInfo(num version, int limit, { String? gender, int? age, String? categoryIds, double? latitude, double? longitude, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/audience/suggestion/offersByAudience'
      .replaceAll('{version}', version.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (gender != null) {
      queryParams.addAll(_queryParams('', 'gender', gender));
    }
    if (age != null) {
      queryParams.addAll(_queryParams('', 'age', age));
    }
    if (categoryIds != null) {
      queryParams.addAll(_queryParams('', 'categoryIds', categoryIds));
    }
    if (latitude != null) {
      queryParams.addAll(_queryParams('', 'latitude', latitude));
    }
    if (longitude != null) {
      queryParams.addAll(_queryParams('', 'longitude', longitude));
    }
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

  /// List Offers by Audience
  ///
  /// Get a list of offer locations based on audience information provided.
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] limit (required):
  ///   this is the limit of the index
  ///
  /// * [String] gender:
  ///   this is the gender to list offers by
  ///
  /// * [int] age:
  ///   this is the age to list offers by
  ///
  /// * [String] categoryIds:
  ///   this is the category IDs to list offers by
  ///
  /// * [double] latitude:
  ///   this is the latitude to list offers by
  ///
  /// * [double] longitude:
  ///   this is the longitude to list offers by
  Future<OfferListResponse?> listByAudience(num version, int limit, { String? gender, int? age, String? categoryIds, double? latitude, double? longitude, }) async {
    final response = await listByAudienceWithHttpInfo(version, limit,  gender: gender, age: age, categoryIds: categoryIds, latitude: latitude, longitude: longitude, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'OfferListResponse',) as OfferListResponse;
    
    }
    return null;
  }

  /// List Sent Suggestions 
  ///
  /// Return list of recent trigger suggestions that have been sent to the user.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] accountId (required):
  ///   The account to match offers for.
  ///
  /// * [int] timeframe (required):
  ///   The timeframe in seconds of the latest suggestions
  ///
  /// * [String] suggestionType (required):
  ///   The type of trigger suggestions to return
  Future<Response> listLastestByAccountWithHttpInfo(num version, int accountId, int timeframe, String suggestionType,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/audience/suggestion/latest'
      .replaceAll('{version}', version.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'accountId', accountId));
      queryParams.addAll(_queryParams('', 'timeframe', timeframe));
      queryParams.addAll(_queryParams('', 'suggestionType', suggestionType));

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

  /// List Sent Suggestions 
  ///
  /// Return list of recent trigger suggestions that have been sent to the user.
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] accountId (required):
  ///   The account to match offers for.
  ///
  /// * [int] timeframe (required):
  ///   The timeframe in seconds of the latest suggestions
  ///
  /// * [String] suggestionType (required):
  ///   The type of trigger suggestions to return
  Future<OfferListResponse?> listLastestByAccount(num version, int accountId, int timeframe, String suggestionType,) async {
    final response = await listLastestByAccountWithHttpInfo(version, accountId, timeframe, suggestionType,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'OfferListResponse',) as OfferListResponse;
    
    }
    return null;
  }

  /// Send Suggestions
  ///
  /// Use the accountId to determine the associated BillableEntity. From there get a list of all triggers associated with the BillableEntity.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] accountId (required):
  ///   The account to match offers for.
  ///
  /// * [double] latitude (required):
  ///   the latitude
  ///
  /// * [double] longitude (required):
  ///   the longitude
  Future<Response> sendByAccountWithHttpInfo(num version, int accountId, double latitude, double longitude,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/audience/suggestion/send'
      .replaceAll('{version}', version.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'accountId', accountId));
      queryParams.addAll(_queryParams('', 'latitude', latitude));
      queryParams.addAll(_queryParams('', 'longitude', longitude));

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

  /// Send Suggestions
  ///
  /// Use the accountId to determine the associated BillableEntity. From there get a list of all triggers associated with the BillableEntity.
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] accountId (required):
  ///   The account to match offers for.
  ///
  /// * [double] latitude (required):
  ///   the latitude
  ///
  /// * [double] longitude (required):
  ///   the longitude
  Future<SirqulResponse?> sendByAccount(num version, int accountId, double latitude, double longitude,) async {
    final response = await sendByAccountWithHttpInfo(version, accountId, latitude, longitude,);
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

  /// Update Audience
  ///
  /// Update a user defined audience.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] accountId (required):
  ///   The logged in user.
  ///
  /// * [int] audienceId (required):
  ///   The id of the audience to update.
  ///
  /// * [String] name:
  ///   The name of the audience
  ///
  /// * [String] description:
  ///   The description of the audience
  ///
  /// * [String] searchTags:
  ///   The search tags
  ///
  /// * [String] gender:
  ///   The gender; possible values are: MALE, FEMALE, ANY
  ///
  /// * [String] ageGroups:
  ///   The list of age groups, comma separated; possible values are AGE_0_13, AGE_14_17, AGE_18_22, AGE_23_30, AGE_31_54, AGE_55_PLUS, AGE_ANY (to reset to none)
  ///
  /// * [String] categoryIds:
  ///   The list of category ids, comma separated; possible values are retrieved via /api/{version}/category/search (pass in id values)
  ///
  /// * [String] applicationIds:
  ///   The list of application ids, comma separated; possible values are retrieved via /api/{version}/application/list (pass in id values)
  ///
  /// * [String] gameExperienceLevel:
  ///   The experience level of the player; possible values are: ANY, NEW, BEGINNER, INTERMEDIATE, EXPERT
  ///
  /// * [String] devices:
  ///   (Deprecated) Use deviceIds. The list of targeted device names, comma separated; possible values are retrieved via /api/{version}/audience/devices (pass in name values)
  ///
  /// * [String] deviceIds:
  ///   The list of targeted device ids, comma separated; possible values are retrieved via /api/{version}/audience/devices (pass in id values)
  ///
  /// * [String] deviceVersions:
  ///   The list of targeted device version ranges that are aligned with the provided devices list, comma separated (examples: 2.3-X, 0-5.1.4, 4.3.1-6.1.4)
  ///
  /// * [String] locations:
  ///   The list of locations to build the center around; comma separated list of latitude/longitude pairs (example: lat1,long1,lat2,long2)
  ///
  /// * [String] radius:
  ///   The list of radius of influence for the audience, in miles; comma separated list. Either provide 1 to be applied to all location pairs or a matching list to each lat/long pair.
  ///
  /// * [bool] active:
  ///   if audience is active
  ///
  /// * [bool] sendSuggestion:
  ///   If true, then notify matching users when they are inside the radius
  ///
  /// * [int] startTimeOffset:
  ///   Seconds from the start time of an event
  ///
  /// * [int] endTimeOffset:
  ///   Seconds from the end time of an event
  ///
  /// * [String] associateDescription:
  ///   the associate description
  ///
  /// * [String] associateType:
  ///   The type of the object to center the audience geofence
  ///
  /// * [int] associateId:
  ///   The ID of the object to center the audience geofence
  ///
  /// * [String] groupingId:
  ///   Optional grouping id for the audience
  ///
  /// * [String] metaData:
  ///   External custom client defined data
  ///
  /// * [String] visibility:
  ///   Visibility of the audience
  ///
  /// * [String] audienceType:
  ///   Type of audience
  ///
  /// * [bool] useOrder:
  ///   Use order for cohort
  ///
  /// * [String] cohortRegionsData:
  ///   Cohort data for \"cohort\" audience type
  ///
  /// * [String] appKey:
  ///   Filter results by application key
  ///
  /// * [String] trilaterationTypes:
  ///   Trilateration types
  ///
  /// * [bool] uniqueName:
  ///   If true, makes sure the audience name is unique
  Future<Response> updateAudienceWithHttpInfo(num version, int accountId, int audienceId, { String? name, String? description, String? searchTags, String? gender, String? ageGroups, String? categoryIds, String? applicationIds, String? gameExperienceLevel, String? devices, String? deviceIds, String? deviceVersions, String? locations, String? radius, bool? active, bool? sendSuggestion, int? startTimeOffset, int? endTimeOffset, String? associateDescription, String? associateType, int? associateId, String? groupingId, String? metaData, String? visibility, String? audienceType, bool? useOrder, String? cohortRegionsData, String? appKey, String? trilaterationTypes, bool? uniqueName, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/audience/update'
      .replaceAll('{version}', version.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'accountId', accountId));
      queryParams.addAll(_queryParams('', 'audienceId', audienceId));
    if (name != null) {
      queryParams.addAll(_queryParams('', 'name', name));
    }
    if (description != null) {
      queryParams.addAll(_queryParams('', 'description', description));
    }
    if (searchTags != null) {
      queryParams.addAll(_queryParams('', 'searchTags', searchTags));
    }
    if (gender != null) {
      queryParams.addAll(_queryParams('', 'gender', gender));
    }
    if (ageGroups != null) {
      queryParams.addAll(_queryParams('', 'ageGroups', ageGroups));
    }
    if (categoryIds != null) {
      queryParams.addAll(_queryParams('', 'categoryIds', categoryIds));
    }
    if (applicationIds != null) {
      queryParams.addAll(_queryParams('', 'applicationIds', applicationIds));
    }
    if (gameExperienceLevel != null) {
      queryParams.addAll(_queryParams('', 'gameExperienceLevel', gameExperienceLevel));
    }
    if (devices != null) {
      queryParams.addAll(_queryParams('', 'devices', devices));
    }
    if (deviceIds != null) {
      queryParams.addAll(_queryParams('', 'deviceIds', deviceIds));
    }
    if (deviceVersions != null) {
      queryParams.addAll(_queryParams('', 'deviceVersions', deviceVersions));
    }
    if (locations != null) {
      queryParams.addAll(_queryParams('', 'locations', locations));
    }
    if (radius != null) {
      queryParams.addAll(_queryParams('', 'radius', radius));
    }
    if (active != null) {
      queryParams.addAll(_queryParams('', 'active', active));
    }
    if (sendSuggestion != null) {
      queryParams.addAll(_queryParams('', 'sendSuggestion', sendSuggestion));
    }
    if (startTimeOffset != null) {
      queryParams.addAll(_queryParams('', 'startTimeOffset', startTimeOffset));
    }
    if (endTimeOffset != null) {
      queryParams.addAll(_queryParams('', 'endTimeOffset', endTimeOffset));
    }
    if (associateDescription != null) {
      queryParams.addAll(_queryParams('', 'associateDescription', associateDescription));
    }
    if (associateType != null) {
      queryParams.addAll(_queryParams('', 'associateType', associateType));
    }
    if (associateId != null) {
      queryParams.addAll(_queryParams('', 'associateId', associateId));
    }
    if (groupingId != null) {
      queryParams.addAll(_queryParams('', 'groupingId', groupingId));
    }
    if (metaData != null) {
      queryParams.addAll(_queryParams('', 'metaData', metaData));
    }
    if (visibility != null) {
      queryParams.addAll(_queryParams('', 'visibility', visibility));
    }
    if (audienceType != null) {
      queryParams.addAll(_queryParams('', 'audienceType', audienceType));
    }
    if (useOrder != null) {
      queryParams.addAll(_queryParams('', 'useOrder', useOrder));
    }
    if (cohortRegionsData != null) {
      queryParams.addAll(_queryParams('', 'cohortRegionsData', cohortRegionsData));
    }
    if (appKey != null) {
      queryParams.addAll(_queryParams('', 'appKey', appKey));
    }
    if (trilaterationTypes != null) {
      queryParams.addAll(_queryParams('', 'trilaterationTypes', trilaterationTypes));
    }
    if (uniqueName != null) {
      queryParams.addAll(_queryParams('', 'uniqueName', uniqueName));
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

  /// Update Audience
  ///
  /// Update a user defined audience.
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] accountId (required):
  ///   The logged in user.
  ///
  /// * [int] audienceId (required):
  ///   The id of the audience to update.
  ///
  /// * [String] name:
  ///   The name of the audience
  ///
  /// * [String] description:
  ///   The description of the audience
  ///
  /// * [String] searchTags:
  ///   The search tags
  ///
  /// * [String] gender:
  ///   The gender; possible values are: MALE, FEMALE, ANY
  ///
  /// * [String] ageGroups:
  ///   The list of age groups, comma separated; possible values are AGE_0_13, AGE_14_17, AGE_18_22, AGE_23_30, AGE_31_54, AGE_55_PLUS, AGE_ANY (to reset to none)
  ///
  /// * [String] categoryIds:
  ///   The list of category ids, comma separated; possible values are retrieved via /api/{version}/category/search (pass in id values)
  ///
  /// * [String] applicationIds:
  ///   The list of application ids, comma separated; possible values are retrieved via /api/{version}/application/list (pass in id values)
  ///
  /// * [String] gameExperienceLevel:
  ///   The experience level of the player; possible values are: ANY, NEW, BEGINNER, INTERMEDIATE, EXPERT
  ///
  /// * [String] devices:
  ///   (Deprecated) Use deviceIds. The list of targeted device names, comma separated; possible values are retrieved via /api/{version}/audience/devices (pass in name values)
  ///
  /// * [String] deviceIds:
  ///   The list of targeted device ids, comma separated; possible values are retrieved via /api/{version}/audience/devices (pass in id values)
  ///
  /// * [String] deviceVersions:
  ///   The list of targeted device version ranges that are aligned with the provided devices list, comma separated (examples: 2.3-X, 0-5.1.4, 4.3.1-6.1.4)
  ///
  /// * [String] locations:
  ///   The list of locations to build the center around; comma separated list of latitude/longitude pairs (example: lat1,long1,lat2,long2)
  ///
  /// * [String] radius:
  ///   The list of radius of influence for the audience, in miles; comma separated list. Either provide 1 to be applied to all location pairs or a matching list to each lat/long pair.
  ///
  /// * [bool] active:
  ///   if audience is active
  ///
  /// * [bool] sendSuggestion:
  ///   If true, then notify matching users when they are inside the radius
  ///
  /// * [int] startTimeOffset:
  ///   Seconds from the start time of an event
  ///
  /// * [int] endTimeOffset:
  ///   Seconds from the end time of an event
  ///
  /// * [String] associateDescription:
  ///   the associate description
  ///
  /// * [String] associateType:
  ///   The type of the object to center the audience geofence
  ///
  /// * [int] associateId:
  ///   The ID of the object to center the audience geofence
  ///
  /// * [String] groupingId:
  ///   Optional grouping id for the audience
  ///
  /// * [String] metaData:
  ///   External custom client defined data
  ///
  /// * [String] visibility:
  ///   Visibility of the audience
  ///
  /// * [String] audienceType:
  ///   Type of audience
  ///
  /// * [bool] useOrder:
  ///   Use order for cohort
  ///
  /// * [String] cohortRegionsData:
  ///   Cohort data for \"cohort\" audience type
  ///
  /// * [String] appKey:
  ///   Filter results by application key
  ///
  /// * [String] trilaterationTypes:
  ///   Trilateration types
  ///
  /// * [bool] uniqueName:
  ///   If true, makes sure the audience name is unique
  Future<AudienceResponse?> updateAudience(num version, int accountId, int audienceId, { String? name, String? description, String? searchTags, String? gender, String? ageGroups, String? categoryIds, String? applicationIds, String? gameExperienceLevel, String? devices, String? deviceIds, String? deviceVersions, String? locations, String? radius, bool? active, bool? sendSuggestion, int? startTimeOffset, int? endTimeOffset, String? associateDescription, String? associateType, int? associateId, String? groupingId, String? metaData, String? visibility, String? audienceType, bool? useOrder, String? cohortRegionsData, String? appKey, String? trilaterationTypes, bool? uniqueName, }) async {
    final response = await updateAudienceWithHttpInfo(version, accountId, audienceId,  name: name, description: description, searchTags: searchTags, gender: gender, ageGroups: ageGroups, categoryIds: categoryIds, applicationIds: applicationIds, gameExperienceLevel: gameExperienceLevel, devices: devices, deviceIds: deviceIds, deviceVersions: deviceVersions, locations: locations, radius: radius, active: active, sendSuggestion: sendSuggestion, startTimeOffset: startTimeOffset, endTimeOffset: endTimeOffset, associateDescription: associateDescription, associateType: associateType, associateId: associateId, groupingId: groupingId, metaData: metaData, visibility: visibility, audienceType: audienceType, useOrder: useOrder, cohortRegionsData: cohortRegionsData, appKey: appKey, trilaterationTypes: trilaterationTypes, uniqueName: uniqueName, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'AudienceResponse',) as AudienceResponse;
    
    }
    return null;
  }
}
