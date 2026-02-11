#import "OAIBillableEntityApi.h"
#import "OAIQueryParamCollection.h"
#import "OAIApiClient.h"
#import "OAIBillableEntityResponse.h"
#import "OAISirqulResponse.h"


@interface OAIBillableEntityApi ()

@property (nonatomic, strong, readwrite) NSMutableDictionary *mutableDefaultHeaders;

@end

@implementation OAIBillableEntityApi

NSString* kOAIBillableEntityApiErrorDomain = @"OAIBillableEntityApiErrorDomain";
NSInteger kOAIBillableEntityApiMissingParamErrorCode = 234513;

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
/// Create Billable
/// reate a billable entity for an account. The creator is assumed to be the responsible account. An account can only have one billable entity
///  @param deviceId The unique device identifier that made the request (either deviceId or accountId must be used) (optional)
///
///  @param accountId The unique accountId that made the request (either deviceId or accountId must be used) (optional)
///
///  @param name The name of the entity responsible for billing  (optional)
///
///  @param streetAddress The street address of the billable entity (optional)
///
///  @param streetAddress2 Additional address information (such as a suite number, floor number, building name, or PO Box)  (optional)
///
///  @param city The city of the billable entity (optional)
///
///  @param state The state of the billable entity (optional)
///
///  @param postalCode The postal code of the billable entity (optional)
///
///  @param businessPhone The business phone of the billable entity (optional)
///
///  @param businessPhoneExt The business phone extension (optional)
///
///  @param authorizeNetApiKey Authorize Net Api Key (optional)
///
///  @param authorizeNetTransactionKey Authorize Net Transaction Key (optional)
///
///  @returns OAIBillableEntityResponse*
///
-(NSURLSessionTask*) createBillableEntityWithDeviceId: (NSString*) deviceId
    accountId: (NSNumber*) accountId
    name: (NSString*) name
    streetAddress: (NSString*) streetAddress
    streetAddress2: (NSString*) streetAddress2
    city: (NSString*) city
    state: (NSString*) state
    postalCode: (NSString*) postalCode
    businessPhone: (NSString*) businessPhone
    businessPhoneExt: (NSString*) businessPhoneExt
    authorizeNetApiKey: (NSString*) authorizeNetApiKey
    authorizeNetTransactionKey: (NSString*) authorizeNetTransactionKey
    completionHandler: (void (^)(OAIBillableEntityResponse* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/billable/create"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (deviceId != nil) {
        queryParams[@"deviceId"] = deviceId;
    }
    if (accountId != nil) {
        queryParams[@"accountId"] = accountId;
    }
    if (name != nil) {
        queryParams[@"name"] = name;
    }
    if (streetAddress != nil) {
        queryParams[@"streetAddress"] = streetAddress;
    }
    if (streetAddress2 != nil) {
        queryParams[@"streetAddress2"] = streetAddress2;
    }
    if (city != nil) {
        queryParams[@"city"] = city;
    }
    if (state != nil) {
        queryParams[@"state"] = state;
    }
    if (postalCode != nil) {
        queryParams[@"postalCode"] = postalCode;
    }
    if (businessPhone != nil) {
        queryParams[@"businessPhone"] = businessPhone;
    }
    if (businessPhoneExt != nil) {
        queryParams[@"businessPhoneExt"] = businessPhoneExt;
    }
    if (authorizeNetApiKey != nil) {
        queryParams[@"authorizeNetApiKey"] = authorizeNetApiKey;
    }
    if (authorizeNetTransactionKey != nil) {
        queryParams[@"authorizeNetTransactionKey"] = authorizeNetTransactionKey;
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
                              responseType: @"OAIBillableEntityResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIBillableEntityResponse*)data, error);
                                }
                            }];
}

///
/// Delete Billable
/// Mark the billable as deleted
///  @param deviceId The device id (deviceId or accountId required) (optional)
///
///  @param accountId The account used to perform the delete, must have rights to edit the billable entity. (optional)
///
///  @returns OAISirqulResponse*
///
-(NSURLSessionTask*) deleteBillableEntityWithDeviceId: (NSString*) deviceId
    accountId: (NSNumber*) accountId
    completionHandler: (void (^)(OAISirqulResponse* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/billable/delete"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (deviceId != nil) {
        queryParams[@"deviceId"] = deviceId;
    }
    if (accountId != nil) {
        queryParams[@"accountId"] = accountId;
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
/// Get Billable
/// Used to determine the associated BillableEntity of an account
///  @param deviceId The unique device identifier that made the request (either deviceId or accountId must be used) (optional)
///
///  @param accountId The unique accountId that made the request (either deviceId or accountId must be used) (optional)
///
///  @param includeCounts Determines whether to include the retailer dash board counts into the response (optional, default to @(NO))
///
///  @param includePayments Whether to enable payments or not (optional, default to @(YES))
///
///  @returns OAIBillableEntityResponse*
///
-(NSURLSessionTask*) getBillableEntityWithDeviceId: (NSString*) deviceId
    accountId: (NSNumber*) accountId
    includeCounts: (NSNumber*) includeCounts
    includePayments: (NSNumber*) includePayments
    completionHandler: (void (^)(OAIBillableEntityResponse* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/billable/get"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (deviceId != nil) {
        queryParams[@"deviceId"] = deviceId;
    }
    if (accountId != nil) {
        queryParams[@"accountId"] = accountId;
    }
    if (includeCounts != nil) {
        queryParams[@"includeCounts"] = [includeCounts isEqual:@(YES)] ? @"true" : @"false";
    }
    if (includePayments != nil) {
        queryParams[@"includePayments"] = [includePayments isEqual:@(YES)] ? @"true" : @"false";
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
                              responseType: @"OAIBillableEntityResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIBillableEntityResponse*)data, error);
                                }
                            }];
}

///
/// Update Billable
/// Updates the billable record for an account
///  @param deviceId The unique device identifier that made the request (either deviceId or accountId must be used) (optional)
///
///  @param accountId The unique accountId that made the request (either deviceId or accountId must be used). The account must have rights to edit the billable entity. (optional)
///
///  @param name The name of the entity responsible for billing  (optional)
///
///  @param streetAddress The street address of the billable entity (optional)
///
///  @param streetAddress2 Additional address information (such as a suite number, floor number, building name, or PO Box)  (optional)
///
///  @param city The city of the billable entity (optional)
///
///  @param state The state of the billable entity (optional)
///
///  @param postalCode The postal code of the billable entity (optional)
///
///  @param businessPhone The business phone of the billable entity (optional)
///
///  @param businessPhoneExt The business phone extension of the billable entity (optional)
///
///  @param authorizeNetApiKey Authorize Net Api Key of the billable entity (optional)
///
///  @param authorizeNetTransactionKey Authorize Net Transaction Key of the billable entity (optional)
///
///  @returns OAIBillableEntityResponse*
///
-(NSURLSessionTask*) updateBillableEntityWithDeviceId: (NSString*) deviceId
    accountId: (NSNumber*) accountId
    name: (NSString*) name
    streetAddress: (NSString*) streetAddress
    streetAddress2: (NSString*) streetAddress2
    city: (NSString*) city
    state: (NSString*) state
    postalCode: (NSString*) postalCode
    businessPhone: (NSString*) businessPhone
    businessPhoneExt: (NSString*) businessPhoneExt
    authorizeNetApiKey: (NSString*) authorizeNetApiKey
    authorizeNetTransactionKey: (NSString*) authorizeNetTransactionKey
    completionHandler: (void (^)(OAIBillableEntityResponse* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/billable/update"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (deviceId != nil) {
        queryParams[@"deviceId"] = deviceId;
    }
    if (accountId != nil) {
        queryParams[@"accountId"] = accountId;
    }
    if (name != nil) {
        queryParams[@"name"] = name;
    }
    if (streetAddress != nil) {
        queryParams[@"streetAddress"] = streetAddress;
    }
    if (streetAddress2 != nil) {
        queryParams[@"streetAddress2"] = streetAddress2;
    }
    if (city != nil) {
        queryParams[@"city"] = city;
    }
    if (state != nil) {
        queryParams[@"state"] = state;
    }
    if (postalCode != nil) {
        queryParams[@"postalCode"] = postalCode;
    }
    if (businessPhone != nil) {
        queryParams[@"businessPhone"] = businessPhone;
    }
    if (businessPhoneExt != nil) {
        queryParams[@"businessPhoneExt"] = businessPhoneExt;
    }
    if (authorizeNetApiKey != nil) {
        queryParams[@"authorizeNetApiKey"] = authorizeNetApiKey;
    }
    if (authorizeNetTransactionKey != nil) {
        queryParams[@"authorizeNetTransactionKey"] = authorizeNetTransactionKey;
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
                              responseType: @"OAIBillableEntityResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIBillableEntityResponse*)data, error);
                                }
                            }];
}



@end
