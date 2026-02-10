#import "OAIPackApi.h"
#import "OAIQueryParamCollection.h"
#import "OAIApiClient.h"
#import "OAIPackResponse.h"
#import "OAISirqulResponse.h"


@interface OAIPackApi ()

@property (nonatomic, strong, readwrite) NSMutableDictionary *mutableDefaultHeaders;

@end

@implementation OAIPackApi

NSString* kOAIPackApiErrorDomain = @"OAIPackApiErrorDomain";
NSInteger kOAIPackApiMissingParamErrorCode = 234513;

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
/// Create Pack
/// Create a pack.
///  @param version  
///
///  @param accountId The logged in user. 
///
///  @param title The title of the pack 
///
///  @param packOrder The order of the pack 
///
///  @param price The price in tickets to purchase this pack 
///
///  @param highest The scoring is highest is best 
///
///  @param allocateTickets Flag to indicate owner should receive tickets for completed packs 
///
///  @param ticketCount The number of tickets to reward 
///
///  @param _description The description of the pack (optional)
///
///  @param searchTags The tags for searching the pack, comma separated (optional)
///
///  @param active Activate/deactivate the pack (optional)
///
///  @param gameType This parameter is deprecated. (optional)
///
///  @param appKey The application key used to identify the application (optional)
///
///  @param packType The type of the pack (optional)
///
///  @param sequenceType The type of game sequence of the pack (optional)
///
///  @param backgroundId The background asset id of the pack (optional)
///
///  @param imageId The image asset id of the pack (optional)
///
///  @param startDate The date/time to start the pack, send 0 to unset (optional)
///
///  @param endDate The date/time to end the pack, send 0 to unset (optional)
///
///  @param authorOverride  (optional)
///
///  @param priceType the type of ticket required to purchase this pack (optional)
///
///  @param gameLevelIds the game level ids to include in the pack, comma separated (optional)
///
///  @param inGame  (optional)
///
///  @param ticketType The type of ticket to reward, null means default type (optional)
///
///  @param points The number of points to award for completing a pack (optional)
///
///  @returns OAIPackResponse*
///
-(NSURLSessionTask*) createPackWithVersion: (NSNumber*) version
    accountId: (NSNumber*) accountId
    title: (NSString*) title
    packOrder: (NSNumber*) packOrder
    price: (NSNumber*) price
    highest: (NSNumber*) highest
    allocateTickets: (NSNumber*) allocateTickets
    ticketCount: (NSNumber*) ticketCount
    _description: (NSString*) _description
    searchTags: (NSString*) searchTags
    active: (NSNumber*) active
    gameType: (NSString*) gameType
    appKey: (NSString*) appKey
    packType: (NSString*) packType
    sequenceType: (NSString*) sequenceType
    backgroundId: (NSNumber*) backgroundId
    imageId: (NSNumber*) imageId
    startDate: (NSNumber*) startDate
    endDate: (NSNumber*) endDate
    authorOverride: (NSString*) authorOverride
    priceType: (NSString*) priceType
    gameLevelIds: (NSString*) gameLevelIds
    inGame: (NSNumber*) inGame
    ticketType: (NSString*) ticketType
    points: (NSNumber*) points
    completionHandler: (void (^)(OAIPackResponse* output, NSError* error)) handler {
    // verify the required parameter 'version' is set
    if (version == nil) {
        NSParameterAssert(version);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"version"] };
            NSError* error = [NSError errorWithDomain:kOAIPackApiErrorDomain code:kOAIPackApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kOAIPackApiErrorDomain code:kOAIPackApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'title' is set
    if (title == nil) {
        NSParameterAssert(title);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"title"] };
            NSError* error = [NSError errorWithDomain:kOAIPackApiErrorDomain code:kOAIPackApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'packOrder' is set
    if (packOrder == nil) {
        NSParameterAssert(packOrder);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"packOrder"] };
            NSError* error = [NSError errorWithDomain:kOAIPackApiErrorDomain code:kOAIPackApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'price' is set
    if (price == nil) {
        NSParameterAssert(price);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"price"] };
            NSError* error = [NSError errorWithDomain:kOAIPackApiErrorDomain code:kOAIPackApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'highest' is set
    if (highest == nil) {
        NSParameterAssert(highest);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"highest"] };
            NSError* error = [NSError errorWithDomain:kOAIPackApiErrorDomain code:kOAIPackApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'allocateTickets' is set
    if (allocateTickets == nil) {
        NSParameterAssert(allocateTickets);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"allocateTickets"] };
            NSError* error = [NSError errorWithDomain:kOAIPackApiErrorDomain code:kOAIPackApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'ticketCount' is set
    if (ticketCount == nil) {
        NSParameterAssert(ticketCount);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"ticketCount"] };
            NSError* error = [NSError errorWithDomain:kOAIPackApiErrorDomain code:kOAIPackApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/{version}/pack/create"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (version != nil) {
        pathParams[@"version"] = version;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        queryParams[@"accountId"] = accountId;
    }
    if (title != nil) {
        queryParams[@"title"] = title;
    }
    if (_description != nil) {
        queryParams[@"description"] = _description;
    }
    if (searchTags != nil) {
        queryParams[@"searchTags"] = searchTags;
    }
    if (active != nil) {
        queryParams[@"active"] = [active isEqual:@(YES)] ? @"true" : @"false";
    }
    if (gameType != nil) {
        queryParams[@"gameType"] = gameType;
    }
    if (appKey != nil) {
        queryParams[@"appKey"] = appKey;
    }
    if (packType != nil) {
        queryParams[@"packType"] = packType;
    }
    if (packOrder != nil) {
        queryParams[@"packOrder"] = packOrder;
    }
    if (sequenceType != nil) {
        queryParams[@"sequenceType"] = sequenceType;
    }
    if (backgroundId != nil) {
        queryParams[@"backgroundId"] = backgroundId;
    }
    if (imageId != nil) {
        queryParams[@"imageId"] = imageId;
    }
    if (startDate != nil) {
        queryParams[@"startDate"] = startDate;
    }
    if (endDate != nil) {
        queryParams[@"endDate"] = endDate;
    }
    if (authorOverride != nil) {
        queryParams[@"authorOverride"] = authorOverride;
    }
    if (price != nil) {
        queryParams[@"price"] = price;
    }
    if (priceType != nil) {
        queryParams[@"priceType"] = priceType;
    }
    if (gameLevelIds != nil) {
        queryParams[@"gameLevelIds"] = gameLevelIds;
    }
    if (inGame != nil) {
        queryParams[@"inGame"] = [inGame isEqual:@(YES)] ? @"true" : @"false";
    }
    if (highest != nil) {
        queryParams[@"highest"] = [highest isEqual:@(YES)] ? @"true" : @"false";
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
                              responseType: @"OAIPackResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIPackResponse*)data, error);
                                }
                            }];
}

///
/// Delete Pack
/// Delete a pack.
///  @param version  
///
///  @param accountId the id of the logged in user 
///
///  @param packId the id of the pack to delete 
///
///  @returns OAISirqulResponse*
///
-(NSURLSessionTask*) deletePackWithVersion: (NSNumber*) version
    accountId: (NSNumber*) accountId
    packId: (NSNumber*) packId
    completionHandler: (void (^)(OAISirqulResponse* output, NSError* error)) handler {
    // verify the required parameter 'version' is set
    if (version == nil) {
        NSParameterAssert(version);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"version"] };
            NSError* error = [NSError errorWithDomain:kOAIPackApiErrorDomain code:kOAIPackApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kOAIPackApiErrorDomain code:kOAIPackApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'packId' is set
    if (packId == nil) {
        NSParameterAssert(packId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"packId"] };
            NSError* error = [NSError errorWithDomain:kOAIPackApiErrorDomain code:kOAIPackApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/{version}/pack/delete"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (version != nil) {
        pathParams[@"version"] = version;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        queryParams[@"accountId"] = accountId;
    }
    if (packId != nil) {
        queryParams[@"packId"] = packId;
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
/// Get Pack
/// Get a pack.
///  @param version  
///
///  @param accountId The logged in user. 
///
///  @param packId The id of the pack to return. 
///
///  @param includeGameData If true include the game level data, otherwise don't. default is false. 
///
///  @returns OAIPackResponse*
///
-(NSURLSessionTask*) getPackWithVersion: (NSNumber*) version
    accountId: (NSNumber*) accountId
    packId: (NSNumber*) packId
    includeGameData: (NSNumber*) includeGameData
    completionHandler: (void (^)(OAIPackResponse* output, NSError* error)) handler {
    // verify the required parameter 'version' is set
    if (version == nil) {
        NSParameterAssert(version);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"version"] };
            NSError* error = [NSError errorWithDomain:kOAIPackApiErrorDomain code:kOAIPackApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kOAIPackApiErrorDomain code:kOAIPackApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'packId' is set
    if (packId == nil) {
        NSParameterAssert(packId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"packId"] };
            NSError* error = [NSError errorWithDomain:kOAIPackApiErrorDomain code:kOAIPackApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'includeGameData' is set
    if (includeGameData == nil) {
        NSParameterAssert(includeGameData);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"includeGameData"] };
            NSError* error = [NSError errorWithDomain:kOAIPackApiErrorDomain code:kOAIPackApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/{version}/pack/get"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (version != nil) {
        pathParams[@"version"] = version;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        queryParams[@"accountId"] = accountId;
    }
    if (packId != nil) {
        queryParams[@"packId"] = packId;
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
                              responseType: @"OAIPackResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIPackResponse*)data, error);
                                }
                            }];
}

///
/// Search Packs
/// Search on packs.
///  @param version  
///
///  @param accountId The logged in user. 
///
///  @param sortField The field to sort by. Possible values include: TITLE, DESCRIPTION, CREATED, UPDATED 
///
///  @param descending Determines whether the sorted list is in descending or ascending order 
///
///  @param keyword Keyword search on the pack name (optional)
///
///  @param packType Filters results on pack type (optional)
///
///  @param start Start the result set at some index. (optional)
///
///  @param limit Limit the result to some number. (optional)
///
///  @param includeGameData Determines whether to include game data in the results (optional)
///
///  @param includeInactive Determines whether to include inactive results (optional)
///
///  @param appKey The application to filter results on (optional)
///
///  @returns NSArray<OAIPackResponse>*
///
-(NSURLSessionTask*) searchPacksWithVersion: (NSNumber*) version
    accountId: (NSNumber*) accountId
    sortField: (NSString*) sortField
    descending: (NSNumber*) descending
    keyword: (NSString*) keyword
    packType: (NSString*) packType
    start: (NSNumber*) start
    limit: (NSNumber*) limit
    includeGameData: (NSNumber*) includeGameData
    includeInactive: (NSNumber*) includeInactive
    appKey: (NSString*) appKey
    completionHandler: (void (^)(NSArray<OAIPackResponse>* output, NSError* error)) handler {
    // verify the required parameter 'version' is set
    if (version == nil) {
        NSParameterAssert(version);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"version"] };
            NSError* error = [NSError errorWithDomain:kOAIPackApiErrorDomain code:kOAIPackApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kOAIPackApiErrorDomain code:kOAIPackApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'sortField' is set
    if (sortField == nil) {
        NSParameterAssert(sortField);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"sortField"] };
            NSError* error = [NSError errorWithDomain:kOAIPackApiErrorDomain code:kOAIPackApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'descending' is set
    if (descending == nil) {
        NSParameterAssert(descending);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"descending"] };
            NSError* error = [NSError errorWithDomain:kOAIPackApiErrorDomain code:kOAIPackApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/{version}/pack/search"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (version != nil) {
        pathParams[@"version"] = version;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        queryParams[@"accountId"] = accountId;
    }
    if (keyword != nil) {
        queryParams[@"keyword"] = keyword;
    }
    if (packType != nil) {
        queryParams[@"packType"] = packType;
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
    if (includeGameData != nil) {
        queryParams[@"includeGameData"] = [includeGameData isEqual:@(YES)] ? @"true" : @"false";
    }
    if (includeInactive != nil) {
        queryParams[@"includeInactive"] = [includeInactive isEqual:@(YES)] ? @"true" : @"false";
    }
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
                              responseType: @"NSArray<OAIPackResponse>*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSArray<OAIPackResponse>*)data, error);
                                }
                            }];
}

///
/// Update Pack
/// Update a pack.
///  @param version  
///
///  @param accountId The logged in user. 
///
///  @param packId The id of the pack to update. 
///
///  @param allocateTickets Flag to indicate owner should receive tickets for completed packs 
///
///  @param ticketCount The number of tickets to reward 
///
///  @param title The title of the pack (optional)
///
///  @param _description The description of the pack (optional)
///
///  @param searchTags The tags for searching the pack, comma separated (optional)
///
///  @param active Activate/deactivate the pack (optional)
///
///  @param gameType This parameter is deprecated. (optional)
///
///  @param appKey The application key used to identify the application (optional)
///
///  @param packType The type of the pack (optional)
///
///  @param packOrder The order of the pack (optional)
///
///  @param sequenceType The type of game sequence of the pack (optional)
///
///  @param backgroundId The background asset id of the pack (optional)
///
///  @param imageId The image asset id of the pack (optional)
///
///  @param startDate The date/time to start the pack, send 0 to unset (optional)
///
///  @param endDate The date/time to end the pack, send 0 to unset (optional)
///
///  @param authorOverride  (optional)
///
///  @param price The price in tickets to purchase this pack (optional)
///
///  @param priceType the type of ticket required to purchase this pack (optional)
///
///  @param gameLevelIds the game level ids to include in the pack, comma separated (optional)
///
///  @param inGame  (optional)
///
///  @param highest The scoring is highest is best (optional)
///
///  @param ticketType The type of ticket to reward, null means default type (optional)
///
///  @param points The number of points to award for completing a pack (optional)
///
///  @returns OAIPackResponse*
///
-(NSURLSessionTask*) updatePackWithVersion: (NSNumber*) version
    accountId: (NSNumber*) accountId
    packId: (NSNumber*) packId
    allocateTickets: (NSNumber*) allocateTickets
    ticketCount: (NSNumber*) ticketCount
    title: (NSString*) title
    _description: (NSString*) _description
    searchTags: (NSString*) searchTags
    active: (NSNumber*) active
    gameType: (NSString*) gameType
    appKey: (NSString*) appKey
    packType: (NSString*) packType
    packOrder: (NSNumber*) packOrder
    sequenceType: (NSString*) sequenceType
    backgroundId: (NSNumber*) backgroundId
    imageId: (NSNumber*) imageId
    startDate: (NSNumber*) startDate
    endDate: (NSNumber*) endDate
    authorOverride: (NSString*) authorOverride
    price: (NSNumber*) price
    priceType: (NSString*) priceType
    gameLevelIds: (NSString*) gameLevelIds
    inGame: (NSNumber*) inGame
    highest: (NSNumber*) highest
    ticketType: (NSString*) ticketType
    points: (NSNumber*) points
    completionHandler: (void (^)(OAIPackResponse* output, NSError* error)) handler {
    // verify the required parameter 'version' is set
    if (version == nil) {
        NSParameterAssert(version);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"version"] };
            NSError* error = [NSError errorWithDomain:kOAIPackApiErrorDomain code:kOAIPackApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kOAIPackApiErrorDomain code:kOAIPackApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'packId' is set
    if (packId == nil) {
        NSParameterAssert(packId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"packId"] };
            NSError* error = [NSError errorWithDomain:kOAIPackApiErrorDomain code:kOAIPackApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'allocateTickets' is set
    if (allocateTickets == nil) {
        NSParameterAssert(allocateTickets);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"allocateTickets"] };
            NSError* error = [NSError errorWithDomain:kOAIPackApiErrorDomain code:kOAIPackApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'ticketCount' is set
    if (ticketCount == nil) {
        NSParameterAssert(ticketCount);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"ticketCount"] };
            NSError* error = [NSError errorWithDomain:kOAIPackApiErrorDomain code:kOAIPackApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/{version}/pack/update"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (version != nil) {
        pathParams[@"version"] = version;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        queryParams[@"accountId"] = accountId;
    }
    if (packId != nil) {
        queryParams[@"packId"] = packId;
    }
    if (title != nil) {
        queryParams[@"title"] = title;
    }
    if (_description != nil) {
        queryParams[@"description"] = _description;
    }
    if (searchTags != nil) {
        queryParams[@"searchTags"] = searchTags;
    }
    if (active != nil) {
        queryParams[@"active"] = [active isEqual:@(YES)] ? @"true" : @"false";
    }
    if (gameType != nil) {
        queryParams[@"gameType"] = gameType;
    }
    if (appKey != nil) {
        queryParams[@"appKey"] = appKey;
    }
    if (packType != nil) {
        queryParams[@"packType"] = packType;
    }
    if (packOrder != nil) {
        queryParams[@"packOrder"] = packOrder;
    }
    if (sequenceType != nil) {
        queryParams[@"sequenceType"] = sequenceType;
    }
    if (backgroundId != nil) {
        queryParams[@"backgroundId"] = backgroundId;
    }
    if (imageId != nil) {
        queryParams[@"imageId"] = imageId;
    }
    if (startDate != nil) {
        queryParams[@"startDate"] = startDate;
    }
    if (endDate != nil) {
        queryParams[@"endDate"] = endDate;
    }
    if (authorOverride != nil) {
        queryParams[@"authorOverride"] = authorOverride;
    }
    if (price != nil) {
        queryParams[@"price"] = price;
    }
    if (priceType != nil) {
        queryParams[@"priceType"] = priceType;
    }
    if (gameLevelIds != nil) {
        queryParams[@"gameLevelIds"] = gameLevelIds;
    }
    if (inGame != nil) {
        queryParams[@"inGame"] = [inGame isEqual:@(YES)] ? @"true" : @"false";
    }
    if (highest != nil) {
        queryParams[@"highest"] = [highest isEqual:@(YES)] ? @"true" : @"false";
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
                              responseType: @"OAIPackResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIPackResponse*)data, error);
                                }
                            }];
}



@end
