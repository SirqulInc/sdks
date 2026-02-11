#import "OAIAssignmentApi.h"
#import "OAIQueryParamCollection.h"
#import "OAIApiClient.h"
#import "OAIAccountMiniResponse.h"
#import "OAIAssignmentResponse.h"
#import "OAIAssignmentStatusResponse.h"
#import "OAISirqulResponse.h"


@interface OAIAssignmentApi ()

@property (nonatomic, strong, readwrite) NSMutableDictionary *mutableDefaultHeaders;

@end

@implementation OAIAssignmentApi

NSString* kOAIAssignmentApiErrorDomain = @"OAIAssignmentApiErrorDomain";
NSInteger kOAIAssignmentApiMissingParamErrorCode = 234513;

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
/// Search Assignment Assignees
/// Search for avaiable users for creating or updating assignment.
///  @param accountId The account id sending the request 
///
///  @param keyword The keyword to filter the returned results (optional)
///
///  @returns NSArray<OAIAccountMiniResponse>*
///
-(NSURLSessionTask*) assigmentAssigneeAccountSearchWithAccountId: (NSNumber*) accountId
    keyword: (NSString*) keyword
    completionHandler: (void (^)(NSArray<OAIAccountMiniResponse>* output, NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kOAIAssignmentApiErrorDomain code:kOAIAssignmentApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/assignment/assignee/search"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        queryParams[@"accountId"] = accountId;
    }
    if (keyword != nil) {
        queryParams[@"keyword"] = keyword;
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
                              responseType: @"NSArray<OAIAccountMiniResponse>*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSArray<OAIAccountMiniResponse>*)data, error);
                                }
                            }];
}

///
/// Create Assignment
/// Create an assignment.
///  @param accountId the user account id 
///
///  @param name the name for the assignment 
///
///  @param assigneeAccountId the account id to assign to 
///
///  @param _description the desciprtion for the assignment (optional)
///
///  @param retailerLocationId the retailer location id (optional)
///
///  @param tags the tags (optional)
///
///  @param active determines whether the assignment is active or inactive (optional)
///
///  @returns OAIAssignmentResponse*
///
-(NSURLSessionTask*) assignmentCreateWithAccountId: (NSNumber*) accountId
    name: (NSString*) name
    assigneeAccountId: (NSNumber*) assigneeAccountId
    _description: (NSString*) _description
    retailerLocationId: (NSNumber*) retailerLocationId
    tags: (NSString*) tags
    active: (NSNumber*) active
    completionHandler: (void (^)(OAIAssignmentResponse* output, NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kOAIAssignmentApiErrorDomain code:kOAIAssignmentApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'name' is set
    if (name == nil) {
        NSParameterAssert(name);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"name"] };
            NSError* error = [NSError errorWithDomain:kOAIAssignmentApiErrorDomain code:kOAIAssignmentApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'assigneeAccountId' is set
    if (assigneeAccountId == nil) {
        NSParameterAssert(assigneeAccountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"assigneeAccountId"] };
            NSError* error = [NSError errorWithDomain:kOAIAssignmentApiErrorDomain code:kOAIAssignmentApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/assignment/create"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        queryParams[@"accountId"] = accountId;
    }
    if (name != nil) {
        queryParams[@"name"] = name;
    }
    if (_description != nil) {
        queryParams[@"description"] = _description;
    }
    if (assigneeAccountId != nil) {
        queryParams[@"assigneeAccountId"] = assigneeAccountId;
    }
    if (retailerLocationId != nil) {
        queryParams[@"retailerLocationId"] = retailerLocationId;
    }
    if (tags != nil) {
        queryParams[@"tags"] = tags;
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
                              responseType: @"OAIAssignmentResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIAssignmentResponse*)data, error);
                                }
                            }];
}

///
/// Delete Assignment
/// Delete an assignment.
///  @param accountId the user account id 
///
///  @param assignmentId the assignment id 
///
///  @returns OAISirqulResponse*
///
-(NSURLSessionTask*) assignmentDeleteWithAccountId: (NSNumber*) accountId
    assignmentId: (NSNumber*) assignmentId
    completionHandler: (void (^)(OAISirqulResponse* output, NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kOAIAssignmentApiErrorDomain code:kOAIAssignmentApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'assignmentId' is set
    if (assignmentId == nil) {
        NSParameterAssert(assignmentId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"assignmentId"] };
            NSError* error = [NSError errorWithDomain:kOAIAssignmentApiErrorDomain code:kOAIAssignmentApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/assignment/delete"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        queryParams[@"accountId"] = accountId;
    }
    if (assignmentId != nil) {
        queryParams[@"assignmentId"] = assignmentId;
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
/// Get Assignment
/// Get the details of an assignment.
///  @param accountId the user account id 
///
///  @param assignmentId the assignment id 
///
///  @returns OAIAssignmentResponse*
///
-(NSURLSessionTask*) assignmentGetWithAccountId: (NSNumber*) accountId
    assignmentId: (NSNumber*) assignmentId
    completionHandler: (void (^)(OAIAssignmentResponse* output, NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kOAIAssignmentApiErrorDomain code:kOAIAssignmentApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'assignmentId' is set
    if (assignmentId == nil) {
        NSParameterAssert(assignmentId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"assignmentId"] };
            NSError* error = [NSError errorWithDomain:kOAIAssignmentApiErrorDomain code:kOAIAssignmentApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/assignment/get"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        queryParams[@"accountId"] = accountId;
    }
    if (assignmentId != nil) {
        queryParams[@"assignmentId"] = assignmentId;
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
                              responseType: @"OAIAssignmentResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIAssignmentResponse*)data, error);
                                }
                            }];
}

///
/// Search Assignments
/// Search for assignments by the given parameters.
///  @param accountId the account sending the request 
///
///  @param sortField sort by table field 
///
///  @param descending return results in descending order or not 
///
///  @param activeOnly return active results only or not 
///
///  @param start The record to begin the return set on 
///
///  @param limit The number of records to return 
///
///  @param creatorAccountId the creator of the assignment (optional)
///
///  @param assigneeAccountIds filter results by assignee accounts. If not provided, all assignments that are assigned to accounts that are managed by the requested account will be returned. (optional)
///
///  @param retailerLocationIds filter results by retailer locations (optional)
///
///  @param currentStatusType filter results by assignment status (optional)
///
///  @param keyword filter results by keyword search that matches the assignee, creator, or retailer location name (optional)
///
///  @returns NSArray<OAIAssignmentResponse>*
///
-(NSURLSessionTask*) assignmentSearchWithAccountId: (NSNumber*) accountId
    sortField: (NSString*) sortField
    descending: (NSNumber*) descending
    activeOnly: (NSNumber*) activeOnly
    start: (NSNumber*) start
    limit: (NSNumber*) limit
    creatorAccountId: (NSNumber*) creatorAccountId
    assigneeAccountIds: (NSString*) assigneeAccountIds
    retailerLocationIds: (NSString*) retailerLocationIds
    currentStatusType: (NSString*) currentStatusType
    keyword: (NSString*) keyword
    completionHandler: (void (^)(NSArray<OAIAssignmentResponse>* output, NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kOAIAssignmentApiErrorDomain code:kOAIAssignmentApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'sortField' is set
    if (sortField == nil) {
        NSParameterAssert(sortField);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"sortField"] };
            NSError* error = [NSError errorWithDomain:kOAIAssignmentApiErrorDomain code:kOAIAssignmentApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'descending' is set
    if (descending == nil) {
        NSParameterAssert(descending);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"descending"] };
            NSError* error = [NSError errorWithDomain:kOAIAssignmentApiErrorDomain code:kOAIAssignmentApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'activeOnly' is set
    if (activeOnly == nil) {
        NSParameterAssert(activeOnly);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"activeOnly"] };
            NSError* error = [NSError errorWithDomain:kOAIAssignmentApiErrorDomain code:kOAIAssignmentApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'start' is set
    if (start == nil) {
        NSParameterAssert(start);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"start"] };
            NSError* error = [NSError errorWithDomain:kOAIAssignmentApiErrorDomain code:kOAIAssignmentApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'limit' is set
    if (limit == nil) {
        NSParameterAssert(limit);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"limit"] };
            NSError* error = [NSError errorWithDomain:kOAIAssignmentApiErrorDomain code:kOAIAssignmentApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/assignment/search"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        queryParams[@"accountId"] = accountId;
    }
    if (creatorAccountId != nil) {
        queryParams[@"creatorAccountId"] = creatorAccountId;
    }
    if (assigneeAccountIds != nil) {
        queryParams[@"assigneeAccountIds"] = assigneeAccountIds;
    }
    if (retailerLocationIds != nil) {
        queryParams[@"retailerLocationIds"] = retailerLocationIds;
    }
    if (currentStatusType != nil) {
        queryParams[@"currentStatusType"] = currentStatusType;
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
    if (activeOnly != nil) {
        queryParams[@"activeOnly"] = [activeOnly isEqual:@(YES)] ? @"true" : @"false";
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
                              responseType: @"NSArray<OAIAssignmentResponse>*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSArray<OAIAssignmentResponse>*)data, error);
                                }
                            }];
}

///
/// Create Assignment Status
/// Create an assignment status.
///  @param accountId the user account id 
///
///  @param assignmentId the assignment id 
///
///  @param scheduledNotificationId the scheduled notification id for reminders (optional)
///
///  @param toDo the type of to do. Possible values include: SITE_VISIT, PHONE, RECONTACT, RENEWAL, CREDIT (optional)
///
///  @param connection the connection type. Possible values include: INITIAL, FOLLOW_UP, DECLINED (optional)
///
///  @param method the communication method type. Possible values include: PHONE, SITE_VISIT, EMAIL (optional)
///
///  @param status the status type. Possible values include: ARCHIVED, SUBSCRIBED, UNSUBSCRIBED, CONTACTED, DECLINED, NOT_CONTACTED (optional)
///
///  @param closure the closure type. Possible values include: PHONE, SITE_VISIT, PHONE_SITE, WEB (optional)
///
///  @param message the message from the assignee (optional)
///
///  @param followUp the date to follow up by (optional)
///
///  @param active determines whether the assignment status is active or inactive (optional)
///
///  @returns OAIAssignmentStatusResponse*
///
-(NSURLSessionTask*) assignmentStatusCreateWithAccountId: (NSNumber*) accountId
    assignmentId: (NSNumber*) assignmentId
    scheduledNotificationId: (NSNumber*) scheduledNotificationId
    toDo: (NSString*) toDo
    connection: (NSString*) connection
    method: (NSString*) method
    status: (NSString*) status
    closure: (NSString*) closure
    message: (NSString*) message
    followUp: (NSNumber*) followUp
    active: (NSNumber*) active
    completionHandler: (void (^)(OAIAssignmentStatusResponse* output, NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kOAIAssignmentApiErrorDomain code:kOAIAssignmentApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'assignmentId' is set
    if (assignmentId == nil) {
        NSParameterAssert(assignmentId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"assignmentId"] };
            NSError* error = [NSError errorWithDomain:kOAIAssignmentApiErrorDomain code:kOAIAssignmentApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/assignment/status/create"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        queryParams[@"accountId"] = accountId;
    }
    if (assignmentId != nil) {
        queryParams[@"assignmentId"] = assignmentId;
    }
    if (scheduledNotificationId != nil) {
        queryParams[@"scheduledNotificationId"] = scheduledNotificationId;
    }
    if (toDo != nil) {
        queryParams[@"toDo"] = toDo;
    }
    if (connection != nil) {
        queryParams[@"connection"] = connection;
    }
    if (method != nil) {
        queryParams[@"method"] = method;
    }
    if (status != nil) {
        queryParams[@"status"] = status;
    }
    if (closure != nil) {
        queryParams[@"closure"] = closure;
    }
    if (message != nil) {
        queryParams[@"message"] = message;
    }
    if (followUp != nil) {
        queryParams[@"followUp"] = followUp;
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
                              responseType: @"OAIAssignmentStatusResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIAssignmentStatusResponse*)data, error);
                                }
                            }];
}

///
/// Deletes Assignment Status
/// Deletes an assignment status.
///  @param accountId the user account id 
///
///  @param assignmentStatusId the assignment status id 
///
///  @returns OAISirqulResponse*
///
-(NSURLSessionTask*) assignmentStatusDeleteWithAccountId: (NSNumber*) accountId
    assignmentStatusId: (NSNumber*) assignmentStatusId
    completionHandler: (void (^)(OAISirqulResponse* output, NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kOAIAssignmentApiErrorDomain code:kOAIAssignmentApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'assignmentStatusId' is set
    if (assignmentStatusId == nil) {
        NSParameterAssert(assignmentStatusId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"assignmentStatusId"] };
            NSError* error = [NSError errorWithDomain:kOAIAssignmentApiErrorDomain code:kOAIAssignmentApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/assignment/status/delete"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        queryParams[@"accountId"] = accountId;
    }
    if (assignmentStatusId != nil) {
        queryParams[@"assignmentStatusId"] = assignmentStatusId;
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
/// Get Assignment Status
/// Get an assignment status.
///  @param accountId the user account id 
///
///  @param assignmentStatusId the assignment status id 
///
///  @returns OAIAssignmentStatusResponse*
///
-(NSURLSessionTask*) assignmentStatusGetWithAccountId: (NSNumber*) accountId
    assignmentStatusId: (NSNumber*) assignmentStatusId
    completionHandler: (void (^)(OAIAssignmentStatusResponse* output, NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kOAIAssignmentApiErrorDomain code:kOAIAssignmentApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'assignmentStatusId' is set
    if (assignmentStatusId == nil) {
        NSParameterAssert(assignmentStatusId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"assignmentStatusId"] };
            NSError* error = [NSError errorWithDomain:kOAIAssignmentApiErrorDomain code:kOAIAssignmentApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/assignment/status/get"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        queryParams[@"accountId"] = accountId;
    }
    if (assignmentStatusId != nil) {
        queryParams[@"assignmentStatusId"] = assignmentStatusId;
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
                              responseType: @"OAIAssignmentStatusResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIAssignmentStatusResponse*)data, error);
                                }
                            }];
}

///
/// Search Assignment Statuses
/// Search on assignment statuses.
///  @param accountId the user account id 
///
///  @param sortField the field to sort by. Possible values include: ID, CREATED, UPDATED, DELETED, SEARCH_TAGS, ACTIVE, CURRENT_STATUS, TODO, CONNECTION, METHOD, STATUS, CLOSURE, MESSAGE, FOLLOW_UP 
///
///  @param descending determines whether the sorted list is in descending or ascending order 
///
///  @param activeOnly determines whether to only return active results 
///
///  @param start the start index for pagination 
///
///  @param limit the limit for pagination 
///
///  @param assignmentId the assignment id (optional)
///
///  @param creatorAccountId filter results by the account who created the status (optional)
///
///  @param assigneeAccountId filter results by the assignee account (optional)
///
///  @param retailerLocationId filter results by by retailer location (optional)
///
///  @param statusType filter results by the status type (optional)
///
///  @param keyword filter results by keyword search (optional)
///
///  @returns NSArray<OAIAssignmentStatusResponse>*
///
-(NSURLSessionTask*) assignmentStatusSearchWithAccountId: (NSNumber*) accountId
    sortField: (NSString*) sortField
    descending: (NSNumber*) descending
    activeOnly: (NSNumber*) activeOnly
    start: (NSNumber*) start
    limit: (NSNumber*) limit
    assignmentId: (NSNumber*) assignmentId
    creatorAccountId: (NSNumber*) creatorAccountId
    assigneeAccountId: (NSNumber*) assigneeAccountId
    retailerLocationId: (NSNumber*) retailerLocationId
    statusType: (NSString*) statusType
    keyword: (NSString*) keyword
    completionHandler: (void (^)(NSArray<OAIAssignmentStatusResponse>* output, NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kOAIAssignmentApiErrorDomain code:kOAIAssignmentApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'sortField' is set
    if (sortField == nil) {
        NSParameterAssert(sortField);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"sortField"] };
            NSError* error = [NSError errorWithDomain:kOAIAssignmentApiErrorDomain code:kOAIAssignmentApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'descending' is set
    if (descending == nil) {
        NSParameterAssert(descending);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"descending"] };
            NSError* error = [NSError errorWithDomain:kOAIAssignmentApiErrorDomain code:kOAIAssignmentApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'activeOnly' is set
    if (activeOnly == nil) {
        NSParameterAssert(activeOnly);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"activeOnly"] };
            NSError* error = [NSError errorWithDomain:kOAIAssignmentApiErrorDomain code:kOAIAssignmentApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'start' is set
    if (start == nil) {
        NSParameterAssert(start);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"start"] };
            NSError* error = [NSError errorWithDomain:kOAIAssignmentApiErrorDomain code:kOAIAssignmentApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'limit' is set
    if (limit == nil) {
        NSParameterAssert(limit);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"limit"] };
            NSError* error = [NSError errorWithDomain:kOAIAssignmentApiErrorDomain code:kOAIAssignmentApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/assignment/status/search"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        queryParams[@"accountId"] = accountId;
    }
    if (assignmentId != nil) {
        queryParams[@"assignmentId"] = assignmentId;
    }
    if (creatorAccountId != nil) {
        queryParams[@"creatorAccountId"] = creatorAccountId;
    }
    if (assigneeAccountId != nil) {
        queryParams[@"assigneeAccountId"] = assigneeAccountId;
    }
    if (retailerLocationId != nil) {
        queryParams[@"retailerLocationId"] = retailerLocationId;
    }
    if (statusType != nil) {
        queryParams[@"statusType"] = statusType;
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
    if (activeOnly != nil) {
        queryParams[@"activeOnly"] = [activeOnly isEqual:@(YES)] ? @"true" : @"false";
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
                              responseType: @"NSArray<OAIAssignmentStatusResponse>*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSArray<OAIAssignmentStatusResponse>*)data, error);
                                }
                            }];
}

///
/// Update Assignment Status
/// Updates an assignment status.
///  @param accountId the user account id 
///
///  @param assignmentStatusId the assignment status id 
///
///  @param scheduledNotificationId the scheduled notification id for reminders (optional)
///
///  @param toDo the type of to do. Possible values include: SITE_VISIT, PHONE, RECONTACT, RENEWAL, CREDIT (optional)
///
///  @param connection the connection type. Possible values include: INITIAL, FOLLOW_UP, DECLINED (optional)
///
///  @param method the communication method type. Possible values include: PHONE, SITE_VISIT, EMAIL (optional)
///
///  @param status the status type. Possible values include: ARCHIVED, SUBSCRIBED, UNSUBSCRIBED, CONTACTED, DECLINED, NOT_CONTACTED (optional)
///
///  @param closure the closure type. Possible values include: PHONE, SITE_VISIT, PHONE_SITE, WEB (optional)
///
///  @param message the message from the assignee (optional)
///
///  @param followUp the date to follow up by (optional)
///
///  @param active determines whether the assignment status is active or inactive (optional)
///
///  @returns OAIAssignmentStatusResponse*
///
-(NSURLSessionTask*) assignmentStatusUpdateWithAccountId: (NSNumber*) accountId
    assignmentStatusId: (NSNumber*) assignmentStatusId
    scheduledNotificationId: (NSNumber*) scheduledNotificationId
    toDo: (NSString*) toDo
    connection: (NSString*) connection
    method: (NSString*) method
    status: (NSString*) status
    closure: (NSString*) closure
    message: (NSString*) message
    followUp: (NSNumber*) followUp
    active: (NSNumber*) active
    completionHandler: (void (^)(OAIAssignmentStatusResponse* output, NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kOAIAssignmentApiErrorDomain code:kOAIAssignmentApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'assignmentStatusId' is set
    if (assignmentStatusId == nil) {
        NSParameterAssert(assignmentStatusId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"assignmentStatusId"] };
            NSError* error = [NSError errorWithDomain:kOAIAssignmentApiErrorDomain code:kOAIAssignmentApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/assignment/status/update"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        queryParams[@"accountId"] = accountId;
    }
    if (assignmentStatusId != nil) {
        queryParams[@"assignmentStatusId"] = assignmentStatusId;
    }
    if (scheduledNotificationId != nil) {
        queryParams[@"scheduledNotificationId"] = scheduledNotificationId;
    }
    if (toDo != nil) {
        queryParams[@"toDo"] = toDo;
    }
    if (connection != nil) {
        queryParams[@"connection"] = connection;
    }
    if (method != nil) {
        queryParams[@"method"] = method;
    }
    if (status != nil) {
        queryParams[@"status"] = status;
    }
    if (closure != nil) {
        queryParams[@"closure"] = closure;
    }
    if (message != nil) {
        queryParams[@"message"] = message;
    }
    if (followUp != nil) {
        queryParams[@"followUp"] = followUp;
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
                              responseType: @"OAIAssignmentStatusResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIAssignmentStatusResponse*)data, error);
                                }
                            }];
}

///
/// Update Assignment
/// Updates an assignment.
///  @param accountId the user account id 
///
///  @param assignmentId the assignment id 
///
///  @param name the name of the assignment (optional)
///
///  @param _description the description of the assignment (optional)
///
///  @param assigneeAccountId the account id to assign to (optional)
///
///  @param retailerLocationId the retailer location id (optional)
///
///  @param tags the tags (optional)
///
///  @param active determines whether the assignment is active or inactive (optional)
///
///  @returns OAIAssignmentResponse*
///
-(NSURLSessionTask*) assignmentUpdateWithAccountId: (NSNumber*) accountId
    assignmentId: (NSNumber*) assignmentId
    name: (NSString*) name
    _description: (NSString*) _description
    assigneeAccountId: (NSNumber*) assigneeAccountId
    retailerLocationId: (NSNumber*) retailerLocationId
    tags: (NSString*) tags
    active: (NSNumber*) active
    completionHandler: (void (^)(OAIAssignmentResponse* output, NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kOAIAssignmentApiErrorDomain code:kOAIAssignmentApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'assignmentId' is set
    if (assignmentId == nil) {
        NSParameterAssert(assignmentId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"assignmentId"] };
            NSError* error = [NSError errorWithDomain:kOAIAssignmentApiErrorDomain code:kOAIAssignmentApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/assignment/update"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        queryParams[@"accountId"] = accountId;
    }
    if (assignmentId != nil) {
        queryParams[@"assignmentId"] = assignmentId;
    }
    if (name != nil) {
        queryParams[@"name"] = name;
    }
    if (_description != nil) {
        queryParams[@"description"] = _description;
    }
    if (assigneeAccountId != nil) {
        queryParams[@"assigneeAccountId"] = assigneeAccountId;
    }
    if (retailerLocationId != nil) {
        queryParams[@"retailerLocationId"] = retailerLocationId;
    }
    if (tags != nil) {
        queryParams[@"tags"] = tags;
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
                              responseType: @"OAIAssignmentResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIAssignmentResponse*)data, error);
                                }
                            }];
}



@end
