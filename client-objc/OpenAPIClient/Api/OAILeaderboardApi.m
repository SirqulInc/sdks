#import "OAILeaderboardApi.h"
#import "OAIQueryParamCollection.h"
#import "OAIApiClient.h"
#import "OAILeaderboardResponse.h"
#import "OAISirqulResponse.h"


@interface OAILeaderboardApi ()

@property (nonatomic, strong, readwrite) NSMutableDictionary *mutableDefaultHeaders;

@end

@implementation OAILeaderboardApi

NSString* kOAILeaderboardApiErrorDomain = @"OAILeaderboardApiErrorDomain";
NSInteger kOAILeaderboardApiMissingParamErrorCode = 234513;

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
/// Create a leaderboard based on the rankingType, rankMode(leaderboardMode), sortField and limitation
/// Create a leaderboard based on the rankingType, rankMode(leaderboardMode), sortField and limitation
///  @param version  
///
///  @param accountId The account id of the user creating the leaderboard. (optional)
///
///  @param appKey The application key (optional)
///
///  @param rankType a unique label for identifying the ranking. This can be any alphanumeric string with a maximum length of 64 characters. There are also default rank types to use which include: POINTS, DOWNLOADS, INVITATIONS, CREATIONS, VOTES, REDEEMED, ACTIONS (optional)
///
///  @param leaderboardMode the type of search to perform. Possible values include: GLOBAL - searches scores globally (all users in the system are included in the ranking); LOCAL - filters results by select users and on users that have logged into the same device; SEARCH - does a GLOBAL search by keyword; CUSTOM - does a LOCAL search by keyword (optional)
///
///  @param iconMedia a MultipartFile containing the icon image of the leaderboard (this will only be used if \"iconAssetId\" is empty) (optional)
///
///  @param iconAssetId The asset ID to set the leaderboard icon (optional)
///
///  @param bannerMedia a MultipartFile containing the icon banner of the leaderboard (this will only be used if \"bannerAssetId\" is empty) (optional)
///
///  @param bannerAssetId The asset ID to set the leaderboard banner (optional)
///
///  @param limitation limit number of rankings for each leaderboard (optional)
///
///  @param sortField determines how to order and rank the results. Possible values include: TOTAL, WEEKLY, DAILY, TOP, LOWEST (optional)
///
///  @param title leaderboard's title (optional)
///
///  @param _description leaderboard's description (optional)
///
///  @param metaData custom meta data for the leaderboard (optional)
///
///  @returns OAILeaderboardResponse*
///
-(NSURLSessionTask*) createLeaderboardWithVersion: (NSNumber*) version
    accountId: (NSNumber*) accountId
    appKey: (NSString*) appKey
    rankType: (NSString*) rankType
    leaderboardMode: (NSString*) leaderboardMode
    iconMedia: (NSURL*) iconMedia
    iconAssetId: (NSNumber*) iconAssetId
    bannerMedia: (NSURL*) bannerMedia
    bannerAssetId: (NSNumber*) bannerAssetId
    limitation: (NSNumber*) limitation
    sortField: (NSString*) sortField
    title: (NSString*) title
    _description: (NSString*) _description
    metaData: (NSString*) metaData
    completionHandler: (void (^)(OAILeaderboardResponse* output, NSError* error)) handler {
    // verify the required parameter 'version' is set
    if (version == nil) {
        NSParameterAssert(version);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"version"] };
            NSError* error = [NSError errorWithDomain:kOAILeaderboardApiErrorDomain code:kOAILeaderboardApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/{version}/leaderboard/create"];

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
    if (leaderboardMode != nil) {
        queryParams[@"leaderboardMode"] = leaderboardMode;
    }
    if (iconMedia != nil) {
        queryParams[@"iconMedia"] = iconMedia;
    }
    if (iconAssetId != nil) {
        queryParams[@"iconAssetId"] = iconAssetId;
    }
    if (bannerMedia != nil) {
        queryParams[@"bannerMedia"] = bannerMedia;
    }
    if (bannerAssetId != nil) {
        queryParams[@"bannerAssetId"] = bannerAssetId;
    }
    if (limitation != nil) {
        queryParams[@"limitation"] = limitation;
    }
    if (sortField != nil) {
        queryParams[@"sortField"] = sortField;
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
                              responseType: @"OAILeaderboardResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAILeaderboardResponse*)data, error);
                                }
                            }];
}

///
/// Delete the Leader Board
/// Removes a leader board id.
///  @param version  
///
///  @param leaderboardId The leaderboard id to delete. 
///
///  @param accountId The account id of the user making the request. (optional)
///
///  @returns OAISirqulResponse*
///
-(NSURLSessionTask*) deleteLeaderboardWithVersion: (NSNumber*) version
    leaderboardId: (NSNumber*) leaderboardId
    accountId: (NSNumber*) accountId
    completionHandler: (void (^)(OAISirqulResponse* output, NSError* error)) handler {
    // verify the required parameter 'version' is set
    if (version == nil) {
        NSParameterAssert(version);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"version"] };
            NSError* error = [NSError errorWithDomain:kOAILeaderboardApiErrorDomain code:kOAILeaderboardApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'leaderboardId' is set
    if (leaderboardId == nil) {
        NSParameterAssert(leaderboardId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"leaderboardId"] };
            NSError* error = [NSError errorWithDomain:kOAILeaderboardApiErrorDomain code:kOAILeaderboardApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/{version}/leaderboard/delete"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (version != nil) {
        pathParams[@"version"] = version;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        queryParams[@"accountId"] = accountId;
    }
    if (leaderboardId != nil) {
        queryParams[@"leaderboardId"] = leaderboardId;
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
/// Read a leaderboard by id and retrieve the matching ranking list
/// Read a leaderboard by id and retrieve the matching ranking list
///  @param version  
///
///  @param leaderboardId The leaderboard id. 
///
///  @param accountId A valid account. (optional)
///
///  @param includeFullRankingList set to true if need to return the leaderboard's full ranking list (optional)
///
///  @returns OAILeaderboardResponse*
///
-(NSURLSessionTask*) getLeaderboardWithVersion: (NSNumber*) version
    leaderboardId: (NSNumber*) leaderboardId
    accountId: (NSNumber*) accountId
    includeFullRankingList: (NSNumber*) includeFullRankingList
    completionHandler: (void (^)(OAILeaderboardResponse* output, NSError* error)) handler {
    // verify the required parameter 'version' is set
    if (version == nil) {
        NSParameterAssert(version);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"version"] };
            NSError* error = [NSError errorWithDomain:kOAILeaderboardApiErrorDomain code:kOAILeaderboardApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'leaderboardId' is set
    if (leaderboardId == nil) {
        NSParameterAssert(leaderboardId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"leaderboardId"] };
            NSError* error = [NSError errorWithDomain:kOAILeaderboardApiErrorDomain code:kOAILeaderboardApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/{version}/leaderboard/get"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (version != nil) {
        pathParams[@"version"] = version;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        queryParams[@"accountId"] = accountId;
    }
    if (leaderboardId != nil) {
        queryParams[@"leaderboardId"] = leaderboardId;
    }
    if (includeFullRankingList != nil) {
        queryParams[@"includeFullRankingList"] = [includeFullRankingList isEqual:@(YES)] ? @"true" : @"false";
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
                              responseType: @"OAILeaderboardResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAILeaderboardResponse*)data, error);
                                }
                            }];
}

///
/// Search leaderboard and retrieve the matching ranking list
/// Search leaderboard and retrieve the matching ranking list
///  @param version  
///
///  @param accountId The account id of the user requesting the search. (optional)
///
///  @param appKey The application key. (optional)
///
///  @param globalOnly only include global leaderboards (this overrides the appKey filter) (optional)
///
///  @param keyword keyword to search by title (optional)
///
///  @param leaderboardIds comma separated list of leaderboard ids to filter results with (optional)
///
///  @param rankTypes comma separated list of rankType to filter results with (optional)
///
///  @param sortField sortField of the result, from LeaderboardApiMap (TITLE, DESCRIPTION, CREATED, UPDATED, RANK_TYPE, RANK_MODE) (optional)
///
///  @param descending Determines whether the sorted list is in descending or ascending order (optional)
///
///  @param includeInactive include inactive in the result (optional)
///
///  @param includeAppResponse determines whether to include the application response for each leaderboard (optional)
///
///  @param start Start the result set at some index. (optional)
///
///  @param limit Limit the result to some number. (optional)
///
///  @returns OAILeaderboardResponse*
///
-(NSURLSessionTask*) searchLeaderboardsWithVersion: (NSNumber*) version
    accountId: (NSNumber*) accountId
    appKey: (NSString*) appKey
    globalOnly: (NSNumber*) globalOnly
    keyword: (NSString*) keyword
    leaderboardIds: (NSString*) leaderboardIds
    rankTypes: (NSString*) rankTypes
    sortField: (NSString*) sortField
    descending: (NSNumber*) descending
    includeInactive: (NSNumber*) includeInactive
    includeAppResponse: (NSNumber*) includeAppResponse
    start: (NSNumber*) start
    limit: (NSNumber*) limit
    completionHandler: (void (^)(OAILeaderboardResponse* output, NSError* error)) handler {
    // verify the required parameter 'version' is set
    if (version == nil) {
        NSParameterAssert(version);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"version"] };
            NSError* error = [NSError errorWithDomain:kOAILeaderboardApiErrorDomain code:kOAILeaderboardApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/{version}/leaderboard/search"];

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
    if (globalOnly != nil) {
        queryParams[@"globalOnly"] = [globalOnly isEqual:@(YES)] ? @"true" : @"false";
    }
    if (keyword != nil) {
        queryParams[@"keyword"] = keyword;
    }
    if (leaderboardIds != nil) {
        queryParams[@"leaderboardIds"] = leaderboardIds;
    }
    if (rankTypes != nil) {
        queryParams[@"rankTypes"] = rankTypes;
    }
    if (sortField != nil) {
        queryParams[@"sortField"] = sortField;
    }
    if (descending != nil) {
        queryParams[@"descending"] = [descending isEqual:@(YES)] ? @"true" : @"false";
    }
    if (includeInactive != nil) {
        queryParams[@"includeInactive"] = [includeInactive isEqual:@(YES)] ? @"true" : @"false";
    }
    if (includeAppResponse != nil) {
        queryParams[@"includeAppResponse"] = [includeAppResponse isEqual:@(YES)] ? @"true" : @"false";
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
                              responseType: @"OAILeaderboardResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAILeaderboardResponse*)data, error);
                                }
                            }];
}

///
/// Update a leaderboard based on the rankingType, rankMode(leaderboardMode), sortField and limitation
/// Update a leaderboard based on the rankingType, rankMode(leaderboardMode), sortField and limitation
///  @param version  
///
///  @param leaderboardId The leaderboard id to update. 
///
///  @param accountId The account id of the user updating the leaderboard. (optional)
///
///  @param appKey The application key (optional)
///
///  @param rankType a unique label for identifying the ranking. This can be any alphanumeric string with a maximum length of 64 characters. (optional)
///
///  @param leaderboardMode the type of search to perform. Possible values include: GLOBAL, LOCAL, SEARCH, CUSTOM (optional)
///
///  @param sortField determines how to order and rank the results. Possible values include: TOTAL, WEEKLY, DAILY, TOP, LOWEST (optional)
///
///  @param iconMedia a MultipartFile containing the icon image of the leaderboard (this will only be used if \"iconAssetId\" is empty) (optional)
///
///  @param iconAssetId The asset ID to set the leaderboard icon (optional)
///
///  @param bannerMedia a MultipartFile containing the icon banner of the leaderboard (this will only be used if \"bannerAssetId\" is empty) (optional)
///
///  @param bannerAssetId The asset ID to set the leaderboard banner (optional)
///
///  @param limitation limit number of rankings for each leaderboard (optional)
///
///  @param active Whether the leaderboard is active (optional)
///
///  @param title leaderboard's title (optional)
///
///  @param _description leaderboard's description (optional)
///
///  @param metaData custom meta data for the leaderboard (optional)
///
///  @returns OAILeaderboardResponse*
///
-(NSURLSessionTask*) updateLeaderboardWithVersion: (NSNumber*) version
    leaderboardId: (NSNumber*) leaderboardId
    accountId: (NSNumber*) accountId
    appKey: (NSString*) appKey
    rankType: (NSString*) rankType
    leaderboardMode: (NSString*) leaderboardMode
    sortField: (NSString*) sortField
    iconMedia: (NSURL*) iconMedia
    iconAssetId: (NSNumber*) iconAssetId
    bannerMedia: (NSURL*) bannerMedia
    bannerAssetId: (NSNumber*) bannerAssetId
    limitation: (NSNumber*) limitation
    active: (NSNumber*) active
    title: (NSString*) title
    _description: (NSString*) _description
    metaData: (NSString*) metaData
    completionHandler: (void (^)(OAILeaderboardResponse* output, NSError* error)) handler {
    // verify the required parameter 'version' is set
    if (version == nil) {
        NSParameterAssert(version);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"version"] };
            NSError* error = [NSError errorWithDomain:kOAILeaderboardApiErrorDomain code:kOAILeaderboardApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'leaderboardId' is set
    if (leaderboardId == nil) {
        NSParameterAssert(leaderboardId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"leaderboardId"] };
            NSError* error = [NSError errorWithDomain:kOAILeaderboardApiErrorDomain code:kOAILeaderboardApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/{version}/leaderboard/update"];

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
    if (leaderboardId != nil) {
        queryParams[@"leaderboardId"] = leaderboardId;
    }
    if (rankType != nil) {
        queryParams[@"rankType"] = rankType;
    }
    if (leaderboardMode != nil) {
        queryParams[@"leaderboardMode"] = leaderboardMode;
    }
    if (sortField != nil) {
        queryParams[@"sortField"] = sortField;
    }
    if (iconMedia != nil) {
        queryParams[@"iconMedia"] = iconMedia;
    }
    if (iconAssetId != nil) {
        queryParams[@"iconAssetId"] = iconAssetId;
    }
    if (bannerMedia != nil) {
        queryParams[@"bannerMedia"] = bannerMedia;
    }
    if (bannerAssetId != nil) {
        queryParams[@"bannerAssetId"] = bannerAssetId;
    }
    if (limitation != nil) {
        queryParams[@"limitation"] = limitation;
    }
    if (active != nil) {
        queryParams[@"active"] = [active isEqual:@(YES)] ? @"true" : @"false";
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
                              responseType: @"OAILeaderboardResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAILeaderboardResponse*)data, error);
                                }
                            }];
}



@end
