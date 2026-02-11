#import "OAIInviteApi.h"
#import "OAIQueryParamCollection.h"
#import "OAIApiClient.h"
#import "OAIConsumerInviteResponse.h"
#import "OAIInviteResponse.h"
#import "OAISirqulResponse.h"


@interface OAIInviteApi ()

@property (nonatomic, strong, readwrite) NSMutableDictionary *mutableDefaultHeaders;

@end

@implementation OAIInviteApi

NSString* kOAIInviteApiErrorDomain = @"OAIInviteApiErrorDomain";
NSInteger kOAIInviteApiMissingParamErrorCode = 234513;

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
/// Accept Invite
/// Allows a user to accept an invite. The user could also become the inviter's friend.
///  @param token the invite token 
///
///  @param accountId the accountId of the user who is accepting the invite 
///
///  @param albumId the album id associated with this invite (if applicable) (optional)
///
///  @param missionId the mission id associated with this invite (if applicable) (optional)
///
///  @param albumContestId the album contest id associated with this invite (if applicable) (optional)
///
///  @param offerId the offer id associated with this invite (if applicable) (optional)
///
///  @param offerLocationId the offer location id associated with this invite (if applicable) (optional)
///
///  @param retailerLocationId the retailer location id associated with this invite (if applicable) (optional)
///
///  @param appKey the application key (optional)
///
///  @param autoFriend whether to auto-friend the invite sender and receiver (optional, default to @(YES))
///
///  @param autoAttendEvent whether to mark the event as attending automatically after invite is accepted (optional, default to @(NO))
///
///  @param autoFavoriteOffer whether to mark the offer as favorited automatically after invite is accepted (optional, default to @(NO))
///
///  @param autoFavoriteOfferLocation whether to mark the offer location as favorited automatically after invite is accepted (optional, default to @(NO))
///
///  @param autoFavoriteRetailerLocation whether to mark the retailer location as favorited automatically after invite is accepted (optional, default to @(NO))
///
///  @returns OAIConsumerInviteResponse*
///
-(NSURLSessionTask*) acceptInviteWithToken: (NSString*) token
    accountId: (NSNumber*) accountId
    albumId: (NSNumber*) albumId
    missionId: (NSNumber*) missionId
    albumContestId: (NSNumber*) albumContestId
    offerId: (NSNumber*) offerId
    offerLocationId: (NSNumber*) offerLocationId
    retailerLocationId: (NSNumber*) retailerLocationId
    appKey: (NSString*) appKey
    autoFriend: (NSNumber*) autoFriend
    autoAttendEvent: (NSNumber*) autoAttendEvent
    autoFavoriteOffer: (NSNumber*) autoFavoriteOffer
    autoFavoriteOfferLocation: (NSNumber*) autoFavoriteOfferLocation
    autoFavoriteRetailerLocation: (NSNumber*) autoFavoriteRetailerLocation
    completionHandler: (void (^)(OAIConsumerInviteResponse* output, NSError* error)) handler {
    // verify the required parameter 'token' is set
    if (token == nil) {
        NSParameterAssert(token);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"token"] };
            NSError* error = [NSError errorWithDomain:kOAIInviteApiErrorDomain code:kOAIInviteApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kOAIInviteApiErrorDomain code:kOAIInviteApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/invite/accept"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (token != nil) {
        queryParams[@"token"] = token;
    }
    if (accountId != nil) {
        queryParams[@"accountId"] = accountId;
    }
    if (albumId != nil) {
        queryParams[@"albumId"] = albumId;
    }
    if (missionId != nil) {
        queryParams[@"missionId"] = missionId;
    }
    if (albumContestId != nil) {
        queryParams[@"albumContestId"] = albumContestId;
    }
    if (offerId != nil) {
        queryParams[@"offerId"] = offerId;
    }
    if (offerLocationId != nil) {
        queryParams[@"offerLocationId"] = offerLocationId;
    }
    if (retailerLocationId != nil) {
        queryParams[@"retailerLocationId"] = retailerLocationId;
    }
    if (appKey != nil) {
        queryParams[@"appKey"] = appKey;
    }
    if (autoFriend != nil) {
        queryParams[@"autoFriend"] = [autoFriend isEqual:@(YES)] ? @"true" : @"false";
    }
    if (autoAttendEvent != nil) {
        queryParams[@"autoAttendEvent"] = [autoAttendEvent isEqual:@(YES)] ? @"true" : @"false";
    }
    if (autoFavoriteOffer != nil) {
        queryParams[@"autoFavoriteOffer"] = [autoFavoriteOffer isEqual:@(YES)] ? @"true" : @"false";
    }
    if (autoFavoriteOfferLocation != nil) {
        queryParams[@"autoFavoriteOfferLocation"] = [autoFavoriteOfferLocation isEqual:@(YES)] ? @"true" : @"false";
    }
    if (autoFavoriteRetailerLocation != nil) {
        queryParams[@"autoFavoriteRetailerLocation"] = [autoFavoriteRetailerLocation isEqual:@(YES)] ? @"true" : @"false";
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
                              responseType: @"OAIConsumerInviteResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIConsumerInviteResponse*)data, error);
                                }
                            }];
}

///
/// Invite to Contest
/// Allows a user to invite people to gain access to a contest. This will generate an invite token, which when used, will give the invitee access to a contest (whether it is private or not). The invitee will also become the user's friend when the invitation is accepted.
///  @param deviceId a unique ID given by the device (deviceId or accountId required) (optional)
///
///  @param accountId the account ID of the user (deviceId or accountId required) (optional)
///
///  @param appId This parameter is deprecated. (optional)
///
///  @param appKey the application key (optional)
///
///  @param albumContestId the album contest to share (optional)
///
///  @param latitude the current latitude of the user (optional)
///
///  @param longitude the current longitude of the user (optional)
///
///  @returns OAIInviteResponse*
///
-(NSURLSessionTask*) albumContestInviteWithDeviceId: (NSString*) deviceId
    accountId: (NSNumber*) accountId
    appId: (NSNumber*) appId
    appKey: (NSString*) appKey
    albumContestId: (NSNumber*) albumContestId
    latitude: (NSNumber*) latitude
    longitude: (NSNumber*) longitude
    completionHandler: (void (^)(OAIInviteResponse* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/invite/albumContest"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (deviceId != nil) {
        queryParams[@"deviceId"] = deviceId;
    }
    if (accountId != nil) {
        queryParams[@"accountId"] = accountId;
    }
    if (appId != nil) {
        queryParams[@"appId"] = appId;
    }
    if (appKey != nil) {
        queryParams[@"appKey"] = appKey;
    }
    if (albumContestId != nil) {
        queryParams[@"albumContestId"] = albumContestId;
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
                              responseType: @"OAIInviteResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIInviteResponse*)data, error);
                                }
                            }];
}

///
/// Invite to Collection
/// Allows a user to invite people to gain access to a collection. This will generate an invite token, which when used, will give the invitee access to a collection (whether it is private or not). The invitee will also become the user's friend when the invitation is accepted.
///  @param deviceId a unique ID given by the device (deviceId or accountId required) (optional)
///
///  @param accountId the account ID of the user (deviceId or accountId required) (optional)
///
///  @param appId This parameter is deprecated. (optional)
///
///  @param appKey the application key (optional)
///
///  @param albumId the album to share (optional)
///
///  @param latitude the current latitude of the user (optional)
///
///  @param longitude the current longitude of the user (optional)
///
///  @returns OAIInviteResponse*
///
-(NSURLSessionTask*) albumInviteWithDeviceId: (NSString*) deviceId
    accountId: (NSNumber*) accountId
    appId: (NSNumber*) appId
    appKey: (NSString*) appKey
    albumId: (NSNumber*) albumId
    latitude: (NSNumber*) latitude
    longitude: (NSNumber*) longitude
    completionHandler: (void (^)(OAIInviteResponse* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/invite/album"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (deviceId != nil) {
        queryParams[@"deviceId"] = deviceId;
    }
    if (accountId != nil) {
        queryParams[@"accountId"] = accountId;
    }
    if (appId != nil) {
        queryParams[@"appId"] = appId;
    }
    if (appKey != nil) {
        queryParams[@"appKey"] = appKey;
    }
    if (albumId != nil) {
        queryParams[@"albumId"] = albumId;
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
                              responseType: @"OAIInviteResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIInviteResponse*)data, error);
                                }
                            }];
}

///
/// Invite to Event
/// Allows a user to invite people to attend an event. This will generate an invite token, which when used, will allow the invitee to add the offer to their wallet.
///  @param accountId the account ID of the user making the share 
///
///  @param appKey the application key 
///
///  @param listingId The ID of the event listing 
///
///  @param receiverAccountIds the account ID of a Sirqul user they would like to share an event with (optional)
///
///  @param retailerLocationId The retailer location id of where the event will take place (optional)
///
///  @returns OAIInviteResponse*
///
-(NSURLSessionTask*) eventInviteWithAccountId: (NSNumber*) accountId
    appKey: (NSString*) appKey
    listingId: (NSNumber*) listingId
    receiverAccountIds: (NSString*) receiverAccountIds
    retailerLocationId: (NSNumber*) retailerLocationId
    completionHandler: (void (^)(OAIInviteResponse* output, NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kOAIInviteApiErrorDomain code:kOAIInviteApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'appKey' is set
    if (appKey == nil) {
        NSParameterAssert(appKey);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"appKey"] };
            NSError* error = [NSError errorWithDomain:kOAIInviteApiErrorDomain code:kOAIInviteApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'listingId' is set
    if (listingId == nil) {
        NSParameterAssert(listingId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"listingId"] };
            NSError* error = [NSError errorWithDomain:kOAIInviteApiErrorDomain code:kOAIInviteApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/invite/event"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        queryParams[@"accountId"] = accountId;
    }
    if (receiverAccountIds != nil) {
        queryParams[@"receiverAccountIds"] = receiverAccountIds;
    }
    if (appKey != nil) {
        queryParams[@"appKey"] = appKey;
    }
    if (listingId != nil) {
        queryParams[@"listingId"] = listingId;
    }
    if (retailerLocationId != nil) {
        queryParams[@"retailerLocationId"] = retailerLocationId;
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
                              responseType: @"OAIInviteResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIInviteResponse*)data, error);
                                }
                            }];
}

///
/// Invite to Game Level
/// Allows a user to invite people to gain access to an album. This will generate an invite token, which when used, will give the invitee access to an album (whether it is private or not). The invitee will also become the user's friend when the invitation is accepted.
///  @param deviceId a unique ID given by the device (deviceId or accountId required) (optional)
///
///  @param accountId the account ID of the user (deviceId or accountId required) (optional)
///
///  @param appId This parameter is deprecated. (optional)
///
///  @param appKey the application key (optional)
///
///  @param gameLevelId the game level that the user owns and is giving access to (optional)
///
///  @param latitude the current latitude of the user (optional)
///
///  @param longitude the current longitude of the user (optional)
///
///  @returns OAIInviteResponse*
///
-(NSURLSessionTask*) gameInviteWithDeviceId: (NSString*) deviceId
    accountId: (NSNumber*) accountId
    appId: (NSNumber*) appId
    appKey: (NSString*) appKey
    gameLevelId: (NSNumber*) gameLevelId
    latitude: (NSNumber*) latitude
    longitude: (NSNumber*) longitude
    completionHandler: (void (^)(OAIInviteResponse* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/invite/gameLevel"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (deviceId != nil) {
        queryParams[@"deviceId"] = deviceId;
    }
    if (accountId != nil) {
        queryParams[@"accountId"] = accountId;
    }
    if (appId != nil) {
        queryParams[@"appId"] = appId;
    }
    if (appKey != nil) {
        queryParams[@"appKey"] = appKey;
    }
    if (gameLevelId != nil) {
        queryParams[@"gameLevelId"] = gameLevelId;
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
                              responseType: @"OAIInviteResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIInviteResponse*)data, error);
                                }
                            }];
}

///
/// Get Invite
/// This is used to determine whether an invite token is valid. If the token is valid, this will also return information about who invited the user, and what they are invited to.
///  @param accountId Account ID of the user if they are logged in (optional)
///
///  @param token the invite token (optional)
///
///  @param albumId album id to match the invite against (if applicable) (optional)
///
///  @param missionId mission id to match the invite against (if applicable) (optional)
///
///  @param albumContestId album contest id to match the invite against (if applicable) (optional)
///
///  @param offerId offer id to match the invite against (if applicable) (optional)
///
///  @param offerLocationId offer location id to match the invite against (if applicable) (optional)
///
///  @param retailerLocationId retailer location id to match the invite against (if applicable) (optional)
///
///  @param appKey the application key (optional)
///
///  @returns OAISirqulResponse*
///
-(NSURLSessionTask*) getInviteWithAccountId: (NSNumber*) accountId
    token: (NSString*) token
    albumId: (NSNumber*) albumId
    missionId: (NSNumber*) missionId
    albumContestId: (NSNumber*) albumContestId
    offerId: (NSNumber*) offerId
    offerLocationId: (NSNumber*) offerLocationId
    retailerLocationId: (NSNumber*) retailerLocationId
    appKey: (NSString*) appKey
    completionHandler: (void (^)(OAISirqulResponse* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/invite/get"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        queryParams[@"accountId"] = accountId;
    }
    if (token != nil) {
        queryParams[@"token"] = token;
    }
    if (albumId != nil) {
        queryParams[@"albumId"] = albumId;
    }
    if (missionId != nil) {
        queryParams[@"missionId"] = missionId;
    }
    if (albumContestId != nil) {
        queryParams[@"albumContestId"] = albumContestId;
    }
    if (offerId != nil) {
        queryParams[@"offerId"] = offerId;
    }
    if (offerLocationId != nil) {
        queryParams[@"offerLocationId"] = offerLocationId;
    }
    if (retailerLocationId != nil) {
        queryParams[@"retailerLocationId"] = retailerLocationId;
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
                              responseType: @"OAISirqulResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAISirqulResponse*)data, error);
                                }
                            }];
}

///
/// Invite to Mission
/// Allows a user to invite people to gain access to a mission. This will generate an invite token, which when used, will give the invitee access to a mission (whether it is private or not). The invitee will also become the user's friend when the invitation is accepted.
///  @param deviceId a unique ID given by the device (deviceId or accountId required) (optional)
///
///  @param accountId the account ID of the user (deviceId or accountId required) (optional)
///
///  @param appId This parameter is deprecated. (optional)
///
///  @param appKey the application key (optional)
///
///  @param missionId the mission to share (optional)
///
///  @param latitude the current latitude of the user (optional)
///
///  @param longitude the current longitude of the user (optional)
///
///  @returns OAIInviteResponse*
///
-(NSURLSessionTask*) missionInviteWithDeviceId: (NSString*) deviceId
    accountId: (NSNumber*) accountId
    appId: (NSNumber*) appId
    appKey: (NSString*) appKey
    missionId: (NSNumber*) missionId
    latitude: (NSNumber*) latitude
    longitude: (NSNumber*) longitude
    completionHandler: (void (^)(OAIInviteResponse* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/invite/mission"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (deviceId != nil) {
        queryParams[@"deviceId"] = deviceId;
    }
    if (accountId != nil) {
        queryParams[@"accountId"] = accountId;
    }
    if (appId != nil) {
        queryParams[@"appId"] = appId;
    }
    if (appKey != nil) {
        queryParams[@"appKey"] = appKey;
    }
    if (missionId != nil) {
        queryParams[@"missionId"] = missionId;
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
                              responseType: @"OAIInviteResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIInviteResponse*)data, error);
                                }
                            }];
}

///
/// Invite to Offer
/// Allows a user to invite people to favorite an offer. This will generate an invite token, which when used, will give the invitee the offer in their favorite's list.
///  @param accountId the account ID of the user making the share 
///
///  @param appKey the application key 
///
///  @param offerId the ID of the offer used to invite to favorite 
///
///  @returns OAIInviteResponse*
///
-(NSURLSessionTask*) offerInviteWithAccountId: (NSNumber*) accountId
    appKey: (NSString*) appKey
    offerId: (NSNumber*) offerId
    completionHandler: (void (^)(OAIInviteResponse* output, NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kOAIInviteApiErrorDomain code:kOAIInviteApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'appKey' is set
    if (appKey == nil) {
        NSParameterAssert(appKey);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"appKey"] };
            NSError* error = [NSError errorWithDomain:kOAIInviteApiErrorDomain code:kOAIInviteApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'offerId' is set
    if (offerId == nil) {
        NSParameterAssert(offerId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"offerId"] };
            NSError* error = [NSError errorWithDomain:kOAIInviteApiErrorDomain code:kOAIInviteApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/invite/offer"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        queryParams[@"accountId"] = accountId;
    }
    if (appKey != nil) {
        queryParams[@"appKey"] = appKey;
    }
    if (offerId != nil) {
        queryParams[@"offerId"] = offerId;
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
                              responseType: @"OAIInviteResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIInviteResponse*)data, error);
                                }
                            }];
}

///
/// Invite to Offer Location
/// Allows a user to invite people to favorite an offer location. This will generate an invite token, which when used, will give the invitee the offer location in their favorite's list.
///  @param accountId the account ID of the user making the share 
///
///  @param appKey the application key 
///
///  @param offerLocationId the id of the offer location to share 
///
///  @returns OAIInviteResponse*
///
-(NSURLSessionTask*) offerLocationInviteWithAccountId: (NSNumber*) accountId
    appKey: (NSString*) appKey
    offerLocationId: (NSNumber*) offerLocationId
    completionHandler: (void (^)(OAIInviteResponse* output, NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kOAIInviteApiErrorDomain code:kOAIInviteApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'appKey' is set
    if (appKey == nil) {
        NSParameterAssert(appKey);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"appKey"] };
            NSError* error = [NSError errorWithDomain:kOAIInviteApiErrorDomain code:kOAIInviteApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'offerLocationId' is set
    if (offerLocationId == nil) {
        NSParameterAssert(offerLocationId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"offerLocationId"] };
            NSError* error = [NSError errorWithDomain:kOAIInviteApiErrorDomain code:kOAIInviteApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/invite/offerLocation"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        queryParams[@"accountId"] = accountId;
    }
    if (appKey != nil) {
        queryParams[@"appKey"] = appKey;
    }
    if (offerLocationId != nil) {
        queryParams[@"offerLocationId"] = offerLocationId;
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
                              responseType: @"OAIInviteResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIInviteResponse*)data, error);
                                }
                            }];
}

///
/// Invite to Retailer Location
/// Allows a user to invite people to favorite a retailer location. This will generate an invite token, which when used, will give the invitee the retailer location in their favorite's list.
///  @param accountId the account ID of the user making the share 
///
///  @param appKey the application key 
///
///  @param retailerLocationId The retailer location id of where the event will take place 
///
///  @param albumId Optional album id to link with the invite (optional)
///
///  @returns OAIInviteResponse*
///
-(NSURLSessionTask*) retailerLocationInviteWithAccountId: (NSNumber*) accountId
    appKey: (NSString*) appKey
    retailerLocationId: (NSNumber*) retailerLocationId
    albumId: (NSNumber*) albumId
    completionHandler: (void (^)(OAIInviteResponse* output, NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kOAIInviteApiErrorDomain code:kOAIInviteApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'appKey' is set
    if (appKey == nil) {
        NSParameterAssert(appKey);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"appKey"] };
            NSError* error = [NSError errorWithDomain:kOAIInviteApiErrorDomain code:kOAIInviteApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'retailerLocationId' is set
    if (retailerLocationId == nil) {
        NSParameterAssert(retailerLocationId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"retailerLocationId"] };
            NSError* error = [NSError errorWithDomain:kOAIInviteApiErrorDomain code:kOAIInviteApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/invite/retailerLocation"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        queryParams[@"accountId"] = accountId;
    }
    if (appKey != nil) {
        queryParams[@"appKey"] = appKey;
    }
    if (retailerLocationId != nil) {
        queryParams[@"retailerLocationId"] = retailerLocationId;
    }
    if (albumId != nil) {
        queryParams[@"albumId"] = albumId;
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
                              responseType: @"OAIInviteResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIInviteResponse*)data, error);
                                }
                            }];
}



@end
