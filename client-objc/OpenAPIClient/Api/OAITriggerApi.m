#import "OAITriggerApi.h"
#import "OAIQueryParamCollection.h"
#import "OAIApiClient.h"
#import "OAISirqulResponse.h"
#import "OAITriggerResponse.h"


@interface OAITriggerApi ()

@property (nonatomic, strong, readwrite) NSMutableDictionary *mutableDefaultHeaders;

@end

@implementation OAITriggerApi

NSString* kOAITriggerApiErrorDomain = @"OAITriggerApiErrorDomain";
NSInteger kOAITriggerApiMissingParamErrorCode = 234513;

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
/// Create Trigger
/// Create a trigger
///  @param version  
///
///  @param accountId The logged in user 
///
///  @param name The name of the trigger 
///
///  @param appKey The application to target (optional)
///
///  @param groupingId Client defined identifier for grouping triggers (optional)
///
///  @param endpointURL The URL for making an HTTP call (optional)
///
///  @param payload The parameters for making an HTTP call (optional)
///
///  @param scheduledDate The date and time of the next trigger (optional)
///
///  @param startDate The starting date of the trigger (optional)
///
///  @param endDate The ending date of the trigger (optional)
///
///  @param cronExpression The cron expression that represents the trigger's schedule (optional)
///
///  @param conditionalInput Json input representing conditional logic that has to be met before running the trigger (optional)
///
///  @param visibility The determines the scope of who is able to find and view the scheduled notification (PUBLIC - openly available to all Sirqul users, PRIVATE - only available to users that have been invited) (optional)
///
///  @param active Sets whether the Trigger is active or not (inactive Triggers are not processed) (optional, default to @(YES))
///
///  @returns OAITriggerResponse*
///
-(NSURLSessionTask*) createTriggerWithVersion: (NSNumber*) version
    accountId: (NSNumber*) accountId
    name: (NSString*) name
    appKey: (NSString*) appKey
    groupingId: (NSString*) groupingId
    endpointURL: (NSString*) endpointURL
    payload: (NSString*) payload
    scheduledDate: (NSNumber*) scheduledDate
    startDate: (NSNumber*) startDate
    endDate: (NSNumber*) endDate
    cronExpression: (NSString*) cronExpression
    conditionalInput: (NSString*) conditionalInput
    visibility: (NSString*) visibility
    active: (NSNumber*) active
    completionHandler: (void (^)(OAITriggerResponse* output, NSError* error)) handler {
    // verify the required parameter 'version' is set
    if (version == nil) {
        NSParameterAssert(version);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"version"] };
            NSError* error = [NSError errorWithDomain:kOAITriggerApiErrorDomain code:kOAITriggerApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kOAITriggerApiErrorDomain code:kOAITriggerApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'name' is set
    if (name == nil) {
        NSParameterAssert(name);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"name"] };
            NSError* error = [NSError errorWithDomain:kOAITriggerApiErrorDomain code:kOAITriggerApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/{version}/trigger/create"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (version != nil) {
        pathParams[@"version"] = version;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        queryParams[@"accountId"] = accountId;
    }
    if (name != nil) {
        queryParams[@"name"] = name;
    }
    if (appKey != nil) {
        queryParams[@"appKey"] = appKey;
    }
    if (groupingId != nil) {
        queryParams[@"groupingId"] = groupingId;
    }
    if (endpointURL != nil) {
        queryParams[@"endpointURL"] = endpointURL;
    }
    if (payload != nil) {
        queryParams[@"payload"] = payload;
    }
    if (scheduledDate != nil) {
        queryParams[@"scheduledDate"] = scheduledDate;
    }
    if (startDate != nil) {
        queryParams[@"startDate"] = startDate;
    }
    if (endDate != nil) {
        queryParams[@"endDate"] = endDate;
    }
    if (cronExpression != nil) {
        queryParams[@"cronExpression"] = cronExpression;
    }
    if (conditionalInput != nil) {
        queryParams[@"conditionalInput"] = conditionalInput;
    }
    if (visibility != nil) {
        queryParams[@"visibility"] = visibility;
    }
    if (active != nil) {
        queryParams[@"active"] = [active isEqual:@(YES)] ? @"true" : @"false";
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
                              responseType: @"OAITriggerResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAITriggerResponse*)data, error);
                                }
                            }];
}

///
/// Delete Trigger
/// Mark a trigger as deleted.
///  @param version  
///
///  @param accountId The logged in user. 
///
///  @param triggerId The id of the trigger to delete. 
///
///  @returns OAISirqulResponse*
///
-(NSURLSessionTask*) deleteTriggerWithVersion: (NSNumber*) version
    accountId: (NSNumber*) accountId
    triggerId: (NSNumber*) triggerId
    completionHandler: (void (^)(OAISirqulResponse* output, NSError* error)) handler {
    // verify the required parameter 'version' is set
    if (version == nil) {
        NSParameterAssert(version);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"version"] };
            NSError* error = [NSError errorWithDomain:kOAITriggerApiErrorDomain code:kOAITriggerApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kOAITriggerApiErrorDomain code:kOAITriggerApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'triggerId' is set
    if (triggerId == nil) {
        NSParameterAssert(triggerId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"triggerId"] };
            NSError* error = [NSError errorWithDomain:kOAITriggerApiErrorDomain code:kOAITriggerApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/{version}/trigger/delete"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (version != nil) {
        pathParams[@"version"] = version;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        queryParams[@"accountId"] = accountId;
    }
    if (triggerId != nil) {
        queryParams[@"triggerId"] = triggerId;
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
/// Get Trigger
/// Get a trigger
///  @param version  
///
///  @param accountId The logged in user. 
///
///  @param triggerId The id of the Trigger to return. 
///
///  @returns OAITriggerResponse*
///
-(NSURLSessionTask*) getTriggerWithVersion: (NSNumber*) version
    accountId: (NSNumber*) accountId
    triggerId: (NSNumber*) triggerId
    completionHandler: (void (^)(OAITriggerResponse* output, NSError* error)) handler {
    // verify the required parameter 'version' is set
    if (version == nil) {
        NSParameterAssert(version);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"version"] };
            NSError* error = [NSError errorWithDomain:kOAITriggerApiErrorDomain code:kOAITriggerApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kOAITriggerApiErrorDomain code:kOAITriggerApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'triggerId' is set
    if (triggerId == nil) {
        NSParameterAssert(triggerId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"triggerId"] };
            NSError* error = [NSError errorWithDomain:kOAITriggerApiErrorDomain code:kOAITriggerApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/{version}/trigger/get"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (version != nil) {
        pathParams[@"version"] = version;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        queryParams[@"accountId"] = accountId;
    }
    if (triggerId != nil) {
        queryParams[@"triggerId"] = triggerId;
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
                              responseType: @"OAITriggerResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAITriggerResponse*)data, error);
                                }
                            }];
}

///
/// Search Triggers
/// Search for triggers
///  @param version  
///
///  @param accountId The logged in user. 
///
///  @param groupingId Filter results by a grouping identifier defined by the client (optional)
///
///  @param filter A comma separated list of filters. * MINE - Return triggers that the user has created * SHARED - Return triggers that have been shared to the user * FOLLOWER - Return triggers that have been created by the user''s followers (the content needs to have been APPROVED or FEATURED) * FOLLOWING - Return triggers that have been created by people who the user is following (the content needs to have been APPROVED or FEATURED) * PUBLIC - Return all PUBLIC triggers that have been APPROVED or FEATURED * ALL_PUBLIC - Return all PUBLIC triggers regardless of whether they are approved or not (ignores the approval status) * LIKED - Return all triggers that the user has liked * FEATURED - Return all triggers that have been featured * PENDING - Return all pending triggers  (optional, default to @"MINE")
///
///  @param statuses Filter results by status (comma separated list). Values include: NEW, ERROR, COMPLETE, PROCESSING, TEMPLATE (optional, default to @"NEW,ERROR,COMPLETE,PROCESSING")
///
///  @param templateTypes Template Types (optional)
///
///  @param appKey Filter the list by a specific application (optional)
///
///  @param keyword Keyword search on the trigger names. (optional)
///
///  @param sortField The field to sort by. Possible values include: ID, CREATED, UPDATED, ACTIVE, NAME, SCHEDULED_DATE, START_DATE, END_DATE (optional, default to @"CREATED")
///
///  @param descending Determines whether the sorted list is in descending or ascending order (optional, default to @(YES))
///
///  @param start Start the result set at some index. (optional, default to @0)
///
///  @param limit Limit the result to some number. (optional, default to @20)
///
///  @param activeOnly Determines whether to return only active results (optional, default to @(YES))
///
///  @returns NSArray<OAITriggerResponse>*
///
-(NSURLSessionTask*) searchTriggersWithVersion: (NSNumber*) version
    accountId: (NSNumber*) accountId
    groupingId: (NSString*) groupingId
    filter: (NSString*) filter
    statuses: (NSString*) statuses
    templateTypes: (NSString*) templateTypes
    appKey: (NSString*) appKey
    keyword: (NSString*) keyword
    sortField: (NSString*) sortField
    descending: (NSNumber*) descending
    start: (NSNumber*) start
    limit: (NSNumber*) limit
    activeOnly: (NSNumber*) activeOnly
    completionHandler: (void (^)(NSArray<OAITriggerResponse>* output, NSError* error)) handler {
    // verify the required parameter 'version' is set
    if (version == nil) {
        NSParameterAssert(version);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"version"] };
            NSError* error = [NSError errorWithDomain:kOAITriggerApiErrorDomain code:kOAITriggerApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kOAITriggerApiErrorDomain code:kOAITriggerApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/{version}/trigger/search"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (version != nil) {
        pathParams[@"version"] = version;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        queryParams[@"accountId"] = accountId;
    }
    if (groupingId != nil) {
        queryParams[@"groupingId"] = groupingId;
    }
    if (filter != nil) {
        queryParams[@"filter"] = filter;
    }
    if (statuses != nil) {
        queryParams[@"statuses"] = statuses;
    }
    if (templateTypes != nil) {
        queryParams[@"templateTypes"] = templateTypes;
    }
    if (appKey != nil) {
        queryParams[@"appKey"] = appKey;
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
                              responseType: @"NSArray<OAITriggerResponse>*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSArray<OAITriggerResponse>*)data, error);
                                }
                            }];
}

///
/// Update Trigger
/// Update a trigger
///  @param version  
///
///  @param triggerId The trigger to update 
///
///  @param accountId The logged in user 
///
///  @param name The name of the trigger (optional)
///
///  @param appKey The application to target (optional)
///
///  @param groupingId Client defined identifier for grouping triggers (optional)
///
///  @param endpointURL The URL for making an HTTP call (optional)
///
///  @param payload The parameters for making an HTTP call (optional)
///
///  @param scheduledDate The date and time of the next trigger (optional)
///
///  @param startDate The starting date of the trigger (optional)
///
///  @param endDate The ending date of the trigger (optional)
///
///  @param cronExpression The cron expression that represents the trigger's schedule (optional)
///
///  @param conditionalInput Json input representing conditional logic that has to be met before running the trigger (optional)
///
///  @param visibility The determines the scope of who is able to find and view the scheduled notification (PUBLIC - openly available to all Sirqul users, PRIVATE - only available to users that have been invited) (optional)
///
///  @param active Sets whether the Trigger is active or not (inactive Triggers are not processed) (optional)
///
///  @returns OAITriggerResponse*
///
-(NSURLSessionTask*) updateTriggerWithVersion: (NSNumber*) version
    triggerId: (NSNumber*) triggerId
    accountId: (NSNumber*) accountId
    name: (NSString*) name
    appKey: (NSString*) appKey
    groupingId: (NSString*) groupingId
    endpointURL: (NSString*) endpointURL
    payload: (NSString*) payload
    scheduledDate: (NSNumber*) scheduledDate
    startDate: (NSNumber*) startDate
    endDate: (NSNumber*) endDate
    cronExpression: (NSString*) cronExpression
    conditionalInput: (NSString*) conditionalInput
    visibility: (NSString*) visibility
    active: (NSNumber*) active
    completionHandler: (void (^)(OAITriggerResponse* output, NSError* error)) handler {
    // verify the required parameter 'version' is set
    if (version == nil) {
        NSParameterAssert(version);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"version"] };
            NSError* error = [NSError errorWithDomain:kOAITriggerApiErrorDomain code:kOAITriggerApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'triggerId' is set
    if (triggerId == nil) {
        NSParameterAssert(triggerId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"triggerId"] };
            NSError* error = [NSError errorWithDomain:kOAITriggerApiErrorDomain code:kOAITriggerApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kOAITriggerApiErrorDomain code:kOAITriggerApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/{version}/trigger/update"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (version != nil) {
        pathParams[@"version"] = version;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (triggerId != nil) {
        queryParams[@"triggerId"] = triggerId;
    }
    if (accountId != nil) {
        queryParams[@"accountId"] = accountId;
    }
    if (name != nil) {
        queryParams[@"name"] = name;
    }
    if (appKey != nil) {
        queryParams[@"appKey"] = appKey;
    }
    if (groupingId != nil) {
        queryParams[@"groupingId"] = groupingId;
    }
    if (endpointURL != nil) {
        queryParams[@"endpointURL"] = endpointURL;
    }
    if (payload != nil) {
        queryParams[@"payload"] = payload;
    }
    if (scheduledDate != nil) {
        queryParams[@"scheduledDate"] = scheduledDate;
    }
    if (startDate != nil) {
        queryParams[@"startDate"] = startDate;
    }
    if (endDate != nil) {
        queryParams[@"endDate"] = endDate;
    }
    if (cronExpression != nil) {
        queryParams[@"cronExpression"] = cronExpression;
    }
    if (conditionalInput != nil) {
        queryParams[@"conditionalInput"] = conditionalInput;
    }
    if (visibility != nil) {
        queryParams[@"visibility"] = visibility;
    }
    if (active != nil) {
        queryParams[@"active"] = [active isEqual:@(YES)] ? @"true" : @"false";
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
                              responseType: @"OAITriggerResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAITriggerResponse*)data, error);
                                }
                            }];
}



@end
