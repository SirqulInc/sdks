#import "OAIPurchaseItemApi.h"
#import "OAIQueryParamCollection.h"
#import "OAIApiClient.h"
#import "OAIPurchaseItemFullResponse.h"
#import "OAIPurchaseItemResponse.h"
#import "OAISirqulResponse.h"


@interface OAIPurchaseItemApi ()

@property (nonatomic, strong, readwrite) NSMutableDictionary *mutableDefaultHeaders;

@end

@implementation OAIPurchaseItemApi

NSString* kOAIPurchaseItemApiErrorDomain = @"OAIPurchaseItemApiErrorDomain";
NSInteger kOAIPurchaseItemApiMissingParamErrorCode = 234513;

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
/// Create Purchase
/// Creates a purchase item for in app purchases
///  @param version  
///
///  @param appKey The application key that the purchase can be used in 
///
///  @param name The name of the purchase item 
///
///  @param purchaseType The purchase provider <ul> <li>SIRQUL - the Sirqul store to make purchases using tickets</li> <li>IOS - the iTunes store for iPhone, iPod, iPod Touch</li> <li>GOOGLE - the Google Play store</li> <li>AMAZON - the Amazon Android store</li> <li>MAC - the iTunes store for OSX</li> <li>WP8 - the Windows Phone 8 store</li> <li>FREE - used for purchase items that are free (can be used for development/testing purposes)</li> </ul> 
///
///  @param deviceId The device id (deviceId or accountId required) (optional)
///
///  @param accountId The account id of the user (deviceId or accountId required) (optional)
///
///  @param _description The description of the purchase item (optional)
///
///  @param tickets How much the purchase item is worth in tickets (optional)
///
///  @param price How much the purchase item will cost in real money (optional)
///
///  @param purchaseCode The unique identifier used by purchase providers to identify in-app-purchases (optional)
///
///  @param secretKey A secret key from purchase providers that would be used for validation (optional)
///
///  @param purchaseLimit How many times a user acquire the same purchase item (optional, default to @0)
///
///  @param serviceAction Determines whether the purchase item will enable certain features <ul> <li>DAY_PREMIUM - subscribes a user for a day of membership</li> <li>WEEK_PREMIUM - subscribes a user for a week of membership</li> <li>MONTH_PREMIUM - subscribes a user for a month of membership</li> <li>ADD_TICKET - allows a user to add more tickets to their account</li> <li>ADD_GIFT - allows a user to send/recieve the purchase item as a gift</li> </ul> (optional)
///
///  @param coverAssetId The cover image of the purchase item (optional)
///
///  @param promoAssetId An application specific asset that can be used to store/provide additional data (optional)
///
///  @param giftable Determines whether the purchase item can be gifted to other users (optional)
///
///  @param assetable Determines whether users can attach their own media/asset to the purchase item (optional)
///
///  @param allocateTickets Flag to indicate owner should receive tickets for completed missions (optional, default to @(NO))
///
///  @param ticketType The type of ticket to reward, null means default type (optional)
///
///  @param points The number of points to award for completing a mission (optional)
///
///  @param offerLocationId The offer location that will get added to the user's wallet after purchase. (optional)
///
///  @returns OAIPurchaseItemFullResponse*
///
-(NSURLSessionTask*) createPurchaseItemWithVersion: (NSNumber*) version
    appKey: (NSString*) appKey
    name: (NSString*) name
    purchaseType: (NSString*) purchaseType
    deviceId: (NSString*) deviceId
    accountId: (NSNumber*) accountId
    _description: (NSString*) _description
    tickets: (NSNumber*) tickets
    price: (NSNumber*) price
    purchaseCode: (NSString*) purchaseCode
    secretKey: (NSString*) secretKey
    purchaseLimit: (NSNumber*) purchaseLimit
    serviceAction: (NSString*) serviceAction
    coverAssetId: (NSNumber*) coverAssetId
    promoAssetId: (NSNumber*) promoAssetId
    giftable: (NSNumber*) giftable
    assetable: (NSNumber*) assetable
    allocateTickets: (NSNumber*) allocateTickets
    ticketType: (NSString*) ticketType
    points: (NSNumber*) points
    offerLocationId: (NSNumber*) offerLocationId
    completionHandler: (void (^)(OAIPurchaseItemFullResponse* output, NSError* error)) handler {
    // verify the required parameter 'version' is set
    if (version == nil) {
        NSParameterAssert(version);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"version"] };
            NSError* error = [NSError errorWithDomain:kOAIPurchaseItemApiErrorDomain code:kOAIPurchaseItemApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'appKey' is set
    if (appKey == nil) {
        NSParameterAssert(appKey);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"appKey"] };
            NSError* error = [NSError errorWithDomain:kOAIPurchaseItemApiErrorDomain code:kOAIPurchaseItemApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'name' is set
    if (name == nil) {
        NSParameterAssert(name);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"name"] };
            NSError* error = [NSError errorWithDomain:kOAIPurchaseItemApiErrorDomain code:kOAIPurchaseItemApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'purchaseType' is set
    if (purchaseType == nil) {
        NSParameterAssert(purchaseType);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"purchaseType"] };
            NSError* error = [NSError errorWithDomain:kOAIPurchaseItemApiErrorDomain code:kOAIPurchaseItemApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/{version}/purchase/create"];

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
    if (name != nil) {
        queryParams[@"name"] = name;
    }
    if (_description != nil) {
        queryParams[@"description"] = _description;
    }
    if (tickets != nil) {
        queryParams[@"tickets"] = tickets;
    }
    if (price != nil) {
        queryParams[@"price"] = price;
    }
    if (purchaseType != nil) {
        queryParams[@"purchaseType"] = purchaseType;
    }
    if (purchaseCode != nil) {
        queryParams[@"purchaseCode"] = purchaseCode;
    }
    if (secretKey != nil) {
        queryParams[@"secretKey"] = secretKey;
    }
    if (purchaseLimit != nil) {
        queryParams[@"purchaseLimit"] = purchaseLimit;
    }
    if (serviceAction != nil) {
        queryParams[@"serviceAction"] = serviceAction;
    }
    if (coverAssetId != nil) {
        queryParams[@"coverAssetId"] = coverAssetId;
    }
    if (promoAssetId != nil) {
        queryParams[@"promoAssetId"] = promoAssetId;
    }
    if (giftable != nil) {
        queryParams[@"giftable"] = [giftable isEqual:@(YES)] ? @"true" : @"false";
    }
    if (assetable != nil) {
        queryParams[@"assetable"] = [assetable isEqual:@(YES)] ? @"true" : @"false";
    }
    if (allocateTickets != nil) {
        queryParams[@"allocateTickets"] = [allocateTickets isEqual:@(YES)] ? @"true" : @"false";
    }
    if (ticketType != nil) {
        queryParams[@"ticketType"] = ticketType;
    }
    if (points != nil) {
        queryParams[@"points"] = points;
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
                              responseType: @"OAIPurchaseItemFullResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIPurchaseItemFullResponse*)data, error);
                                }
                            }];
}

///
/// Delete Purchase
/// Marks the purchase item as deleted
///  @param version  
///
///  @param purchaseItemId The purchase item id 
///
///  @param deviceId The device id (deviceId or accountId required) (optional)
///
///  @param accountId The account id of the user (deviceId or accountId required) (optional)
///
///  @returns OAISirqulResponse*
///
-(NSURLSessionTask*) deletePurchaseItemWithVersion: (NSNumber*) version
    purchaseItemId: (NSNumber*) purchaseItemId
    deviceId: (NSString*) deviceId
    accountId: (NSNumber*) accountId
    completionHandler: (void (^)(OAISirqulResponse* output, NSError* error)) handler {
    // verify the required parameter 'version' is set
    if (version == nil) {
        NSParameterAssert(version);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"version"] };
            NSError* error = [NSError errorWithDomain:kOAIPurchaseItemApiErrorDomain code:kOAIPurchaseItemApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'purchaseItemId' is set
    if (purchaseItemId == nil) {
        NSParameterAssert(purchaseItemId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"purchaseItemId"] };
            NSError* error = [NSError errorWithDomain:kOAIPurchaseItemApiErrorDomain code:kOAIPurchaseItemApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/{version}/purchase/delete"];

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
    if (purchaseItemId != nil) {
        queryParams[@"purchaseItemId"] = purchaseItemId;
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
/// Get Purchase
/// Get detailed information about a purchase item
///  @param version  
///
///  @param purchaseItemId The purchase item id 
///
///  @param deviceId The device id (deviceId or accountId required) (optional)
///
///  @param accountId The account id of the user (deviceId or accountId required) (optional)
///
///  @returns OAIPurchaseItemFullResponse*
///
-(NSURLSessionTask*) getPurchaseItemWithVersion: (NSNumber*) version
    purchaseItemId: (NSNumber*) purchaseItemId
    deviceId: (NSString*) deviceId
    accountId: (NSNumber*) accountId
    completionHandler: (void (^)(OAIPurchaseItemFullResponse* output, NSError* error)) handler {
    // verify the required parameter 'version' is set
    if (version == nil) {
        NSParameterAssert(version);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"version"] };
            NSError* error = [NSError errorWithDomain:kOAIPurchaseItemApiErrorDomain code:kOAIPurchaseItemApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'purchaseItemId' is set
    if (purchaseItemId == nil) {
        NSParameterAssert(purchaseItemId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"purchaseItemId"] };
            NSError* error = [NSError errorWithDomain:kOAIPurchaseItemApiErrorDomain code:kOAIPurchaseItemApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/{version}/purchase/get"];

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
    if (purchaseItemId != nil) {
        queryParams[@"purchaseItemId"] = purchaseItemId;
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
                              responseType: @"OAIPurchaseItemFullResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIPurchaseItemFullResponse*)data, error);
                                }
                            }];
}

///
/// Search Purchases
/// Search for purchasable items from the system
///  @param version  
///
///  @param deviceId The device id (deviceId or accountId required) (optional)
///
///  @param accountId The account id of the user (deviceId or accountId required) (optional)
///
///  @param appKey The application key to filter results by application (optional)
///
///  @param filterByBillable Determines whether to filter results by the user's billable entity (optional, default to @(NO))
///
///  @param purchaseType A comma separated list of purchase providers to filter by. Possible values include: <ul> <li>SIRQUL - purchases from the Sirqul store using tickets</li> <li>IOS - purchases from the iTunes store for iPhone, iPod, iPod Touch</li> <li>GOOGLE - purchases from the Google Play store</li> <li>AMAZON - purchases from the Amazon Android store</li> <li>MAC - purchases from the iTunes store for OSX</li> <li>WP8 - purchases from the Windows Phone 8 store</li> <li>FREE - purchases that are free (can be used for development/testing purposes)</li> </ul> (optional)
///
///  @param serviceAction A comma separated list of service actions to filter results by. Possible values include: <ul> <li>DAY_PREMIUM - purchases that subscribes a user for a day of membership</li> <li>WEEK_PREMIUM - purchases that subscribes a user for a week of membership</li> <li>MONTH_PREMIUM - purchases that subscribes a user for a month of membership</li> <li>ADD_TICKET - purchases that allow users to add more tickets</li> <li>ADD_GIFT - purchases that allow users to recieve gifts</li> </ul> (optional)
///
///  @param keyword The keyword used to search (optional)
///
///  @param sortField The column to sort the search on. Possible values include: ID, CREATED, UPDATED, ACTIVE, ACTIVATED, EXPIRES, TITLE, SUBTITLE, DETAILS, OFFER_TYPE, SPECIAL_OFFER_TYPE, OFFER_VISIBILITY, ESTIMATED_VALUE, VOUCHER_PRICE, RETAILER_ID, RETAILER_NAME, RETAILER_LOCATION_ID, RETAILER_LOCATION_NAME, BILLABLE_ENTITY_ID, BILLABLE_ENTITY_NAME, RESPONSIBLE_DISPLAY (optional, default to @"NAME")
///
///  @param descending The order to return the search results (optional, default to @(NO))
///
///  @param start The record to begin the return set on (optional, default to @0)
///
///  @param limit The number of records to return (optional, default to @20)
///
///  @param activeOnly Return only active results (optional, default to @(NO))
///
///  @returns NSArray<OAIPurchaseItemResponse>*
///
-(NSURLSessionTask*) searchPurchaseItemsWithVersion: (NSNumber*) version
    deviceId: (NSString*) deviceId
    accountId: (NSNumber*) accountId
    appKey: (NSString*) appKey
    filterByBillable: (NSNumber*) filterByBillable
    purchaseType: (NSString*) purchaseType
    serviceAction: (NSString*) serviceAction
    keyword: (NSString*) keyword
    sortField: (NSString*) sortField
    descending: (NSNumber*) descending
    start: (NSNumber*) start
    limit: (NSNumber*) limit
    activeOnly: (NSNumber*) activeOnly
    completionHandler: (void (^)(NSArray<OAIPurchaseItemResponse>* output, NSError* error)) handler {
    // verify the required parameter 'version' is set
    if (version == nil) {
        NSParameterAssert(version);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"version"] };
            NSError* error = [NSError errorWithDomain:kOAIPurchaseItemApiErrorDomain code:kOAIPurchaseItemApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/{version}/purchase/search"];

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
    if (filterByBillable != nil) {
        queryParams[@"filterByBillable"] = [filterByBillable isEqual:@(YES)] ? @"true" : @"false";
    }
    if (purchaseType != nil) {
        queryParams[@"purchaseType"] = purchaseType;
    }
    if (serviceAction != nil) {
        queryParams[@"serviceAction"] = serviceAction;
    }
    if (keyword != nil) {
        queryParams[@"keyword"] = keyword;
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
                              responseType: @"NSArray<OAIPurchaseItemResponse>*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSArray<OAIPurchaseItemResponse>*)data, error);
                                }
                            }];
}

///
/// Update Purchase
/// Updates a purchase item for in app purchases
///  @param version  
///
///  @param purchaseItemId The purchase item id 
///
///  @param deviceId The device id (deviceId or accountId required) (optional)
///
///  @param accountId The account id of the user (deviceId or accountId required) (optional)
///
///  @param name The name of the purchase item (optional)
///
///  @param _description The description of the purchase item (optional)
///
///  @param tickets How much the purchase item is worth in tickets (optional)
///
///  @param price How much the purchase item will cost in real money (optional)
///
///  @param purchaseType The purchase provider <ul> <li>SIRQUL - the Sirqul store to make purchases using tickets</li> <li>IOS - the iTunes store for iPhone, iPod, iPod Touch</li> <li>GOOGLE - the Google Play store</li> <li>AMAZON - the Amazon Android store</li> <li>MAC - the iTunes store for OSX</li> <li>WP8 - the Windows Phone 8 store</li> <li>FREE - used for purchase items that are free (can be used for development/testing purposes)</li> </ul> (optional)
///
///  @param purchaseCode The unique identifier used by purchase providers to identify in-app-purchases (optional)
///
///  @param secretKey A secret key from purchase providers that would be used for validation (optional)
///
///  @param purchaseLimit How many times a user acquire the same purchase item (optional)
///
///  @param serviceAction Determines whether the purchase item will enable certain features <ul> <li>DAY_PREMIUM - subscribes a user for a day of membership</li> <li>WEEK_PREMIUM - subscribes a user for a week of membership</li> <li>MONTH_PREMIUM - subscribes a user for a month of membership</li> <li>ADD_TICKET - allows a user to add more tickets to their account</li> <li>ADD_GIFT - allows a user to send/recieve the purchase item as a gift</li> </ul> (optional)
///
///  @param coverAssetId The cover image of the purchase item (optional)
///
///  @param promoAssetId An application specific asset that can be used to store/provide additional data (optional)
///
///  @param giftable Determines whether the purchase item can be gifted to other users (optional)
///
///  @param assetable Determines whether users can attach their own media/asset to the purchase item (optional)
///
///  @param active Sets whether the purchase item is active or inactive (hidden from consumers) (optional)
///
///  @param allocateTickets Flag to indicate owner should receive tickets for completed missions (optional, default to @(NO))
///
///  @param ticketType The type of ticket to reward, null means default type (optional)
///
///  @param points The number of points to award for completing a mission (optional)
///
///  @param offerLocationId The offer location that will get added to the user's wallet after purchase. (optional)
///
///  @returns OAIPurchaseItemFullResponse*
///
-(NSURLSessionTask*) updatePurchaseItemWithVersion: (NSNumber*) version
    purchaseItemId: (NSNumber*) purchaseItemId
    deviceId: (NSString*) deviceId
    accountId: (NSNumber*) accountId
    name: (NSString*) name
    _description: (NSString*) _description
    tickets: (NSNumber*) tickets
    price: (NSNumber*) price
    purchaseType: (NSString*) purchaseType
    purchaseCode: (NSString*) purchaseCode
    secretKey: (NSString*) secretKey
    purchaseLimit: (NSNumber*) purchaseLimit
    serviceAction: (NSString*) serviceAction
    coverAssetId: (NSNumber*) coverAssetId
    promoAssetId: (NSNumber*) promoAssetId
    giftable: (NSNumber*) giftable
    assetable: (NSNumber*) assetable
    active: (NSNumber*) active
    allocateTickets: (NSNumber*) allocateTickets
    ticketType: (NSString*) ticketType
    points: (NSNumber*) points
    offerLocationId: (NSNumber*) offerLocationId
    completionHandler: (void (^)(OAIPurchaseItemFullResponse* output, NSError* error)) handler {
    // verify the required parameter 'version' is set
    if (version == nil) {
        NSParameterAssert(version);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"version"] };
            NSError* error = [NSError errorWithDomain:kOAIPurchaseItemApiErrorDomain code:kOAIPurchaseItemApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'purchaseItemId' is set
    if (purchaseItemId == nil) {
        NSParameterAssert(purchaseItemId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"purchaseItemId"] };
            NSError* error = [NSError errorWithDomain:kOAIPurchaseItemApiErrorDomain code:kOAIPurchaseItemApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/{version}/purchase/update"];

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
    if (purchaseItemId != nil) {
        queryParams[@"purchaseItemId"] = purchaseItemId;
    }
    if (name != nil) {
        queryParams[@"name"] = name;
    }
    if (_description != nil) {
        queryParams[@"description"] = _description;
    }
    if (tickets != nil) {
        queryParams[@"tickets"] = tickets;
    }
    if (price != nil) {
        queryParams[@"price"] = price;
    }
    if (purchaseType != nil) {
        queryParams[@"purchaseType"] = purchaseType;
    }
    if (purchaseCode != nil) {
        queryParams[@"purchaseCode"] = purchaseCode;
    }
    if (secretKey != nil) {
        queryParams[@"secretKey"] = secretKey;
    }
    if (purchaseLimit != nil) {
        queryParams[@"purchaseLimit"] = purchaseLimit;
    }
    if (serviceAction != nil) {
        queryParams[@"serviceAction"] = serviceAction;
    }
    if (coverAssetId != nil) {
        queryParams[@"coverAssetId"] = coverAssetId;
    }
    if (promoAssetId != nil) {
        queryParams[@"promoAssetId"] = promoAssetId;
    }
    if (giftable != nil) {
        queryParams[@"giftable"] = [giftable isEqual:@(YES)] ? @"true" : @"false";
    }
    if (assetable != nil) {
        queryParams[@"assetable"] = [assetable isEqual:@(YES)] ? @"true" : @"false";
    }
    if (active != nil) {
        queryParams[@"active"] = [active isEqual:@(YES)] ? @"true" : @"false";
    }
    if (allocateTickets != nil) {
        queryParams[@"allocateTickets"] = [allocateTickets isEqual:@(YES)] ? @"true" : @"false";
    }
    if (ticketType != nil) {
        queryParams[@"ticketType"] = ticketType;
    }
    if (points != nil) {
        queryParams[@"points"] = points;
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
                              responseType: @"OAIPurchaseItemFullResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIPurchaseItemFullResponse*)data, error);
                                }
                            }];
}



@end
