#import "OAILikeApi.h"
#import "OAIQueryParamCollection.h"
#import "OAIApiClient.h"
#import "OAILikableResponse.h"
#import "OAISearchResponse.h"


@interface OAILikeApi ()

@property (nonatomic, strong, readwrite) NSMutableDictionary *mutableDefaultHeaders;

@end

@implementation OAILikeApi

NSString* kOAILikeApiErrorDomain = @"OAILikeApiErrorDomain";
NSInteger kOAILikeApiMissingParamErrorCode = 234513;

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
/// Create Like
/// Allows a user to like or dislike accounts, albums, album contests, assets, game levels, notes, and theme descriptors. Multiple likes\\dislikes on the same object will replace the previous one.
///  @param version  
///
///  @param likableType The type of likable object {ALBUM, ALBUM_CONTEST, ASSET, GAME_LEVEL, NOTE, THEME_DESCRIPTOR} 
///
///  @param likableId The id of the likable object 
///
///  @param deviceId The unique device identifier that made the request (either deviceId or accountId must be used) (optional)
///
///  @param accountId The unique accountId that made the request (either deviceId or accountId must be used) (optional)
///
///  @param permissionableType This is used for sending out group notifications. For example, when someone likes an asset which is also a part of an album, everyone in the album will receive a notification. This is achieved by passing in the permissionable type (in this case \"album\"), and the permissionable id (the album id). Possible types: {ALBUM, ALBUM_CONTEST, GAME_LEVEL, THEME_DESCRIPTOR} (optional)
///
///  @param permissionableId The id of the permissionable object (for sending group notifications) (optional)
///
///  @param like determines whether the user likes or dislikes the object (optional)
///
///  @param app This parameter is deprecated. This is deprecated, use \"appKey\" instead. (optional)
///
///  @param gameType This parameter is deprecated. This is deprecated, use \"appKey\" instead. (optional)
///
///  @param appKey the application key (optional)
///
///  @param latitude The current location of the user (optional)
///
///  @param longitude The current location of the user (optional)
///
///  @returns OAILikableResponse*
///
-(NSURLSessionTask*) registerLikeWithVersion: (NSNumber*) version
    likableType: (NSString*) likableType
    likableId: (NSNumber*) likableId
    deviceId: (NSString*) deviceId
    accountId: (NSNumber*) accountId
    permissionableType: (NSString*) permissionableType
    permissionableId: (NSNumber*) permissionableId
    like: (NSNumber*) like
    app: (NSString*) app
    gameType: (NSString*) gameType
    appKey: (NSString*) appKey
    latitude: (NSNumber*) latitude
    longitude: (NSNumber*) longitude
    completionHandler: (void (^)(OAILikableResponse* output, NSError* error)) handler {
    // verify the required parameter 'version' is set
    if (version == nil) {
        NSParameterAssert(version);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"version"] };
            NSError* error = [NSError errorWithDomain:kOAILikeApiErrorDomain code:kOAILikeApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'likableType' is set
    if (likableType == nil) {
        NSParameterAssert(likableType);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"likableType"] };
            NSError* error = [NSError errorWithDomain:kOAILikeApiErrorDomain code:kOAILikeApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'likableId' is set
    if (likableId == nil) {
        NSParameterAssert(likableId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"likableId"] };
            NSError* error = [NSError errorWithDomain:kOAILikeApiErrorDomain code:kOAILikeApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/{version}/like"];

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
    if (likableType != nil) {
        queryParams[@"likableType"] = likableType;
    }
    if (likableId != nil) {
        queryParams[@"likableId"] = likableId;
    }
    if (permissionableType != nil) {
        queryParams[@"permissionableType"] = permissionableType;
    }
    if (permissionableId != nil) {
        queryParams[@"permissionableId"] = permissionableId;
    }
    if (like != nil) {
        queryParams[@"like"] = [like isEqual:@(YES)] ? @"true" : @"false";
    }
    if (app != nil) {
        queryParams[@"app"] = app;
    }
    if (gameType != nil) {
        queryParams[@"gameType"] = gameType;
    }
    if (appKey != nil) {
        queryParams[@"appKey"] = appKey;
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
                              responseType: @"OAILikableResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAILikableResponse*)data, error);
                                }
                            }];
}

///
/// Delete Like
/// Removes a like. This will make the user \"neutral\".
///  @param version  
///
///  @param likableType The type of the likable object {ALBUM, ALBUM_CONTEST, ASSET, GAME_LEVEL, NOTE, THEME_DESCRIPTOR} 
///
///  @param likableId The id of the likable object 
///
///  @param deviceId The unique device identifier that made the request (either deviceId or accountId must be used) (optional)
///
///  @param accountId The unique accountId that made the request (either deviceId or accountId must be used) (optional)
///
///  @param latitude The current location of the user (optional)
///
///  @param longitude The current location of the user (optional)
///
///  @returns OAILikableResponse*
///
-(NSURLSessionTask*) removeLikeWithVersion: (NSNumber*) version
    likableType: (NSString*) likableType
    likableId: (NSNumber*) likableId
    deviceId: (NSString*) deviceId
    accountId: (NSNumber*) accountId
    latitude: (NSNumber*) latitude
    longitude: (NSNumber*) longitude
    completionHandler: (void (^)(OAILikableResponse* output, NSError* error)) handler {
    // verify the required parameter 'version' is set
    if (version == nil) {
        NSParameterAssert(version);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"version"] };
            NSError* error = [NSError errorWithDomain:kOAILikeApiErrorDomain code:kOAILikeApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'likableType' is set
    if (likableType == nil) {
        NSParameterAssert(likableType);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"likableType"] };
            NSError* error = [NSError errorWithDomain:kOAILikeApiErrorDomain code:kOAILikeApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'likableId' is set
    if (likableId == nil) {
        NSParameterAssert(likableId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"likableId"] };
            NSError* error = [NSError errorWithDomain:kOAILikeApiErrorDomain code:kOAILikeApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/{version}/like/delete"];

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
    if (likableType != nil) {
        queryParams[@"likableType"] = likableType;
    }
    if (likableId != nil) {
        queryParams[@"likableId"] = likableId;
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
                              responseType: @"OAILikableResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAILikableResponse*)data, error);
                                }
                            }];
}

///
/// Search Likes
/// Search for likes on a likable object.
///  @param version  
///
///  @param likableType The type of the likable object {ALBUM, ALBUM_CONTEST, ASSET, GAME_LEVEL, NOTE, THEME_DESCRIPTOR} 
///
///  @param likableId The id of the likable object 
///
///  @param deviceId The unique device identifier that made the request (either deviceId or accountId must be used) (optional)
///
///  @param accountId The unique accountId that made the request (either deviceId or accountId must be used) (optional)
///
///  @param connectionAccountIds Comma separated list of account IDs for filtering on users (optional)
///
///  @param sortField The field to sort by. Possible values include: ID (optional, default to @"ID")
///
///  @param descending Determines whether the sorted list is in descending or ascending order (optional, default to @(YES))
///
///  @param updatedSince return items that have been updated since this date (time-stamp in milliseconds) (optional)
///
///  @param updatedBefore return items that have been updated before this date (time-stamp in milliseconds) (optional)
///
///  @param start the start index for pagination (optional, default to @0)
///
///  @param limit the limit for pagination (optional, default to @20)
///
///  @returns OAISearchResponse*
///
-(NSURLSessionTask*) searchLikesWithVersion: (NSNumber*) version
    likableType: (NSString*) likableType
    likableId: (NSNumber*) likableId
    deviceId: (NSString*) deviceId
    accountId: (NSNumber*) accountId
    connectionAccountIds: (NSString*) connectionAccountIds
    sortField: (NSString*) sortField
    descending: (NSNumber*) descending
    updatedSince: (NSNumber*) updatedSince
    updatedBefore: (NSNumber*) updatedBefore
    start: (NSNumber*) start
    limit: (NSNumber*) limit
    completionHandler: (void (^)(OAISearchResponse* output, NSError* error)) handler {
    // verify the required parameter 'version' is set
    if (version == nil) {
        NSParameterAssert(version);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"version"] };
            NSError* error = [NSError errorWithDomain:kOAILikeApiErrorDomain code:kOAILikeApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'likableType' is set
    if (likableType == nil) {
        NSParameterAssert(likableType);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"likableType"] };
            NSError* error = [NSError errorWithDomain:kOAILikeApiErrorDomain code:kOAILikeApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'likableId' is set
    if (likableId == nil) {
        NSParameterAssert(likableId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"likableId"] };
            NSError* error = [NSError errorWithDomain:kOAILikeApiErrorDomain code:kOAILikeApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/{version}/like/search"];

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
    if (connectionAccountIds != nil) {
        queryParams[@"connectionAccountIds"] = connectionAccountIds;
    }
    if (likableType != nil) {
        queryParams[@"likableType"] = likableType;
    }
    if (likableId != nil) {
        queryParams[@"likableId"] = likableId;
    }
    if (sortField != nil) {
        queryParams[@"sortField"] = sortField;
    }
    if (descending != nil) {
        queryParams[@"descending"] = [descending isEqual:@(YES)] ? @"true" : @"false";
    }
    if (updatedSince != nil) {
        queryParams[@"updatedSince"] = updatedSince;
    }
    if (updatedBefore != nil) {
        queryParams[@"updatedBefore"] = updatedBefore;
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
                              responseType: @"OAISearchResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAISearchResponse*)data, error);
                                }
                            }];
}



@end
