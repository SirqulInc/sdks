//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class EmployeeApi {
  EmployeeApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Assign Employee
  ///
  /// Assign An existing account to be an employee
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] accountId (required):
  ///   The account id of the logged in user
  ///
  /// * [int] managerAccountId (required):
  ///   The account id of the manager to assign under
  ///
  /// * [int] employeeAccountId (required):
  ///   The account id of the user to be assigned as employee
  ///
  /// * [String] role:
  ///   The role to assign to the employee (e.g. RETAILER or RETAILER_LIMITED)
  Future<Response> assignEmployeeWithHttpInfo(int accountId, int managerAccountId, int employeeAccountId, { String? role, }) async {
    // ignore: prefer_const_declarations
    final path = r'/employee/assign';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'accountId', accountId));
      queryParams.addAll(_queryParams('', 'managerAccountId', managerAccountId));
      queryParams.addAll(_queryParams('', 'employeeAccountId', employeeAccountId));
    if (role != null) {
      queryParams.addAll(_queryParams('', 'role', role));
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

  /// Assign Employee
  ///
  /// Assign An existing account to be an employee
  ///
  /// Parameters:
  ///
  /// * [int] accountId (required):
  ///   The account id of the logged in user
  ///
  /// * [int] managerAccountId (required):
  ///   The account id of the manager to assign under
  ///
  /// * [int] employeeAccountId (required):
  ///   The account id of the user to be assigned as employee
  ///
  /// * [String] role:
  ///   The role to assign to the employee (e.g. RETAILER or RETAILER_LIMITED)
  Future<EmployeeResponse?> assignEmployee(int accountId, int managerAccountId, int employeeAccountId, { String? role, }) async {
    final response = await assignEmployeeWithHttpInfo(accountId, managerAccountId, employeeAccountId,  role: role, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'EmployeeResponse',) as EmployeeResponse;
    
    }
    return null;
  }

  /// Assign Employee to Location
  ///
  /// Assign or unassign the account to a retailer location.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] accountId (required):
  ///   The account id of the logged in user
  ///
  /// * [int] retailerLocationId (required):
  ///   The retailer location to apply the change to
  ///
  /// * [int] employeeAccountId:
  ///   The account id of the user to apply the change to
  ///
  /// * [bool] assign:
  ///   If true (default) assign to the location, otherwise remove from the retailer
  Future<Response> assignToLocationEmployeeWithHttpInfo(int accountId, int retailerLocationId, { int? employeeAccountId, bool? assign, }) async {
    // ignore: prefer_const_declarations
    final path = r'/employee/assignToLocation';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'accountId', accountId));
    if (employeeAccountId != null) {
      queryParams.addAll(_queryParams('', 'employeeAccountId', employeeAccountId));
    }
      queryParams.addAll(_queryParams('', 'retailerLocationId', retailerLocationId));
    if (assign != null) {
      queryParams.addAll(_queryParams('', 'assign', assign));
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

  /// Assign Employee to Location
  ///
  /// Assign or unassign the account to a retailer location.
  ///
  /// Parameters:
  ///
  /// * [int] accountId (required):
  ///   The account id of the logged in user
  ///
  /// * [int] retailerLocationId (required):
  ///   The retailer location to apply the change to
  ///
  /// * [int] employeeAccountId:
  ///   The account id of the user to apply the change to
  ///
  /// * [bool] assign:
  ///   If true (default) assign to the location, otherwise remove from the retailer
  Future<SirqulResponse?> assignToLocationEmployee(int accountId, int retailerLocationId, { int? employeeAccountId, bool? assign, }) async {
    final response = await assignToLocationEmployeeWithHttpInfo(accountId, retailerLocationId,  employeeAccountId: employeeAccountId, assign: assign, );
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

  /// Create Employee
  ///
  /// Create a new account record with the provided information.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] accountId (required):
  ///   The account id of the logged in user
  ///
  /// * [int] managerAccountId (required):
  ///   The account id of the manager to assign under
  ///
  /// * [String] username (required):
  ///   The username/email for the new user. This must be unique across the entire the system.
  ///
  /// * [String] password (required):
  ///   The password for the new user
  ///
  /// * [String] name:
  ///   a name field
  ///
  /// * [String] prefixName:
  ///   The name prefix; Mr, Mrs, etc
  ///
  /// * [String] firstName:
  ///   The first name
  ///
  /// * [String] middleName:
  ///   The middle name
  ///
  /// * [String] lastName:
  ///   The last name
  ///
  /// * [String] suffixName:
  ///   The name suffix; Jr, Sr, III, etc
  ///
  /// * [String] title:
  ///   The title of the user
  ///
  /// * [String] aboutUs:
  ///   Additional about/biography text
  ///
  /// * [int] assetId:
  ///   the asset id to set the user's profile image
  ///
  /// * [String] gender:
  ///   The gender
  ///
  /// * [String] homePhone:
  ///   The home phone number
  ///
  /// * [String] cellPhone:
  ///   The cellular phone number
  ///
  /// * [String] cellPhoneCarrier:
  ///   The cellular service provider. This is required for sending SMS. Leave this empty if the provider is not on the list of supported carriers.
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
  /// * [String] role:
  ///   The role; RETAILER or RETAILER_LIMITED, defaulted to RETAILER_LIMITED
  ///
  /// * [String] retailerLocationIds:
  ///   the retailer location IDs the employee is associated with
  ///
  /// * [String] settingsAppKey:
  ///   Determines whether to return the application settings for the employee for a particular application
  ///
  /// * [String] appBlob:
  ///   external custom client defined data (per Application)
  ///
  /// * [String] assignedDeviceId:
  ///   The device id to assign to the user (used for IPS beacon tracking)
  Future<Response> createEmployeeWithHttpInfo(int accountId, int managerAccountId, String username, String password, { String? name, String? prefixName, String? firstName, String? middleName, String? lastName, String? suffixName, String? title, String? aboutUs, int? assetId, String? gender, String? homePhone, String? cellPhone, String? cellPhoneCarrier, String? businessPhone, String? emailAddress, String? streetAddress, String? streetAddress2, String? city, String? state, String? zipcode, String? country, String? role, String? retailerLocationIds, String? settingsAppKey, String? appBlob, String? assignedDeviceId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/employee/create';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'accountId', accountId));
      queryParams.addAll(_queryParams('', 'managerAccountId', managerAccountId));
      queryParams.addAll(_queryParams('', 'username', username));
      queryParams.addAll(_queryParams('', 'password', password));
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
    if (aboutUs != null) {
      queryParams.addAll(_queryParams('', 'aboutUs', aboutUs));
    }
    if (assetId != null) {
      queryParams.addAll(_queryParams('', 'assetId', assetId));
    }
    if (gender != null) {
      queryParams.addAll(_queryParams('', 'gender', gender));
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
    if (role != null) {
      queryParams.addAll(_queryParams('', 'role', role));
    }
    if (retailerLocationIds != null) {
      queryParams.addAll(_queryParams('', 'retailerLocationIds', retailerLocationIds));
    }
    if (settingsAppKey != null) {
      queryParams.addAll(_queryParams('', 'settingsAppKey', settingsAppKey));
    }
    if (appBlob != null) {
      queryParams.addAll(_queryParams('', 'appBlob', appBlob));
    }
    if (assignedDeviceId != null) {
      queryParams.addAll(_queryParams('', 'assignedDeviceId', assignedDeviceId));
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

  /// Create Employee
  ///
  /// Create a new account record with the provided information.
  ///
  /// Parameters:
  ///
  /// * [int] accountId (required):
  ///   The account id of the logged in user
  ///
  /// * [int] managerAccountId (required):
  ///   The account id of the manager to assign under
  ///
  /// * [String] username (required):
  ///   The username/email for the new user. This must be unique across the entire the system.
  ///
  /// * [String] password (required):
  ///   The password for the new user
  ///
  /// * [String] name:
  ///   a name field
  ///
  /// * [String] prefixName:
  ///   The name prefix; Mr, Mrs, etc
  ///
  /// * [String] firstName:
  ///   The first name
  ///
  /// * [String] middleName:
  ///   The middle name
  ///
  /// * [String] lastName:
  ///   The last name
  ///
  /// * [String] suffixName:
  ///   The name suffix; Jr, Sr, III, etc
  ///
  /// * [String] title:
  ///   The title of the user
  ///
  /// * [String] aboutUs:
  ///   Additional about/biography text
  ///
  /// * [int] assetId:
  ///   the asset id to set the user's profile image
  ///
  /// * [String] gender:
  ///   The gender
  ///
  /// * [String] homePhone:
  ///   The home phone number
  ///
  /// * [String] cellPhone:
  ///   The cellular phone number
  ///
  /// * [String] cellPhoneCarrier:
  ///   The cellular service provider. This is required for sending SMS. Leave this empty if the provider is not on the list of supported carriers.
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
  /// * [String] role:
  ///   The role; RETAILER or RETAILER_LIMITED, defaulted to RETAILER_LIMITED
  ///
  /// * [String] retailerLocationIds:
  ///   the retailer location IDs the employee is associated with
  ///
  /// * [String] settingsAppKey:
  ///   Determines whether to return the application settings for the employee for a particular application
  ///
  /// * [String] appBlob:
  ///   external custom client defined data (per Application)
  ///
  /// * [String] assignedDeviceId:
  ///   The device id to assign to the user (used for IPS beacon tracking)
  Future<EmployeeResponse?> createEmployee(int accountId, int managerAccountId, String username, String password, { String? name, String? prefixName, String? firstName, String? middleName, String? lastName, String? suffixName, String? title, String? aboutUs, int? assetId, String? gender, String? homePhone, String? cellPhone, String? cellPhoneCarrier, String? businessPhone, String? emailAddress, String? streetAddress, String? streetAddress2, String? city, String? state, String? zipcode, String? country, String? role, String? retailerLocationIds, String? settingsAppKey, String? appBlob, String? assignedDeviceId, }) async {
    final response = await createEmployeeWithHttpInfo(accountId, managerAccountId, username, password,  name: name, prefixName: prefixName, firstName: firstName, middleName: middleName, lastName: lastName, suffixName: suffixName, title: title, aboutUs: aboutUs, assetId: assetId, gender: gender, homePhone: homePhone, cellPhone: cellPhone, cellPhoneCarrier: cellPhoneCarrier, businessPhone: businessPhone, emailAddress: emailAddress, streetAddress: streetAddress, streetAddress2: streetAddress2, city: city, state: state, zipcode: zipcode, country: country, role: role, retailerLocationIds: retailerLocationIds, settingsAppKey: settingsAppKey, appBlob: appBlob, assignedDeviceId: assignedDeviceId, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'EmployeeResponse',) as EmployeeResponse;
    
    }
    return null;
  }

  /// Delete Employee
  ///
  /// Set the deleted date field which marks the record as deleted.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] accountId (required):
  ///   the id of the logged in user
  ///
  /// * [int] employeeAccountId (required):
  ///   the id of the employee to delete
  Future<Response> deleteEmployeeWithHttpInfo(int accountId, int employeeAccountId,) async {
    // ignore: prefer_const_declarations
    final path = r'/employee/delete';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'accountId', accountId));
      queryParams.addAll(_queryParams('', 'employeeAccountId', employeeAccountId));

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

  /// Delete Employee
  ///
  /// Set the deleted date field which marks the record as deleted.
  ///
  /// Parameters:
  ///
  /// * [int] accountId (required):
  ///   the id of the logged in user
  ///
  /// * [int] employeeAccountId (required):
  ///   the id of the employee to delete
  Future<SirqulResponse?> deleteEmployee(int accountId, int employeeAccountId,) async {
    final response = await deleteEmployeeWithHttpInfo(accountId, employeeAccountId,);
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

  /// Get Employee
  ///
  /// Get the account record for the account id provided.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] accountId (required):
  ///   the id of logged in user
  ///
  /// * [int] employeeAccountId (required):
  ///   the id of the employee account to get
  ///
  /// * [String] settingsAppKey:
  ///   Determines whether to return the application settings for the employee for a particular application
  Future<Response> getEmployeeWithHttpInfo(int accountId, int employeeAccountId, { String? settingsAppKey, }) async {
    // ignore: prefer_const_declarations
    final path = r'/employee/get';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'accountId', accountId));
      queryParams.addAll(_queryParams('', 'employeeAccountId', employeeAccountId));
    if (settingsAppKey != null) {
      queryParams.addAll(_queryParams('', 'settingsAppKey', settingsAppKey));
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

  /// Get Employee
  ///
  /// Get the account record for the account id provided.
  ///
  /// Parameters:
  ///
  /// * [int] accountId (required):
  ///   the id of logged in user
  ///
  /// * [int] employeeAccountId (required):
  ///   the id of the employee account to get
  ///
  /// * [String] settingsAppKey:
  ///   Determines whether to return the application settings for the employee for a particular application
  Future<EmployeeResponse?> getEmployee(int accountId, int employeeAccountId, { String? settingsAppKey, }) async {
    final response = await getEmployeeWithHttpInfo(accountId, employeeAccountId,  settingsAppKey: settingsAppKey, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'EmployeeResponse',) as EmployeeResponse;
    
    }
    return null;
  }

  /// Search Employees
  ///
  /// Use the accountId to determine the associated BillableEntity. From there get a list of all accounts associated as managers/employees.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] accountId (required):
  ///   The account id of the logged in user
  ///
  /// * [String] role:
  ///   The role to limit the search to: RETAILER or RETAILER_LIMITED. Leave empty to search on both roles.
  ///
  /// * [int] retailerId:
  ///   Filters employees by retailer
  ///
  /// * [int] retailerLocationId:
  ///   Filter employees by retailer locations
  ///
  /// * [String] q:
  ///   Deprecated parameter
  ///
  /// * [String] keyword:
  ///   an optional keyword to search on; ignored if empty
  ///
  /// * [String] sortField:
  ///   The field to sort by. Possible values include: DISPLAY, CREATED, UPDATED, ACTIVE, DELETED, LAST_LOGGED_IN, CONTACT_EMAIL, RETAILER_LOCATION_NAME, RETAILER_NAME
  ///
  /// * [bool] descending:
  ///   Determines whether the sorted list is in descending or ascending order
  ///
  /// * [int] i:
  ///   Deprecated parameter
  ///
  /// * [int] start:
  ///   Start the result set at some index
  ///
  /// * [int] l:
  ///   Deprecated parameter
  ///
  /// * [int] limit:
  ///   Limit the result to some number
  ///
  /// * [bool] activeOnly:
  ///   Filter results to only return active employees
  ///
  /// * [bool] managedOnly:
  ///   Filter results to only employees that you manage
  ///
  /// * [String] settingsAppKey:
  ///   Determines whether to return the application settings for the employee for a particular application
  ///
  /// * [String] categoryIds:
  ///   Comma separated list of category ids to filter results
  ///
  /// * [String] query:
  ///   Legacy/reporting query parameter used for formatting employee responses
  Future<Response> searchEmployeesWithHttpInfo(int accountId, { String? role, int? retailerId, int? retailerLocationId, String? q, String? keyword, String? sortField, bool? descending, int? i, int? start, int? l, int? limit, bool? activeOnly, bool? managedOnly, String? settingsAppKey, String? categoryIds, String? query, }) async {
    // ignore: prefer_const_declarations
    final path = r'/employee/search';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'accountId', accountId));
    if (role != null) {
      queryParams.addAll(_queryParams('', 'role', role));
    }
    if (retailerId != null) {
      queryParams.addAll(_queryParams('', 'retailerId', retailerId));
    }
    if (retailerLocationId != null) {
      queryParams.addAll(_queryParams('', 'retailerLocationId', retailerLocationId));
    }
    if (q != null) {
      queryParams.addAll(_queryParams('', 'q', q));
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
    if (activeOnly != null) {
      queryParams.addAll(_queryParams('', 'activeOnly', activeOnly));
    }
    if (managedOnly != null) {
      queryParams.addAll(_queryParams('', 'managedOnly', managedOnly));
    }
    if (settingsAppKey != null) {
      queryParams.addAll(_queryParams('', 'settingsAppKey', settingsAppKey));
    }
    if (categoryIds != null) {
      queryParams.addAll(_queryParams('', 'categoryIds', categoryIds));
    }
    if (query != null) {
      queryParams.addAll(_queryParams('', 'query', query));
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

  /// Search Employees
  ///
  /// Use the accountId to determine the associated BillableEntity. From there get a list of all accounts associated as managers/employees.
  ///
  /// Parameters:
  ///
  /// * [int] accountId (required):
  ///   The account id of the logged in user
  ///
  /// * [String] role:
  ///   The role to limit the search to: RETAILER or RETAILER_LIMITED. Leave empty to search on both roles.
  ///
  /// * [int] retailerId:
  ///   Filters employees by retailer
  ///
  /// * [int] retailerLocationId:
  ///   Filter employees by retailer locations
  ///
  /// * [String] q:
  ///   Deprecated parameter
  ///
  /// * [String] keyword:
  ///   an optional keyword to search on; ignored if empty
  ///
  /// * [String] sortField:
  ///   The field to sort by. Possible values include: DISPLAY, CREATED, UPDATED, ACTIVE, DELETED, LAST_LOGGED_IN, CONTACT_EMAIL, RETAILER_LOCATION_NAME, RETAILER_NAME
  ///
  /// * [bool] descending:
  ///   Determines whether the sorted list is in descending or ascending order
  ///
  /// * [int] i:
  ///   Deprecated parameter
  ///
  /// * [int] start:
  ///   Start the result set at some index
  ///
  /// * [int] l:
  ///   Deprecated parameter
  ///
  /// * [int] limit:
  ///   Limit the result to some number
  ///
  /// * [bool] activeOnly:
  ///   Filter results to only return active employees
  ///
  /// * [bool] managedOnly:
  ///   Filter results to only employees that you manage
  ///
  /// * [String] settingsAppKey:
  ///   Determines whether to return the application settings for the employee for a particular application
  ///
  /// * [String] categoryIds:
  ///   Comma separated list of category ids to filter results
  ///
  /// * [String] query:
  ///   Legacy/reporting query parameter used for formatting employee responses
  Future<List<EmployeeResponse>?> searchEmployees(int accountId, { String? role, int? retailerId, int? retailerLocationId, String? q, String? keyword, String? sortField, bool? descending, int? i, int? start, int? l, int? limit, bool? activeOnly, bool? managedOnly, String? settingsAppKey, String? categoryIds, String? query, }) async {
    final response = await searchEmployeesWithHttpInfo(accountId,  role: role, retailerId: retailerId, retailerLocationId: retailerLocationId, q: q, keyword: keyword, sortField: sortField, descending: descending, i: i, start: start, l: l, limit: limit, activeOnly: activeOnly, managedOnly: managedOnly, settingsAppKey: settingsAppKey, categoryIds: categoryIds, query: query, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<EmployeeResponse>') as List)
        .cast<EmployeeResponse>()
        .toList(growable: false);

    }
    return null;
  }

  /// Unassign Employee
  ///
  /// Unassign An existing account to be an employee
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] accountId (required):
  ///   The account id of the logged in user
  ///
  /// * [int] employeeAccountId (required):
  ///   The account id of the user to be unassigned
  Future<Response> unassignEmployeeWithHttpInfo(int accountId, int employeeAccountId,) async {
    // ignore: prefer_const_declarations
    final path = r'/employee/unassign';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'accountId', accountId));
      queryParams.addAll(_queryParams('', 'employeeAccountId', employeeAccountId));

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

  /// Unassign Employee
  ///
  /// Unassign An existing account to be an employee
  ///
  /// Parameters:
  ///
  /// * [int] accountId (required):
  ///   The account id of the logged in user
  ///
  /// * [int] employeeAccountId (required):
  ///   The account id of the user to be unassigned
  Future<EmployeeResponse?> unassignEmployee(int accountId, int employeeAccountId,) async {
    final response = await unassignEmployeeWithHttpInfo(accountId, employeeAccountId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'EmployeeResponse',) as EmployeeResponse;
    
    }
    return null;
  }

  /// Update Employee
  ///
  /// Update the account record with the provided information.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] accountId (required):
  ///   The account id of the logged in user
  ///
  /// * [int] employeeAccountId (required):
  ///   the id of the employee account
  ///
  /// * [int] managerAccountId:
  ///   The account id of the manager to assign under
  ///
  /// * [String] name:
  ///   a name field
  ///
  /// * [String] prefixName:
  ///   The name prefix; Mr, Mrs, etc
  ///
  /// * [String] firstName:
  ///   The first name
  ///
  /// * [String] middleName:
  ///   The middle name
  ///
  /// * [String] lastName:
  ///   The last name
  ///
  /// * [String] suffixName:
  ///   The name suffix; Jr, Sr, III, etc
  ///
  /// * [String] title:
  ///   The title of the user
  ///
  /// * [int] assetId:
  ///   the asset id to set the user's profile image
  ///
  /// * [String] gender:
  ///   The gender {MALE, FEMALE, ANY}
  ///
  /// * [String] homePhone:
  ///   The home phone number
  ///
  /// * [String] cellPhone:
  ///   The cellular phone number
  ///
  /// * [String] cellPhoneCarrier:
  ///   The cellular service provider. This is required for sending SMS. Leave this empty if the provider is not on the list of supported carriers. Supported Carriers: {ATT, QWEST, T_MOBILE, VERIZON, SPRINT, VIRIGIN_MOBILE, NEXTEL, ALLTEL, METRO_PCS, POWERTEL, BOOST_MOBILE, SUNCOM, TRACFONE, US_CELLULAR}
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
  /// * [String] role:
  ///   The role; RETAILER or RETAILER_LIMITED, defaulted to RETAILER_LIMITED
  ///
  /// * [bool] active:
  ///   Sets whether the employee is active or inactive
  ///
  /// * [String] password:
  ///   Sets the password for the employee
  ///
  /// * [String] retailerLocationIds:
  ///   Sets which retailer locations the employee is assigned to
  ///
  /// * [String] settingsAppKey:
  ///   Determines whether to return the application settings for the employee for a particular application
  ///
  /// * [String] appBlob:
  ///   external custom client defined data (per Application)
  ///
  /// * [String] assignedDeviceId:
  ///   The device id to assign to the user (used for IPS beacon tracking)
  Future<Response> updateEmployeeWithHttpInfo(int accountId, int employeeAccountId, { int? managerAccountId, String? name, String? prefixName, String? firstName, String? middleName, String? lastName, String? suffixName, String? title, int? assetId, String? gender, String? homePhone, String? cellPhone, String? cellPhoneCarrier, String? businessPhone, String? emailAddress, String? streetAddress, String? streetAddress2, String? city, String? state, String? zipcode, String? country, String? role, bool? active, String? password, String? retailerLocationIds, String? settingsAppKey, String? appBlob, String? assignedDeviceId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/employee/update';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'accountId', accountId));
      queryParams.addAll(_queryParams('', 'employeeAccountId', employeeAccountId));
    if (managerAccountId != null) {
      queryParams.addAll(_queryParams('', 'managerAccountId', managerAccountId));
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
    if (assetId != null) {
      queryParams.addAll(_queryParams('', 'assetId', assetId));
    }
    if (gender != null) {
      queryParams.addAll(_queryParams('', 'gender', gender));
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
    if (role != null) {
      queryParams.addAll(_queryParams('', 'role', role));
    }
    if (active != null) {
      queryParams.addAll(_queryParams('', 'active', active));
    }
    if (password != null) {
      queryParams.addAll(_queryParams('', 'password', password));
    }
    if (retailerLocationIds != null) {
      queryParams.addAll(_queryParams('', 'retailerLocationIds', retailerLocationIds));
    }
    if (settingsAppKey != null) {
      queryParams.addAll(_queryParams('', 'settingsAppKey', settingsAppKey));
    }
    if (appBlob != null) {
      queryParams.addAll(_queryParams('', 'appBlob', appBlob));
    }
    if (assignedDeviceId != null) {
      queryParams.addAll(_queryParams('', 'assignedDeviceId', assignedDeviceId));
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

  /// Update Employee
  ///
  /// Update the account record with the provided information.
  ///
  /// Parameters:
  ///
  /// * [int] accountId (required):
  ///   The account id of the logged in user
  ///
  /// * [int] employeeAccountId (required):
  ///   the id of the employee account
  ///
  /// * [int] managerAccountId:
  ///   The account id of the manager to assign under
  ///
  /// * [String] name:
  ///   a name field
  ///
  /// * [String] prefixName:
  ///   The name prefix; Mr, Mrs, etc
  ///
  /// * [String] firstName:
  ///   The first name
  ///
  /// * [String] middleName:
  ///   The middle name
  ///
  /// * [String] lastName:
  ///   The last name
  ///
  /// * [String] suffixName:
  ///   The name suffix; Jr, Sr, III, etc
  ///
  /// * [String] title:
  ///   The title of the user
  ///
  /// * [int] assetId:
  ///   the asset id to set the user's profile image
  ///
  /// * [String] gender:
  ///   The gender {MALE, FEMALE, ANY}
  ///
  /// * [String] homePhone:
  ///   The home phone number
  ///
  /// * [String] cellPhone:
  ///   The cellular phone number
  ///
  /// * [String] cellPhoneCarrier:
  ///   The cellular service provider. This is required for sending SMS. Leave this empty if the provider is not on the list of supported carriers. Supported Carriers: {ATT, QWEST, T_MOBILE, VERIZON, SPRINT, VIRIGIN_MOBILE, NEXTEL, ALLTEL, METRO_PCS, POWERTEL, BOOST_MOBILE, SUNCOM, TRACFONE, US_CELLULAR}
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
  /// * [String] role:
  ///   The role; RETAILER or RETAILER_LIMITED, defaulted to RETAILER_LIMITED
  ///
  /// * [bool] active:
  ///   Sets whether the employee is active or inactive
  ///
  /// * [String] password:
  ///   Sets the password for the employee
  ///
  /// * [String] retailerLocationIds:
  ///   Sets which retailer locations the employee is assigned to
  ///
  /// * [String] settingsAppKey:
  ///   Determines whether to return the application settings for the employee for a particular application
  ///
  /// * [String] appBlob:
  ///   external custom client defined data (per Application)
  ///
  /// * [String] assignedDeviceId:
  ///   The device id to assign to the user (used for IPS beacon tracking)
  Future<EmployeeResponse?> updateEmployee(int accountId, int employeeAccountId, { int? managerAccountId, String? name, String? prefixName, String? firstName, String? middleName, String? lastName, String? suffixName, String? title, int? assetId, String? gender, String? homePhone, String? cellPhone, String? cellPhoneCarrier, String? businessPhone, String? emailAddress, String? streetAddress, String? streetAddress2, String? city, String? state, String? zipcode, String? country, String? role, bool? active, String? password, String? retailerLocationIds, String? settingsAppKey, String? appBlob, String? assignedDeviceId, }) async {
    final response = await updateEmployeeWithHttpInfo(accountId, employeeAccountId,  managerAccountId: managerAccountId, name: name, prefixName: prefixName, firstName: firstName, middleName: middleName, lastName: lastName, suffixName: suffixName, title: title, assetId: assetId, gender: gender, homePhone: homePhone, cellPhone: cellPhone, cellPhoneCarrier: cellPhoneCarrier, businessPhone: businessPhone, emailAddress: emailAddress, streetAddress: streetAddress, streetAddress2: streetAddress2, city: city, state: state, zipcode: zipcode, country: country, role: role, active: active, password: password, retailerLocationIds: retailerLocationIds, settingsAppKey: settingsAppKey, appBlob: appBlob, assignedDeviceId: assignedDeviceId, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'EmployeeResponse',) as EmployeeResponse;
    
    }
    return null;
  }
}
