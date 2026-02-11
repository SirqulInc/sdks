//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class AccountApi {
  AccountApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Search Accounts by Location
  ///
  /// Search accounts by their location. This only searches on users that have location data. Use ConnectionApi to perform a regular search on accounts.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] deviceId:
  ///   The device id (deviceId or accountId required)
  ///
  /// * [int] accountId:
  ///   The account id of the user (deviceId or accountId required)
  ///
  /// * [String] q:
  ///   Deprecated - legacy query parameter
  ///
  /// * [String] keyword:
  ///   An optional keyword to search on, will be ignore if empty (NOT implemented yet)
  ///
  /// * [String] postalCode:
  ///   The postal code to search on, either postalCode or the user's exact location is required
  ///
  /// * [double] latitude:
  ///   The latitude of the user, either postalCode or the user's exact location is required
  ///
  /// * [double] longitude:
  ///   The longitude of the user, either postalCode or the user's exact location is required
  ///
  /// * [String] appKey:
  ///   The application key
  ///
  /// * [double] range:
  ///   The range to search on
  ///
  /// * [int] locationLastUpdated:
  ///   Searches for user's that has updated their location since this date
  ///
  /// * [String] gender:
  ///   The preferred gender
  ///
  /// * [int] minAge:
  ///   The preferred min age
  ///
  /// * [int] maxAge:
  ///   The preferred max age
  ///
  /// * [int] companionshipIndex:
  ///   The preferred companionship index
  ///
  /// * [int] i:
  ///   this is the start index of a query
  ///
  /// * [int] start:
  ///   Start of the pagination
  ///
  /// * [int] l:
  ///   this is the limit index of a query
  ///
  /// * [int] limit:
  ///   Limit of the pagination
  ///
  /// * [String] searchMode:
  ///   Search mode to use for index searches (e.g. CLOUDINDEX, OPENSEARCH)
  ///
  /// * [String] sortField:
  ///   Sorting field for results (default: DISTANCE)
  ///
  /// * [bool] descending:
  ///   Whether to sort descending (default: false)
  ///
  /// * [String] roles:
  ///   Roles to filter on
  ///
  /// * [String] tags:
  ///   Tags to filter on
  ///
  /// * [String] experience:
  ///   The experience to filter on
  ///
  /// * [String] categoryIds:
  ///   The category ids to filter on (comma separated)
  ///
  /// * [String] audienceIds:
  ///   The audience ids to filter on (comma separated)
  ///
  /// * [String] audienceOperator:
  ///   Operator used to combine audience filters (default: AND)
  ///
  /// * [bool] updateCurrentLocation:
  ///   Whether to use the given lat & long to update the user's current location
  ///
  /// * [bool] updatePreferredSettings:
  ///   Whether to use the given parameters to update the user's preferred settings
  ///
  /// * [bool] showExactLocations:
  ///   Determines whether to always display user exact locations
  ///
  /// * [bool] showConnectionToSearcher:
  ///   Return connection of the accounts in the result to the passed in account if there exists any
  ///
  /// * [int] flagCountMinimum:
  ///   Return any results that have a minimum of the specified flag count (even ones that have met the flag threshold)
  ///
  /// * [bool] verifiedUserOnly:
  ///   Returns only verified users
  ///
  /// * [bool] contentAdminOnly:
  ///   Returns only content admin users
  Future<Response> accountLocationSearchWithHttpInfo({ String? deviceId, int? accountId, String? q, String? keyword, String? postalCode, double? latitude, double? longitude, String? appKey, double? range, int? locationLastUpdated, String? gender, int? minAge, int? maxAge, int? companionshipIndex, int? i, int? start, int? l, int? limit, String? searchMode, String? sortField, bool? descending, String? roles, String? tags, String? experience, String? categoryIds, String? audienceIds, String? audienceOperator, bool? updateCurrentLocation, bool? updatePreferredSettings, bool? showExactLocations, bool? showConnectionToSearcher, int? flagCountMinimum, bool? verifiedUserOnly, bool? contentAdminOnly, }) async {
    // ignore: prefer_const_declarations
    final path = r'/account/search';

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
    if (q != null) {
      queryParams.addAll(_queryParams('', 'q', q));
    }
    if (keyword != null) {
      queryParams.addAll(_queryParams('', 'keyword', keyword));
    }
    if (postalCode != null) {
      queryParams.addAll(_queryParams('', 'postalCode', postalCode));
    }
    if (latitude != null) {
      queryParams.addAll(_queryParams('', 'latitude', latitude));
    }
    if (longitude != null) {
      queryParams.addAll(_queryParams('', 'longitude', longitude));
    }
    if (appKey != null) {
      queryParams.addAll(_queryParams('', 'appKey', appKey));
    }
    if (range != null) {
      queryParams.addAll(_queryParams('', 'range', range));
    }
    if (locationLastUpdated != null) {
      queryParams.addAll(_queryParams('', 'locationLastUpdated', locationLastUpdated));
    }
    if (gender != null) {
      queryParams.addAll(_queryParams('', 'gender', gender));
    }
    if (minAge != null) {
      queryParams.addAll(_queryParams('', 'minAge', minAge));
    }
    if (maxAge != null) {
      queryParams.addAll(_queryParams('', 'maxAge', maxAge));
    }
    if (companionshipIndex != null) {
      queryParams.addAll(_queryParams('', 'companionshipIndex', companionshipIndex));
    }
    if (i != null) {
      queryParams.addAll(_queryParams('', '_i', i));
    }
    if (start != null) {
      queryParams.addAll(_queryParams('', 'start', start));
    }
    if (l != null) {
      queryParams.addAll(_queryParams('', '_l', l));
    }
    if (limit != null) {
      queryParams.addAll(_queryParams('', 'limit', limit));
    }
    if (searchMode != null) {
      queryParams.addAll(_queryParams('', 'searchMode', searchMode));
    }
    if (sortField != null) {
      queryParams.addAll(_queryParams('', 'sortField', sortField));
    }
    if (descending != null) {
      queryParams.addAll(_queryParams('', 'descending', descending));
    }
    if (roles != null) {
      queryParams.addAll(_queryParams('', 'roles', roles));
    }
    if (tags != null) {
      queryParams.addAll(_queryParams('', 'tags', tags));
    }
    if (experience != null) {
      queryParams.addAll(_queryParams('', 'experience', experience));
    }
    if (categoryIds != null) {
      queryParams.addAll(_queryParams('', 'categoryIds', categoryIds));
    }
    if (audienceIds != null) {
      queryParams.addAll(_queryParams('', 'audienceIds', audienceIds));
    }
    if (audienceOperator != null) {
      queryParams.addAll(_queryParams('', 'audienceOperator', audienceOperator));
    }
    if (updateCurrentLocation != null) {
      queryParams.addAll(_queryParams('', 'updateCurrentLocation', updateCurrentLocation));
    }
    if (updatePreferredSettings != null) {
      queryParams.addAll(_queryParams('', 'updatePreferredSettings', updatePreferredSettings));
    }
    if (showExactLocations != null) {
      queryParams.addAll(_queryParams('', 'showExactLocations', showExactLocations));
    }
    if (showConnectionToSearcher != null) {
      queryParams.addAll(_queryParams('', 'showConnectionToSearcher', showConnectionToSearcher));
    }
    if (flagCountMinimum != null) {
      queryParams.addAll(_queryParams('', 'flagCountMinimum', flagCountMinimum));
    }
    if (verifiedUserOnly != null) {
      queryParams.addAll(_queryParams('', 'verifiedUserOnly', verifiedUserOnly));
    }
    if (contentAdminOnly != null) {
      queryParams.addAll(_queryParams('', 'contentAdminOnly', contentAdminOnly));
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

  /// Search Accounts by Location
  ///
  /// Search accounts by their location. This only searches on users that have location data. Use ConnectionApi to perform a regular search on accounts.
  ///
  /// Parameters:
  ///
  /// * [String] deviceId:
  ///   The device id (deviceId or accountId required)
  ///
  /// * [int] accountId:
  ///   The account id of the user (deviceId or accountId required)
  ///
  /// * [String] q:
  ///   Deprecated - legacy query parameter
  ///
  /// * [String] keyword:
  ///   An optional keyword to search on, will be ignore if empty (NOT implemented yet)
  ///
  /// * [String] postalCode:
  ///   The postal code to search on, either postalCode or the user's exact location is required
  ///
  /// * [double] latitude:
  ///   The latitude of the user, either postalCode or the user's exact location is required
  ///
  /// * [double] longitude:
  ///   The longitude of the user, either postalCode or the user's exact location is required
  ///
  /// * [String] appKey:
  ///   The application key
  ///
  /// * [double] range:
  ///   The range to search on
  ///
  /// * [int] locationLastUpdated:
  ///   Searches for user's that has updated their location since this date
  ///
  /// * [String] gender:
  ///   The preferred gender
  ///
  /// * [int] minAge:
  ///   The preferred min age
  ///
  /// * [int] maxAge:
  ///   The preferred max age
  ///
  /// * [int] companionshipIndex:
  ///   The preferred companionship index
  ///
  /// * [int] i:
  ///   this is the start index of a query
  ///
  /// * [int] start:
  ///   Start of the pagination
  ///
  /// * [int] l:
  ///   this is the limit index of a query
  ///
  /// * [int] limit:
  ///   Limit of the pagination
  ///
  /// * [String] searchMode:
  ///   Search mode to use for index searches (e.g. CLOUDINDEX, OPENSEARCH)
  ///
  /// * [String] sortField:
  ///   Sorting field for results (default: DISTANCE)
  ///
  /// * [bool] descending:
  ///   Whether to sort descending (default: false)
  ///
  /// * [String] roles:
  ///   Roles to filter on
  ///
  /// * [String] tags:
  ///   Tags to filter on
  ///
  /// * [String] experience:
  ///   The experience to filter on
  ///
  /// * [String] categoryIds:
  ///   The category ids to filter on (comma separated)
  ///
  /// * [String] audienceIds:
  ///   The audience ids to filter on (comma separated)
  ///
  /// * [String] audienceOperator:
  ///   Operator used to combine audience filters (default: AND)
  ///
  /// * [bool] updateCurrentLocation:
  ///   Whether to use the given lat & long to update the user's current location
  ///
  /// * [bool] updatePreferredSettings:
  ///   Whether to use the given parameters to update the user's preferred settings
  ///
  /// * [bool] showExactLocations:
  ///   Determines whether to always display user exact locations
  ///
  /// * [bool] showConnectionToSearcher:
  ///   Return connection of the accounts in the result to the passed in account if there exists any
  ///
  /// * [int] flagCountMinimum:
  ///   Return any results that have a minimum of the specified flag count (even ones that have met the flag threshold)
  ///
  /// * [bool] verifiedUserOnly:
  ///   Returns only verified users
  ///
  /// * [bool] contentAdminOnly:
  ///   Returns only content admin users
  Future<UserLocationSearchResponse?> accountLocationSearch({ String? deviceId, int? accountId, String? q, String? keyword, String? postalCode, double? latitude, double? longitude, String? appKey, double? range, int? locationLastUpdated, String? gender, int? minAge, int? maxAge, int? companionshipIndex, int? i, int? start, int? l, int? limit, String? searchMode, String? sortField, bool? descending, String? roles, String? tags, String? experience, String? categoryIds, String? audienceIds, String? audienceOperator, bool? updateCurrentLocation, bool? updatePreferredSettings, bool? showExactLocations, bool? showConnectionToSearcher, int? flagCountMinimum, bool? verifiedUserOnly, bool? contentAdminOnly, }) async {
    final response = await accountLocationSearchWithHttpInfo( deviceId: deviceId, accountId: accountId, q: q, keyword: keyword, postalCode: postalCode, latitude: latitude, longitude: longitude, appKey: appKey, range: range, locationLastUpdated: locationLastUpdated, gender: gender, minAge: minAge, maxAge: maxAge, companionshipIndex: companionshipIndex, i: i, start: start, l: l, limit: limit, searchMode: searchMode, sortField: sortField, descending: descending, roles: roles, tags: tags, experience: experience, categoryIds: categoryIds, audienceIds: audienceIds, audienceOperator: audienceOperator, updateCurrentLocation: updateCurrentLocation, updatePreferredSettings: updatePreferredSettings, showExactLocations: showExactLocations, showConnectionToSearcher: showConnectionToSearcher, flagCountMinimum: flagCountMinimum, verifiedUserOnly: verifiedUserOnly, contentAdminOnly: contentAdminOnly, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'UserLocationSearchResponse',) as UserLocationSearchResponse;
    
    }
    return null;
  }

  /// Block Account
  ///
  /// Moves or removes an account into the user's blocked group.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] accountIdBeingBlocked (required):
  ///   The id of the account to be blocked/unblocked
  ///
  /// * [String] deviceId:
  ///   The device id (deviceId or accountId required)
  ///
  /// * [int] accountId:
  ///   The account id of the user (deviceId or accountId required)
  ///
  /// * [bool] blockFlagValue:
  ///   Determines whether the account is blocked or unblocked
  ///
  /// * [bool] removeFromGroupsIfBlocked:
  ///   Determines whether the account is removed from all other groups if blocked
  ///
  /// * [double] latitude:
  ///   The current latitude of the user
  ///
  /// * [double] longitude:
  ///   The current longitude of the user
  Future<Response> blockAccountWithHttpInfo(int accountIdBeingBlocked, { String? deviceId, int? accountId, bool? blockFlagValue, bool? removeFromGroupsIfBlocked, double? latitude, double? longitude, }) async {
    // ignore: prefer_const_declarations
    final path = r'/account/block';

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
      queryParams.addAll(_queryParams('', 'accountIdBeingBlocked', accountIdBeingBlocked));
    if (blockFlagValue != null) {
      queryParams.addAll(_queryParams('', 'blockFlagValue', blockFlagValue));
    }
    if (removeFromGroupsIfBlocked != null) {
      queryParams.addAll(_queryParams('', 'removeFromGroupsIfBlocked', removeFromGroupsIfBlocked));
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

  /// Block Account
  ///
  /// Moves or removes an account into the user's blocked group.
  ///
  /// Parameters:
  ///
  /// * [int] accountIdBeingBlocked (required):
  ///   The id of the account to be blocked/unblocked
  ///
  /// * [String] deviceId:
  ///   The device id (deviceId or accountId required)
  ///
  /// * [int] accountId:
  ///   The account id of the user (deviceId or accountId required)
  ///
  /// * [bool] blockFlagValue:
  ///   Determines whether the account is blocked or unblocked
  ///
  /// * [bool] removeFromGroupsIfBlocked:
  ///   Determines whether the account is removed from all other groups if blocked
  ///
  /// * [double] latitude:
  ///   The current latitude of the user
  ///
  /// * [double] longitude:
  ///   The current longitude of the user
  Future<SirqulResponse?> blockAccount(int accountIdBeingBlocked, { String? deviceId, int? accountId, bool? blockFlagValue, bool? removeFromGroupsIfBlocked, double? latitude, double? longitude, }) async {
    final response = await blockAccountWithHttpInfo(accountIdBeingBlocked,  deviceId: deviceId, accountId: accountId, blockFlagValue: blockFlagValue, removeFromGroupsIfBlocked: removeFromGroupsIfBlocked, latitude: latitude, longitude: longitude, );
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

  /// Create Account
  ///
  /// Create a new account by role.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] username (required):
  ///   The access token to authenticate with (ex: username)
  ///
  /// * [String] password (required):
  ///   The secret to authenticate with (ex: password)
  ///
  /// * [String] name:
  ///   The full name of the user. If this parameter is NOT empty, the following parameters will be ignored: prefixName, firstName, middleName, lastName, and suffixName
  ///
  /// * [String] prefixName:
  ///   If the parameter 'name' is empty or not present, this field will be used to set the prefix of the user's name
  ///
  /// * [String] firstName:
  ///   If the parameter 'name' is empty or not present, this field will be used to set the user's first name
  ///
  /// * [String] middleName:
  ///   If the parameter 'name' is empty or not present, this field will be used to set the user's middle name
  ///
  /// * [String] lastName:
  ///   If the parameter 'name' is empty or not present, this field will be used to set the user's last name
  ///
  /// * [String] suffixName:
  ///   If the parameter 'name' is empty or not present, this field will be used to set the suffix of the user's name
  ///
  /// * [String] title:
  ///   This field will be used to set the user's job title
  ///
  /// * [String] deviceId:
  ///   The unique id of the device making the request
  ///
  /// * [String] deviceIdType:
  ///   The type of device id (this is defined by the client), ie. MAC_ADDRESS, APPLE_UDID, etc
  ///
  /// * [String] emailAddress:
  ///   The user's contact email address (NOT the username)
  ///
  /// * [int] assetId:
  ///   The asset id to set the user's profile image
  ///
  /// * [String] streetAddress:
  ///   The street address of the user's contact location
  ///
  /// * [String] zipcode:
  ///   The zipcode of the user's contact location
  ///
  /// * [String] gender:
  ///   The gender of the user (AudienceGender)
  ///
  /// * [int] birthday:
  ///   The birthday date of the user in UTC milliseconds
  ///
  /// * [String] homePhone:
  ///   The home phone number
  ///
  /// * [String] cellPhone:
  ///   The cellular phone number
  ///
  /// * [String] cellPhoneCarrier:
  ///   The cellular service provider
  ///
  /// * [String] businessPhone:
  ///   The business phone number
  ///
  /// * [String] role:
  ///   The account role (default: MEMBER)
  ///
  /// * [String] platforms:
  ///   Comma separated list of development platforms
  ///
  /// * [String] tags:
  ///   Search tags
  ///
  /// * [String] aboutUs:
  ///   About us information
  ///
  /// * [String] gameExperience:
  ///   Game experience of the user
  ///
  /// * [String] categoryIds:
  ///   A list of category ids that represent interests and associations
  ///
  /// * [String] hometown:
  ///   The user's hometown
  ///
  /// * [String] height:
  ///   The user's height
  ///
  /// * [int] heightIndex:
  ///   The user's height in a numerical value that can be used for ordering/searching
  ///
  /// * [String] ethnicity:
  ///   The user's ethnicity
  ///
  /// * [String] bodyType:
  ///   The user's body type
  ///
  /// * [String] maritalStatus:
  ///   The user's marital status
  ///
  /// * [String] children:
  ///   The user's children status
  ///
  /// * [String] religion:
  ///   The user's religion
  ///
  /// * [String] education:
  ///   The user's education
  ///
  /// * [int] educationIndex:
  ///   The user's education in a numerical value that can be used for ordering/searching
  ///
  /// * [String] smoke:
  ///   The user's smoke status
  ///
  /// * [String] drink:
  ///   The user's drink status
  ///
  /// * [String] companionship:
  ///   The user's companionship status
  ///
  /// * [int] companionshipIndex:
  ///   The user's companionship index
  ///
  /// * [int] preferredMinAge:
  ///   The preferred minimum age in the account location search
  ///
  /// * [int] preferredMaxAge:
  ///   The preferred maximum age in the account location search
  ///
  /// * [int] preferredMinHeight:
  ///   The preferred minimum height in the account location search
  ///
  /// * [int] preferredMaxHeight:
  ///   The preferred maximum height in the account location search
  ///
  /// * [String] preferredGender:
  ///   The preferred gender in the account location search
  ///
  /// * [String] preferredEducation:
  ///   The preferred education in the account location search
  ///
  /// * [int] preferredEducationIndex:
  ///   The preferred education in a numerical value that can be used for ordering/searching
  ///
  /// * [String] preferredBodyType:
  ///   The preferred body type in the account location search
  ///
  /// * [String] preferredEthnicity:
  ///   The preferred ethnicity in the account location search
  ///
  /// * [String] preferredLocation:
  ///   The preferred location in the account location search
  ///
  /// * [double] preferredLocationRange:
  ///   The preferred location range in the account location search
  ///
  /// * [double] latitude:
  ///   The current latitude of the user
  ///
  /// * [double] longitude:
  ///   The current longitude of the user
  ///
  /// * [bool] acceptedTerms:
  ///   Accepted Terms
  ///
  /// * [String] inviteToken:
  ///   The inviteToken that the referrer used for this account to sign up
  ///
  /// * [int] referralAccountId:
  ///   The accountId of the referrer (used if there is no inviteToken)
  ///
  /// * [bool] sendValidation:
  ///   Whether to send validation email
  ///
  /// * [String] gameType:
  ///   Deprecated: use appKey
  ///
  /// * [String] appKey:
  ///   The application key
  ///
  /// * [String] appVersion:
  ///   The application version
  ///
  /// * [String] responseType:
  ///   Returns an AccountLoginResponse if \"AccountLoginResponse\" is passed in
  ///
  /// * [String] audienceIdsToAdd:
  ///   Comma separated list of audience ids to assign to the user
  ///
  /// * [String] appBlob:
  ///   Application blob data
  ///
  /// * [bool] appEnablePush:
  ///   Enable push for the app
  ///
  /// * [bool] appEnableSMS:
  ///   Enable SMS for the app
  ///
  /// * [bool] appEnableEmail:
  ///   Enable email for the app
  ///
  /// * [String] locationVisibility:
  ///   Location visibility setting
  ///
  /// * [double] homeLatitude:
  ///   Home latitude
  ///
  /// * [double] homeLongitude:
  ///   Home longitude
  ///
  /// * [String] appNickname:
  ///   The nickname used in the application for this account
  ///
  /// * [int] personalAudienceId:
  ///   Personal audience id to associate with this account
  Future<Response> createAccountWithHttpInfo(String username, String password, { String? name, String? prefixName, String? firstName, String? middleName, String? lastName, String? suffixName, String? title, String? deviceId, String? deviceIdType, String? emailAddress, int? assetId, String? streetAddress, String? zipcode, String? gender, int? birthday, String? homePhone, String? cellPhone, String? cellPhoneCarrier, String? businessPhone, String? role, String? platforms, String? tags, String? aboutUs, String? gameExperience, String? categoryIds, String? hometown, String? height, int? heightIndex, String? ethnicity, String? bodyType, String? maritalStatus, String? children, String? religion, String? education, int? educationIndex, String? smoke, String? drink, String? companionship, int? companionshipIndex, int? preferredMinAge, int? preferredMaxAge, int? preferredMinHeight, int? preferredMaxHeight, String? preferredGender, String? preferredEducation, int? preferredEducationIndex, String? preferredBodyType, String? preferredEthnicity, String? preferredLocation, double? preferredLocationRange, double? latitude, double? longitude, bool? acceptedTerms, String? inviteToken, int? referralAccountId, bool? sendValidation, String? gameType, String? appKey, String? appVersion, String? responseType, String? audienceIdsToAdd, String? appBlob, bool? appEnablePush, bool? appEnableSMS, bool? appEnableEmail, String? locationVisibility, double? homeLatitude, double? homeLongitude, String? appNickname, int? personalAudienceId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/account/create';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (name != null) {
      queryParams.addAll(_queryParams('', 'name', name));
    }
    if (prefixName != null) {
      queryParams.addAll(_queryParams('', 'prefixName', prefixName));
    }
    if (firstName != null) {
      queryParams.addAll(_queryParams('', 'firstName', firstName));
    }
    if (middleName != null) {
      queryParams.addAll(_queryParams('', 'middleName', middleName));
    }
    if (lastName != null) {
      queryParams.addAll(_queryParams('', 'lastName', lastName));
    }
    if (suffixName != null) {
      queryParams.addAll(_queryParams('', 'suffixName', suffixName));
    }
    if (title != null) {
      queryParams.addAll(_queryParams('', 'title', title));
    }
    if (deviceId != null) {
      queryParams.addAll(_queryParams('', 'deviceId', deviceId));
    }
    if (deviceIdType != null) {
      queryParams.addAll(_queryParams('', 'deviceIdType', deviceIdType));
    }
      queryParams.addAll(_queryParams('', 'username', username));
      queryParams.addAll(_queryParams('', 'password', password));
    if (emailAddress != null) {
      queryParams.addAll(_queryParams('', 'emailAddress', emailAddress));
    }
    if (assetId != null) {
      queryParams.addAll(_queryParams('', 'assetId', assetId));
    }
    if (streetAddress != null) {
      queryParams.addAll(_queryParams('', 'streetAddress', streetAddress));
    }
    if (zipcode != null) {
      queryParams.addAll(_queryParams('', 'zipcode', zipcode));
    }
    if (gender != null) {
      queryParams.addAll(_queryParams('', 'gender', gender));
    }
    if (birthday != null) {
      queryParams.addAll(_queryParams('', 'birthday', birthday));
    }
    if (homePhone != null) {
      queryParams.addAll(_queryParams('', 'homePhone', homePhone));
    }
    if (cellPhone != null) {
      queryParams.addAll(_queryParams('', 'cellPhone', cellPhone));
    }
    if (cellPhoneCarrier != null) {
      queryParams.addAll(_queryParams('', 'cellPhoneCarrier', cellPhoneCarrier));
    }
    if (businessPhone != null) {
      queryParams.addAll(_queryParams('', 'businessPhone', businessPhone));
    }
    if (role != null) {
      queryParams.addAll(_queryParams('', 'role', role));
    }
    if (platforms != null) {
      queryParams.addAll(_queryParams('', 'platforms', platforms));
    }
    if (tags != null) {
      queryParams.addAll(_queryParams('', 'tags', tags));
    }
    if (aboutUs != null) {
      queryParams.addAll(_queryParams('', 'aboutUs', aboutUs));
    }
    if (gameExperience != null) {
      queryParams.addAll(_queryParams('', 'gameExperience', gameExperience));
    }
    if (categoryIds != null) {
      queryParams.addAll(_queryParams('', 'categoryIds', categoryIds));
    }
    if (hometown != null) {
      queryParams.addAll(_queryParams('', 'hometown', hometown));
    }
    if (height != null) {
      queryParams.addAll(_queryParams('', 'height', height));
    }
    if (heightIndex != null) {
      queryParams.addAll(_queryParams('', 'heightIndex', heightIndex));
    }
    if (ethnicity != null) {
      queryParams.addAll(_queryParams('', 'ethnicity', ethnicity));
    }
    if (bodyType != null) {
      queryParams.addAll(_queryParams('', 'bodyType', bodyType));
    }
    if (maritalStatus != null) {
      queryParams.addAll(_queryParams('', 'maritalStatus', maritalStatus));
    }
    if (children != null) {
      queryParams.addAll(_queryParams('', 'children', children));
    }
    if (religion != null) {
      queryParams.addAll(_queryParams('', 'religion', religion));
    }
    if (education != null) {
      queryParams.addAll(_queryParams('', 'education', education));
    }
    if (educationIndex != null) {
      queryParams.addAll(_queryParams('', 'educationIndex', educationIndex));
    }
    if (smoke != null) {
      queryParams.addAll(_queryParams('', 'smoke', smoke));
    }
    if (drink != null) {
      queryParams.addAll(_queryParams('', 'drink', drink));
    }
    if (companionship != null) {
      queryParams.addAll(_queryParams('', 'companionship', companionship));
    }
    if (companionshipIndex != null) {
      queryParams.addAll(_queryParams('', 'companionshipIndex', companionshipIndex));
    }
    if (preferredMinAge != null) {
      queryParams.addAll(_queryParams('', 'preferredMinAge', preferredMinAge));
    }
    if (preferredMaxAge != null) {
      queryParams.addAll(_queryParams('', 'preferredMaxAge', preferredMaxAge));
    }
    if (preferredMinHeight != null) {
      queryParams.addAll(_queryParams('', 'preferredMinHeight', preferredMinHeight));
    }
    if (preferredMaxHeight != null) {
      queryParams.addAll(_queryParams('', 'preferredMaxHeight', preferredMaxHeight));
    }
    if (preferredGender != null) {
      queryParams.addAll(_queryParams('', 'preferredGender', preferredGender));
    }
    if (preferredEducation != null) {
      queryParams.addAll(_queryParams('', 'preferredEducation', preferredEducation));
    }
    if (preferredEducationIndex != null) {
      queryParams.addAll(_queryParams('', 'preferredEducationIndex', preferredEducationIndex));
    }
    if (preferredBodyType != null) {
      queryParams.addAll(_queryParams('', 'preferredBodyType', preferredBodyType));
    }
    if (preferredEthnicity != null) {
      queryParams.addAll(_queryParams('', 'preferredEthnicity', preferredEthnicity));
    }
    if (preferredLocation != null) {
      queryParams.addAll(_queryParams('', 'preferredLocation', preferredLocation));
    }
    if (preferredLocationRange != null) {
      queryParams.addAll(_queryParams('', 'preferredLocationRange', preferredLocationRange));
    }
    if (latitude != null) {
      queryParams.addAll(_queryParams('', 'latitude', latitude));
    }
    if (longitude != null) {
      queryParams.addAll(_queryParams('', 'longitude', longitude));
    }
    if (acceptedTerms != null) {
      queryParams.addAll(_queryParams('', 'acceptedTerms', acceptedTerms));
    }
    if (inviteToken != null) {
      queryParams.addAll(_queryParams('', 'inviteToken', inviteToken));
    }
    if (referralAccountId != null) {
      queryParams.addAll(_queryParams('', 'referralAccountId', referralAccountId));
    }
    if (sendValidation != null) {
      queryParams.addAll(_queryParams('', 'sendValidation', sendValidation));
    }
    if (gameType != null) {
      queryParams.addAll(_queryParams('', 'gameType', gameType));
    }
    if (appKey != null) {
      queryParams.addAll(_queryParams('', 'appKey', appKey));
    }
    if (appVersion != null) {
      queryParams.addAll(_queryParams('', 'appVersion', appVersion));
    }
    if (responseType != null) {
      queryParams.addAll(_queryParams('', 'responseType', responseType));
    }
    if (audienceIdsToAdd != null) {
      queryParams.addAll(_queryParams('', 'audienceIdsToAdd', audienceIdsToAdd));
    }
    if (appBlob != null) {
      queryParams.addAll(_queryParams('', 'appBlob', appBlob));
    }
    if (appEnablePush != null) {
      queryParams.addAll(_queryParams('', 'appEnablePush', appEnablePush));
    }
    if (appEnableSMS != null) {
      queryParams.addAll(_queryParams('', 'appEnableSMS', appEnableSMS));
    }
    if (appEnableEmail != null) {
      queryParams.addAll(_queryParams('', 'appEnableEmail', appEnableEmail));
    }
    if (locationVisibility != null) {
      queryParams.addAll(_queryParams('', 'locationVisibility', locationVisibility));
    }
    if (homeLatitude != null) {
      queryParams.addAll(_queryParams('', 'homeLatitude', homeLatitude));
    }
    if (homeLongitude != null) {
      queryParams.addAll(_queryParams('', 'homeLongitude', homeLongitude));
    }
    if (appNickname != null) {
      queryParams.addAll(_queryParams('', 'appNickname', appNickname));
    }
    if (personalAudienceId != null) {
      queryParams.addAll(_queryParams('', 'personalAudienceId', personalAudienceId));
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

  /// Create Account
  ///
  /// Create a new account by role.
  ///
  /// Parameters:
  ///
  /// * [String] username (required):
  ///   The access token to authenticate with (ex: username)
  ///
  /// * [String] password (required):
  ///   The secret to authenticate with (ex: password)
  ///
  /// * [String] name:
  ///   The full name of the user. If this parameter is NOT empty, the following parameters will be ignored: prefixName, firstName, middleName, lastName, and suffixName
  ///
  /// * [String] prefixName:
  ///   If the parameter 'name' is empty or not present, this field will be used to set the prefix of the user's name
  ///
  /// * [String] firstName:
  ///   If the parameter 'name' is empty or not present, this field will be used to set the user's first name
  ///
  /// * [String] middleName:
  ///   If the parameter 'name' is empty or not present, this field will be used to set the user's middle name
  ///
  /// * [String] lastName:
  ///   If the parameter 'name' is empty or not present, this field will be used to set the user's last name
  ///
  /// * [String] suffixName:
  ///   If the parameter 'name' is empty or not present, this field will be used to set the suffix of the user's name
  ///
  /// * [String] title:
  ///   This field will be used to set the user's job title
  ///
  /// * [String] deviceId:
  ///   The unique id of the device making the request
  ///
  /// * [String] deviceIdType:
  ///   The type of device id (this is defined by the client), ie. MAC_ADDRESS, APPLE_UDID, etc
  ///
  /// * [String] emailAddress:
  ///   The user's contact email address (NOT the username)
  ///
  /// * [int] assetId:
  ///   The asset id to set the user's profile image
  ///
  /// * [String] streetAddress:
  ///   The street address of the user's contact location
  ///
  /// * [String] zipcode:
  ///   The zipcode of the user's contact location
  ///
  /// * [String] gender:
  ///   The gender of the user (AudienceGender)
  ///
  /// * [int] birthday:
  ///   The birthday date of the user in UTC milliseconds
  ///
  /// * [String] homePhone:
  ///   The home phone number
  ///
  /// * [String] cellPhone:
  ///   The cellular phone number
  ///
  /// * [String] cellPhoneCarrier:
  ///   The cellular service provider
  ///
  /// * [String] businessPhone:
  ///   The business phone number
  ///
  /// * [String] role:
  ///   The account role (default: MEMBER)
  ///
  /// * [String] platforms:
  ///   Comma separated list of development platforms
  ///
  /// * [String] tags:
  ///   Search tags
  ///
  /// * [String] aboutUs:
  ///   About us information
  ///
  /// * [String] gameExperience:
  ///   Game experience of the user
  ///
  /// * [String] categoryIds:
  ///   A list of category ids that represent interests and associations
  ///
  /// * [String] hometown:
  ///   The user's hometown
  ///
  /// * [String] height:
  ///   The user's height
  ///
  /// * [int] heightIndex:
  ///   The user's height in a numerical value that can be used for ordering/searching
  ///
  /// * [String] ethnicity:
  ///   The user's ethnicity
  ///
  /// * [String] bodyType:
  ///   The user's body type
  ///
  /// * [String] maritalStatus:
  ///   The user's marital status
  ///
  /// * [String] children:
  ///   The user's children status
  ///
  /// * [String] religion:
  ///   The user's religion
  ///
  /// * [String] education:
  ///   The user's education
  ///
  /// * [int] educationIndex:
  ///   The user's education in a numerical value that can be used for ordering/searching
  ///
  /// * [String] smoke:
  ///   The user's smoke status
  ///
  /// * [String] drink:
  ///   The user's drink status
  ///
  /// * [String] companionship:
  ///   The user's companionship status
  ///
  /// * [int] companionshipIndex:
  ///   The user's companionship index
  ///
  /// * [int] preferredMinAge:
  ///   The preferred minimum age in the account location search
  ///
  /// * [int] preferredMaxAge:
  ///   The preferred maximum age in the account location search
  ///
  /// * [int] preferredMinHeight:
  ///   The preferred minimum height in the account location search
  ///
  /// * [int] preferredMaxHeight:
  ///   The preferred maximum height in the account location search
  ///
  /// * [String] preferredGender:
  ///   The preferred gender in the account location search
  ///
  /// * [String] preferredEducation:
  ///   The preferred education in the account location search
  ///
  /// * [int] preferredEducationIndex:
  ///   The preferred education in a numerical value that can be used for ordering/searching
  ///
  /// * [String] preferredBodyType:
  ///   The preferred body type in the account location search
  ///
  /// * [String] preferredEthnicity:
  ///   The preferred ethnicity in the account location search
  ///
  /// * [String] preferredLocation:
  ///   The preferred location in the account location search
  ///
  /// * [double] preferredLocationRange:
  ///   The preferred location range in the account location search
  ///
  /// * [double] latitude:
  ///   The current latitude of the user
  ///
  /// * [double] longitude:
  ///   The current longitude of the user
  ///
  /// * [bool] acceptedTerms:
  ///   Accepted Terms
  ///
  /// * [String] inviteToken:
  ///   The inviteToken that the referrer used for this account to sign up
  ///
  /// * [int] referralAccountId:
  ///   The accountId of the referrer (used if there is no inviteToken)
  ///
  /// * [bool] sendValidation:
  ///   Whether to send validation email
  ///
  /// * [String] gameType:
  ///   Deprecated: use appKey
  ///
  /// * [String] appKey:
  ///   The application key
  ///
  /// * [String] appVersion:
  ///   The application version
  ///
  /// * [String] responseType:
  ///   Returns an AccountLoginResponse if \"AccountLoginResponse\" is passed in
  ///
  /// * [String] audienceIdsToAdd:
  ///   Comma separated list of audience ids to assign to the user
  ///
  /// * [String] appBlob:
  ///   Application blob data
  ///
  /// * [bool] appEnablePush:
  ///   Enable push for the app
  ///
  /// * [bool] appEnableSMS:
  ///   Enable SMS for the app
  ///
  /// * [bool] appEnableEmail:
  ///   Enable email for the app
  ///
  /// * [String] locationVisibility:
  ///   Location visibility setting
  ///
  /// * [double] homeLatitude:
  ///   Home latitude
  ///
  /// * [double] homeLongitude:
  ///   Home longitude
  ///
  /// * [String] appNickname:
  ///   The nickname used in the application for this account
  ///
  /// * [int] personalAudienceId:
  ///   Personal audience id to associate with this account
  Future<AccountLoginResponse?> createAccount(String username, String password, { String? name, String? prefixName, String? firstName, String? middleName, String? lastName, String? suffixName, String? title, String? deviceId, String? deviceIdType, String? emailAddress, int? assetId, String? streetAddress, String? zipcode, String? gender, int? birthday, String? homePhone, String? cellPhone, String? cellPhoneCarrier, String? businessPhone, String? role, String? platforms, String? tags, String? aboutUs, String? gameExperience, String? categoryIds, String? hometown, String? height, int? heightIndex, String? ethnicity, String? bodyType, String? maritalStatus, String? children, String? religion, String? education, int? educationIndex, String? smoke, String? drink, String? companionship, int? companionshipIndex, int? preferredMinAge, int? preferredMaxAge, int? preferredMinHeight, int? preferredMaxHeight, String? preferredGender, String? preferredEducation, int? preferredEducationIndex, String? preferredBodyType, String? preferredEthnicity, String? preferredLocation, double? preferredLocationRange, double? latitude, double? longitude, bool? acceptedTerms, String? inviteToken, int? referralAccountId, bool? sendValidation, String? gameType, String? appKey, String? appVersion, String? responseType, String? audienceIdsToAdd, String? appBlob, bool? appEnablePush, bool? appEnableSMS, bool? appEnableEmail, String? locationVisibility, double? homeLatitude, double? homeLongitude, String? appNickname, int? personalAudienceId, }) async {
    final response = await createAccountWithHttpInfo(username, password,  name: name, prefixName: prefixName, firstName: firstName, middleName: middleName, lastName: lastName, suffixName: suffixName, title: title, deviceId: deviceId, deviceIdType: deviceIdType, emailAddress: emailAddress, assetId: assetId, streetAddress: streetAddress, zipcode: zipcode, gender: gender, birthday: birthday, homePhone: homePhone, cellPhone: cellPhone, cellPhoneCarrier: cellPhoneCarrier, businessPhone: businessPhone, role: role, platforms: platforms, tags: tags, aboutUs: aboutUs, gameExperience: gameExperience, categoryIds: categoryIds, hometown: hometown, height: height, heightIndex: heightIndex, ethnicity: ethnicity, bodyType: bodyType, maritalStatus: maritalStatus, children: children, religion: religion, education: education, educationIndex: educationIndex, smoke: smoke, drink: drink, companionship: companionship, companionshipIndex: companionshipIndex, preferredMinAge: preferredMinAge, preferredMaxAge: preferredMaxAge, preferredMinHeight: preferredMinHeight, preferredMaxHeight: preferredMaxHeight, preferredGender: preferredGender, preferredEducation: preferredEducation, preferredEducationIndex: preferredEducationIndex, preferredBodyType: preferredBodyType, preferredEthnicity: preferredEthnicity, preferredLocation: preferredLocation, preferredLocationRange: preferredLocationRange, latitude: latitude, longitude: longitude, acceptedTerms: acceptedTerms, inviteToken: inviteToken, referralAccountId: referralAccountId, sendValidation: sendValidation, gameType: gameType, appKey: appKey, appVersion: appVersion, responseType: responseType, audienceIdsToAdd: audienceIdsToAdd, appBlob: appBlob, appEnablePush: appEnablePush, appEnableSMS: appEnableSMS, appEnableEmail: appEnableEmail, locationVisibility: locationVisibility, homeLatitude: homeLatitude, homeLongitude: homeLongitude, appNickname: appNickname, personalAudienceId: personalAudienceId, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'AccountLoginResponse',) as AccountLoginResponse;
    
    }
    return null;
  }

  /// Update Account
  ///
  /// Edit the user's profile information
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] deviceId:
  ///   The device id (deviceId or accountId required)
  ///
  /// * [int] accountId:
  ///   The account id of the user (deviceId or accountId required)
  ///
  /// * [int] connectionAccountId:
  ///   The account id used to edit another person's account
  ///
  /// * [String] role:
  ///   The account role to change to
  ///
  /// * [int] assetId:
  ///   The asset id to set the user's profile image
  ///
  /// * [String] name:
  ///   The full name of the user. If this parameter is NOT empty, the  following parameters will be ignored: prefixName, firstName, middleName,  lastName, and suffixName 
  ///
  /// * [String] prefixName:
  ///   If the parameter 'name' is empty or not present, this field will be used to set the prefix of the user's name
  ///
  /// * [String] firstName:
  ///   If the parameter 'name' is empty or not present, this field will be used to set the user's first name
  ///
  /// * [String] middleName:
  ///   If the parameter 'name' is empty or not present, this field will be used to set the user's middle name
  ///
  /// * [String] lastName:
  ///   If the parameter 'name' is empty or not present, this field will be used to set the user's last name
  ///
  /// * [String] suffixName:
  ///   If the parameter 'name' is empty or not present, this field will be used to set the suffix of the user's name
  ///
  /// * [String] title:
  ///   This field will be used to set the user's job title
  ///
  /// * [String] gender:
  ///   The gender of the user AudienceGender
  ///
  /// * [int] age:
  ///   This is deperecated, use the birthday parameter
  ///
  /// * [int] birthday:
  ///   The birthday date of the user in UTC milliseconds
  ///
  /// * [String] homePhone:
  ///   The home phone number
  ///
  /// * [String] cellPhone:
  ///   The cellular phone number
  ///
  /// * [String] cellPhoneCarrier:
  ///   The cellular service provider
  ///
  /// * [String] businessPhone:
  ///   The business phone number
  ///
  /// * [String] emailAddress:
  ///   The user's contact email address (NOT the username)
  ///
  /// * [String] streetAddress:
  ///   The street address of the user's contact location
  ///
  /// * [String] streetAddress2:
  ///   Additional address information (such as a suite number, floor number, building name, or PO Box)
  ///
  /// * [String] city:
  ///   The city of the user's contact location
  ///
  /// * [String] state:
  ///   The state of the user's contact location
  ///
  /// * [String] zipcode:
  ///   The zipcode of the user's contact location
  ///
  /// * [String] country:
  ///   The country of the user's contact location
  ///
  /// * [bool] makeProfileInfoPublic:
  ///   Allow anyone to view the user's personal profile
  ///
  /// * [bool] makeGameInfoPublic:
  ///   Allow anyone to view the user's game/app info
  ///
  /// * [bool] makeFriendsInfoPublic:
  ///   Allow anyone to view the user's friends list
  ///
  /// * [String] hometown:
  ///   The user's hometown
  ///
  /// * [String] height:
  ///   The user's height
  ///
  /// * [int] heightIndex:
  ///   The user's height in a numerical value that can be used for ordering/searching
  ///
  /// * [String] ethnicity:
  ///   The user's ethnicity
  ///
  /// * [String] bodyType:
  ///   The user's body type
  ///
  /// * [String] maritalStatus:
  ///   The user's marital status
  ///
  /// * [String] children:
  ///   The user's children status
  ///
  /// * [String] religion:
  ///   The user's religion
  ///
  /// * [String] education:
  ///   The user's education
  ///
  /// * [int] educationIndex:
  ///   The user's education in a numerical value that can be used for ordering/searching
  ///
  /// * [String] smoke:
  ///   The user's smoke status
  ///
  /// * [String] drink:
  ///   The user's drink status
  ///
  /// * [String] companionship:
  ///   The user's companionship status
  ///
  /// * [int] companionshipIndex:
  ///   The user's companionship index
  ///
  /// * [int] preferredMinAge:
  ///   The preferred minimum age in the account location search
  ///
  /// * [int] preferredMaxAge:
  ///   The preferred maximum age in the account location search
  ///
  /// * [int] preferredMinHeight:
  ///   The preferred minimum height in the account location search
  ///
  /// * [int] preferredMaxHeight:
  ///   The preferred maximum height in the account location search
  ///
  /// * [String] preferredGender:
  ///   The preferred gender in the account location search
  ///
  /// * [String] preferredEducation:
  ///   The preferred education in the account location search
  ///
  /// * [int] preferredEducationIndex:
  ///   The preferred education in a numerical value that can be used for ordering/searching
  ///
  /// * [String] preferredBodyType:
  ///   The preferred body type in the account location search
  ///
  /// * [String] preferredEthnicity:
  ///   The preferred ethnicity in the account location search
  ///
  /// * [String] preferredLocation:
  ///   The preferred education in the account location search
  ///
  /// * [double] preferredLocationRange:
  ///   The preferred location range in the account location search
  ///
  /// * [String] platforms:
  ///   Platforms
  ///
  /// * [String] tags:
  ///   Tags
  ///
  /// * [String] aboutUs:
  ///   About Us
  ///
  /// * [String] matchToken:
  ///   Match Token
  ///
  /// * [String] gameExperience:
  ///   Game Experience
  ///
  /// * [String] categories:
  ///   Deprecated use categoryIds
  ///
  /// * [String] categoryIds:
  ///   A list of category ids that represent interests and associations
  ///
  /// * [String] responseFilters:
  ///   A comma separated list of ProfileFilters for filtering the returned response data
  ///
  /// * [bool] showAsZipcode:
  ///   The user's preference if they want to be shown by zipcode on a map
  ///
  /// * [bool] showExactLocation:
  ///   The user's preference if they want to be shown by their exact location on a map
  ///
  /// * [bool] showOthersExactLocation:
  ///   The user's preference if they want to see others exact location on a map
  ///
  /// * [bool] acceptedTerms:
  ///   Accepted Terms
  ///
  /// * [String] locationVisibility:
  ///   Location Visibility
  ///
  /// * [String] appBlob:
  ///   App Blob
  ///
  /// * [bool] appEnablePush:
  ///   App Enable Push
  ///
  /// * [bool] appEnableSMS:
  ///   App Enable SMS
  ///
  /// * [bool] appEnableEmail:
  ///   App Enable Email
  ///
  /// * [String] gameType:
  ///   Game Type
  ///
  /// * [String] appKey:
  ///   The application key
  ///
  /// * [double] latitude:
  ///   The current latitude of the user
  ///
  /// * [double] longitude:
  ///   The current longitude of the user
  ///
  /// * [bool] returnProfile:
  ///   Return Profile
  ///
  /// * [String] audienceIdsToAdd:
  ///   Audience Ids to add
  ///
  /// * [String] audienceIdsToRemove:
  ///   Audience Ids to remove
  ///
  /// * [int] referralAccountId:
  ///   The account id of the referrer
  ///
  /// * [String] appNickname:
  ///   App nickname
  ///
  /// * [int] personalAudienceId:
  ///   Personal Audience
  ///
  /// * [String] nonGuestUsername:
  ///   The user's username to update with if they currently have a guest username
  Future<Response> editAccountWithHttpInfo({ String? deviceId, int? accountId, int? connectionAccountId, String? role, int? assetId, String? name, String? prefixName, String? firstName, String? middleName, String? lastName, String? suffixName, String? title, String? gender, int? age, int? birthday, String? homePhone, String? cellPhone, String? cellPhoneCarrier, String? businessPhone, String? emailAddress, String? streetAddress, String? streetAddress2, String? city, String? state, String? zipcode, String? country, bool? makeProfileInfoPublic, bool? makeGameInfoPublic, bool? makeFriendsInfoPublic, String? hometown, String? height, int? heightIndex, String? ethnicity, String? bodyType, String? maritalStatus, String? children, String? religion, String? education, int? educationIndex, String? smoke, String? drink, String? companionship, int? companionshipIndex, int? preferredMinAge, int? preferredMaxAge, int? preferredMinHeight, int? preferredMaxHeight, String? preferredGender, String? preferredEducation, int? preferredEducationIndex, String? preferredBodyType, String? preferredEthnicity, String? preferredLocation, double? preferredLocationRange, String? platforms, String? tags, String? aboutUs, String? matchToken, String? gameExperience, String? categories, String? categoryIds, String? responseFilters, bool? showAsZipcode, bool? showExactLocation, bool? showOthersExactLocation, bool? acceptedTerms, String? locationVisibility, String? appBlob, bool? appEnablePush, bool? appEnableSMS, bool? appEnableEmail, String? gameType, String? appKey, double? latitude, double? longitude, bool? returnProfile, String? audienceIdsToAdd, String? audienceIdsToRemove, int? referralAccountId, String? appNickname, int? personalAudienceId, String? nonGuestUsername, }) async {
    // ignore: prefer_const_declarations
    final path = r'/account/profile/update';

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
    if (role != null) {
      queryParams.addAll(_queryParams('', 'role', role));
    }
    if (assetId != null) {
      queryParams.addAll(_queryParams('', 'assetId', assetId));
    }
    if (name != null) {
      queryParams.addAll(_queryParams('', 'name', name));
    }
    if (prefixName != null) {
      queryParams.addAll(_queryParams('', 'prefixName', prefixName));
    }
    if (firstName != null) {
      queryParams.addAll(_queryParams('', 'firstName', firstName));
    }
    if (middleName != null) {
      queryParams.addAll(_queryParams('', 'middleName', middleName));
    }
    if (lastName != null) {
      queryParams.addAll(_queryParams('', 'lastName', lastName));
    }
    if (suffixName != null) {
      queryParams.addAll(_queryParams('', 'suffixName', suffixName));
    }
    if (title != null) {
      queryParams.addAll(_queryParams('', 'title', title));
    }
    if (gender != null) {
      queryParams.addAll(_queryParams('', 'gender', gender));
    }
    if (age != null) {
      queryParams.addAll(_queryParams('', 'age', age));
    }
    if (birthday != null) {
      queryParams.addAll(_queryParams('', 'birthday', birthday));
    }
    if (homePhone != null) {
      queryParams.addAll(_queryParams('', 'homePhone', homePhone));
    }
    if (cellPhone != null) {
      queryParams.addAll(_queryParams('', 'cellPhone', cellPhone));
    }
    if (cellPhoneCarrier != null) {
      queryParams.addAll(_queryParams('', 'cellPhoneCarrier', cellPhoneCarrier));
    }
    if (businessPhone != null) {
      queryParams.addAll(_queryParams('', 'businessPhone', businessPhone));
    }
    if (emailAddress != null) {
      queryParams.addAll(_queryParams('', 'emailAddress', emailAddress));
    }
    if (streetAddress != null) {
      queryParams.addAll(_queryParams('', 'streetAddress', streetAddress));
    }
    if (streetAddress2 != null) {
      queryParams.addAll(_queryParams('', 'streetAddress2', streetAddress2));
    }
    if (city != null) {
      queryParams.addAll(_queryParams('', 'city', city));
    }
    if (state != null) {
      queryParams.addAll(_queryParams('', 'state', state));
    }
    if (zipcode != null) {
      queryParams.addAll(_queryParams('', 'zipcode', zipcode));
    }
    if (country != null) {
      queryParams.addAll(_queryParams('', 'country', country));
    }
    if (makeProfileInfoPublic != null) {
      queryParams.addAll(_queryParams('', 'makeProfileInfoPublic', makeProfileInfoPublic));
    }
    if (makeGameInfoPublic != null) {
      queryParams.addAll(_queryParams('', 'makeGameInfoPublic', makeGameInfoPublic));
    }
    if (makeFriendsInfoPublic != null) {
      queryParams.addAll(_queryParams('', 'makeFriendsInfoPublic', makeFriendsInfoPublic));
    }
    if (hometown != null) {
      queryParams.addAll(_queryParams('', 'hometown', hometown));
    }
    if (height != null) {
      queryParams.addAll(_queryParams('', 'height', height));
    }
    if (heightIndex != null) {
      queryParams.addAll(_queryParams('', 'heightIndex', heightIndex));
    }
    if (ethnicity != null) {
      queryParams.addAll(_queryParams('', 'ethnicity', ethnicity));
    }
    if (bodyType != null) {
      queryParams.addAll(_queryParams('', 'bodyType', bodyType));
    }
    if (maritalStatus != null) {
      queryParams.addAll(_queryParams('', 'maritalStatus', maritalStatus));
    }
    if (children != null) {
      queryParams.addAll(_queryParams('', 'children', children));
    }
    if (religion != null) {
      queryParams.addAll(_queryParams('', 'religion', religion));
    }
    if (education != null) {
      queryParams.addAll(_queryParams('', 'education', education));
    }
    if (educationIndex != null) {
      queryParams.addAll(_queryParams('', 'educationIndex', educationIndex));
    }
    if (smoke != null) {
      queryParams.addAll(_queryParams('', 'smoke', smoke));
    }
    if (drink != null) {
      queryParams.addAll(_queryParams('', 'drink', drink));
    }
    if (companionship != null) {
      queryParams.addAll(_queryParams('', 'companionship', companionship));
    }
    if (companionshipIndex != null) {
      queryParams.addAll(_queryParams('', 'companionshipIndex', companionshipIndex));
    }
    if (preferredMinAge != null) {
      queryParams.addAll(_queryParams('', 'preferredMinAge', preferredMinAge));
    }
    if (preferredMaxAge != null) {
      queryParams.addAll(_queryParams('', 'preferredMaxAge', preferredMaxAge));
    }
    if (preferredMinHeight != null) {
      queryParams.addAll(_queryParams('', 'preferredMinHeight', preferredMinHeight));
    }
    if (preferredMaxHeight != null) {
      queryParams.addAll(_queryParams('', 'preferredMaxHeight', preferredMaxHeight));
    }
    if (preferredGender != null) {
      queryParams.addAll(_queryParams('', 'preferredGender', preferredGender));
    }
    if (preferredEducation != null) {
      queryParams.addAll(_queryParams('', 'preferredEducation', preferredEducation));
    }
    if (preferredEducationIndex != null) {
      queryParams.addAll(_queryParams('', 'preferredEducationIndex', preferredEducationIndex));
    }
    if (preferredBodyType != null) {
      queryParams.addAll(_queryParams('', 'preferredBodyType', preferredBodyType));
    }
    if (preferredEthnicity != null) {
      queryParams.addAll(_queryParams('', 'preferredEthnicity', preferredEthnicity));
    }
    if (preferredLocation != null) {
      queryParams.addAll(_queryParams('', 'preferredLocation', preferredLocation));
    }
    if (preferredLocationRange != null) {
      queryParams.addAll(_queryParams('', 'preferredLocationRange', preferredLocationRange));
    }
    if (platforms != null) {
      queryParams.addAll(_queryParams('', 'platforms', platforms));
    }
    if (tags != null) {
      queryParams.addAll(_queryParams('', 'tags', tags));
    }
    if (aboutUs != null) {
      queryParams.addAll(_queryParams('', 'aboutUs', aboutUs));
    }
    if (matchToken != null) {
      queryParams.addAll(_queryParams('', 'matchToken', matchToken));
    }
    if (gameExperience != null) {
      queryParams.addAll(_queryParams('', 'gameExperience', gameExperience));
    }
    if (categories != null) {
      queryParams.addAll(_queryParams('', 'categories', categories));
    }
    if (categoryIds != null) {
      queryParams.addAll(_queryParams('', 'categoryIds', categoryIds));
    }
    if (responseFilters != null) {
      queryParams.addAll(_queryParams('', 'responseFilters', responseFilters));
    }
    if (showAsZipcode != null) {
      queryParams.addAll(_queryParams('', 'showAsZipcode', showAsZipcode));
    }
    if (showExactLocation != null) {
      queryParams.addAll(_queryParams('', 'showExactLocation', showExactLocation));
    }
    if (showOthersExactLocation != null) {
      queryParams.addAll(_queryParams('', 'showOthersExactLocation', showOthersExactLocation));
    }
    if (acceptedTerms != null) {
      queryParams.addAll(_queryParams('', 'acceptedTerms', acceptedTerms));
    }
    if (locationVisibility != null) {
      queryParams.addAll(_queryParams('', 'locationVisibility', locationVisibility));
    }
    if (appBlob != null) {
      queryParams.addAll(_queryParams('', 'appBlob', appBlob));
    }
    if (appEnablePush != null) {
      queryParams.addAll(_queryParams('', 'appEnablePush', appEnablePush));
    }
    if (appEnableSMS != null) {
      queryParams.addAll(_queryParams('', 'appEnableSMS', appEnableSMS));
    }
    if (appEnableEmail != null) {
      queryParams.addAll(_queryParams('', 'appEnableEmail', appEnableEmail));
    }
    if (gameType != null) {
      queryParams.addAll(_queryParams('', 'gameType', gameType));
    }
    if (appKey != null) {
      queryParams.addAll(_queryParams('', 'appKey', appKey));
    }
    if (latitude != null) {
      queryParams.addAll(_queryParams('', 'latitude', latitude));
    }
    if (longitude != null) {
      queryParams.addAll(_queryParams('', 'longitude', longitude));
    }
    if (returnProfile != null) {
      queryParams.addAll(_queryParams('', 'returnProfile', returnProfile));
    }
    if (audienceIdsToAdd != null) {
      queryParams.addAll(_queryParams('', 'audienceIdsToAdd', audienceIdsToAdd));
    }
    if (audienceIdsToRemove != null) {
      queryParams.addAll(_queryParams('', 'audienceIdsToRemove', audienceIdsToRemove));
    }
    if (referralAccountId != null) {
      queryParams.addAll(_queryParams('', 'referralAccountId', referralAccountId));
    }
    if (appNickname != null) {
      queryParams.addAll(_queryParams('', 'appNickname', appNickname));
    }
    if (personalAudienceId != null) {
      queryParams.addAll(_queryParams('', 'personalAudienceId', personalAudienceId));
    }
    if (nonGuestUsername != null) {
      queryParams.addAll(_queryParams('', 'nonGuestUsername', nonGuestUsername));
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

  /// Update Account
  ///
  /// Edit the user's profile information
  ///
  /// Parameters:
  ///
  /// * [String] deviceId:
  ///   The device id (deviceId or accountId required)
  ///
  /// * [int] accountId:
  ///   The account id of the user (deviceId or accountId required)
  ///
  /// * [int] connectionAccountId:
  ///   The account id used to edit another person's account
  ///
  /// * [String] role:
  ///   The account role to change to
  ///
  /// * [int] assetId:
  ///   The asset id to set the user's profile image
  ///
  /// * [String] name:
  ///   The full name of the user. If this parameter is NOT empty, the  following parameters will be ignored: prefixName, firstName, middleName,  lastName, and suffixName 
  ///
  /// * [String] prefixName:
  ///   If the parameter 'name' is empty or not present, this field will be used to set the prefix of the user's name
  ///
  /// * [String] firstName:
  ///   If the parameter 'name' is empty or not present, this field will be used to set the user's first name
  ///
  /// * [String] middleName:
  ///   If the parameter 'name' is empty or not present, this field will be used to set the user's middle name
  ///
  /// * [String] lastName:
  ///   If the parameter 'name' is empty or not present, this field will be used to set the user's last name
  ///
  /// * [String] suffixName:
  ///   If the parameter 'name' is empty or not present, this field will be used to set the suffix of the user's name
  ///
  /// * [String] title:
  ///   This field will be used to set the user's job title
  ///
  /// * [String] gender:
  ///   The gender of the user AudienceGender
  ///
  /// * [int] age:
  ///   This is deperecated, use the birthday parameter
  ///
  /// * [int] birthday:
  ///   The birthday date of the user in UTC milliseconds
  ///
  /// * [String] homePhone:
  ///   The home phone number
  ///
  /// * [String] cellPhone:
  ///   The cellular phone number
  ///
  /// * [String] cellPhoneCarrier:
  ///   The cellular service provider
  ///
  /// * [String] businessPhone:
  ///   The business phone number
  ///
  /// * [String] emailAddress:
  ///   The user's contact email address (NOT the username)
  ///
  /// * [String] streetAddress:
  ///   The street address of the user's contact location
  ///
  /// * [String] streetAddress2:
  ///   Additional address information (such as a suite number, floor number, building name, or PO Box)
  ///
  /// * [String] city:
  ///   The city of the user's contact location
  ///
  /// * [String] state:
  ///   The state of the user's contact location
  ///
  /// * [String] zipcode:
  ///   The zipcode of the user's contact location
  ///
  /// * [String] country:
  ///   The country of the user's contact location
  ///
  /// * [bool] makeProfileInfoPublic:
  ///   Allow anyone to view the user's personal profile
  ///
  /// * [bool] makeGameInfoPublic:
  ///   Allow anyone to view the user's game/app info
  ///
  /// * [bool] makeFriendsInfoPublic:
  ///   Allow anyone to view the user's friends list
  ///
  /// * [String] hometown:
  ///   The user's hometown
  ///
  /// * [String] height:
  ///   The user's height
  ///
  /// * [int] heightIndex:
  ///   The user's height in a numerical value that can be used for ordering/searching
  ///
  /// * [String] ethnicity:
  ///   The user's ethnicity
  ///
  /// * [String] bodyType:
  ///   The user's body type
  ///
  /// * [String] maritalStatus:
  ///   The user's marital status
  ///
  /// * [String] children:
  ///   The user's children status
  ///
  /// * [String] religion:
  ///   The user's religion
  ///
  /// * [String] education:
  ///   The user's education
  ///
  /// * [int] educationIndex:
  ///   The user's education in a numerical value that can be used for ordering/searching
  ///
  /// * [String] smoke:
  ///   The user's smoke status
  ///
  /// * [String] drink:
  ///   The user's drink status
  ///
  /// * [String] companionship:
  ///   The user's companionship status
  ///
  /// * [int] companionshipIndex:
  ///   The user's companionship index
  ///
  /// * [int] preferredMinAge:
  ///   The preferred minimum age in the account location search
  ///
  /// * [int] preferredMaxAge:
  ///   The preferred maximum age in the account location search
  ///
  /// * [int] preferredMinHeight:
  ///   The preferred minimum height in the account location search
  ///
  /// * [int] preferredMaxHeight:
  ///   The preferred maximum height in the account location search
  ///
  /// * [String] preferredGender:
  ///   The preferred gender in the account location search
  ///
  /// * [String] preferredEducation:
  ///   The preferred education in the account location search
  ///
  /// * [int] preferredEducationIndex:
  ///   The preferred education in a numerical value that can be used for ordering/searching
  ///
  /// * [String] preferredBodyType:
  ///   The preferred body type in the account location search
  ///
  /// * [String] preferredEthnicity:
  ///   The preferred ethnicity in the account location search
  ///
  /// * [String] preferredLocation:
  ///   The preferred education in the account location search
  ///
  /// * [double] preferredLocationRange:
  ///   The preferred location range in the account location search
  ///
  /// * [String] platforms:
  ///   Platforms
  ///
  /// * [String] tags:
  ///   Tags
  ///
  /// * [String] aboutUs:
  ///   About Us
  ///
  /// * [String] matchToken:
  ///   Match Token
  ///
  /// * [String] gameExperience:
  ///   Game Experience
  ///
  /// * [String] categories:
  ///   Deprecated use categoryIds
  ///
  /// * [String] categoryIds:
  ///   A list of category ids that represent interests and associations
  ///
  /// * [String] responseFilters:
  ///   A comma separated list of ProfileFilters for filtering the returned response data
  ///
  /// * [bool] showAsZipcode:
  ///   The user's preference if they want to be shown by zipcode on a map
  ///
  /// * [bool] showExactLocation:
  ///   The user's preference if they want to be shown by their exact location on a map
  ///
  /// * [bool] showOthersExactLocation:
  ///   The user's preference if they want to see others exact location on a map
  ///
  /// * [bool] acceptedTerms:
  ///   Accepted Terms
  ///
  /// * [String] locationVisibility:
  ///   Location Visibility
  ///
  /// * [String] appBlob:
  ///   App Blob
  ///
  /// * [bool] appEnablePush:
  ///   App Enable Push
  ///
  /// * [bool] appEnableSMS:
  ///   App Enable SMS
  ///
  /// * [bool] appEnableEmail:
  ///   App Enable Email
  ///
  /// * [String] gameType:
  ///   Game Type
  ///
  /// * [String] appKey:
  ///   The application key
  ///
  /// * [double] latitude:
  ///   The current latitude of the user
  ///
  /// * [double] longitude:
  ///   The current longitude of the user
  ///
  /// * [bool] returnProfile:
  ///   Return Profile
  ///
  /// * [String] audienceIdsToAdd:
  ///   Audience Ids to add
  ///
  /// * [String] audienceIdsToRemove:
  ///   Audience Ids to remove
  ///
  /// * [int] referralAccountId:
  ///   The account id of the referrer
  ///
  /// * [String] appNickname:
  ///   App nickname
  ///
  /// * [int] personalAudienceId:
  ///   Personal Audience
  ///
  /// * [String] nonGuestUsername:
  ///   The user's username to update with if they currently have a guest username
  Future<ProfileInfoResponse?> editAccount({ String? deviceId, int? accountId, int? connectionAccountId, String? role, int? assetId, String? name, String? prefixName, String? firstName, String? middleName, String? lastName, String? suffixName, String? title, String? gender, int? age, int? birthday, String? homePhone, String? cellPhone, String? cellPhoneCarrier, String? businessPhone, String? emailAddress, String? streetAddress, String? streetAddress2, String? city, String? state, String? zipcode, String? country, bool? makeProfileInfoPublic, bool? makeGameInfoPublic, bool? makeFriendsInfoPublic, String? hometown, String? height, int? heightIndex, String? ethnicity, String? bodyType, String? maritalStatus, String? children, String? religion, String? education, int? educationIndex, String? smoke, String? drink, String? companionship, int? companionshipIndex, int? preferredMinAge, int? preferredMaxAge, int? preferredMinHeight, int? preferredMaxHeight, String? preferredGender, String? preferredEducation, int? preferredEducationIndex, String? preferredBodyType, String? preferredEthnicity, String? preferredLocation, double? preferredLocationRange, String? platforms, String? tags, String? aboutUs, String? matchToken, String? gameExperience, String? categories, String? categoryIds, String? responseFilters, bool? showAsZipcode, bool? showExactLocation, bool? showOthersExactLocation, bool? acceptedTerms, String? locationVisibility, String? appBlob, bool? appEnablePush, bool? appEnableSMS, bool? appEnableEmail, String? gameType, String? appKey, double? latitude, double? longitude, bool? returnProfile, String? audienceIdsToAdd, String? audienceIdsToRemove, int? referralAccountId, String? appNickname, int? personalAudienceId, String? nonGuestUsername, }) async {
    final response = await editAccountWithHttpInfo( deviceId: deviceId, accountId: accountId, connectionAccountId: connectionAccountId, role: role, assetId: assetId, name: name, prefixName: prefixName, firstName: firstName, middleName: middleName, lastName: lastName, suffixName: suffixName, title: title, gender: gender, age: age, birthday: birthday, homePhone: homePhone, cellPhone: cellPhone, cellPhoneCarrier: cellPhoneCarrier, businessPhone: businessPhone, emailAddress: emailAddress, streetAddress: streetAddress, streetAddress2: streetAddress2, city: city, state: state, zipcode: zipcode, country: country, makeProfileInfoPublic: makeProfileInfoPublic, makeGameInfoPublic: makeGameInfoPublic, makeFriendsInfoPublic: makeFriendsInfoPublic, hometown: hometown, height: height, heightIndex: heightIndex, ethnicity: ethnicity, bodyType: bodyType, maritalStatus: maritalStatus, children: children, religion: religion, education: education, educationIndex: educationIndex, smoke: smoke, drink: drink, companionship: companionship, companionshipIndex: companionshipIndex, preferredMinAge: preferredMinAge, preferredMaxAge: preferredMaxAge, preferredMinHeight: preferredMinHeight, preferredMaxHeight: preferredMaxHeight, preferredGender: preferredGender, preferredEducation: preferredEducation, preferredEducationIndex: preferredEducationIndex, preferredBodyType: preferredBodyType, preferredEthnicity: preferredEthnicity, preferredLocation: preferredLocation, preferredLocationRange: preferredLocationRange, platforms: platforms, tags: tags, aboutUs: aboutUs, matchToken: matchToken, gameExperience: gameExperience, categories: categories, categoryIds: categoryIds, responseFilters: responseFilters, showAsZipcode: showAsZipcode, showExactLocation: showExactLocation, showOthersExactLocation: showOthersExactLocation, acceptedTerms: acceptedTerms, locationVisibility: locationVisibility, appBlob: appBlob, appEnablePush: appEnablePush, appEnableSMS: appEnableSMS, appEnableEmail: appEnableEmail, gameType: gameType, appKey: appKey, latitude: latitude, longitude: longitude, returnProfile: returnProfile, audienceIdsToAdd: audienceIdsToAdd, audienceIdsToRemove: audienceIdsToRemove, referralAccountId: referralAccountId, appNickname: appNickname, personalAudienceId: personalAudienceId, nonGuestUsername: nonGuestUsername, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ProfileInfoResponse',) as ProfileInfoResponse;
    
    }
    return null;
  }

  /// Update Username and Email
  ///
  /// Update account's own username and/or emailAddress
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] deviceId:
  ///   The device id
  ///
  /// * [int] accountId:
  ///   The account id of the user (deviceId or accountId required)
  ///
  /// * [String] emailAddress:
  ///   the user's contact email address (NOT the username) which is also used for email validation
  ///
  /// * [String] username:
  ///   the user's username to update with if they currently have a guest username
  Future<Response> editUsernameWithHttpInfo({ String? deviceId, int? accountId, String? emailAddress, String? username, }) async {
    // ignore: prefer_const_declarations
    final path = r'/account/username/update';

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
    if (emailAddress != null) {
      queryParams.addAll(_queryParams('', 'emailAddress', emailAddress));
    }
    if (username != null) {
      queryParams.addAll(_queryParams('', 'username', username));
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

  /// Update Username and Email
  ///
  /// Update account's own username and/or emailAddress
  ///
  /// Parameters:
  ///
  /// * [String] deviceId:
  ///   The device id
  ///
  /// * [int] accountId:
  ///   The account id of the user (deviceId or accountId required)
  ///
  /// * [String] emailAddress:
  ///   the user's contact email address (NOT the username) which is also used for email validation
  ///
  /// * [String] username:
  ///   the user's username to update with if they currently have a guest username
  Future<SirqulResponse?> editUsername({ String? deviceId, int? accountId, String? emailAddress, String? username, }) async {
    final response = await editUsernameWithHttpInfo( deviceId: deviceId, accountId: accountId, emailAddress: emailAddress, username: username, );
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

  /// Get Account
  ///
  /// Gets a user's account profile. Application settings and account settings will also be returned for the owner of the account.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [bool] returnNulls:
  ///   Return Nulls
  ///
  /// * [String] deviceId:
  ///   The device id (deviceId or accountId required)
  ///
  /// * [int] accountId:
  ///   The account id of the user (deviceId or accountId required)
  ///
  /// * [String] connectionAccountEmail:
  ///   Connection Account Email
  ///
  /// * [int] connectionAccountId:
  ///   The account id used to view another person's account
  ///
  /// * [String] responseFilters:
  ///   A comma separated list of ProfileFilters for filtering the returned response data
  ///
  /// * [String] gameType:
  ///   Game Type
  ///
  /// * [String] appKey:
  ///   The application key
  ///
  /// * [String] purchaseType:
  ///   Purchase Type
  ///
  /// * [bool] updateViewedDate:
  ///   Determines whether to track if a person has viewed someone's profile
  ///
  /// * [double] latitude:
  ///   Latitude used to update the user's current location
  ///
  /// * [double] longitude:
  ///   Longitude used to update the user's current location
  Future<Response> getAccountWithHttpInfo({ bool? returnNulls, String? deviceId, int? accountId, String? connectionAccountEmail, int? connectionAccountId, String? responseFilters, String? gameType, String? appKey, String? purchaseType, bool? updateViewedDate, double? latitude, double? longitude, }) async {
    // ignore: prefer_const_declarations
    final path = r'/account/profile/get';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (returnNulls != null) {
      queryParams.addAll(_queryParams('', 'returnNulls', returnNulls));
    }
    if (deviceId != null) {
      queryParams.addAll(_queryParams('', 'deviceId', deviceId));
    }
    if (accountId != null) {
      queryParams.addAll(_queryParams('', 'accountId', accountId));
    }
    if (connectionAccountEmail != null) {
      queryParams.addAll(_queryParams('', 'connectionAccountEmail', connectionAccountEmail));
    }
    if (connectionAccountId != null) {
      queryParams.addAll(_queryParams('', 'connectionAccountId', connectionAccountId));
    }
    if (responseFilters != null) {
      queryParams.addAll(_queryParams('', 'responseFilters', responseFilters));
    }
    if (gameType != null) {
      queryParams.addAll(_queryParams('', 'gameType', gameType));
    }
    if (appKey != null) {
      queryParams.addAll(_queryParams('', 'appKey', appKey));
    }
    if (purchaseType != null) {
      queryParams.addAll(_queryParams('', 'purchaseType', purchaseType));
    }
    if (updateViewedDate != null) {
      queryParams.addAll(_queryParams('', 'updateViewedDate', updateViewedDate));
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
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Get Account
  ///
  /// Gets a user's account profile. Application settings and account settings will also be returned for the owner of the account.
  ///
  /// Parameters:
  ///
  /// * [bool] returnNulls:
  ///   Return Nulls
  ///
  /// * [String] deviceId:
  ///   The device id (deviceId or accountId required)
  ///
  /// * [int] accountId:
  ///   The account id of the user (deviceId or accountId required)
  ///
  /// * [String] connectionAccountEmail:
  ///   Connection Account Email
  ///
  /// * [int] connectionAccountId:
  ///   The account id used to view another person's account
  ///
  /// * [String] responseFilters:
  ///   A comma separated list of ProfileFilters for filtering the returned response data
  ///
  /// * [String] gameType:
  ///   Game Type
  ///
  /// * [String] appKey:
  ///   The application key
  ///
  /// * [String] purchaseType:
  ///   Purchase Type
  ///
  /// * [bool] updateViewedDate:
  ///   Determines whether to track if a person has viewed someone's profile
  ///
  /// * [double] latitude:
  ///   Latitude used to update the user's current location
  ///
  /// * [double] longitude:
  ///   Longitude used to update the user's current location
  Future<ProfileResponse?> getAccount({ bool? returnNulls, String? deviceId, int? accountId, String? connectionAccountEmail, int? connectionAccountId, String? responseFilters, String? gameType, String? appKey, String? purchaseType, bool? updateViewedDate, double? latitude, double? longitude, }) async {
    final response = await getAccountWithHttpInfo( returnNulls: returnNulls, deviceId: deviceId, accountId: accountId, connectionAccountEmail: connectionAccountEmail, connectionAccountId: connectionAccountId, responseFilters: responseFilters, gameType: gameType, appKey: appKey, purchaseType: purchaseType, updateViewedDate: updateViewedDate, latitude: latitude, longitude: longitude, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ProfileResponse',) as ProfileResponse;
    
    }
    return null;
  }

  /// Get Profile Assets
  ///
  /// Get a list of assets a person has ever uploaded. Filters the list based on parameters.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [bool] returnNulls:
  ///   Determines whether to return null fields in the response
  ///
  /// * [String] deviceId:
  ///   The device id (deviceId or accountId required)
  ///
  /// * [int] accountId:
  ///   The account id of the user (deviceId or accountId required)
  ///
  /// * [int] ownerId:
  ///   The account id of the person the user wants to view
  ///
  /// * [String] mediaTypes:
  ///   Comma separated list of MediaType
  ///
  /// * [String] mimeTypes:
  ///   Comma separated list of mime types
  ///
  /// * [String] sortField:
  ///   Determines what the returning list will be sorted by (see AssetApiMap)
  ///
  /// * [bool] descending:
  ///   Determines whether to return the resulting list in descending or ascending order
  ///
  /// * [double] latitude:
  ///   Latitude used to update the user's current location
  ///
  /// * [double] longitude:
  ///   Longitude used to update the user's current location
  ///
  /// * [int] i:
  ///   _i
  ///
  /// * [int] start:
  ///   Start of the pagination
  ///
  /// * [int] l:
  ///   _l
  ///
  /// * [int] limit:
  ///   Limit of the pagination
  Future<Response> getProfileAssetsWithHttpInfo({ bool? returnNulls, String? deviceId, int? accountId, int? ownerId, String? mediaTypes, String? mimeTypes, String? sortField, bool? descending, double? latitude, double? longitude, int? i, int? start, int? l, int? limit, }) async {
    // ignore: prefer_const_declarations
    final path = r'/account/profile/assets';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (returnNulls != null) {
      queryParams.addAll(_queryParams('', 'returnNulls', returnNulls));
    }
    if (deviceId != null) {
      queryParams.addAll(_queryParams('', 'deviceId', deviceId));
    }
    if (accountId != null) {
      queryParams.addAll(_queryParams('', 'accountId', accountId));
    }
    if (ownerId != null) {
      queryParams.addAll(_queryParams('', 'ownerId', ownerId));
    }
    if (mediaTypes != null) {
      queryParams.addAll(_queryParams('', 'mediaTypes', mediaTypes));
    }
    if (mimeTypes != null) {
      queryParams.addAll(_queryParams('', 'mimeTypes', mimeTypes));
    }
    if (sortField != null) {
      queryParams.addAll(_queryParams('', 'sortField', sortField));
    }
    if (descending != null) {
      queryParams.addAll(_queryParams('', 'descending', descending));
    }
    if (latitude != null) {
      queryParams.addAll(_queryParams('', 'latitude', latitude));
    }
    if (longitude != null) {
      queryParams.addAll(_queryParams('', 'longitude', longitude));
    }
    if (i != null) {
      queryParams.addAll(_queryParams('', '_i', i));
    }
    if (start != null) {
      queryParams.addAll(_queryParams('', 'start', start));
    }
    if (l != null) {
      queryParams.addAll(_queryParams('', '_l', l));
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

  /// Get Profile Assets
  ///
  /// Get a list of assets a person has ever uploaded. Filters the list based on parameters.
  ///
  /// Parameters:
  ///
  /// * [bool] returnNulls:
  ///   Determines whether to return null fields in the response
  ///
  /// * [String] deviceId:
  ///   The device id (deviceId or accountId required)
  ///
  /// * [int] accountId:
  ///   The account id of the user (deviceId or accountId required)
  ///
  /// * [int] ownerId:
  ///   The account id of the person the user wants to view
  ///
  /// * [String] mediaTypes:
  ///   Comma separated list of MediaType
  ///
  /// * [String] mimeTypes:
  ///   Comma separated list of mime types
  ///
  /// * [String] sortField:
  ///   Determines what the returning list will be sorted by (see AssetApiMap)
  ///
  /// * [bool] descending:
  ///   Determines whether to return the resulting list in descending or ascending order
  ///
  /// * [double] latitude:
  ///   Latitude used to update the user's current location
  ///
  /// * [double] longitude:
  ///   Longitude used to update the user's current location
  ///
  /// * [int] i:
  ///   _i
  ///
  /// * [int] start:
  ///   Start of the pagination
  ///
  /// * [int] l:
  ///   _l
  ///
  /// * [int] limit:
  ///   Limit of the pagination
  Future<AssetListResponse?> getProfileAssets({ bool? returnNulls, String? deviceId, int? accountId, int? ownerId, String? mediaTypes, String? mimeTypes, String? sortField, bool? descending, double? latitude, double? longitude, int? i, int? start, int? l, int? limit, }) async {
    final response = await getProfileAssetsWithHttpInfo( returnNulls: returnNulls, deviceId: deviceId, accountId: accountId, ownerId: ownerId, mediaTypes: mediaTypes, mimeTypes: mimeTypes, sortField: sortField, descending: descending, latitude: latitude, longitude: longitude, i: i, start: start, l: l, limit: limit, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'AssetListResponse',) as AssetListResponse;
    
    }
    return null;
  }

  /// Search Accounts
  ///
  /// Gets a user's account profile and their referral List.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] accountId:
  ///   The account id of the user (deviceId or accountId required)
  ///
  /// * [String] appKey:
  ///   The application key
  ///
  /// * [String] retrieveType:
  ///   one of these option - GET_CHILDREN will get all accounts that had signed up using the current account invite link - GET_ANCESTOR will get all accounts that referred the current account and it's parents, recursively - GET_ALL will get all of the above
  ///
  /// * [num] levelLimit:
  ///   level limit for children and ancestors of current account, starts from current account
  ///
  /// * [num] ancestorLevelLimit:
  ///   level limit for ancestors, will override levelLimit if this is set
  ///
  /// * [num] childrenLevelLimit:
  ///   level limit for children, will override levelLimit if this is set
  ///
  /// * [num] ancestorListStart:
  ///   pagination start for children list
  ///
  /// * [num] ancestorListLimit:
  ///   pagination limit for children list
  ///
  /// * [num] childrenListStart:
  ///   pagination start for children list
  ///
  /// * [num] childrenListLimit:
  ///   pagination limit for children list
  ///
  /// * [bool] childrenChildren:
  ///   if true, on each item in ancestor and children list, return the childrenTotalNumber and ancestorTotalNumber for that item
  Future<Response> getReferralListWithHttpInfo({ int? accountId, String? appKey, String? retrieveType, num? levelLimit, num? ancestorLevelLimit, num? childrenLevelLimit, num? ancestorListStart, num? ancestorListLimit, num? childrenListStart, num? childrenListLimit, bool? childrenChildren, }) async {
    // ignore: prefer_const_declarations
    final path = r'/account/referral/list';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (accountId != null) {
      queryParams.addAll(_queryParams('', 'accountId', accountId));
    }
    if (appKey != null) {
      queryParams.addAll(_queryParams('', 'appKey', appKey));
    }
    if (retrieveType != null) {
      queryParams.addAll(_queryParams('', 'retrieveType', retrieveType));
    }
    if (levelLimit != null) {
      queryParams.addAll(_queryParams('', 'levelLimit', levelLimit));
    }
    if (ancestorLevelLimit != null) {
      queryParams.addAll(_queryParams('', 'ancestorLevelLimit', ancestorLevelLimit));
    }
    if (childrenLevelLimit != null) {
      queryParams.addAll(_queryParams('', 'childrenLevelLimit', childrenLevelLimit));
    }
    if (ancestorListStart != null) {
      queryParams.addAll(_queryParams('', 'ancestorListStart', ancestorListStart));
    }
    if (ancestorListLimit != null) {
      queryParams.addAll(_queryParams('', 'ancestorListLimit', ancestorListLimit));
    }
    if (childrenListStart != null) {
      queryParams.addAll(_queryParams('', 'childrenListStart', childrenListStart));
    }
    if (childrenListLimit != null) {
      queryParams.addAll(_queryParams('', 'childrenListLimit', childrenListLimit));
    }
    if (childrenChildren != null) {
      queryParams.addAll(_queryParams('', 'childrenChildren', childrenChildren));
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

  /// Search Accounts
  ///
  /// Gets a user's account profile and their referral List.
  ///
  /// Parameters:
  ///
  /// * [int] accountId:
  ///   The account id of the user (deviceId or accountId required)
  ///
  /// * [String] appKey:
  ///   The application key
  ///
  /// * [String] retrieveType:
  ///   one of these option - GET_CHILDREN will get all accounts that had signed up using the current account invite link - GET_ANCESTOR will get all accounts that referred the current account and it's parents, recursively - GET_ALL will get all of the above
  ///
  /// * [num] levelLimit:
  ///   level limit for children and ancestors of current account, starts from current account
  ///
  /// * [num] ancestorLevelLimit:
  ///   level limit for ancestors, will override levelLimit if this is set
  ///
  /// * [num] childrenLevelLimit:
  ///   level limit for children, will override levelLimit if this is set
  ///
  /// * [num] ancestorListStart:
  ///   pagination start for children list
  ///
  /// * [num] ancestorListLimit:
  ///   pagination limit for children list
  ///
  /// * [num] childrenListStart:
  ///   pagination start for children list
  ///
  /// * [num] childrenListLimit:
  ///   pagination limit for children list
  ///
  /// * [bool] childrenChildren:
  ///   if true, on each item in ancestor and children list, return the childrenTotalNumber and ancestorTotalNumber for that item
  Future<void> getReferralList({ int? accountId, String? appKey, String? retrieveType, num? levelLimit, num? ancestorLevelLimit, num? childrenLevelLimit, num? ancestorListStart, num? ancestorListLimit, num? childrenListStart, num? childrenListLimit, bool? childrenChildren, }) async {
    final response = await getReferralListWithHttpInfo( accountId: accountId, appKey: appKey, retrieveType: retrieveType, levelLimit: levelLimit, ancestorLevelLimit: ancestorLevelLimit, childrenLevelLimit: childrenLevelLimit, ancestorListStart: ancestorListStart, ancestorListLimit: ancestorListLimit, childrenListStart: childrenListStart, childrenListLimit: childrenListLimit, childrenChildren: childrenChildren, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Get Account Settings
  ///
  /// Get the account settings for a user
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] deviceId:
  ///   The device id (deviceId or accountId required)
  ///
  /// * [int] accountId:
  ///   The account id of the user (deviceId or accountId required)
  ///
  /// * [double] latitude:
  ///   The current latitude of the user
  ///
  /// * [double] longitude:
  ///   The current longitude of the user
  Future<Response> getSettingsWithHttpInfo({ String? deviceId, int? accountId, double? latitude, double? longitude, }) async {
    // ignore: prefer_const_declarations
    final path = r'/account/settings/get';

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

  /// Get Account Settings
  ///
  /// Get the account settings for a user
  ///
  /// Parameters:
  ///
  /// * [String] deviceId:
  ///   The device id (deviceId or accountId required)
  ///
  /// * [int] accountId:
  ///   The account id of the user (deviceId or accountId required)
  ///
  /// * [double] latitude:
  ///   The current latitude of the user
  ///
  /// * [double] longitude:
  ///   The current longitude of the user
  Future<UserSettingsResponse?> getSettings({ String? deviceId, int? accountId, double? latitude, double? longitude, }) async {
    final response = await getSettingsWithHttpInfo( deviceId: deviceId, accountId: accountId, latitude: latitude, longitude: longitude, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'UserSettingsResponse',) as UserSettingsResponse;
    
    }
    return null;
  }

  /// Login as Account
  ///
  /// A login service that supports logging in as someone else (accounts that the user manages). Intended for internal use for now.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] accessToken (required):
  ///
  /// * [String] appKey (required):
  ///
  /// * [String] deviceId:
  ///
  /// * [String] accessTokenSecret:
  ///
  /// * [int] delegatedAccountId:
  ///
  /// * [String] delegatedUsername:
  ///
  /// * [String] networkUID:
  ///   The access provider to authenticate against (default: USERNAME). Supported values: FACEBOOK, TWITTER, USERNAME, PHONE
  ///
  /// * [int] ageRestriction:
  ///   Checks user's birthday to see if they meet an age requirement. If the user is under age, an error message is returned.
  ///
  /// * [String] responseFilters:
  ///   This determines how much of the profile should be returned, see ProfileFilters
  ///
  /// * [double] latitude:
  ///
  /// * [double] longitude:
  Future<Response> loginDelegateWithHttpInfo(String accessToken, String appKey, { String? deviceId, String? accessTokenSecret, int? delegatedAccountId, String? delegatedUsername, String? networkUID, int? ageRestriction, String? responseFilters, double? latitude, double? longitude, }) async {
    // ignore: prefer_const_declarations
    final path = r'/account/login/delegate';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (deviceId != null) {
      queryParams.addAll(_queryParams('', 'deviceId', deviceId));
    }
      queryParams.addAll(_queryParams('', 'accessToken', accessToken));
    if (accessTokenSecret != null) {
      queryParams.addAll(_queryParams('', 'accessTokenSecret', accessTokenSecret));
    }
    if (delegatedAccountId != null) {
      queryParams.addAll(_queryParams('', 'delegatedAccountId', delegatedAccountId));
    }
    if (delegatedUsername != null) {
      queryParams.addAll(_queryParams('', 'delegatedUsername', delegatedUsername));
    }
    if (networkUID != null) {
      queryParams.addAll(_queryParams('', 'networkUID', networkUID));
    }
      queryParams.addAll(_queryParams('', 'appKey', appKey));
    if (ageRestriction != null) {
      queryParams.addAll(_queryParams('', 'ageRestriction', ageRestriction));
    }
    if (responseFilters != null) {
      queryParams.addAll(_queryParams('', 'responseFilters', responseFilters));
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

  /// Login as Account
  ///
  /// A login service that supports logging in as someone else (accounts that the user manages). Intended for internal use for now.
  ///
  /// Parameters:
  ///
  /// * [String] accessToken (required):
  ///
  /// * [String] appKey (required):
  ///
  /// * [String] deviceId:
  ///
  /// * [String] accessTokenSecret:
  ///
  /// * [int] delegatedAccountId:
  ///
  /// * [String] delegatedUsername:
  ///
  /// * [String] networkUID:
  ///   The access provider to authenticate against (default: USERNAME). Supported values: FACEBOOK, TWITTER, USERNAME, PHONE
  ///
  /// * [int] ageRestriction:
  ///   Checks user's birthday to see if they meet an age requirement. If the user is under age, an error message is returned.
  ///
  /// * [String] responseFilters:
  ///   This determines how much of the profile should be returned, see ProfileFilters
  ///
  /// * [double] latitude:
  ///
  /// * [double] longitude:
  Future<ProfileResponse?> loginDelegate(String accessToken, String appKey, { String? deviceId, String? accessTokenSecret, int? delegatedAccountId, String? delegatedUsername, String? networkUID, int? ageRestriction, String? responseFilters, double? latitude, double? longitude, }) async {
    final response = await loginDelegateWithHttpInfo(accessToken, appKey,  deviceId: deviceId, accessTokenSecret: accessTokenSecret, delegatedAccountId: delegatedAccountId, delegatedUsername: delegatedUsername, networkUID: networkUID, ageRestriction: ageRestriction, responseFilters: responseFilters, latitude: latitude, longitude: longitude, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ProfileResponse',) as ProfileResponse;
    
    }
    return null;
  }

  /// Login Account
  ///
  /// General login service that supports various authentication methods. Currently supports Facebook, Twitter, Sirqul Username, and Sirqul Phone by default. Can also support custom networks created using the {@link ThirdPartyApi}
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] accessToken (required):
  ///   The access token to authenticate with (ex: username or fb token)
  ///
  /// * [String] networkUID (required):
  ///   The access provider to authenticate against. This can be custom  networks created using the ThirdPartyApi as well. Supported values by default  include: FACEBOOK, TWITTER, USERNAME, PHONE 
  ///
  /// * [String] appKey (required):
  ///   The application key
  ///
  /// * [String] deviceId:
  ///   The unique id of the device making the request
  ///
  /// * [String] deviceIdType:
  ///   The type of device id (this is defined by the client), ie. MAC_ADDRESS, APPLE_UDID, etc
  ///
  /// * [String] accessTokenSecret:
  ///   The secret to authenticate with (ex: password)
  ///
  /// * [int] ageRestriction:
  ///   Checks user's birthday to see if they meet an age requirement. If the user is under age, an error message is returned.
  ///
  /// * [String] responseFilters:
  ///   This determines how much of the profile should be returned, see ProfileFilters
  ///
  /// * [double] latitude:
  ///   Used to update the user's current location
  ///
  /// * [double] longitude:
  ///   Used to update the user's current location
  ///
  /// * [bool] emailMatch:
  ///   Option to check for email if username doesn't match, also support multiple accounts
  ///
  /// * [int] chosenAccountId:
  ///   Chosen account Id sent from the app - pass in the 2nd request to choose an account from multiple accounts matching the email - use one of the account id from the previous request
  ///
  /// * [int] thirdPartyCredentialId:
  ///   Third-party credential Id, pass in the 2nd request to choose an account from multiple accounts matching the email - use the id from the previous call ThirdPartyCredential object
  Future<Response> loginGeneralWithHttpInfo(String accessToken, String networkUID, String appKey, { String? deviceId, String? deviceIdType, String? accessTokenSecret, int? ageRestriction, String? responseFilters, double? latitude, double? longitude, bool? emailMatch, int? chosenAccountId, int? thirdPartyCredentialId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/account/login';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (deviceId != null) {
      queryParams.addAll(_queryParams('', 'deviceId', deviceId));
    }
    if (deviceIdType != null) {
      queryParams.addAll(_queryParams('', 'deviceIdType', deviceIdType));
    }
      queryParams.addAll(_queryParams('', 'accessToken', accessToken));
    if (accessTokenSecret != null) {
      queryParams.addAll(_queryParams('', 'accessTokenSecret', accessTokenSecret));
    }
      queryParams.addAll(_queryParams('', 'networkUID', networkUID));
      queryParams.addAll(_queryParams('', 'appKey', appKey));
    if (ageRestriction != null) {
      queryParams.addAll(_queryParams('', 'ageRestriction', ageRestriction));
    }
    if (responseFilters != null) {
      queryParams.addAll(_queryParams('', 'responseFilters', responseFilters));
    }
    if (latitude != null) {
      queryParams.addAll(_queryParams('', 'latitude', latitude));
    }
    if (longitude != null) {
      queryParams.addAll(_queryParams('', 'longitude', longitude));
    }
    if (emailMatch != null) {
      queryParams.addAll(_queryParams('', 'emailMatch', emailMatch));
    }
    if (chosenAccountId != null) {
      queryParams.addAll(_queryParams('', 'chosenAccountId', chosenAccountId));
    }
    if (thirdPartyCredentialId != null) {
      queryParams.addAll(_queryParams('', 'thirdPartyCredentialId', thirdPartyCredentialId));
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

  /// Login Account
  ///
  /// General login service that supports various authentication methods. Currently supports Facebook, Twitter, Sirqul Username, and Sirqul Phone by default. Can also support custom networks created using the {@link ThirdPartyApi}
  ///
  /// Parameters:
  ///
  /// * [String] accessToken (required):
  ///   The access token to authenticate with (ex: username or fb token)
  ///
  /// * [String] networkUID (required):
  ///   The access provider to authenticate against. This can be custom  networks created using the ThirdPartyApi as well. Supported values by default  include: FACEBOOK, TWITTER, USERNAME, PHONE 
  ///
  /// * [String] appKey (required):
  ///   The application key
  ///
  /// * [String] deviceId:
  ///   The unique id of the device making the request
  ///
  /// * [String] deviceIdType:
  ///   The type of device id (this is defined by the client), ie. MAC_ADDRESS, APPLE_UDID, etc
  ///
  /// * [String] accessTokenSecret:
  ///   The secret to authenticate with (ex: password)
  ///
  /// * [int] ageRestriction:
  ///   Checks user's birthday to see if they meet an age requirement. If the user is under age, an error message is returned.
  ///
  /// * [String] responseFilters:
  ///   This determines how much of the profile should be returned, see ProfileFilters
  ///
  /// * [double] latitude:
  ///   Used to update the user's current location
  ///
  /// * [double] longitude:
  ///   Used to update the user's current location
  ///
  /// * [bool] emailMatch:
  ///   Option to check for email if username doesn't match, also support multiple accounts
  ///
  /// * [int] chosenAccountId:
  ///   Chosen account Id sent from the app - pass in the 2nd request to choose an account from multiple accounts matching the email - use one of the account id from the previous request
  ///
  /// * [int] thirdPartyCredentialId:
  ///   Third-party credential Id, pass in the 2nd request to choose an account from multiple accounts matching the email - use the id from the previous call ThirdPartyCredential object
  Future<ProfileResponse?> loginGeneral(String accessToken, String networkUID, String appKey, { String? deviceId, String? deviceIdType, String? accessTokenSecret, int? ageRestriction, String? responseFilters, double? latitude, double? longitude, bool? emailMatch, int? chosenAccountId, int? thirdPartyCredentialId, }) async {
    final response = await loginGeneralWithHttpInfo(accessToken, networkUID, appKey,  deviceId: deviceId, deviceIdType: deviceIdType, accessTokenSecret: accessTokenSecret, ageRestriction: ageRestriction, responseFilters: responseFilters, latitude: latitude, longitude: longitude, emailMatch: emailMatch, chosenAccountId: chosenAccountId, thirdPartyCredentialId: thirdPartyCredentialId, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ProfileResponse',) as ProfileResponse;
    
    }
    return null;
  }

  /// Login Account (Username)
  ///
  /// Login to system with an account
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] username (required):
  ///   the user's email address they used to sign-up
  ///
  /// * [String] password (required):
  ///   the password
  ///
  /// * [String] deviceId:
  ///   the device id
  ///
  /// * [double] latitude:
  ///   the current latitude of the user
  ///
  /// * [double] longitude:
  ///   the current longitude of the user
  ///
  /// * [String] app:
  ///   the app
  ///
  /// * [String] gameType:
  ///   This parameter is deprecated. This is deprecated, use appKey.
  ///
  /// * [String] appKey:
  ///   the application key
  ///
  /// * [bool] returnProfile:
  ///   the profile to return
  ///
  /// * [String] responseFilters:
  ///   a comma separated list of ProfileFilters for filtering the returned response data
  Future<Response> loginUsernameWithHttpInfo(String username, String password, { String? deviceId, double? latitude, double? longitude, String? app, String? gameType, String? appKey, bool? returnProfile, String? responseFilters, }) async {
    // ignore: prefer_const_declarations
    final path = r'/account/get';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (deviceId != null) {
      queryParams.addAll(_queryParams('', 'deviceId', deviceId));
    }
      queryParams.addAll(_queryParams('', 'username', username));
      queryParams.addAll(_queryParams('', 'password', password));
    if (latitude != null) {
      queryParams.addAll(_queryParams('', 'latitude', latitude));
    }
    if (longitude != null) {
      queryParams.addAll(_queryParams('', 'longitude', longitude));
    }
    if (app != null) {
      queryParams.addAll(_queryParams('', 'app', app));
    }
    if (gameType != null) {
      queryParams.addAll(_queryParams('', 'gameType', gameType));
    }
    if (appKey != null) {
      queryParams.addAll(_queryParams('', 'appKey', appKey));
    }
    if (returnProfile != null) {
      queryParams.addAll(_queryParams('', 'returnProfile', returnProfile));
    }
    if (responseFilters != null) {
      queryParams.addAll(_queryParams('', 'responseFilters', responseFilters));
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

  /// Login Account (Username)
  ///
  /// Login to system with an account
  ///
  /// Parameters:
  ///
  /// * [String] username (required):
  ///   the user's email address they used to sign-up
  ///
  /// * [String] password (required):
  ///   the password
  ///
  /// * [String] deviceId:
  ///   the device id
  ///
  /// * [double] latitude:
  ///   the current latitude of the user
  ///
  /// * [double] longitude:
  ///   the current longitude of the user
  ///
  /// * [String] app:
  ///   the app
  ///
  /// * [String] gameType:
  ///   This parameter is deprecated. This is deprecated, use appKey.
  ///
  /// * [String] appKey:
  ///   the application key
  ///
  /// * [bool] returnProfile:
  ///   the profile to return
  ///
  /// * [String] responseFilters:
  ///   a comma separated list of ProfileFilters for filtering the returned response data
  Future<ProfileResponse?> loginUsername(String username, String password, { String? deviceId, double? latitude, double? longitude, String? app, String? gameType, String? appKey, bool? returnProfile, String? responseFilters, }) async {
    final response = await loginUsernameWithHttpInfo(username, password,  deviceId: deviceId, latitude: latitude, longitude: longitude, app: app, gameType: gameType, appKey: appKey, returnProfile: returnProfile, responseFilters: responseFilters, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ProfileResponse',) as ProfileResponse;
    
    }
    return null;
  }

  /// Logout Account
  ///
  /// Cleans up the users data for logging out.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] deviceId:
  ///   The device id (deviceId or accountId required)
  ///
  /// * [String] deviceIdType:
  ///   Device Id Type
  ///
  /// * [int] accountId:
  ///   The account id of the user (deviceId or accountId required)
  ///
  /// * [double] latitude:
  ///   The current latitude of the user
  ///
  /// * [double] longitude:
  ///   The current longitude of the user
  Future<Response> logoutWithHttpInfo({ String? deviceId, String? deviceIdType, int? accountId, double? latitude, double? longitude, }) async {
    // ignore: prefer_const_declarations
    final path = r'/account/logout';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (deviceId != null) {
      queryParams.addAll(_queryParams('', 'deviceId', deviceId));
    }
    if (deviceIdType != null) {
      queryParams.addAll(_queryParams('', 'deviceIdType', deviceIdType));
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

  /// Logout Account
  ///
  /// Cleans up the users data for logging out.
  ///
  /// Parameters:
  ///
  /// * [String] deviceId:
  ///   The device id (deviceId or accountId required)
  ///
  /// * [String] deviceIdType:
  ///   Device Id Type
  ///
  /// * [int] accountId:
  ///   The account id of the user (deviceId or accountId required)
  ///
  /// * [double] latitude:
  ///   The current latitude of the user
  ///
  /// * [double] longitude:
  ///   The current longitude of the user
  Future<SirqulResponse?> logout({ String? deviceId, String? deviceIdType, int? accountId, double? latitude, double? longitude, }) async {
    final response = await logoutWithHttpInfo( deviceId: deviceId, deviceIdType: deviceIdType, accountId: accountId, latitude: latitude, longitude: longitude, );
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

  /// Merge Account
  ///
  /// Merges the analytics, achievements, leaderboards of two accounts.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] mergeAccountId (required):
  ///   The id of the account to being merged
  ///
  /// * [String] appKey (required):
  ///   The application key
  ///
  /// * [String] deviceId:
  ///   The device id (deviceId or accountId required)
  ///
  /// * [int] accountId:
  ///   The account id of the user (deviceId or accountId required)
  Future<Response> mergeAccountWithHttpInfo(int mergeAccountId, String appKey, { String? deviceId, int? accountId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/account/merge';

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
      queryParams.addAll(_queryParams('', 'mergeAccountId', mergeAccountId));
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

  /// Merge Account
  ///
  /// Merges the analytics, achievements, leaderboards of two accounts.
  ///
  /// Parameters:
  ///
  /// * [int] mergeAccountId (required):
  ///   The id of the account to being merged
  ///
  /// * [String] appKey (required):
  ///   The application key
  ///
  /// * [String] deviceId:
  ///   The device id (deviceId or accountId required)
  ///
  /// * [int] accountId:
  ///   The account id of the user (deviceId or accountId required)
  Future<SirqulResponse?> mergeAccount(int mergeAccountId, String appKey, { String? deviceId, int? accountId, }) async {
    final response = await mergeAccountWithHttpInfo(mergeAccountId, appKey,  deviceId: deviceId, accountId: accountId, );
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

  /// Update Password
  ///
  /// Update the account password.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] accountId (required):
  ///   The account to update
  ///
  /// * [String] oldPassword (required):
  ///   The current password, used to validate access
  ///
  /// * [String] newPassword (required):
  ///   The new password to set, cannot be empty
  ///
  /// * [String] confirmPassword (required):
  ///   The new password to confirm, must match newPassword
  Future<Response> passwordChangeWithHttpInfo(int accountId, String oldPassword, String newPassword, String confirmPassword,) async {
    // ignore: prefer_const_declarations
    final path = r'/account/passwordchange';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'accountId', accountId));
      queryParams.addAll(_queryParams('', 'oldPassword', oldPassword));
      queryParams.addAll(_queryParams('', 'newPassword', newPassword));
      queryParams.addAll(_queryParams('', 'confirmPassword', confirmPassword));

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

  /// Update Password
  ///
  /// Update the account password.
  ///
  /// Parameters:
  ///
  /// * [int] accountId (required):
  ///   The account to update
  ///
  /// * [String] oldPassword (required):
  ///   The current password, used to validate access
  ///
  /// * [String] newPassword (required):
  ///   The new password to set, cannot be empty
  ///
  /// * [String] confirmPassword (required):
  ///   The new password to confirm, must match newPassword
  Future<SirqulResponse?> passwordChange(int accountId, String oldPassword, String newPassword, String confirmPassword,) async {
    final response = await passwordChangeWithHttpInfo(accountId, oldPassword, newPassword, confirmPassword,);
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

  /// Reset Password
  ///
  /// Reset the account password. The token must be valid and not expired. Use the RequestPasswordReset end point to request a token.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] token (required):
  ///   The token associated with the account to update, good for 24 hours
  ///
  /// * [String] password (required):
  ///   The new password to set, cannot be empty
  ///
  /// * [String] confirm (required):
  ///   The new password to confirm, must match newPassword
  Future<Response> passwordResetWithHttpInfo(String token, String password, String confirm,) async {
    // ignore: prefer_const_declarations
    final path = r'/account/passwordreset';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'token', token));
      queryParams.addAll(_queryParams('', 'password', password));
      queryParams.addAll(_queryParams('', 'confirm', confirm));

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

  /// Reset Password
  ///
  /// Reset the account password. The token must be valid and not expired. Use the RequestPasswordReset end point to request a token.
  ///
  /// Parameters:
  ///
  /// * [String] token (required):
  ///   The token associated with the account to update, good for 24 hours
  ///
  /// * [String] password (required):
  ///   The new password to set, cannot be empty
  ///
  /// * [String] confirm (required):
  ///   The new password to confirm, must match newPassword
  Future<SirqulResponse?> passwordReset(String token, String password, String confirm,) async {
    final response = await passwordResetWithHttpInfo(token, password, confirm,);
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

  /// Request Password Reset
  ///
  /// Request that an account password be reset. The account is looked up by email address and then a link is sent via email to that account with a reset token. The token is valid for 24 hours.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] email (required):
  ///   The email/username of the account
  ///
  /// * [String] from:
  ///   this is the sender email
  ///
  /// * [String] domain:
  ///   this is the domain (like dev.sirqul.com) used to generate the password reset link
  ///
  /// * [String] subUrl:
  ///   this is the the subUrl (like resetpassword) used to generate a password reset link
  ///
  /// * [String] referer:
  ///   this is used to generate a password reset link
  Future<Response> requestPasswordResetWithHttpInfo(String email, { String? from, String? domain, String? subUrl, String? referer, }) async {
    // ignore: prefer_const_declarations
    final path = r'/account/requestpasswordreset';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'email', email));
    if (from != null) {
      queryParams.addAll(_queryParams('', 'from', from));
    }
    if (domain != null) {
      queryParams.addAll(_queryParams('', 'domain', domain));
    }
    if (subUrl != null) {
      queryParams.addAll(_queryParams('', 'subUrl', subUrl));
    }
    if (referer != null) {
      queryParams.addAll(_queryParams('', 'referer', referer));
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

  /// Request Password Reset
  ///
  /// Request that an account password be reset. The account is looked up by email address and then a link is sent via email to that account with a reset token. The token is valid for 24 hours.
  ///
  /// Parameters:
  ///
  /// * [String] email (required):
  ///   The email/username of the account
  ///
  /// * [String] from:
  ///   this is the sender email
  ///
  /// * [String] domain:
  ///   this is the domain (like dev.sirqul.com) used to generate the password reset link
  ///
  /// * [String] subUrl:
  ///   this is the the subUrl (like resetpassword) used to generate a password reset link
  ///
  /// * [String] referer:
  ///   this is used to generate a password reset link
  Future<SirqulResponse?> requestPasswordReset(String email, { String? from, String? domain, String? subUrl, String? referer, }) async {
    final response = await requestPasswordResetWithHttpInfo(email,  from: from, domain: domain, subUrl: subUrl, referer: referer, );
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

  /// Send Validation Request
  ///
  /// Send an email to validate a user's account.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] accountId (required):
  ///   The account id of the user
  Future<Response> requestValidateAccountWithHttpInfo(int accountId,) async {
    // ignore: prefer_const_declarations
    final path = r'/account/requestValidateAccount';

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

  /// Send Validation Request
  ///
  /// Send an email to validate a user's account.
  ///
  /// Parameters:
  ///
  /// * [int] accountId (required):
  ///   The account id of the user
  Future<SirqulResponse?> requestValidateAccount(int accountId,) async {
    final response = await requestValidateAccountWithHttpInfo(accountId,);
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

  /// Search Accounts
  ///
  /// Search for account profiles.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] accountId (required):
  ///   The id of the account requesting
  ///
  /// * [String] appKey (required):
  ///   The application key
  ///
  /// * [String] keyword:
  ///   The keyword for for querying the account
  ///
  /// * [double] latitude:
  ///   the latitude
  ///
  /// * [double] longitude:
  ///   the longitude
  ///
  /// * [double] radius:
  ///   the radius
  ///
  /// * [String] gender:
  ///   the user's gender
  ///
  /// * [String] gameExperience:
  ///   the user's Game Experience
  ///
  /// * [int] age:
  ///   the user's age
  ///
  /// * [String] categoryIds:
  ///   the user's Category Ids
  ///
  /// * [bool] returnNulls:
  ///   Return Nulls
  ///
  /// * [String] responseFilters:
  ///   A comma separated list of ProfileFilters for filtering the returned response data
  ///
  /// * [String] purchaseType:
  ///   A comma separated list of PurchaseType
  ///
  /// * [String] sortField:
  ///   The field to sort by
  ///
  /// * [bool] descending:
  ///   The order to return the results. Default is false, which will return the results in ascending order.
  ///
  /// * [int] start:
  ///   The index into the record set to start with.
  ///
  /// * [int] limit:
  ///   The total number of record to return.
  ///
  /// * [bool] activeOnly:
  ///   Determines whether to return only active results. Default is false.
  Future<Response> searchAccountsWithHttpInfo(int accountId, String appKey, { String? keyword, double? latitude, double? longitude, double? radius, String? gender, String? gameExperience, int? age, String? categoryIds, bool? returnNulls, String? responseFilters, String? purchaseType, String? sortField, bool? descending, int? start, int? limit, bool? activeOnly, }) async {
    // ignore: prefer_const_declarations
    final path = r'/account/profile/search';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'accountId', accountId));
      queryParams.addAll(_queryParams('', 'appKey', appKey));
    if (keyword != null) {
      queryParams.addAll(_queryParams('', 'keyword', keyword));
    }
    if (latitude != null) {
      queryParams.addAll(_queryParams('', 'latitude', latitude));
    }
    if (longitude != null) {
      queryParams.addAll(_queryParams('', 'longitude', longitude));
    }
    if (radius != null) {
      queryParams.addAll(_queryParams('', 'radius', radius));
    }
    if (gender != null) {
      queryParams.addAll(_queryParams('', 'gender', gender));
    }
    if (gameExperience != null) {
      queryParams.addAll(_queryParams('', 'gameExperience', gameExperience));
    }
    if (age != null) {
      queryParams.addAll(_queryParams('', 'age', age));
    }
    if (categoryIds != null) {
      queryParams.addAll(_queryParams('', 'categoryIds', categoryIds));
    }
    if (returnNulls != null) {
      queryParams.addAll(_queryParams('', 'returnNulls', returnNulls));
    }
    if (responseFilters != null) {
      queryParams.addAll(_queryParams('', 'responseFilters', responseFilters));
    }
    if (purchaseType != null) {
      queryParams.addAll(_queryParams('', 'purchaseType', purchaseType));
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
    if (activeOnly != null) {
      queryParams.addAll(_queryParams('', 'activeOnly', activeOnly));
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

  /// Search Accounts
  ///
  /// Search for account profiles.
  ///
  /// Parameters:
  ///
  /// * [int] accountId (required):
  ///   The id of the account requesting
  ///
  /// * [String] appKey (required):
  ///   The application key
  ///
  /// * [String] keyword:
  ///   The keyword for for querying the account
  ///
  /// * [double] latitude:
  ///   the latitude
  ///
  /// * [double] longitude:
  ///   the longitude
  ///
  /// * [double] radius:
  ///   the radius
  ///
  /// * [String] gender:
  ///   the user's gender
  ///
  /// * [String] gameExperience:
  ///   the user's Game Experience
  ///
  /// * [int] age:
  ///   the user's age
  ///
  /// * [String] categoryIds:
  ///   the user's Category Ids
  ///
  /// * [bool] returnNulls:
  ///   Return Nulls
  ///
  /// * [String] responseFilters:
  ///   A comma separated list of ProfileFilters for filtering the returned response data
  ///
  /// * [String] purchaseType:
  ///   A comma separated list of PurchaseType
  ///
  /// * [String] sortField:
  ///   The field to sort by
  ///
  /// * [bool] descending:
  ///   The order to return the results. Default is false, which will return the results in ascending order.
  ///
  /// * [int] start:
  ///   The index into the record set to start with.
  ///
  /// * [int] limit:
  ///   The total number of record to return.
  ///
  /// * [bool] activeOnly:
  ///   Determines whether to return only active results. Default is false.
  Future<List<ProfileResponse>?> searchAccounts(int accountId, String appKey, { String? keyword, double? latitude, double? longitude, double? radius, String? gender, String? gameExperience, int? age, String? categoryIds, bool? returnNulls, String? responseFilters, String? purchaseType, String? sortField, bool? descending, int? start, int? limit, bool? activeOnly, }) async {
    final response = await searchAccountsWithHttpInfo(accountId, appKey,  keyword: keyword, latitude: latitude, longitude: longitude, radius: radius, gender: gender, gameExperience: gameExperience, age: age, categoryIds: categoryIds, returnNulls: returnNulls, responseFilters: responseFilters, purchaseType: purchaseType, sortField: sortField, descending: descending, start: start, limit: limit, activeOnly: activeOnly, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<ProfileResponse>') as List)
        .cast<ProfileResponse>()
        .toList(growable: false);

    }
    return null;
  }

  /// Login Account (Encrypted Username)
  ///
  /// ogin with encrypted user-name and password.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] username (required):
  ///   The user's encrypted email address they used to sign-up
  ///
  /// * [String] password (required):
  ///   The encrypted password
  ///
  /// * [String] gameType (required):
  ///   The application key
  ///
  /// * [String] deviceId:
  ///   The device id
  ///
  /// * [String] charsetName:
  ///   Charset Name
  ///
  /// * [double] latitude:
  ///   The current latitude of the user
  ///
  /// * [double] longitude:
  ///   The current longitude of the user
  ///
  /// * [bool] returnProfile:
  ///   Return Profile
  ///
  /// * [String] responseFilters:
  ///   A comma separated list of ProfileFilters for filtering the returned response data
  Future<Response> secureLoginWithHttpInfo(String username, String password, String gameType, { String? deviceId, String? charsetName, double? latitude, double? longitude, bool? returnProfile, String? responseFilters, }) async {
    // ignore: prefer_const_declarations
    final path = r'/account/login/validate';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (deviceId != null) {
      queryParams.addAll(_queryParams('', 'deviceId', deviceId));
    }
      queryParams.addAll(_queryParams('', 'username', username));
      queryParams.addAll(_queryParams('', 'password', password));
      queryParams.addAll(_queryParams('', 'gameType', gameType));
    if (charsetName != null) {
      queryParams.addAll(_queryParams('', 'charsetName', charsetName));
    }
    if (latitude != null) {
      queryParams.addAll(_queryParams('', 'latitude', latitude));
    }
    if (longitude != null) {
      queryParams.addAll(_queryParams('', 'longitude', longitude));
    }
    if (returnProfile != null) {
      queryParams.addAll(_queryParams('', 'returnProfile', returnProfile));
    }
    if (responseFilters != null) {
      queryParams.addAll(_queryParams('', 'responseFilters', responseFilters));
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

  /// Login Account (Encrypted Username)
  ///
  /// ogin with encrypted user-name and password.
  ///
  /// Parameters:
  ///
  /// * [String] username (required):
  ///   The user's encrypted email address they used to sign-up
  ///
  /// * [String] password (required):
  ///   The encrypted password
  ///
  /// * [String] gameType (required):
  ///   The application key
  ///
  /// * [String] deviceId:
  ///   The device id
  ///
  /// * [String] charsetName:
  ///   Charset Name
  ///
  /// * [double] latitude:
  ///   The current latitude of the user
  ///
  /// * [double] longitude:
  ///   The current longitude of the user
  ///
  /// * [bool] returnProfile:
  ///   Return Profile
  ///
  /// * [String] responseFilters:
  ///   A comma separated list of ProfileFilters for filtering the returned response data
  Future<ProfileResponse?> secureLogin(String username, String password, String gameType, { String? deviceId, String? charsetName, double? latitude, double? longitude, bool? returnProfile, String? responseFilters, }) async {
    final response = await secureLoginWithHttpInfo(username, password, gameType,  deviceId: deviceId, charsetName: charsetName, latitude: latitude, longitude: longitude, returnProfile: returnProfile, responseFilters: responseFilters, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ProfileResponse',) as ProfileResponse;
    
    }
    return null;
  }

  /// Create Account (Encrypted Username)
  ///
  /// Create a new account by role (with encrypted user-name and password)
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] deviceId (required):
  ///   The device id
  ///
  /// * [String] username (required):
  ///   The encrypted email of the user, this is what will be used when they login
  ///
  /// * [String] password (required):
  ///   The encrypted password of the user
  ///
  /// * [String] name:
  ///   The full name of the user. If this parameter is not empty, the  following parameters will be ignored: prefixName, firstName, middleName,  lastName, and suffixName 
  ///
  /// * [String] inviteToken:
  ///   the inviteToken that the referrer use for this account to sign up
  ///
  /// * [String] prefixName:
  ///   If the parameter 'name' is empty or not present, this field will be used to set the prefix of the user's name
  ///
  /// * [String] firstName:
  ///   If the parameter 'name' is empty or not present, this field will be used to set the user's first name
  ///
  /// * [String] middleName:
  ///   If the parameter 'name' is empty or not present, this field will be used to set the user's middle name
  ///
  /// * [String] lastName:
  ///   If the parameter 'name' is empty or not present, this field will be used to set the user's last name
  ///
  /// * [String] suffixName:
  ///   If the parameter 'name' is empty or not present, this field will be used to set the suffix of the user's name
  ///
  /// * [String] title:
  ///   Title
  ///
  /// * [String] deviceIdType:
  ///   Device Id Type
  ///
  /// * [String] emailAddress:
  ///   The user's contact email address (NOT the username) which is also used for email validation
  ///
  /// * [int] assetId:
  ///   The asset id to set the user's profile image
  ///
  /// * [String] address:
  ///   the user's address
  ///
  /// * [String] zipcode:
  ///   The street zipcode of the user's contact location
  ///
  /// * [String] gender:
  ///   The gender of the user AudienceGender
  ///
  /// * [int] birthday:
  ///   The birthday date of the user in milliseconds
  ///
  /// * [String] homePhone:
  ///   the user's home phone number
  ///
  /// * [String] cellPhone:
  ///   the user's cell phone number
  ///
  /// * [String] cellPhoneCarrier:
  ///   the user's Cell Phone Carrier
  ///
  /// * [String] businessPhone:
  ///   the user's Business Phone Number
  ///
  /// * [String] role:
  ///   The type of account being created {RETAILER, MEMBER, DEVELOPER, GUEST
  ///
  /// * [String] platforms:
  ///   Comma separated list of development platforms: MAC, WINDOWS, IOS, ANDROID, WINDOWSPHONE, KINDLE, UNITY3D, COCOS2D, HTML5, FACEBOOK
  ///
  /// * [String] tags:
  ///   Search tags
  ///
  /// * [String] aboutUs:
  ///   About Us information
  ///
  /// * [String] gameExperience:
  ///   Game experience level of the user {ANY, NEW, BEGINNER, INTERMEDIATE, EXPERT
  ///
  /// * [String] categoryIds:
  ///   A list of category ids that represent interests and associations
  ///
  /// * [String] hometown:
  ///   The user's hometown
  ///
  /// * [String] height:
  ///   The user's height
  ///
  /// * [int] heightIndex:
  ///   The user's height in a numerical value that can be used for ordering/searching
  ///
  /// * [String] ethnicity:
  ///   The user's ethnicity
  ///
  /// * [String] bodyType:
  ///   The user's body type
  ///
  /// * [String] maritalStatus:
  ///   The user's maritial status
  ///
  /// * [String] children:
  ///   The user's children status
  ///
  /// * [String] religion:
  ///   The user's religion
  ///
  /// * [String] education:
  ///   The user's education
  ///
  /// * [int] educationIndex:
  ///   The user's education in a numerical value that can be used for ordering/searching
  ///
  /// * [String] smoke:
  ///   The user's smoke status
  ///
  /// * [String] drink:
  ///   The user's drink status
  ///
  /// * [String] companionship:
  ///   The user's companionship status
  ///
  /// * [int] companionshipIndex:
  ///   The user's companionship index
  ///
  /// * [int] preferredMinAge:
  ///   The preferred minimum age in the account location search
  ///
  /// * [int] preferredMaxAge:
  ///   The preferred maximum age in the account location search
  ///
  /// * [int] preferredMinHeight:
  ///   The preferred minimum height in the account location search
  ///
  /// * [int] preferredMaxHeight:
  ///   The preferred maximum height in the account location search
  ///
  /// * [String] preferredGender:
  ///   The preferred gender in the account location search
  ///
  /// * [String] preferredEducation:
  ///   The preferred education in the account location search
  ///
  /// * [int] preferredEducationIndex:
  ///   The preferred education in a numerical value that can be used for ordering/searching
  ///
  /// * [String] preferredBodyType:
  ///   The preferred body type in the account location search
  ///
  /// * [String] preferredEthnicity:
  ///   The preferred ethnicity in the account location search
  ///
  /// * [String] preferredLocation:
  ///   The preferred education in the account location search
  ///
  /// * [double] preferredLocationRange:
  ///   The preferred location range in the account location search
  ///
  /// * [double] latitude:
  ///   The current latitude of the user
  ///
  /// * [double] longitude:
  ///   The current longitude of the user
  ///
  /// * [bool] acceptedTerms:
  ///   Accepted Terms
  ///
  /// * [String] charsetName:
  ///   Charset Name
  ///
  /// * [String] gameType:
  ///   Game Type
  ///
  /// * [String] appKey:
  ///   The application key
  ///
  /// * [String] appVersion:
  ///   App Version
  ///
  /// * [String] responseType:
  ///   Response Type
  Future<Response> secureSignupWithHttpInfo(String deviceId, String username, String password, { String? name, String? inviteToken, String? prefixName, String? firstName, String? middleName, String? lastName, String? suffixName, String? title, String? deviceIdType, String? emailAddress, int? assetId, String? address, String? zipcode, String? gender, int? birthday, String? homePhone, String? cellPhone, String? cellPhoneCarrier, String? businessPhone, String? role, String? platforms, String? tags, String? aboutUs, String? gameExperience, String? categoryIds, String? hometown, String? height, int? heightIndex, String? ethnicity, String? bodyType, String? maritalStatus, String? children, String? religion, String? education, int? educationIndex, String? smoke, String? drink, String? companionship, int? companionshipIndex, int? preferredMinAge, int? preferredMaxAge, int? preferredMinHeight, int? preferredMaxHeight, String? preferredGender, String? preferredEducation, int? preferredEducationIndex, String? preferredBodyType, String? preferredEthnicity, String? preferredLocation, double? preferredLocationRange, double? latitude, double? longitude, bool? acceptedTerms, String? charsetName, String? gameType, String? appKey, String? appVersion, String? responseType, }) async {
    // ignore: prefer_const_declarations
    final path = r'/account/create/validate';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (name != null) {
      queryParams.addAll(_queryParams('', 'name', name));
    }
    if (inviteToken != null) {
      queryParams.addAll(_queryParams('', 'inviteToken', inviteToken));
    }
    if (prefixName != null) {
      queryParams.addAll(_queryParams('', 'prefixName', prefixName));
    }
    if (firstName != null) {
      queryParams.addAll(_queryParams('', 'firstName', firstName));
    }
    if (middleName != null) {
      queryParams.addAll(_queryParams('', 'middleName', middleName));
    }
    if (lastName != null) {
      queryParams.addAll(_queryParams('', 'lastName', lastName));
    }
    if (suffixName != null) {
      queryParams.addAll(_queryParams('', 'suffixName', suffixName));
    }
    if (title != null) {
      queryParams.addAll(_queryParams('', 'title', title));
    }
      queryParams.addAll(_queryParams('', 'deviceId', deviceId));
    if (deviceIdType != null) {
      queryParams.addAll(_queryParams('', 'deviceIdType', deviceIdType));
    }
      queryParams.addAll(_queryParams('', 'username', username));
      queryParams.addAll(_queryParams('', 'password', password));
    if (emailAddress != null) {
      queryParams.addAll(_queryParams('', 'emailAddress', emailAddress));
    }
    if (assetId != null) {
      queryParams.addAll(_queryParams('', 'assetId', assetId));
    }
    if (address != null) {
      queryParams.addAll(_queryParams('', 'address', address));
    }
    if (zipcode != null) {
      queryParams.addAll(_queryParams('', 'zipcode', zipcode));
    }
    if (gender != null) {
      queryParams.addAll(_queryParams('', 'gender', gender));
    }
    if (birthday != null) {
      queryParams.addAll(_queryParams('', 'birthday', birthday));
    }
    if (homePhone != null) {
      queryParams.addAll(_queryParams('', 'homePhone', homePhone));
    }
    if (cellPhone != null) {
      queryParams.addAll(_queryParams('', 'cellPhone', cellPhone));
    }
    if (cellPhoneCarrier != null) {
      queryParams.addAll(_queryParams('', 'cellPhoneCarrier', cellPhoneCarrier));
    }
    if (businessPhone != null) {
      queryParams.addAll(_queryParams('', 'businessPhone', businessPhone));
    }
    if (role != null) {
      queryParams.addAll(_queryParams('', 'role', role));
    }
    if (platforms != null) {
      queryParams.addAll(_queryParams('', 'platforms', platforms));
    }
    if (tags != null) {
      queryParams.addAll(_queryParams('', 'tags', tags));
    }
    if (aboutUs != null) {
      queryParams.addAll(_queryParams('', 'aboutUs', aboutUs));
    }
    if (gameExperience != null) {
      queryParams.addAll(_queryParams('', 'gameExperience', gameExperience));
    }
    if (categoryIds != null) {
      queryParams.addAll(_queryParams('', 'categoryIds', categoryIds));
    }
    if (hometown != null) {
      queryParams.addAll(_queryParams('', 'hometown', hometown));
    }
    if (height != null) {
      queryParams.addAll(_queryParams('', 'height', height));
    }
    if (heightIndex != null) {
      queryParams.addAll(_queryParams('', 'heightIndex', heightIndex));
    }
    if (ethnicity != null) {
      queryParams.addAll(_queryParams('', 'ethnicity', ethnicity));
    }
    if (bodyType != null) {
      queryParams.addAll(_queryParams('', 'bodyType', bodyType));
    }
    if (maritalStatus != null) {
      queryParams.addAll(_queryParams('', 'maritalStatus', maritalStatus));
    }
    if (children != null) {
      queryParams.addAll(_queryParams('', 'children', children));
    }
    if (religion != null) {
      queryParams.addAll(_queryParams('', 'religion', religion));
    }
    if (education != null) {
      queryParams.addAll(_queryParams('', 'education', education));
    }
    if (educationIndex != null) {
      queryParams.addAll(_queryParams('', 'educationIndex', educationIndex));
    }
    if (smoke != null) {
      queryParams.addAll(_queryParams('', 'smoke', smoke));
    }
    if (drink != null) {
      queryParams.addAll(_queryParams('', 'drink', drink));
    }
    if (companionship != null) {
      queryParams.addAll(_queryParams('', 'companionship', companionship));
    }
    if (companionshipIndex != null) {
      queryParams.addAll(_queryParams('', 'companionshipIndex', companionshipIndex));
    }
    if (preferredMinAge != null) {
      queryParams.addAll(_queryParams('', 'preferredMinAge', preferredMinAge));
    }
    if (preferredMaxAge != null) {
      queryParams.addAll(_queryParams('', 'preferredMaxAge', preferredMaxAge));
    }
    if (preferredMinHeight != null) {
      queryParams.addAll(_queryParams('', 'preferredMinHeight', preferredMinHeight));
    }
    if (preferredMaxHeight != null) {
      queryParams.addAll(_queryParams('', 'preferredMaxHeight', preferredMaxHeight));
    }
    if (preferredGender != null) {
      queryParams.addAll(_queryParams('', 'preferredGender', preferredGender));
    }
    if (preferredEducation != null) {
      queryParams.addAll(_queryParams('', 'preferredEducation', preferredEducation));
    }
    if (preferredEducationIndex != null) {
      queryParams.addAll(_queryParams('', 'preferredEducationIndex', preferredEducationIndex));
    }
    if (preferredBodyType != null) {
      queryParams.addAll(_queryParams('', 'preferredBodyType', preferredBodyType));
    }
    if (preferredEthnicity != null) {
      queryParams.addAll(_queryParams('', 'preferredEthnicity', preferredEthnicity));
    }
    if (preferredLocation != null) {
      queryParams.addAll(_queryParams('', 'preferredLocation', preferredLocation));
    }
    if (preferredLocationRange != null) {
      queryParams.addAll(_queryParams('', 'preferredLocationRange', preferredLocationRange));
    }
    if (latitude != null) {
      queryParams.addAll(_queryParams('', 'latitude', latitude));
    }
    if (longitude != null) {
      queryParams.addAll(_queryParams('', 'longitude', longitude));
    }
    if (acceptedTerms != null) {
      queryParams.addAll(_queryParams('', 'acceptedTerms', acceptedTerms));
    }
    if (charsetName != null) {
      queryParams.addAll(_queryParams('', 'charsetName', charsetName));
    }
    if (gameType != null) {
      queryParams.addAll(_queryParams('', 'gameType', gameType));
    }
    if (appKey != null) {
      queryParams.addAll(_queryParams('', 'appKey', appKey));
    }
    if (appVersion != null) {
      queryParams.addAll(_queryParams('', 'appVersion', appVersion));
    }
    if (responseType != null) {
      queryParams.addAll(_queryParams('', 'responseType', responseType));
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

  /// Create Account (Encrypted Username)
  ///
  /// Create a new account by role (with encrypted user-name and password)
  ///
  /// Parameters:
  ///
  /// * [String] deviceId (required):
  ///   The device id
  ///
  /// * [String] username (required):
  ///   The encrypted email of the user, this is what will be used when they login
  ///
  /// * [String] password (required):
  ///   The encrypted password of the user
  ///
  /// * [String] name:
  ///   The full name of the user. If this parameter is not empty, the  following parameters will be ignored: prefixName, firstName, middleName,  lastName, and suffixName 
  ///
  /// * [String] inviteToken:
  ///   the inviteToken that the referrer use for this account to sign up
  ///
  /// * [String] prefixName:
  ///   If the parameter 'name' is empty or not present, this field will be used to set the prefix of the user's name
  ///
  /// * [String] firstName:
  ///   If the parameter 'name' is empty or not present, this field will be used to set the user's first name
  ///
  /// * [String] middleName:
  ///   If the parameter 'name' is empty or not present, this field will be used to set the user's middle name
  ///
  /// * [String] lastName:
  ///   If the parameter 'name' is empty or not present, this field will be used to set the user's last name
  ///
  /// * [String] suffixName:
  ///   If the parameter 'name' is empty or not present, this field will be used to set the suffix of the user's name
  ///
  /// * [String] title:
  ///   Title
  ///
  /// * [String] deviceIdType:
  ///   Device Id Type
  ///
  /// * [String] emailAddress:
  ///   The user's contact email address (NOT the username) which is also used for email validation
  ///
  /// * [int] assetId:
  ///   The asset id to set the user's profile image
  ///
  /// * [String] address:
  ///   the user's address
  ///
  /// * [String] zipcode:
  ///   The street zipcode of the user's contact location
  ///
  /// * [String] gender:
  ///   The gender of the user AudienceGender
  ///
  /// * [int] birthday:
  ///   The birthday date of the user in milliseconds
  ///
  /// * [String] homePhone:
  ///   the user's home phone number
  ///
  /// * [String] cellPhone:
  ///   the user's cell phone number
  ///
  /// * [String] cellPhoneCarrier:
  ///   the user's Cell Phone Carrier
  ///
  /// * [String] businessPhone:
  ///   the user's Business Phone Number
  ///
  /// * [String] role:
  ///   The type of account being created {RETAILER, MEMBER, DEVELOPER, GUEST
  ///
  /// * [String] platforms:
  ///   Comma separated list of development platforms: MAC, WINDOWS, IOS, ANDROID, WINDOWSPHONE, KINDLE, UNITY3D, COCOS2D, HTML5, FACEBOOK
  ///
  /// * [String] tags:
  ///   Search tags
  ///
  /// * [String] aboutUs:
  ///   About Us information
  ///
  /// * [String] gameExperience:
  ///   Game experience level of the user {ANY, NEW, BEGINNER, INTERMEDIATE, EXPERT
  ///
  /// * [String] categoryIds:
  ///   A list of category ids that represent interests and associations
  ///
  /// * [String] hometown:
  ///   The user's hometown
  ///
  /// * [String] height:
  ///   The user's height
  ///
  /// * [int] heightIndex:
  ///   The user's height in a numerical value that can be used for ordering/searching
  ///
  /// * [String] ethnicity:
  ///   The user's ethnicity
  ///
  /// * [String] bodyType:
  ///   The user's body type
  ///
  /// * [String] maritalStatus:
  ///   The user's maritial status
  ///
  /// * [String] children:
  ///   The user's children status
  ///
  /// * [String] religion:
  ///   The user's religion
  ///
  /// * [String] education:
  ///   The user's education
  ///
  /// * [int] educationIndex:
  ///   The user's education in a numerical value that can be used for ordering/searching
  ///
  /// * [String] smoke:
  ///   The user's smoke status
  ///
  /// * [String] drink:
  ///   The user's drink status
  ///
  /// * [String] companionship:
  ///   The user's companionship status
  ///
  /// * [int] companionshipIndex:
  ///   The user's companionship index
  ///
  /// * [int] preferredMinAge:
  ///   The preferred minimum age in the account location search
  ///
  /// * [int] preferredMaxAge:
  ///   The preferred maximum age in the account location search
  ///
  /// * [int] preferredMinHeight:
  ///   The preferred minimum height in the account location search
  ///
  /// * [int] preferredMaxHeight:
  ///   The preferred maximum height in the account location search
  ///
  /// * [String] preferredGender:
  ///   The preferred gender in the account location search
  ///
  /// * [String] preferredEducation:
  ///   The preferred education in the account location search
  ///
  /// * [int] preferredEducationIndex:
  ///   The preferred education in a numerical value that can be used for ordering/searching
  ///
  /// * [String] preferredBodyType:
  ///   The preferred body type in the account location search
  ///
  /// * [String] preferredEthnicity:
  ///   The preferred ethnicity in the account location search
  ///
  /// * [String] preferredLocation:
  ///   The preferred education in the account location search
  ///
  /// * [double] preferredLocationRange:
  ///   The preferred location range in the account location search
  ///
  /// * [double] latitude:
  ///   The current latitude of the user
  ///
  /// * [double] longitude:
  ///   The current longitude of the user
  ///
  /// * [bool] acceptedTerms:
  ///   Accepted Terms
  ///
  /// * [String] charsetName:
  ///   Charset Name
  ///
  /// * [String] gameType:
  ///   Game Type
  ///
  /// * [String] appKey:
  ///   The application key
  ///
  /// * [String] appVersion:
  ///   App Version
  ///
  /// * [String] responseType:
  ///   Response Type
  Future<ProfileInfoResponse?> secureSignup(String deviceId, String username, String password, { String? name, String? inviteToken, String? prefixName, String? firstName, String? middleName, String? lastName, String? suffixName, String? title, String? deviceIdType, String? emailAddress, int? assetId, String? address, String? zipcode, String? gender, int? birthday, String? homePhone, String? cellPhone, String? cellPhoneCarrier, String? businessPhone, String? role, String? platforms, String? tags, String? aboutUs, String? gameExperience, String? categoryIds, String? hometown, String? height, int? heightIndex, String? ethnicity, String? bodyType, String? maritalStatus, String? children, String? religion, String? education, int? educationIndex, String? smoke, String? drink, String? companionship, int? companionshipIndex, int? preferredMinAge, int? preferredMaxAge, int? preferredMinHeight, int? preferredMaxHeight, String? preferredGender, String? preferredEducation, int? preferredEducationIndex, String? preferredBodyType, String? preferredEthnicity, String? preferredLocation, double? preferredLocationRange, double? latitude, double? longitude, bool? acceptedTerms, String? charsetName, String? gameType, String? appKey, String? appVersion, String? responseType, }) async {
    final response = await secureSignupWithHttpInfo(deviceId, username, password,  name: name, inviteToken: inviteToken, prefixName: prefixName, firstName: firstName, middleName: middleName, lastName: lastName, suffixName: suffixName, title: title, deviceIdType: deviceIdType, emailAddress: emailAddress, assetId: assetId, address: address, zipcode: zipcode, gender: gender, birthday: birthday, homePhone: homePhone, cellPhone: cellPhone, cellPhoneCarrier: cellPhoneCarrier, businessPhone: businessPhone, role: role, platforms: platforms, tags: tags, aboutUs: aboutUs, gameExperience: gameExperience, categoryIds: categoryIds, hometown: hometown, height: height, heightIndex: heightIndex, ethnicity: ethnicity, bodyType: bodyType, maritalStatus: maritalStatus, children: children, religion: religion, education: education, educationIndex: educationIndex, smoke: smoke, drink: drink, companionship: companionship, companionshipIndex: companionshipIndex, preferredMinAge: preferredMinAge, preferredMaxAge: preferredMaxAge, preferredMinHeight: preferredMinHeight, preferredMaxHeight: preferredMaxHeight, preferredGender: preferredGender, preferredEducation: preferredEducation, preferredEducationIndex: preferredEducationIndex, preferredBodyType: preferredBodyType, preferredEthnicity: preferredEthnicity, preferredLocation: preferredLocation, preferredLocationRange: preferredLocationRange, latitude: latitude, longitude: longitude, acceptedTerms: acceptedTerms, charsetName: charsetName, gameType: gameType, appKey: appKey, appVersion: appVersion, responseType: responseType, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ProfileInfoResponse',) as ProfileInfoResponse;
    
    }
    return null;
  }

  /// Save Match Token
  ///
  /// Save user's match token to be used for profile match making
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] deviceId:
  ///   The device id (deviceId or accountId required)
  ///
  /// * [int] accountId:
  ///   The account id of the user (deviceId or accountId required)
  ///
  /// * [String] matchToken:
  ///   A string of numbers
  ///
  /// * [String] gameType:
  ///   Game Type (deprecated)
  ///
  /// * [String] appKey:
  ///   The application key
  ///
  /// * [double] latitude:
  ///   The current latitude of the user
  ///
  /// * [double] longitude:
  ///   The current longitude of the user
  Future<Response> setMatchTokenWithHttpInfo({ String? deviceId, int? accountId, String? matchToken, String? gameType, String? appKey, double? latitude, double? longitude, }) async {
    // ignore: prefer_const_declarations
    final path = r'/consumer/profile/matchToken';

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
    if (matchToken != null) {
      queryParams.addAll(_queryParams('', 'matchToken', matchToken));
    }
    if (gameType != null) {
      queryParams.addAll(_queryParams('', 'gameType', gameType));
    }
    if (appKey != null) {
      queryParams.addAll(_queryParams('', 'appKey', appKey));
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

  /// Save Match Token
  ///
  /// Save user's match token to be used for profile match making
  ///
  /// Parameters:
  ///
  /// * [String] deviceId:
  ///   The device id (deviceId or accountId required)
  ///
  /// * [int] accountId:
  ///   The account id of the user (deviceId or accountId required)
  ///
  /// * [String] matchToken:
  ///   A string of numbers
  ///
  /// * [String] gameType:
  ///   Game Type (deprecated)
  ///
  /// * [String] appKey:
  ///   The application key
  ///
  /// * [double] latitude:
  ///   The current latitude of the user
  ///
  /// * [double] longitude:
  ///   The current longitude of the user
  Future<SirqulResponse?> setMatchToken({ String? deviceId, int? accountId, String? matchToken, String? gameType, String? appKey, double? latitude, double? longitude, }) async {
    final response = await setMatchTokenWithHttpInfo( deviceId: deviceId, accountId: accountId, matchToken: matchToken, gameType: gameType, appKey: appKey, latitude: latitude, longitude: longitude, );
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

  /// Update Account Active Status
  ///
  /// Activate or deactivate an account (requires appropriate permissions).
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] accountId (required):
  ///   the account id of the user (deviceId or accountId required)
  ///
  /// * [int] connectionAccountId (required):
  ///   The account id of the user you want to modify (if this is not set, then the accountId parameter will be used instead)
  ///
  /// * [bool] active (required):
  ///   true will activate the user and false will deactivate
  ///
  /// * [String] deviceId:
  ///   the device id (deviceId or accountId required)
  ///
  /// * [String] appKey:
  ///   the application key that the user belongs to
  Future<Response> updateActveStatusWithHttpInfo(int accountId, int connectionAccountId, bool active, { String? deviceId, String? appKey, }) async {
    // ignore: prefer_const_declarations
    final path = r'/account/active/update';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (deviceId != null) {
      queryParams.addAll(_queryParams('', 'deviceId', deviceId));
    }
      queryParams.addAll(_queryParams('', 'accountId', accountId));
      queryParams.addAll(_queryParams('', 'connectionAccountId', connectionAccountId));
    if (appKey != null) {
      queryParams.addAll(_queryParams('', 'appKey', appKey));
    }
      queryParams.addAll(_queryParams('', 'active', active));

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

  /// Update Account Active Status
  ///
  /// Activate or deactivate an account (requires appropriate permissions).
  ///
  /// Parameters:
  ///
  /// * [int] accountId (required):
  ///   the account id of the user (deviceId or accountId required)
  ///
  /// * [int] connectionAccountId (required):
  ///   The account id of the user you want to modify (if this is not set, then the accountId parameter will be used instead)
  ///
  /// * [bool] active (required):
  ///   true will activate the user and false will deactivate
  ///
  /// * [String] deviceId:
  ///   the device id (deviceId or accountId required)
  ///
  /// * [String] appKey:
  ///   the application key that the user belongs to
  Future<SirqulResponse?> updateActveStatus(int accountId, int connectionAccountId, bool active, { String? deviceId, String? appKey, }) async {
    final response = await updateActveStatusWithHttpInfo(accountId, connectionAccountId, active,  deviceId: deviceId, appKey: appKey, );
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

  /// Update Location
  ///
  /// Update the account location
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] deviceId:
  ///   The device id (deviceId or accountId required)
  ///
  /// * [int] accountId:
  ///   The account id of the user (deviceId or accountId required)
  ///
  /// * [double] latitude:
  ///   The current latitude of the user
  ///
  /// * [double] longitude:
  ///   The current longitude of the user
  ///
  /// * [int] clientTime:
  ///   The time of the update
  Future<Response> updateLocationWithHttpInfo({ String? deviceId, int? accountId, double? latitude, double? longitude, int? clientTime, }) async {
    // ignore: prefer_const_declarations
    final path = r'/account/location/update';

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
    if (clientTime != null) {
      queryParams.addAll(_queryParams('', 'clientTime', clientTime));
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

  /// Update Location
  ///
  /// Update the account location
  ///
  /// Parameters:
  ///
  /// * [String] deviceId:
  ///   The device id (deviceId or accountId required)
  ///
  /// * [int] accountId:
  ///   The account id of the user (deviceId or accountId required)
  ///
  /// * [double] latitude:
  ///   The current latitude of the user
  ///
  /// * [double] longitude:
  ///   The current longitude of the user
  ///
  /// * [int] clientTime:
  ///   The time of the update
  Future<SirqulResponse?> updateLocation({ String? deviceId, int? accountId, double? latitude, double? longitude, int? clientTime, }) async {
    final response = await updateLocationWithHttpInfo( deviceId: deviceId, accountId: accountId, latitude: latitude, longitude: longitude, clientTime: clientTime, );
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

  /// Update Account Settings
  ///
  /// Update the account settings for a user
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] deviceId:
  ///   The device id (deviceId or accountId required)
  ///
  /// * [int] accountId:
  ///   The account id of the user (deviceId or accountId required)
  ///
  /// * [String] blockedNotifications:
  ///   The notifications to be blocked
  ///
  /// * [String] suggestionMethod:
  ///   How suggestions are to be sent (APNS, MOBILE_NOTIFICATION, SMS)
  ///
  /// * [int] suggestionCount:
  ///   How many suggestions to receive per time frame
  ///
  /// * [int] suggestionTimeFrame:
  ///   The time frame in seconds, 3600 would be a 1 hour time frame
  ///
  /// * [bool] showOthersExactLocation:
  ///   Show Others Exact Location
  ///
  /// * [bool] showAsZipcode:
  ///   Show As Zipcode
  ///
  /// * [bool] showExactLocation:
  ///   Show Exact Location
  ///
  /// * [String] favoriteVisibility:
  ///   Show favorites
  ///
  /// * [double] latitude:
  ///   The current latitude of the user
  ///
  /// * [double] longitude:
  ///   The current longitude of the user
  Future<Response> updateSettingsWithHttpInfo({ String? deviceId, int? accountId, String? blockedNotifications, String? suggestionMethod, int? suggestionCount, int? suggestionTimeFrame, bool? showOthersExactLocation, bool? showAsZipcode, bool? showExactLocation, String? favoriteVisibility, double? latitude, double? longitude, }) async {
    // ignore: prefer_const_declarations
    final path = r'/account/settings/update';

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
    if (blockedNotifications != null) {
      queryParams.addAll(_queryParams('', 'blockedNotifications', blockedNotifications));
    }
    if (suggestionMethod != null) {
      queryParams.addAll(_queryParams('', 'suggestionMethod', suggestionMethod));
    }
    if (suggestionCount != null) {
      queryParams.addAll(_queryParams('', 'suggestionCount', suggestionCount));
    }
    if (suggestionTimeFrame != null) {
      queryParams.addAll(_queryParams('', 'suggestionTimeFrame', suggestionTimeFrame));
    }
    if (showOthersExactLocation != null) {
      queryParams.addAll(_queryParams('', 'showOthersExactLocation', showOthersExactLocation));
    }
    if (showAsZipcode != null) {
      queryParams.addAll(_queryParams('', 'showAsZipcode', showAsZipcode));
    }
    if (showExactLocation != null) {
      queryParams.addAll(_queryParams('', 'showExactLocation', showExactLocation));
    }
    if (favoriteVisibility != null) {
      queryParams.addAll(_queryParams('', 'favoriteVisibility', favoriteVisibility));
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

  /// Update Account Settings
  ///
  /// Update the account settings for a user
  ///
  /// Parameters:
  ///
  /// * [String] deviceId:
  ///   The device id (deviceId or accountId required)
  ///
  /// * [int] accountId:
  ///   The account id of the user (deviceId or accountId required)
  ///
  /// * [String] blockedNotifications:
  ///   The notifications to be blocked
  ///
  /// * [String] suggestionMethod:
  ///   How suggestions are to be sent (APNS, MOBILE_NOTIFICATION, SMS)
  ///
  /// * [int] suggestionCount:
  ///   How many suggestions to receive per time frame
  ///
  /// * [int] suggestionTimeFrame:
  ///   The time frame in seconds, 3600 would be a 1 hour time frame
  ///
  /// * [bool] showOthersExactLocation:
  ///   Show Others Exact Location
  ///
  /// * [bool] showAsZipcode:
  ///   Show As Zipcode
  ///
  /// * [bool] showExactLocation:
  ///   Show Exact Location
  ///
  /// * [String] favoriteVisibility:
  ///   Show favorites
  ///
  /// * [double] latitude:
  ///   The current latitude of the user
  ///
  /// * [double] longitude:
  ///   The current longitude of the user
  Future<UserSettingsResponse?> updateSettings({ String? deviceId, int? accountId, String? blockedNotifications, String? suggestionMethod, int? suggestionCount, int? suggestionTimeFrame, bool? showOthersExactLocation, bool? showAsZipcode, bool? showExactLocation, String? favoriteVisibility, double? latitude, double? longitude, }) async {
    final response = await updateSettingsWithHttpInfo( deviceId: deviceId, accountId: accountId, blockedNotifications: blockedNotifications, suggestionMethod: suggestionMethod, suggestionCount: suggestionCount, suggestionTimeFrame: suggestionTimeFrame, showOthersExactLocation: showOthersExactLocation, showAsZipcode: showAsZipcode, showExactLocation: showExactLocation, favoriteVisibility: favoriteVisibility, latitude: latitude, longitude: longitude, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'UserSettingsResponse',) as UserSettingsResponse;
    
    }
    return null;
  }

  /// Save Validation Status
  ///
  /// Validate the account's email address. The token must be valid and not expired. Use the RequestValidateAccount end point to request a new token.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] token (required):
  ///   The token associated with the account to update, good for 24 hours
  Future<Response> validateAccountSignupWithHttpInfo(String token,) async {
    // ignore: prefer_const_declarations
    final path = r'/account/validateAccountSignup';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'token', token));

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

  /// Save Validation Status
  ///
  /// Validate the account's email address. The token must be valid and not expired. Use the RequestValidateAccount end point to request a new token.
  ///
  /// Parameters:
  ///
  /// * [String] token (required):
  ///   The token associated with the account to update, good for 24 hours
  Future<AccountLoginResponse?> validateAccountSignup(String token,) async {
    final response = await validateAccountSignupWithHttpInfo(token,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'AccountLoginResponse',) as AccountLoginResponse;
    
    }
    return null;
  }

  /// Validate Password Reset Token
  ///
  /// Validate the password reset token. The token must be valid and not expired. Use the RequestPasswordReset end point to request a token. The user receives and email with the reset page, therefore it should be validated before bwing used to reset the password.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] token (required):
  ///   The token associated with the account to update, good for 24 hours
  Future<Response> validatePasswordResetWithHttpInfo(String token,) async {
    // ignore: prefer_const_declarations
    final path = r'/account/validatepasswordreset';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'token', token));

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

  /// Validate Password Reset Token
  ///
  /// Validate the password reset token. The token must be valid and not expired. Use the RequestPasswordReset end point to request a token. The user receives and email with the reset page, therefore it should be validated before bwing used to reset the password.
  ///
  /// Parameters:
  ///
  /// * [String] token (required):
  ///   The token associated with the account to update, good for 24 hours
  Future<SirqulResponse?> validatePasswordReset(String token,) async {
    final response = await validatePasswordResetWithHttpInfo(token,);
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
