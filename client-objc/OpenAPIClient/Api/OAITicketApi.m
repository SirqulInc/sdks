#import "OAITicketApi.h"
#import "OAIQueryParamCollection.h"
#import "OAIApiClient.h"
#import "OAICountResponse.h"
#import "OAIProfileResponse.h"
#import "OAISirqulResponse.h"
#import "OAITicketListResponse.h"
#import "OAITicketOfferResponse.h"


@interface OAITicketApi ()

@property (nonatomic, strong, readwrite) NSMutableDictionary *mutableDefaultHeaders;

@end

@implementation OAITicketApi

NSString* kOAITicketApiErrorDomain = @"OAITicketApiErrorDomain";
NSInteger kOAITicketApiMissingParamErrorCode = 234513;

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
/// Get Ticket Count
/// Gets the ticket count.
///  @param version  
///
///  @param deviceId the id of the device that owns the tickets (optional)
///
///  @param accountId the id of the account that owns the tickets (optional)
///
///  @param gameType this is deprecated. (optional)
///
///  @param appKey the applicationkey (optional)
///
///  @param ticketType the type of ticket (optional)
///
///  @returns OAICountResponse*
///
-(NSURLSessionTask*) getTicketCountWithVersion: (NSNumber*) version
    deviceId: (NSString*) deviceId
    accountId: (NSNumber*) accountId
    gameType: (NSString*) gameType
    appKey: (NSString*) appKey
    ticketType: (NSString*) ticketType
    completionHandler: (void (^)(OAICountResponse* output, NSError* error)) handler {
    // verify the required parameter 'version' is set
    if (version == nil) {
        NSParameterAssert(version);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"version"] };
            NSError* error = [NSError errorWithDomain:kOAITicketApiErrorDomain code:kOAITicketApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/{version}/ticket/count"];

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
    if (ticketType != nil) {
        queryParams[@"ticketType"] = ticketType;
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
/// Get Ticket List
/// Gets the list of tickets.
///  @param version  
///
///  @param deviceId the id of the device that owns the tickets (optional)
///
///  @param accountId the id of the account that owns the tickets (optional)
///
///  @param ticketObjectType comma separated list of TicketObjectType (optional)
///
///  @param actionType comma separated list of TicketActionType (optional)
///
///  @param ticketIds the ids of the tickets to get (optional)
///
///  @param objectIds the ids of the objects to get (optional)
///
///  @param receiptTokens  (optional)
///
///  @param gameType  (optional)
///
///  @param appKey the application key (optional)
///
///  @returns OAITicketListResponse*
///
-(NSURLSessionTask*) getTicketListWithVersion: (NSNumber*) version
    deviceId: (NSString*) deviceId
    accountId: (NSNumber*) accountId
    ticketObjectType: (NSString*) ticketObjectType
    actionType: (NSString*) actionType
    ticketIds: (NSString*) ticketIds
    objectIds: (NSString*) objectIds
    receiptTokens: (NSString*) receiptTokens
    gameType: (NSString*) gameType
    appKey: (NSString*) appKey
    completionHandler: (void (^)(OAITicketListResponse* output, NSError* error)) handler {
    // verify the required parameter 'version' is set
    if (version == nil) {
        NSParameterAssert(version);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"version"] };
            NSError* error = [NSError errorWithDomain:kOAITicketApiErrorDomain code:kOAITicketApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/{version}/ticket/getList"];

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
    if (ticketObjectType != nil) {
        queryParams[@"ticketObjectType"] = ticketObjectType;
    }
    if (actionType != nil) {
        queryParams[@"actionType"] = actionType;
    }
    if (ticketIds != nil) {
        queryParams[@"ticketIds"] = ticketIds;
    }
    if (objectIds != nil) {
        queryParams[@"objectIds"] = objectIds;
    }
    if (receiptTokens != nil) {
        queryParams[@"receiptTokens"] = receiptTokens;
    }
    if (gameType != nil) {
        queryParams[@"gameType"] = gameType;
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
                              responseType: @"OAITicketListResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAITicketListResponse*)data, error);
                                }
                            }];
}

///
/// Gift Tickets
/// Gift tickets to another user.
///  @param version  
///
///  @param receiverAccountId the id of the account receiving the tickets 
///
///  @param ticketId the id of the tickets 
///
///  @param deviceId the id of the device (optional)
///
///  @param accountId the id of the gift owner (optional)
///
///  @param assetId the id of the asset (optional)
///
///  @param customMessage a message that can be written to go along with the gift (optional)
///
///  @param gameType the type of game associated with the tickets (optional)
///
///  @param appKey the application key (optional)
///
///  @returns OAISirqulResponse*
///
-(NSURLSessionTask*) giftPurchaseWithVersion: (NSNumber*) version
    receiverAccountId: (NSNumber*) receiverAccountId
    ticketId: (NSNumber*) ticketId
    deviceId: (NSString*) deviceId
    accountId: (NSNumber*) accountId
    assetId: (NSNumber*) assetId
    customMessage: (NSString*) customMessage
    gameType: (NSString*) gameType
    appKey: (NSString*) appKey
    completionHandler: (void (^)(OAISirqulResponse* output, NSError* error)) handler {
    // verify the required parameter 'version' is set
    if (version == nil) {
        NSParameterAssert(version);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"version"] };
            NSError* error = [NSError errorWithDomain:kOAITicketApiErrorDomain code:kOAITicketApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'receiverAccountId' is set
    if (receiverAccountId == nil) {
        NSParameterAssert(receiverAccountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"receiverAccountId"] };
            NSError* error = [NSError errorWithDomain:kOAITicketApiErrorDomain code:kOAITicketApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'ticketId' is set
    if (ticketId == nil) {
        NSParameterAssert(ticketId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"ticketId"] };
            NSError* error = [NSError errorWithDomain:kOAITicketApiErrorDomain code:kOAITicketApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/{version}/purchase/gift"];

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
    if (receiverAccountId != nil) {
        queryParams[@"receiverAccountId"] = receiverAccountId;
    }
    if (ticketId != nil) {
        queryParams[@"ticketId"] = ticketId;
    }
    if (assetId != nil) {
        queryParams[@"assetId"] = assetId;
    }
    if (customMessage != nil) {
        queryParams[@"customMessage"] = customMessage;
    }
    if (gameType != nil) {
        queryParams[@"gameType"] = gameType;
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
                              responseType: @"OAISirqulResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAISirqulResponse*)data, error);
                                }
                            }];
}

///
/// Save Ticket
/// Allow user to acquire a purchase item and generate a ticket record. Used to redeem tickets or add tickets to the system.
///  @param version  
///
///  @param actionType the action being performed, values: COMPLETED, // ADD TICKETS FOR COMPLETING A MISSION, CHALLENGE, GAME, PACK, LEVEL, LEVEL OBJECT REDEEMED, // REMOVE TICKETS FOR BUYING PACKS, HINTS, AND PEN TOOLS OPTIONS, ETC USERS_PLAYED, // ADD TICKETS FOR LEVELS PLAYED BY OTHER USERS TOURNAMENT_OWNER, // ADD TICKETS FOR TOURNAMENTS BY OTHER USERS PURCHASED, // ADD TICKET VIA IN APP PURCHASING SUMATION, // SUMATION OF TICKETS EARNED FROM CHILDREN GIFTED, // TRANSFERING OF PURCHASE ITEMS TO OTHER PEOPLE REFUNDED // FOR REFUNDING TICKETS BACK TO THE USER 
///
///  @param ticketObjectType the type of object being purchased, values: GAME_OBJECT, GAME_LEVEL, PACK, GAME, MISSION, PROFILE, APPLICATION, TICKETS, ASSET, CUSTOM 
///
///  @param returnNulls whether to return nulls or not (optional)
///
///  @param deviceId the device id that owns the tickets (optional)
///
///  @param accountId the account id that owns the tickets (optional)
///
///  @param gameType This parameter is deprecated. deprecated, use the appKey (optional)
///
///  @param appKey the application key (optional)
///
///  @param objectId the ID of the item being purchased (optional)
///
///  @param purchaseCode a unique string identifier defined by the application owner or Executive (optional)
///
///  @param receiptToken a unique transaction identifier from the purchase provider (i.e. the transaction ID from iTunes, Google Play, etc) (optional)
///
///  @param receiptData the receipt/transaction data for validating a purchase via iTunes/Gooogle/etc. This should be in string format. (optional)
///
///  @param count the count of tickets (optional)
///
///  @param ticketType the ticket type (optional)
///
///  @param purchaseProvider the provider for making the purchase {ITUNES, ITUNES_SANDBOX, GOOGLE} (optional)
///
///  @param purchaseType a comma separated list of purchase types { SIRQUL, // purchasing from the sirqul store using tickets IOS, // purchasing from the itunes store for iPhone, iPod, iPod Touch GOOGLE, // purchasing from the google android store AMAZON, // purchasing from the amazon android store MAC, // purchasing from the itunes store for OSX WP8, // purhasing from the windows phone 8 store FREE } (optional)
///
///  @param returnProfileResponse returns a ProfileResponse if true, otherwise will return an AppResponse (optional)
///
///  @param includeProfileResponse if returnProfileResponse is false, will return an AppResponse with profile data if true (optional)
///
///  @param appVersion the application version (optional)
///
///  @returns OAIProfileResponse*
///
-(NSURLSessionTask*) saveTicketWithVersion: (NSNumber*) version
    actionType: (NSString*) actionType
    ticketObjectType: (NSString*) ticketObjectType
    returnNulls: (NSNumber*) returnNulls
    deviceId: (NSString*) deviceId
    accountId: (NSNumber*) accountId
    gameType: (NSString*) gameType
    appKey: (NSString*) appKey
    objectId: (NSNumber*) objectId
    purchaseCode: (NSString*) purchaseCode
    receiptToken: (NSString*) receiptToken
    receiptData: (NSString*) receiptData
    count: (NSNumber*) count
    ticketType: (NSString*) ticketType
    purchaseProvider: (NSString*) purchaseProvider
    purchaseType: (NSString*) purchaseType
    returnProfileResponse: (NSNumber*) returnProfileResponse
    includeProfileResponse: (NSNumber*) includeProfileResponse
    appVersion: (NSString*) appVersion
    completionHandler: (void (^)(OAIProfileResponse* output, NSError* error)) handler {
    // verify the required parameter 'version' is set
    if (version == nil) {
        NSParameterAssert(version);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"version"] };
            NSError* error = [NSError errorWithDomain:kOAITicketApiErrorDomain code:kOAITicketApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'actionType' is set
    if (actionType == nil) {
        NSParameterAssert(actionType);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"actionType"] };
            NSError* error = [NSError errorWithDomain:kOAITicketApiErrorDomain code:kOAITicketApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'ticketObjectType' is set
    if (ticketObjectType == nil) {
        NSParameterAssert(ticketObjectType);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"ticketObjectType"] };
            NSError* error = [NSError errorWithDomain:kOAITicketApiErrorDomain code:kOAITicketApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/{version}/ticket/save"];

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
    if (gameType != nil) {
        queryParams[@"gameType"] = gameType;
    }
    if (appKey != nil) {
        queryParams[@"appKey"] = appKey;
    }
    if (actionType != nil) {
        queryParams[@"actionType"] = actionType;
    }
    if (ticketObjectType != nil) {
        queryParams[@"ticketObjectType"] = ticketObjectType;
    }
    if (objectId != nil) {
        queryParams[@"objectId"] = objectId;
    }
    if (purchaseCode != nil) {
        queryParams[@"purchaseCode"] = purchaseCode;
    }
    if (receiptToken != nil) {
        queryParams[@"receiptToken"] = receiptToken;
    }
    if (receiptData != nil) {
        queryParams[@"receiptData"] = receiptData;
    }
    if (count != nil) {
        queryParams[@"count"] = count;
    }
    if (ticketType != nil) {
        queryParams[@"ticketType"] = ticketType;
    }
    if (purchaseProvider != nil) {
        queryParams[@"purchaseProvider"] = purchaseProvider;
    }
    if (purchaseType != nil) {
        queryParams[@"purchaseType"] = purchaseType;
    }
    if (returnProfileResponse != nil) {
        queryParams[@"returnProfileResponse"] = [returnProfileResponse isEqual:@(YES)] ? @"true" : @"false";
    }
    if (includeProfileResponse != nil) {
        queryParams[@"includeProfileResponse"] = [includeProfileResponse isEqual:@(YES)] ? @"true" : @"false";
    }
    if (appVersion != nil) {
        queryParams[@"appVersion"] = appVersion;
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
                              responseType: @"OAIProfileResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIProfileResponse*)data, error);
                                }
                            }];
}

///
/// Save Ticket with Reciept
/// Similar to the Save Ticket endpoint but allows the receiptData to be in binary format. This must be a multi-part post
///  @param version  
///
///  @param actionType the action being performed { COMPLETED, // ADD TICKETS FOR COMPLETING A MISSION, CHALLENGE, GAME, PACK, LEVEL, LEVEL OBJECT REDEEMED, // REMOVE TICKETS FOR BUYING PACKS, HINTS, AND PEN TOOLS OPTIONS, ETC USERS_PLAYED, // ADD TICKETS FOR LEVELS PLAYED BY OTHER USERS TOURNAMENT_OWNER, // ADD TICKETS FOR TOURNAMENTS BY OTHER USERS PURCHASED, // ADD TICKET VIA IN APP PURCHASING SUMATION, // SUMATION OF TICKETS EARNED FROM CHILDREN GIFTED, // TRANSFERING OF PURCHASE ITEMS TO OTHER PEOPLE REFUNDED // FOR REFUNDING TICKETS BACK TO THE USER } 
///
///  @param ticketObjectType the type of object being purchased {GAME_OBJECT, GAME_LEVEL, PACK, GAME, MISSION, PROFILE, APPLICATION, TICKETS, ASSET, CUSTOM} 
///
///  @param receiptData the receipt/transaction data for validating a purchase via iTunes/Gooogle/etc. This should be in binary format. 
///
///  @param returnNulls whether to return nulls or not (optional)
///
///  @param deviceId the device id (optional)
///
///  @param accountId the account id (optional)
///
///  @param gameType This parameter is deprecated. deprecated, use the appKey (optional)
///
///  @param appKey the application key (optional)
///
///  @param objectId the ID of the item being purchased (optional)
///
///  @param purchaseCode a unique string identifier defined by the application owner or Executive (optional)
///
///  @param receiptToken a unique transaction identifier from the purchase provider (i.e. the transaction ID from iTunes, Google Play, etc) (optional)
///
///  @param count the count of tickets (optional)
///
///  @param ticketType the ticket type (optional)
///
///  @param purchaseProvider the provider for making the purchase {ITUNES, ITUNES_SANDBOX, GOOGLE} (optional)
///
///  @param purchaseType a comma separated list of purchase types { SIRQUL, // purchasing from the sirqul store using tickets IOS, // purchasing from the itunes store for iPhone, iPod, iPod Touch GOOGLE, // purchasing from the google android store AMAZON, // purchasing from the amazon android store MAC, // purchasing from the itunes store for OSX WP8, // purhasing from the windows phone 8 store FREE } (optional)
///
///  @param returnProfileResponse returns a ProfileResponse if true, otherwise will return an AppResponse (optional)
///
///  @param includeProfileResponse if returnProfileResponse is false, will return an AppResponse with profile data if true (optional)
///
///  @param appVersion the application version (optional)
///
///  @returns OAIProfileResponse*
///
-(NSURLSessionTask*) saveTicketViaFileUploadWithVersion: (NSNumber*) version
    actionType: (NSString*) actionType
    ticketObjectType: (NSString*) ticketObjectType
    receiptData: (NSURL*) receiptData
    returnNulls: (NSNumber*) returnNulls
    deviceId: (NSString*) deviceId
    accountId: (NSNumber*) accountId
    gameType: (NSString*) gameType
    appKey: (NSString*) appKey
    objectId: (NSNumber*) objectId
    purchaseCode: (NSString*) purchaseCode
    receiptToken: (NSString*) receiptToken
    count: (NSNumber*) count
    ticketType: (NSString*) ticketType
    purchaseProvider: (NSString*) purchaseProvider
    purchaseType: (NSString*) purchaseType
    returnProfileResponse: (NSNumber*) returnProfileResponse
    includeProfileResponse: (NSNumber*) includeProfileResponse
    appVersion: (NSString*) appVersion
    completionHandler: (void (^)(OAIProfileResponse* output, NSError* error)) handler {
    // verify the required parameter 'version' is set
    if (version == nil) {
        NSParameterAssert(version);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"version"] };
            NSError* error = [NSError errorWithDomain:kOAITicketApiErrorDomain code:kOAITicketApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'actionType' is set
    if (actionType == nil) {
        NSParameterAssert(actionType);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"actionType"] };
            NSError* error = [NSError errorWithDomain:kOAITicketApiErrorDomain code:kOAITicketApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'ticketObjectType' is set
    if (ticketObjectType == nil) {
        NSParameterAssert(ticketObjectType);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"ticketObjectType"] };
            NSError* error = [NSError errorWithDomain:kOAITicketApiErrorDomain code:kOAITicketApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'receiptData' is set
    if (receiptData == nil) {
        NSParameterAssert(receiptData);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"receiptData"] };
            NSError* error = [NSError errorWithDomain:kOAITicketApiErrorDomain code:kOAITicketApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/{version}/ticket/save/fileUpload"];

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
    if (gameType != nil) {
        queryParams[@"gameType"] = gameType;
    }
    if (appKey != nil) {
        queryParams[@"appKey"] = appKey;
    }
    if (actionType != nil) {
        queryParams[@"actionType"] = actionType;
    }
    if (ticketObjectType != nil) {
        queryParams[@"ticketObjectType"] = ticketObjectType;
    }
    if (objectId != nil) {
        queryParams[@"objectId"] = objectId;
    }
    if (purchaseCode != nil) {
        queryParams[@"purchaseCode"] = purchaseCode;
    }
    if (receiptToken != nil) {
        queryParams[@"receiptToken"] = receiptToken;
    }
    if (receiptData != nil) {
        queryParams[@"receiptData"] = receiptData;
    }
    if (count != nil) {
        queryParams[@"count"] = count;
    }
    if (ticketType != nil) {
        queryParams[@"ticketType"] = ticketType;
    }
    if (purchaseProvider != nil) {
        queryParams[@"purchaseProvider"] = purchaseProvider;
    }
    if (purchaseType != nil) {
        queryParams[@"purchaseType"] = purchaseType;
    }
    if (returnProfileResponse != nil) {
        queryParams[@"returnProfileResponse"] = [returnProfileResponse isEqual:@(YES)] ? @"true" : @"false";
    }
    if (includeProfileResponse != nil) {
        queryParams[@"includeProfileResponse"] = [includeProfileResponse isEqual:@(YES)] ? @"true" : @"false";
    }
    if (appVersion != nil) {
        queryParams[@"appVersion"] = appVersion;
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
                              responseType: @"OAIProfileResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIProfileResponse*)data, error);
                                }
                            }];
}

///
/// Get Ticket Offers
/// Get a list offers for tickets owned by sirqul.  Purchasing these will add the number of tickets to the account specified by the offer.
///  @param version  
///
///  @returns OAITicketOfferResponse*
///
-(NSURLSessionTask*) ticketOffersWithVersion: (NSNumber*) version
    completionHandler: (void (^)(OAITicketOfferResponse* output, NSError* error)) handler {
    // verify the required parameter 'version' is set
    if (version == nil) {
        NSParameterAssert(version);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"version"] };
            NSError* error = [NSError errorWithDomain:kOAITicketApiErrorDomain code:kOAITicketApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/{version}/ticket/ticketoffers"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (version != nil) {
        pathParams[@"version"] = version;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
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
                              responseType: @"OAITicketOfferResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAITicketOfferResponse*)data, error);
                                }
                            }];
}



@end
