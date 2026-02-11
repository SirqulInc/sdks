#import "OAIUserPermissionsApi.h"
#import "OAIQueryParamCollection.h"
#import "OAIApiClient.h"
#import "OAISirqulResponse.h"
#import "OAIUserPermissionsResponse.h"


@interface OAIUserPermissionsApi ()

@property (nonatomic, strong, readwrite) NSMutableDictionary *mutableDefaultHeaders;

@end

@implementation OAIUserPermissionsApi

NSString* kOAIUserPermissionsApiErrorDomain = @"OAIUserPermissionsApiErrorDomain";
NSInteger kOAIUserPermissionsApiMissingParamErrorCode = 234513;

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
/// Add User
/// Adds a user to a permissionable object.
///  @param permissionableType the permissionable type of the object 
///
///  @param permissionableId the id of the permissionable object 
///
///  @param deviceId the device id (deviceId or accountId required) (optional)
///
///  @param accountId the account id of the user (deviceId or accountId required) (optional)
///
///  @param read the read permission of the users/groups (optional, default to @(YES))
///
///  @param write the write permission of the users/groups (optional, default to @(NO))
///
///  @param delete the delete permission of the users/groups (optional, default to @(NO))
///
///  @param add the add permission of the users/groups (optional, default to @(NO))
///
///  @param connectionIds a comma separated list of connection ids (NOT the account ids) (optional)
///
///  @param connectionAccountIds a comma separated list of account ids (optional)
///
///  @param connectionGroupIds a comma separated list of connection group ids (these are groups made by the user) (optional)
///
///  @param pending sets whether the added users are marked as pending (and will require the album admins to accept) - admins can set this to false (to accept) (optional, default to @(NO))
///
///  @param admin sets whether the added users will become admins or not (optional)
///
///  @param includeFriendGroup flag to determine whether to include the built-in \"friends\" group (optional, default to @(NO))
///
///  @param latitude the current latitude of the user (optional)
///
///  @param longitude the current longitude of the user (optional)
///
///  @param audienceIds comma separated list of audience ids. This is a feature only available to the permissionable's application owner (and its employees). This will add all users from these audiences to the permissionable object. Notifications will not be sent to users if this feature is used. (optional)
///
///  @returns OAISirqulResponse*
///
-(NSURLSessionTask*) addUsersToPermissionableWithPermissionableType: (NSString*) permissionableType
    permissionableId: (NSNumber*) permissionableId
    deviceId: (NSString*) deviceId
    accountId: (NSNumber*) accountId
    read: (NSNumber*) read
    write: (NSNumber*) write
    delete: (NSNumber*) delete
    add: (NSNumber*) add
    connectionIds: (NSString*) connectionIds
    connectionAccountIds: (NSString*) connectionAccountIds
    connectionGroupIds: (NSString*) connectionGroupIds
    pending: (NSNumber*) pending
    admin: (NSNumber*) admin
    includeFriendGroup: (NSNumber*) includeFriendGroup
    latitude: (NSNumber*) latitude
    longitude: (NSNumber*) longitude
    audienceIds: (NSString*) audienceIds
    completionHandler: (void (^)(OAISirqulResponse* output, NSError* error)) handler {
    // verify the required parameter 'permissionableType' is set
    if (permissionableType == nil) {
        NSParameterAssert(permissionableType);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"permissionableType"] };
            NSError* error = [NSError errorWithDomain:kOAIUserPermissionsApiErrorDomain code:kOAIUserPermissionsApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'permissionableId' is set
    if (permissionableId == nil) {
        NSParameterAssert(permissionableId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"permissionableId"] };
            NSError* error = [NSError errorWithDomain:kOAIUserPermissionsApiErrorDomain code:kOAIUserPermissionsApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/consumer/permissions/add"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (deviceId != nil) {
        queryParams[@"deviceId"] = deviceId;
    }
    if (accountId != nil) {
        queryParams[@"accountId"] = accountId;
    }
    if (permissionableType != nil) {
        queryParams[@"permissionableType"] = permissionableType;
    }
    if (permissionableId != nil) {
        queryParams[@"permissionableId"] = permissionableId;
    }
    if (read != nil) {
        queryParams[@"read"] = [read isEqual:@(YES)] ? @"true" : @"false";
    }
    if (write != nil) {
        queryParams[@"write"] = [write isEqual:@(YES)] ? @"true" : @"false";
    }
    if (delete != nil) {
        queryParams[@"delete"] = [delete isEqual:@(YES)] ? @"true" : @"false";
    }
    if (add != nil) {
        queryParams[@"add"] = [add isEqual:@(YES)] ? @"true" : @"false";
    }
    if (connectionIds != nil) {
        queryParams[@"connectionIds"] = connectionIds;
    }
    if (connectionAccountIds != nil) {
        queryParams[@"connectionAccountIds"] = connectionAccountIds;
    }
    if (connectionGroupIds != nil) {
        queryParams[@"connectionGroupIds"] = connectionGroupIds;
    }
    if (pending != nil) {
        queryParams[@"pending"] = [pending isEqual:@(YES)] ? @"true" : @"false";
    }
    if (admin != nil) {
        queryParams[@"admin"] = [admin isEqual:@(YES)] ? @"true" : @"false";
    }
    if (includeFriendGroup != nil) {
        queryParams[@"includeFriendGroup"] = [includeFriendGroup isEqual:@(YES)] ? @"true" : @"false";
    }
    if (latitude != nil) {
        queryParams[@"latitude"] = latitude;
    }
    if (longitude != nil) {
        queryParams[@"longitude"] = longitude;
    }
    if (audienceIds != nil) {
        queryParams[@"audienceIds"] = audienceIds;
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
/// Approve Permissionable
/// Sets the approval status of a permissionable object.
///  @param permissionableType The permissionable type of the object 
///
///  @param permissionableId The id of the permissionable object 
///
///  @param deviceId A unique ID given by the device (deviceId or accountId required) (optional)
///
///  @param accountId The account ID of the user (deviceId or accountId required) (optional)
///
///  @param approvalStatus The approval status to set {PENDING, REJECTED, APPROVED, FEATURED} (optional, default to @"APPROVED")
///
///  @returns OAISirqulResponse*
///
-(NSURLSessionTask*) approvePermissionableWithPermissionableType: (NSString*) permissionableType
    permissionableId: (NSNumber*) permissionableId
    deviceId: (NSString*) deviceId
    accountId: (NSNumber*) accountId
    approvalStatus: (NSString*) approvalStatus
    completionHandler: (void (^)(OAISirqulResponse* output, NSError* error)) handler {
    // verify the required parameter 'permissionableType' is set
    if (permissionableType == nil) {
        NSParameterAssert(permissionableType);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"permissionableType"] };
            NSError* error = [NSError errorWithDomain:kOAIUserPermissionsApiErrorDomain code:kOAIUserPermissionsApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'permissionableId' is set
    if (permissionableId == nil) {
        NSParameterAssert(permissionableId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"permissionableId"] };
            NSError* error = [NSError errorWithDomain:kOAIUserPermissionsApiErrorDomain code:kOAIUserPermissionsApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/permissionable/approve"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (deviceId != nil) {
        queryParams[@"deviceId"] = deviceId;
    }
    if (accountId != nil) {
        queryParams[@"accountId"] = accountId;
    }
    if (permissionableType != nil) {
        queryParams[@"permissionableType"] = permissionableType;
    }
    if (permissionableId != nil) {
        queryParams[@"permissionableId"] = permissionableId;
    }
    if (approvalStatus != nil) {
        queryParams[@"approvalStatus"] = approvalStatus;
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
/// Leave
/// Used when the user wants to leave from someone else's permissionable object
///  @param permissionableType the permissionable type PermissionableType 
///
///  @param permissionableId the id of the permissionable object 
///
///  @param deviceId the device id (deviceId or accountId required) (optional)
///
///  @param accountId the account id of the user (deviceId or accountId required) (optional)
///
///  @param latitude the current latitude of the user (optional)
///
///  @param longitude the current longitude of the user (optional)
///
///  @returns OAISirqulResponse*
///
-(NSURLSessionTask*) leaveFromPermissionableWithPermissionableType: (NSString*) permissionableType
    permissionableId: (NSNumber*) permissionableId
    deviceId: (NSString*) deviceId
    accountId: (NSNumber*) accountId
    latitude: (NSNumber*) latitude
    longitude: (NSNumber*) longitude
    completionHandler: (void (^)(OAISirqulResponse* output, NSError* error)) handler {
    // verify the required parameter 'permissionableType' is set
    if (permissionableType == nil) {
        NSParameterAssert(permissionableType);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"permissionableType"] };
            NSError* error = [NSError errorWithDomain:kOAIUserPermissionsApiErrorDomain code:kOAIUserPermissionsApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'permissionableId' is set
    if (permissionableId == nil) {
        NSParameterAssert(permissionableId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"permissionableId"] };
            NSError* error = [NSError errorWithDomain:kOAIUserPermissionsApiErrorDomain code:kOAIUserPermissionsApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/consumer/permissions/leave"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (deviceId != nil) {
        queryParams[@"deviceId"] = deviceId;
    }
    if (accountId != nil) {
        queryParams[@"accountId"] = accountId;
    }
    if (permissionableType != nil) {
        queryParams[@"permissionableType"] = permissionableType;
    }
    if (permissionableId != nil) {
        queryParams[@"permissionableId"] = permissionableId;
    }
    if (latitude != nil) {
        queryParams[@"latitude"] = latitude;
    }
    if (longitude != nil) {
        queryParams[@"longitude"] = longitude;
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
/// Remove User
/// Used to remove someone (assuming they have permission) from a permissionable object
///  @param permissionableType the permissionable type of the object 
///
///  @param permissionableId the id of the permissionable object 
///
///  @param deviceId the device id (deviceId or accountId required) (optional)
///
///  @param accountId the account id of the user (deviceId or accountId required) (optional)
///
///  @param connectionIds a comma separated list of connection ids (NOT the account ids) (optional)
///
///  @param connectionAccountIds a comma separated list of account ids (optional)
///
///  @param connectionGroupIds a comma separated list of connection group ids (these are groups made by the user) (optional)
///
///  @param removeFriendGroup flag to determine whether to remove the built-in \"friends\" group (optional, default to @(NO))
///
///  @param latitude the current latitude of the user (optional)
///
///  @param longitude the current longitude of the user (optional)
///
///  @param audienceIds comma separated list of audience ids. This will remove all users from these audiences from the permissionable object. Notifications will not be sent to users if this feature is used. (optional)
///
///  @returns OAISirqulResponse*
///
-(NSURLSessionTask*) removeUsersFromPermissionableWithPermissionableType: (NSString*) permissionableType
    permissionableId: (NSNumber*) permissionableId
    deviceId: (NSString*) deviceId
    accountId: (NSNumber*) accountId
    connectionIds: (NSString*) connectionIds
    connectionAccountIds: (NSString*) connectionAccountIds
    connectionGroupIds: (NSString*) connectionGroupIds
    removeFriendGroup: (NSNumber*) removeFriendGroup
    latitude: (NSNumber*) latitude
    longitude: (NSNumber*) longitude
    audienceIds: (NSString*) audienceIds
    completionHandler: (void (^)(OAISirqulResponse* output, NSError* error)) handler {
    // verify the required parameter 'permissionableType' is set
    if (permissionableType == nil) {
        NSParameterAssert(permissionableType);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"permissionableType"] };
            NSError* error = [NSError errorWithDomain:kOAIUserPermissionsApiErrorDomain code:kOAIUserPermissionsApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'permissionableId' is set
    if (permissionableId == nil) {
        NSParameterAssert(permissionableId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"permissionableId"] };
            NSError* error = [NSError errorWithDomain:kOAIUserPermissionsApiErrorDomain code:kOAIUserPermissionsApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/consumer/permissions/remove"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (deviceId != nil) {
        queryParams[@"deviceId"] = deviceId;
    }
    if (accountId != nil) {
        queryParams[@"accountId"] = accountId;
    }
    if (permissionableType != nil) {
        queryParams[@"permissionableType"] = permissionableType;
    }
    if (permissionableId != nil) {
        queryParams[@"permissionableId"] = permissionableId;
    }
    if (connectionIds != nil) {
        queryParams[@"connectionIds"] = connectionIds;
    }
    if (connectionAccountIds != nil) {
        queryParams[@"connectionAccountIds"] = connectionAccountIds;
    }
    if (connectionGroupIds != nil) {
        queryParams[@"connectionGroupIds"] = connectionGroupIds;
    }
    if (removeFriendGroup != nil) {
        queryParams[@"removeFriendGroup"] = [removeFriendGroup isEqual:@(YES)] ? @"true" : @"false";
    }
    if (latitude != nil) {
        queryParams[@"latitude"] = latitude;
    }
    if (longitude != nil) {
        queryParams[@"longitude"] = longitude;
    }
    if (audienceIds != nil) {
        queryParams[@"audienceIds"] = audienceIds;
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
/// Search Permissionables
/// Search on UserPermissions
///  @param deviceId A unique ID given by the device (deviceId or accountId required) (optional)
///
///  @param accountId The account ID of the user (deviceId or accountId required) (optional)
///
///  @param connectionAccountId Filter results for a specific user account (optional)
///
///  @param connectionAccountIds Comma separated list of account IDs to filter results with (optional)
///
///  @param permissionableType Filter user permissions by the permissionable object type (optional)
///
///  @param permissionableId The id of the permissionable object to filter by (optional)
///
///  @param keyword Keyword to search within permissionable records (optional)
///
///  @param sortField Field to sort results on (optional)
///
///  @param descending Sort descending when true (optional)
///
///  @param pending Return user permissions that are pending (optional)
///
///  @param admin Return user permissions that are admins (optional)
///
///  @param start the start index for pagination (optional, default to @0)
///
///  @param limit the limit for pagination (optional, default to @20)
///
///  @returns NSArray<OAIUserPermissionsResponse>*
///
-(NSURLSessionTask*) searchPermissionablesWithDeviceId: (NSString*) deviceId
    accountId: (NSNumber*) accountId
    connectionAccountId: (NSNumber*) connectionAccountId
    connectionAccountIds: (NSString*) connectionAccountIds
    permissionableType: (NSString*) permissionableType
    permissionableId: (NSNumber*) permissionableId
    keyword: (NSString*) keyword
    sortField: (NSString*) sortField
    descending: (NSNumber*) descending
    pending: (NSNumber*) pending
    admin: (NSNumber*) admin
    start: (NSNumber*) start
    limit: (NSNumber*) limit
    completionHandler: (void (^)(NSArray<OAIUserPermissionsResponse>* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/permissions/search"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (deviceId != nil) {
        queryParams[@"deviceId"] = deviceId;
    }
    if (accountId != nil) {
        queryParams[@"accountId"] = accountId;
    }
    if (connectionAccountId != nil) {
        queryParams[@"connectionAccountId"] = connectionAccountId;
    }
    if (connectionAccountIds != nil) {
        queryParams[@"connectionAccountIds"] = connectionAccountIds;
    }
    if (permissionableType != nil) {
        queryParams[@"permissionableType"] = permissionableType;
    }
    if (permissionableId != nil) {
        queryParams[@"permissionableId"] = permissionableId;
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
    if (pending != nil) {
        queryParams[@"pending"] = [pending isEqual:@(YES)] ? @"true" : @"false";
    }
    if (admin != nil) {
        queryParams[@"admin"] = [admin isEqual:@(YES)] ? @"true" : @"false";
    }
    if (start != nil) {
        queryParams[@"start"] = start;
    }
    if (limit != nil) {
        queryParams[@"limit"] = limit;
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
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"NSArray<OAIUserPermissionsResponse>*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSArray<OAIUserPermissionsResponse>*)data, error);
                                }
                            }];
}

///
/// Search Permissionables by Distnace
/// Search on UserPermissions by distance
///  @param latitude The latitude of the current account 
///
///  @param longitude The longitude of the current account 
///
///  @param deviceId A unique ID given by the device (deviceId or accountId required) (optional)
///
///  @param accountId The account ID of the user (deviceId or accountId required) (optional)
///
///  @param connectionAccountId Filter results for a specific user account (optional)
///
///  @param connectionAccountIds Comma separated list of account IDs to filter results with (optional)
///
///  @param permissionableType Filter user permissions by the permissionable object type (optional)
///
///  @param permissionableId The id of the permissionable object to filter by (optional)
///
///  @param searchRange The search range in miles (optional, default to @5)
///
///  @param keyword Keyword to search within permissionable records (optional)
///
///  @param pending Return user permissions that are pending (optional)
///
///  @param admin Return user permissions that are admins (optional)
///
///  @param start The start index for pagination (optional, default to @0)
///
///  @param limit The limit for pagination (optional, default to @20)
///
///  @returns NSArray<OAIUserPermissionsResponse>*
///
-(NSURLSessionTask*) searchPermissionablesFollowingDistanceWithLatitude: (NSNumber*) latitude
    longitude: (NSNumber*) longitude
    deviceId: (NSString*) deviceId
    accountId: (NSNumber*) accountId
    connectionAccountId: (NSNumber*) connectionAccountId
    connectionAccountIds: (NSString*) connectionAccountIds
    permissionableType: (NSString*) permissionableType
    permissionableId: (NSNumber*) permissionableId
    searchRange: (NSNumber*) searchRange
    keyword: (NSString*) keyword
    pending: (NSNumber*) pending
    admin: (NSNumber*) admin
    start: (NSNumber*) start
    limit: (NSNumber*) limit
    completionHandler: (void (^)(NSArray<OAIUserPermissionsResponse>* output, NSError* error)) handler {
    // verify the required parameter 'latitude' is set
    if (latitude == nil) {
        NSParameterAssert(latitude);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"latitude"] };
            NSError* error = [NSError errorWithDomain:kOAIUserPermissionsApiErrorDomain code:kOAIUserPermissionsApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'longitude' is set
    if (longitude == nil) {
        NSParameterAssert(longitude);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"longitude"] };
            NSError* error = [NSError errorWithDomain:kOAIUserPermissionsApiErrorDomain code:kOAIUserPermissionsApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/permissions/distancesearch"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (deviceId != nil) {
        queryParams[@"deviceId"] = deviceId;
    }
    if (accountId != nil) {
        queryParams[@"accountId"] = accountId;
    }
    if (connectionAccountId != nil) {
        queryParams[@"connectionAccountId"] = connectionAccountId;
    }
    if (connectionAccountIds != nil) {
        queryParams[@"connectionAccountIds"] = connectionAccountIds;
    }
    if (permissionableType != nil) {
        queryParams[@"permissionableType"] = permissionableType;
    }
    if (permissionableId != nil) {
        queryParams[@"permissionableId"] = permissionableId;
    }
    if (latitude != nil) {
        queryParams[@"latitude"] = latitude;
    }
    if (longitude != nil) {
        queryParams[@"longitude"] = longitude;
    }
    if (searchRange != nil) {
        queryParams[@"searchRange"] = searchRange;
    }
    if (keyword != nil) {
        queryParams[@"keyword"] = keyword;
    }
    if (pending != nil) {
        queryParams[@"pending"] = [pending isEqual:@(YES)] ? @"true" : @"false";
    }
    if (admin != nil) {
        queryParams[@"admin"] = [admin isEqual:@(YES)] ? @"true" : @"false";
    }
    if (start != nil) {
        queryParams[@"start"] = start;
    }
    if (limit != nil) {
        queryParams[@"limit"] = limit;
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
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"NSArray<OAIUserPermissionsResponse>*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSArray<OAIUserPermissionsResponse>*)data, error);
                                }
                            }];
}



@end
