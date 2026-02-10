#import "OAIBidApi.h"
#import "OAIQueryParamCollection.h"
#import "OAIApiClient.h"
#import "OAIBidResponse.h"
#import "OAISirqulResponse.h"


@interface OAIBidApi ()

@property (nonatomic, strong, readwrite) NSMutableDictionary *mutableDefaultHeaders;

@end

@implementation OAIBidApi

NSString* kOAIBidApiErrorDomain = @"OAIBidApiErrorDomain";
NSInteger kOAIBidApiMissingParamErrorCode = 234513;

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
/// Create Bid
/// Creates a bid on a biddable object
///  @param version  
///
///  @param biddableType A biddable object type. Possible values include: CREATIVE (ads). 
///
///  @param biddableId The id of the biddable object 
///
///  @param amountPerView The bid amount for views. For ads, this is the amount that will be taken for each impression. 
///
///  @param amountPerAction The bid amount for actions. For ads, this is the amount that will be taken for each click. 
///
///  @param budgetAmount The allocated budget amount that will be used 
///
///  @param budgetSchedule The schedule for when the allocated budget amount is reset 
///
///  @param deviceId The device id (deviceId or accountId required) (optional)
///
///  @param accountId The account id of the user (deviceId or accountId required) (optional)
///
///  @returns OAIBidResponse*
///
-(NSURLSessionTask*) createBidWithVersion: (NSNumber*) version
    biddableType: (NSString*) biddableType
    biddableId: (NSNumber*) biddableId
    amountPerView: (NSNumber*) amountPerView
    amountPerAction: (NSNumber*) amountPerAction
    budgetAmount: (NSNumber*) budgetAmount
    budgetSchedule: (NSString*) budgetSchedule
    deviceId: (NSString*) deviceId
    accountId: (NSNumber*) accountId
    completionHandler: (void (^)(OAIBidResponse* output, NSError* error)) handler {
    // verify the required parameter 'version' is set
    if (version == nil) {
        NSParameterAssert(version);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"version"] };
            NSError* error = [NSError errorWithDomain:kOAIBidApiErrorDomain code:kOAIBidApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'biddableType' is set
    if (biddableType == nil) {
        NSParameterAssert(biddableType);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"biddableType"] };
            NSError* error = [NSError errorWithDomain:kOAIBidApiErrorDomain code:kOAIBidApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'biddableId' is set
    if (biddableId == nil) {
        NSParameterAssert(biddableId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"biddableId"] };
            NSError* error = [NSError errorWithDomain:kOAIBidApiErrorDomain code:kOAIBidApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'amountPerView' is set
    if (amountPerView == nil) {
        NSParameterAssert(amountPerView);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"amountPerView"] };
            NSError* error = [NSError errorWithDomain:kOAIBidApiErrorDomain code:kOAIBidApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'amountPerAction' is set
    if (amountPerAction == nil) {
        NSParameterAssert(amountPerAction);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"amountPerAction"] };
            NSError* error = [NSError errorWithDomain:kOAIBidApiErrorDomain code:kOAIBidApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'budgetAmount' is set
    if (budgetAmount == nil) {
        NSParameterAssert(budgetAmount);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"budgetAmount"] };
            NSError* error = [NSError errorWithDomain:kOAIBidApiErrorDomain code:kOAIBidApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'budgetSchedule' is set
    if (budgetSchedule == nil) {
        NSParameterAssert(budgetSchedule);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"budgetSchedule"] };
            NSError* error = [NSError errorWithDomain:kOAIBidApiErrorDomain code:kOAIBidApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/{version}/bid/create"];

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
    if (biddableType != nil) {
        queryParams[@"biddableType"] = biddableType;
    }
    if (biddableId != nil) {
        queryParams[@"biddableId"] = biddableId;
    }
    if (amountPerView != nil) {
        queryParams[@"amountPerView"] = amountPerView;
    }
    if (amountPerAction != nil) {
        queryParams[@"amountPerAction"] = amountPerAction;
    }
    if (budgetAmount != nil) {
        queryParams[@"budgetAmount"] = budgetAmount;
    }
    if (budgetSchedule != nil) {
        queryParams[@"budgetSchedule"] = budgetSchedule;
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
                              responseType: @"OAIBidResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIBidResponse*)data, error);
                                }
                            }];
}

///
/// Delete Bid
/// Deleted a bid on a biddable object
///  @param version  
///
///  @param bidId The bid id 
///
///  @param deviceId The device id (deviceId or accountId required) (optional)
///
///  @param accountId The account id of the user (deviceId or accountId required) (optional)
///
///  @returns OAISirqulResponse*
///
-(NSURLSessionTask*) deleteBidWithVersion: (NSNumber*) version
    bidId: (NSNumber*) bidId
    deviceId: (NSString*) deviceId
    accountId: (NSNumber*) accountId
    completionHandler: (void (^)(OAISirqulResponse* output, NSError* error)) handler {
    // verify the required parameter 'version' is set
    if (version == nil) {
        NSParameterAssert(version);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"version"] };
            NSError* error = [NSError errorWithDomain:kOAIBidApiErrorDomain code:kOAIBidApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'bidId' is set
    if (bidId == nil) {
        NSParameterAssert(bidId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"bidId"] };
            NSError* error = [NSError errorWithDomain:kOAIBidApiErrorDomain code:kOAIBidApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/{version}/bid/delete"];

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
    if (bidId != nil) {
        queryParams[@"bidId"] = bidId;
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
/// Get Bid
/// Get the bid details of a biddable object
///  @param version  
///
///  @param bidId The bid id 
///
///  @param deviceId The device id (deviceId or accountId required) (optional)
///
///  @param accountId The account id of the user (deviceId or accountId required) (optional)
///
///  @returns OAIBidResponse*
///
-(NSURLSessionTask*) getBidWithVersion: (NSNumber*) version
    bidId: (NSNumber*) bidId
    deviceId: (NSString*) deviceId
    accountId: (NSNumber*) accountId
    completionHandler: (void (^)(OAIBidResponse* output, NSError* error)) handler {
    // verify the required parameter 'version' is set
    if (version == nil) {
        NSParameterAssert(version);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"version"] };
            NSError* error = [NSError errorWithDomain:kOAIBidApiErrorDomain code:kOAIBidApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'bidId' is set
    if (bidId == nil) {
        NSParameterAssert(bidId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"bidId"] };
            NSError* error = [NSError errorWithDomain:kOAIBidApiErrorDomain code:kOAIBidApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/{version}/bid/get"];

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
    if (bidId != nil) {
        queryParams[@"bidId"] = bidId;
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
                              responseType: @"OAIBidResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIBidResponse*)data, error);
                                }
                            }];
}

///
/// Update Bid
/// Updates a bid on a biddable object
///  @param version  
///
///  @param bidId The bid id 
///
///  @param deviceId The device id (deviceId or accountId required) (optional)
///
///  @param accountId The account id of the user (deviceId or accountId required) (optional)
///
///  @param amountPerView The bid amount for views. For ads, this is the amount that will be taken for each impression. (optional)
///
///  @param amountPerAction The bid amount for actions. For ads, this is the amount that will be taken for each click. (optional)
///
///  @param budgetAmount The allocated budget amount that will be used (optional)
///
///  @param budgetSchedule The schedule for when the allocated budget amount is reset (optional)
///
///  @returns OAIBidResponse*
///
-(NSURLSessionTask*) updateBidWithVersion: (NSNumber*) version
    bidId: (NSNumber*) bidId
    deviceId: (NSString*) deviceId
    accountId: (NSNumber*) accountId
    amountPerView: (NSNumber*) amountPerView
    amountPerAction: (NSNumber*) amountPerAction
    budgetAmount: (NSNumber*) budgetAmount
    budgetSchedule: (NSString*) budgetSchedule
    completionHandler: (void (^)(OAIBidResponse* output, NSError* error)) handler {
    // verify the required parameter 'version' is set
    if (version == nil) {
        NSParameterAssert(version);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"version"] };
            NSError* error = [NSError errorWithDomain:kOAIBidApiErrorDomain code:kOAIBidApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'bidId' is set
    if (bidId == nil) {
        NSParameterAssert(bidId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"bidId"] };
            NSError* error = [NSError errorWithDomain:kOAIBidApiErrorDomain code:kOAIBidApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/{version}/bid/update"];

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
    if (bidId != nil) {
        queryParams[@"bidId"] = bidId;
    }
    if (amountPerView != nil) {
        queryParams[@"amountPerView"] = amountPerView;
    }
    if (amountPerAction != nil) {
        queryParams[@"amountPerAction"] = amountPerAction;
    }
    if (budgetAmount != nil) {
        queryParams[@"budgetAmount"] = budgetAmount;
    }
    if (budgetSchedule != nil) {
        queryParams[@"budgetSchedule"] = budgetSchedule;
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
                              responseType: @"OAIBidResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIBidResponse*)data, error);
                                }
                            }];
}



@end
