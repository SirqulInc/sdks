#import "OAIGameLevelApi.h"
#import "OAIQueryParamCollection.h"
#import "OAIApiClient.h"
#import "OAIGameLevelListResponse.h"
#import "OAIGameLevelResponse.h"
#import "OAIQuestionResponse.h"
#import "OAISirqulResponse.h"
#import "OAIWordzWordResponse.h"


@interface OAIGameLevelApi ()

@property (nonatomic, strong, readwrite) NSMutableDictionary *mutableDefaultHeaders;

@end

@implementation OAIGameLevelApi

NSString* kOAIGameLevelApiErrorDomain = @"OAIGameLevelApiErrorDomain";
NSInteger kOAIGameLevelApiMissingParamErrorCode = 234513;

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
/// Create Game Level
/// Create a game level. Currently does NOT support game objects.
///  @param accountId The logged in user. 
///
///  @param name The name of the level. 
///
///  @param gameData The game level data: xml, json, or other text based format. 
///
///  @param gameDataSuffix The game level data format type. 
///
///  @param appKey The game application key to save the level for. (optional)
///
///  @param _description The description of the level. (optional)
///
///  @param difficulty The difficulty, possible values are: VERY_EASY, EASY, MEDIUM, HARD, VERY_HARD. (optional)
///
///  @param appVersion The version number of the application required to correctly load/play the level. (optional)
///
///  @param assetImageId The asset Id of the level image. (optional)
///
///  @param assetIconId The asset Id of the level icon. (optional)
///
///  @param visibility Is the level visible to others, possible values are: PUBLIC, PRIVATE. (optional)
///
///  @param friendGroup Make the level be readable by all friends. (optional)
///
///  @param connectionIds Make the level be readable by connections in this list. (optional)
///
///  @param connectionGroupIds Make the level be readable by connection groups in this list. (optional)
///
///  @param balance Set the amount of money available to spend, once 0 deactivate level. Set to a negative value for unlimited. (optional)
///
///  @param active If true set the game level as active. Default is false. (optional)
///
///  @param allocateTickets If true then scoring will give tickets. Default is false. (optional)
///
///  @param ticketCount The number of tickets to reward (optional)
///
///  @param ticketType The type of ticket to reward, null means default type (optional)
///
///  @param points The number of points to award for completing a level (optional)
///
///  @param tutorialTitle Title of the tutorial. (optional)
///
///  @param tutorialMessage Message of the tutotrial. (optional)
///
///  @param tutorialAlignment Alignment of the tutorial image. Default to NONE. Possible values are: NONE, IMAGE_ABOVE, IMAGE_BELOW, IMAGE_LEFT, IMAGE_RIGHT, IMAGE_ONLY, TEXT_ONLY (optional)
///
///  @param tutorialImageAssetId Asset id of the tutorial image. (optional)
///
///  @param offerId id of the offer (optional)
///
///  @param metaData external custom client defined data (optional)
///
///  @returns OAIGameLevelResponse*
///
-(NSURLSessionTask*) createGameLevelWithAccountId: (NSNumber*) accountId
    name: (NSString*) name
    gameData: (NSString*) gameData
    gameDataSuffix: (NSString*) gameDataSuffix
    appKey: (NSString*) appKey
    _description: (NSString*) _description
    difficulty: (NSString*) difficulty
    appVersion: (NSString*) appVersion
    assetImageId: (NSNumber*) assetImageId
    assetIconId: (NSNumber*) assetIconId
    visibility: (NSString*) visibility
    friendGroup: (NSNumber*) friendGroup
    connectionIds: (NSString*) connectionIds
    connectionGroupIds: (NSString*) connectionGroupIds
    balance: (NSNumber*) balance
    active: (NSNumber*) active
    allocateTickets: (NSNumber*) allocateTickets
    ticketCount: (NSNumber*) ticketCount
    ticketType: (NSString*) ticketType
    points: (NSNumber*) points
    tutorialTitle: (NSString*) tutorialTitle
    tutorialMessage: (NSString*) tutorialMessage
    tutorialAlignment: (NSString*) tutorialAlignment
    tutorialImageAssetId: (NSNumber*) tutorialImageAssetId
    offerId: (NSNumber*) offerId
    metaData: (NSString*) metaData
    completionHandler: (void (^)(OAIGameLevelResponse* output, NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kOAIGameLevelApiErrorDomain code:kOAIGameLevelApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'name' is set
    if (name == nil) {
        NSParameterAssert(name);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"name"] };
            NSError* error = [NSError errorWithDomain:kOAIGameLevelApiErrorDomain code:kOAIGameLevelApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'gameData' is set
    if (gameData == nil) {
        NSParameterAssert(gameData);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"gameData"] };
            NSError* error = [NSError errorWithDomain:kOAIGameLevelApiErrorDomain code:kOAIGameLevelApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'gameDataSuffix' is set
    if (gameDataSuffix == nil) {
        NSParameterAssert(gameDataSuffix);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"gameDataSuffix"] };
            NSError* error = [NSError errorWithDomain:kOAIGameLevelApiErrorDomain code:kOAIGameLevelApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/level/create"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        queryParams[@"accountId"] = accountId;
    }
    if (appKey != nil) {
        queryParams[@"appKey"] = appKey;
    }
    if (name != nil) {
        queryParams[@"name"] = name;
    }
    if (_description != nil) {
        queryParams[@"description"] = _description;
    }
    if (difficulty != nil) {
        queryParams[@"difficulty"] = difficulty;
    }
    if (appVersion != nil) {
        queryParams[@"appVersion"] = appVersion;
    }
    if (assetImageId != nil) {
        queryParams[@"assetImageId"] = assetImageId;
    }
    if (assetIconId != nil) {
        queryParams[@"assetIconId"] = assetIconId;
    }
    if (gameData != nil) {
        queryParams[@"gameData"] = gameData;
    }
    if (gameDataSuffix != nil) {
        queryParams[@"gameDataSuffix"] = gameDataSuffix;
    }
    if (visibility != nil) {
        queryParams[@"visibility"] = visibility;
    }
    if (friendGroup != nil) {
        queryParams[@"friendGroup"] = [friendGroup isEqual:@(YES)] ? @"true" : @"false";
    }
    if (connectionIds != nil) {
        queryParams[@"connectionIds"] = connectionIds;
    }
    if (connectionGroupIds != nil) {
        queryParams[@"connectionGroupIds"] = connectionGroupIds;
    }
    if (balance != nil) {
        queryParams[@"balance"] = balance;
    }
    if (active != nil) {
        queryParams[@"active"] = [active isEqual:@(YES)] ? @"true" : @"false";
    }
    if (allocateTickets != nil) {
        queryParams[@"allocateTickets"] = [allocateTickets isEqual:@(YES)] ? @"true" : @"false";
    }
    if (ticketCount != nil) {
        queryParams[@"ticketCount"] = ticketCount;
    }
    if (ticketType != nil) {
        queryParams[@"ticketType"] = ticketType;
    }
    if (points != nil) {
        queryParams[@"points"] = points;
    }
    if (tutorialTitle != nil) {
        queryParams[@"tutorialTitle"] = tutorialTitle;
    }
    if (tutorialMessage != nil) {
        queryParams[@"tutorialMessage"] = tutorialMessage;
    }
    if (tutorialAlignment != nil) {
        queryParams[@"tutorialAlignment"] = tutorialAlignment;
    }
    if (tutorialImageAssetId != nil) {
        queryParams[@"tutorialImageAssetId"] = tutorialImageAssetId;
    }
    if (offerId != nil) {
        queryParams[@"offerId"] = offerId;
    }
    if (metaData != nil) {
        queryParams[@"metaData"] = metaData;
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
                              responseType: @"OAIGameLevelResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIGameLevelResponse*)data, error);
                                }
                            }];
}

///
/// Delete Game Level
/// Delete a game level. The level and account must be valid and have the appropirate permissions to view the content.
///  @param accountId The logged in user. 
///
///  @param levelId The id of the level to return. 
///
///  @returns OAISirqulResponse*
///
-(NSURLSessionTask*) deleteGameLevelWithAccountId: (NSNumber*) accountId
    levelId: (NSNumber*) levelId
    completionHandler: (void (^)(OAISirqulResponse* output, NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kOAIGameLevelApiErrorDomain code:kOAIGameLevelApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'levelId' is set
    if (levelId == nil) {
        NSParameterAssert(levelId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"levelId"] };
            NSError* error = [NSError errorWithDomain:kOAIGameLevelApiErrorDomain code:kOAIGameLevelApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/level/delete"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        queryParams[@"accountId"] = accountId;
    }
    if (levelId != nil) {
        queryParams[@"levelId"] = levelId;
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
/// Get Game Level
/// Get a game level. The level and account must be valid and have the appropirate permissions to view the content.
///  @param accountId The logged in user. 
///
///  @param levelId The id of the level to return. 
///
///  @param includeGameData If true include the game level data, otherwise don't. default is false. (optional)
///
///  @returns OAIGameLevelResponse*
///
-(NSURLSessionTask*) getGameLevelWithAccountId: (NSNumber*) accountId
    levelId: (NSNumber*) levelId
    includeGameData: (NSNumber*) includeGameData
    completionHandler: (void (^)(OAIGameLevelResponse* output, NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kOAIGameLevelApiErrorDomain code:kOAIGameLevelApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'levelId' is set
    if (levelId == nil) {
        NSParameterAssert(levelId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"levelId"] };
            NSError* error = [NSError errorWithDomain:kOAIGameLevelApiErrorDomain code:kOAIGameLevelApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/level/get"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        queryParams[@"accountId"] = accountId;
    }
    if (levelId != nil) {
        queryParams[@"levelId"] = levelId;
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
                              responseType: @"OAIGameLevelResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIGameLevelResponse*)data, error);
                                }
                            }];
}

///
/// Search Game Levels
/// Get a list of levels for an application, just those the account has permissions to view.
///  @param accountId The logged in user. 
///
///  @param appKey the application key 
///
///  @param keyword Match the keyword to the owner name or level name. (optional)
///
///  @param sortField what field to sort on (optional)
///
///  @param descending whether to return levels in ascending or descending order (optional)
///
///  @param start Start the result set at some index. (optional)
///
///  @param limit Limit the result to some number. (optional)
///
///  @param appVersion The maximum version of the level to return. (optional)
///
///  @param includeGameData If true include the game level data, otherwise don't. default is false. (optional)
///
///  @param filters  (optional)
///
///  @returns OAIGameLevelListResponse*
///
-(NSURLSessionTask*) getGameLevelsByApplicationWithAccountId: (NSNumber*) accountId
    appKey: (NSString*) appKey
    keyword: (NSString*) keyword
    sortField: (NSString*) sortField
    descending: (NSNumber*) descending
    start: (NSNumber*) start
    limit: (NSNumber*) limit
    appVersion: (NSString*) appVersion
    includeGameData: (NSNumber*) includeGameData
    filters: (NSString*) filters
    completionHandler: (void (^)(OAIGameLevelListResponse* output, NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kOAIGameLevelApiErrorDomain code:kOAIGameLevelApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'appKey' is set
    if (appKey == nil) {
        NSParameterAssert(appKey);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"appKey"] };
            NSError* error = [NSError errorWithDomain:kOAIGameLevelApiErrorDomain code:kOAIGameLevelApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/level/search"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        queryParams[@"accountId"] = accountId;
    }
    if (appKey != nil) {
        queryParams[@"appKey"] = appKey;
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
    if (start != nil) {
        queryParams[@"start"] = start;
    }
    if (limit != nil) {
        queryParams[@"limit"] = limit;
    }
    if (appVersion != nil) {
        queryParams[@"appVersion"] = appVersion;
    }
    if (includeGameData != nil) {
        queryParams[@"includeGameData"] = [includeGameData isEqual:@(YES)] ? @"true" : @"false";
    }
    if (filters != nil) {
        queryParams[@"filters"] = filters;
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
                              responseType: @"OAIGameLevelListResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIGameLevelListResponse*)data, error);
                                }
                            }];
}

///
/// Search Game Level by Billable Entity
/// Searches on game levels that the logged in user has access to. A user would have access if the creator of the game level is managed under the same BillableEntity.
///  @param accountId The account id of the user 
///
///  @param appKey the application key (optional)
///
///  @param keyword The keyword used to search (optional)
///
///  @param sortField The column to sort the search on (optional)
///
///  @param descending The order to return the search results (optional)
///
///  @param activeOnly Return only active results (optional)
///
///  @param start The record to begin the return set on (optional)
///
///  @param limit The number of records to return (optional)
///
///  @returns OAIGameLevelResponse*
///
-(NSURLSessionTask*) getGameLevelsByBillableEntityWithAccountId: (NSNumber*) accountId
    appKey: (NSString*) appKey
    keyword: (NSString*) keyword
    sortField: (NSString*) sortField
    descending: (NSNumber*) descending
    activeOnly: (NSNumber*) activeOnly
    start: (NSNumber*) start
    limit: (NSNumber*) limit
    completionHandler: (void (^)(OAIGameLevelResponse* output, NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kOAIGameLevelApiErrorDomain code:kOAIGameLevelApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/level/searchByBillableEntity"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        queryParams[@"accountId"] = accountId;
    }
    if (appKey != nil) {
        queryParams[@"appKey"] = appKey;
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
    if (activeOnly != nil) {
        queryParams[@"activeOnly"] = [activeOnly isEqual:@(YES)] ? @"true" : @"false";
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
                              responseType: @"OAIGameLevelResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIGameLevelResponse*)data, error);
                                }
                            }];
}

///
/// Get Level Questions
/// Get questions within a level.
///  @param levelId the id of the level to get questions from 
///
///  @param accountId the id of the logged in user 
///
///  @returns OAIQuestionResponse*
///
-(NSURLSessionTask*) getQuestionsInLevelWithLevelId: (NSNumber*) levelId
    accountId: (NSNumber*) accountId
    completionHandler: (void (^)(OAIQuestionResponse* output, NSError* error)) handler {
    // verify the required parameter 'levelId' is set
    if (levelId == nil) {
        NSParameterAssert(levelId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"levelId"] };
            NSError* error = [NSError errorWithDomain:kOAIGameLevelApiErrorDomain code:kOAIGameLevelApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kOAIGameLevelApiErrorDomain code:kOAIGameLevelApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/level/questions/get"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (levelId != nil) {
        queryParams[@"levelId"] = levelId;
    }
    if (accountId != nil) {
        queryParams[@"accountId"] = accountId;
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
                              responseType: @"OAIQuestionResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIQuestionResponse*)data, error);
                                }
                            }];
}

///
/// Get Level Words
/// Get words within a level.
///  @param levelId the id of the level to get words for 
///
///  @param accountId the id of the logged in user 
///
///  @returns OAIWordzWordResponse*
///
-(NSURLSessionTask*) getWordsInLevelWithLevelId: (NSNumber*) levelId
    accountId: (NSNumber*) accountId
    completionHandler: (void (^)(OAIWordzWordResponse* output, NSError* error)) handler {
    // verify the required parameter 'levelId' is set
    if (levelId == nil) {
        NSParameterAssert(levelId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"levelId"] };
            NSError* error = [NSError errorWithDomain:kOAIGameLevelApiErrorDomain code:kOAIGameLevelApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kOAIGameLevelApiErrorDomain code:kOAIGameLevelApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/level/words/get"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (levelId != nil) {
        queryParams[@"levelId"] = levelId;
    }
    if (accountId != nil) {
        queryParams[@"accountId"] = accountId;
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
                              responseType: @"OAIWordzWordResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIWordzWordResponse*)data, error);
                                }
                            }];
}

///
/// Update Game Level
/// Update a game level. Currently does NOT support game objects.
///  @param accountId The logged in user. 
///
///  @param levelId If update then include the level Id. 
///
///  @param appKey The game application key to save the level for. (optional)
///
///  @param name The name of the level. (optional)
///
///  @param _description The description of the level. (optional)
///
///  @param difficulty The difficulty, possible values are: VERY_EASY, EASY, MEDIUM, HARD, VERY_HARD. (optional)
///
///  @param appVersion The version number of the applicatuion required to correctly load/play the level. (optional)
///
///  @param assetImageId The asset Id of the level image. (optional)
///
///  @param assetIconId The asset Id of the level icon. (optional)
///
///  @param gameData The game level data: xml, json, or other texted based format. (optional)
///
///  @param gameDataSuffix The game level data format type. (optional)
///
///  @param visibility Is the level visible to others, possible values are: PUBLIC, PRIVATE. (optional)
///
///  @param friendGroup Make the level be readable by all friends. (optional)
///
///  @param connectionIds Make the level be readable by connections in this list. (optional)
///
///  @param connectionGroupIds Make the level be readable by connection groups in this list. (optional)
///
///  @param balance Set the amount of money available to spend, once 0 deactivate level. Set to a negative value for unlimited. (optional)
///
///  @param active If true set the game level as active. (optional)
///
///  @param allocateTickets If true then scoring will give tickets. (optional)
///
///  @param ticketCount The number of tickets to reward (optional)
///
///  @param ticketType The type of ticket to reward, null means default type (optional)
///
///  @param points The number of points to award for completing a level (optional)
///
///  @param tutorialTitle Title of the tutorial. (optional)
///
///  @param tutorialMessage Message of the tutorial. (optional)
///
///  @param tutorialAlignment Alignment of the tutorial image, possible values are: NONE, IMAGE_ABOVE, IMAGE_BELOW, IMAGE_LEFT, IMAGE_RIGHT, IMAGE_ONLY, TEXT_ONLY (optional)
///
///  @param tutorialImageAssetId Asset id of the tutorial image. (optional)
///
///  @param offerId  (optional)
///
///  @param metaData external custom client defined data (optional)
///
///  @returns OAIGameLevelResponse*
///
-(NSURLSessionTask*) updateGameLevelWithAccountId: (NSNumber*) accountId
    levelId: (NSNumber*) levelId
    appKey: (NSString*) appKey
    name: (NSString*) name
    _description: (NSString*) _description
    difficulty: (NSString*) difficulty
    appVersion: (NSString*) appVersion
    assetImageId: (NSNumber*) assetImageId
    assetIconId: (NSNumber*) assetIconId
    gameData: (NSString*) gameData
    gameDataSuffix: (NSString*) gameDataSuffix
    visibility: (NSString*) visibility
    friendGroup: (NSNumber*) friendGroup
    connectionIds: (NSString*) connectionIds
    connectionGroupIds: (NSString*) connectionGroupIds
    balance: (NSNumber*) balance
    active: (NSNumber*) active
    allocateTickets: (NSNumber*) allocateTickets
    ticketCount: (NSNumber*) ticketCount
    ticketType: (NSString*) ticketType
    points: (NSNumber*) points
    tutorialTitle: (NSString*) tutorialTitle
    tutorialMessage: (NSString*) tutorialMessage
    tutorialAlignment: (NSString*) tutorialAlignment
    tutorialImageAssetId: (NSNumber*) tutorialImageAssetId
    offerId: (NSNumber*) offerId
    metaData: (NSString*) metaData
    completionHandler: (void (^)(OAIGameLevelResponse* output, NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kOAIGameLevelApiErrorDomain code:kOAIGameLevelApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'levelId' is set
    if (levelId == nil) {
        NSParameterAssert(levelId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"levelId"] };
            NSError* error = [NSError errorWithDomain:kOAIGameLevelApiErrorDomain code:kOAIGameLevelApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/level/update"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        queryParams[@"accountId"] = accountId;
    }
    if (appKey != nil) {
        queryParams[@"appKey"] = appKey;
    }
    if (levelId != nil) {
        queryParams[@"levelId"] = levelId;
    }
    if (name != nil) {
        queryParams[@"name"] = name;
    }
    if (_description != nil) {
        queryParams[@"description"] = _description;
    }
    if (difficulty != nil) {
        queryParams[@"difficulty"] = difficulty;
    }
    if (appVersion != nil) {
        queryParams[@"appVersion"] = appVersion;
    }
    if (assetImageId != nil) {
        queryParams[@"assetImageId"] = assetImageId;
    }
    if (assetIconId != nil) {
        queryParams[@"assetIconId"] = assetIconId;
    }
    if (gameData != nil) {
        queryParams[@"gameData"] = gameData;
    }
    if (gameDataSuffix != nil) {
        queryParams[@"gameDataSuffix"] = gameDataSuffix;
    }
    if (visibility != nil) {
        queryParams[@"visibility"] = visibility;
    }
    if (friendGroup != nil) {
        queryParams[@"friendGroup"] = [friendGroup isEqual:@(YES)] ? @"true" : @"false";
    }
    if (connectionIds != nil) {
        queryParams[@"connectionIds"] = connectionIds;
    }
    if (connectionGroupIds != nil) {
        queryParams[@"connectionGroupIds"] = connectionGroupIds;
    }
    if (balance != nil) {
        queryParams[@"balance"] = balance;
    }
    if (active != nil) {
        queryParams[@"active"] = [active isEqual:@(YES)] ? @"true" : @"false";
    }
    if (allocateTickets != nil) {
        queryParams[@"allocateTickets"] = [allocateTickets isEqual:@(YES)] ? @"true" : @"false";
    }
    if (ticketCount != nil) {
        queryParams[@"ticketCount"] = ticketCount;
    }
    if (ticketType != nil) {
        queryParams[@"ticketType"] = ticketType;
    }
    if (points != nil) {
        queryParams[@"points"] = points;
    }
    if (tutorialTitle != nil) {
        queryParams[@"tutorialTitle"] = tutorialTitle;
    }
    if (tutorialMessage != nil) {
        queryParams[@"tutorialMessage"] = tutorialMessage;
    }
    if (tutorialAlignment != nil) {
        queryParams[@"tutorialAlignment"] = tutorialAlignment;
    }
    if (tutorialImageAssetId != nil) {
        queryParams[@"tutorialImageAssetId"] = tutorialImageAssetId;
    }
    if (offerId != nil) {
        queryParams[@"offerId"] = offerId;
    }
    if (metaData != nil) {
        queryParams[@"metaData"] = metaData;
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
                              responseType: @"OAIGameLevelResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIGameLevelResponse*)data, error);
                                }
                            }];
}

///
/// Update Level Questions
/// Updates a level with question game objects.
///  @param levelId the id of the level to update questions on 
///
///  @param accountId the id of the logged in user 
///
///  @param questionIds the IDs of the questions to update 
///
///  @returns OAISirqulResponse*
///
-(NSURLSessionTask*) updateQuestionsInLevelWithLevelId: (NSNumber*) levelId
    accountId: (NSNumber*) accountId
    questionIds: (NSString*) questionIds
    completionHandler: (void (^)(OAISirqulResponse* output, NSError* error)) handler {
    // verify the required parameter 'levelId' is set
    if (levelId == nil) {
        NSParameterAssert(levelId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"levelId"] };
            NSError* error = [NSError errorWithDomain:kOAIGameLevelApiErrorDomain code:kOAIGameLevelApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kOAIGameLevelApiErrorDomain code:kOAIGameLevelApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'questionIds' is set
    if (questionIds == nil) {
        NSParameterAssert(questionIds);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"questionIds"] };
            NSError* error = [NSError errorWithDomain:kOAIGameLevelApiErrorDomain code:kOAIGameLevelApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/level/questions/update"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (levelId != nil) {
        queryParams[@"levelId"] = levelId;
    }
    if (accountId != nil) {
        queryParams[@"accountId"] = accountId;
    }
    if (questionIds != nil) {
        queryParams[@"questionIds"] = questionIds;
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
/// Update Level Words
/// Updates a level with word game objects.
///  @param levelId the id of the level to update words for 
///
///  @param accountId the id of the logged in user 
///
///  @param wordIds the ids of the words to update for the level 
///
///  @returns OAISirqulResponse*
///
-(NSURLSessionTask*) updateWordsInLevelWithLevelId: (NSNumber*) levelId
    accountId: (NSNumber*) accountId
    wordIds: (NSString*) wordIds
    completionHandler: (void (^)(OAISirqulResponse* output, NSError* error)) handler {
    // verify the required parameter 'levelId' is set
    if (levelId == nil) {
        NSParameterAssert(levelId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"levelId"] };
            NSError* error = [NSError errorWithDomain:kOAIGameLevelApiErrorDomain code:kOAIGameLevelApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kOAIGameLevelApiErrorDomain code:kOAIGameLevelApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'wordIds' is set
    if (wordIds == nil) {
        NSParameterAssert(wordIds);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"wordIds"] };
            NSError* error = [NSError errorWithDomain:kOAIGameLevelApiErrorDomain code:kOAIGameLevelApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/level/words/update"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (levelId != nil) {
        queryParams[@"levelId"] = levelId;
    }
    if (accountId != nil) {
        queryParams[@"accountId"] = accountId;
    }
    if (wordIds != nil) {
        queryParams[@"wordIds"] = wordIds;
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
