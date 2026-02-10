#import "OAIAchievementApi.h"
#import "OAIQueryParamCollection.h"
#import "OAIApiClient.h"
#import "OAIAchievementProgressResponse.h"
#import "OAIAchievementResponse.h"
#import "OAIAchievementShortResponse.h"
#import "OAIAchievementTierResponse.h"
#import "OAISirqulResponse.h"


@interface OAIAchievementApi ()

@property (nonatomic, strong, readwrite) NSMutableDictionary *mutableDefaultHeaders;

@end

@implementation OAIAchievementApi

NSString* kOAIAchievementApiErrorDomain = @"OAIAchievementApiErrorDomain";
NSInteger kOAIAchievementApiMissingParamErrorCode = 234513;

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
/// Searches an Achievement Tier
/// Searches a tier of an achievement (for developer/retailer use). User must have permissions to the application the achievement is created for.
///  @param version  
///
///  @param deviceId a unique id given by the device (deviceId or accountId required) (optional)
///
///  @param accountId the account id of the user (deviceId or accountId required) (optional)
///
///  @param appKey the application key (optional)
///
///  @param keyword the keyword used to filter resutls with (this returns results that have the keyword in the title or the description of the achievement tier) (optional)
///
///  @param achievementType filter results by achievementType (these are exact case sensitive matches) (optional)
///
///  @param rankType filter results by the rankType (these are the exact case sensitive matches) (optional)
///
///  @param sortField the field to sort by. See {@link AchievementApiMap} (optional)
///
///  @param descending determines whether the sort list is in descending or ascending order (of the achievement) (optional)
///
///  @param descendingGoal determines whether the results are in descending or ascending order by the tier goal count (after the initial sort on the achievement) (optional)
///
///  @param start The start of the index for pagination (optional)
///
///  @param limit the limit for pagination (has a hard limit of 1000) (optional)
///
///  @returns OAIAchievementTierResponse*
///
-(NSURLSessionTask*) apiVersionAchievementTierSearchPostWithVersion: (NSNumber*) version
    deviceId: (NSString*) deviceId
    accountId: (NSNumber*) accountId
    appKey: (NSString*) appKey
    keyword: (NSString*) keyword
    achievementType: (NSNumber*) achievementType
    rankType: (NSString*) rankType
    sortField: (NSString*) sortField
    descending: (NSNumber*) descending
    descendingGoal: (NSNumber*) descendingGoal
    start: (NSNumber*) start
    limit: (NSNumber*) limit
    completionHandler: (void (^)(OAIAchievementTierResponse* output, NSError* error)) handler {
    // verify the required parameter 'version' is set
    if (version == nil) {
        NSParameterAssert(version);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"version"] };
            NSError* error = [NSError errorWithDomain:kOAIAchievementApiErrorDomain code:kOAIAchievementApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/{version}/achievement/tier/search"];

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
    if (keyword != nil) {
        queryParams[@"keyword"] = keyword;
    }
    if (achievementType != nil) {
        queryParams[@"achievementType"] = achievementType;
    }
    if (rankType != nil) {
        queryParams[@"rankType"] = rankType;
    }
    if (sortField != nil) {
        queryParams[@"sortField"] = sortField;
    }
    if (descending != nil) {
        queryParams[@"descending"] = [descending isEqual:@(YES)] ? @"true" : @"false";
    }
    if (descendingGoal != nil) {
        queryParams[@"descendingGoal"] = [descendingGoal isEqual:@(YES)] ? @"true" : @"false";
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
                              responseType: @"OAIAchievementTierResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIAchievementTierResponse*)data, error);
                                }
                            }];
}

///
/// Create Achievement
/// Updates an achievement (for developer/retailer use). User must have permissions to the application the achievement is created for.
///  @param version  
///
///  @param appKey the application key the achievement is for 
///
///  @param title the title of the achievement (255 character limit) 
///
///  @param deviceId a unique id given by the device (deviceId or accountId required) (optional)
///
///  @param accountId the account id of the user (deviceId or accountId required) (optional)
///
///  @param analyticsTag the analytics tag that will trigger when a user's achievement count gets updated (optional)
///
///  @param _description the description of the achievement (optional)
///
///  @param rankType the rank type for updating leader boards (optional)
///
///  @param rankIncrement determines how much the rank count is incremented (optional)
///
///  @param minIncrement restrict scores to be above or equal to this minimum value (optional)
///
///  @param maxIncrement restrict scores to be below or equal to this maximum value (optional)
///
///  @param validate determines whether the customId on analytics are used to validate a user's achievement progress. (optional)
///
///  @param active achievement is active or inactive (optional)
///
///  @param triggerDefinition if provided will define what triggers to run after a tier is completed (optional)
///
///  @returns OAIAchievementResponse*
///
-(NSURLSessionTask*) createAchievementWithVersion: (NSNumber*) version
    appKey: (NSString*) appKey
    title: (NSString*) title
    deviceId: (NSString*) deviceId
    accountId: (NSNumber*) accountId
    analyticsTag: (NSString*) analyticsTag
    _description: (NSString*) _description
    rankType: (NSString*) rankType
    rankIncrement: (NSNumber*) rankIncrement
    minIncrement: (NSNumber*) minIncrement
    maxIncrement: (NSNumber*) maxIncrement
    validate: (NSNumber*) validate
    active: (NSNumber*) active
    triggerDefinition: (NSString*) triggerDefinition
    completionHandler: (void (^)(OAIAchievementResponse* output, NSError* error)) handler {
    // verify the required parameter 'version' is set
    if (version == nil) {
        NSParameterAssert(version);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"version"] };
            NSError* error = [NSError errorWithDomain:kOAIAchievementApiErrorDomain code:kOAIAchievementApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'appKey' is set
    if (appKey == nil) {
        NSParameterAssert(appKey);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"appKey"] };
            NSError* error = [NSError errorWithDomain:kOAIAchievementApiErrorDomain code:kOAIAchievementApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'title' is set
    if (title == nil) {
        NSParameterAssert(title);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"title"] };
            NSError* error = [NSError errorWithDomain:kOAIAchievementApiErrorDomain code:kOAIAchievementApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/{version}/achievement/create"];

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
    if (analyticsTag != nil) {
        queryParams[@"analyticsTag"] = analyticsTag;
    }
    if (title != nil) {
        queryParams[@"title"] = title;
    }
    if (_description != nil) {
        queryParams[@"description"] = _description;
    }
    if (rankType != nil) {
        queryParams[@"rankType"] = rankType;
    }
    if (rankIncrement != nil) {
        queryParams[@"rankIncrement"] = rankIncrement;
    }
    if (minIncrement != nil) {
        queryParams[@"minIncrement"] = minIncrement;
    }
    if (maxIncrement != nil) {
        queryParams[@"maxIncrement"] = maxIncrement;
    }
    if (validate != nil) {
        queryParams[@"validate"] = [validate isEqual:@(YES)] ? @"true" : @"false";
    }
    if (active != nil) {
        queryParams[@"active"] = [active isEqual:@(YES)] ? @"true" : @"false";
    }
    if (triggerDefinition != nil) {
        queryParams[@"triggerDefinition"] = triggerDefinition;
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
                              responseType: @"OAIAchievementResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIAchievementResponse*)data, error);
                                }
                            }];
}

///
/// Create Achievement Tier
/// Create a tier of an achievement (for developer/retailer use). User must have permissions to the application the achievement is created for.
///  @param version  
///
///  @param achievementId the achievement id for adding a new tier 
///
///  @param scoreAllInstances score all instances 
///
///  @param deviceId a unique id given by the device (deviceId or accountId required) (optional)
///
///  @param accountId the account id of the user (deviceId or accountId required) (optional)
///
///  @param icon achievement tier icon image file (optional)
///
///  @param iconAssetId the icon assetId, if icon is provided, icon will overrule (optional)
///
///  @param title the title of the achievement tier (optional)
///
///  @param _description the description of the achievement tier (optional)
///
///  @param goalCount the count requirement for completing the achievement tier (optional)
///
///  @param missionId The ID of the mission to associate with the achievement (optional)
///
///  @param gameId The ID of the game to associate with the achievement (optional)
///
///  @param packId The ID of the pack to associate with the achievement (optional)
///
///  @param gameLevelId The ID of the game level to associate with the achievement (optional)
///
///  @param gameObjectId The ID of the game object to associate with the achievement (optional)
///
///  @returns OAIAchievementTierResponse*
///
-(NSURLSessionTask*) createAchievementTierWithVersion: (NSNumber*) version
    achievementId: (NSNumber*) achievementId
    scoreAllInstances: (NSNumber*) scoreAllInstances
    deviceId: (NSString*) deviceId
    accountId: (NSNumber*) accountId
    icon: (NSURL*) icon
    iconAssetId: (NSNumber*) iconAssetId
    title: (NSString*) title
    _description: (NSString*) _description
    goalCount: (NSNumber*) goalCount
    missionId: (NSNumber*) missionId
    gameId: (NSNumber*) gameId
    packId: (NSNumber*) packId
    gameLevelId: (NSNumber*) gameLevelId
    gameObjectId: (NSNumber*) gameObjectId
    completionHandler: (void (^)(OAIAchievementTierResponse* output, NSError* error)) handler {
    // verify the required parameter 'version' is set
    if (version == nil) {
        NSParameterAssert(version);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"version"] };
            NSError* error = [NSError errorWithDomain:kOAIAchievementApiErrorDomain code:kOAIAchievementApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'achievementId' is set
    if (achievementId == nil) {
        NSParameterAssert(achievementId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"achievementId"] };
            NSError* error = [NSError errorWithDomain:kOAIAchievementApiErrorDomain code:kOAIAchievementApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'scoreAllInstances' is set
    if (scoreAllInstances == nil) {
        NSParameterAssert(scoreAllInstances);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"scoreAllInstances"] };
            NSError* error = [NSError errorWithDomain:kOAIAchievementApiErrorDomain code:kOAIAchievementApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/{version}/achievement/tier/create"];

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
    if (achievementId != nil) {
        queryParams[@"achievementId"] = achievementId;
    }
    if (icon != nil) {
        queryParams[@"icon"] = icon;
    }
    if (iconAssetId != nil) {
        queryParams[@"iconAssetId"] = iconAssetId;
    }
    if (title != nil) {
        queryParams[@"title"] = title;
    }
    if (_description != nil) {
        queryParams[@"description"] = _description;
    }
    if (goalCount != nil) {
        queryParams[@"goalCount"] = goalCount;
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
    if (scoreAllInstances != nil) {
        queryParams[@"scoreAllInstances"] = [scoreAllInstances isEqual:@(YES)] ? @"true" : @"false";
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
                              responseType: @"OAIAchievementTierResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIAchievementTierResponse*)data, error);
                                }
                            }];
}

///
/// Delete Achievement
/// Deletes an achievement (for developer/retailer use). User must have permissions to the application the achievement was created for.
///  @param version  
///
///  @param achievementId The ID of the achievement 
///
///  @param accountId the account id of the user (deviceId or accountId required) (optional)
///
///  @returns OAISirqulResponse*
///
-(NSURLSessionTask*) deleteAchievementWithVersion: (NSNumber*) version
    achievementId: (NSNumber*) achievementId
    accountId: (NSNumber*) accountId
    completionHandler: (void (^)(OAISirqulResponse* output, NSError* error)) handler {
    // verify the required parameter 'version' is set
    if (version == nil) {
        NSParameterAssert(version);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"version"] };
            NSError* error = [NSError errorWithDomain:kOAIAchievementApiErrorDomain code:kOAIAchievementApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'achievementId' is set
    if (achievementId == nil) {
        NSParameterAssert(achievementId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"achievementId"] };
            NSError* error = [NSError errorWithDomain:kOAIAchievementApiErrorDomain code:kOAIAchievementApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/{version}/achievement/delete"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (version != nil) {
        pathParams[@"version"] = version;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        queryParams[@"accountId"] = accountId;
    }
    if (achievementId != nil) {
        queryParams[@"achievementId"] = achievementId;
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
/// Delete Achievement Tier
/// Deletes an achievement tier (for developer/retailer use). User must have permissions to the application the achievement was created for.
///  @param version  
///
///  @param achievementTierId the achievement id for deletion 
///
///  @param accountId the account id of the user (deviceId or accountId required). (optional)
///
///  @returns OAISirqulResponse*
///
-(NSURLSessionTask*) deleteAchievementTierWithVersion: (NSNumber*) version
    achievementTierId: (NSNumber*) achievementTierId
    accountId: (NSNumber*) accountId
    completionHandler: (void (^)(OAISirqulResponse* output, NSError* error)) handler {
    // verify the required parameter 'version' is set
    if (version == nil) {
        NSParameterAssert(version);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"version"] };
            NSError* error = [NSError errorWithDomain:kOAIAchievementApiErrorDomain code:kOAIAchievementApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'achievementTierId' is set
    if (achievementTierId == nil) {
        NSParameterAssert(achievementTierId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"achievementTierId"] };
            NSError* error = [NSError errorWithDomain:kOAIAchievementApiErrorDomain code:kOAIAchievementApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/{version}/achievement/tier/delete"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (version != nil) {
        pathParams[@"version"] = version;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        queryParams[@"accountId"] = accountId;
    }
    if (achievementTierId != nil) {
        queryParams[@"achievementTierId"] = achievementTierId;
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
/// Get Achievement
/// Get an achievement (for developer/retailer use). User must have permissions to the application the achievement is created for.
///  @param version  
///
///  @param achievementId The ID of the achievement 
///
///  @param deviceId a unique id given by the device (deviceId or accountId required) (optional)
///
///  @param accountId the account id of the user (deviceId or accountId required) (optional)
///
///  @param achievementType achievementType (optional)
///
///  @returns OAIAchievementTierResponse*
///
-(NSURLSessionTask*) getAchievementWithVersion: (NSNumber*) version
    achievementId: (NSNumber*) achievementId
    deviceId: (NSString*) deviceId
    accountId: (NSNumber*) accountId
    achievementType: (NSString*) achievementType
    completionHandler: (void (^)(OAIAchievementTierResponse* output, NSError* error)) handler {
    // verify the required parameter 'version' is set
    if (version == nil) {
        NSParameterAssert(version);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"version"] };
            NSError* error = [NSError errorWithDomain:kOAIAchievementApiErrorDomain code:kOAIAchievementApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'achievementId' is set
    if (achievementId == nil) {
        NSParameterAssert(achievementId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"achievementId"] };
            NSError* error = [NSError errorWithDomain:kOAIAchievementApiErrorDomain code:kOAIAchievementApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/{version}/achievement/get"];

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
    if (achievementId != nil) {
        queryParams[@"achievementId"] = achievementId;
    }
    if (achievementType != nil) {
        queryParams[@"achievementType"] = achievementType;
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
                              responseType: @"OAIAchievementTierResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIAchievementTierResponse*)data, error);
                                }
                            }];
}

///
/// Gets an achievement tier
/// Gets an achievement tier (for developer/retailer use). User must have permissions to the application the achievement is created for.
///  @param version  
///
///  @param accountId the account id of the user (deviceId or accountId required) 
///
///  @param achievementTierId the achievement tier id that is being retrieved 
///
///  @returns OAIAchievementTierResponse*
///
-(NSURLSessionTask*) getAchievementTierWithVersion: (NSNumber*) version
    accountId: (NSNumber*) accountId
    achievementTierId: (NSNumber*) achievementTierId
    completionHandler: (void (^)(OAIAchievementTierResponse* output, NSError* error)) handler {
    // verify the required parameter 'version' is set
    if (version == nil) {
        NSParameterAssert(version);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"version"] };
            NSError* error = [NSError errorWithDomain:kOAIAchievementApiErrorDomain code:kOAIAchievementApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kOAIAchievementApiErrorDomain code:kOAIAchievementApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'achievementTierId' is set
    if (achievementTierId == nil) {
        NSParameterAssert(achievementTierId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"achievementTierId"] };
            NSError* error = [NSError errorWithDomain:kOAIAchievementApiErrorDomain code:kOAIAchievementApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/{version}/achievement/tier/get"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (version != nil) {
        pathParams[@"version"] = version;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        queryParams[@"accountId"] = accountId;
    }
    if (achievementTierId != nil) {
        queryParams[@"achievementTierId"] = achievementTierId;
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
                              responseType: @"OAIAchievementTierResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIAchievementTierResponse*)data, error);
                                }
                            }];
}

///
/// Get Achievement Progress
/// Gets a list of user achievements.
///  @param version  
///
///  @param returnNulls determines whether to return null fields in the response 
///
///  @param appKey the application key for filtering results by application 
///
///  @param includeUndiscovered determines whether to return achievements that the user has not discovered yet 
///
///  @param deviceId a unique id given by the device (deviceId or accountId required) (optional)
///
///  @param accountId the account id of the user (deviceId or accountId required) (optional)
///
///  @param connectionAccountEmail the email of the account to view achievements (optional)
///
///  @param connectionAccountId the id of the account to view achievements (optional)
///
///  @param rankType filter results by achievement rankType (optional)
///
///  @param achievementType filter results by achievement type (optional)
///
///  @param latitude the current latitude of the user (optional)
///
///  @param longitude the current longitude of the user (optional)
///
///  @returns NSArray<OAIAchievementProgressResponse>*
///
-(NSURLSessionTask*) getUserAchievementsWithVersion: (NSNumber*) version
    returnNulls: (NSNumber*) returnNulls
    appKey: (NSString*) appKey
    includeUndiscovered: (NSNumber*) includeUndiscovered
    deviceId: (NSString*) deviceId
    accountId: (NSNumber*) accountId
    connectionAccountEmail: (NSString*) connectionAccountEmail
    connectionAccountId: (NSNumber*) connectionAccountId
    rankType: (NSString*) rankType
    achievementType: (NSString*) achievementType
    latitude: (NSNumber*) latitude
    longitude: (NSNumber*) longitude
    completionHandler: (void (^)(NSArray<OAIAchievementProgressResponse>* output, NSError* error)) handler {
    // verify the required parameter 'version' is set
    if (version == nil) {
        NSParameterAssert(version);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"version"] };
            NSError* error = [NSError errorWithDomain:kOAIAchievementApiErrorDomain code:kOAIAchievementApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'returnNulls' is set
    if (returnNulls == nil) {
        NSParameterAssert(returnNulls);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"returnNulls"] };
            NSError* error = [NSError errorWithDomain:kOAIAchievementApiErrorDomain code:kOAIAchievementApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'appKey' is set
    if (appKey == nil) {
        NSParameterAssert(appKey);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"appKey"] };
            NSError* error = [NSError errorWithDomain:kOAIAchievementApiErrorDomain code:kOAIAchievementApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'includeUndiscovered' is set
    if (includeUndiscovered == nil) {
        NSParameterAssert(includeUndiscovered);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"includeUndiscovered"] };
            NSError* error = [NSError errorWithDomain:kOAIAchievementApiErrorDomain code:kOAIAchievementApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/{version}/achievement/progress/get"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (version != nil) {
        pathParams[@"version"] = version;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (returnNulls != nil) {
        queryParams[@"returnNulls"] = [returnNulls isEqual:@(YES)] ? @"true" : @"false";
    }
    if (deviceId != nil) {
        queryParams[@"deviceId"] = deviceId;
    }
    if (accountId != nil) {
        queryParams[@"accountId"] = accountId;
    }
    if (connectionAccountEmail != nil) {
        queryParams[@"connectionAccountEmail"] = connectionAccountEmail;
    }
    if (connectionAccountId != nil) {
        queryParams[@"connectionAccountId"] = connectionAccountId;
    }
    if (appKey != nil) {
        queryParams[@"appKey"] = appKey;
    }
    if (rankType != nil) {
        queryParams[@"rankType"] = rankType;
    }
    if (achievementType != nil) {
        queryParams[@"achievementType"] = achievementType;
    }
    if (includeUndiscovered != nil) {
        queryParams[@"includeUndiscovered"] = [includeUndiscovered isEqual:@(YES)] ? @"true" : @"false";
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
                              responseType: @"NSArray<OAIAchievementProgressResponse>*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSArray<OAIAchievementProgressResponse>*)data, error);
                                }
                            }];
}

///
/// List Achievement Tags
/// List achievement tags by application
///  @param version  
///
///  @param appKey filter results by application key (optional)
///
///  @returns OAISirqulResponse*
///
-(NSURLSessionTask*) listAchievementTagsWithVersion: (NSNumber*) version
    appKey: (NSString*) appKey
    completionHandler: (void (^)(OAISirqulResponse* output, NSError* error)) handler {
    // verify the required parameter 'version' is set
    if (version == nil) {
        NSParameterAssert(version);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"version"] };
            NSError* error = [NSError errorWithDomain:kOAIAchievementApiErrorDomain code:kOAIAchievementApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/{version}/achievement/tag/list"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (version != nil) {
        pathParams[@"version"] = version;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (appKey != nil) {
        queryParams[@"appKey"] = appKey;
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
                              responseType: @"OAISirqulResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAISirqulResponse*)data, error);
                                }
                            }];
}

///
/// List Achievements
/// List achievements by billable.
///  @param version  
///
///  @param sortField the field to sort by. See AchievementApiMap 
///
///  @param descending determines whether the sorted list is in descending or ascending order 
///
///  @param start the start index for pagination 
///
///  @param limit the limit for pagination (has a hard limit of 1000) 
///
///  @param activeOnly Filter results to only return active achievements 
///
///  @param deviceId a unique id given by the device (deviceId or accountId required) (optional)
///
///  @param accountId the account id of the user (deviceId or accountId required) (optional)
///
///  @param appKey the application key (optional)
///
///  @param keyword the keyword used to filter results with (this returns results that have the keyword in the title or description of the achievement) (optional)
///
///  @param achievementType filter results by the achievementType (these are exact case sensitive matches) (optional)
///
///  @param rankType filter results by the rankType (these are exact case sensitive matches) (optional)
///
///  @returns NSArray<OAIAchievementShortResponse>*
///
-(NSURLSessionTask*) listAchievementsWithVersion: (NSNumber*) version
    sortField: (NSString*) sortField
    descending: (NSNumber*) descending
    start: (NSNumber*) start
    limit: (NSNumber*) limit
    activeOnly: (NSNumber*) activeOnly
    deviceId: (NSString*) deviceId
    accountId: (NSNumber*) accountId
    appKey: (NSString*) appKey
    keyword: (NSString*) keyword
    achievementType: (NSString*) achievementType
    rankType: (NSString*) rankType
    completionHandler: (void (^)(NSArray<OAIAchievementShortResponse>* output, NSError* error)) handler {
    // verify the required parameter 'version' is set
    if (version == nil) {
        NSParameterAssert(version);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"version"] };
            NSError* error = [NSError errorWithDomain:kOAIAchievementApiErrorDomain code:kOAIAchievementApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'sortField' is set
    if (sortField == nil) {
        NSParameterAssert(sortField);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"sortField"] };
            NSError* error = [NSError errorWithDomain:kOAIAchievementApiErrorDomain code:kOAIAchievementApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'descending' is set
    if (descending == nil) {
        NSParameterAssert(descending);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"descending"] };
            NSError* error = [NSError errorWithDomain:kOAIAchievementApiErrorDomain code:kOAIAchievementApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'start' is set
    if (start == nil) {
        NSParameterAssert(start);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"start"] };
            NSError* error = [NSError errorWithDomain:kOAIAchievementApiErrorDomain code:kOAIAchievementApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'limit' is set
    if (limit == nil) {
        NSParameterAssert(limit);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"limit"] };
            NSError* error = [NSError errorWithDomain:kOAIAchievementApiErrorDomain code:kOAIAchievementApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'activeOnly' is set
    if (activeOnly == nil) {
        NSParameterAssert(activeOnly);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"activeOnly"] };
            NSError* error = [NSError errorWithDomain:kOAIAchievementApiErrorDomain code:kOAIAchievementApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/{version}/achievement/list"];

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
    if (keyword != nil) {
        queryParams[@"keyword"] = keyword;
    }
    if (achievementType != nil) {
        queryParams[@"achievementType"] = achievementType;
    }
    if (rankType != nil) {
        queryParams[@"rankType"] = rankType;
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
    if (activeOnly != nil) {
        queryParams[@"activeOnly"] = [activeOnly isEqual:@(YES)] ? @"true" : @"false";
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
                              responseType: @"NSArray<OAIAchievementShortResponse>*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSArray<OAIAchievementShortResponse>*)data, error);
                                }
                            }];
}

///
/// Search Achievements
/// Searches achievements by application for consumers.
///  @param version  
///
///  @param appKey the application key 
///
///  @param sortField the field to sort by. See AchievementApiMap 
///
///  @param descending determines whether the sorted list is in descending or ascending order 
///
///  @param includeTiers return tiers, only applicable for version >3.18 
///
///  @param includeInactiveTiers return inactive tiers, only applicable when includeTiers is true, only applicable for version >3.18 
///
///  @param start the start index for pagination 
///
///  @param limit the limit for pagination (has a hard limit of 1000) 
///
///  @param deviceId a unique id given by the device (deviceId or accountId required) (optional)
///
///  @param accountId the account id of the user (deviceId or accountId required) (optional)
///
///  @param keyword the keyword used to filter results with (this returns results that have the keyword in the title or description of the achievement) (optional)
///
///  @param achievementType filter results by the achievementType (these are exact case sensitive matches) (optional)
///
///  @param rankType filter results by the rankType (these are exact case sensitive matches) (optional)
///
///  @returns NSArray<OAIAchievementShortResponse>*
///
-(NSURLSessionTask*) searchAchievementsWithVersion: (NSNumber*) version
    appKey: (NSString*) appKey
    sortField: (NSString*) sortField
    descending: (NSNumber*) descending
    includeTiers: (NSNumber*) includeTiers
    includeInactiveTiers: (NSNumber*) includeInactiveTiers
    start: (NSNumber*) start
    limit: (NSNumber*) limit
    deviceId: (NSString*) deviceId
    accountId: (NSNumber*) accountId
    keyword: (NSString*) keyword
    achievementType: (NSString*) achievementType
    rankType: (NSString*) rankType
    completionHandler: (void (^)(NSArray<OAIAchievementShortResponse>* output, NSError* error)) handler {
    // verify the required parameter 'version' is set
    if (version == nil) {
        NSParameterAssert(version);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"version"] };
            NSError* error = [NSError errorWithDomain:kOAIAchievementApiErrorDomain code:kOAIAchievementApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'appKey' is set
    if (appKey == nil) {
        NSParameterAssert(appKey);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"appKey"] };
            NSError* error = [NSError errorWithDomain:kOAIAchievementApiErrorDomain code:kOAIAchievementApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'sortField' is set
    if (sortField == nil) {
        NSParameterAssert(sortField);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"sortField"] };
            NSError* error = [NSError errorWithDomain:kOAIAchievementApiErrorDomain code:kOAIAchievementApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'descending' is set
    if (descending == nil) {
        NSParameterAssert(descending);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"descending"] };
            NSError* error = [NSError errorWithDomain:kOAIAchievementApiErrorDomain code:kOAIAchievementApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'includeTiers' is set
    if (includeTiers == nil) {
        NSParameterAssert(includeTiers);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"includeTiers"] };
            NSError* error = [NSError errorWithDomain:kOAIAchievementApiErrorDomain code:kOAIAchievementApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'includeInactiveTiers' is set
    if (includeInactiveTiers == nil) {
        NSParameterAssert(includeInactiveTiers);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"includeInactiveTiers"] };
            NSError* error = [NSError errorWithDomain:kOAIAchievementApiErrorDomain code:kOAIAchievementApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'start' is set
    if (start == nil) {
        NSParameterAssert(start);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"start"] };
            NSError* error = [NSError errorWithDomain:kOAIAchievementApiErrorDomain code:kOAIAchievementApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'limit' is set
    if (limit == nil) {
        NSParameterAssert(limit);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"limit"] };
            NSError* error = [NSError errorWithDomain:kOAIAchievementApiErrorDomain code:kOAIAchievementApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/{version}/achievement/search"];

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
    if (keyword != nil) {
        queryParams[@"keyword"] = keyword;
    }
    if (achievementType != nil) {
        queryParams[@"achievementType"] = achievementType;
    }
    if (rankType != nil) {
        queryParams[@"rankType"] = rankType;
    }
    if (sortField != nil) {
        queryParams[@"sortField"] = sortField;
    }
    if (descending != nil) {
        queryParams[@"descending"] = [descending isEqual:@(YES)] ? @"true" : @"false";
    }
    if (includeTiers != nil) {
        queryParams[@"includeTiers"] = [includeTiers isEqual:@(YES)] ? @"true" : @"false";
    }
    if (includeInactiveTiers != nil) {
        queryParams[@"includeInactiveTiers"] = [includeInactiveTiers isEqual:@(YES)] ? @"true" : @"false";
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
                              responseType: @"NSArray<OAIAchievementShortResponse>*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSArray<OAIAchievementShortResponse>*)data, error);
                                }
                            }];
}

///
/// Update Achievement
/// Updates an achievement (for developer/retailer use). User must have permissions to the application the achievement is created for.
///  @param version  
///
///  @param deviceId a unique id given by the device (deviceId or accountId required) (optional)
///
///  @param accountId the account id of the user (deviceId or accountId required) (optional)
///
///  @param achievementId the achievement ID for updating an existing achievement (optional)
///
///  @param analyticsTag the analytics tag that will trigger when a user's achievement count gets updated (optional)
///
///  @param title the title of the achievement (255 character limit) (optional)
///
///  @param _description the description of the achievement (optional)
///
///  @param rankType the rank type for updating leader boards (optional)
///
///  @param rankIncrement determines how much the rank count is incremented (optional)
///
///  @param minIncrement restrict scores to be above or equal to this minimum value (optional)
///
///  @param nullMinIncrement enable to ignore usage of minIncrement (optional)
///
///  @param maxIncrement restrict scores to be below or equal to this maximum value (optional)
///
///  @param nullMaxIncrement enable to ignore usage of maxIncrement (optional)
///
///  @param validate determines whether the customId on analytics are used to validate a user's achievement progress. (optional)
///
///  @param active if it's active or inactive (optional)
///
///  @param triggerDefinition if provided will define what triggers to run after a tier is completed (optional)
///
///  @returns OAIAchievementResponse*
///
-(NSURLSessionTask*) updateAchievementWithVersion: (NSNumber*) version
    deviceId: (NSString*) deviceId
    accountId: (NSNumber*) accountId
    achievementId: (NSNumber*) achievementId
    analyticsTag: (NSString*) analyticsTag
    title: (NSString*) title
    _description: (NSString*) _description
    rankType: (NSString*) rankType
    rankIncrement: (NSNumber*) rankIncrement
    minIncrement: (NSNumber*) minIncrement
    nullMinIncrement: (NSNumber*) nullMinIncrement
    maxIncrement: (NSNumber*) maxIncrement
    nullMaxIncrement: (NSNumber*) nullMaxIncrement
    validate: (NSNumber*) validate
    active: (NSNumber*) active
    triggerDefinition: (NSString*) triggerDefinition
    completionHandler: (void (^)(OAIAchievementResponse* output, NSError* error)) handler {
    // verify the required parameter 'version' is set
    if (version == nil) {
        NSParameterAssert(version);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"version"] };
            NSError* error = [NSError errorWithDomain:kOAIAchievementApiErrorDomain code:kOAIAchievementApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/{version}/achievement/update"];

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
    if (achievementId != nil) {
        queryParams[@"achievementId"] = achievementId;
    }
    if (analyticsTag != nil) {
        queryParams[@"analyticsTag"] = analyticsTag;
    }
    if (title != nil) {
        queryParams[@"title"] = title;
    }
    if (_description != nil) {
        queryParams[@"description"] = _description;
    }
    if (rankType != nil) {
        queryParams[@"rankType"] = rankType;
    }
    if (rankIncrement != nil) {
        queryParams[@"rankIncrement"] = rankIncrement;
    }
    if (minIncrement != nil) {
        queryParams[@"minIncrement"] = minIncrement;
    }
    if (nullMinIncrement != nil) {
        queryParams[@"nullMinIncrement"] = [nullMinIncrement isEqual:@(YES)] ? @"true" : @"false";
    }
    if (maxIncrement != nil) {
        queryParams[@"maxIncrement"] = maxIncrement;
    }
    if (nullMaxIncrement != nil) {
        queryParams[@"nullMaxIncrement"] = [nullMaxIncrement isEqual:@(YES)] ? @"true" : @"false";
    }
    if (validate != nil) {
        queryParams[@"validate"] = [validate isEqual:@(YES)] ? @"true" : @"false";
    }
    if (active != nil) {
        queryParams[@"active"] = [active isEqual:@(YES)] ? @"true" : @"false";
    }
    if (triggerDefinition != nil) {
        queryParams[@"triggerDefinition"] = triggerDefinition;
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
                              responseType: @"OAIAchievementResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIAchievementResponse*)data, error);
                                }
                            }];
}

///
/// Update Achievement Tier
/// Updates a tier of an achievement (for developer/retailer use). User must have permissions to the application the achievement is created for.
///  @param version  
///
///  @param achievementTierId the achievement tier id for updating 
///
///  @param deviceId a unique id given by the device (deviceId or accountId required) (optional)
///
///  @param accountId the account id of the user (deviceId or accountId required) (optional)
///
///  @param icon achievement tier icon image file (optional)
///
///  @param iconAssetId the icon assetId, if icon is provided, icon will overrule (optional)
///
///  @param title the title of the achievement tier (optional)
///
///  @param _description the description of the achievement tier (optional)
///
///  @param goalCount the count requirement for completing the achievement tier (optional)
///
///  @param missionId The ID of the mission to associate with the achievement (optional)
///
///  @param gameId The ID of the game to associate with the achievement (optional)
///
///  @param packId The ID of the pack to associate with the achievement (optional)
///
///  @param gameLevelId The ID of the game level to associate with the achievement (optional)
///
///  @param gameObjectId The ID of the game object to associate with the achievement (optional)
///
///  @param scoreAllInstances score all instances (optional)
///
///  @returns OAIAchievementTierResponse*
///
-(NSURLSessionTask*) updateAchievementTierWithVersion: (NSNumber*) version
    achievementTierId: (NSNumber*) achievementTierId
    deviceId: (NSString*) deviceId
    accountId: (NSNumber*) accountId
    icon: (NSURL*) icon
    iconAssetId: (NSNumber*) iconAssetId
    title: (NSString*) title
    _description: (NSString*) _description
    goalCount: (NSNumber*) goalCount
    missionId: (NSNumber*) missionId
    gameId: (NSNumber*) gameId
    packId: (NSNumber*) packId
    gameLevelId: (NSNumber*) gameLevelId
    gameObjectId: (NSNumber*) gameObjectId
    scoreAllInstances: (NSNumber*) scoreAllInstances
    completionHandler: (void (^)(OAIAchievementTierResponse* output, NSError* error)) handler {
    // verify the required parameter 'version' is set
    if (version == nil) {
        NSParameterAssert(version);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"version"] };
            NSError* error = [NSError errorWithDomain:kOAIAchievementApiErrorDomain code:kOAIAchievementApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'achievementTierId' is set
    if (achievementTierId == nil) {
        NSParameterAssert(achievementTierId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"achievementTierId"] };
            NSError* error = [NSError errorWithDomain:kOAIAchievementApiErrorDomain code:kOAIAchievementApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/{version}/achievement/tier/update"];

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
    if (achievementTierId != nil) {
        queryParams[@"achievementTierId"] = achievementTierId;
    }
    if (icon != nil) {
        queryParams[@"icon"] = icon;
    }
    if (iconAssetId != nil) {
        queryParams[@"iconAssetId"] = iconAssetId;
    }
    if (title != nil) {
        queryParams[@"title"] = title;
    }
    if (_description != nil) {
        queryParams[@"description"] = _description;
    }
    if (goalCount != nil) {
        queryParams[@"goalCount"] = goalCount;
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
    if (scoreAllInstances != nil) {
        queryParams[@"scoreAllInstances"] = [scoreAllInstances isEqual:@(YES)] ? @"true" : @"false";
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
                              responseType: @"OAIAchievementTierResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIAchievementTierResponse*)data, error);
                                }
                            }];
}

///
/// Update Achievement Progress
/// Update user achievement progress.
///  @param version  
///
///  @param accountId the account id of the user 
///
///  @param achievementId the achievement id (achievementId or tag required) (optional)
///
///  @param tag the analytic tag to identify an achievement (achievementId or tag required) (optional)
///
///  @param customId a custom identifier used for validation (optional)
///
///  @param increment the amount to increment an achievement progress by (if no increment is sent in, the server defaults to using the achievement's rankIncrement value) (optional)
///
///  @param startDate a custom start date that the client can set (not yet used in server logic) (optional)
///
///  @param endDate a custom end date that the client can set (not yet used in server logic) (optional)
///
///  @param returnProgress determines whether to return the achievement progress response (optional)
///
///  @returns OAISirqulResponse*
///
-(NSURLSessionTask*) updateUserAchievementWithVersion: (NSNumber*) version
    accountId: (NSNumber*) accountId
    achievementId: (NSNumber*) achievementId
    tag: (NSString*) tag
    customId: (NSNumber*) customId
    increment: (NSNumber*) increment
    startDate: (NSNumber*) startDate
    endDate: (NSNumber*) endDate
    returnProgress: (NSNumber*) returnProgress
    completionHandler: (void (^)(OAISirqulResponse* output, NSError* error)) handler {
    // verify the required parameter 'version' is set
    if (version == nil) {
        NSParameterAssert(version);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"version"] };
            NSError* error = [NSError errorWithDomain:kOAIAchievementApiErrorDomain code:kOAIAchievementApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kOAIAchievementApiErrorDomain code:kOAIAchievementApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/{version}/achievement/progress/update"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (version != nil) {
        pathParams[@"version"] = version;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        queryParams[@"accountId"] = accountId;
    }
    if (achievementId != nil) {
        queryParams[@"achievementId"] = achievementId;
    }
    if (tag != nil) {
        queryParams[@"tag"] = tag;
    }
    if (customId != nil) {
        queryParams[@"customId"] = customId;
    }
    if (increment != nil) {
        queryParams[@"increment"] = increment;
    }
    if (startDate != nil) {
        queryParams[@"startDate"] = startDate;
    }
    if (endDate != nil) {
        queryParams[@"endDate"] = endDate;
    }
    if (returnProgress != nil) {
        queryParams[@"returnProgress"] = [returnProgress isEqual:@(YES)] ? @"true" : @"false";
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
