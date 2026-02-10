#import "OAIRankingApi.h"
#import "OAIQueryParamCollection.h"
#import "OAIApiClient.h"
#import "OAIRankFullResponse.h"
#import "OAISirqulResponse.h"


@interface OAIRankingApi ()

@property (nonatomic, strong, readwrite) NSMutableDictionary *mutableDefaultHeaders;

@end

@implementation OAIRankingApi

NSString* kOAIRankingApiErrorDomain = @"OAIRankingApiErrorDomain";
NSInteger kOAIRankingApiMissingParamErrorCode = 234513;

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
/// Search Historical Rankings
/// Get historical leaderboard rankings by time-frame.
///  @param version  
///
///  @param appKey the application key for filtering results by application 
///
///  @param rankType the rank type to return 
///
///  @param startDate timestamp in milliseconds to filter results with 
///
///  @param endDate timestamp in milliseconds to filter results with 
///
///  @param deviceId a unique id given by the device (deviceId or accountId required) (optional)
///
///  @param accountId the account id of the user (optional)
///
///  @param sortField determines how to order and rank the results. Possible values include: TOTAL, MONTHLY, WEEKLY, DAILY, TOP, LOWEST (optional, default to @"TOTAL")
///
///  @param descending determines whether to return results in ascending or descending order (optional, default to @(YES))
///
///  @param start the start index for pagination (optional, default to @0)
///
///  @param limit the limit for pagination (optional, default to @100)
///
///  @returns OAIRankFullResponse*
///
-(NSURLSessionTask*) getHistoricalRankingsWithVersion: (NSNumber*) version
    appKey: (NSString*) appKey
    rankType: (NSString*) rankType
    startDate: (NSNumber*) startDate
    endDate: (NSNumber*) endDate
    deviceId: (NSString*) deviceId
    accountId: (NSNumber*) accountId
    sortField: (NSString*) sortField
    descending: (NSNumber*) descending
    start: (NSNumber*) start
    limit: (NSNumber*) limit
    completionHandler: (void (^)(OAIRankFullResponse* output, NSError* error)) handler {
    // verify the required parameter 'version' is set
    if (version == nil) {
        NSParameterAssert(version);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"version"] };
            NSError* error = [NSError errorWithDomain:kOAIRankingApiErrorDomain code:kOAIRankingApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'appKey' is set
    if (appKey == nil) {
        NSParameterAssert(appKey);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"appKey"] };
            NSError* error = [NSError errorWithDomain:kOAIRankingApiErrorDomain code:kOAIRankingApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'rankType' is set
    if (rankType == nil) {
        NSParameterAssert(rankType);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"rankType"] };
            NSError* error = [NSError errorWithDomain:kOAIRankingApiErrorDomain code:kOAIRankingApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'startDate' is set
    if (startDate == nil) {
        NSParameterAssert(startDate);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"startDate"] };
            NSError* error = [NSError errorWithDomain:kOAIRankingApiErrorDomain code:kOAIRankingApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'endDate' is set
    if (endDate == nil) {
        NSParameterAssert(endDate);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"endDate"] };
            NSError* error = [NSError errorWithDomain:kOAIRankingApiErrorDomain code:kOAIRankingApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/{version}/ranking/historical/search"];

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
    if (rankType != nil) {
        queryParams[@"rankType"] = rankType;
    }
    if (startDate != nil) {
        queryParams[@"startDate"] = startDate;
    }
    if (endDate != nil) {
        queryParams[@"endDate"] = endDate;
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
                              responseType: @"OAIRankFullResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIRankFullResponse*)data, error);
                                }
                            }];
}

///
/// Search Rankings
/// Get leader board rankings. This is an all in one endpoint that can return multiple ranking types and also the current user rank.
///  @param version  
///
///  @param deviceId a unique id given by the device (deviceId or accountId required) (optional)
///
///  @param accountId the account id of the user (deviceId or accountId required) (optional)
///
///  @param gameType This parameter is deprecated. (optional)
///
///  @param appKey the application key for filtering results by application (required for non-EXECUTIVE users) (optional)
///
///  @param q This parameter is deprecated. (optional)
///
///  @param keyword keyword to search for (optional)
///
///  @param rankType a comma separated list of rank types to return. Possible default rank types: POINTS, DOWNLOADS, INVITATIONS (optional, default to @"POINTS,DOWNLOADS,INVITATIONS")
///
///  @param leaderboardMode the type of search to perform. Possible values include: GLOBAL - searches scores globally (all users in the system are included in the ranking) LOCAL - filters results by select users and on users that have logged into the same device CUSTOM - allows for custom filtering using the params: withinAccountIds, albumId, audienceId (optional, default to @"GLOBAL")
///
///  @param withinAccountIds comma separated list of account ids. If performing a LOCAL or CUSTOM search, the query will include these accounts. (optional)
///
///  @param returnUserRank determines whether to return the user's current rank in the response. This can be turned off for sequential paginated requests. (optional, default to @(YES))
///
///  @param albumId album id to use when performing CUSTOM filters (optional)
///
///  @param audienceId audience id to use when performing CUSTOM filters (optional)
///
///  @param sortField determines how to order and rank the results. Possible values include: TOTAL - order results by total score MONTHLY - order results by monthly score WEEKLY - order results by weekly score DAILY - order results by daily score TOP - order results by top score LOWEST - order results by lowest score (optional, default to @"TOTAL")
///
///  @param descending determines whether to return results in ascending or descending order (optional, default to @(YES))
///
///  @param i This parameter is deprecated. (optional)
///
///  @param start the start index for pagination (optional, default to @0)
///
///  @param l This parameter is deprecated. (optional)
///
///  @param limit the limit for pagination (optional, default to @100)
///
///  @returns OAIRankFullResponse*
///
-(NSURLSessionTask*) getRankingsWithVersion: (NSNumber*) version
    deviceId: (NSString*) deviceId
    accountId: (NSNumber*) accountId
    gameType: (NSString*) gameType
    appKey: (NSString*) appKey
    q: (NSString*) q
    keyword: (NSString*) keyword
    rankType: (NSString*) rankType
    leaderboardMode: (NSString*) leaderboardMode
    withinAccountIds: (NSString*) withinAccountIds
    returnUserRank: (NSNumber*) returnUserRank
    albumId: (NSNumber*) albumId
    audienceId: (NSNumber*) audienceId
    sortField: (NSString*) sortField
    descending: (NSNumber*) descending
    i: (NSNumber*) i
    start: (NSNumber*) start
    l: (NSNumber*) l
    limit: (NSNumber*) limit
    completionHandler: (void (^)(OAIRankFullResponse* output, NSError* error)) handler {
    // verify the required parameter 'version' is set
    if (version == nil) {
        NSParameterAssert(version);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"version"] };
            NSError* error = [NSError errorWithDomain:kOAIRankingApiErrorDomain code:kOAIRankingApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/{version}/ranking/search"];

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
    if (appKey != nil) {
        queryParams[@"appKey"] = appKey;
    }
    if (q != nil) {
        queryParams[@"q"] = q;
    }
    if (keyword != nil) {
        queryParams[@"keyword"] = keyword;
    }
    if (rankType != nil) {
        queryParams[@"rankType"] = rankType;
    }
    if (leaderboardMode != nil) {
        queryParams[@"leaderboardMode"] = leaderboardMode;
    }
    if (withinAccountIds != nil) {
        queryParams[@"withinAccountIds"] = withinAccountIds;
    }
    if (returnUserRank != nil) {
        queryParams[@"returnUserRank"] = [returnUserRank isEqual:@(YES)] ? @"true" : @"false";
    }
    if (albumId != nil) {
        queryParams[@"albumId"] = albumId;
    }
    if (audienceId != nil) {
        queryParams[@"audienceId"] = audienceId;
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
                              responseType: @"OAIRankFullResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIRankFullResponse*)data, error);
                                }
                            }];
}

///
/// Get Personal Rankings
/// Returns the user's ranks for one or more rank types and modes.
///  @param version  
///
///  @param deviceId a unique id given by the device (deviceId or accountId required) (optional)
///
///  @param accountId the account id of the user (optional)
///
///  @param appKey the application key for filtering results by application (required) (optional)
///
///  @param rankType pass in all rankTypes and children rankTypes (optional)
///
///  @param returnUserRank determines whether to return the user's current rank in the response, for each rankType (optional, default to @(NO))
///
///  @param leaderboardMode the type of search to perform. Possible values include: GLOBAL, LOCAL, SEARCH, CUSTOM (optional, default to @"GLOBAL")
///
///  @param sortField determines how to order and rank the results. Possible values include: TOTAL, MONTHLY, WEEKLY, DAILY, TOP, LOWEST (optional, default to @"TOTAL")
///
///  @param keyword keyword to search for (on rankType) (optional)
///
///  @param descending determines whether to return results in descending order (optional, default to @(YES))
///
///  @param start the start index for pagination (optional, default to @0)
///
///  @param limit the limit for pagination (optional, default to @100)
///
///  @returns NSObject*
///
-(NSURLSessionTask*) getUserRankWithVersion: (NSNumber*) version
    deviceId: (NSString*) deviceId
    accountId: (NSNumber*) accountId
    appKey: (NSString*) appKey
    rankType: (NSString*) rankType
    returnUserRank: (NSNumber*) returnUserRank
    leaderboardMode: (NSString*) leaderboardMode
    sortField: (NSString*) sortField
    keyword: (NSString*) keyword
    descending: (NSNumber*) descending
    start: (NSNumber*) start
    limit: (NSNumber*) limit
    completionHandler: (void (^)(NSObject* output, NSError* error)) handler {
    // verify the required parameter 'version' is set
    if (version == nil) {
        NSParameterAssert(version);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"version"] };
            NSError* error = [NSError errorWithDomain:kOAIRankingApiErrorDomain code:kOAIRankingApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/{version}/ranking/personal/ranks"];

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
    if (rankType != nil) {
        queryParams[@"rankType"] = rankType;
    }
    if (returnUserRank != nil) {
        queryParams[@"returnUserRank"] = [returnUserRank isEqual:@(YES)] ? @"true" : @"false";
    }
    if (leaderboardMode != nil) {
        queryParams[@"leaderboardMode"] = leaderboardMode;
    }
    if (sortField != nil) {
        queryParams[@"sortField"] = sortField;
    }
    if (keyword != nil) {
        queryParams[@"keyword"] = keyword;
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
                              responseType: @"NSObject*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSObject*)data, error);
                                }
                            }];
}

///
/// Override User Rank
/// Allows an admin of an application to override a user's scores for a leaderboard.
///  @param version  
///
///  @param accountId the logged in user's account id (must have permissions to manage data for the application) 
///
///  @param ownerAccountId the end user's account id to override 
///
///  @param appKey the application key the leaderboard is for 
///
///  @param rankType the rankType of the leaderboard 
///
///  @param totalScore the total score to update (optional)
///
///  @param totalCount the total count to update (optional)
///
///  @param totalTime the total time to update (optional)
///
///  @param dailyScore the daily score to update (optional)
///
///  @param dailyCount the daily count to update (optional)
///
///  @param dailyTime the daily time to update (optional)
///
///  @param weeklyScore the weekly score to update (optional)
///
///  @param weeklyCount the weekly count to update (optional)
///
///  @param weeklyTime the weekly time to update (optional)
///
///  @param monthlyScore the monthly score to update (optional)
///
///  @param monthlyCount the monthly count to update (optional)
///
///  @param monthlyTime the monthly time to update (optional)
///
///  @param topScore the top score to update (optional)
///
///  @param lowestScore the lowest score to update (optional)
///
///  @param streakCount the streak count to update (optional)
///
///  @param streakBestCount the best streak count to update (optional)
///
///  @param startDate the start date to update (optional)
///
///  @param endDate the end date to update (optional)
///
///  @returns OAISirqulResponse*
///
-(NSURLSessionTask*) overrideUserRankWithVersion: (NSNumber*) version
    accountId: (NSNumber*) accountId
    ownerAccountId: (NSNumber*) ownerAccountId
    appKey: (NSString*) appKey
    rankType: (NSString*) rankType
    totalScore: (NSNumber*) totalScore
    totalCount: (NSNumber*) totalCount
    totalTime: (NSNumber*) totalTime
    dailyScore: (NSNumber*) dailyScore
    dailyCount: (NSNumber*) dailyCount
    dailyTime: (NSNumber*) dailyTime
    weeklyScore: (NSNumber*) weeklyScore
    weeklyCount: (NSNumber*) weeklyCount
    weeklyTime: (NSNumber*) weeklyTime
    monthlyScore: (NSNumber*) monthlyScore
    monthlyCount: (NSNumber*) monthlyCount
    monthlyTime: (NSNumber*) monthlyTime
    topScore: (NSNumber*) topScore
    lowestScore: (NSNumber*) lowestScore
    streakCount: (NSNumber*) streakCount
    streakBestCount: (NSNumber*) streakBestCount
    startDate: (NSNumber*) startDate
    endDate: (NSNumber*) endDate
    completionHandler: (void (^)(OAISirqulResponse* output, NSError* error)) handler {
    // verify the required parameter 'version' is set
    if (version == nil) {
        NSParameterAssert(version);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"version"] };
            NSError* error = [NSError errorWithDomain:kOAIRankingApiErrorDomain code:kOAIRankingApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kOAIRankingApiErrorDomain code:kOAIRankingApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'ownerAccountId' is set
    if (ownerAccountId == nil) {
        NSParameterAssert(ownerAccountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"ownerAccountId"] };
            NSError* error = [NSError errorWithDomain:kOAIRankingApiErrorDomain code:kOAIRankingApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'appKey' is set
    if (appKey == nil) {
        NSParameterAssert(appKey);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"appKey"] };
            NSError* error = [NSError errorWithDomain:kOAIRankingApiErrorDomain code:kOAIRankingApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'rankType' is set
    if (rankType == nil) {
        NSParameterAssert(rankType);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"rankType"] };
            NSError* error = [NSError errorWithDomain:kOAIRankingApiErrorDomain code:kOAIRankingApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/{version}/ranking/override"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (version != nil) {
        pathParams[@"version"] = version;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        queryParams[@"accountId"] = accountId;
    }
    if (ownerAccountId != nil) {
        queryParams[@"ownerAccountId"] = ownerAccountId;
    }
    if (appKey != nil) {
        queryParams[@"appKey"] = appKey;
    }
    if (rankType != nil) {
        queryParams[@"rankType"] = rankType;
    }
    if (totalScore != nil) {
        queryParams[@"totalScore"] = totalScore;
    }
    if (totalCount != nil) {
        queryParams[@"totalCount"] = totalCount;
    }
    if (totalTime != nil) {
        queryParams[@"totalTime"] = totalTime;
    }
    if (dailyScore != nil) {
        queryParams[@"dailyScore"] = dailyScore;
    }
    if (dailyCount != nil) {
        queryParams[@"dailyCount"] = dailyCount;
    }
    if (dailyTime != nil) {
        queryParams[@"dailyTime"] = dailyTime;
    }
    if (weeklyScore != nil) {
        queryParams[@"weeklyScore"] = weeklyScore;
    }
    if (weeklyCount != nil) {
        queryParams[@"weeklyCount"] = weeklyCount;
    }
    if (weeklyTime != nil) {
        queryParams[@"weeklyTime"] = weeklyTime;
    }
    if (monthlyScore != nil) {
        queryParams[@"monthlyScore"] = monthlyScore;
    }
    if (monthlyCount != nil) {
        queryParams[@"monthlyCount"] = monthlyCount;
    }
    if (monthlyTime != nil) {
        queryParams[@"monthlyTime"] = monthlyTime;
    }
    if (topScore != nil) {
        queryParams[@"topScore"] = topScore;
    }
    if (lowestScore != nil) {
        queryParams[@"lowestScore"] = lowestScore;
    }
    if (streakCount != nil) {
        queryParams[@"streakCount"] = streakCount;
    }
    if (streakBestCount != nil) {
        queryParams[@"streakBestCount"] = streakBestCount;
    }
    if (startDate != nil) {
        queryParams[@"startDate"] = startDate;
    }
    if (endDate != nil) {
        queryParams[@"endDate"] = endDate;
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
/// Update Ranking
/// Update the rank value 
///  @param version  
///
///  @param accountId the account id of the user 
///
///  @param appKey the application key for filtering results by application 
///
///  @param rankType a unique label for identifying the ranking. This can be any alphanumeric string (no spaces or special characters) with a maximum length of 64 characters. There are also default rank types to use which include: POINTS, DOWNLOADS, INVITATIONS, CREATIONS, VOTES, REDEEMED, ACTIONS 
///
///  @param increment the value to increment (optional, default to @1)
///
///  @param timeIncrement the time value to increment (optional)
///
///  @param tag the analytic tag for this achievement (used to validate scores) (optional)
///
///  @param startDate custom date you can save along with the score for the user (optional)
///
///  @param endDate custom date you can save along with the score for the user (optional)
///
///  @param updateGlobal update the global rankings if true, default is false (optional)
///
///  @param createLeaderboard create the leaderboard if it does not exist (default false) (optional, default to @(NO))
///
///  @returns OAISirqulResponse*
///
-(NSURLSessionTask*) updateRankingsWithVersion: (NSNumber*) version
    accountId: (NSNumber*) accountId
    appKey: (NSString*) appKey
    rankType: (NSString*) rankType
    increment: (NSNumber*) increment
    timeIncrement: (NSNumber*) timeIncrement
    tag: (NSString*) tag
    startDate: (NSNumber*) startDate
    endDate: (NSNumber*) endDate
    updateGlobal: (NSNumber*) updateGlobal
    createLeaderboard: (NSNumber*) createLeaderboard
    completionHandler: (void (^)(OAISirqulResponse* output, NSError* error)) handler {
    // verify the required parameter 'version' is set
    if (version == nil) {
        NSParameterAssert(version);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"version"] };
            NSError* error = [NSError errorWithDomain:kOAIRankingApiErrorDomain code:kOAIRankingApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kOAIRankingApiErrorDomain code:kOAIRankingApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'appKey' is set
    if (appKey == nil) {
        NSParameterAssert(appKey);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"appKey"] };
            NSError* error = [NSError errorWithDomain:kOAIRankingApiErrorDomain code:kOAIRankingApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'rankType' is set
    if (rankType == nil) {
        NSParameterAssert(rankType);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"rankType"] };
            NSError* error = [NSError errorWithDomain:kOAIRankingApiErrorDomain code:kOAIRankingApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/{version}/ranking/update"];

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
    if (rankType != nil) {
        queryParams[@"rankType"] = rankType;
    }
    if (increment != nil) {
        queryParams[@"increment"] = increment;
    }
    if (timeIncrement != nil) {
        queryParams[@"timeIncrement"] = timeIncrement;
    }
    if (tag != nil) {
        queryParams[@"tag"] = tag;
    }
    if (startDate != nil) {
        queryParams[@"startDate"] = startDate;
    }
    if (endDate != nil) {
        queryParams[@"endDate"] = endDate;
    }
    if (updateGlobal != nil) {
        queryParams[@"updateGlobal"] = [updateGlobal isEqual:@(YES)] ? @"true" : @"false";
    }
    if (createLeaderboard != nil) {
        queryParams[@"createLeaderboard"] = [createLeaderboard isEqual:@(YES)] ? @"true" : @"false";
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
