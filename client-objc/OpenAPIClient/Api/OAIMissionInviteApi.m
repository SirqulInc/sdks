#import "OAIMissionInviteApi.h"
#import "OAIQueryParamCollection.h"
#import "OAIApiClient.h"
#import "OAIMissionResponse.h"
#import "OAISirqulResponse.h"


@interface OAIMissionInviteApi ()

@property (nonatomic, strong, readwrite) NSMutableDictionary *mutableDefaultHeaders;

@end

@implementation OAIMissionInviteApi

NSString* kOAIMissionInviteApiErrorDomain = @"OAIMissionInviteApiErrorDomain";
NSInteger kOAIMissionInviteApiMissingParamErrorCode = 234513;

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
/// Create Mission Invite
/// Create the mission invite. An account can only be invited to a mission one time. For missions that require user submission and reviewing the permissionableType and permissionableId need to be provided.
///  @param version  
///
///  @param deviceId the device id (deviceId or accountId required). (optional)
///
///  @param accountId the account id of the user (deviceId or accountId required). (optional)
///
///  @param missionId The mission to find the invite for. (optional)
///
///  @param joinCode code to be entered for user to join the mission (optional)
///
///  @param includeGameData Include the game level data with the mission. (optional)
///
///  @returns OAIMissionResponse*
///
-(NSURLSessionTask*) createMissionInviteWithVersion: (NSNumber*) version
    deviceId: (NSString*) deviceId
    accountId: (NSNumber*) accountId
    missionId: (NSNumber*) missionId
    joinCode: (NSString*) joinCode
    includeGameData: (NSNumber*) includeGameData
    completionHandler: (void (^)(OAIMissionResponse* output, NSError* error)) handler {
    // verify the required parameter 'version' is set
    if (version == nil) {
        NSParameterAssert(version);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"version"] };
            NSError* error = [NSError errorWithDomain:kOAIMissionInviteApiErrorDomain code:kOAIMissionInviteApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/{version}/mission/invite/create"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (version != nil) {
        pathParams[@"version"] = version;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (deviceId != nil) {
        queryParams[@"deviceId"] = deviceId;
    }
    if (accountId != nil) {
        queryParams[@"accountId"] = accountId;
    }
    if (missionId != nil) {
        queryParams[@"missionId"] = missionId;
    }
    if (joinCode != nil) {
        queryParams[@"joinCode"] = joinCode;
    }
    if (includeGameData != nil) {
        queryParams[@"includeGameData"] = [includeGameData isEqual:@(YES)] ? @"true" : @"false";
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
                              responseType: @"OAIMissionResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIMissionResponse*)data, error);
                                }
                            }];
}

///
/// Delete Mission Invite
/// Update the mission invite status to quit.
///  @param version  
///
///  @param deviceId the device id (deviceId or accountId required). (optional)
///
///  @param accountId the account id of the user (deviceId or accountId required). (optional)
///
///  @param missionId The mission to find the invite for (missionId or missionInviteId requried). (optional)
///
///  @param missionInviteId The mission invite id. This checks on the user's billable for permission (missionId or missionInviteId requried). (optional)
///
///  @param includeGameData Include the game level data with the mission. (optional)
///
///  @returns OAISirqulResponse*
///
-(NSURLSessionTask*) deleteMissionInviteWithVersion: (NSNumber*) version
    deviceId: (NSString*) deviceId
    accountId: (NSNumber*) accountId
    missionId: (NSNumber*) missionId
    missionInviteId: (NSNumber*) missionInviteId
    includeGameData: (NSNumber*) includeGameData
    completionHandler: (void (^)(OAISirqulResponse* output, NSError* error)) handler {
    // verify the required parameter 'version' is set
    if (version == nil) {
        NSParameterAssert(version);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"version"] };
            NSError* error = [NSError errorWithDomain:kOAIMissionInviteApiErrorDomain code:kOAIMissionInviteApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/{version}/mission/invite/delete"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (version != nil) {
        pathParams[@"version"] = version;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (deviceId != nil) {
        queryParams[@"deviceId"] = deviceId;
    }
    if (accountId != nil) {
        queryParams[@"accountId"] = accountId;
    }
    if (missionId != nil) {
        queryParams[@"missionId"] = missionId;
    }
    if (missionInviteId != nil) {
        queryParams[@"missionInviteId"] = missionInviteId;
    }
    if (includeGameData != nil) {
        queryParams[@"includeGameData"] = [includeGameData isEqual:@(YES)] ? @"true" : @"false";
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
/// Get Mission Invite
/// Get the mission invite. An account can only be invited to a mission one time.
///  @param version  
///
///  @param deviceId the device id (deviceId or accountId required). (optional)
///
///  @param accountId the account id of the user (deviceId or accountId required). (optional)
///
///  @param missionId The mission to find the invite for (missionId or missionInviteId requried). (optional)
///
///  @param missionInviteId The mission invite id. This checks on the user's billable for permission (missionId or missionInviteId requried). (optional)
///
///  @param includeGameData Include the game level data with the mission. (optional)
///
///  @param includeScores include the scores with the mission (optional)
///
///  @returns OAIMissionResponse*
///
-(NSURLSessionTask*) getMissionInviteWithVersion: (NSNumber*) version
    deviceId: (NSString*) deviceId
    accountId: (NSNumber*) accountId
    missionId: (NSNumber*) missionId
    missionInviteId: (NSNumber*) missionInviteId
    includeGameData: (NSNumber*) includeGameData
    includeScores: (NSString*) includeScores
    completionHandler: (void (^)(OAIMissionResponse* output, NSError* error)) handler {
    // verify the required parameter 'version' is set
    if (version == nil) {
        NSParameterAssert(version);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"version"] };
            NSError* error = [NSError errorWithDomain:kOAIMissionInviteApiErrorDomain code:kOAIMissionInviteApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/{version}/mission/invite/get"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (version != nil) {
        pathParams[@"version"] = version;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (deviceId != nil) {
        queryParams[@"deviceId"] = deviceId;
    }
    if (accountId != nil) {
        queryParams[@"accountId"] = accountId;
    }
    if (missionId != nil) {
        queryParams[@"missionId"] = missionId;
    }
    if (missionInviteId != nil) {
        queryParams[@"missionInviteId"] = missionInviteId;
    }
    if (includeGameData != nil) {
        queryParams[@"includeGameData"] = [includeGameData isEqual:@(YES)] ? @"true" : @"false";
    }
    if (includeScores != nil) {
        queryParams[@"includeScores"] = includeScores;
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
                              responseType: @"OAIMissionResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIMissionResponse*)data, error);
                                }
                            }];
}

///
/// Search Mission Invites
/// Get a list of mission invites that the account has.
///  @param version  
///
///  @param deviceId the device id (deviceId or accountId required). (optional)
///
///  @param accountId the account id of the user (deviceId or accountId required). (optional)
///
///  @param appKey the app to retrieve the data for, use your application key. (optional)
///
///  @param appVersion the application version, used to version the game level data (optional)
///
///  @param missionId the mission id to filter on (optional)
///
///  @param status The invite status to filter for, comma separated list {AVAILABLE, PENDING, UPDATED, ACCEPTED, ACTIVE, QUIT, COMPLETED, PENDING_REVIEW, REJECTED} (optional)
///
///  @param lastUpdated Only return invites that have been updated since this date/time (long) (optional)
///
///  @param start The index into the record set to start with. (optional)
///
///  @param limit The total number of record to return. (optional)
///
///  @param keyword the keyword to search on (optional)
///
///  @param missionTypes  (optional)
///
///  @param filterByBillable filter results by the account's billable (optional)
///
///  @param includeGameData Include the game level data with the mission. (optional)
///
///  @returns NSArray<OAIMissionResponse>*
///
-(NSURLSessionTask*) searchMissionInvitesWithVersion: (NSNumber*) version
    deviceId: (NSString*) deviceId
    accountId: (NSNumber*) accountId
    appKey: (NSString*) appKey
    appVersion: (NSString*) appVersion
    missionId: (NSNumber*) missionId
    status: (NSString*) status
    lastUpdated: (NSNumber*) lastUpdated
    start: (NSNumber*) start
    limit: (NSNumber*) limit
    keyword: (NSString*) keyword
    missionTypes: (NSString*) missionTypes
    filterByBillable: (NSNumber*) filterByBillable
    includeGameData: (NSNumber*) includeGameData
    completionHandler: (void (^)(NSArray<OAIMissionResponse>* output, NSError* error)) handler {
    // verify the required parameter 'version' is set
    if (version == nil) {
        NSParameterAssert(version);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"version"] };
            NSError* error = [NSError errorWithDomain:kOAIMissionInviteApiErrorDomain code:kOAIMissionInviteApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/{version}/mission/invite/search"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (version != nil) {
        pathParams[@"version"] = version;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (deviceId != nil) {
        queryParams[@"deviceId"] = deviceId;
    }
    if (accountId != nil) {
        queryParams[@"accountId"] = accountId;
    }
    if (appKey != nil) {
        queryParams[@"appKey"] = appKey;
    }
    if (appVersion != nil) {
        queryParams[@"appVersion"] = appVersion;
    }
    if (missionId != nil) {
        queryParams[@"missionId"] = missionId;
    }
    if (status != nil) {
        queryParams[@"status"] = status;
    }
    if (lastUpdated != nil) {
        queryParams[@"lastUpdated"] = lastUpdated;
    }
    if (start != nil) {
        queryParams[@"start"] = start;
    }
    if (limit != nil) {
        queryParams[@"limit"] = limit;
    }
    if (keyword != nil) {
        queryParams[@"keyword"] = keyword;
    }
    if (missionTypes != nil) {
        queryParams[@"missionTypes"] = missionTypes;
    }
    if (filterByBillable != nil) {
        queryParams[@"filterByBillable"] = [filterByBillable isEqual:@(YES)] ? @"true" : @"false";
    }
    if (includeGameData != nil) {
        queryParams[@"includeGameData"] = [includeGameData isEqual:@(YES)] ? @"true" : @"false";
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
                              responseType: @"NSArray<OAIMissionResponse>*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSArray<OAIMissionResponse>*)data, error);
                                }
                            }];
}

///
/// Update Mission Invite
/// Update the mission invite status. An account can only be invited to a mission one time. For missions that require user submission and reviewing the permissionableType and permissionableId need to be provided.
///  @param version  
///
///  @param deviceId the device id (deviceId or accountId required). (optional)
///
///  @param accountId the account id of the user (deviceId or accountId required). (optional)
///
///  @param appKey the application key (optional)
///
///  @param missionId The mission to find the invite for (missionId or missionInviteId requried). (optional)
///
///  @param missionInviteId The mission invite id. This checks on the user's billable for permission (missionId or missionInviteId requried). (optional)
///
///  @param packId the pack id to find the invite for (optional)
///
///  @param gameLevelId the game level id to find the invite for (optional)
///
///  @param status The invite status to filter for, comma separated list {AVAILABLE, PENDING, UPDATED, ACCEPTED, ACTIVE, QUIT, COMPLETED, PENDING_REVIEW, REJECTED} (optional)
///
///  @param permissionableType This is the content type for missions that require user submission. Note that user submitted content must require a status of PENDING_REVIEW to be accpeted. {ACCOUNT, GAMELEVEL, COLLECTION, ALBUM_CONTEST, THEME_DESCRIPTOR, ALBUM} (optional)
///
///  @param permissionableId The id of the content being submitted. (optional)
///
///  @param includeGameData Include the game level data with the mission. (optional)
///
///  @returns OAIMissionResponse*
///
-(NSURLSessionTask*) updateMissionInviteWithVersion: (NSNumber*) version
    deviceId: (NSString*) deviceId
    accountId: (NSNumber*) accountId
    appKey: (NSString*) appKey
    missionId: (NSNumber*) missionId
    missionInviteId: (NSNumber*) missionInviteId
    packId: (NSNumber*) packId
    gameLevelId: (NSNumber*) gameLevelId
    status: (NSString*) status
    permissionableType: (NSString*) permissionableType
    permissionableId: (NSNumber*) permissionableId
    includeGameData: (NSNumber*) includeGameData
    completionHandler: (void (^)(OAIMissionResponse* output, NSError* error)) handler {
    // verify the required parameter 'version' is set
    if (version == nil) {
        NSParameterAssert(version);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"version"] };
            NSError* error = [NSError errorWithDomain:kOAIMissionInviteApiErrorDomain code:kOAIMissionInviteApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/{version}/mission/invite/update"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (version != nil) {
        pathParams[@"version"] = version;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (deviceId != nil) {
        queryParams[@"deviceId"] = deviceId;
    }
    if (accountId != nil) {
        queryParams[@"accountId"] = accountId;
    }
    if (appKey != nil) {
        queryParams[@"appKey"] = appKey;
    }
    if (missionId != nil) {
        queryParams[@"missionId"] = missionId;
    }
    if (missionInviteId != nil) {
        queryParams[@"missionInviteId"] = missionInviteId;
    }
    if (packId != nil) {
        queryParams[@"packId"] = packId;
    }
    if (gameLevelId != nil) {
        queryParams[@"gameLevelId"] = gameLevelId;
    }
    if (status != nil) {
        queryParams[@"status"] = status;
    }
    if (permissionableType != nil) {
        queryParams[@"permissionableType"] = permissionableType;
    }
    if (permissionableId != nil) {
        queryParams[@"permissionableId"] = permissionableId;
    }
    if (includeGameData != nil) {
        queryParams[@"includeGameData"] = [includeGameData isEqual:@(YES)] ? @"true" : @"false";
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
                              responseType: @"OAIMissionResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIMissionResponse*)data, error);
                                }
                            }];
}



@end
