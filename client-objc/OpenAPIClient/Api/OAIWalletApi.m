#import "OAIWalletApi.h"
#import "OAIQueryParamCollection.h"
#import "OAIApiClient.h"
#import "OAIOfferTransactionResponse.h"
#import "OAISirqulResponse.h"


@interface OAIWalletApi ()

@property (nonatomic, strong, readwrite) NSMutableDictionary *mutableDefaultHeaders;

@end

@implementation OAIWalletApi

NSString* kOAIWalletApiErrorDomain = @"OAIWalletApiErrorDomain";
NSInteger kOAIWalletApiMissingParamErrorCode = 234513;

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
/// Create Wallet Offers
/// Adds offers to the wallet
///  @param version  
///
///  @param deviceId The device id (deviceId or accountId required) (optional)
///
///  @param accountId The account id of the user (deviceId or accountId required) (optional)
///
///  @param offerId The id of the offer being added (offerId or offeLocationId required) (optional)
///
///  @param offerLocationId The id of the offer location being added (offerId or offeLocationId required) (optional)
///
///  @param offerCart A JSON list of offers to purchase. ```json [   {     \"offerId\": 123,     \"offerLocationId\": 234,     \"quantity\": 2   },   {     \"offerId\": 456,     \"offerLocationId\": 567,     \"quantity\": 1   } ] ```  (optional)
///
///  @param promoCode The promoCode (optional)
///
///  @param currencyType Determines the method of purchasing offer. CASH = use card on file, POINTS = use points, TICKETS = use tickets (optional, default to @"CASH")
///
///  @param usePoints Sets the currencyType to POINTS (optional)
///
///  @param metaData External custom client defined data (optional)
///
///  @param appKey The application requesting the purchase, required when currencyType is TICKETS (optional)
///
///  @param status Custom status value to change to (0 or 1 for redeem, 5 or 6 for membership) (optional)
///
///  @returns NSArray<OAIOfferTransactionResponse>*
///
-(NSURLSessionTask*) createOfferTransactionWithVersion: (NSNumber*) version
    deviceId: (NSString*) deviceId
    accountId: (NSNumber*) accountId
    offerId: (NSNumber*) offerId
    offerLocationId: (NSNumber*) offerLocationId
    offerCart: (NSString*) offerCart
    promoCode: (NSString*) promoCode
    currencyType: (NSString*) currencyType
    usePoints: (NSNumber*) usePoints
    metaData: (NSString*) metaData
    appKey: (NSString*) appKey
    status: (NSNumber*) status
    completionHandler: (void (^)(NSArray<OAIOfferTransactionResponse>* output, NSError* error)) handler {
    // verify the required parameter 'version' is set
    if (version == nil) {
        NSParameterAssert(version);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"version"] };
            NSError* error = [NSError errorWithDomain:kOAIWalletApiErrorDomain code:kOAIWalletApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/{version}/wallet/create"];

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
    if (offerId != nil) {
        queryParams[@"offerId"] = offerId;
    }
    if (offerLocationId != nil) {
        queryParams[@"offerLocationId"] = offerLocationId;
    }
    if (offerCart != nil) {
        queryParams[@"offerCart"] = offerCart;
    }
    if (promoCode != nil) {
        queryParams[@"promoCode"] = promoCode;
    }
    if (currencyType != nil) {
        queryParams[@"currencyType"] = currencyType;
    }
    if (usePoints != nil) {
        queryParams[@"usePoints"] = [usePoints isEqual:@(YES)] ? @"true" : @"false";
    }
    if (metaData != nil) {
        queryParams[@"metaData"] = metaData;
    }
    if (appKey != nil) {
        queryParams[@"appKey"] = appKey;
    }
    if (status != nil) {
        queryParams[@"status"] = status;
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
                              responseType: @"NSArray<OAIOfferTransactionResponse>*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSArray<OAIOfferTransactionResponse>*)data, error);
                                }
                            }];
}

///
/// Delete Wallet Offer
/// Removes the transaction from the wallet by setting the deleted date to the current date/time.  Requires a valid account and transactionId.
///  @param version  
///
///  @param transactionId The offer transaction id to remove 
///
///  @param deviceId The device id (deviceId or accountId required) (optional)
///
///  @param accountId The account id of the user (deviceId or accountId required) (optional)
///
///  @returns OAISirqulResponse*
///
-(NSURLSessionTask*) deleteOfferTransactionWithVersion: (NSNumber*) version
    transactionId: (NSNumber*) transactionId
    deviceId: (NSString*) deviceId
    accountId: (NSNumber*) accountId
    completionHandler: (void (^)(OAISirqulResponse* output, NSError* error)) handler {
    // verify the required parameter 'version' is set
    if (version == nil) {
        NSParameterAssert(version);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"version"] };
            NSError* error = [NSError errorWithDomain:kOAIWalletApiErrorDomain code:kOAIWalletApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'transactionId' is set
    if (transactionId == nil) {
        NSParameterAssert(transactionId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"transactionId"] };
            NSError* error = [NSError errorWithDomain:kOAIWalletApiErrorDomain code:kOAIWalletApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/{version}/wallet/delete"];

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
    if (transactionId != nil) {
        queryParams[@"transactionId"] = transactionId;
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
/// Get Wallet Offer
/// 
///  @param version  
///
///  @param transactionId The offer transaction id to get details of 
///
///  @param deviceId The device id (deviceId or accountId required) (optional)
///
///  @param accountId The account id of the user (deviceId or accountId required) (optional)
///
///  @param includeMission If true then include mission data, false to not include (optional, default to @(NO))
///
///  @param latitude The latitude location of the user (optional)
///
///  @param longitude The latitude location of the user (optional)
///
///  @param returnFullResponse Determines whether to return a detailed version of the response (optional, default to @(YES))
///
///  @returns OAIOfferTransactionResponse*
///
-(NSURLSessionTask*) getOfferTransactionWithVersion: (NSNumber*) version
    transactionId: (NSNumber*) transactionId
    deviceId: (NSString*) deviceId
    accountId: (NSNumber*) accountId
    includeMission: (NSNumber*) includeMission
    latitude: (NSNumber*) latitude
    longitude: (NSNumber*) longitude
    returnFullResponse: (NSNumber*) returnFullResponse
    completionHandler: (void (^)(OAIOfferTransactionResponse* output, NSError* error)) handler {
    // verify the required parameter 'version' is set
    if (version == nil) {
        NSParameterAssert(version);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"version"] };
            NSError* error = [NSError errorWithDomain:kOAIWalletApiErrorDomain code:kOAIWalletApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'transactionId' is set
    if (transactionId == nil) {
        NSParameterAssert(transactionId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"transactionId"] };
            NSError* error = [NSError errorWithDomain:kOAIWalletApiErrorDomain code:kOAIWalletApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/{version}/wallet/get"];

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
    if (transactionId != nil) {
        queryParams[@"transactionId"] = transactionId;
    }
    if (includeMission != nil) {
        queryParams[@"includeMission"] = [includeMission isEqual:@(YES)] ? @"true" : @"false";
    }
    if (latitude != nil) {
        queryParams[@"latitude"] = latitude;
    }
    if (longitude != nil) {
        queryParams[@"longitude"] = longitude;
    }
    if (returnFullResponse != nil) {
        queryParams[@"returnFullResponse"] = [returnFullResponse isEqual:@(YES)] ? @"true" : @"false";
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
                              responseType: @"OAIOfferTransactionResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIOfferTransactionResponse*)data, error);
                                }
                            }];
}

///
/// Preview Wallet Offers
/// Preview the final cost of a transaction without charging the user
///  @param version  
///
///  @param deviceId The device id (deviceId or accountId required) (optional)
///
///  @param accountId The account id of the user (deviceId or accountId required) (optional)
///
///  @param offerId The id of the offer being added (offerId or offeLocationId required) (optional)
///
///  @param offerLocationId The id of the offer location being added (offerId or offeLocationId required) (optional)
///
///  @param offerCart A JSON list of offers to purchase. (optional)
///
///  @param promoCode The promoCode (optional)
///
///  @param currencyType Determines the method of purchasing offer. CASH = use card on file, POINTS = use points, TICKETS = use tickets (optional, default to @"CASH")
///
///  @param usePoints Sets the currencyType to POINTS (optional)
///
///  @param metaData External custom client defined data (optional)
///
///  @param appKey The application requesting the purchase, required when currencyType is TICKETS (optional)
///
///  @returns NSArray<OAIOfferTransactionResponse>*
///
-(NSURLSessionTask*) previewOfferTransactionWithVersion: (NSNumber*) version
    deviceId: (NSString*) deviceId
    accountId: (NSNumber*) accountId
    offerId: (NSNumber*) offerId
    offerLocationId: (NSNumber*) offerLocationId
    offerCart: (NSString*) offerCart
    promoCode: (NSString*) promoCode
    currencyType: (NSString*) currencyType
    usePoints: (NSNumber*) usePoints
    metaData: (NSString*) metaData
    appKey: (NSString*) appKey
    completionHandler: (void (^)(NSArray<OAIOfferTransactionResponse>* output, NSError* error)) handler {
    // verify the required parameter 'version' is set
    if (version == nil) {
        NSParameterAssert(version);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"version"] };
            NSError* error = [NSError errorWithDomain:kOAIWalletApiErrorDomain code:kOAIWalletApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/{version}/wallet/preview"];

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
    if (offerId != nil) {
        queryParams[@"offerId"] = offerId;
    }
    if (offerLocationId != nil) {
        queryParams[@"offerLocationId"] = offerLocationId;
    }
    if (offerCart != nil) {
        queryParams[@"offerCart"] = offerCart;
    }
    if (promoCode != nil) {
        queryParams[@"promoCode"] = promoCode;
    }
    if (currencyType != nil) {
        queryParams[@"currencyType"] = currencyType;
    }
    if (usePoints != nil) {
        queryParams[@"usePoints"] = [usePoints isEqual:@(YES)] ? @"true" : @"false";
    }
    if (metaData != nil) {
        queryParams[@"metaData"] = metaData;
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
                              responseType: @"NSArray<OAIOfferTransactionResponse>*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSArray<OAIOfferTransactionResponse>*)data, error);
                                }
                            }];
}

///
/// Search Wallet Offers
/// Search on active offers currently in the user's wallet, or past offers the user has already redeemed.
///  @param version  
///
///  @param deviceId The device id (deviceId or accountId required) (optional)
///
///  @param accountId The account id of the user (deviceId or accountId required) (optional)
///
///  @param keyword The keyword to search for (optional)
///
///  @param retailerId Filter results for this retailer (optional)
///
///  @param retailerIds Filter results for a list of retailers (optional)
///
///  @param retailerLocationId Filter results for this retailer location (optional)
///
///  @param retailerLocationIds Filter results for a list of retailer locations (optional)
///
///  @param excludeRetailerLocationIds Filter results to exclude retailer locations (optional)
///
///  @param offerId Filter results for this offer (optional)
///
///  @param offerIds Filter results for a list of offer (optional)
///
///  @param offerLocationId Filter results for this offer location (optional)
///
///  @param offerLocationIds Filter results for a list of offer locations (optional)
///
///  @param offerType Filter results to return a specific offer type (optional)
///
///  @param offerTypes Filter results to return specific offer types (optional)
///
///  @param specialOfferType Filter results to return a specific special offer type (optional)
///
///  @param specialOfferTypes Filter results to return specific special offer types (optional)
///
///  @param categoryIds Category Ids (optional)
///
///  @param filterIds Filter Ids (optional)
///
///  @param offerAudienceIds Offer Audience Ids (optional)
///
///  @param sortField Determines what to sort the results by (optional, default to @"CREATED")
///
///  @param descending Determines whether the results are in descending order (optional, default to @(YES))
///
///  @param start The start index for pagination (optional, default to @0)
///
///  @param limit The limit for pagination (optional, default to @20)
///
///  @param latitude The latitude location of the user (optional)
///
///  @param longitude The latitude location of the user (optional)
///
///  @param redeemableStartDate Filter results by the offer redeemable date (optional)
///
///  @param redeemableEndDate Filter results by the offer redeemable date (optional)
///
///  @param filterByParentOffer Apply params to offer's parent (optional, default to @(NO))
///
///  @param startedSince Filter results by the offer start date (optional)
///
///  @param startedBefore Filter results by the offer start date (optional)
///
///  @param endedSince Filter results by the offer end date (optional)
///
///  @param endedBefore Filter results by the offer end date (optional)
///
///  @param redeemed If true return redeemed transactions (status 2), otherwise return active transactions (status 0 or 1) (optional, default to @(NO))
///
///  @param statuses Custom status value to change to (0 or 1 for redeem, 5 or 6 for membership) (optional)
///
///  @param reservationsOnly Returns only reservation transactions if true (optional, default to @(NO))
///
///  @param activeOnly Active Only (optional, default to @(NO))
///
///  @param returnFullResponse Determines whether to return a detailed version of the response (optional, default to @(NO))
///
///  @param recurringStartedSince Filter results by the recurring billing start date (optional)
///
///  @param recurringStartedBefore Filter results by the recurring billing start date (optional)
///
///  @param recurringExpirationSince Filter results by the recurring billing expiration date (optional)
///
///  @param recurringExpirationBefore Filter results by the recurring billing expiration date (optional)
///
///  @returns NSArray<OAIOfferTransactionResponse>*
///
-(NSURLSessionTask*) searchOfferTransactionsWithVersion: (NSNumber*) version
    deviceId: (NSString*) deviceId
    accountId: (NSNumber*) accountId
    keyword: (NSString*) keyword
    retailerId: (NSNumber*) retailerId
    retailerIds: (NSString*) retailerIds
    retailerLocationId: (NSNumber*) retailerLocationId
    retailerLocationIds: (NSString*) retailerLocationIds
    excludeRetailerLocationIds: (NSString*) excludeRetailerLocationIds
    offerId: (NSNumber*) offerId
    offerIds: (NSString*) offerIds
    offerLocationId: (NSNumber*) offerLocationId
    offerLocationIds: (NSString*) offerLocationIds
    offerType: (NSString*) offerType
    offerTypes: (NSString*) offerTypes
    specialOfferType: (NSString*) specialOfferType
    specialOfferTypes: (NSString*) specialOfferTypes
    categoryIds: (NSString*) categoryIds
    filterIds: (NSString*) filterIds
    offerAudienceIds: (NSString*) offerAudienceIds
    sortField: (NSString*) sortField
    descending: (NSNumber*) descending
    start: (NSNumber*) start
    limit: (NSNumber*) limit
    latitude: (NSNumber*) latitude
    longitude: (NSNumber*) longitude
    redeemableStartDate: (NSNumber*) redeemableStartDate
    redeemableEndDate: (NSNumber*) redeemableEndDate
    filterByParentOffer: (NSNumber*) filterByParentOffer
    startedSince: (NSNumber*) startedSince
    startedBefore: (NSNumber*) startedBefore
    endedSince: (NSNumber*) endedSince
    endedBefore: (NSNumber*) endedBefore
    redeemed: (NSNumber*) redeemed
    statuses: (NSString*) statuses
    reservationsOnly: (NSNumber*) reservationsOnly
    activeOnly: (NSNumber*) activeOnly
    returnFullResponse: (NSNumber*) returnFullResponse
    recurringStartedSince: (NSNumber*) recurringStartedSince
    recurringStartedBefore: (NSNumber*) recurringStartedBefore
    recurringExpirationSince: (NSNumber*) recurringExpirationSince
    recurringExpirationBefore: (NSNumber*) recurringExpirationBefore
    completionHandler: (void (^)(NSArray<OAIOfferTransactionResponse>* output, NSError* error)) handler {
    // verify the required parameter 'version' is set
    if (version == nil) {
        NSParameterAssert(version);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"version"] };
            NSError* error = [NSError errorWithDomain:kOAIWalletApiErrorDomain code:kOAIWalletApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/{version}/wallet/search"];

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
    if (keyword != nil) {
        queryParams[@"keyword"] = keyword;
    }
    if (retailerId != nil) {
        queryParams[@"retailerId"] = retailerId;
    }
    if (retailerIds != nil) {
        queryParams[@"retailerIds"] = retailerIds;
    }
    if (retailerLocationId != nil) {
        queryParams[@"retailerLocationId"] = retailerLocationId;
    }
    if (retailerLocationIds != nil) {
        queryParams[@"retailerLocationIds"] = retailerLocationIds;
    }
    if (excludeRetailerLocationIds != nil) {
        queryParams[@"excludeRetailerLocationIds"] = excludeRetailerLocationIds;
    }
    if (offerId != nil) {
        queryParams[@"offerId"] = offerId;
    }
    if (offerIds != nil) {
        queryParams[@"offerIds"] = offerIds;
    }
    if (offerLocationId != nil) {
        queryParams[@"offerLocationId"] = offerLocationId;
    }
    if (offerLocationIds != nil) {
        queryParams[@"offerLocationIds"] = offerLocationIds;
    }
    if (offerType != nil) {
        queryParams[@"offerType"] = offerType;
    }
    if (offerTypes != nil) {
        queryParams[@"offerTypes"] = offerTypes;
    }
    if (specialOfferType != nil) {
        queryParams[@"specialOfferType"] = specialOfferType;
    }
    if (specialOfferTypes != nil) {
        queryParams[@"specialOfferTypes"] = specialOfferTypes;
    }
    if (categoryIds != nil) {
        queryParams[@"categoryIds"] = categoryIds;
    }
    if (filterIds != nil) {
        queryParams[@"filterIds"] = filterIds;
    }
    if (offerAudienceIds != nil) {
        queryParams[@"offerAudienceIds"] = offerAudienceIds;
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
    if (latitude != nil) {
        queryParams[@"latitude"] = latitude;
    }
    if (longitude != nil) {
        queryParams[@"longitude"] = longitude;
    }
    if (redeemableStartDate != nil) {
        queryParams[@"redeemableStartDate"] = redeemableStartDate;
    }
    if (redeemableEndDate != nil) {
        queryParams[@"redeemableEndDate"] = redeemableEndDate;
    }
    if (filterByParentOffer != nil) {
        queryParams[@"filterByParentOffer"] = [filterByParentOffer isEqual:@(YES)] ? @"true" : @"false";
    }
    if (startedSince != nil) {
        queryParams[@"startedSince"] = startedSince;
    }
    if (startedBefore != nil) {
        queryParams[@"startedBefore"] = startedBefore;
    }
    if (endedSince != nil) {
        queryParams[@"endedSince"] = endedSince;
    }
    if (endedBefore != nil) {
        queryParams[@"endedBefore"] = endedBefore;
    }
    if (redeemed != nil) {
        queryParams[@"redeemed"] = [redeemed isEqual:@(YES)] ? @"true" : @"false";
    }
    if (statuses != nil) {
        queryParams[@"statuses"] = statuses;
    }
    if (reservationsOnly != nil) {
        queryParams[@"reservationsOnly"] = [reservationsOnly isEqual:@(YES)] ? @"true" : @"false";
    }
    if (activeOnly != nil) {
        queryParams[@"activeOnly"] = [activeOnly isEqual:@(YES)] ? @"true" : @"false";
    }
    if (returnFullResponse != nil) {
        queryParams[@"returnFullResponse"] = [returnFullResponse isEqual:@(YES)] ? @"true" : @"false";
    }
    if (recurringStartedSince != nil) {
        queryParams[@"recurringStartedSince"] = recurringStartedSince;
    }
    if (recurringStartedBefore != nil) {
        queryParams[@"recurringStartedBefore"] = recurringStartedBefore;
    }
    if (recurringExpirationSince != nil) {
        queryParams[@"recurringExpirationSince"] = recurringExpirationSince;
    }
    if (recurringExpirationBefore != nil) {
        queryParams[@"recurringExpirationBefore"] = recurringExpirationBefore;
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
                              responseType: @"NSArray<OAIOfferTransactionResponse>*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSArray<OAIOfferTransactionResponse>*)data, error);
                                }
                            }];
}

///
/// Update Wallet Offer
/// Update offer status. The status values are: 0 - not redeemable, 1 - redeemable.  Not redeemable means the customer has received the offer but has not decided to use (or print) it yet.  Until they choose to do this the merchant cannot redeem the offer (has not been given permission yet).   Redeemable means the customer has chosen to use the offer and wishes to redeem it.  Redeemed means the merchant has accepted the offer and the given the customer its value, then marked it a used in the system.  This status change is handled by a merchant end point.
///  @param version  
///
///  @param transactionId The offer transaction id to remove 
///
///  @param status The status value to change to (0 or 1) 
///
///  @param deviceId The device id (deviceId or accountId required) (optional)
///
///  @param accountId The account id of the user (deviceId or accountId required) (optional)
///
///  @param offerLocationId Offer Location Id (optional)
///
///  @param currencyType Currency Type (optional, default to @"CASH")
///
///  @param usePoints Use Points (optional)
///
///  @param appKey App Key (optional)
///
///  @param latitude The latitude location of the user (optional)
///
///  @param longitude The latitude location of the user (optional)
///
///  @param metaData External custom client defined data (optional)
///
///  @param returnFullResponse Determines whether to return a detailed version of the response (optional, default to @(NO))
///
///  @param exceptionMembershipOfferIds Exception Offers, transaction audiences of these offers won't be removed out of the account when up (optional)
///
///  @returns OAIOfferTransactionResponse*
///
-(NSURLSessionTask*) updateOfferTransactionWithVersion: (NSNumber*) version
    transactionId: (NSNumber*) transactionId
    status: (NSNumber*) status
    deviceId: (NSString*) deviceId
    accountId: (NSNumber*) accountId
    offerLocationId: (NSNumber*) offerLocationId
    currencyType: (NSString*) currencyType
    usePoints: (NSNumber*) usePoints
    appKey: (NSString*) appKey
    latitude: (NSNumber*) latitude
    longitude: (NSNumber*) longitude
    metaData: (NSString*) metaData
    returnFullResponse: (NSNumber*) returnFullResponse
    exceptionMembershipOfferIds: (NSString*) exceptionMembershipOfferIds
    completionHandler: (void (^)(OAIOfferTransactionResponse* output, NSError* error)) handler {
    // verify the required parameter 'version' is set
    if (version == nil) {
        NSParameterAssert(version);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"version"] };
            NSError* error = [NSError errorWithDomain:kOAIWalletApiErrorDomain code:kOAIWalletApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'transactionId' is set
    if (transactionId == nil) {
        NSParameterAssert(transactionId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"transactionId"] };
            NSError* error = [NSError errorWithDomain:kOAIWalletApiErrorDomain code:kOAIWalletApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'status' is set
    if (status == nil) {
        NSParameterAssert(status);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"status"] };
            NSError* error = [NSError errorWithDomain:kOAIWalletApiErrorDomain code:kOAIWalletApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/{version}/wallet/update"];

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
    if (transactionId != nil) {
        queryParams[@"transactionId"] = transactionId;
    }
    if (offerLocationId != nil) {
        queryParams[@"offerLocationId"] = offerLocationId;
    }
    if (currencyType != nil) {
        queryParams[@"currencyType"] = currencyType;
    }
    if (usePoints != nil) {
        queryParams[@"usePoints"] = [usePoints isEqual:@(YES)] ? @"true" : @"false";
    }
    if (appKey != nil) {
        queryParams[@"appKey"] = appKey;
    }
    if (status != nil) {
        queryParams[@"status"] = status;
    }
    if (latitude != nil) {
        queryParams[@"latitude"] = latitude;
    }
    if (longitude != nil) {
        queryParams[@"longitude"] = longitude;
    }
    if (metaData != nil) {
        queryParams[@"metaData"] = metaData;
    }
    if (returnFullResponse != nil) {
        queryParams[@"returnFullResponse"] = [returnFullResponse isEqual:@(YES)] ? @"true" : @"false";
    }
    if (exceptionMembershipOfferIds != nil) {
        queryParams[@"exceptionMembershipOfferIds"] = exceptionMembershipOfferIds;
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
                              responseType: @"OAIOfferTransactionResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIOfferTransactionResponse*)data, error);
                                }
                            }];
}



@end
