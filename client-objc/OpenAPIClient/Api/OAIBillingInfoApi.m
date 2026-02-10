#import "OAIBillingInfoApi.h"
#import "OAIQueryParamCollection.h"
#import "OAIApiClient.h"
#import "OAIPaymentTypesResponse.h"


@interface OAIBillingInfoApi ()

@property (nonatomic, strong, readwrite) NSMutableDictionary *mutableDefaultHeaders;

@end

@implementation OAIBillingInfoApi

NSString* kOAIBillingInfoApiErrorDomain = @"OAIBillingInfoApiErrorDomain";
NSInteger kOAIBillingInfoApiMissingParamErrorCode = 234513;

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
/// Update Payment Method
/// Update a method of payment. If the paymentMethodId is not passed in then will update their default payment method.
///  @param version  
///
///  @param accountId The account used to perform the the request 
///
///  @param paymentMethodId Payment Method Id (optional)
///
///  @param accountName the name of the account (optional)
///
///  @param firstName First Name that the account is filed as (optional)
///
///  @param lastName Last Name that the account is filed as (optional)
///
///  @param address Address that the account is filed as (optional)
///
///  @param city City that the account is filed as (optional)
///
///  @param state State that the account is filed as (optional)
///
///  @param postalCode Postal Code that the account is filed as (optional)
///
///  @param country Country that the account is filed as (optional)
///
///  @param phone Phone that the account is filed as (optional)
///
///  @param creditCardNumber The full credit card number to store on file (optional)
///
///  @param expirationDate The credit card expiration date YYYY-MM (optional)
///
///  @param ccv The 3 digit confirmation code (optional)
///
///  @param accountNumber The bank account number (optional)
///
///  @param bankName The bank name (optional)
///
///  @param routingNumber Routing Number (optional)
///
///  @param defaultPaymentMethod Default Payment Method (optional)
///
///  @param paymentMethodNickname Payment Method Nickname (optional)
///
///  @param taxId Tax Id (optional)
///
///  @param providerCustomerProfileId Provider customer profile Id (optional)
///
///  @param providerPaymentProfileId Provider customer payment profile Id (optional)
///
///  @param metaData Meta Data (optional)
///
///  @returns OAIPaymentTypesResponse*
///
-(NSURLSessionTask*) addPaymentMethodWithVersion: (NSNumber*) version
    accountId: (NSNumber*) accountId
    paymentMethodId: (NSNumber*) paymentMethodId
    accountName: (NSString*) accountName
    firstName: (NSString*) firstName
    lastName: (NSString*) lastName
    address: (NSString*) address
    city: (NSString*) city
    state: (NSString*) state
    postalCode: (NSString*) postalCode
    country: (NSString*) country
    phone: (NSString*) phone
    creditCardNumber: (NSString*) creditCardNumber
    expirationDate: (NSString*) expirationDate
    ccv: (NSString*) ccv
    accountNumber: (NSString*) accountNumber
    bankName: (NSString*) bankName
    routingNumber: (NSString*) routingNumber
    defaultPaymentMethod: (NSNumber*) defaultPaymentMethod
    paymentMethodNickname: (NSString*) paymentMethodNickname
    taxId: (NSString*) taxId
    providerCustomerProfileId: (NSString*) providerCustomerProfileId
    providerPaymentProfileId: (NSString*) providerPaymentProfileId
    metaData: (NSString*) metaData
    completionHandler: (void (^)(OAIPaymentTypesResponse* output, NSError* error)) handler {
    // verify the required parameter 'version' is set
    if (version == nil) {
        NSParameterAssert(version);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"version"] };
            NSError* error = [NSError errorWithDomain:kOAIBillingInfoApiErrorDomain code:kOAIBillingInfoApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kOAIBillingInfoApiErrorDomain code:kOAIBillingInfoApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/{version}/billing/update"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (version != nil) {
        pathParams[@"version"] = version;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        queryParams[@"accountId"] = accountId;
    }
    if (paymentMethodId != nil) {
        queryParams[@"paymentMethodId"] = paymentMethodId;
    }
    if (accountName != nil) {
        queryParams[@"accountName"] = accountName;
    }
    if (firstName != nil) {
        queryParams[@"firstName"] = firstName;
    }
    if (lastName != nil) {
        queryParams[@"lastName"] = lastName;
    }
    if (address != nil) {
        queryParams[@"address"] = address;
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
    if (country != nil) {
        queryParams[@"country"] = country;
    }
    if (phone != nil) {
        queryParams[@"phone"] = phone;
    }
    if (creditCardNumber != nil) {
        queryParams[@"creditCardNumber"] = creditCardNumber;
    }
    if (expirationDate != nil) {
        queryParams[@"expirationDate"] = expirationDate;
    }
    if (ccv != nil) {
        queryParams[@"ccv"] = ccv;
    }
    if (accountNumber != nil) {
        queryParams[@"accountNumber"] = accountNumber;
    }
    if (bankName != nil) {
        queryParams[@"bankName"] = bankName;
    }
    if (routingNumber != nil) {
        queryParams[@"routingNumber"] = routingNumber;
    }
    if (defaultPaymentMethod != nil) {
        queryParams[@"defaultPaymentMethod"] = [defaultPaymentMethod isEqual:@(YES)] ? @"true" : @"false";
    }
    if (paymentMethodNickname != nil) {
        queryParams[@"paymentMethodNickname"] = paymentMethodNickname;
    }
    if (taxId != nil) {
        queryParams[@"taxId"] = taxId;
    }
    if (providerCustomerProfileId != nil) {
        queryParams[@"providerCustomerProfileId"] = providerCustomerProfileId;
    }
    if (providerPaymentProfileId != nil) {
        queryParams[@"providerPaymentProfileId"] = providerPaymentProfileId;
    }
    if (metaData != nil) {
        queryParams[@"metaData"] = metaData;
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
                              responseType: @"OAIPaymentTypesResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIPaymentTypesResponse*)data, error);
                                }
                            }];
}

///
/// Create Payment Method
/// Add a new method of payment.
///  @param version  
///
///  @param accountId The account used to perform the the request 
///
///  @param accountName Account Name of the credit card user (optional)
///
///  @param firstName The first name on the credit card (optional)
///
///  @param lastName The last name on the credit card (optional)
///
///  @param address The billing address of the credit card (optional)
///
///  @param city The billing city of the credit card (optional)
///
///  @param state The billing state of the credit card (optional)
///
///  @param postalCode The billing zip code of the credit card (optional)
///
///  @param country Country of the credit card (optional)
///
///  @param phone The billing phone of the credit card (optional)
///
///  @param creditCardNumber The full credit card number to store on file (optional)
///
///  @param expirationDate The credit card expiration date YYYY-MM (optional)
///
///  @param ccv The 3 digit confirmation code (optional)
///
///  @param accountNumber The bank account number (optional)
///
///  @param bankName The bank name (optional)
///
///  @param routingNumber The bank routing number (optional)
///
///  @param paymentMethodNickname The nickname to give the payment method (optional)
///
///  @param taxId Tax Id (optional)
///
///  @param defaultPaymentMethod Whether this should be the default payment method (optional, default to @(YES))
///
///  @param authToken An authorization token for providers that provide this (like Amazon Payments) (optional)
///
///  @param provider The payment provider (see PaymentMethodProvider) (optional, default to @"AUTHORIZE_NET")
///
///  @param providerCustomerProfileId Provider customer profile Id (optional)
///
///  @param providerPaymentProfileId Provider customer payment profile Id (optional)
///
///  @param metaData Meta Data (optional)
///
///  @param appKey Application Key (optional)
///
///  @returns OAIPaymentTypesResponse*
///
-(NSURLSessionTask*) createPaymentMethodWithVersion: (NSNumber*) version
    accountId: (NSNumber*) accountId
    accountName: (NSString*) accountName
    firstName: (NSString*) firstName
    lastName: (NSString*) lastName
    address: (NSString*) address
    city: (NSString*) city
    state: (NSString*) state
    postalCode: (NSString*) postalCode
    country: (NSString*) country
    phone: (NSString*) phone
    creditCardNumber: (NSString*) creditCardNumber
    expirationDate: (NSString*) expirationDate
    ccv: (NSString*) ccv
    accountNumber: (NSString*) accountNumber
    bankName: (NSString*) bankName
    routingNumber: (NSString*) routingNumber
    paymentMethodNickname: (NSString*) paymentMethodNickname
    taxId: (NSString*) taxId
    defaultPaymentMethod: (NSNumber*) defaultPaymentMethod
    authToken: (NSString*) authToken
    provider: (NSString*) provider
    providerCustomerProfileId: (NSString*) providerCustomerProfileId
    providerPaymentProfileId: (NSString*) providerPaymentProfileId
    metaData: (NSString*) metaData
    appKey: (NSString*) appKey
    completionHandler: (void (^)(OAIPaymentTypesResponse* output, NSError* error)) handler {
    // verify the required parameter 'version' is set
    if (version == nil) {
        NSParameterAssert(version);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"version"] };
            NSError* error = [NSError errorWithDomain:kOAIBillingInfoApiErrorDomain code:kOAIBillingInfoApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kOAIBillingInfoApiErrorDomain code:kOAIBillingInfoApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/{version}/billing/create"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (version != nil) {
        pathParams[@"version"] = version;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        queryParams[@"accountId"] = accountId;
    }
    if (accountName != nil) {
        queryParams[@"accountName"] = accountName;
    }
    if (firstName != nil) {
        queryParams[@"firstName"] = firstName;
    }
    if (lastName != nil) {
        queryParams[@"lastName"] = lastName;
    }
    if (address != nil) {
        queryParams[@"address"] = address;
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
    if (country != nil) {
        queryParams[@"country"] = country;
    }
    if (phone != nil) {
        queryParams[@"phone"] = phone;
    }
    if (creditCardNumber != nil) {
        queryParams[@"creditCardNumber"] = creditCardNumber;
    }
    if (expirationDate != nil) {
        queryParams[@"expirationDate"] = expirationDate;
    }
    if (ccv != nil) {
        queryParams[@"ccv"] = ccv;
    }
    if (accountNumber != nil) {
        queryParams[@"accountNumber"] = accountNumber;
    }
    if (bankName != nil) {
        queryParams[@"bankName"] = bankName;
    }
    if (routingNumber != nil) {
        queryParams[@"routingNumber"] = routingNumber;
    }
    if (paymentMethodNickname != nil) {
        queryParams[@"paymentMethodNickname"] = paymentMethodNickname;
    }
    if (taxId != nil) {
        queryParams[@"taxId"] = taxId;
    }
    if (defaultPaymentMethod != nil) {
        queryParams[@"defaultPaymentMethod"] = [defaultPaymentMethod isEqual:@(YES)] ? @"true" : @"false";
    }
    if (authToken != nil) {
        queryParams[@"authToken"] = authToken;
    }
    if (provider != nil) {
        queryParams[@"provider"] = provider;
    }
    if (providerCustomerProfileId != nil) {
        queryParams[@"providerCustomerProfileId"] = providerCustomerProfileId;
    }
    if (providerPaymentProfileId != nil) {
        queryParams[@"providerPaymentProfileId"] = providerPaymentProfileId;
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
                              responseType: @"OAIPaymentTypesResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIPaymentTypesResponse*)data, error);
                                }
                            }];
}

///
/// Create Smart Contract
/// Adds a smart contract.
///  @param version  
///
///  @param accountId The account used to perform the the request 
///
///  @param tokenName The token name 
///
///  @param tokenSymbol The token symbol 
///
///  @param paymentMethodId The payment method to return details on. If this is not set, then the user's default payment method will be returned. (optional)
///
///  @returns OAIPaymentTypesResponse*
///
-(NSURLSessionTask*) createSmartContractWithVersion: (NSNumber*) version
    accountId: (NSNumber*) accountId
    tokenName: (NSString*) tokenName
    tokenSymbol: (NSString*) tokenSymbol
    paymentMethodId: (NSNumber*) paymentMethodId
    completionHandler: (void (^)(OAIPaymentTypesResponse* output, NSError* error)) handler {
    // verify the required parameter 'version' is set
    if (version == nil) {
        NSParameterAssert(version);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"version"] };
            NSError* error = [NSError errorWithDomain:kOAIBillingInfoApiErrorDomain code:kOAIBillingInfoApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kOAIBillingInfoApiErrorDomain code:kOAIBillingInfoApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'tokenName' is set
    if (tokenName == nil) {
        NSParameterAssert(tokenName);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"tokenName"] };
            NSError* error = [NSError errorWithDomain:kOAIBillingInfoApiErrorDomain code:kOAIBillingInfoApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'tokenSymbol' is set
    if (tokenSymbol == nil) {
        NSParameterAssert(tokenSymbol);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"tokenSymbol"] };
            NSError* error = [NSError errorWithDomain:kOAIBillingInfoApiErrorDomain code:kOAIBillingInfoApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/{version}/billing/crypto/transfer"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (version != nil) {
        pathParams[@"version"] = version;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        queryParams[@"accountId"] = accountId;
    }
    if (paymentMethodId != nil) {
        queryParams[@"paymentMethodId"] = paymentMethodId;
    }
    if (tokenName != nil) {
        queryParams[@"tokenName"] = tokenName;
    }
    if (tokenSymbol != nil) {
        queryParams[@"tokenSymbol"] = tokenSymbol;
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
                              responseType: @"OAIPaymentTypesResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIPaymentTypesResponse*)data, error);
                                }
                            }];
}

///
/// Get Crypto Balances
/// Get the cypto balance details for a user
///  @param version  
///
///  @param accountId The account used to perform the the request 
///
///  @param ownerAccountId The account to retreive balances for (optional)
///
///  @param paymentMethodId The payment method to return details on. If this is not set, then the user's default payment method will be returned. (optional)
///
///  @returns OAIPaymentTypesResponse*
///
-(NSURLSessionTask*) getCryptoBalanceWithVersion: (NSNumber*) version
    accountId: (NSNumber*) accountId
    ownerAccountId: (NSNumber*) ownerAccountId
    paymentMethodId: (NSNumber*) paymentMethodId
    completionHandler: (void (^)(OAIPaymentTypesResponse* output, NSError* error)) handler {
    // verify the required parameter 'version' is set
    if (version == nil) {
        NSParameterAssert(version);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"version"] };
            NSError* error = [NSError errorWithDomain:kOAIBillingInfoApiErrorDomain code:kOAIBillingInfoApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kOAIBillingInfoApiErrorDomain code:kOAIBillingInfoApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/{version}/billing/crypto/get"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (version != nil) {
        pathParams[@"version"] = version;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        queryParams[@"accountId"] = accountId;
    }
    if (ownerAccountId != nil) {
        queryParams[@"ownerAccountId"] = ownerAccountId;
    }
    if (paymentMethodId != nil) {
        queryParams[@"paymentMethodId"] = paymentMethodId;
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
                              responseType: @"OAIPaymentTypesResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIPaymentTypesResponse*)data, error);
                                }
                            }];
}

///
/// Get Payment Method
/// Get the details of the user's payment method or their current default method of payment
///  @param version  
///
///  @param accountId The account used to perform the the request 
///
///  @param paymentMethodId The payment method to return details on. If this is not set, then the user's default payment method will be returned. (optional)
///
///  @param getCurrentBalance Determines whether to get the user's current balance for the requested payment method option (not all payment method options support this) (optional)
///
///  @returns OAIPaymentTypesResponse*
///
-(NSURLSessionTask*) getPaymentMethodWithVersion: (NSNumber*) version
    accountId: (NSNumber*) accountId
    paymentMethodId: (NSNumber*) paymentMethodId
    getCurrentBalance: (NSNumber*) getCurrentBalance
    completionHandler: (void (^)(OAIPaymentTypesResponse* output, NSError* error)) handler {
    // verify the required parameter 'version' is set
    if (version == nil) {
        NSParameterAssert(version);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"version"] };
            NSError* error = [NSError errorWithDomain:kOAIBillingInfoApiErrorDomain code:kOAIBillingInfoApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kOAIBillingInfoApiErrorDomain code:kOAIBillingInfoApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/{version}/billing/get"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (version != nil) {
        pathParams[@"version"] = version;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        queryParams[@"accountId"] = accountId;
    }
    if (paymentMethodId != nil) {
        queryParams[@"paymentMethodId"] = paymentMethodId;
    }
    if (getCurrentBalance != nil) {
        queryParams[@"getCurrentBalance"] = [getCurrentBalance isEqual:@(YES)] ? @"true" : @"false";
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
                              responseType: @"OAIPaymentTypesResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIPaymentTypesResponse*)data, error);
                                }
                            }];
}

///
/// Search Payment Methods
/// Search the payment methods of an account
///  @param version  
///
///  @param accountId Account Id to search on 
///
///  @param provider Provider to search on (optional, default to @"AUTHORIZE_NET")
///
///  @param type the type to search on (optional)
///
///  @param keyword the keyword to search on (optional)
///
///  @param sortField the sort field to use for the search (optional, default to @"UPDATED")
///
///  @param descending if the results should be in descending order (optional, default to @(YES))
///
///  @param start the start of the search (optional, default to @0)
///
///  @param limit the limit of the search (optional, default to @5)
///
///  @returns OAIPaymentTypesResponse*
///
-(NSURLSessionTask*) searchPaymentMethodWithVersion: (NSNumber*) version
    accountId: (NSNumber*) accountId
    provider: (NSString*) provider
    type: (NSString*) type
    keyword: (NSString*) keyword
    sortField: (NSString*) sortField
    descending: (NSNumber*) descending
    start: (NSNumber*) start
    limit: (NSNumber*) limit
    completionHandler: (void (^)(OAIPaymentTypesResponse* output, NSError* error)) handler {
    // verify the required parameter 'version' is set
    if (version == nil) {
        NSParameterAssert(version);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"version"] };
            NSError* error = [NSError errorWithDomain:kOAIBillingInfoApiErrorDomain code:kOAIBillingInfoApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kOAIBillingInfoApiErrorDomain code:kOAIBillingInfoApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/{version}/billing/search"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (version != nil) {
        pathParams[@"version"] = version;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        queryParams[@"accountId"] = accountId;
    }
    if (provider != nil) {
        queryParams[@"provider"] = provider;
    }
    if (type != nil) {
        queryParams[@"type"] = type;
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
                              responseType: @"OAIPaymentTypesResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIPaymentTypesResponse*)data, error);
                                }
                            }];
}



@end
