#import "OAICreativeApi.h"
#import "OAIQueryParamCollection.h"
#import "OAIApiClient.h"
#import "OAICreativeResponse.h"
#import "OAIMissionResponse.h"
#import "OAISirqulResponse.h"


@interface OAICreativeApi ()

@property (nonatomic, strong, readwrite) NSMutableDictionary *mutableDefaultHeaders;

@end

@implementation OAICreativeApi

NSString* kOAICreativeApiErrorDomain = @"OAICreativeApiErrorDomain";
NSInteger kOAICreativeApiMissingParamErrorCode = 234513;

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
/// Add Preview
/// Enable this ad for preview for this account.
///  @param accountId the id of the account 
///
///  @param creativeId The id of the creative that want to enable preview. The type of the creative should be CONFIG, otherwise no action will be applied. 
///
///  @returns OAISirqulResponse*
///
-(NSURLSessionTask*) addPreviewWithAccountId: (NSNumber*) accountId
    creativeId: (NSNumber*) creativeId
    completionHandler: (void (^)(OAISirqulResponse* output, NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kOAICreativeApiErrorDomain code:kOAICreativeApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'creativeId' is set
    if (creativeId == nil) {
        NSParameterAssert(creativeId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"creativeId"] };
            NSError* error = [NSError errorWithDomain:kOAICreativeApiErrorDomain code:kOAICreativeApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/creative/addpreview"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        queryParams[@"accountId"] = accountId;
    }
    if (creativeId != nil) {
        queryParams[@"creativeId"] = creativeId;
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
/// Find Missions
/// Get a set of ad filtered by the parameters provided.
///  @param appKey The application key, if provided return missions specific for the app. Will always return mission levels that are app agnostic. 
///
///  @param randomize return a random set of results, default is true. If false returns in nature order. 
///
///  @param targetedAdsOnly return only ads targets to the specific app, no global ads. 
///
///  @param type The type of ads to get, possible values are: BANNER, LEADERBOARD, SKYSCRAPER, FULL, VIDEO, ZIP, CONFIG. Use this instead of suffix. (optional)
///
///  @param accountId The logged in user. (optional)
///
///  @param appVersion The version of the application, will not return levels newer than the appVersion. (optional)
///
///  @param latitude The current location of the requesting device (optional)
///
///  @param longitude The current location of the requesting device (optional)
///
///  @param device Should use deviceId if possible. The name of the requesting device; possible values are: Android, iPhone, iPad, iPod, etc. use /audience/devices for list. (optional)
///
///  @param deviceIdentifier The device ID of the requesting device, use /audience/devices for list (optional)
///
///  @param deviceVersion The requesting device version; examples are: 2.3, 5.1.4, 6.1.4. Supports X, X.X, or X.X.X formated string. (optional)
///
///  @param start The index into the record set to start with. (optional)
///
///  @param limit The total number of record to return. (optional)
///
///  @param includeAudiences If true then return the audience data in the response. Default is false. (optional)
///
///  @param allocatesTickets If true/false only return missions whose game levels allocate (or don't allocate) tickets. Do not provide a value to return both. (optional)
///
///  @param missionIds return only ads from the specified campaigns. (optional)
///
///  @returns NSArray<OAIMissionResponse>*
///
-(NSURLSessionTask*) adsFindWithAppKey: (NSString*) appKey
    randomize: (NSNumber*) randomize
    targetedAdsOnly: (NSNumber*) targetedAdsOnly
    type: (NSString*) type
    accountId: (NSNumber*) accountId
    appVersion: (NSString*) appVersion
    latitude: (NSNumber*) latitude
    longitude: (NSNumber*) longitude
    device: (NSString*) device
    deviceIdentifier: (NSNumber*) deviceIdentifier
    deviceVersion: (NSString*) deviceVersion
    start: (NSNumber*) start
    limit: (NSNumber*) limit
    includeAudiences: (NSNumber*) includeAudiences
    allocatesTickets: (NSNumber*) allocatesTickets
    missionIds: (NSString*) missionIds
    completionHandler: (void (^)(NSArray<OAIMissionResponse>* output, NSError* error)) handler {
    // verify the required parameter 'appKey' is set
    if (appKey == nil) {
        NSParameterAssert(appKey);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"appKey"] };
            NSError* error = [NSError errorWithDomain:kOAICreativeApiErrorDomain code:kOAICreativeApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'randomize' is set
    if (randomize == nil) {
        NSParameterAssert(randomize);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"randomize"] };
            NSError* error = [NSError errorWithDomain:kOAICreativeApiErrorDomain code:kOAICreativeApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'targetedAdsOnly' is set
    if (targetedAdsOnly == nil) {
        NSParameterAssert(targetedAdsOnly);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"targetedAdsOnly"] };
            NSError* error = [NSError errorWithDomain:kOAICreativeApiErrorDomain code:kOAICreativeApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/ads/find"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (appKey != nil) {
        queryParams[@"appKey"] = appKey;
    }
    if (type != nil) {
        queryParams[@"type"] = type;
    }
    if (accountId != nil) {
        queryParams[@"accountId"] = accountId;
    }
    if (appVersion != nil) {
        queryParams[@"appVersion"] = appVersion;
    }
    if (latitude != nil) {
        queryParams[@"latitude"] = latitude;
    }
    if (longitude != nil) {
        queryParams[@"longitude"] = longitude;
    }
    if (device != nil) {
        queryParams[@"device"] = device;
    }
    if (deviceIdentifier != nil) {
        queryParams[@"deviceIdentifier"] = deviceIdentifier;
    }
    if (deviceVersion != nil) {
        queryParams[@"deviceVersion"] = deviceVersion;
    }
    if (start != nil) {
        queryParams[@"start"] = start;
    }
    if (limit != nil) {
        queryParams[@"limit"] = limit;
    }
    if (includeAudiences != nil) {
        queryParams[@"includeAudiences"] = [includeAudiences isEqual:@(YES)] ? @"true" : @"false";
    }
    if (allocatesTickets != nil) {
        queryParams[@"allocatesTickets"] = [allocatesTickets isEqual:@(YES)] ? @"true" : @"false";
    }
    if (randomize != nil) {
        queryParams[@"randomize"] = [randomize isEqual:@(YES)] ? @"true" : @"false";
    }
    if (targetedAdsOnly != nil) {
        queryParams[@"targetedAdsOnly"] = [targetedAdsOnly isEqual:@(YES)] ? @"true" : @"false";
    }
    if (missionIds != nil) {
        queryParams[@"missionIds"] = missionIds;
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
                              responseType: @"NSArray<OAIMissionResponse>*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSArray<OAIMissionResponse>*)data, error);
                                }
                            }];
}

///
/// Create Creative
/// Create a creative
///  @param accountId The logged in user. 
///
///  @param name The name of the level. 
///
///  @param active If true set the game level as active. Default is false. 
///
///  @param waitForAsset determines whether the response will wait until the asset gets created 
///
///  @param _description The description of the level. (optional)
///
///  @param assetImageId The asset Id of the level image. (optional)
///
///  @param action This parameter is deprecated. deprecated use data field (optional)
///
///  @param data The creative data, json based format depending on type. If not using action then data is required. (optional)
///
///  @param suffix This parameter is deprecated. deprecated use type field (optional)
///
///  @param type The type of creative. If not using suffix then type is required. (optional)
///
///  @param balance Set the amount of money available to spend, once 0 deactivate level. Set to a negative value for unlimited. (optional)
///
///  @param referenceId if creative related so some other content provided the id (optional)
///
///  @param appVersion The version of the application, will not return creatives newer than the appVersion. Only used when requesting application configuration creatives. (optional)
///
///  @param missionId Assign the creative to a campaign for timing and audience matching. (optional)
///
///  @param offerId the id of the offer (optional)
///
///  @returns OAICreativeResponse*
///
-(NSURLSessionTask*) createCreativeWithAccountId: (NSNumber*) accountId
    name: (NSString*) name
    active: (NSNumber*) active
    waitForAsset: (NSNumber*) waitForAsset
    _description: (NSString*) _description
    assetImageId: (NSNumber*) assetImageId
    action: (NSString*) action
    data: (NSString*) data
    suffix: (NSString*) suffix
    type: (NSString*) type
    balance: (NSNumber*) balance
    referenceId: (NSNumber*) referenceId
    appVersion: (NSString*) appVersion
    missionId: (NSNumber*) missionId
    offerId: (NSNumber*) offerId
    completionHandler: (void (^)(OAICreativeResponse* output, NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kOAICreativeApiErrorDomain code:kOAICreativeApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'name' is set
    if (name == nil) {
        NSParameterAssert(name);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"name"] };
            NSError* error = [NSError errorWithDomain:kOAICreativeApiErrorDomain code:kOAICreativeApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'active' is set
    if (active == nil) {
        NSParameterAssert(active);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"active"] };
            NSError* error = [NSError errorWithDomain:kOAICreativeApiErrorDomain code:kOAICreativeApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'waitForAsset' is set
    if (waitForAsset == nil) {
        NSParameterAssert(waitForAsset);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"waitForAsset"] };
            NSError* error = [NSError errorWithDomain:kOAICreativeApiErrorDomain code:kOAICreativeApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/creative/create"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        queryParams[@"accountId"] = accountId;
    }
    if (name != nil) {
        queryParams[@"name"] = name;
    }
    if (_description != nil) {
        queryParams[@"description"] = _description;
    }
    if (assetImageId != nil) {
        queryParams[@"assetImageId"] = assetImageId;
    }
    if (action != nil) {
        queryParams[@"action"] = action;
    }
    if (data != nil) {
        queryParams[@"data"] = data;
    }
    if (suffix != nil) {
        queryParams[@"suffix"] = suffix;
    }
    if (type != nil) {
        queryParams[@"type"] = type;
    }
    if (balance != nil) {
        queryParams[@"balance"] = balance;
    }
    if (active != nil) {
        queryParams[@"active"] = [active isEqual:@(YES)] ? @"true" : @"false";
    }
    if (referenceId != nil) {
        queryParams[@"referenceId"] = referenceId;
    }
    if (appVersion != nil) {
        queryParams[@"appVersion"] = appVersion;
    }
    if (missionId != nil) {
        queryParams[@"missionId"] = missionId;
    }
    if (offerId != nil) {
        queryParams[@"offerId"] = offerId;
    }
    if (waitForAsset != nil) {
        queryParams[@"waitForAsset"] = [waitForAsset isEqual:@(YES)] ? @"true" : @"false";
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
                              responseType: @"OAICreativeResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAICreativeResponse*)data, error);
                                }
                            }];
}

///
/// Delete Creative
/// Delete a creative
///  @param accountId the id of the logged in user 
///
///  @param creativeId the id of the creative to delete 
///
///  @returns OAISirqulResponse*
///
-(NSURLSessionTask*) deleteCreativeWithAccountId: (NSNumber*) accountId
    creativeId: (NSNumber*) creativeId
    completionHandler: (void (^)(OAISirqulResponse* output, NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kOAICreativeApiErrorDomain code:kOAICreativeApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'creativeId' is set
    if (creativeId == nil) {
        NSParameterAssert(creativeId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"creativeId"] };
            NSError* error = [NSError errorWithDomain:kOAICreativeApiErrorDomain code:kOAICreativeApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/creative/delete"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        queryParams[@"accountId"] = accountId;
    }
    if (creativeId != nil) {
        queryParams[@"creativeId"] = creativeId;
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
/// Get Creative
/// Get a creative
///  @param accountId the id of the logged in user 
///
///  @param creativeId the ID of the creative to get 
///
///  @returns OAICreativeResponse*
///
-(NSURLSessionTask*) getCreativeWithAccountId: (NSNumber*) accountId
    creativeId: (NSNumber*) creativeId
    completionHandler: (void (^)(OAICreativeResponse* output, NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kOAICreativeApiErrorDomain code:kOAICreativeApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'creativeId' is set
    if (creativeId == nil) {
        NSParameterAssert(creativeId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"creativeId"] };
            NSError* error = [NSError errorWithDomain:kOAICreativeApiErrorDomain code:kOAICreativeApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/creative/get"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        queryParams[@"accountId"] = accountId;
    }
    if (creativeId != nil) {
        queryParams[@"creativeId"] = creativeId;
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
                              responseType: @"OAICreativeResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAICreativeResponse*)data, error);
                                }
                            }];
}

///
/// Search Creatives
/// Get a list of levels for an application, just those the account has permissions to view.
///  @param accountId The logged in user. 
///
///  @param appKey the application key 
///
///  @param start Start the result set at some index. 
///
///  @param limit Limit the result to some number. 
///
///  @param missionId Creatives contained in the provided mission. (optional)
///
///  @param keyword Match the keyword to the owner name or level name. (optional)
///
///  @returns NSArray<OAICreativeResponse>*
///
-(NSURLSessionTask*) getCreativesByApplicationWithAccountId: (NSNumber*) accountId
    appKey: (NSString*) appKey
    start: (NSNumber*) start
    limit: (NSNumber*) limit
    missionId: (NSNumber*) missionId
    keyword: (NSString*) keyword
    completionHandler: (void (^)(NSArray<OAICreativeResponse>* output, NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kOAICreativeApiErrorDomain code:kOAICreativeApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'appKey' is set
    if (appKey == nil) {
        NSParameterAssert(appKey);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"appKey"] };
            NSError* error = [NSError errorWithDomain:kOAICreativeApiErrorDomain code:kOAICreativeApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'start' is set
    if (start == nil) {
        NSParameterAssert(start);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"start"] };
            NSError* error = [NSError errorWithDomain:kOAICreativeApiErrorDomain code:kOAICreativeApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'limit' is set
    if (limit == nil) {
        NSParameterAssert(limit);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"limit"] };
            NSError* error = [NSError errorWithDomain:kOAICreativeApiErrorDomain code:kOAICreativeApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/creative/search"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

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
    if (keyword != nil) {
        queryParams[@"keyword"] = keyword;
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
                              responseType: @"NSArray<OAICreativeResponse>*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSArray<OAICreativeResponse>*)data, error);
                                }
                            }];
}

///
/// Remove Preview
/// Remove this ad for preview for this account.
///  @param accountId the ID of the logged in user 
///
///  @param creativeId the ID of the creative to remove preview 
///
///  @returns OAISirqulResponse*
///
-(NSURLSessionTask*) removePreviewWithAccountId: (NSNumber*) accountId
    creativeId: (NSNumber*) creativeId
    completionHandler: (void (^)(OAISirqulResponse* output, NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kOAICreativeApiErrorDomain code:kOAICreativeApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'creativeId' is set
    if (creativeId == nil) {
        NSParameterAssert(creativeId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"creativeId"] };
            NSError* error = [NSError errorWithDomain:kOAICreativeApiErrorDomain code:kOAICreativeApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/creative/removepreview"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        queryParams[@"accountId"] = accountId;
    }
    if (creativeId != nil) {
        queryParams[@"creativeId"] = creativeId;
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
/// Update Creative
/// Update a creative
///  @param accountId The logged in user. 
///
///  @param creativeId the creative Id to upate. 
///
///  @param name The name of the level. (optional)
///
///  @param _description The description of the level. (optional)
///
///  @param assetImageId The asset Id of the level image. (optional)
///
///  @param action This parameter is deprecated. deprecated use data field (optional)
///
///  @param data The creative data, json based format depending on type (optional)
///
///  @param suffix This parameter is deprecated. deprecated use type field (optional)
///
///  @param type The type of creative. (optional)
///
///  @param balance Set the amount of money available to spend, once 0 deactivate level. Set to a negative value for unlimited. (optional)
///
///  @param active If true set the game level as active. Default is false. (optional)
///
///  @param referenceId if creative related so some other content provided the id (optional)
///
///  @param appVersion The version of the application, will not return creatives newer than the appVersion. Only used when requesting application configuration creatives. (optional)
///
///  @param missionId Assign the creative to a campaign for timing and audience matching. (optional)
///
///  @returns OAICreativeResponse*
///
-(NSURLSessionTask*) updateCreativeWithAccountId: (NSNumber*) accountId
    creativeId: (NSNumber*) creativeId
    name: (NSString*) name
    _description: (NSString*) _description
    assetImageId: (NSNumber*) assetImageId
    action: (NSString*) action
    data: (NSString*) data
    suffix: (NSString*) suffix
    type: (NSString*) type
    balance: (NSNumber*) balance
    active: (NSNumber*) active
    referenceId: (NSNumber*) referenceId
    appVersion: (NSString*) appVersion
    missionId: (NSNumber*) missionId
    completionHandler: (void (^)(OAICreativeResponse* output, NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kOAICreativeApiErrorDomain code:kOAICreativeApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'creativeId' is set
    if (creativeId == nil) {
        NSParameterAssert(creativeId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"creativeId"] };
            NSError* error = [NSError errorWithDomain:kOAICreativeApiErrorDomain code:kOAICreativeApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/creative/update"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        queryParams[@"accountId"] = accountId;
    }
    if (creativeId != nil) {
        queryParams[@"creativeId"] = creativeId;
    }
    if (name != nil) {
        queryParams[@"name"] = name;
    }
    if (_description != nil) {
        queryParams[@"description"] = _description;
    }
    if (assetImageId != nil) {
        queryParams[@"assetImageId"] = assetImageId;
    }
    if (action != nil) {
        queryParams[@"action"] = action;
    }
    if (data != nil) {
        queryParams[@"data"] = data;
    }
    if (suffix != nil) {
        queryParams[@"suffix"] = suffix;
    }
    if (type != nil) {
        queryParams[@"type"] = type;
    }
    if (balance != nil) {
        queryParams[@"balance"] = balance;
    }
    if (active != nil) {
        queryParams[@"active"] = [active isEqual:@(YES)] ? @"true" : @"false";
    }
    if (referenceId != nil) {
        queryParams[@"referenceId"] = referenceId;
    }
    if (appVersion != nil) {
        queryParams[@"appVersion"] = appVersion;
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
                              responseType: @"OAICreativeResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAICreativeResponse*)data, error);
                                }
                            }];
}



@end
