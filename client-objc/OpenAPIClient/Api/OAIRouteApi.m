#import "OAIRouteApi.h"
#import "OAIQueryParamCollection.h"
#import "OAIApiClient.h"
#import "OAIDirection.h"
#import "OAIRoute.h"
#import "OAIShipment.h"
#import "OAIStop.h"


@interface OAIRouteApi ()

@property (nonatomic, strong, readwrite) NSMutableDictionary *mutableDefaultHeaders;

@end

@implementation OAIRouteApi

NSString* kOAIRouteApiErrorDomain = @"OAIRouteApiErrorDomain";
NSInteger kOAIRouteApiMissingParamErrorCode = 234513;

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
/// Approve Route
/// Approve a route
///  @param routeId the id of the route to approve 
///
///  @returns OAIRoute*
///
-(NSURLSessionTask*) approveRouteWithRouteId: (NSNumber*) routeId
    completionHandler: (void (^)(OAIRoute* output, NSError* error)) handler {
    // verify the required parameter 'routeId' is set
    if (routeId == nil) {
        NSParameterAssert(routeId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"routeId"] };
            NSError* error = [NSError errorWithDomain:kOAIRouteApiErrorDomain code:kOAIRouteApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/route/{routeId}/approve"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (routeId != nil) {
        pathParams[@"routeId"] = routeId;
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
                              responseType: @"OAIRoute*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIRoute*)data, error);
                                }
                            }];
}

///
/// Copy Route
/// Make an copy of the given route with optional overriding properties
///  @param routeId the id of the route to duplicate 
///
///  @param body  (optional)
///
///  @returns OAIRoute*
///
-(NSURLSessionTask*) copyRouteWithRouteId: (NSNumber*) routeId
    body: (OAIRoute*) body
    completionHandler: (void (^)(OAIRoute* output, NSError* error)) handler {
    // verify the required parameter 'routeId' is set
    if (routeId == nil) {
        NSParameterAssert(routeId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"routeId"] };
            NSError* error = [NSError errorWithDomain:kOAIRouteApiErrorDomain code:kOAIRouteApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/route/{routeId}/copy"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (routeId != nil) {
        pathParams[@"routeId"] = routeId;
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
                              responseType: @"OAIRoute*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIRoute*)data, error);
                                }
                            }];
}

///
/// Create Route
/// Create new route
///  @param body  (optional)
///
///  @returns OAIRoute*
///
-(NSURLSessionTask*) createRouteWithBody: (OAIRoute*) body
    completionHandler: (void (^)(OAIRoute* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/route"];

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
                              responseType: @"OAIRoute*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIRoute*)data, error);
                                }
                            }];
}

///
/// Update Route Directions
/// Regenerate the directions of a route
///  @param routeId the id of the route to update directions for 
///
///  @returns NSArray<OAIDirection>*
///
-(NSURLSessionTask*) createRouteDirectionsWithRouteId: (NSNumber*) routeId
    completionHandler: (void (^)(NSArray<OAIDirection>* output, NSError* error)) handler {
    // verify the required parameter 'routeId' is set
    if (routeId == nil) {
        NSParameterAssert(routeId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"routeId"] };
            NSError* error = [NSError errorWithDomain:kOAIRouteApiErrorDomain code:kOAIRouteApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/route/{routeId}/directions"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (routeId != nil) {
        pathParams[@"routeId"] = routeId;
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
                              responseType: @"NSArray<OAIDirection>*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSArray<OAIDirection>*)data, error);
                                }
                            }];
}

///
/// Create Route Polyline
/// Update the polyline of the requested route
///  @param routeId the id of the route to create a polyline for 
///
///  @returns OAIRoute*
///
-(NSURLSessionTask*) createRoutePolylineWithRouteId: (NSNumber*) routeId
    completionHandler: (void (^)(OAIRoute* output, NSError* error)) handler {
    // verify the required parameter 'routeId' is set
    if (routeId == nil) {
        NSParameterAssert(routeId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"routeId"] };
            NSError* error = [NSError errorWithDomain:kOAIRouteApiErrorDomain code:kOAIRouteApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/route/{routeId}/polyline"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (routeId != nil) {
        pathParams[@"routeId"] = routeId;
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
                              responseType: @"OAIRoute*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIRoute*)data, error);
                                }
                            }];
}

///
/// Delete Route
/// Delete an existing route
///  @param routeId the id of the route 
///
///  @returns void
///
-(NSURLSessionTask*) deleteRouteWithRouteId: (NSNumber*) routeId
    completionHandler: (void (^)(NSError* error)) handler {
    // verify the required parameter 'routeId' is set
    if (routeId == nil) {
        NSParameterAssert(routeId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"routeId"] };
            NSError* error = [NSError errorWithDomain:kOAIRouteApiErrorDomain code:kOAIRouteApiMissingParamErrorCode userInfo:userInfo];
            handler(error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/route/{routeId}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (routeId != nil) {
        pathParams[@"routeId"] = routeId;
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
/// Disapprove Route
/// Disapprove a route
///  @param routeId the id of the route to reject 
///
///  @returns OAIRoute*
///
-(NSURLSessionTask*) disapproveRouteWithRouteId: (NSNumber*) routeId
    completionHandler: (void (^)(OAIRoute* output, NSError* error)) handler {
    // verify the required parameter 'routeId' is set
    if (routeId == nil) {
        NSParameterAssert(routeId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"routeId"] };
            NSError* error = [NSError errorWithDomain:kOAIRouteApiErrorDomain code:kOAIRouteApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/route/{routeId}/disapprove"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (routeId != nil) {
        pathParams[@"routeId"] = routeId;
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
                              responseType: @"OAIRoute*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIRoute*)data, error);
                                }
                            }];
}

///
/// Get Route
/// Get an existing route
///  @param routeId the id of the route to get 
///
///  @param showInheritedProperties return inherited properties from parent or not 
///
///  @returns OAIRoute*
///
-(NSURLSessionTask*) getRouteWithRouteId: (NSNumber*) routeId
    showInheritedProperties: (NSNumber*) showInheritedProperties
    completionHandler: (void (^)(OAIRoute* output, NSError* error)) handler {
    // verify the required parameter 'routeId' is set
    if (routeId == nil) {
        NSParameterAssert(routeId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"routeId"] };
            NSError* error = [NSError errorWithDomain:kOAIRouteApiErrorDomain code:kOAIRouteApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'showInheritedProperties' is set
    if (showInheritedProperties == nil) {
        NSParameterAssert(showInheritedProperties);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"showInheritedProperties"] };
            NSError* error = [NSError errorWithDomain:kOAIRouteApiErrorDomain code:kOAIRouteApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/route/{routeId}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (routeId != nil) {
        pathParams[@"routeId"] = routeId;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (showInheritedProperties != nil) {
        queryParams[@"showInheritedProperties"] = [showInheritedProperties isEqual:@(YES)] ? @"true" : @"false";
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
                              responseType: @"OAIRoute*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIRoute*)data, error);
                                }
                            }];
}

///
/// Get Route Directions
/// Get the directions of a route
///  @param routeId the id of the route to get directions for 
///
///  @returns NSArray<OAIDirection>*
///
-(NSURLSessionTask*) getRouteDirectionsWithRouteId: (NSNumber*) routeId
    completionHandler: (void (^)(NSArray<OAIDirection>* output, NSError* error)) handler {
    // verify the required parameter 'routeId' is set
    if (routeId == nil) {
        NSParameterAssert(routeId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"routeId"] };
            NSError* error = [NSError errorWithDomain:kOAIRouteApiErrorDomain code:kOAIRouteApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/route/{routeId}/directions"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (routeId != nil) {
        pathParams[@"routeId"] = routeId;
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
                              responseType: @"NSArray<OAIDirection>*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSArray<OAIDirection>*)data, error);
                                }
                            }];
}

///
/// Get Route Shipments
/// Get the shipments on the requested route
///  @param routeId the id of the route to get shipments for 
///
///  @returns NSArray<OAIShipment>*
///
-(NSURLSessionTask*) getRouteShipmentsWithRouteId: (NSNumber*) routeId
    completionHandler: (void (^)(NSArray<OAIShipment>* output, NSError* error)) handler {
    // verify the required parameter 'routeId' is set
    if (routeId == nil) {
        NSParameterAssert(routeId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"routeId"] };
            NSError* error = [NSError errorWithDomain:kOAIRouteApiErrorDomain code:kOAIRouteApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/route/{routeId}/shipments"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (routeId != nil) {
        pathParams[@"routeId"] = routeId;
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
                              responseType: @"NSArray<OAIShipment>*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSArray<OAIShipment>*)data, error);
                                }
                            }];
}

///
/// Get Route Stop
/// Get the specific stop on a route
///  @param routeId the id of the route to get stops for 
///
///  @param stopId the id of the specific stop on the route 
///
///  @returns OAIStop*
///
-(NSURLSessionTask*) getRouteStopWithRouteId: (NSNumber*) routeId
    stopId: (NSNumber*) stopId
    completionHandler: (void (^)(OAIStop* output, NSError* error)) handler {
    // verify the required parameter 'routeId' is set
    if (routeId == nil) {
        NSParameterAssert(routeId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"routeId"] };
            NSError* error = [NSError errorWithDomain:kOAIRouteApiErrorDomain code:kOAIRouteApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'stopId' is set
    if (stopId == nil) {
        NSParameterAssert(stopId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"stopId"] };
            NSError* error = [NSError errorWithDomain:kOAIRouteApiErrorDomain code:kOAIRouteApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/route/{routeId}/stop/{stopId}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (routeId != nil) {
        pathParams[@"routeId"] = routeId;
    }
    if (stopId != nil) {
        pathParams[@"stopId"] = stopId;
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
                              responseType: @"OAIStop*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIStop*)data, error);
                                }
                            }];
}

///
/// Get Route Stops
/// The stops of the route requested
///  @param routeId the id of the route 
///
///  @param confirmedOnly only get stops that have been confirmed or not 
///
///  @returns NSArray<OAIStop>*
///
-(NSURLSessionTask*) getRouteStopsWithRouteId: (NSNumber*) routeId
    confirmedOnly: (NSNumber*) confirmedOnly
    completionHandler: (void (^)(NSArray<OAIStop>* output, NSError* error)) handler {
    // verify the required parameter 'routeId' is set
    if (routeId == nil) {
        NSParameterAssert(routeId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"routeId"] };
            NSError* error = [NSError errorWithDomain:kOAIRouteApiErrorDomain code:kOAIRouteApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'confirmedOnly' is set
    if (confirmedOnly == nil) {
        NSParameterAssert(confirmedOnly);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"confirmedOnly"] };
            NSError* error = [NSError errorWithDomain:kOAIRouteApiErrorDomain code:kOAIRouteApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/route/{routeId}/stops"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (routeId != nil) {
        pathParams[@"routeId"] = routeId;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (confirmedOnly != nil) {
        queryParams[@"confirmedOnly"] = [confirmedOnly isEqual:@(YES)] ? @"true" : @"false";
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
                              responseType: @"NSArray<OAIStop>*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSArray<OAIStop>*)data, error);
                                }
                            }];
}

///
/// Get Shipments At Stop
/// Get the list of shipments on the requested route at a stop
///  @param routeId the id of the route 
///
///  @param stopId the id of the stop to get shipments on 
///
///  @returns NSArray<OAIShipment>*
///
-(NSURLSessionTask*) getShipmentsAtStopWithRouteId: (NSNumber*) routeId
    stopId: (NSNumber*) stopId
    completionHandler: (void (^)(NSArray<OAIShipment>* output, NSError* error)) handler {
    // verify the required parameter 'routeId' is set
    if (routeId == nil) {
        NSParameterAssert(routeId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"routeId"] };
            NSError* error = [NSError errorWithDomain:kOAIRouteApiErrorDomain code:kOAIRouteApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'stopId' is set
    if (stopId == nil) {
        NSParameterAssert(stopId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"stopId"] };
            NSError* error = [NSError errorWithDomain:kOAIRouteApiErrorDomain code:kOAIRouteApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/route/{routeId}/stop/{stopId}/shipments"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (routeId != nil) {
        pathParams[@"routeId"] = routeId;
    }
    if (stopId != nil) {
        pathParams[@"stopId"] = stopId;
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
                              responseType: @"NSArray<OAIShipment>*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSArray<OAIShipment>*)data, error);
                                }
                            }];
}

///
/// Optimize Route
/// Optimize a route. The optimization method based on how the server is configured.
///  @param routeId the id of the route to optimize 
///
///  @returns void
///
-(NSURLSessionTask*) optimizeRouteWithRouteId: (NSNumber*) routeId
    completionHandler: (void (^)(NSError* error)) handler {
    // verify the required parameter 'routeId' is set
    if (routeId == nil) {
        NSParameterAssert(routeId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"routeId"] };
            NSError* error = [NSError errorWithDomain:kOAIRouteApiErrorDomain code:kOAIRouteApiMissingParamErrorCode userInfo:userInfo];
            handler(error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/route/{routeId}/optimize"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (routeId != nil) {
        pathParams[@"routeId"] = routeId;
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
                              responseType: nil
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler(error);
                                }
                            }];
}

///
/// Delete Stop
/// Delete a stop on a route
///  @param routeId the id of the route 
///
///  @param stopId the id of the specific stop to delete on the route 
///
///  @returns void
///
-(NSURLSessionTask*) removeStopWithRouteId: (NSNumber*) routeId
    stopId: (NSNumber*) stopId
    completionHandler: (void (^)(NSError* error)) handler {
    // verify the required parameter 'routeId' is set
    if (routeId == nil) {
        NSParameterAssert(routeId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"routeId"] };
            NSError* error = [NSError errorWithDomain:kOAIRouteApiErrorDomain code:kOAIRouteApiMissingParamErrorCode userInfo:userInfo];
            handler(error);
        }
        return nil;
    }

    // verify the required parameter 'stopId' is set
    if (stopId == nil) {
        NSParameterAssert(stopId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"stopId"] };
            NSError* error = [NSError errorWithDomain:kOAIRouteApiErrorDomain code:kOAIRouteApiMissingParamErrorCode userInfo:userInfo];
            handler(error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/route/{routeId}/stop/{stopId}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (routeId != nil) {
        pathParams[@"routeId"] = routeId;
    }
    if (stopId != nil) {
        pathParams[@"stopId"] = stopId;
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
/// Reorder Route Stops
/// Reordering the stops on the route with and update route distance, time, direction, and polyline
///  @param routeId the id of the route 
///
///  @param body  (optional)
///
///  @returns NSArray<OAIStop>*
///
-(NSURLSessionTask*) reorderRouteStopsPatchWithRouteId: (NSNumber*) routeId
    body: (NSArray<OAIStop>*) body
    completionHandler: (void (^)(NSArray<OAIStop>* output, NSError* error)) handler {
    // verify the required parameter 'routeId' is set
    if (routeId == nil) {
        NSParameterAssert(routeId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"routeId"] };
            NSError* error = [NSError errorWithDomain:kOAIRouteApiErrorDomain code:kOAIRouteApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/route/{routeId}/stops/reorder"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (routeId != nil) {
        pathParams[@"routeId"] = routeId;
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
    bodyParam = body;

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"PATCH"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"NSArray<OAIStop>*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSArray<OAIStop>*)data, error);
                                }
                            }];
}

///
/// Reorder Route Stops
/// Reordering the stops on the route with and update route distance, time, direction, and polyline
///  @param routeId the id of the route 
///
///  @param body  (optional)
///
///  @returns NSArray<OAIStop>*
///
-(NSURLSessionTask*) reorderRouteStopsPostWithRouteId: (NSNumber*) routeId
    body: (NSArray<OAIStop>*) body
    completionHandler: (void (^)(NSArray<OAIStop>* output, NSError* error)) handler {
    // verify the required parameter 'routeId' is set
    if (routeId == nil) {
        NSParameterAssert(routeId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"routeId"] };
            NSError* error = [NSError errorWithDomain:kOAIRouteApiErrorDomain code:kOAIRouteApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/route/{routeId}/stops/reorder"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (routeId != nil) {
        pathParams[@"routeId"] = routeId;
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
                              responseType: @"NSArray<OAIStop>*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSArray<OAIStop>*)data, error);
                                }
                            }];
}

///
/// Search Routes
/// Search for routes.
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
///  @param includesEmpty Include empty routes or not 
///
///  @param rootOnly Only return root instance routes 
///
///  @param showInheritedProperties Display root route properties 
///
///  @param hubId Filter results by service hub (optional)
///
///  @param programId Filter results by program (optional)
///
///  @param scheduledStart The start date to filter the results by (optional)
///
///  @param scheduledEnd The end date to filter the results by (optional)
///
///  @param updatedStart The lower bound of updated date (optional)
///
///  @param updatedEnd The upper bound of updated date (optional)
///
///  @param featured The route is featured or not (optional)
///
///  @param seatCount Has at least this many seat available (optional)
///
///  @param approved Has been approved or not (optional)
///
///  @param started Has started or not (optional)
///
///  @param completed Has completed or not (optional)
///
///  @param valid Is valid or not (optional)
///
///  @param parentId If it is a recurring route based on the parent route (optional)
///
///  @returns NSArray<OAIRoute>*
///
-(NSURLSessionTask*) searchRoutesWithSortField: (NSString*) sortField
    descending: (NSNumber*) descending
    start: (NSNumber*) start
    limit: (NSNumber*) limit
    activeOnly: (NSNumber*) activeOnly
    includesEmpty: (NSNumber*) includesEmpty
    rootOnly: (NSNumber*) rootOnly
    showInheritedProperties: (NSNumber*) showInheritedProperties
    hubId: (NSNumber*) hubId
    programId: (NSNumber*) programId
    scheduledStart: (NSNumber*) scheduledStart
    scheduledEnd: (NSNumber*) scheduledEnd
    updatedStart: (NSNumber*) updatedStart
    updatedEnd: (NSNumber*) updatedEnd
    featured: (NSNumber*) featured
    seatCount: (NSNumber*) seatCount
    approved: (NSNumber*) approved
    started: (NSNumber*) started
    completed: (NSNumber*) completed
    valid: (NSNumber*) valid
    parentId: (NSNumber*) parentId
    completionHandler: (void (^)(NSArray<OAIRoute>* output, NSError* error)) handler {
    // verify the required parameter 'sortField' is set
    if (sortField == nil) {
        NSParameterAssert(sortField);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"sortField"] };
            NSError* error = [NSError errorWithDomain:kOAIRouteApiErrorDomain code:kOAIRouteApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'descending' is set
    if (descending == nil) {
        NSParameterAssert(descending);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"descending"] };
            NSError* error = [NSError errorWithDomain:kOAIRouteApiErrorDomain code:kOAIRouteApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'start' is set
    if (start == nil) {
        NSParameterAssert(start);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"start"] };
            NSError* error = [NSError errorWithDomain:kOAIRouteApiErrorDomain code:kOAIRouteApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'limit' is set
    if (limit == nil) {
        NSParameterAssert(limit);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"limit"] };
            NSError* error = [NSError errorWithDomain:kOAIRouteApiErrorDomain code:kOAIRouteApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'activeOnly' is set
    if (activeOnly == nil) {
        NSParameterAssert(activeOnly);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"activeOnly"] };
            NSError* error = [NSError errorWithDomain:kOAIRouteApiErrorDomain code:kOAIRouteApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'includesEmpty' is set
    if (includesEmpty == nil) {
        NSParameterAssert(includesEmpty);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"includesEmpty"] };
            NSError* error = [NSError errorWithDomain:kOAIRouteApiErrorDomain code:kOAIRouteApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'rootOnly' is set
    if (rootOnly == nil) {
        NSParameterAssert(rootOnly);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"rootOnly"] };
            NSError* error = [NSError errorWithDomain:kOAIRouteApiErrorDomain code:kOAIRouteApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'showInheritedProperties' is set
    if (showInheritedProperties == nil) {
        NSParameterAssert(showInheritedProperties);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"showInheritedProperties"] };
            NSError* error = [NSError errorWithDomain:kOAIRouteApiErrorDomain code:kOAIRouteApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/route"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (hubId != nil) {
        queryParams[@"hubId"] = hubId;
    }
    if (programId != nil) {
        queryParams[@"programId"] = programId;
    }
    if (scheduledStart != nil) {
        queryParams[@"scheduledStart"] = scheduledStart;
    }
    if (scheduledEnd != nil) {
        queryParams[@"scheduledEnd"] = scheduledEnd;
    }
    if (updatedStart != nil) {
        queryParams[@"updatedStart"] = updatedStart;
    }
    if (updatedEnd != nil) {
        queryParams[@"updatedEnd"] = updatedEnd;
    }
    if (featured != nil) {
        queryParams[@"featured"] = [featured isEqual:@(YES)] ? @"true" : @"false";
    }
    if (seatCount != nil) {
        queryParams[@"seatCount"] = seatCount;
    }
    if (approved != nil) {
        queryParams[@"approved"] = [approved isEqual:@(YES)] ? @"true" : @"false";
    }
    if (started != nil) {
        queryParams[@"started"] = [started isEqual:@(YES)] ? @"true" : @"false";
    }
    if (completed != nil) {
        queryParams[@"completed"] = [completed isEqual:@(YES)] ? @"true" : @"false";
    }
    if (valid != nil) {
        queryParams[@"valid"] = [valid isEqual:@(YES)] ? @"true" : @"false";
    }
    if (parentId != nil) {
        queryParams[@"parentId"] = parentId;
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
    if (includesEmpty != nil) {
        queryParams[@"includesEmpty"] = [includesEmpty isEqual:@(YES)] ? @"true" : @"false";
    }
    if (rootOnly != nil) {
        queryParams[@"rootOnly"] = [rootOnly isEqual:@(YES)] ? @"true" : @"false";
    }
    if (showInheritedProperties != nil) {
        queryParams[@"showInheritedProperties"] = [showInheritedProperties isEqual:@(YES)] ? @"true" : @"false";
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
                              responseType: @"NSArray<OAIRoute>*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSArray<OAIRoute>*)data, error);
                                }
                            }];
}

///
/// Set Driver
/// Update the driver of the route.
///  @param _id the id of the route 
///
///  @param driverId the id of the driver 
///
///  @returns void
///
-(NSURLSessionTask*) setDriverWithId: (NSNumber*) _id
    driverId: (NSNumber*) driverId
    completionHandler: (void (^)(NSError* error)) handler {
    // verify the required parameter '_id' is set
    if (_id == nil) {
        NSParameterAssert(_id);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"_id"] };
            NSError* error = [NSError errorWithDomain:kOAIRouteApiErrorDomain code:kOAIRouteApiMissingParamErrorCode userInfo:userInfo];
            handler(error);
        }
        return nil;
    }

    // verify the required parameter 'driverId' is set
    if (driverId == nil) {
        NSParameterAssert(driverId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"driverId"] };
            NSError* error = [NSError errorWithDomain:kOAIRouteApiErrorDomain code:kOAIRouteApiMissingParamErrorCode userInfo:userInfo];
            handler(error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/route/{id}/driver/{driverId}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (_id != nil) {
        pathParams[@"id"] = _id;
    }
    if (driverId != nil) {
        pathParams[@"driverId"] = driverId;
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
                              responseType: nil
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler(error);
                                }
                            }];
}

///
/// Update Route
/// Update an existing route
///  @param routeId the id of the route 
///
///  @param body  (optional)
///
///  @returns OAIRoute*
///
-(NSURLSessionTask*) updateRouteWithRouteId: (NSNumber*) routeId
    body: (OAIRoute*) body
    completionHandler: (void (^)(OAIRoute* output, NSError* error)) handler {
    // verify the required parameter 'routeId' is set
    if (routeId == nil) {
        NSParameterAssert(routeId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"routeId"] };
            NSError* error = [NSError errorWithDomain:kOAIRouteApiErrorDomain code:kOAIRouteApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/route/{routeId}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (routeId != nil) {
        pathParams[@"routeId"] = routeId;
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
                              responseType: @"OAIRoute*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIRoute*)data, error);
                                }
                            }];
}

///
/// Update Route Stop
/// Update a stop on a specified route
///  @param routeId the id of the route to update stops for 
///
///  @param stopId the id of the specific stop to update on the route 
///
///  @param body  (optional)
///
///  @returns void
///
-(NSURLSessionTask*) updateRouteStopWithRouteId: (NSNumber*) routeId
    stopId: (NSNumber*) stopId
    body: (OAIStop*) body
    completionHandler: (void (^)(NSError* error)) handler {
    // verify the required parameter 'routeId' is set
    if (routeId == nil) {
        NSParameterAssert(routeId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"routeId"] };
            NSError* error = [NSError errorWithDomain:kOAIRouteApiErrorDomain code:kOAIRouteApiMissingParamErrorCode userInfo:userInfo];
            handler(error);
        }
        return nil;
    }

    // verify the required parameter 'stopId' is set
    if (stopId == nil) {
        NSParameterAssert(stopId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"stopId"] };
            NSError* error = [NSError errorWithDomain:kOAIRouteApiErrorDomain code:kOAIRouteApiMissingParamErrorCode userInfo:userInfo];
            handler(error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/route/{routeId}/stop/{stopId}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (routeId != nil) {
        pathParams[@"routeId"] = routeId;
    }
    if (stopId != nil) {
        pathParams[@"stopId"] = stopId;
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
                              responseType: nil
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler(error);
                                }
                            }];
}



@end
