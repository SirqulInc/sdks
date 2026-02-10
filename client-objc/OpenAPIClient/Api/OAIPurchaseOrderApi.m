#import "OAIPurchaseOrderApi.h"
#import "OAIQueryParamCollection.h"
#import "OAIApiClient.h"
#import "OAIOrderResponse.h"
#import "OAISirqulResponse.h"


@interface OAIPurchaseOrderApi ()

@property (nonatomic, strong, readwrite) NSMutableDictionary *mutableDefaultHeaders;

@end

@implementation OAIPurchaseOrderApi

NSString* kOAIPurchaseOrderApiErrorDomain = @"OAIPurchaseOrderApiErrorDomain";
NSInteger kOAIPurchaseOrderApiMissingParamErrorCode = 234513;

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
/// Create Order
/// Creates a new purchase with some number of items associated with it. The purchase is added to the order that was created
///  @param version  
///
///  @param appKey The application requesting the purchase 
///
///  @param cart ```json [   { \"orderItemType\": \"OFFER\", \"orderItemId\": 234, \"orderCustomType\": \"OfferLocation\", \"orderCustomId\": 123, \"retailerLocationId\": 1234, \"quantity\": 2 },   { \"orderItemType\": \"OFFER\", \"orderItemId\": 235, \"quantity\": 2 },   { \"orderItemType\": \"CUSTOM\", \"amount\": 10.50, \"orderCustomType\": \"ServiceFee\" },   { \"orderItemType\": \"CUSTOM\", \"amount\": 25.10, \"quantity\": 2, \"orderCustomType\": \"Hat\", \"orderCustomId\": 123 } ] ```  
///
///  @param deviceId The device id (deviceId or accountId required) (optional)
///
///  @param accountId The account id of the user (deviceId or accountId required) (optional)
///
///  @param _description A description of the purchase (optional)
///
///  @param currencyType Determines the method of purchasing offer.  * VOID: used for when there is no payment involved (ie. for updating the status of a purchase order)  * CASH: use card on file  * POINTS: use account balance  * TICKETS: use tickets  * REFUND: not allowed for a create, requires a paymentTransactionId.  * CREDIT: add to the account balance  * RELOAD: charge a credit card then add to the account balance   (optional, default to @"CASH")
///
///  @param paymentMethodId Use a specific payment method (CASH), if not provided use default (optional)
///
///  @param externalOrderId Store identifier from external system (optional)
///
///  @param externalPaymentId Store identifier from external system (optional)
///
///  @param remoteRefType Remote Reference type (optional)
///
///  @param externalDate External Date (optional)
///
///  @param promoCode The Promo Code (optional)
///
///  @returns OAIOrderResponse*
///
-(NSURLSessionTask*) createOrderWithVersion: (NSNumber*) version
    appKey: (NSString*) appKey
    cart: (NSString*) cart
    deviceId: (NSString*) deviceId
    accountId: (NSNumber*) accountId
    _description: (NSString*) _description
    currencyType: (NSString*) currencyType
    paymentMethodId: (NSNumber*) paymentMethodId
    externalOrderId: (NSString*) externalOrderId
    externalPaymentId: (NSString*) externalPaymentId
    remoteRefType: (NSString*) remoteRefType
    externalDate: (NSNumber*) externalDate
    promoCode: (NSString*) promoCode
    completionHandler: (void (^)(OAIOrderResponse* output, NSError* error)) handler {
    // verify the required parameter 'version' is set
    if (version == nil) {
        NSParameterAssert(version);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"version"] };
            NSError* error = [NSError errorWithDomain:kOAIPurchaseOrderApiErrorDomain code:kOAIPurchaseOrderApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'appKey' is set
    if (appKey == nil) {
        NSParameterAssert(appKey);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"appKey"] };
            NSError* error = [NSError errorWithDomain:kOAIPurchaseOrderApiErrorDomain code:kOAIPurchaseOrderApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'cart' is set
    if (cart == nil) {
        NSParameterAssert(cart);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"cart"] };
            NSError* error = [NSError errorWithDomain:kOAIPurchaseOrderApiErrorDomain code:kOAIPurchaseOrderApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/{version}/order/create"];

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
    if (_description != nil) {
        queryParams[@"description"] = _description;
    }
    if (currencyType != nil) {
        queryParams[@"currencyType"] = currencyType;
    }
    if (cart != nil) {
        queryParams[@"cart"] = cart;
    }
    if (paymentMethodId != nil) {
        queryParams[@"paymentMethodId"] = paymentMethodId;
    }
    if (externalOrderId != nil) {
        queryParams[@"externalOrderId"] = externalOrderId;
    }
    if (externalPaymentId != nil) {
        queryParams[@"externalPaymentId"] = externalPaymentId;
    }
    if (remoteRefType != nil) {
        queryParams[@"remoteRefType"] = remoteRefType;
    }
    if (externalDate != nil) {
        queryParams[@"externalDate"] = externalDate;
    }
    if (promoCode != nil) {
        queryParams[@"promoCode"] = promoCode;
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
                              responseType: @"OAIOrderResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIOrderResponse*)data, error);
                                }
                            }];
}

///
/// Delete Order
/// Removes the transaction from the wallet by setting the deleted date to the current date/time.  Requires a valid account and transactionId.
///  @param version  
///
///  @param orderId Order Id 
///
///  @param deviceId The device id (deviceId or accountId required) (optional)
///
///  @param accountId The account id of the user (deviceId or accountId required) (optional)
///
///  @returns OAISirqulResponse*
///
-(NSURLSessionTask*) deleteOrderWithVersion: (NSNumber*) version
    orderId: (NSNumber*) orderId
    deviceId: (NSString*) deviceId
    accountId: (NSNumber*) accountId
    completionHandler: (void (^)(OAISirqulResponse* output, NSError* error)) handler {
    // verify the required parameter 'version' is set
    if (version == nil) {
        NSParameterAssert(version);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"version"] };
            NSError* error = [NSError errorWithDomain:kOAIPurchaseOrderApiErrorDomain code:kOAIPurchaseOrderApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'orderId' is set
    if (orderId == nil) {
        NSParameterAssert(orderId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"orderId"] };
            NSError* error = [NSError errorWithDomain:kOAIPurchaseOrderApiErrorDomain code:kOAIPurchaseOrderApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/{version}/order/delete"];

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
    if (orderId != nil) {
        queryParams[@"orderId"] = orderId;
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
/// Get Order
/// Get an order record
///  @param version  
///
///  @param deviceId The device id (deviceId or accountId required) (optional)
///
///  @param accountId The account id of the user (deviceId or accountId required) (optional)
///
///  @param orderId The order id to get details of, either orderId or externalOrderId must be provided (optional)
///
///  @param externalOrderId The external order id to get details of, either orderId or externalOrderId must be provided (optional)
///
///  @returns OAIOrderResponse*
///
-(NSURLSessionTask*) getOrderWithVersion: (NSNumber*) version
    deviceId: (NSString*) deviceId
    accountId: (NSNumber*) accountId
    orderId: (NSNumber*) orderId
    externalOrderId: (NSString*) externalOrderId
    completionHandler: (void (^)(OAIOrderResponse* output, NSError* error)) handler {
    // verify the required parameter 'version' is set
    if (version == nil) {
        NSParameterAssert(version);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"version"] };
            NSError* error = [NSError errorWithDomain:kOAIPurchaseOrderApiErrorDomain code:kOAIPurchaseOrderApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/{version}/order/get"];

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
    if (orderId != nil) {
        queryParams[@"orderId"] = orderId;
    }
    if (externalOrderId != nil) {
        queryParams[@"externalOrderId"] = externalOrderId;
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
                              responseType: @"OAIOrderResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIOrderResponse*)data, error);
                                }
                            }];
}

///
/// Preview Order
/// Previews a purchase to see the total cost before making it.
///  @param version  
///
///  @param appKey The application requesting the purchase 
///
///  @param cart A JSON list of items to purchase 
///
///  @param deviceId The device id (deviceId or accountId required) (optional)
///
///  @param accountId The account id of the user (deviceId or accountId required) (optional)
///
///  @param _description A description of the purchase (optional)
///
///  @param currencyType Determines the method of purchasing offer. ```json {   \"VOID\": \"used for when there is no payment involved (ie. for updating the status of a purchase order)\",   \"CASH\": \"use card on file\",   \"POINTS\": \"use account balance\",   \"TICKETS\": \"use tickets\",   \"REFUND\": \"not allowed for a create, requires a paymentTransactionId\",   \"CREDIT\": \"add to the account balance\",   \"RELOAD\": \"charge a credit card then add to the account balance\" } ```  (optional, default to @"CASH")
///
///  @param paymentMethodId Use a specific payment method (CASH), if not provided use default (optional)
///
///  @param externalOrderId Store identifier from external system (optional)
///
///  @param externalPaymentId Store identifier from external system (optional)
///
///  @param remoteRefType Remote Reference type (optional)
///
///  @param externalDate External Date (optional)
///
///  @param promoCode The Promo Code (optional)
///
///  @returns OAIOrderResponse*
///
-(NSURLSessionTask*) previewOrderWithVersion: (NSNumber*) version
    appKey: (NSString*) appKey
    cart: (NSString*) cart
    deviceId: (NSString*) deviceId
    accountId: (NSNumber*) accountId
    _description: (NSString*) _description
    currencyType: (NSString*) currencyType
    paymentMethodId: (NSNumber*) paymentMethodId
    externalOrderId: (NSString*) externalOrderId
    externalPaymentId: (NSString*) externalPaymentId
    remoteRefType: (NSString*) remoteRefType
    externalDate: (NSNumber*) externalDate
    promoCode: (NSString*) promoCode
    completionHandler: (void (^)(OAIOrderResponse* output, NSError* error)) handler {
    // verify the required parameter 'version' is set
    if (version == nil) {
        NSParameterAssert(version);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"version"] };
            NSError* error = [NSError errorWithDomain:kOAIPurchaseOrderApiErrorDomain code:kOAIPurchaseOrderApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'appKey' is set
    if (appKey == nil) {
        NSParameterAssert(appKey);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"appKey"] };
            NSError* error = [NSError errorWithDomain:kOAIPurchaseOrderApiErrorDomain code:kOAIPurchaseOrderApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'cart' is set
    if (cart == nil) {
        NSParameterAssert(cart);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"cart"] };
            NSError* error = [NSError errorWithDomain:kOAIPurchaseOrderApiErrorDomain code:kOAIPurchaseOrderApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/{version}/order/preview"];

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
    if (_description != nil) {
        queryParams[@"description"] = _description;
    }
    if (currencyType != nil) {
        queryParams[@"currencyType"] = currencyType;
    }
    if (cart != nil) {
        queryParams[@"cart"] = cart;
    }
    if (paymentMethodId != nil) {
        queryParams[@"paymentMethodId"] = paymentMethodId;
    }
    if (externalOrderId != nil) {
        queryParams[@"externalOrderId"] = externalOrderId;
    }
    if (externalPaymentId != nil) {
        queryParams[@"externalPaymentId"] = externalPaymentId;
    }
    if (remoteRefType != nil) {
        queryParams[@"remoteRefType"] = remoteRefType;
    }
    if (externalDate != nil) {
        queryParams[@"externalDate"] = externalDate;
    }
    if (promoCode != nil) {
        queryParams[@"promoCode"] = promoCode;
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
                              responseType: @"OAIOrderResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIOrderResponse*)data, error);
                                }
                            }];
}

///
/// Search Orders
/// Search on active orders by customer
///  @param version  
///
///  @param appKey The application requesting the purchase 
///
///  @param deviceId The device id (deviceId or accountId required) (optional)
///
///  @param accountId The account id of the user (deviceId or accountId required) (optional)
///
///  @param start The start index for pagination (optional, default to @0)
///
///  @param limit The limit for pagination (optional, default to @20)
///
///  @param descending Determines whether to return the resulting list in descending or ascending order (optional, default to @(YES))
///
///  @param activeOnly Only return active orders (optional, default to @(NO))
///
///  @param ignoreCustomerFilter Determines whether to ignore the customer filter (requires an Admin/Exec account) (optional, default to @(NO))
///
///  @param orderItemTypes Filter results by orderItemTypes (optional)
///
///  @param orderItemIds Filter results by orderItemIds (optional)
///
///  @param orderCustomTypes Filter results by orderCustomTypes (optional)
///
///  @param orderCustomIds Filter results by orderCustomIds (optional)
///
///  @param sortField Determines what to sort the results by (optional, default to @"ID")
///
///  @param offerTypes Filter results by offer type (optional)
///
///  @param specialOfferTypes Filter results by special offer type (optional)
///
///  @param categoryIds Filter results by category Ids (optional)
///
///  @param filterIds Filter results by filter Ids (optional)
///
///  @param offerAudienceIds Filter results by offer audience Ids (optional)
///
///  @param transactionAudienceIds Filter results by transaction audience Ids (optional)
///
///  @param offerIds Filter results by offer Ids (optional)
///
///  @param offerLocationIds Filter results by offer location Ids (optional)
///
///  @param retailerIds Filter results by retailer Ids (optional)
///
///  @param retailerLocationIds Filter results by retailer location Ids (optional)
///
///  @param statuses Filter results by offer transaction status (0: non-redeemable, 1: redeemable, 2: redeemed, 3: user deleted, 4: unclaimed/rewarded, 5: membership active, 6: membership cancelled) (optional)
///
///  @param keyword The keyword to search for (optional)
///
///  @param redeemableStartDate Filter results by the offer redeemable date (optional)
///
///  @param redeemableEndDate Filter results by the offer redeemable date (optional)
///
///  @param startedSince Filter results by the offer start date (optional)
///
///  @param startedBefore Filter results by the offer start date (optional)
///
///  @param endedSince Filter results by the offer end date (optional)
///
///  @param endedBefore Filter results by the offer end date (optional)
///
///  @returns NSArray<OAIOrderResponse>*
///
-(NSURLSessionTask*) searchOrdersWithVersion: (NSNumber*) version
    appKey: (NSString*) appKey
    deviceId: (NSString*) deviceId
    accountId: (NSNumber*) accountId
    start: (NSNumber*) start
    limit: (NSNumber*) limit
    descending: (NSNumber*) descending
    activeOnly: (NSNumber*) activeOnly
    ignoreCustomerFilter: (NSNumber*) ignoreCustomerFilter
    orderItemTypes: (NSString*) orderItemTypes
    orderItemIds: (NSString*) orderItemIds
    orderCustomTypes: (NSString*) orderCustomTypes
    orderCustomIds: (NSString*) orderCustomIds
    sortField: (NSString*) sortField
    offerTypes: (NSString*) offerTypes
    specialOfferTypes: (NSString*) specialOfferTypes
    categoryIds: (NSString*) categoryIds
    filterIds: (NSString*) filterIds
    offerAudienceIds: (NSString*) offerAudienceIds
    transactionAudienceIds: (NSString*) transactionAudienceIds
    offerIds: (NSString*) offerIds
    offerLocationIds: (NSString*) offerLocationIds
    retailerIds: (NSString*) retailerIds
    retailerLocationIds: (NSString*) retailerLocationIds
    statuses: (NSString*) statuses
    keyword: (NSString*) keyword
    redeemableStartDate: (NSNumber*) redeemableStartDate
    redeemableEndDate: (NSNumber*) redeemableEndDate
    startedSince: (NSNumber*) startedSince
    startedBefore: (NSNumber*) startedBefore
    endedSince: (NSNumber*) endedSince
    endedBefore: (NSNumber*) endedBefore
    completionHandler: (void (^)(NSArray<OAIOrderResponse>* output, NSError* error)) handler {
    // verify the required parameter 'version' is set
    if (version == nil) {
        NSParameterAssert(version);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"version"] };
            NSError* error = [NSError errorWithDomain:kOAIPurchaseOrderApiErrorDomain code:kOAIPurchaseOrderApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'appKey' is set
    if (appKey == nil) {
        NSParameterAssert(appKey);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"appKey"] };
            NSError* error = [NSError errorWithDomain:kOAIPurchaseOrderApiErrorDomain code:kOAIPurchaseOrderApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/{version}/order/search"];

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
    if (start != nil) {
        queryParams[@"start"] = start;
    }
    if (limit != nil) {
        queryParams[@"limit"] = limit;
    }
    if (descending != nil) {
        queryParams[@"descending"] = [descending isEqual:@(YES)] ? @"true" : @"false";
    }
    if (activeOnly != nil) {
        queryParams[@"activeOnly"] = [activeOnly isEqual:@(YES)] ? @"true" : @"false";
    }
    if (ignoreCustomerFilter != nil) {
        queryParams[@"ignoreCustomerFilter"] = [ignoreCustomerFilter isEqual:@(YES)] ? @"true" : @"false";
    }
    if (orderItemTypes != nil) {
        queryParams[@"orderItemTypes"] = orderItemTypes;
    }
    if (orderItemIds != nil) {
        queryParams[@"orderItemIds"] = orderItemIds;
    }
    if (orderCustomTypes != nil) {
        queryParams[@"orderCustomTypes"] = orderCustomTypes;
    }
    if (orderCustomIds != nil) {
        queryParams[@"orderCustomIds"] = orderCustomIds;
    }
    if (sortField != nil) {
        queryParams[@"sortField"] = sortField;
    }
    if (offerTypes != nil) {
        queryParams[@"offerTypes"] = offerTypes;
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
    if (transactionAudienceIds != nil) {
        queryParams[@"transactionAudienceIds"] = transactionAudienceIds;
    }
    if (offerIds != nil) {
        queryParams[@"offerIds"] = offerIds;
    }
    if (offerLocationIds != nil) {
        queryParams[@"offerLocationIds"] = offerLocationIds;
    }
    if (retailerIds != nil) {
        queryParams[@"retailerIds"] = retailerIds;
    }
    if (retailerLocationIds != nil) {
        queryParams[@"retailerLocationIds"] = retailerLocationIds;
    }
    if (statuses != nil) {
        queryParams[@"statuses"] = statuses;
    }
    if (keyword != nil) {
        queryParams[@"keyword"] = keyword;
    }
    if (redeemableStartDate != nil) {
        queryParams[@"redeemableStartDate"] = redeemableStartDate;
    }
    if (redeemableEndDate != nil) {
        queryParams[@"redeemableEndDate"] = redeemableEndDate;
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
                              responseType: @"NSArray<OAIOrderResponse>*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSArray<OAIOrderResponse>*)data, error);
                                }
                            }];
}

///
/// Update Order
/// Updates new purchase with some number of items associated with it. The orderId provided is used to retrieve the record and the payment is added to it.
///  @param version  
///
///  @param orderId The order to add the purchase to, leave null for new order. 
///
///  @param appKey The application requesting the purchase 
///
///  @param cart ```json [   { \"orderItemType\": \"OFFER\", \"orderItemId\": 234, \"orderCustomType\": \"OfferLocation\", \"orderCustomId\": 123, \"retailerLocationId\": 1234, \"quantity\": 2 },   { \"orderItemType\": \"OFFER\", \"orderItemId\": 235, \"quantity\": 2 },   { \"orderItemType\": \"CUSTOM\", \"amount\": 10.50, \"orderCustomType\": \"ServiceFee\" },   { \"orderItemType\": \"CUSTOM\", \"amount\": 25.10, \"quantity\": 2, \"orderCustomType\": \"Hat\", \"orderCustomId\": 123 } ] ```  
///
///  @param deviceId The device id (deviceId or accountId required) (optional)
///
///  @param accountId The account id of the user (deviceId or accountId required) (optional)
///
///  @param paymentTransactionId The payment transaction to apply the refund to (optional)
///
///  @param _description A description of the purchase (optional)
///
///  @param currencyType Determines the method of purchasing offer.  * VOID: used for when there is no payment involved (ie. for updating the status of a purchase order)  * CASH: use card on file  * POINTS: use account balance  * TICKETS: use tickets  * REFUND: not allowed for a create, requires a paymentTransactionId.  * CREDIT: add to the account balance  * RELOAD: charge a credit card then add to the account balance   (optional, default to @"CASH")
///
///  @param paymentMethodId Use a specific payment method (CASH), if not provided use default (optional)
///
///  @param externalPaymentId Store identifier from external system (optional)
///
///  @param externalDate External Date (optional)
///
///  @returns OAIOrderResponse*
///
-(NSURLSessionTask*) updateOrderWithVersion: (NSNumber*) version
    orderId: (NSNumber*) orderId
    appKey: (NSString*) appKey
    cart: (NSString*) cart
    deviceId: (NSString*) deviceId
    accountId: (NSNumber*) accountId
    paymentTransactionId: (NSNumber*) paymentTransactionId
    _description: (NSString*) _description
    currencyType: (NSString*) currencyType
    paymentMethodId: (NSNumber*) paymentMethodId
    externalPaymentId: (NSString*) externalPaymentId
    externalDate: (NSNumber*) externalDate
    completionHandler: (void (^)(OAIOrderResponse* output, NSError* error)) handler {
    // verify the required parameter 'version' is set
    if (version == nil) {
        NSParameterAssert(version);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"version"] };
            NSError* error = [NSError errorWithDomain:kOAIPurchaseOrderApiErrorDomain code:kOAIPurchaseOrderApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'orderId' is set
    if (orderId == nil) {
        NSParameterAssert(orderId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"orderId"] };
            NSError* error = [NSError errorWithDomain:kOAIPurchaseOrderApiErrorDomain code:kOAIPurchaseOrderApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'appKey' is set
    if (appKey == nil) {
        NSParameterAssert(appKey);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"appKey"] };
            NSError* error = [NSError errorWithDomain:kOAIPurchaseOrderApiErrorDomain code:kOAIPurchaseOrderApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'cart' is set
    if (cart == nil) {
        NSParameterAssert(cart);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"cart"] };
            NSError* error = [NSError errorWithDomain:kOAIPurchaseOrderApiErrorDomain code:kOAIPurchaseOrderApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/{version}/order/update"];

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
    if (orderId != nil) {
        queryParams[@"orderId"] = orderId;
    }
    if (paymentTransactionId != nil) {
        queryParams[@"paymentTransactionId"] = paymentTransactionId;
    }
    if (appKey != nil) {
        queryParams[@"appKey"] = appKey;
    }
    if (_description != nil) {
        queryParams[@"description"] = _description;
    }
    if (currencyType != nil) {
        queryParams[@"currencyType"] = currencyType;
    }
    if (cart != nil) {
        queryParams[@"cart"] = cart;
    }
    if (paymentMethodId != nil) {
        queryParams[@"paymentMethodId"] = paymentMethodId;
    }
    if (externalPaymentId != nil) {
        queryParams[@"externalPaymentId"] = externalPaymentId;
    }
    if (externalDate != nil) {
        queryParams[@"externalDate"] = externalDate;
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
                              responseType: @"OAIOrderResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIOrderResponse*)data, error);
                                }
                            }];
}



@end
