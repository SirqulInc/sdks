#import "OAIRouteSettingApi.h"
#import "OAIQueryParamCollection.h"
#import "OAIApiClient.h"
#import "OAIRouteSettings.h"


@interface OAIRouteSettingApi ()

@property (nonatomic, strong, readwrite) NSMutableDictionary *mutableDefaultHeaders;

@end

@implementation OAIRouteSettingApi

NSString* kOAIRouteSettingApiErrorDomain = @"OAIRouteSettingApiErrorDomain";
NSInteger kOAIRouteSettingApiMissingParamErrorCode = 234513;

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
/// Create Route Setting
/// Create a new route setting
///  @param body  (optional)
///
///  @returns OAIRouteSettings*
///
-(NSURLSessionTask*) createRouteSettingsWithBody: (OAIRouteSettings*) body
    completionHandler: (void (^)(OAIRouteSettings* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/route/setting"];

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
                              responseType: @"OAIRouteSettings*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIRouteSettings*)data, error);
                                }
                            }];
}

///
/// Delete Route Setting
/// Delete an existing route setting
///  @param routeSettingsId the id of the route setting to delete 
///
///  @returns NSObject*
///
-(NSURLSessionTask*) deleteRouteSettingsWithRouteSettingsId: (NSNumber*) routeSettingsId
    completionHandler: (void (^)(NSObject* output, NSError* error)) handler {
    // verify the required parameter 'routeSettingsId' is set
    if (routeSettingsId == nil) {
        NSParameterAssert(routeSettingsId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"routeSettingsId"] };
            NSError* error = [NSError errorWithDomain:kOAIRouteSettingApiErrorDomain code:kOAIRouteSettingApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/route/setting/{routeSettingsId}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (routeSettingsId != nil) {
        pathParams[@"routeSettingsId"] = routeSettingsId;
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
                              responseType: @"NSObject*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSObject*)data, error);
                                }
                            }];
}

///
/// Get Route Setting
/// Get an existing route settings
///  @param routeSettingsId the id of the route settings to get 
///
///  @returns OAIRouteSettings*
///
-(NSURLSessionTask*) getRouteSettingsWithRouteSettingsId: (NSNumber*) routeSettingsId
    completionHandler: (void (^)(OAIRouteSettings* output, NSError* error)) handler {
    // verify the required parameter 'routeSettingsId' is set
    if (routeSettingsId == nil) {
        NSParameterAssert(routeSettingsId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"routeSettingsId"] };
            NSError* error = [NSError errorWithDomain:kOAIRouteSettingApiErrorDomain code:kOAIRouteSettingApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/route/setting/{routeSettingsId}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (routeSettingsId != nil) {
        pathParams[@"routeSettingsId"] = routeSettingsId;
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
                              responseType: @"OAIRouteSettings*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIRouteSettings*)data, error);
                                }
                            }];
}

///
/// Search Route Settings
/// Search for route settings
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
///  @param hubId The service hub that the route belongs under (optional)
///
///  @param programId The program that the route belongs under (optional)
///
///  @param keyword The keyword to search for the route (optional)
///
///  @returns NSArray<OAIRouteSettings>*
///
-(NSURLSessionTask*) searchRouteSettingsWithSortField: (NSString*) sortField
    descending: (NSNumber*) descending
    start: (NSNumber*) start
    limit: (NSNumber*) limit
    activeOnly: (NSNumber*) activeOnly
    hubId: (NSNumber*) hubId
    programId: (NSNumber*) programId
    keyword: (NSString*) keyword
    completionHandler: (void (^)(NSArray<OAIRouteSettings>* output, NSError* error)) handler {
    // verify the required parameter 'sortField' is set
    if (sortField == nil) {
        NSParameterAssert(sortField);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"sortField"] };
            NSError* error = [NSError errorWithDomain:kOAIRouteSettingApiErrorDomain code:kOAIRouteSettingApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'descending' is set
    if (descending == nil) {
        NSParameterAssert(descending);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"descending"] };
            NSError* error = [NSError errorWithDomain:kOAIRouteSettingApiErrorDomain code:kOAIRouteSettingApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'start' is set
    if (start == nil) {
        NSParameterAssert(start);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"start"] };
            NSError* error = [NSError errorWithDomain:kOAIRouteSettingApiErrorDomain code:kOAIRouteSettingApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'limit' is set
    if (limit == nil) {
        NSParameterAssert(limit);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"limit"] };
            NSError* error = [NSError errorWithDomain:kOAIRouteSettingApiErrorDomain code:kOAIRouteSettingApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'activeOnly' is set
    if (activeOnly == nil) {
        NSParameterAssert(activeOnly);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"activeOnly"] };
            NSError* error = [NSError errorWithDomain:kOAIRouteSettingApiErrorDomain code:kOAIRouteSettingApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/route/setting"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (hubId != nil) {
        queryParams[@"hubId"] = hubId;
    }
    if (programId != nil) {
        queryParams[@"programId"] = programId;
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
                              responseType: @"NSArray<OAIRouteSettings>*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSArray<OAIRouteSettings>*)data, error);
                                }
                            }];
}

///
/// Update Route Setting
/// Update an existing route setting
///  @param routeSettingsId the id of the route settings to update 
///
///  @param body  (optional)
///
///  @returns OAIRouteSettings*
///
-(NSURLSessionTask*) updateRouteSettingsWithRouteSettingsId: (NSNumber*) routeSettingsId
    body: (OAIRouteSettings*) body
    completionHandler: (void (^)(OAIRouteSettings* output, NSError* error)) handler {
    // verify the required parameter 'routeSettingsId' is set
    if (routeSettingsId == nil) {
        NSParameterAssert(routeSettingsId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"routeSettingsId"] };
            NSError* error = [NSError errorWithDomain:kOAIRouteSettingApiErrorDomain code:kOAIRouteSettingApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/route/setting/{routeSettingsId}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (routeSettingsId != nil) {
        pathParams[@"routeSettingsId"] = routeSettingsId;
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
                              responseType: @"OAIRouteSettings*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIRouteSettings*)data, error);
                                }
                            }];
}



@end
