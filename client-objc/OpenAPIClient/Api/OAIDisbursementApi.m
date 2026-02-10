#import "OAIDisbursementApi.h"
#import "OAIQueryParamCollection.h"
#import "OAIApiClient.h"
#import "OAIDisbursementResponse.h"


@interface OAIDisbursementApi ()

@property (nonatomic, strong, readwrite) NSMutableDictionary *mutableDefaultHeaders;

@end

@implementation OAIDisbursementApi

NSString* kOAIDisbursementApiErrorDomain = @"OAIDisbursementApiErrorDomain";
NSInteger kOAIDisbursementApiMissingParamErrorCode = 234513;

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
/// Check Disbursements
/// Checks the status of a captured disbrusement to see if it has been settled.
///  @param version  
///
///  @param disbursementId the ID of the disbursement being checked on 
///
///  @returns OAIDisbursementResponse*
///
-(NSURLSessionTask*) checkDisbursementsWithVersion: (NSNumber*) version
    disbursementId: (NSNumber*) disbursementId
    completionHandler: (void (^)(OAIDisbursementResponse* output, NSError* error)) handler {
    // verify the required parameter 'version' is set
    if (version == nil) {
        NSParameterAssert(version);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"version"] };
            NSError* error = [NSError errorWithDomain:kOAIDisbursementApiErrorDomain code:kOAIDisbursementApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'disbursementId' is set
    if (disbursementId == nil) {
        NSParameterAssert(disbursementId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"disbursementId"] };
            NSError* error = [NSError errorWithDomain:kOAIDisbursementApiErrorDomain code:kOAIDisbursementApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/{version}/disbursement/check"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (version != nil) {
        pathParams[@"version"] = version;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (disbursementId != nil) {
        queryParams[@"disbursementId"] = disbursementId;
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
                              responseType: @"OAIDisbursementResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIDisbursementResponse*)data, error);
                                }
                            }];
}

///
/// Create Disbursement
/// Creates a Disbursement for sending money to a retailer
///  @param version  
///
///  @param accountId the ID of the logging in user (must be an EXECUTIVE account) 
///
///  @param receiverAccountId the ID of the account receiving the disbursement 
///
///  @param originalSenderAccountId the ID of the original sender account 
///
///  @param amount the dollar amount of the disbursement 
///
///  @param provider the provider (e.g. Authorize.net, Bill.com, etc.) 
///
///  @param scheduledDate the date that the disbursement is scheduled to go out to the payment provider (optional)
///
///  @param title a title given for the disbursement (optional)
///
///  @param comment a comment that could be made for a disbursement (optional)
///
///  @param externalId external ID, which can be used as a way to reference the disbursement (optional)
///
///  @param introspectionParams This is for specifying parameters to make an http callback request for validating that the disbursement is valid (optional)
///
///  @returns OAIDisbursementResponse*
///
-(NSURLSessionTask*) createDisbursementWithVersion: (NSNumber*) version
    accountId: (NSNumber*) accountId
    receiverAccountId: (NSNumber*) receiverAccountId
    originalSenderAccountId: (NSNumber*) originalSenderAccountId
    amount: (NSNumber*) amount
    provider: (NSString*) provider
    scheduledDate: (NSNumber*) scheduledDate
    title: (NSString*) title
    comment: (NSString*) comment
    externalId: (NSString*) externalId
    introspectionParams: (NSString*) introspectionParams
    completionHandler: (void (^)(OAIDisbursementResponse* output, NSError* error)) handler {
    // verify the required parameter 'version' is set
    if (version == nil) {
        NSParameterAssert(version);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"version"] };
            NSError* error = [NSError errorWithDomain:kOAIDisbursementApiErrorDomain code:kOAIDisbursementApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kOAIDisbursementApiErrorDomain code:kOAIDisbursementApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'receiverAccountId' is set
    if (receiverAccountId == nil) {
        NSParameterAssert(receiverAccountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"receiverAccountId"] };
            NSError* error = [NSError errorWithDomain:kOAIDisbursementApiErrorDomain code:kOAIDisbursementApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'originalSenderAccountId' is set
    if (originalSenderAccountId == nil) {
        NSParameterAssert(originalSenderAccountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"originalSenderAccountId"] };
            NSError* error = [NSError errorWithDomain:kOAIDisbursementApiErrorDomain code:kOAIDisbursementApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'amount' is set
    if (amount == nil) {
        NSParameterAssert(amount);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"amount"] };
            NSError* error = [NSError errorWithDomain:kOAIDisbursementApiErrorDomain code:kOAIDisbursementApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'provider' is set
    if (provider == nil) {
        NSParameterAssert(provider);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"provider"] };
            NSError* error = [NSError errorWithDomain:kOAIDisbursementApiErrorDomain code:kOAIDisbursementApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/{version}/disbursement/create"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (version != nil) {
        pathParams[@"version"] = version;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        queryParams[@"accountId"] = accountId;
    }
    if (receiverAccountId != nil) {
        queryParams[@"receiverAccountId"] = receiverAccountId;
    }
    if (originalSenderAccountId != nil) {
        queryParams[@"originalSenderAccountId"] = originalSenderAccountId;
    }
    if (amount != nil) {
        queryParams[@"amount"] = amount;
    }
    if (provider != nil) {
        queryParams[@"provider"] = provider;
    }
    if (scheduledDate != nil) {
        queryParams[@"scheduledDate"] = scheduledDate;
    }
    if (title != nil) {
        queryParams[@"title"] = title;
    }
    if (comment != nil) {
        queryParams[@"comment"] = comment;
    }
    if (externalId != nil) {
        queryParams[@"externalId"] = externalId;
    }
    if (introspectionParams != nil) {
        queryParams[@"introspectionParams"] = introspectionParams;
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
                              responseType: @"OAIDisbursementResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIDisbursementResponse*)data, error);
                                }
                            }];
}

///
/// Get Disbursement
/// Get Disbursement details
///  @param version  
///
///  @param accountId The logged in user. 
///
///  @param disbursementId the id of the disbursement 
///
///  @returns OAIDisbursementResponse*
///
-(NSURLSessionTask*) getDisbursementWithVersion: (NSNumber*) version
    accountId: (NSNumber*) accountId
    disbursementId: (NSNumber*) disbursementId
    completionHandler: (void (^)(OAIDisbursementResponse* output, NSError* error)) handler {
    // verify the required parameter 'version' is set
    if (version == nil) {
        NSParameterAssert(version);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"version"] };
            NSError* error = [NSError errorWithDomain:kOAIDisbursementApiErrorDomain code:kOAIDisbursementApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kOAIDisbursementApiErrorDomain code:kOAIDisbursementApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'disbursementId' is set
    if (disbursementId == nil) {
        NSParameterAssert(disbursementId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"disbursementId"] };
            NSError* error = [NSError errorWithDomain:kOAIDisbursementApiErrorDomain code:kOAIDisbursementApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/{version}/disbursement/get"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (version != nil) {
        pathParams[@"version"] = version;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        queryParams[@"accountId"] = accountId;
    }
    if (disbursementId != nil) {
        queryParams[@"disbursementId"] = disbursementId;
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
                              responseType: @"OAIDisbursementResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIDisbursementResponse*)data, error);
                                }
                            }];
}

///
/// Search Disbursements
/// Search Disbursements
///  @param version  
///
///  @param accountId the id of the logged in user 
///
///  @param receiverAccountId filter results by the id of the account receiving the disbursement (optional)
///
///  @param statuses comma separated list of status values to search for, possilbe values include: NEW, APPROVED, VALIDATING, ERROR, AUTHORIZED, CAPTURED, SETTLED (optional)
///
///  @param providers comma separated list of payment providers to search for, possbile values include: AUTHORIZE_NET, AMAZON_FPS, BILL_COM (optional)
///
///  @param beforeDate the date for searching disbursements before it has been processed (optional)
///
///  @param afterDate the date for searching disbursements before it has been processed (optional)
///
///  @param start the start index for pagination (optional, default to @0)
///
///  @param limit the limit per result set for pagination (optional, default to @20)
///
///  @param activeOnly search on disbursements that are active only (optional, default to @(NO))
///
///  @param externalId search results by this external ID (that can be used to reference the disbursement) (optional)
///
///  @returns NSArray<OAIDisbursementResponse>*
///
-(NSURLSessionTask*) searchDisbursementsWithVersion: (NSNumber*) version
    accountId: (NSNumber*) accountId
    receiverAccountId: (NSNumber*) receiverAccountId
    statuses: (NSString*) statuses
    providers: (NSString*) providers
    beforeDate: (NSNumber*) beforeDate
    afterDate: (NSNumber*) afterDate
    start: (NSNumber*) start
    limit: (NSNumber*) limit
    activeOnly: (NSNumber*) activeOnly
    externalId: (NSString*) externalId
    completionHandler: (void (^)(NSArray<OAIDisbursementResponse>* output, NSError* error)) handler {
    // verify the required parameter 'version' is set
    if (version == nil) {
        NSParameterAssert(version);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"version"] };
            NSError* error = [NSError errorWithDomain:kOAIDisbursementApiErrorDomain code:kOAIDisbursementApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kOAIDisbursementApiErrorDomain code:kOAIDisbursementApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/{version}/disbursement/search"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (version != nil) {
        pathParams[@"version"] = version;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        queryParams[@"accountId"] = accountId;
    }
    if (receiverAccountId != nil) {
        queryParams[@"receiverAccountId"] = receiverAccountId;
    }
    if (statuses != nil) {
        queryParams[@"statuses"] = statuses;
    }
    if (providers != nil) {
        queryParams[@"providers"] = providers;
    }
    if (beforeDate != nil) {
        queryParams[@"beforeDate"] = beforeDate;
    }
    if (afterDate != nil) {
        queryParams[@"afterDate"] = afterDate;
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
    if (externalId != nil) {
        queryParams[@"externalId"] = externalId;
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
                              responseType: @"NSArray<OAIDisbursementResponse>*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSArray<OAIDisbursementResponse>*)data, error);
                                }
                            }];
}

///
/// Update Disbursement
/// Update Disbursement
///  @param version  
///
///  @param accountId the id of the logged in user 
///
///  @param disbursementId the id of the disbursement being updated 
///
///  @param amount the disbursement dollar amount being updated (optional)
///
///  @param provider the payments and/or billing provider (e.g. Authorize.net, Bill.com, etc.) (optional)
///
///  @param scheduledDate the date that the disbursement is scheduled to go out to the payment provider (optional)
///
///  @param title the title given to the disbursement (optional)
///
///  @param comment a comment that can be made on a disbursement (optional)
///
///  @param externalId an external ID that can be used to reference the disbursement (optional)
///
///  @param retry determines whether to try sending the disbursement again in the case of a previous failure (optional)
///
///  @param introspectionParams for specifying parameters to make an http callback request for validating that the disbursement is valid (optional)
///
///  @returns OAIDisbursementResponse*
///
-(NSURLSessionTask*) updateDisbursementWithVersion: (NSNumber*) version
    accountId: (NSNumber*) accountId
    disbursementId: (NSNumber*) disbursementId
    amount: (NSNumber*) amount
    provider: (NSString*) provider
    scheduledDate: (NSNumber*) scheduledDate
    title: (NSString*) title
    comment: (NSString*) comment
    externalId: (NSString*) externalId
    retry: (NSNumber*) retry
    introspectionParams: (NSString*) introspectionParams
    completionHandler: (void (^)(OAIDisbursementResponse* output, NSError* error)) handler {
    // verify the required parameter 'version' is set
    if (version == nil) {
        NSParameterAssert(version);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"version"] };
            NSError* error = [NSError errorWithDomain:kOAIDisbursementApiErrorDomain code:kOAIDisbursementApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kOAIDisbursementApiErrorDomain code:kOAIDisbursementApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'disbursementId' is set
    if (disbursementId == nil) {
        NSParameterAssert(disbursementId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"disbursementId"] };
            NSError* error = [NSError errorWithDomain:kOAIDisbursementApiErrorDomain code:kOAIDisbursementApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/{version}/disbursement/update"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (version != nil) {
        pathParams[@"version"] = version;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        queryParams[@"accountId"] = accountId;
    }
    if (disbursementId != nil) {
        queryParams[@"disbursementId"] = disbursementId;
    }
    if (amount != nil) {
        queryParams[@"amount"] = amount;
    }
    if (provider != nil) {
        queryParams[@"provider"] = provider;
    }
    if (scheduledDate != nil) {
        queryParams[@"scheduledDate"] = scheduledDate;
    }
    if (title != nil) {
        queryParams[@"title"] = title;
    }
    if (comment != nil) {
        queryParams[@"comment"] = comment;
    }
    if (externalId != nil) {
        queryParams[@"externalId"] = externalId;
    }
    if (retry != nil) {
        queryParams[@"retry"] = [retry isEqual:@(YES)] ? @"true" : @"false";
    }
    if (introspectionParams != nil) {
        queryParams[@"introspectionParams"] = introspectionParams;
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
                              responseType: @"OAIDisbursementResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIDisbursementResponse*)data, error);
                                }
                            }];
}



@end
