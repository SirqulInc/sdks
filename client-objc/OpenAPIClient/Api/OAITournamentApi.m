#import "OAITournamentApi.h"
#import "OAIQueryParamCollection.h"
#import "OAIApiClient.h"
#import "OAIMissionShortResponse.h"
#import "OAISirqulResponse.h"
#import "OAITournamentResponse.h"


@interface OAITournamentApi ()

@property (nonatomic, strong, readwrite) NSMutableDictionary *mutableDefaultHeaders;

@end

@implementation OAITournamentApi

NSString* kOAITournamentApiErrorDomain = @"OAITournamentApiErrorDomain";
NSInteger kOAITournamentApiMissingParamErrorCode = 234513;

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
/// Create Tournament
/// Create a tournament.
///  @param version  
///
///  @param accountId The logged in user. 
///
///  @param appKey The appKey the tournament is created for. 
///
///  @param title The title of the tournament 
///
///  @param costToPlay The number of tickets required to pay to enter the tournament 
///
///  @param startDate The date/time to start the tournament 
///
///  @param subType Custom string client apps can use for searching/filtering tournaments (optional)
///
///  @param imageAssetId The asset ID to attach to the tournament (optional)
///
///  @param secondsBetweenLevels The number of seconds in between the start of each tournament game/group (optional, default to @600)
///
///  @param secondsForTieBreaker The number of seconds to extend the round end time in the case of a tie breaker (optional, default to @600)
///
///  @param secondsBetweenPacks The number of seconds in between the start of each tournament round (optional, default to @86400)
///
///  @param maximumLevelLength The maximum number of seconds the match is expected to end at, which gets used to determine when a match should end when there is no activity (optional, default to @1800)
///
///  @param costToPlayType The type of ticket required to pay (optional)
///
///  @param minimumToPlay The minimum number of players required to sign up for the tournament to be played (optional, default to @1)
///
///  @param startingLimit The starting number of players for a tournament (filled with AI's) (optional)
///
///  @param availableLimit The maximum number of players for a tournament (currently 128 but not enforced) (optional)
///
///  @param _description The description of the tournament (optional)
///
///  @param metaData External custom client defined data (optional)
///
///  @param audienceIds The audiences associated with the tournament (optional)
///
///  @param active Activate/deactivate the tournament (optional)
///
///  @param enableBuyBack Determines whether to allow players to buy back into a tournament (optional, default to @(NO))
///
///  @param offerIds The list of offers to give as a reward beyond the tickets (optional)
///
///  @param offerAssetId The artwork ID to attach to the reward tickets offers (optional)
///
///  @param fixedReward If set then do not update the ticket reward, auto set to true if offerIds provided (optional, default to @(NO))
///
///  @param splitReward Set the rules for handling the reward in case of a tie, values: EVEN split the reward evenly ALL everyone gets the full reward value FIRST first score submitted RANDOM random player who scored (optional, default to @"ALL")
///
///  @param allocateTickets Flag to indicate owner should receive tickets for completed missions (optional)
///
///  @param tournamentData A text based string that will be passed into each tournament setup to populate the content (optional)
///
///  @param missionType The style of tournament to build, options are: TOURNAMENT, POOLPLAY (optional, default to @"MULTISTAGE")
///
///  @param visibility Sets the visibility flag for the tournament (optional, default to @"PUBLIC")
///
///  @param preliminaryGroups The number of initial preliminary groups in a multi-stage tournament (this is expected to be a power of two number) (optional, default to @1)
///
///  @param preliminaryGroupAdvancements This determines how many people can advance per round in a preliminary group (this is a comma separated list of integers) (optional, default to @"1")
///
///  @param enableMultipleEntries This determines if multiple submissions/entries are allowed in a multi-stage album tournament (optional, default to @(NO))
///
///  @param enableMultipleVotes This determines if users are allowed to vote multiple times per group in a multi-stage album tournament (optional, default to @(NO))
///
///  @param featured This determines whether the tournament is \"featured\" or not (optional, default to @(NO))
///
///  @param winnerTag This sets what analytic tag is used when a winner is determined (optional)
///
///  @param tieTag This sets what analytic tag is used when a tie has occurred (optional)
///
///  @returns OAITournamentResponse*
///
-(NSURLSessionTask*) createTournamentWithVersion: (NSNumber*) version
    accountId: (NSNumber*) accountId
    appKey: (NSString*) appKey
    title: (NSString*) title
    costToPlay: (NSNumber*) costToPlay
    startDate: (NSNumber*) startDate
    subType: (NSString*) subType
    imageAssetId: (NSNumber*) imageAssetId
    secondsBetweenLevels: (NSNumber*) secondsBetweenLevels
    secondsForTieBreaker: (NSNumber*) secondsForTieBreaker
    secondsBetweenPacks: (NSNumber*) secondsBetweenPacks
    maximumLevelLength: (NSNumber*) maximumLevelLength
    costToPlayType: (NSString*) costToPlayType
    minimumToPlay: (NSNumber*) minimumToPlay
    startingLimit: (NSNumber*) startingLimit
    availableLimit: (NSNumber*) availableLimit
    _description: (NSString*) _description
    metaData: (NSString*) metaData
    audienceIds: (NSString*) audienceIds
    active: (NSNumber*) active
    enableBuyBack: (NSNumber*) enableBuyBack
    offerIds: (NSString*) offerIds
    offerAssetId: (NSNumber*) offerAssetId
    fixedReward: (NSNumber*) fixedReward
    splitReward: (NSString*) splitReward
    allocateTickets: (NSNumber*) allocateTickets
    tournamentData: (NSString*) tournamentData
    missionType: (NSString*) missionType
    visibility: (NSString*) visibility
    preliminaryGroups: (NSNumber*) preliminaryGroups
    preliminaryGroupAdvancements: (NSString*) preliminaryGroupAdvancements
    enableMultipleEntries: (NSNumber*) enableMultipleEntries
    enableMultipleVotes: (NSNumber*) enableMultipleVotes
    featured: (NSNumber*) featured
    winnerTag: (NSString*) winnerTag
    tieTag: (NSString*) tieTag
    completionHandler: (void (^)(OAITournamentResponse* output, NSError* error)) handler {
    // verify the required parameter 'version' is set
    if (version == nil) {
        NSParameterAssert(version);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"version"] };
            NSError* error = [NSError errorWithDomain:kOAITournamentApiErrorDomain code:kOAITournamentApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kOAITournamentApiErrorDomain code:kOAITournamentApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'appKey' is set
    if (appKey == nil) {
        NSParameterAssert(appKey);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"appKey"] };
            NSError* error = [NSError errorWithDomain:kOAITournamentApiErrorDomain code:kOAITournamentApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'title' is set
    if (title == nil) {
        NSParameterAssert(title);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"title"] };
            NSError* error = [NSError errorWithDomain:kOAITournamentApiErrorDomain code:kOAITournamentApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'costToPlay' is set
    if (costToPlay == nil) {
        NSParameterAssert(costToPlay);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"costToPlay"] };
            NSError* error = [NSError errorWithDomain:kOAITournamentApiErrorDomain code:kOAITournamentApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'startDate' is set
    if (startDate == nil) {
        NSParameterAssert(startDate);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"startDate"] };
            NSError* error = [NSError errorWithDomain:kOAITournamentApiErrorDomain code:kOAITournamentApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/{version}/tournament/create"];

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
    if (title != nil) {
        queryParams[@"title"] = title;
    }
    if (subType != nil) {
        queryParams[@"subType"] = subType;
    }
    if (imageAssetId != nil) {
        queryParams[@"imageAssetId"] = imageAssetId;
    }
    if (secondsBetweenLevels != nil) {
        queryParams[@"secondsBetweenLevels"] = secondsBetweenLevels;
    }
    if (secondsForTieBreaker != nil) {
        queryParams[@"secondsForTieBreaker"] = secondsForTieBreaker;
    }
    if (secondsBetweenPacks != nil) {
        queryParams[@"secondsBetweenPacks"] = secondsBetweenPacks;
    }
    if (maximumLevelLength != nil) {
        queryParams[@"maximumLevelLength"] = maximumLevelLength;
    }
    if (costToPlay != nil) {
        queryParams[@"costToPlay"] = costToPlay;
    }
    if (costToPlayType != nil) {
        queryParams[@"costToPlayType"] = costToPlayType;
    }
    if (minimumToPlay != nil) {
        queryParams[@"minimumToPlay"] = minimumToPlay;
    }
    if (startingLimit != nil) {
        queryParams[@"startingLimit"] = startingLimit;
    }
    if (availableLimit != nil) {
        queryParams[@"availableLimit"] = availableLimit;
    }
    if (_description != nil) {
        queryParams[@"description"] = _description;
    }
    if (metaData != nil) {
        queryParams[@"metaData"] = metaData;
    }
    if (startDate != nil) {
        queryParams[@"startDate"] = startDate;
    }
    if (audienceIds != nil) {
        queryParams[@"audienceIds"] = audienceIds;
    }
    if (active != nil) {
        queryParams[@"active"] = [active isEqual:@(YES)] ? @"true" : @"false";
    }
    if (enableBuyBack != nil) {
        queryParams[@"enableBuyBack"] = [enableBuyBack isEqual:@(YES)] ? @"true" : @"false";
    }
    if (offerIds != nil) {
        queryParams[@"offerIds"] = offerIds;
    }
    if (offerAssetId != nil) {
        queryParams[@"offerAssetId"] = offerAssetId;
    }
    if (fixedReward != nil) {
        queryParams[@"fixedReward"] = [fixedReward isEqual:@(YES)] ? @"true" : @"false";
    }
    if (splitReward != nil) {
        queryParams[@"splitReward"] = splitReward;
    }
    if (allocateTickets != nil) {
        queryParams[@"allocateTickets"] = [allocateTickets isEqual:@(YES)] ? @"true" : @"false";
    }
    if (tournamentData != nil) {
        queryParams[@"tournamentData"] = tournamentData;
    }
    if (missionType != nil) {
        queryParams[@"missionType"] = missionType;
    }
    if (visibility != nil) {
        queryParams[@"visibility"] = visibility;
    }
    if (preliminaryGroups != nil) {
        queryParams[@"preliminaryGroups"] = preliminaryGroups;
    }
    if (preliminaryGroupAdvancements != nil) {
        queryParams[@"preliminaryGroupAdvancements"] = preliminaryGroupAdvancements;
    }
    if (enableMultipleEntries != nil) {
        queryParams[@"enableMultipleEntries"] = [enableMultipleEntries isEqual:@(YES)] ? @"true" : @"false";
    }
    if (enableMultipleVotes != nil) {
        queryParams[@"enableMultipleVotes"] = [enableMultipleVotes isEqual:@(YES)] ? @"true" : @"false";
    }
    if (featured != nil) {
        queryParams[@"featured"] = [featured isEqual:@(YES)] ? @"true" : @"false";
    }
    if (winnerTag != nil) {
        queryParams[@"winnerTag"] = winnerTag;
    }
    if (tieTag != nil) {
        queryParams[@"tieTag"] = tieTag;
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
                              responseType: @"OAITournamentResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAITournamentResponse*)data, error);
                                }
                            }];
}

///
/// Delete Tournament
/// Delete a tournament.
///  @param version  
///
///  @param accountId the id of the logged in user 
///
///  @param missionId the id of the mission to delete 
///
///  @returns OAISirqulResponse*
///
-(NSURLSessionTask*) deleteTournamentWithVersion: (NSNumber*) version
    accountId: (NSNumber*) accountId
    missionId: (NSNumber*) missionId
    completionHandler: (void (^)(OAISirqulResponse* output, NSError* error)) handler {
    // verify the required parameter 'version' is set
    if (version == nil) {
        NSParameterAssert(version);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"version"] };
            NSError* error = [NSError errorWithDomain:kOAITournamentApiErrorDomain code:kOAITournamentApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kOAITournamentApiErrorDomain code:kOAITournamentApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'missionId' is set
    if (missionId == nil) {
        NSParameterAssert(missionId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"missionId"] };
            NSError* error = [NSError errorWithDomain:kOAITournamentApiErrorDomain code:kOAITournamentApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/{version}/tournament/delete"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (version != nil) {
        pathParams[@"version"] = version;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        queryParams[@"accountId"] = accountId;
    }
    if (missionId != nil) {
        queryParams[@"missionId"] = missionId;
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
/// Get Tournament
/// Get a tournament.
///  @param version  
///
///  @param accountId The id of the logged in user 
///
///  @param missionId The id of the mission to return (either missionId or joinCode is required) (optional)
///
///  @param joinCode Optional identifier for getting the tournament (either missionId or joinCode is required) (optional)
///
///  @param includeScores Determines which type of scores are returned. Possible values include: ALL, MINE (optional)
///
///  @param objectPreviewSize Determines the max number of game objects that will get returned for each game level response (optional, default to @50)
///
///  @returns OAITournamentResponse*
///
-(NSURLSessionTask*) getTournamentWithVersion: (NSNumber*) version
    accountId: (NSNumber*) accountId
    missionId: (NSNumber*) missionId
    joinCode: (NSString*) joinCode
    includeScores: (NSString*) includeScores
    objectPreviewSize: (NSNumber*) objectPreviewSize
    completionHandler: (void (^)(OAITournamentResponse* output, NSError* error)) handler {
    // verify the required parameter 'version' is set
    if (version == nil) {
        NSParameterAssert(version);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"version"] };
            NSError* error = [NSError errorWithDomain:kOAITournamentApiErrorDomain code:kOAITournamentApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kOAITournamentApiErrorDomain code:kOAITournamentApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/{version}/tournament/get"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (version != nil) {
        pathParams[@"version"] = version;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        queryParams[@"accountId"] = accountId;
    }
    if (missionId != nil) {
        queryParams[@"missionId"] = missionId;
    }
    if (joinCode != nil) {
        queryParams[@"joinCode"] = joinCode;
    }
    if (includeScores != nil) {
        queryParams[@"includeScores"] = includeScores;
    }
    if (objectPreviewSize != nil) {
        queryParams[@"objectPreviewSize"] = objectPreviewSize;
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
                              responseType: @"OAITournamentResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAITournamentResponse*)data, error);
                                }
                            }];
}

///
/// Search Tournament Objects
/// Search on game objects of tournaments
///  @param version  
///
///  @param accountId the account ID 
///
///  @param gameLevelId the game level id to filter results by 
///
///  @param sortField the field to sort by (optional, default to @"PLAYER_SCORE_COUNT")
///
///  @param descending determines whether the sorted list is in descending or ascending order (optional, default to @(YES))
///
///  @param start the start index for pagination (optional, default to @0)
///
///  @param limit the limit for pagination (optional, default to @20)
///
///  @returns OAISirqulResponse*
///
-(NSURLSessionTask*) searchObjectsWithVersion: (NSNumber*) version
    accountId: (NSNumber*) accountId
    gameLevelId: (NSNumber*) gameLevelId
    sortField: (NSString*) sortField
    descending: (NSNumber*) descending
    start: (NSNumber*) start
    limit: (NSNumber*) limit
    completionHandler: (void (^)(OAISirqulResponse* output, NSError* error)) handler {
    // verify the required parameter 'version' is set
    if (version == nil) {
        NSParameterAssert(version);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"version"] };
            NSError* error = [NSError errorWithDomain:kOAITournamentApiErrorDomain code:kOAITournamentApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kOAITournamentApiErrorDomain code:kOAITournamentApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'gameLevelId' is set
    if (gameLevelId == nil) {
        NSParameterAssert(gameLevelId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"gameLevelId"] };
            NSError* error = [NSError errorWithDomain:kOAITournamentApiErrorDomain code:kOAITournamentApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/{version}/tournament/object/search"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (version != nil) {
        pathParams[@"version"] = version;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        queryParams[@"accountId"] = accountId;
    }
    if (gameLevelId != nil) {
        queryParams[@"gameLevelId"] = gameLevelId;
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
                              responseType: @"OAISirqulResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAISirqulResponse*)data, error);
                                }
                            }];
}

///
/// Search Tournament Rounds
/// Search for the user's tournament games.
///  @param version  
///
///  @param accountId the account ID 
///
///  @param appKey the application key 
///
///  @param status comma separated list of statuses to filter results by (optional, default to @"ACCEPTED,ACTIVE")
///
///  @param missionType The style of tournament to search for, options are: TOURNAMENT, POOLPLAY (optional)
///
///  @param currentOnly search for games that are flagged current only (optional, default to @(YES))
///
///  @param visibilities Filter tournament rounds by the mission visibility flag (optional, default to @"PUBLIC")
///
///  @param start the start index for pagination (optional, default to @0)
///
///  @param limit the limit for pagination (optional, default to @20)
///
///  @returns OAISirqulResponse*
///
-(NSURLSessionTask*) searchRoundsWithVersion: (NSNumber*) version
    accountId: (NSNumber*) accountId
    appKey: (NSString*) appKey
    status: (NSString*) status
    missionType: (NSString*) missionType
    currentOnly: (NSNumber*) currentOnly
    visibilities: (NSString*) visibilities
    start: (NSNumber*) start
    limit: (NSNumber*) limit
    completionHandler: (void (^)(OAISirqulResponse* output, NSError* error)) handler {
    // verify the required parameter 'version' is set
    if (version == nil) {
        NSParameterAssert(version);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"version"] };
            NSError* error = [NSError errorWithDomain:kOAITournamentApiErrorDomain code:kOAITournamentApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kOAITournamentApiErrorDomain code:kOAITournamentApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'appKey' is set
    if (appKey == nil) {
        NSParameterAssert(appKey);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"appKey"] };
            NSError* error = [NSError errorWithDomain:kOAITournamentApiErrorDomain code:kOAITournamentApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/{version}/tournament/round/search"];

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
    if (status != nil) {
        queryParams[@"status"] = status;
    }
    if (missionType != nil) {
        queryParams[@"missionType"] = missionType;
    }
    if (currentOnly != nil) {
        queryParams[@"currentOnly"] = [currentOnly isEqual:@(YES)] ? @"true" : @"false";
    }
    if (visibilities != nil) {
        queryParams[@"visibilities"] = visibilities;
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
                              responseType: @"OAISirqulResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAISirqulResponse*)data, error);
                                }
                            }];
}

///
/// Search Tournaments
/// Search for tournaments
///  @param version  
///
///  @param accountId The logged in user. 
///
///  @param appKey The application key 
///
///  @param keyword the keyword to search tournament on (optional)
///
///  @param subType filter results by subType (optional)
///
///  @param includeInactive whether to include inactives in the search or not (optional, default to @(NO))
///
///  @param missionTypes comma separated list of mission types to filter results, possbile values include: TOURNAMENT, POOLPLAY, MULTISTAGE (optional, default to @"MULTISTAGE,TOURNAMENT,POOLPLAY")
///
///  @param filter filter tournaments by the tournament's current state (optional, default to @"UPCOMING")
///
///  @param sortField which field to sort on (optional, default to @"START_DATE")
///
///  @param descending Determines whether to return results in descending order. The default value will be true if the filter is \"PAST\", otherwise the default value will be false. (optional)
///
///  @param visibility Comma separated list of visibility flags for search for, possible values include: PUBLIC, LISTABLE, REWARDABLE, TRIGGERABLE, PRIVATE (optional, default to @"PUBLIC")
///
///  @param start Start the result set at some index. (optional, default to @0)
///
///  @param limit Limit the result to some number (optional, default to @20)
///
///  @returns OAIMissionShortResponse*
///
-(NSURLSessionTask*) searchTournamentsWithVersion: (NSNumber*) version
    accountId: (NSNumber*) accountId
    appKey: (NSString*) appKey
    keyword: (NSString*) keyword
    subType: (NSString*) subType
    includeInactive: (NSNumber*) includeInactive
    missionTypes: (NSString*) missionTypes
    filter: (NSString*) filter
    sortField: (NSString*) sortField
    descending: (NSNumber*) descending
    visibility: (NSString*) visibility
    start: (NSNumber*) start
    limit: (NSNumber*) limit
    completionHandler: (void (^)(OAIMissionShortResponse* output, NSError* error)) handler {
    // verify the required parameter 'version' is set
    if (version == nil) {
        NSParameterAssert(version);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"version"] };
            NSError* error = [NSError errorWithDomain:kOAITournamentApiErrorDomain code:kOAITournamentApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kOAITournamentApiErrorDomain code:kOAITournamentApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'appKey' is set
    if (appKey == nil) {
        NSParameterAssert(appKey);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"appKey"] };
            NSError* error = [NSError errorWithDomain:kOAITournamentApiErrorDomain code:kOAITournamentApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/{version}/tournament/search"];

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
    if (keyword != nil) {
        queryParams[@"keyword"] = keyword;
    }
    if (subType != nil) {
        queryParams[@"subType"] = subType;
    }
    if (includeInactive != nil) {
        queryParams[@"includeInactive"] = [includeInactive isEqual:@(YES)] ? @"true" : @"false";
    }
    if (missionTypes != nil) {
        queryParams[@"missionTypes"] = missionTypes;
    }
    if (filter != nil) {
        queryParams[@"filter"] = filter;
    }
    if (sortField != nil) {
        queryParams[@"sortField"] = sortField;
    }
    if (descending != nil) {
        queryParams[@"descending"] = [descending isEqual:@(YES)] ? @"true" : @"false";
    }
    if (visibility != nil) {
        queryParams[@"visibility"] = visibility;
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
                              responseType: @"OAIMissionShortResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIMissionShortResponse*)data, error);
                                }
                            }];
}

///
/// Submit Tournament Score
/// Submit an array of scores for a tournament match. 
///  @param version  
///
///  @param accountId The logged in user account ID. 
///
///  @param appKey The application key. 
///
///  @param missionId The missionId to score for 
///
///  @param gameId The gameId to score for 
///
///  @param packId The packId to score for 
///
///  @param scores a JSON Array of scores to submit for a tournament match ```json [   {     \"accountId\": 2,     \"points\": 3   },   {     \"accountId\": 1777662,     \"points\": 7   } ] ```  
///
///  @param gameLevelId The gameLevelId to score for (optional)
///
///  @returns OAISirqulResponse*
///
-(NSURLSessionTask*) submitTournamentScoreWithVersion: (NSNumber*) version
    accountId: (NSNumber*) accountId
    appKey: (NSString*) appKey
    missionId: (NSNumber*) missionId
    gameId: (NSNumber*) gameId
    packId: (NSNumber*) packId
    scores: (NSString*) scores
    gameLevelId: (NSNumber*) gameLevelId
    completionHandler: (void (^)(OAISirqulResponse* output, NSError* error)) handler {
    // verify the required parameter 'version' is set
    if (version == nil) {
        NSParameterAssert(version);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"version"] };
            NSError* error = [NSError errorWithDomain:kOAITournamentApiErrorDomain code:kOAITournamentApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kOAITournamentApiErrorDomain code:kOAITournamentApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'appKey' is set
    if (appKey == nil) {
        NSParameterAssert(appKey);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"appKey"] };
            NSError* error = [NSError errorWithDomain:kOAITournamentApiErrorDomain code:kOAITournamentApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'missionId' is set
    if (missionId == nil) {
        NSParameterAssert(missionId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"missionId"] };
            NSError* error = [NSError errorWithDomain:kOAITournamentApiErrorDomain code:kOAITournamentApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'gameId' is set
    if (gameId == nil) {
        NSParameterAssert(gameId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"gameId"] };
            NSError* error = [NSError errorWithDomain:kOAITournamentApiErrorDomain code:kOAITournamentApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'packId' is set
    if (packId == nil) {
        NSParameterAssert(packId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"packId"] };
            NSError* error = [NSError errorWithDomain:kOAITournamentApiErrorDomain code:kOAITournamentApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'scores' is set
    if (scores == nil) {
        NSParameterAssert(scores);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"scores"] };
            NSError* error = [NSError errorWithDomain:kOAITournamentApiErrorDomain code:kOAITournamentApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/{version}/tournament/score"];

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
    if (scores != nil) {
        queryParams[@"scores"] = scores;
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
/// Submit a vote for a multi-stage album tournament.
/// Submit a vote for a multi-stage album tournament.
///  @param version  
///
///  @param accountId The logged in user. 
///
///  @param appKey The application to target 
///
///  @param missionId The tournament's primary id 
///
///  @param gameObjectId The tournament game object the user wants to vote on 
///
///  @param deviceId The unique id of the device making the request (optional) (optional)
///
///  @param checkIfDeviceAlreadyVoted When true, check if the device already voted to prevent duplicate votes from the same device (optional, default to @(NO))
///
///  @returns OAISirqulResponse*
///
-(NSURLSessionTask*) submitTournamentVoteWithVersion: (NSNumber*) version
    accountId: (NSNumber*) accountId
    appKey: (NSString*) appKey
    missionId: (NSNumber*) missionId
    gameObjectId: (NSNumber*) gameObjectId
    deviceId: (NSString*) deviceId
    checkIfDeviceAlreadyVoted: (NSNumber*) checkIfDeviceAlreadyVoted
    completionHandler: (void (^)(OAISirqulResponse* output, NSError* error)) handler {
    // verify the required parameter 'version' is set
    if (version == nil) {
        NSParameterAssert(version);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"version"] };
            NSError* error = [NSError errorWithDomain:kOAITournamentApiErrorDomain code:kOAITournamentApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kOAITournamentApiErrorDomain code:kOAITournamentApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'appKey' is set
    if (appKey == nil) {
        NSParameterAssert(appKey);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"appKey"] };
            NSError* error = [NSError errorWithDomain:kOAITournamentApiErrorDomain code:kOAITournamentApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'missionId' is set
    if (missionId == nil) {
        NSParameterAssert(missionId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"missionId"] };
            NSError* error = [NSError errorWithDomain:kOAITournamentApiErrorDomain code:kOAITournamentApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'gameObjectId' is set
    if (gameObjectId == nil) {
        NSParameterAssert(gameObjectId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"gameObjectId"] };
            NSError* error = [NSError errorWithDomain:kOAITournamentApiErrorDomain code:kOAITournamentApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/{version}/tournament/vote"];

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
    if (gameObjectId != nil) {
        queryParams[@"gameObjectId"] = gameObjectId;
    }
    if (checkIfDeviceAlreadyVoted != nil) {
        queryParams[@"checkIfDeviceAlreadyVoted"] = [checkIfDeviceAlreadyVoted isEqual:@(YES)] ? @"true" : @"false";
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
/// Substitute Tournament Player
/// Service to replace the user's opponent in the current level - pack - mission with an AI account.
///  @param version  
///
///  @param accountId the id of the logged in user 
///
///  @param missionId the id of the mission 
///
///  @param packId the id of the pack 
///
///  @param gameLevelId the id of the game level 
///
///  @returns OAISirqulResponse*
///
-(NSURLSessionTask*) substituteTournamentPlayerWithVersion: (NSNumber*) version
    accountId: (NSNumber*) accountId
    missionId: (NSNumber*) missionId
    packId: (NSNumber*) packId
    gameLevelId: (NSNumber*) gameLevelId
    completionHandler: (void (^)(OAISirqulResponse* output, NSError* error)) handler {
    // verify the required parameter 'version' is set
    if (version == nil) {
        NSParameterAssert(version);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"version"] };
            NSError* error = [NSError errorWithDomain:kOAITournamentApiErrorDomain code:kOAITournamentApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kOAITournamentApiErrorDomain code:kOAITournamentApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'missionId' is set
    if (missionId == nil) {
        NSParameterAssert(missionId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"missionId"] };
            NSError* error = [NSError errorWithDomain:kOAITournamentApiErrorDomain code:kOAITournamentApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'packId' is set
    if (packId == nil) {
        NSParameterAssert(packId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"packId"] };
            NSError* error = [NSError errorWithDomain:kOAITournamentApiErrorDomain code:kOAITournamentApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'gameLevelId' is set
    if (gameLevelId == nil) {
        NSParameterAssert(gameLevelId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"gameLevelId"] };
            NSError* error = [NSError errorWithDomain:kOAITournamentApiErrorDomain code:kOAITournamentApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/{version}/tournament/substitute"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (version != nil) {
        pathParams[@"version"] = version;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        queryParams[@"accountId"] = accountId;
    }
    if (missionId != nil) {
        queryParams[@"missionId"] = missionId;
    }
    if (packId != nil) {
        queryParams[@"packId"] = packId;
    }
    if (gameLevelId != nil) {
        queryParams[@"gameLevelId"] = gameLevelId;
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
/// Update Tournament
/// Update a tournament.
///  @param version  
///
///  @param accountId The logged in user. 
///
///  @param missionId The mission/tournament to update 
///
///  @param title The title of the tournament (optional)
///
///  @param subType Custom string client apps can use for searching/filtering missions (optional)
///
///  @param imageAssetId The asset ID to attach to the tournament (optional)
///
///  @param secondsBetweenLevels The number of seconds in between the start of each tournament game (optional)
///
///  @param secondsForTieBreaker The number of seconds to extend the round end time in the case of a tie breaker (optional)
///
///  @param secondsBetweenPacks The number of seconds in between the start of each tournament round (optional)
///
///  @param maximumLevelLength The maximum number of seconds the match is expected to end at, which gets used to determine when a match should end when there is no activity (optional)
///
///  @param costToPlay The number of tickets required to pay to enter the tournament (optional)
///
///  @param costToPlayType The type of ticket required to pay (optional)
///
///  @param minimumToPlay The minimum number of players required to sign up for the tournament to be played (optional)
///
///  @param startingLimit The starting number of players for a tournament (filled with AI's) (optional)
///
///  @param availableLimit The maximum number of players for a tournament (currently 128 but not enforced) (optional)
///
///  @param _description The description of the tournament (optional)
///
///  @param metaData External custom client defined data (optional)
///
///  @param startDate The date/time to start the tournament (optional)
///
///  @param audienceIds The audiences associated with the tournament (optional)
///
///  @param active Activate/deactivate the mission (optional)
///
///  @param enableBuyBack Determines whether to allow players to buy back into a tournament (optional)
///
///  @param offerIds The list of offers to give as a reward beyond the tickets (optional)
///
///  @param offerAssetId The artwork ID to attach to the reward offer (optional)
///
///  @param fixedReward If set then do not update the ticket reward, auto set to true if offerIds provided (optional)
///
///  @param splitReward Set the rules for handling the reward in case of a tie, values: EVEN split the reward evenly ALL everyone gets the full reward value FIRST first score submitted RANDOM random player who scored (optional)
///
///  @param allocateTickets Flag to indicate owner should receive tickets for completed missions (optional)
///
///  @param tournamentData A text based string that will be passed into each tournament setup to populate the content (optional)
///
///  @param visibility Sets the visibility flag for the tournament (optional)
///
///  @param preliminaryGroups The number of initial preliminary groups in a multi-stage tournament (this is expected to be a power of two number) (optional)
///
///  @param preliminaryGroupAdvancements This determines how many people can advance per round in a preliminary group (this is a comma separated list of integers) (optional)
///
///  @param enableMultipleEntries This determines if multiple submissions/entries are allowed in a multi-stage album tournament (optional)
///
///  @param enableMultipleVotes This determines if users are allowed to vote multiple times per group in a multi-stage album tournament (optional)
///
///  @param featured This determines whether the tournament is \"featured\" or not (optional)
///
///  @param winnerTag This sets what analytic tag is used when a winner is determined (optional)
///
///  @param tieTag This sets what analytic tag is used when a winner is determined (optional)
///
///  @returns OAITournamentResponse*
///
-(NSURLSessionTask*) updateTournamentWithVersion: (NSNumber*) version
    accountId: (NSNumber*) accountId
    missionId: (NSNumber*) missionId
    title: (NSString*) title
    subType: (NSString*) subType
    imageAssetId: (NSNumber*) imageAssetId
    secondsBetweenLevels: (NSNumber*) secondsBetweenLevels
    secondsForTieBreaker: (NSNumber*) secondsForTieBreaker
    secondsBetweenPacks: (NSNumber*) secondsBetweenPacks
    maximumLevelLength: (NSNumber*) maximumLevelLength
    costToPlay: (NSNumber*) costToPlay
    costToPlayType: (NSString*) costToPlayType
    minimumToPlay: (NSNumber*) minimumToPlay
    startingLimit: (NSNumber*) startingLimit
    availableLimit: (NSNumber*) availableLimit
    _description: (NSString*) _description
    metaData: (NSString*) metaData
    startDate: (NSNumber*) startDate
    audienceIds: (NSString*) audienceIds
    active: (NSNumber*) active
    enableBuyBack: (NSNumber*) enableBuyBack
    offerIds: (NSString*) offerIds
    offerAssetId: (NSNumber*) offerAssetId
    fixedReward: (NSNumber*) fixedReward
    splitReward: (NSString*) splitReward
    allocateTickets: (NSNumber*) allocateTickets
    tournamentData: (NSString*) tournamentData
    visibility: (NSString*) visibility
    preliminaryGroups: (NSNumber*) preliminaryGroups
    preliminaryGroupAdvancements: (NSString*) preliminaryGroupAdvancements
    enableMultipleEntries: (NSNumber*) enableMultipleEntries
    enableMultipleVotes: (NSNumber*) enableMultipleVotes
    featured: (NSNumber*) featured
    winnerTag: (NSString*) winnerTag
    tieTag: (NSString*) tieTag
    completionHandler: (void (^)(OAITournamentResponse* output, NSError* error)) handler {
    // verify the required parameter 'version' is set
    if (version == nil) {
        NSParameterAssert(version);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"version"] };
            NSError* error = [NSError errorWithDomain:kOAITournamentApiErrorDomain code:kOAITournamentApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kOAITournamentApiErrorDomain code:kOAITournamentApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'missionId' is set
    if (missionId == nil) {
        NSParameterAssert(missionId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"missionId"] };
            NSError* error = [NSError errorWithDomain:kOAITournamentApiErrorDomain code:kOAITournamentApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/{version}/tournament/update"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (version != nil) {
        pathParams[@"version"] = version;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        queryParams[@"accountId"] = accountId;
    }
    if (missionId != nil) {
        queryParams[@"missionId"] = missionId;
    }
    if (title != nil) {
        queryParams[@"title"] = title;
    }
    if (subType != nil) {
        queryParams[@"subType"] = subType;
    }
    if (imageAssetId != nil) {
        queryParams[@"imageAssetId"] = imageAssetId;
    }
    if (secondsBetweenLevels != nil) {
        queryParams[@"secondsBetweenLevels"] = secondsBetweenLevels;
    }
    if (secondsForTieBreaker != nil) {
        queryParams[@"secondsForTieBreaker"] = secondsForTieBreaker;
    }
    if (secondsBetweenPacks != nil) {
        queryParams[@"secondsBetweenPacks"] = secondsBetweenPacks;
    }
    if (maximumLevelLength != nil) {
        queryParams[@"maximumLevelLength"] = maximumLevelLength;
    }
    if (costToPlay != nil) {
        queryParams[@"costToPlay"] = costToPlay;
    }
    if (costToPlayType != nil) {
        queryParams[@"costToPlayType"] = costToPlayType;
    }
    if (minimumToPlay != nil) {
        queryParams[@"minimumToPlay"] = minimumToPlay;
    }
    if (startingLimit != nil) {
        queryParams[@"startingLimit"] = startingLimit;
    }
    if (availableLimit != nil) {
        queryParams[@"availableLimit"] = availableLimit;
    }
    if (_description != nil) {
        queryParams[@"description"] = _description;
    }
    if (metaData != nil) {
        queryParams[@"metaData"] = metaData;
    }
    if (startDate != nil) {
        queryParams[@"startDate"] = startDate;
    }
    if (audienceIds != nil) {
        queryParams[@"audienceIds"] = audienceIds;
    }
    if (active != nil) {
        queryParams[@"active"] = [active isEqual:@(YES)] ? @"true" : @"false";
    }
    if (enableBuyBack != nil) {
        queryParams[@"enableBuyBack"] = [enableBuyBack isEqual:@(YES)] ? @"true" : @"false";
    }
    if (offerIds != nil) {
        queryParams[@"offerIds"] = offerIds;
    }
    if (offerAssetId != nil) {
        queryParams[@"offerAssetId"] = offerAssetId;
    }
    if (fixedReward != nil) {
        queryParams[@"fixedReward"] = [fixedReward isEqual:@(YES)] ? @"true" : @"false";
    }
    if (splitReward != nil) {
        queryParams[@"splitReward"] = splitReward;
    }
    if (allocateTickets != nil) {
        queryParams[@"allocateTickets"] = [allocateTickets isEqual:@(YES)] ? @"true" : @"false";
    }
    if (tournamentData != nil) {
        queryParams[@"tournamentData"] = tournamentData;
    }
    if (visibility != nil) {
        queryParams[@"visibility"] = visibility;
    }
    if (preliminaryGroups != nil) {
        queryParams[@"preliminaryGroups"] = preliminaryGroups;
    }
    if (preliminaryGroupAdvancements != nil) {
        queryParams[@"preliminaryGroupAdvancements"] = preliminaryGroupAdvancements;
    }
    if (enableMultipleEntries != nil) {
        queryParams[@"enableMultipleEntries"] = [enableMultipleEntries isEqual:@(YES)] ? @"true" : @"false";
    }
    if (enableMultipleVotes != nil) {
        queryParams[@"enableMultipleVotes"] = [enableMultipleVotes isEqual:@(YES)] ? @"true" : @"false";
    }
    if (featured != nil) {
        queryParams[@"featured"] = [featured isEqual:@(YES)] ? @"true" : @"false";
    }
    if (winnerTag != nil) {
        queryParams[@"winnerTag"] = winnerTag;
    }
    if (tieTag != nil) {
        queryParams[@"tieTag"] = tieTag;
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
                              responseType: @"OAITournamentResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAITournamentResponse*)data, error);
                                }
                            }];
}



@end
