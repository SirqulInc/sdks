#import "OAIVehicleTypeApi.h"
#import "OAIQueryParamCollection.h"
#import "OAIApiClient.h"
#import "OAIVehicleType.h"


@interface OAIVehicleTypeApi ()

@property (nonatomic, strong, readwrite) NSMutableDictionary *mutableDefaultHeaders;

@end

@implementation OAIVehicleTypeApi

NSString* kOAIVehicleTypeApiErrorDomain = @"OAIVehicleTypeApiErrorDomain";
NSInteger kOAIVehicleTypeApiMissingParamErrorCode = 234513;

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
/// Create Vehicle Type
/// Create a new vehicle type
///  @param vehicleType A JSON representation of cargo type. ```json {   \"name\": \"Truck\",   \"width\": 100,   \"height\": 200,   \"depth\": 200,   \"maxWeight\": 5000,   \"hub\": { \"id\": 1 } } ```  
///
///  @param body  (optional)
///
///  @returns OAIVehicleType*
///
-(NSURLSessionTask*) createVehicleTypeWithVehicleType: (NSString*) vehicleType
    body: (OAIVehicleType*) body
    completionHandler: (void (^)(OAIVehicleType* output, NSError* error)) handler {
    // verify the required parameter 'vehicleType' is set
    if (vehicleType == nil) {
        NSParameterAssert(vehicleType);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"vehicleType"] };
            NSError* error = [NSError errorWithDomain:kOAIVehicleTypeApiErrorDomain code:kOAIVehicleTypeApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/vehicle/type"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (vehicleType != nil) {
        queryParams[@"vehicleType"] = vehicleType;
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
                              responseType: @"OAIVehicleType*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIVehicleType*)data, error);
                                }
                            }];
}

///
/// Delete Vehicle Type
/// Delete a vehicle type
///  @param vehicleTypeId The id of the requested vehicle type 
///
///  @returns void
///
-(NSURLSessionTask*) deleteVehicleTypeWithVehicleTypeId: (NSNumber*) vehicleTypeId
    completionHandler: (void (^)(NSError* error)) handler {
    // verify the required parameter 'vehicleTypeId' is set
    if (vehicleTypeId == nil) {
        NSParameterAssert(vehicleTypeId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"vehicleTypeId"] };
            NSError* error = [NSError errorWithDomain:kOAIVehicleTypeApiErrorDomain code:kOAIVehicleTypeApiMissingParamErrorCode userInfo:userInfo];
            handler(error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/vehicle/type/{vehicleTypeId}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (vehicleTypeId != nil) {
        pathParams[@"vehicleTypeId"] = vehicleTypeId;
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
/// Get Vehicle Type
/// Get a vehicle type
///  @param vehicleTypeId The id of the requested vehicle type 
///
///  @returns OAIVehicleType*
///
-(NSURLSessionTask*) getVehicleTypeWithVehicleTypeId: (NSNumber*) vehicleTypeId
    completionHandler: (void (^)(OAIVehicleType* output, NSError* error)) handler {
    // verify the required parameter 'vehicleTypeId' is set
    if (vehicleTypeId == nil) {
        NSParameterAssert(vehicleTypeId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"vehicleTypeId"] };
            NSError* error = [NSError errorWithDomain:kOAIVehicleTypeApiErrorDomain code:kOAIVehicleTypeApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/vehicle/type/{vehicleTypeId}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (vehicleTypeId != nil) {
        pathParams[@"vehicleTypeId"] = vehicleTypeId;
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
                              responseType: @"OAIVehicleType*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIVehicleType*)data, error);
                                }
                            }];
}

///
/// Search Vehicle Type
/// Search for types of vehicles
///  @param sortField The field to sort by 
///
///  @param descending Determines whether the sorted list is in descending or ascending order 
///
///  @param start The start index for pagination 
///
///  @param limit The limit for pagination 
///
///  @param activeOnly Return only active results 
///
///  @param retailerId Filter by retailer (optional)
///
///  @param hubId Filter by service hub (optional)
///
///  @returns NSArray<OAIVehicleType>*
///
-(NSURLSessionTask*) searchVehicleTypesWithSortField: (NSString*) sortField
    descending: (NSNumber*) descending
    start: (NSNumber*) start
    limit: (NSNumber*) limit
    activeOnly: (NSNumber*) activeOnly
    retailerId: (NSNumber*) retailerId
    hubId: (NSNumber*) hubId
    completionHandler: (void (^)(NSArray<OAIVehicleType>* output, NSError* error)) handler {
    // verify the required parameter 'sortField' is set
    if (sortField == nil) {
        NSParameterAssert(sortField);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"sortField"] };
            NSError* error = [NSError errorWithDomain:kOAIVehicleTypeApiErrorDomain code:kOAIVehicleTypeApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'descending' is set
    if (descending == nil) {
        NSParameterAssert(descending);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"descending"] };
            NSError* error = [NSError errorWithDomain:kOAIVehicleTypeApiErrorDomain code:kOAIVehicleTypeApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'start' is set
    if (start == nil) {
        NSParameterAssert(start);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"start"] };
            NSError* error = [NSError errorWithDomain:kOAIVehicleTypeApiErrorDomain code:kOAIVehicleTypeApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'limit' is set
    if (limit == nil) {
        NSParameterAssert(limit);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"limit"] };
            NSError* error = [NSError errorWithDomain:kOAIVehicleTypeApiErrorDomain code:kOAIVehicleTypeApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'activeOnly' is set
    if (activeOnly == nil) {
        NSParameterAssert(activeOnly);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"activeOnly"] };
            NSError* error = [NSError errorWithDomain:kOAIVehicleTypeApiErrorDomain code:kOAIVehicleTypeApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/vehicle/type"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (retailerId != nil) {
        queryParams[@"retailerId"] = retailerId;
    }
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
                              responseType: @"NSArray<OAIVehicleType>*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSArray<OAIVehicleType>*)data, error);
                                }
                            }];
}

///
/// Update Vehicle Type
/// Update a vehicle type
///  @param vehicleTypeId The id of the vehicle type to update 
///
///  @param vehicleType The new data for the vehicle type to update to. A JSON representation of cargo type, for example: ```json {   \"name\": \"Truck\",   \"width\": 100,   \"height\": 200,   \"depth\": 200,   \"maxWeight\": 5000,   \"hub\": { \"id\": 1 } } ```  
///
///  @param body  (optional)
///
///  @returns OAIVehicleType*
///
-(NSURLSessionTask*) updateVehicleTypeWithVehicleTypeId: (NSNumber*) vehicleTypeId
    vehicleType: (NSString*) vehicleType
    body: (OAIVehicleType*) body
    completionHandler: (void (^)(OAIVehicleType* output, NSError* error)) handler {
    // verify the required parameter 'vehicleTypeId' is set
    if (vehicleTypeId == nil) {
        NSParameterAssert(vehicleTypeId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"vehicleTypeId"] };
            NSError* error = [NSError errorWithDomain:kOAIVehicleTypeApiErrorDomain code:kOAIVehicleTypeApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'vehicleType' is set
    if (vehicleType == nil) {
        NSParameterAssert(vehicleType);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"vehicleType"] };
            NSError* error = [NSError errorWithDomain:kOAIVehicleTypeApiErrorDomain code:kOAIVehicleTypeApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/vehicle/type/{vehicleTypeId}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (vehicleTypeId != nil) {
        pathParams[@"vehicleTypeId"] = vehicleTypeId;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (vehicleType != nil) {
        queryParams[@"vehicleType"] = vehicleType;
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
    bodyParam = body;

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"PUT"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"OAIVehicleType*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIVehicleType*)data, error);
                                }
                            }];
}



@end
