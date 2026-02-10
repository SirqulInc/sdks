#import "OAIAppDataApi.h"
#import "OAIQueryParamCollection.h"
#import "OAIApiClient.h"
#import "OAIAppResponse.h"
#import "OAISirqulResponse.h"


@interface OAIAppDataApi ()

@property (nonatomic, strong, readwrite) NSMutableDictionary *mutableDefaultHeaders;

@end

@implementation OAIAppDataApi

NSString* kOAIAppDataApiErrorDomain = @"OAIAppDataApiErrorDomain";
NSInteger kOAIAppDataApiMissingParamErrorCode = 234513;

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
/// Get App Data
/// Get the application data structure.  The basic structure is a   node tree, with the root node being a AppResponse.  The response contains   the user's profile, messages from the system, and a list of MissionResponse.    A mission can have any number of GameResponses but typically is a single   game type.  A game then has any number of PackResponses which help group   the game levels. Packs are then composed of any number of GameLevelResponses.     Using the various parameters can return the applications default mission   (built-in packs to play), the list of community levels published, the user's   saved levels, or explicity levels desired.  You can choose to include the   profile or not, or just return parts of the profile.  You can also filter   out game levels that have been published with a higher version of the application.
///  @param version  
///
///  @param start start the search results at a record. 
///
///  @param limit limit the search results to some number. 
///
///  @param deviceId the device id (deviceId or accountId required). (optional)
///
///  @param accountId the account id of the user (deviceId or accountId required). (optional)
///
///  @param gameType the game to retrieve the data for, use your application key. (optional)
///
///  @param includeGameData if true then include the game data blob, otherwise don't include. (optional)
///
///  @param q This parameter is deprecated. (optional)
///
///  @param keyword query string used to filter the search results when looking for community and saved levels. (optional)
///
///  @param sortField how to sort the results when looking for community and saved levels. possible values are: LEVEL_NAME, LEVEL_CREATED, LEVEL_UPDATED, LEVEL_LIKES, LEVEL_DISLIKES, LEVEL_NOTES, LEVEL_PLAYS. (optional)
///
///  @param descending order the search results descending or ascending when looking for community and saved levels. (optional)
///
///  @param i This parameter is deprecated. (optional)
///
///  @param l This parameter is deprecated. (optional)
///
///  @param gameObjectCount if true then include the game object count, otherwise don't include. (optional)
///
///  @param filter restrict the search to items with certain permissions, possible values are: MINE, FRIENDS, PUBLIC, ALL_PUBLIC, ALL, LIKED (optional)
///
///  @param dateCreated restrict the search to items created less then date (optional)
///
///  @param ownerId get levels owned by a particular account (optional)
///
///  @param missionIds get missions by specified id, comman seperated list of long ids (optional)
///
///  @param gameIds get games by specified id, comman seperated list of long ids (optional)
///
///  @param packIds get packs by specified id, comman seperated list of long ids (optional)
///
///  @param gameLevelIds get game levels by specified id, comman seperated list of long ids (optional)
///
///  @param appVersion the application version, used to versin the game level data (optional)
///
///  @param includeHigherVersionPacks default is false and will not include any packs that have levels above the specified appVersion. If true then will return all levels regardless of version. (optional)
///
///  @param includeHigherVersionLevels default is false and will not include any levels above the specified appVersion. If true then will return all levels regardless of version. (optional)
///
///  @param responseGroups use response groups to include large parts of the structure. possible values are: * MISSION_DEFAULT (default) - include the default mission (built-in packs), excludes all other mission groups * MISSION_DEFAULT_LEVELS_SAVED - include saved levels, excludes all other mission groups * MISSION_DEFAULT_LEVELS_COMMUNITY - include community levels, excludes all other mission groups * MISSION_INVITED (default) - include challenges sent to user * PROFILE (default) - include entire profile * PROFILE_DATA - only include profile date (exclude friends) * PROFILE_FRIENDS - include friends list  (optional)
///
///  @param purchaseType the will return the correct in app purchases for the device, possible values are: * SIRQUL (default) - purchasing from the sirqul store using tickets * IOS - purchasing from the itunes store for iPhone, iPod, iPod Touch * GOOGLE - purchasing from the google android store * AMAZON - purchasing from the amazon android store * MAC - purchasing from the itunes store for OSX * FREE - the item is free to purchase  (optional)
///
///  @returns OAIAppResponse*
///
-(NSURLSessionTask*) getAppDataWithVersion: (NSNumber*) version
    start: (NSNumber*) start
    limit: (NSNumber*) limit
    deviceId: (NSString*) deviceId
    accountId: (NSNumber*) accountId
    gameType: (NSString*) gameType
    includeGameData: (NSNumber*) includeGameData
    q: (NSString*) q
    keyword: (NSString*) keyword
    sortField: (NSString*) sortField
    descending: (NSNumber*) descending
    i: (NSNumber*) i
    l: (NSNumber*) l
    gameObjectCount: (NSNumber*) gameObjectCount
    filter: (NSString*) filter
    dateCreated: (NSNumber*) dateCreated
    ownerId: (NSNumber*) ownerId
    missionIds: (NSString*) missionIds
    gameIds: (NSString*) gameIds
    packIds: (NSString*) packIds
    gameLevelIds: (NSString*) gameLevelIds
    appVersion: (NSString*) appVersion
    includeHigherVersionPacks: (NSNumber*) includeHigherVersionPacks
    includeHigherVersionLevels: (NSNumber*) includeHigherVersionLevels
    responseGroups: (NSString*) responseGroups
    purchaseType: (NSString*) purchaseType
    completionHandler: (void (^)(OAIAppResponse* output, NSError* error)) handler {
    // verify the required parameter 'version' is set
    if (version == nil) {
        NSParameterAssert(version);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"version"] };
            NSError* error = [NSError errorWithDomain:kOAIAppDataApiErrorDomain code:kOAIAppDataApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'start' is set
    if (start == nil) {
        NSParameterAssert(start);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"start"] };
            NSError* error = [NSError errorWithDomain:kOAIAppDataApiErrorDomain code:kOAIAppDataApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'limit' is set
    if (limit == nil) {
        NSParameterAssert(limit);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"limit"] };
            NSError* error = [NSError errorWithDomain:kOAIAppDataApiErrorDomain code:kOAIAppDataApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/{version}/app/get"];

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
    if (gameType != nil) {
        queryParams[@"gameType"] = gameType;
    }
    if (includeGameData != nil) {
        queryParams[@"includeGameData"] = [includeGameData isEqual:@(YES)] ? @"true" : @"false";
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
    if (gameObjectCount != nil) {
        queryParams[@"gameObjectCount"] = [gameObjectCount isEqual:@(YES)] ? @"true" : @"false";
    }
    if (filter != nil) {
        queryParams[@"filter"] = filter;
    }
    if (dateCreated != nil) {
        queryParams[@"dateCreated"] = dateCreated;
    }
    if (ownerId != nil) {
        queryParams[@"ownerId"] = ownerId;
    }
    if (missionIds != nil) {
        queryParams[@"missionIds"] = missionIds;
    }
    if (gameIds != nil) {
        queryParams[@"gameIds"] = gameIds;
    }
    if (packIds != nil) {
        queryParams[@"packIds"] = packIds;
    }
    if (gameLevelIds != nil) {
        queryParams[@"gameLevelIds"] = gameLevelIds;
    }
    if (appVersion != nil) {
        queryParams[@"appVersion"] = appVersion;
    }
    if (includeHigherVersionPacks != nil) {
        queryParams[@"includeHigherVersionPacks"] = [includeHigherVersionPacks isEqual:@(YES)] ? @"true" : @"false";
    }
    if (includeHigherVersionLevels != nil) {
        queryParams[@"includeHigherVersionLevels"] = [includeHigherVersionLevels isEqual:@(YES)] ? @"true" : @"false";
    }
    if (responseGroups != nil) {
        queryParams[@"responseGroups"] = responseGroups;
    }
    if (purchaseType != nil) {
        queryParams[@"purchaseType"] = purchaseType;
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
                              responseType: @"OAIAppResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIAppResponse*)data, error);
                                }
                            }];
}

///
/// Create App Data
/// Publish the application data structure.  Can be used to save levels   and scores.  It then returns the application data structure.  The basic   structure is a node tree, with the root node being a AppResponse.  The response   contains the user's profile, messages from the system, and a list of MissionResponse.    A mission can have any number of GameResponses but typically is a single   game type.  A game then has any number of PackResponses which help group   the game levels. Packs are then composed of any number of GameLevelResponses.      Using the various parameters can return the applications default mission   (built-in packs to play), the list of community levels published, the user's   saved levels, or explicity levels desired.  You can choose to include the   profile or not, or just return parts of the profile.  You can also filter   out game levels that have been published with a higher version of the application
///  @param version  
///
///  @param gameType the game to retrieve the data for, use your application key. 
///
///  @param start start the search results at a record. 
///
///  @param limit limit the search results to some number. 
///
///  @param data The analytic data AnalyticListResponse 
///
///  @param deviceId the device id (deviceId or accountId required). (optional)
///
///  @param accountId the account id of the user (deviceId or accountId required). (optional)
///
///  @param includeGameData if true then include the game data blob, otherwise don't include. (optional)
///
///  @param q This parameter is deprecated. (optional)
///
///  @param keyword query string used to filter the search results when looking for community and saved levels. (optional)
///
///  @param sortField how to sort the results when looking for community and saved levels. possible values are: LEVEL_NAME, LEVEL_CREATED, LEVEL_UPDATED, LEVEL_LIKES, LEVEL_DISLIKES, LEVEL_NOTES, LEVEL_PLAYS. (optional)
///
///  @param descending order the search results descending or ascending when looking for community and saved levels. (optional)
///
///  @param i This parameter is deprecated. (optional)
///
///  @param l This parameter is deprecated. (optional)
///
///  @param gameObjectCount if true then include the game object count, otherwise don't include. (optional)
///
///  @param filter restrict the search to items with certain permissions, possible values are: MINE, FRIENDS, PUBLIC, ALL_PUBLIC, ALL, LIKED (optional)
///
///  @param dateCreated restrict the search to items created less then date (optional)
///
///  @param ownerId get levels owned by a particular account (optional)
///
///  @param missionIds get missions by specified id, comman seperated list of long ids (optional)
///
///  @param gameIds get games by specified id, comman seperated list of long ids (optional)
///
///  @param packIds get packs by specified id, comman seperated list of long ids (optional)
///
///  @param gameLevelIds get game levels by specified id, comman seperated list of long ids (optional)
///
///  @param appVersion the application version, used to versin the game level data (optional)
///
///  @param includeHigherVersionPacks default is false and will not include any packs that have levels above the specified appVersion. If true then will return all levels regardless of version. (optional)
///
///  @param includeHigherVersionLevels default is false and will not include any levels above the specified appVersion. If true then will return all levels regardless of version. (optional)
///
///  @param responseGroups use response groups to include large parts of the structure. possible values are: * MISSION_DEFAULT (default) - include the default mission (built-in packs), excludes all other mission groups * MISSION_DEFAULT_LEVELS_SAVED - include saved levels, excludes all other mission groups * MISSION_DEFAULT_LEVELS_COMMUNITY - include community levels, excludes all other mission groups * MISSION_INVITED (default) - include challenges sent to user * PROFILE (default) - include entire profile * PROFILE_DATA - only include profile date (exclude friends) * PROFILE_FRIENDS - include friends list  (optional)
///
///  @param purchaseType the will return the correct in app purchases for the device, possible values are: * SIRQUL (default) - purchasing from the sirqul store using tickets * IOS - purchasing from the itunes store for iPhone, iPod, iPod Touch * GOOGLE - purchasing from the google android store * AMAZON - purchasing from the amazon android store * MAC - purchasing from the itunes store for OSX * FREE - the item is free to purchase  (optional)
///
///  @returns OAIAppResponse*
///
-(NSURLSessionTask*) postAppDataWithVersion: (NSNumber*) version
    gameType: (NSString*) gameType
    start: (NSNumber*) start
    limit: (NSNumber*) limit
    data: (NSString*) data
    deviceId: (NSString*) deviceId
    accountId: (NSNumber*) accountId
    includeGameData: (NSNumber*) includeGameData
    q: (NSString*) q
    keyword: (NSString*) keyword
    sortField: (NSString*) sortField
    descending: (NSNumber*) descending
    i: (NSNumber*) i
    l: (NSNumber*) l
    gameObjectCount: (NSNumber*) gameObjectCount
    filter: (NSString*) filter
    dateCreated: (NSNumber*) dateCreated
    ownerId: (NSNumber*) ownerId
    missionIds: (NSString*) missionIds
    gameIds: (NSString*) gameIds
    packIds: (NSString*) packIds
    gameLevelIds: (NSString*) gameLevelIds
    appVersion: (NSString*) appVersion
    includeHigherVersionPacks: (NSNumber*) includeHigherVersionPacks
    includeHigherVersionLevels: (NSNumber*) includeHigherVersionLevels
    responseGroups: (NSString*) responseGroups
    purchaseType: (NSString*) purchaseType
    completionHandler: (void (^)(OAIAppResponse* output, NSError* error)) handler {
    // verify the required parameter 'version' is set
    if (version == nil) {
        NSParameterAssert(version);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"version"] };
            NSError* error = [NSError errorWithDomain:kOAIAppDataApiErrorDomain code:kOAIAppDataApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'gameType' is set
    if (gameType == nil) {
        NSParameterAssert(gameType);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"gameType"] };
            NSError* error = [NSError errorWithDomain:kOAIAppDataApiErrorDomain code:kOAIAppDataApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'start' is set
    if (start == nil) {
        NSParameterAssert(start);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"start"] };
            NSError* error = [NSError errorWithDomain:kOAIAppDataApiErrorDomain code:kOAIAppDataApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'limit' is set
    if (limit == nil) {
        NSParameterAssert(limit);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"limit"] };
            NSError* error = [NSError errorWithDomain:kOAIAppDataApiErrorDomain code:kOAIAppDataApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'data' is set
    if (data == nil) {
        NSParameterAssert(data);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"data"] };
            NSError* error = [NSError errorWithDomain:kOAIAppDataApiErrorDomain code:kOAIAppDataApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/{version}/app/post"];

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
    if (gameType != nil) {
        queryParams[@"gameType"] = gameType;
    }
    if (includeGameData != nil) {
        queryParams[@"includeGameData"] = [includeGameData isEqual:@(YES)] ? @"true" : @"false";
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
    if (gameObjectCount != nil) {
        queryParams[@"gameObjectCount"] = [gameObjectCount isEqual:@(YES)] ? @"true" : @"false";
    }
    if (filter != nil) {
        queryParams[@"filter"] = filter;
    }
    if (dateCreated != nil) {
        queryParams[@"dateCreated"] = dateCreated;
    }
    if (ownerId != nil) {
        queryParams[@"ownerId"] = ownerId;
    }
    if (missionIds != nil) {
        queryParams[@"missionIds"] = missionIds;
    }
    if (gameIds != nil) {
        queryParams[@"gameIds"] = gameIds;
    }
    if (packIds != nil) {
        queryParams[@"packIds"] = packIds;
    }
    if (gameLevelIds != nil) {
        queryParams[@"gameLevelIds"] = gameLevelIds;
    }
    if (appVersion != nil) {
        queryParams[@"appVersion"] = appVersion;
    }
    if (includeHigherVersionPacks != nil) {
        queryParams[@"includeHigherVersionPacks"] = [includeHigherVersionPacks isEqual:@(YES)] ? @"true" : @"false";
    }
    if (includeHigherVersionLevels != nil) {
        queryParams[@"includeHigherVersionLevels"] = [includeHigherVersionLevels isEqual:@(YES)] ? @"true" : @"false";
    }
    if (responseGroups != nil) {
        queryParams[@"responseGroups"] = responseGroups;
    }
    if (purchaseType != nil) {
        queryParams[@"purchaseType"] = purchaseType;
    }
    if (data != nil) {
        queryParams[@"data"] = data;
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
                              responseType: @"OAIAppResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIAppResponse*)data, error);
                                }
                            }];
}

///
/// Regenerate App Data
/// Regenerate the app data cache for apps
///  @param version  
///
///  @param accountId the account id of the user (optional)
///
///  @param appKey process a specific application, if null process all apps with caches (optional)
///
///  @param buildVersion create a specific version, if null use current version. Be careful if processing all (optional)
///
///  @param apiVersion create a specific version, if null use current version. Be careful if processing all (optional)
///
///  @returns OAISirqulResponse*
///
-(NSURLSessionTask*) regenAppDataWithVersion: (NSNumber*) version
    accountId: (NSNumber*) accountId
    appKey: (NSString*) appKey
    buildVersion: (NSString*) buildVersion
    apiVersion: (NSString*) apiVersion
    completionHandler: (void (^)(OAISirqulResponse* output, NSError* error)) handler {
    // verify the required parameter 'version' is set
    if (version == nil) {
        NSParameterAssert(version);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"version"] };
            NSError* error = [NSError errorWithDomain:kOAIAppDataApiErrorDomain code:kOAIAppDataApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/{version}/app/regen"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (version != nil) {
        pathParams[@"version"] = version;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        queryParams[@"accountId"] = accountId;
    }
    if (appKey != nil) {
        queryParams[@"appKey"] = appKey;
    }
    if (buildVersion != nil) {
        queryParams[@"buildVersion"] = buildVersion;
    }
    if (apiVersion != nil) {
        queryParams[@"apiVersion"] = apiVersion;
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



@end
