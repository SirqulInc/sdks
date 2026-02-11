#import "OAIEmployeeApi.h"
#import "OAIQueryParamCollection.h"
#import "OAIApiClient.h"
#import "OAIEmployeeResponse.h"
#import "OAISirqulResponse.h"


@interface OAIEmployeeApi ()

@property (nonatomic, strong, readwrite) NSMutableDictionary *mutableDefaultHeaders;

@end

@implementation OAIEmployeeApi

NSString* kOAIEmployeeApiErrorDomain = @"OAIEmployeeApiErrorDomain";
NSInteger kOAIEmployeeApiMissingParamErrorCode = 234513;

@synthesize apiClient = _apiClient;

#pragma mark - Initialize methods

- (instancetype) init {
    return [self initWithApiClient:[OAIApiClient sharedClient]];
}


-(instancetype) initWithApiClient:(OAIApiClient *)apiClient {
    self = [super init];
    if (self) {
        _apiClient = apiClient;
        _mutableDefaultHeaders = [NSMutableDictionary dictionary];
    }
    return self;
}

#pragma mark -

-(NSString*) defaultHeaderForKey:(NSString*)key {
    return self.mutableDefaultHeaders[key];
}

-(void) setDefaultHeaderValue:(NSString*) value forKey:(NSString*)key {
    [self.mutableDefaultHeaders setValue:value forKey:key];
}

-(NSDictionary *)defaultHeaders {
    return self.mutableDefaultHeaders;
}

#pragma mark - Api Methods

///
/// Assign Employee
/// Assign An existing account to be an employee
///  @param accountId The account id of the logged in user 
///
///  @param managerAccountId The account id of the manager to assign under 
///
///  @param employeeAccountId The account id of the user to be assigned as employee 
///
///  @param role The role to assign to the employee (e.g. RETAILER or RETAILER_LIMITED) (optional)
///
///  @returns OAIEmployeeResponse*
///
-(NSURLSessionTask*) assignEmployeeWithAccountId: (NSNumber*) accountId
    managerAccountId: (NSNumber*) managerAccountId
    employeeAccountId: (NSNumber*) employeeAccountId
    role: (NSString*) role
    completionHandler: (void (^)(OAIEmployeeResponse* output, NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kOAIEmployeeApiErrorDomain code:kOAIEmployeeApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'managerAccountId' is set
    if (managerAccountId == nil) {
        NSParameterAssert(managerAccountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"managerAccountId"] };
            NSError* error = [NSError errorWithDomain:kOAIEmployeeApiErrorDomain code:kOAIEmployeeApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'employeeAccountId' is set
    if (employeeAccountId == nil) {
        NSParameterAssert(employeeAccountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"employeeAccountId"] };
            NSError* error = [NSError errorWithDomain:kOAIEmployeeApiErrorDomain code:kOAIEmployeeApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/employee/assign"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        queryParams[@"accountId"] = accountId;
    }
    if (managerAccountId != nil) {
        queryParams[@"managerAccountId"] = managerAccountId;
    }
    if (employeeAccountId != nil) {
        queryParams[@"employeeAccountId"] = employeeAccountId;
    }
    if (role != nil) {
        queryParams[@"role"] = role;
    }
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"*/*"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"POST"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"OAIEmployeeResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIEmployeeResponse*)data, error);
                                }
                            }];
}

///
/// Assign Employee to Location
/// Assign or unassign the account to a retailer location.
///  @param accountId The account id of the logged in user 
///
///  @param retailerLocationId The retailer location to apply the change to 
///
///  @param employeeAccountId The account id of the user to apply the change to (optional)
///
///  @param assign If true (default) assign to the location, otherwise remove from the retailer (optional, default to @(YES))
///
///  @returns OAISirqulResponse*
///
-(NSURLSessionTask*) assignToLocationEmployeeWithAccountId: (NSNumber*) accountId
    retailerLocationId: (NSNumber*) retailerLocationId
    employeeAccountId: (NSNumber*) employeeAccountId
    assign: (NSNumber*) assign
    completionHandler: (void (^)(OAISirqulResponse* output, NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kOAIEmployeeApiErrorDomain code:kOAIEmployeeApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'retailerLocationId' is set
    if (retailerLocationId == nil) {
        NSParameterAssert(retailerLocationId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"retailerLocationId"] };
            NSError* error = [NSError errorWithDomain:kOAIEmployeeApiErrorDomain code:kOAIEmployeeApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/employee/assignToLocation"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        queryParams[@"accountId"] = accountId;
    }
    if (employeeAccountId != nil) {
        queryParams[@"employeeAccountId"] = employeeAccountId;
    }
    if (retailerLocationId != nil) {
        queryParams[@"retailerLocationId"] = retailerLocationId;
    }
    if (assign != nil) {
        queryParams[@"assign"] = [assign isEqual:@(YES)] ? @"true" : @"false";
    }
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"*/*"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"POST"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"OAISirqulResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAISirqulResponse*)data, error);
                                }
                            }];
}

///
/// Create Employee
/// Create a new account record with the provided information.
///  @param accountId The account id of the logged in user 
///
///  @param managerAccountId The account id of the manager to assign under 
///
///  @param username The username/email for the new user. This must be unique across the entire the system. 
///
///  @param password The password for the new user 
///
///  @param name a name field (optional)
///
///  @param prefixName The name prefix; Mr, Mrs, etc (optional)
///
///  @param firstName The first name (optional)
///
///  @param middleName The middle name (optional)
///
///  @param lastName The last name (optional)
///
///  @param suffixName The name suffix; Jr, Sr, III, etc (optional)
///
///  @param title The title of the user (optional)
///
///  @param aboutUs Additional about/biography text (optional)
///
///  @param assetId the asset id to set the user's profile image (optional)
///
///  @param gender The gender (optional)
///
///  @param homePhone The home phone number (optional)
///
///  @param cellPhone The cellular phone number (optional)
///
///  @param cellPhoneCarrier The cellular service provider. This is required for sending SMS. Leave this empty if the provider is not on the list of supported carriers. (optional)
///
///  @param businessPhone The business phone number (optional)
///
///  @param emailAddress The user's contact email address (NOT the username) (optional)
///
///  @param streetAddress The street address of the user's contact location (optional)
///
///  @param streetAddress2 Additional address information (such as a suite number, floor number, building name, or PO Box) (optional)
///
///  @param city The city of the user's contact location (optional)
///
///  @param state The state of the user's contact location (optional)
///
///  @param zipcode The zipcode of the user's contact location (optional)
///
///  @param country The country of the user's contact location (optional)
///
///  @param role The role; RETAILER or RETAILER_LIMITED, defaulted to RETAILER_LIMITED (optional)
///
///  @param retailerLocationIds the retailer location IDs the employee is associated with (optional)
///
///  @param settingsAppKey Determines whether to return the application settings for the employee for a particular application (optional)
///
///  @param appBlob external custom client defined data (per Application) (optional)
///
///  @param assignedDeviceId The device id to assign to the user (used for IPS beacon tracking) (optional)
///
///  @returns OAIEmployeeResponse*
///
-(NSURLSessionTask*) createEmployeeWithAccountId: (NSNumber*) accountId
    managerAccountId: (NSNumber*) managerAccountId
    username: (NSString*) username
    password: (NSString*) password
    name: (NSString*) name
    prefixName: (NSString*) prefixName
    firstName: (NSString*) firstName
    middleName: (NSString*) middleName
    lastName: (NSString*) lastName
    suffixName: (NSString*) suffixName
    title: (NSString*) title
    aboutUs: (NSString*) aboutUs
    assetId: (NSNumber*) assetId
    gender: (NSString*) gender
    homePhone: (NSString*) homePhone
    cellPhone: (NSString*) cellPhone
    cellPhoneCarrier: (NSString*) cellPhoneCarrier
    businessPhone: (NSString*) businessPhone
    emailAddress: (NSString*) emailAddress
    streetAddress: (NSString*) streetAddress
    streetAddress2: (NSString*) streetAddress2
    city: (NSString*) city
    state: (NSString*) state
    zipcode: (NSString*) zipcode
    country: (NSString*) country
    role: (NSString*) role
    retailerLocationIds: (NSString*) retailerLocationIds
    settingsAppKey: (NSString*) settingsAppKey
    appBlob: (NSString*) appBlob
    assignedDeviceId: (NSString*) assignedDeviceId
    completionHandler: (void (^)(OAIEmployeeResponse* output, NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kOAIEmployeeApiErrorDomain code:kOAIEmployeeApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'managerAccountId' is set
    if (managerAccountId == nil) {
        NSParameterAssert(managerAccountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"managerAccountId"] };
            NSError* error = [NSError errorWithDomain:kOAIEmployeeApiErrorDomain code:kOAIEmployeeApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'username' is set
    if (username == nil) {
        NSParameterAssert(username);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"username"] };
            NSError* error = [NSError errorWithDomain:kOAIEmployeeApiErrorDomain code:kOAIEmployeeApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'password' is set
    if (password == nil) {
        NSParameterAssert(password);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"password"] };
            NSError* error = [NSError errorWithDomain:kOAIEmployeeApiErrorDomain code:kOAIEmployeeApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/employee/create"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        queryParams[@"accountId"] = accountId;
    }
    if (managerAccountId != nil) {
        queryParams[@"managerAccountId"] = managerAccountId;
    }
    if (username != nil) {
        queryParams[@"username"] = username;
    }
    if (password != nil) {
        queryParams[@"password"] = password;
    }
    if (name != nil) {
        queryParams[@"name"] = name;
    }
    if (prefixName != nil) {
        queryParams[@"prefixName"] = prefixName;
    }
    if (firstName != nil) {
        queryParams[@"firstName"] = firstName;
    }
    if (middleName != nil) {
        queryParams[@"middleName"] = middleName;
    }
    if (lastName != nil) {
        queryParams[@"lastName"] = lastName;
    }
    if (suffixName != nil) {
        queryParams[@"suffixName"] = suffixName;
    }
    if (title != nil) {
        queryParams[@"title"] = title;
    }
    if (aboutUs != nil) {
        queryParams[@"aboutUs"] = aboutUs;
    }
    if (assetId != nil) {
        queryParams[@"assetId"] = assetId;
    }
    if (gender != nil) {
        queryParams[@"gender"] = gender;
    }
    if (homePhone != nil) {
        queryParams[@"homePhone"] = homePhone;
    }
    if (cellPhone != nil) {
        queryParams[@"cellPhone"] = cellPhone;
    }
    if (cellPhoneCarrier != nil) {
        queryParams[@"cellPhoneCarrier"] = cellPhoneCarrier;
    }
    if (businessPhone != nil) {
        queryParams[@"businessPhone"] = businessPhone;
    }
    if (emailAddress != nil) {
        queryParams[@"emailAddress"] = emailAddress;
    }
    if (streetAddress != nil) {
        queryParams[@"streetAddress"] = streetAddress;
    }
    if (streetAddress2 != nil) {
        queryParams[@"streetAddress2"] = streetAddress2;
    }
    if (city != nil) {
        queryParams[@"city"] = city;
    }
    if (state != nil) {
        queryParams[@"state"] = state;
    }
    if (zipcode != nil) {
        queryParams[@"zipcode"] = zipcode;
    }
    if (country != nil) {
        queryParams[@"country"] = country;
    }
    if (role != nil) {
        queryParams[@"role"] = role;
    }
    if (retailerLocationIds != nil) {
        queryParams[@"retailerLocationIds"] = retailerLocationIds;
    }
    if (settingsAppKey != nil) {
        queryParams[@"settingsAppKey"] = settingsAppKey;
    }
    if (appBlob != nil) {
        queryParams[@"appBlob"] = appBlob;
    }
    if (assignedDeviceId != nil) {
        queryParams[@"assignedDeviceId"] = assignedDeviceId;
    }
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"*/*"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"POST"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"OAIEmployeeResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIEmployeeResponse*)data, error);
                                }
                            }];
}

///
/// Delete Employee
/// Set the deleted date field which marks the record as deleted.
///  @param accountId the id of the logged in user 
///
///  @param employeeAccountId the id of the employee to delete 
///
///  @returns OAISirqulResponse*
///
-(NSURLSessionTask*) deleteEmployeeWithAccountId: (NSNumber*) accountId
    employeeAccountId: (NSNumber*) employeeAccountId
    completionHandler: (void (^)(OAISirqulResponse* output, NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kOAIEmployeeApiErrorDomain code:kOAIEmployeeApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'employeeAccountId' is set
    if (employeeAccountId == nil) {
        NSParameterAssert(employeeAccountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"employeeAccountId"] };
            NSError* error = [NSError errorWithDomain:kOAIEmployeeApiErrorDomain code:kOAIEmployeeApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/employee/delete"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        queryParams[@"accountId"] = accountId;
    }
    if (employeeAccountId != nil) {
        queryParams[@"employeeAccountId"] = employeeAccountId;
    }
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"*/*"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"POST"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"OAISirqulResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAISirqulResponse*)data, error);
                                }
                            }];
}

///
/// Get Employee
/// Get the account record for the account id provided.
///  @param accountId the id of logged in user 
///
///  @param employeeAccountId the id of the employee account to get 
///
///  @param settingsAppKey Determines whether to return the application settings for the employee for a particular application (optional)
///
///  @returns OAIEmployeeResponse*
///
-(NSURLSessionTask*) getEmployeeWithAccountId: (NSNumber*) accountId
    employeeAccountId: (NSNumber*) employeeAccountId
    settingsAppKey: (NSString*) settingsAppKey
    completionHandler: (void (^)(OAIEmployeeResponse* output, NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kOAIEmployeeApiErrorDomain code:kOAIEmployeeApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'employeeAccountId' is set
    if (employeeAccountId == nil) {
        NSParameterAssert(employeeAccountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"employeeAccountId"] };
            NSError* error = [NSError errorWithDomain:kOAIEmployeeApiErrorDomain code:kOAIEmployeeApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/employee/get"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        queryParams[@"accountId"] = accountId;
    }
    if (employeeAccountId != nil) {
        queryParams[@"employeeAccountId"] = employeeAccountId;
    }
    if (settingsAppKey != nil) {
        queryParams[@"settingsAppKey"] = settingsAppKey;
    }
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"*/*"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"POST"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"OAIEmployeeResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIEmployeeResponse*)data, error);
                                }
                            }];
}

///
/// Search Employees
/// Use the accountId to determine the associated BillableEntity. From there get a list of all accounts associated as managers/employees.
///  @param accountId The account id of the logged in user 
///
///  @param role The role to limit the search to: RETAILER or RETAILER_LIMITED. Leave empty to search on both roles. (optional)
///
///  @param retailerId Filters employees by retailer (optional)
///
///  @param retailerLocationId Filter employees by retailer locations (optional)
///
///  @param q Deprecated parameter (optional)
///
///  @param keyword an optional keyword to search on; ignored if empty (optional)
///
///  @param sortField The field to sort by. Possible values include: DISPLAY, CREATED, UPDATED, ACTIVE, DELETED, LAST_LOGGED_IN, CONTACT_EMAIL, RETAILER_LOCATION_NAME, RETAILER_NAME (optional)
///
///  @param descending Determines whether the sorted list is in descending or ascending order (optional, default to @(NO))
///
///  @param i Deprecated parameter (optional)
///
///  @param start Start the result set at some index (optional, default to @0)
///
///  @param l Deprecated parameter (optional)
///
///  @param limit Limit the result to some number (optional, default to @20)
///
///  @param activeOnly Filter results to only return active employees (optional, default to @(YES))
///
///  @param managedOnly Filter results to only employees that you manage (optional)
///
///  @param settingsAppKey Determines whether to return the application settings for the employee for a particular application (optional)
///
///  @param categoryIds Comma separated list of category ids to filter results (optional)
///
///  @param query Legacy/reporting query parameter used for formatting employee responses (optional)
///
///  @returns NSArray<OAIEmployeeResponse>*
///
-(NSURLSessionTask*) searchEmployeesWithAccountId: (NSNumber*) accountId
    role: (NSString*) role
    retailerId: (NSNumber*) retailerId
    retailerLocationId: (NSNumber*) retailerLocationId
    q: (NSString*) q
    keyword: (NSString*) keyword
    sortField: (NSString*) sortField
    descending: (NSNumber*) descending
    i: (NSNumber*) i
    start: (NSNumber*) start
    l: (NSNumber*) l
    limit: (NSNumber*) limit
    activeOnly: (NSNumber*) activeOnly
    managedOnly: (NSNumber*) managedOnly
    settingsAppKey: (NSString*) settingsAppKey
    categoryIds: (NSString*) categoryIds
    query: (NSString*) query
    completionHandler: (void (^)(NSArray<OAIEmployeeResponse>* output, NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kOAIEmployeeApiErrorDomain code:kOAIEmployeeApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/employee/search"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        queryParams[@"accountId"] = accountId;
    }
    if (role != nil) {
        queryParams[@"role"] = role;
    }
    if (retailerId != nil) {
        queryParams[@"retailerId"] = retailerId;
    }
    if (retailerLocationId != nil) {
        queryParams[@"retailerLocationId"] = retailerLocationId;
    }
    if (q != nil) {
        queryParams[@"q"] = q;
    }
    if (keyword != nil) {
        queryParams[@"keyword"] = keyword;
    }
    if (sortField != nil) {
        queryParams[@"sortField"] = sortField;
    }
    if (descending != nil) {
        queryParams[@"descending"] = [descending isEqual:@(YES)] ? @"true" : @"false";
    }
    if (i != nil) {
        queryParams[@"_i"] = i;
    }
    if (start != nil) {
        queryParams[@"start"] = start;
    }
    if (l != nil) {
        queryParams[@"_l"] = l;
    }
    if (limit != nil) {
        queryParams[@"limit"] = limit;
    }
    if (activeOnly != nil) {
        queryParams[@"activeOnly"] = [activeOnly isEqual:@(YES)] ? @"true" : @"false";
    }
    if (managedOnly != nil) {
        queryParams[@"managedOnly"] = [managedOnly isEqual:@(YES)] ? @"true" : @"false";
    }
    if (settingsAppKey != nil) {
        queryParams[@"settingsAppKey"] = settingsAppKey;
    }
    if (categoryIds != nil) {
        queryParams[@"categoryIds"] = categoryIds;
    }
    if (query != nil) {
        queryParams[@"query"] = query;
    }
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"*/*"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"POST"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"NSArray<OAIEmployeeResponse>*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSArray<OAIEmployeeResponse>*)data, error);
                                }
                            }];
}

///
/// Unassign Employee
/// Unassign An existing account to be an employee
///  @param accountId The account id of the logged in user 
///
///  @param employeeAccountId The account id of the user to be unassigned 
///
///  @returns OAIEmployeeResponse*
///
-(NSURLSessionTask*) unassignEmployeeWithAccountId: (NSNumber*) accountId
    employeeAccountId: (NSNumber*) employeeAccountId
    completionHandler: (void (^)(OAIEmployeeResponse* output, NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kOAIEmployeeApiErrorDomain code:kOAIEmployeeApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'employeeAccountId' is set
    if (employeeAccountId == nil) {
        NSParameterAssert(employeeAccountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"employeeAccountId"] };
            NSError* error = [NSError errorWithDomain:kOAIEmployeeApiErrorDomain code:kOAIEmployeeApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/employee/unassign"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        queryParams[@"accountId"] = accountId;
    }
    if (employeeAccountId != nil) {
        queryParams[@"employeeAccountId"] = employeeAccountId;
    }
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"*/*"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"POST"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"OAIEmployeeResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIEmployeeResponse*)data, error);
                                }
                            }];
}

///
/// Update Employee
/// Update the account record with the provided information.
///  @param accountId The account id of the logged in user 
///
///  @param employeeAccountId the id of the employee account 
///
///  @param managerAccountId The account id of the manager to assign under (optional)
///
///  @param name a name field (optional)
///
///  @param prefixName The name prefix; Mr, Mrs, etc (optional)
///
///  @param firstName The first name (optional)
///
///  @param middleName The middle name (optional)
///
///  @param lastName The last name (optional)
///
///  @param suffixName The name suffix; Jr, Sr, III, etc (optional)
///
///  @param title The title of the user (optional)
///
///  @param assetId the asset id to set the user's profile image (optional)
///
///  @param gender The gender {MALE, FEMALE, ANY} (optional)
///
///  @param homePhone The home phone number (optional)
///
///  @param cellPhone The cellular phone number (optional)
///
///  @param cellPhoneCarrier The cellular service provider. This is required for sending SMS. Leave this empty if the provider is not on the list of supported carriers. Supported Carriers: {ATT, QWEST, T_MOBILE, VERIZON, SPRINT, VIRIGIN_MOBILE, NEXTEL, ALLTEL, METRO_PCS, POWERTEL, BOOST_MOBILE, SUNCOM, TRACFONE, US_CELLULAR} (optional)
///
///  @param businessPhone The business phone number (optional)
///
///  @param emailAddress The user's contact email address (NOT the username) (optional)
///
///  @param streetAddress The street address of the user's contact location (optional)
///
///  @param streetAddress2 Additional address information (such as a suite number, floor number, building name, or PO Box) (optional)
///
///  @param city The city of the user's contact location (optional)
///
///  @param state The state of the user's contact location (optional)
///
///  @param zipcode The zipcode of the user's contact location (optional)
///
///  @param country The country of the user's contact location (optional)
///
///  @param role The role; RETAILER or RETAILER_LIMITED, defaulted to RETAILER_LIMITED (optional)
///
///  @param active Sets whether the employee is active or inactive (optional)
///
///  @param password Sets the password for the employee (optional)
///
///  @param retailerLocationIds Sets which retailer locations the employee is assigned to (optional)
///
///  @param settingsAppKey Determines whether to return the application settings for the employee for a particular application (optional)
///
///  @param appBlob external custom client defined data (per Application) (optional)
///
///  @param assignedDeviceId The device id to assign to the user (used for IPS beacon tracking) (optional)
///
///  @returns OAIEmployeeResponse*
///
-(NSURLSessionTask*) updateEmployeeWithAccountId: (NSNumber*) accountId
    employeeAccountId: (NSNumber*) employeeAccountId
    managerAccountId: (NSNumber*) managerAccountId
    name: (NSString*) name
    prefixName: (NSString*) prefixName
    firstName: (NSString*) firstName
    middleName: (NSString*) middleName
    lastName: (NSString*) lastName
    suffixName: (NSString*) suffixName
    title: (NSString*) title
    assetId: (NSNumber*) assetId
    gender: (NSString*) gender
    homePhone: (NSString*) homePhone
    cellPhone: (NSString*) cellPhone
    cellPhoneCarrier: (NSString*) cellPhoneCarrier
    businessPhone: (NSString*) businessPhone
    emailAddress: (NSString*) emailAddress
    streetAddress: (NSString*) streetAddress
    streetAddress2: (NSString*) streetAddress2
    city: (NSString*) city
    state: (NSString*) state
    zipcode: (NSString*) zipcode
    country: (NSString*) country
    role: (NSString*) role
    active: (NSNumber*) active
    password: (NSString*) password
    retailerLocationIds: (NSString*) retailerLocationIds
    settingsAppKey: (NSString*) settingsAppKey
    appBlob: (NSString*) appBlob
    assignedDeviceId: (NSString*) assignedDeviceId
    completionHandler: (void (^)(OAIEmployeeResponse* output, NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kOAIEmployeeApiErrorDomain code:kOAIEmployeeApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'employeeAccountId' is set
    if (employeeAccountId == nil) {
        NSParameterAssert(employeeAccountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"employeeAccountId"] };
            NSError* error = [NSError errorWithDomain:kOAIEmployeeApiErrorDomain code:kOAIEmployeeApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/employee/update"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        queryParams[@"accountId"] = accountId;
    }
    if (employeeAccountId != nil) {
        queryParams[@"employeeAccountId"] = employeeAccountId;
    }
    if (managerAccountId != nil) {
        queryParams[@"managerAccountId"] = managerAccountId;
    }
    if (name != nil) {
        queryParams[@"name"] = name;
    }
    if (prefixName != nil) {
        queryParams[@"prefixName"] = prefixName;
    }
    if (firstName != nil) {
        queryParams[@"firstName"] = firstName;
    }
    if (middleName != nil) {
        queryParams[@"middleName"] = middleName;
    }
    if (lastName != nil) {
        queryParams[@"lastName"] = lastName;
    }
    if (suffixName != nil) {
        queryParams[@"suffixName"] = suffixName;
    }
    if (title != nil) {
        queryParams[@"title"] = title;
    }
    if (assetId != nil) {
        queryParams[@"assetId"] = assetId;
    }
    if (gender != nil) {
        queryParams[@"gender"] = gender;
    }
    if (homePhone != nil) {
        queryParams[@"homePhone"] = homePhone;
    }
    if (cellPhone != nil) {
        queryParams[@"cellPhone"] = cellPhone;
    }
    if (cellPhoneCarrier != nil) {
        queryParams[@"cellPhoneCarrier"] = cellPhoneCarrier;
    }
    if (businessPhone != nil) {
        queryParams[@"businessPhone"] = businessPhone;
    }
    if (emailAddress != nil) {
        queryParams[@"emailAddress"] = emailAddress;
    }
    if (streetAddress != nil) {
        queryParams[@"streetAddress"] = streetAddress;
    }
    if (streetAddress2 != nil) {
        queryParams[@"streetAddress2"] = streetAddress2;
    }
    if (city != nil) {
        queryParams[@"city"] = city;
    }
    if (state != nil) {
        queryParams[@"state"] = state;
    }
    if (zipcode != nil) {
        queryParams[@"zipcode"] = zipcode;
    }
    if (country != nil) {
        queryParams[@"country"] = country;
    }
    if (role != nil) {
        queryParams[@"role"] = role;
    }
    if (active != nil) {
        queryParams[@"active"] = [active isEqual:@(YES)] ? @"true" : @"false";
    }
    if (password != nil) {
        queryParams[@"password"] = password;
    }
    if (retailerLocationIds != nil) {
        queryParams[@"retailerLocationIds"] = retailerLocationIds;
    }
    if (settingsAppKey != nil) {
        queryParams[@"settingsAppKey"] = settingsAppKey;
    }
    if (appBlob != nil) {
        queryParams[@"appBlob"] = appBlob;
    }
    if (assignedDeviceId != nil) {
        queryParams[@"assignedDeviceId"] = assignedDeviceId;
    }
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"*/*"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"POST"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"OAIEmployeeResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIEmployeeResponse*)data, error);
                                }
                            }];
}



@end
