#import "OAIScoreApi.h"
#import "OAIQueryParamCollection.h"
#import "OAIApiClient.h"
#import "OAIScoreResponse.h"


@interface OAIScoreApi ()

@property (nonatomic, strong, readwrite) NSMutableDictionary *mutableDefaultHeaders;

@end

@implementation OAIScoreApi

NSString* kOAIScoreApiErrorDomain = @"OAIScoreApiErrorDomain";
NSInteger kOAIScoreApiMissingParamErrorCode = 234513;

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
/// Create Score
/// Create a score.  The response object will contain a series of   coded messages detailing what items were completed, the score registered,   and any tickets allocated.  Scoring a  level could complete the pack it   is in, completing that pack could complete the game, which  in turn could   complete the mission.  This completion chain is indicated to the client   via  a list of {@link MessageResponse}.
///  @param version  
///
///  @param accountId The logged in user. 
///
///  @param appKey The game application key to save the score for. 
///
///  @param points The score 
///
///  @param missionId The missionId to score for, ignore if not playing mission. (optional)
///
///  @param gameId The gameId to score for, ignore if not playing mission. (optional)
///
///  @param packId The packId to score for, send -2 if playing community levels. (optional)
///
///  @param gameLevelId The gameLevelId to score for. (optional)
///
///  @param gameObjectId The gameObjectId to score for, ignore if level based scoring. (optional)
///
///  @param timeTaken The time taken to complete task (optional)
///
///  @param highest  (optional)
///
///  @returns OAIScoreResponse*
///
-(NSURLSessionTask*) createScoreWithVersion: (NSNumber*) version
    accountId: (NSNumber*) accountId
    appKey: (NSString*) appKey
    points: (NSNumber*) points
    missionId: (NSNumber*) missionId
    gameId: (NSNumber*) gameId
    packId: (NSNumber*) packId
    gameLevelId: (NSNumber*) gameLevelId
    gameObjectId: (NSNumber*) gameObjectId
    timeTaken: (NSNumber*) timeTaken
    highest: (NSNumber*) highest
    completionHandler: (void (^)(OAIScoreResponse* output, NSError* error)) handler {
    // verify the required parameter 'version' is set
    if (version == nil) {
        NSParameterAssert(version);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"version"] };
            NSError* error = [NSError errorWithDomain:kOAIScoreApiErrorDomain code:kOAIScoreApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kOAIScoreApiErrorDomain code:kOAIScoreApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'appKey' is set
    if (appKey == nil) {
        NSParameterAssert(appKey);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"appKey"] };
            NSError* error = [NSError errorWithDomain:kOAIScoreApiErrorDomain code:kOAIScoreApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'points' is set
    if (points == nil) {
        NSParameterAssert(points);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"points"] };
            NSError* error = [NSError errorWithDomain:kOAIScoreApiErrorDomain code:kOAIScoreApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/{version}/score/create"];

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
    if (missionId != nil) {
        queryParams[@"missionId"] = missionId;
    }
    if (gameId != nil) {
        queryParams[@"gameId"] = gameId;
    }
    if (packId != nil) {
        queryParams[@"packId"] = packId;
    }
    if (gameLevelId != nil) {
        queryParams[@"gameLevelId"] = gameLevelId;
    }
    if (gameObjectId != nil) {
        queryParams[@"gameObjectId"] = gameObjectId;
    }
    if (points != nil) {
        queryParams[@"points"] = points;
    }
    if (timeTaken != nil) {
        queryParams[@"timeTaken"] = timeTaken;
    }
    if (highest != nil) {
        queryParams[@"highest"] = [highest isEqual:@(YES)] ? @"true" : @"false";
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
                              responseType: @"OAIScoreResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIScoreResponse*)data, error);
                                }
                            }];
}

///
/// Get Score
/// Get the high score for an item.  Pass in the full path IDs for the score.
///  @param version  
///
///  @param accountId The logged in user. 
///
///  @param appKey The game application key to get the level for. 
///
///  @param missionId The missionId to score for, null if not playing mission. (optional)
///
///  @param gameId The gameId to score for, null if not playing mission. (optional)
///
///  @param packId The packId to score for, null if playing community levels. (optional)
///
///  @param gameLevelId The gameLevelId to score for. (optional)
///
///  @param gameObjectId The gameObjectId to score for, null if level based scoring. (optional)
///
///  @param scoreObjectType The object type to filter scores by (TicketObjectType) (optional)
///
///  @param scoreStatus The status of the score to filter (ScoreStatus) (optional)
///
///  @returns OAIScoreResponse*
///
-(NSURLSessionTask*) getScoreWithVersion: (NSNumber*) version
    accountId: (NSNumber*) accountId
    appKey: (NSString*) appKey
    missionId: (NSNumber*) missionId
    gameId: (NSNumber*) gameId
    packId: (NSNumber*) packId
    gameLevelId: (NSNumber*) gameLevelId
    gameObjectId: (NSNumber*) gameObjectId
    scoreObjectType: (NSString*) scoreObjectType
    scoreStatus: (NSString*) scoreStatus
    completionHandler: (void (^)(OAIScoreResponse* output, NSError* error)) handler {
    // verify the required parameter 'version' is set
    if (version == nil) {
        NSParameterAssert(version);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"version"] };
            NSError* error = [NSError errorWithDomain:kOAIScoreApiErrorDomain code:kOAIScoreApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kOAIScoreApiErrorDomain code:kOAIScoreApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'appKey' is set
    if (appKey == nil) {
        NSParameterAssert(appKey);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"appKey"] };
            NSError* error = [NSError errorWithDomain:kOAIScoreApiErrorDomain code:kOAIScoreApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/{version}/score/get"];

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
    if (missionId != nil) {
        queryParams[@"missionId"] = missionId;
    }
    if (gameId != nil) {
        queryParams[@"gameId"] = gameId;
    }
    if (packId != nil) {
        queryParams[@"packId"] = packId;
    }
    if (gameLevelId != nil) {
        queryParams[@"gameLevelId"] = gameLevelId;
    }
    if (gameObjectId != nil) {
        queryParams[@"gameObjectId"] = gameObjectId;
    }
    if (scoreObjectType != nil) {
        queryParams[@"scoreObjectType"] = scoreObjectType;
    }
    if (scoreStatus != nil) {
        queryParams[@"scoreStatus"] = scoreStatus;
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
                              responseType: @"OAIScoreResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIScoreResponse*)data, error);
                                }
                            }];
}

///
/// Search Score
/// Search the scores for an item.  Pass in the full path IDs for the scores.
///  @param version  
///
///  @param accountId The logged in user. 
///
///  @param appKey The game application key to get the level for. 
///
///  @param missionId The missionId to score for, null if not playing mission. (optional)
///
///  @param gameId The gameId to score for, null if not playing mission. (optional)
///
///  @param packId The packId to score for, null if playing community levels. (optional)
///
///  @param gameLevelId The gameLevelId to score for. (optional)
///
///  @param gameObjectId The gameObjectId to score for, null if level based scoring. (optional)
///
///  @returns NSArray<OAIScoreResponse>*
///
-(NSURLSessionTask*) searchScoresWithVersion: (NSNumber*) version
    accountId: (NSNumber*) accountId
    appKey: (NSString*) appKey
    missionId: (NSNumber*) missionId
    gameId: (NSNumber*) gameId
    packId: (NSNumber*) packId
    gameLevelId: (NSNumber*) gameLevelId
    gameObjectId: (NSNumber*) gameObjectId
    completionHandler: (void (^)(NSArray<OAIScoreResponse>* output, NSError* error)) handler {
    // verify the required parameter 'version' is set
    if (version == nil) {
        NSParameterAssert(version);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"version"] };
            NSError* error = [NSError errorWithDomain:kOAIScoreApiErrorDomain code:kOAIScoreApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kOAIScoreApiErrorDomain code:kOAIScoreApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'appKey' is set
    if (appKey == nil) {
        NSParameterAssert(appKey);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"appKey"] };
            NSError* error = [NSError errorWithDomain:kOAIScoreApiErrorDomain code:kOAIScoreApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/{version}/score/search"];

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
    if (missionId != nil) {
        queryParams[@"missionId"] = missionId;
    }
    if (gameId != nil) {
        queryParams[@"gameId"] = gameId;
    }
    if (packId != nil) {
        queryParams[@"packId"] = packId;
    }
    if (gameLevelId != nil) {
        queryParams[@"gameLevelId"] = gameLevelId;
    }
    if (gameObjectId != nil) {
        queryParams[@"gameObjectId"] = gameObjectId;
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
                              responseType: @"NSArray<OAIScoreResponse>*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSArray<OAIScoreResponse>*)data, error);
                                }
                            }];
}



@end
