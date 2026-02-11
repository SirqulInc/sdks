#import "OAIFlagApi.h"
#import "OAIQueryParamCollection.h"
#import "OAIApiClient.h"
#import "OAICountResponse.h"
#import "OAIFlagResponse.h"
#import "OAISirqulResponse.h"


@interface OAIFlagApi ()

@property (nonatomic, strong, readwrite) NSMutableDictionary *mutableDefaultHeaders;

@end

@implementation OAIFlagApi

NSString* kOAIFlagApiErrorDomain = @"OAIFlagApiErrorDomain";
NSInteger kOAIFlagApiMissingParamErrorCode = 234513;

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
/// Create Flag
/// Allows a user to flag an object that the user deems inappropriate or offensive. Flagable objects include accounts, albums, album contests, assets, game levels, and theme descriptors
///  @param flagableType The flagable object type {ACCOUNT, ALBUM, ALBUM_CONTEST, ASSET, GAME_LEVEL, THEME_DESCRIPTOR, NOTE, OFFER} 
///
///  @param flagableId The flagable object id 
///
///  @param deviceId The unique device identifier that made the request (either deviceId or accountId must be used) (optional)
///
///  @param accountId The unique accountId that made the request (either deviceId or accountId must be used) (optional)
///
///  @param flagDescription An optional description of why is it being flagged (optional)
///
///  @param latitude The current location of the user (optional)
///
///  @param longitude The current location of the user (optional)
///
///  @returns OAISirqulResponse*
///
-(NSURLSessionTask*) createFlagWithFlagableType: (NSString*) flagableType
    flagableId: (NSNumber*) flagableId
    deviceId: (NSString*) deviceId
    accountId: (NSNumber*) accountId
    flagDescription: (NSString*) flagDescription
    latitude: (NSNumber*) latitude
    longitude: (NSNumber*) longitude
    completionHandler: (void (^)(OAISirqulResponse* output, NSError* error)) handler {
    // verify the required parameter 'flagableType' is set
    if (flagableType == nil) {
        NSParameterAssert(flagableType);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"flagableType"] };
            NSError* error = [NSError errorWithDomain:kOAIFlagApiErrorDomain code:kOAIFlagApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'flagableId' is set
    if (flagableId == nil) {
        NSParameterAssert(flagableId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"flagableId"] };
            NSError* error = [NSError errorWithDomain:kOAIFlagApiErrorDomain code:kOAIFlagApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/flag/create"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (deviceId != nil) {
        queryParams[@"deviceId"] = deviceId;
    }
    if (accountId != nil) {
        queryParams[@"accountId"] = accountId;
    }
    if (flagableType != nil) {
        queryParams[@"flagableType"] = flagableType;
    }
    if (flagableId != nil) {
        queryParams[@"flagableId"] = flagableId;
    }
    if (flagDescription != nil) {
        queryParams[@"flagDescription"] = flagDescription;
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
                              responseType: @"OAISirqulResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAISirqulResponse*)data, error);
                                }
                            }];
}

///
/// Delete Flag
/// Deletes a flag.
///  @param deviceId The unique device identifier that made the request (either deviceId or accountId must be used) (optional)
///
///  @param accountId The unique accountId that made the request (either deviceId or accountId must be used) (optional)
///
///  @param itemBeingFlaggedType This parameter is deprecated. (optional)
///
///  @param itemBeingFlaggedId This parameter is deprecated. (optional)
///
///  @param flagableType The flagable object type {ACCOUNT, ALBUM, ALBUM_CONTEST, ASSET, GAME_LEVEL, THEME_DESCRIPTOR, OFFER, NOTE} (optional)
///
///  @param flagableId The flagable object id (optional)
///
///  @returns OAISirqulResponse*
///
-(NSURLSessionTask*) deleteFlagWithDeviceId: (NSString*) deviceId
    accountId: (NSNumber*) accountId
    itemBeingFlaggedType: (NSString*) itemBeingFlaggedType
    itemBeingFlaggedId: (NSNumber*) itemBeingFlaggedId
    flagableType: (NSString*) flagableType
    flagableId: (NSNumber*) flagableId
    completionHandler: (void (^)(OAISirqulResponse* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/flag/delete"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (deviceId != nil) {
        queryParams[@"deviceId"] = deviceId;
    }
    if (accountId != nil) {
        queryParams[@"accountId"] = accountId;
    }
    if (itemBeingFlaggedType != nil) {
        queryParams[@"itemBeingFlaggedType"] = itemBeingFlaggedType;
    }
    if (itemBeingFlaggedId != nil) {
        queryParams[@"itemBeingFlaggedId"] = itemBeingFlaggedId;
    }
    if (flagableType != nil) {
        queryParams[@"flagableType"] = flagableType;
    }
    if (flagableId != nil) {
        queryParams[@"flagableId"] = flagableId;
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
/// Get Flag
/// Gets the details on whether the user has flagged a particular flagable object.
///  @param flagableType The flagable object type {ACCOUNT, ALBUM, ALBUM_CONTEST, ASSET, GAME_LEVEL, THEME_DESCRIPTOR, NOTE, OFFER} 
///
///  @param flagableId The flagable object id 
///
///  @param deviceId The unique device identifier that made the request (either deviceId or accountId must be used) (optional)
///
///  @param accountId The unique accountId that made the request (either deviceId or accountId must be used) (optional)
///
///  @param latitude The current location of the user (optional)
///
///  @param longitude The current location of the user (optional)
///
///  @returns OAIFlagResponse*
///
-(NSURLSessionTask*) getFlagWithFlagableType: (NSString*) flagableType
    flagableId: (NSNumber*) flagableId
    deviceId: (NSString*) deviceId
    accountId: (NSNumber*) accountId
    latitude: (NSNumber*) latitude
    longitude: (NSNumber*) longitude
    completionHandler: (void (^)(OAIFlagResponse* output, NSError* error)) handler {
    // verify the required parameter 'flagableType' is set
    if (flagableType == nil) {
        NSParameterAssert(flagableType);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"flagableType"] };
            NSError* error = [NSError errorWithDomain:kOAIFlagApiErrorDomain code:kOAIFlagApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'flagableId' is set
    if (flagableId == nil) {
        NSParameterAssert(flagableId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"flagableId"] };
            NSError* error = [NSError errorWithDomain:kOAIFlagApiErrorDomain code:kOAIFlagApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/flag/get"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (deviceId != nil) {
        queryParams[@"deviceId"] = deviceId;
    }
    if (accountId != nil) {
        queryParams[@"accountId"] = accountId;
    }
    if (flagableType != nil) {
        queryParams[@"flagableType"] = flagableType;
    }
    if (flagableId != nil) {
        queryParams[@"flagableId"] = flagableId;
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
                              responseType: @"OAIFlagResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIFlagResponse*)data, error);
                                }
                            }];
}

///
/// Get Flag Threshold
/// Get the flag threshold value on an object type for a particular application.
///  @param itemBeingFlaggedType The flagable object type {ACCOUNT, ALBUM, ALBUM_CONTEST, ASSET, GAME_LEVEL, THEME_DESCRIPTOR, OFFER, NOTE} 
///
///  @param appKey The application key 
///
///  @returns OAICountResponse*
///
-(NSURLSessionTask*) getFlagThresholdWithItemBeingFlaggedType: (NSString*) itemBeingFlaggedType
    appKey: (NSString*) appKey
    completionHandler: (void (^)(OAICountResponse* output, NSError* error)) handler {
    // verify the required parameter 'itemBeingFlaggedType' is set
    if (itemBeingFlaggedType == nil) {
        NSParameterAssert(itemBeingFlaggedType);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"itemBeingFlaggedType"] };
            NSError* error = [NSError errorWithDomain:kOAIFlagApiErrorDomain code:kOAIFlagApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'appKey' is set
    if (appKey == nil) {
        NSParameterAssert(appKey);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"appKey"] };
            NSError* error = [NSError errorWithDomain:kOAIFlagApiErrorDomain code:kOAIFlagApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/flag/threshold/get"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (itemBeingFlaggedType != nil) {
        queryParams[@"itemBeingFlaggedType"] = itemBeingFlaggedType;
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
                              responseType: @"OAICountResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAICountResponse*)data, error);
                                }
                            }];
}

///
/// Update Flag Threshold
/// Update the flag threshold on an object type for a particular application.
///  @param itemBeingFlaggedType The flagable object type {ACCOUNT, ALBUM, ALBUM_CONTEST, ASSET, GAME_LEVEL, THEME_DESCRIPTOR, OFFER, NOTE} 
///
///  @param threshold The threshold value 
///
///  @param appKey The application key 
///
///  @param deviceId The unique device identifier that made the request (either deviceId or accountId must be used) (optional)
///
///  @param accountId The unique accountId that made the request (either deviceId or accountId must be used) (optional)
///
///  @returns OAICountResponse*
///
-(NSURLSessionTask*) updateFlagThresholdWithItemBeingFlaggedType: (NSString*) itemBeingFlaggedType
    threshold: (NSNumber*) threshold
    appKey: (NSString*) appKey
    deviceId: (NSString*) deviceId
    accountId: (NSNumber*) accountId
    completionHandler: (void (^)(OAICountResponse* output, NSError* error)) handler {
    // verify the required parameter 'itemBeingFlaggedType' is set
    if (itemBeingFlaggedType == nil) {
        NSParameterAssert(itemBeingFlaggedType);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"itemBeingFlaggedType"] };
            NSError* error = [NSError errorWithDomain:kOAIFlagApiErrorDomain code:kOAIFlagApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'threshold' is set
    if (threshold == nil) {
        NSParameterAssert(threshold);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"threshold"] };
            NSError* error = [NSError errorWithDomain:kOAIFlagApiErrorDomain code:kOAIFlagApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'appKey' is set
    if (appKey == nil) {
        NSParameterAssert(appKey);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"appKey"] };
            NSError* error = [NSError errorWithDomain:kOAIFlagApiErrorDomain code:kOAIFlagApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/flag/threshold/update"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (deviceId != nil) {
        queryParams[@"deviceId"] = deviceId;
    }
    if (accountId != nil) {
        queryParams[@"accountId"] = accountId;
    }
    if (itemBeingFlaggedType != nil) {
        queryParams[@"itemBeingFlaggedType"] = itemBeingFlaggedType;
    }
    if (threshold != nil) {
        queryParams[@"threshold"] = threshold;
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
                              responseType: @"OAICountResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAICountResponse*)data, error);
                                }
                            }];
}



@end
