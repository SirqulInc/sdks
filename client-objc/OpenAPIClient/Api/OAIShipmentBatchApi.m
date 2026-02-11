#import "OAIShipmentBatchApi.h"
#import "OAIQueryParamCollection.h"
#import "OAIApiClient.h"
#import "OAIShipmentBatch.h"
#import "OAIShipmentImportStatus.h"


@interface OAIShipmentBatchApi ()

@property (nonatomic, strong, readwrite) NSMutableDictionary *mutableDefaultHeaders;

@end

@implementation OAIShipmentBatchApi

NSString* kOAIShipmentBatchApiErrorDomain = @"OAIShipmentBatchApiErrorDomain";
NSInteger kOAIShipmentBatchApiMissingParamErrorCode = 234513;

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
/// Create Shipment Batch
/// Create a new shipment batch
///  @param body  (optional)
///
///  @returns OAIShipmentBatch*
///
-(NSURLSessionTask*) createShipmentBatchWithBody: (OAIShipmentBatch*) body
    completionHandler: (void (^)(OAIShipmentBatch* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/shipment/batch"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

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
    bodyParam = body;

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
                              responseType: @"OAIShipmentBatch*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIShipmentBatch*)data, error);
                                }
                            }];
}

///
/// Delete Shipment Batch
/// Search for shipment batches
///  @param batchId the id of the shipment batch to delete 
///
///  @returns void
///
-(NSURLSessionTask*) deleteShipmentBatchWithBatchId: (NSNumber*) batchId
    completionHandler: (void (^)(NSError* error)) handler {
    // verify the required parameter 'batchId' is set
    if (batchId == nil) {
        NSParameterAssert(batchId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"batchId"] };
            NSError* error = [NSError errorWithDomain:kOAIShipmentBatchApiErrorDomain code:kOAIShipmentBatchApiMissingParamErrorCode userInfo:userInfo];
            handler(error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/shipment/batch/{batchId}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (batchId != nil) {
        pathParams[@"batchId"] = batchId;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[]];
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
                                    method: @"DELETE"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: nil
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler(error);
                                }
                            }];
}

///
/// Get Shipment Batch
/// Get an existing shipment batch
///  @param batchId the id of the shipment batch to get 
///
///  @returns OAIShipmentBatch*
///
-(NSURLSessionTask*) getShipmentBatchWithBatchId: (NSNumber*) batchId
    completionHandler: (void (^)(OAIShipmentBatch* output, NSError* error)) handler {
    // verify the required parameter 'batchId' is set
    if (batchId == nil) {
        NSParameterAssert(batchId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"batchId"] };
            NSError* error = [NSError errorWithDomain:kOAIShipmentBatchApiErrorDomain code:kOAIShipmentBatchApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/shipment/batch/{batchId}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (batchId != nil) {
        pathParams[@"batchId"] = batchId;
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
                              responseType: @"OAIShipmentBatch*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIShipmentBatch*)data, error);
                                }
                            }];
}

///
/// Get Shipment Batch Status
/// Get the import status list of the import shipment batch
///  @param batchId The id of the requested shipment batch 
///
///  @param accountId the id of the logged in user 
///
///  @param sortField The field to sort by 
///
///  @param descending Determines whether the sorted list is in descending or ascending order 
///
///  @param start The start index for pagination 
///
///  @param limit The limit for pagination 
///
///  @param valid Valid import status only or not (optional)
///
///  @param started Started import status only (optional)
///
///  @param completed Completed import status only (optional)
///
///  @param hasShipment Has shipment associate to the status (optional)
///
///  @param hasRoute Has route associate to the status (optional)
///
///  @param keyword The keyword to search for (optional)
///
///  @returns NSArray<OAIShipmentImportStatus>*
///
-(NSURLSessionTask*) getShipmentBatchStatusWithBatchId: (NSNumber*) batchId
    accountId: (NSNumber*) accountId
    sortField: (NSString*) sortField
    descending: (NSNumber*) descending
    start: (NSNumber*) start
    limit: (NSNumber*) limit
    valid: (NSNumber*) valid
    started: (NSNumber*) started
    completed: (NSNumber*) completed
    hasShipment: (NSNumber*) hasShipment
    hasRoute: (NSNumber*) hasRoute
    keyword: (NSString*) keyword
    completionHandler: (void (^)(NSArray<OAIShipmentImportStatus>* output, NSError* error)) handler {
    // verify the required parameter 'batchId' is set
    if (batchId == nil) {
        NSParameterAssert(batchId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"batchId"] };
            NSError* error = [NSError errorWithDomain:kOAIShipmentBatchApiErrorDomain code:kOAIShipmentBatchApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kOAIShipmentBatchApiErrorDomain code:kOAIShipmentBatchApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'sortField' is set
    if (sortField == nil) {
        NSParameterAssert(sortField);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"sortField"] };
            NSError* error = [NSError errorWithDomain:kOAIShipmentBatchApiErrorDomain code:kOAIShipmentBatchApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'descending' is set
    if (descending == nil) {
        NSParameterAssert(descending);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"descending"] };
            NSError* error = [NSError errorWithDomain:kOAIShipmentBatchApiErrorDomain code:kOAIShipmentBatchApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'start' is set
    if (start == nil) {
        NSParameterAssert(start);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"start"] };
            NSError* error = [NSError errorWithDomain:kOAIShipmentBatchApiErrorDomain code:kOAIShipmentBatchApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'limit' is set
    if (limit == nil) {
        NSParameterAssert(limit);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"limit"] };
            NSError* error = [NSError errorWithDomain:kOAIShipmentBatchApiErrorDomain code:kOAIShipmentBatchApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/shipment/batch/{batchId}/status"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (batchId != nil) {
        pathParams[@"batchId"] = batchId;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        queryParams[@"accountId"] = accountId;
    }
    if (valid != nil) {
        queryParams[@"valid"] = [valid isEqual:@(YES)] ? @"true" : @"false";
    }
    if (started != nil) {
        queryParams[@"started"] = [started isEqual:@(YES)] ? @"true" : @"false";
    }
    if (completed != nil) {
        queryParams[@"completed"] = [completed isEqual:@(YES)] ? @"true" : @"false";
    }
    if (hasShipment != nil) {
        queryParams[@"hasShipment"] = [hasShipment isEqual:@(YES)] ? @"true" : @"false";
    }
    if (hasRoute != nil) {
        queryParams[@"hasRoute"] = [hasRoute isEqual:@(YES)] ? @"true" : @"false";
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
                              responseType: @"NSArray<OAIShipmentImportStatus>*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSArray<OAIShipmentImportStatus>*)data, error);
                                }
                            }];
}

///
/// Search Shipment Batch
/// Search for shipment batches
///  @param hubId The associated service hub 
///
///  @param sortField The field to sort by 
///
///  @param descending Determines whether the sorted list is in descending or ascending order 
///
///  @param start The start index for pagination 
///
///  @param limit The limit for pagination 
///
///  @returns NSArray<OAIShipmentBatch>*
///
-(NSURLSessionTask*) searchShipmentBatchWithHubId: (NSNumber*) hubId
    sortField: (NSString*) sortField
    descending: (NSNumber*) descending
    start: (NSNumber*) start
    limit: (NSNumber*) limit
    completionHandler: (void (^)(NSArray<OAIShipmentBatch>* output, NSError* error)) handler {
    // verify the required parameter 'hubId' is set
    if (hubId == nil) {
        NSParameterAssert(hubId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"hubId"] };
            NSError* error = [NSError errorWithDomain:kOAIShipmentBatchApiErrorDomain code:kOAIShipmentBatchApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'sortField' is set
    if (sortField == nil) {
        NSParameterAssert(sortField);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"sortField"] };
            NSError* error = [NSError errorWithDomain:kOAIShipmentBatchApiErrorDomain code:kOAIShipmentBatchApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'descending' is set
    if (descending == nil) {
        NSParameterAssert(descending);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"descending"] };
            NSError* error = [NSError errorWithDomain:kOAIShipmentBatchApiErrorDomain code:kOAIShipmentBatchApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'start' is set
    if (start == nil) {
        NSParameterAssert(start);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"start"] };
            NSError* error = [NSError errorWithDomain:kOAIShipmentBatchApiErrorDomain code:kOAIShipmentBatchApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'limit' is set
    if (limit == nil) {
        NSParameterAssert(limit);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"limit"] };
            NSError* error = [NSError errorWithDomain:kOAIShipmentBatchApiErrorDomain code:kOAIShipmentBatchApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/shipment/batch"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (hubId != nil) {
        queryParams[@"hubId"] = hubId;
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
                              responseType: @"NSArray<OAIShipmentBatch>*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSArray<OAIShipmentBatch>*)data, error);
                                }
                            }];
}



@end
