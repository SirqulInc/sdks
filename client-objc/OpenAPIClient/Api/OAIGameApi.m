#import "OAIGameApi.h"
#import "OAIQueryParamCollection.h"
#import "OAIApiClient.h"
#import "OAIGameResponse.h"
#import "OAISirqulResponse.h"


@interface OAIGameApi ()

@property (nonatomic, strong, readwrite) NSMutableDictionary *mutableDefaultHeaders;

@end

@implementation OAIGameApi

NSString* kOAIGameApiErrorDomain = @"OAIGameApiErrorDomain";
NSInteger kOAIGameApiMissingParamErrorCode = 234513;

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
/// Create a Game
/// Create a Game.
///  @param accountId The logged in user. (optional)
///
///  @param appKey The game application key to save the level for. (optional)
///
///  @param title Title of the game. (optional)
///
///  @param _description Description of the game. (optional)
///
///  @param metaData metaData of the Game. (optional)
///
///  @param packIds comma separated String of pack Ids that will associate with the game. (optional)
///
///  @param includeGameData Show more details in response. (optional)
///
///  @returns OAIGameResponse*
///
-(NSURLSessionTask*) createGameWithAccountId: (NSNumber*) accountId
    appKey: (NSString*) appKey
    title: (NSString*) title
    _description: (NSString*) _description
    metaData: (NSString*) metaData
    packIds: (NSString*) packIds
    includeGameData: (NSNumber*) includeGameData
    completionHandler: (void (^)(OAIGameResponse* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/game/create"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        queryParams[@"accountId"] = accountId;
    }
    if (appKey != nil) {
        queryParams[@"appKey"] = appKey;
    }
    if (title != nil) {
        queryParams[@"title"] = title;
    }
    if (_description != nil) {
        queryParams[@"description"] = _description;
    }
    if (metaData != nil) {
        queryParams[@"metaData"] = metaData;
    }
    if (packIds != nil) {
        queryParams[@"packIds"] = packIds;
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
                              responseType: @"OAIGameResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIGameResponse*)data, error);
                                }
                            }];
}

///
/// Delete a Game
/// Delete a game.
///  @param accountId The logged in user. 
///
///  @param gameId the updating game's id. 
///
///  @returns OAISirqulResponse*
///
-(NSURLSessionTask*) deleteGameWithAccountId: (NSNumber*) accountId
    gameId: (NSNumber*) gameId
    completionHandler: (void (^)(OAISirqulResponse* output, NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kOAIGameApiErrorDomain code:kOAIGameApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'gameId' is set
    if (gameId == nil) {
        NSParameterAssert(gameId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"gameId"] };
            NSError* error = [NSError errorWithDomain:kOAIGameApiErrorDomain code:kOAIGameApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/game/delete"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        queryParams[@"accountId"] = accountId;
    }
    if (gameId != nil) {
        queryParams[@"gameId"] = gameId;
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
/// Get a Game by id
/// Get a Game by id.
///  @param accountId The logged in user. 
///
///  @param gameId the updating game's id. 
///
///  @param includeGameData If true include the game level data, otherwise don't. default is false. (optional)
///
///  @returns OAIGameResponse*
///
-(NSURLSessionTask*) getGameWithAccountId: (NSNumber*) accountId
    gameId: (NSNumber*) gameId
    includeGameData: (NSNumber*) includeGameData
    completionHandler: (void (^)(OAIGameResponse* output, NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kOAIGameApiErrorDomain code:kOAIGameApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'gameId' is set
    if (gameId == nil) {
        NSParameterAssert(gameId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"gameId"] };
            NSError* error = [NSError errorWithDomain:kOAIGameApiErrorDomain code:kOAIGameApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/game/get"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        queryParams[@"accountId"] = accountId;
    }
    if (gameId != nil) {
        queryParams[@"gameId"] = gameId;
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
                              responseType: @"OAIGameResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIGameResponse*)data, error);
                                }
                            }];
}

///
/// Search a Game
/// Get a list of games for an application, just those the account has permissions to view.
///  @param accountId The logged in user. 
///
///  @param appKey the application key 
///
///  @param start Start the result set at some index. 
///
///  @param limit Limit the result to some number. 
///
///  @param keyword Match the keyword to the owner name or level name. (optional)
///
///  @param appVersion The maximum version of the level to return. (optional)
///
///  @param includeGameData more details in response (optional)
///
///  @param includeInactive more details in response (optional)
///
///  @returns OAIGameResponse*
///
-(NSURLSessionTask*) searchGamesWithAccountId: (NSNumber*) accountId
    appKey: (NSString*) appKey
    start: (NSNumber*) start
    limit: (NSNumber*) limit
    keyword: (NSString*) keyword
    appVersion: (NSString*) appVersion
    includeGameData: (NSNumber*) includeGameData
    includeInactive: (NSNumber*) includeInactive
    completionHandler: (void (^)(OAIGameResponse* output, NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kOAIGameApiErrorDomain code:kOAIGameApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'appKey' is set
    if (appKey == nil) {
        NSParameterAssert(appKey);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"appKey"] };
            NSError* error = [NSError errorWithDomain:kOAIGameApiErrorDomain code:kOAIGameApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'start' is set
    if (start == nil) {
        NSParameterAssert(start);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"start"] };
            NSError* error = [NSError errorWithDomain:kOAIGameApiErrorDomain code:kOAIGameApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'limit' is set
    if (limit == nil) {
        NSParameterAssert(limit);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"limit"] };
            NSError* error = [NSError errorWithDomain:kOAIGameApiErrorDomain code:kOAIGameApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/game/search"];

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
    if (includeInactive != nil) {
        queryParams[@"includeInactive"] = [includeInactive isEqual:@(YES)] ? @"true" : @"false";
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
                              responseType: @"OAIGameResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIGameResponse*)data, error);
                                }
                            }];
}

///
/// Update a Game
/// Update a Game
///  @param accountId The logged in user. (optional)
///
///  @param gameId the updating game's id (optional)
///
///  @param appKey The game application key to save the level for. (optional)
///
///  @param title Title of the Game. (optional)
///
///  @param _description Description of the Game. (optional)
///
///  @param metaData metaData of the Game. (optional)
///
///  @param packIds comma separated String of pack Ids that will associate with the game. (optional)
///
///  @param includeGameData show more details in response. (optional)
///
///  @returns OAIGameResponse*
///
-(NSURLSessionTask*) updateGameWithAccountId: (NSNumber*) accountId
    gameId: (NSNumber*) gameId
    appKey: (NSString*) appKey
    title: (NSString*) title
    _description: (NSString*) _description
    metaData: (NSString*) metaData
    packIds: (NSString*) packIds
    includeGameData: (NSNumber*) includeGameData
    completionHandler: (void (^)(OAIGameResponse* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/game/update"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        queryParams[@"accountId"] = accountId;
    }
    if (gameId != nil) {
        queryParams[@"gameId"] = gameId;
    }
    if (appKey != nil) {
        queryParams[@"appKey"] = appKey;
    }
    if (title != nil) {
        queryParams[@"title"] = title;
    }
    if (_description != nil) {
        queryParams[@"description"] = _description;
    }
    if (metaData != nil) {
        queryParams[@"metaData"] = metaData;
    }
    if (packIds != nil) {
        queryParams[@"packIds"] = packIds;
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
                              responseType: @"OAIGameResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIGameResponse*)data, error);
                                }
                            }];
}



@end
