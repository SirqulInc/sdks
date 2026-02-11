#import "OAINotificationApi.h"
#import "OAIQueryParamCollection.h"
#import "OAIApiClient.h"
#import "OAIBlockedNotificationResponse.h"
#import "OAINotificationMessageListResponse.h"
#import "OAINotificationRecipientResponse.h"
#import "OAINotificationRecipientResponseListResponse.h"
#import "OAINotificationTemplateResponse.h"
#import "OAISirqulResponse.h"


@interface OAINotificationApi ()

@property (nonatomic, strong, readwrite) NSMutableDictionary *mutableDefaultHeaders;

@end

@implementation OAINotificationApi

NSString* kOAINotificationApiErrorDomain = @"OAINotificationApiErrorDomain";
NSInteger kOAINotificationApiMissingParamErrorCode = 234513;

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
/// Create Notification Template
/// Create a notification template. Developers will only be able to create notification templates for their own applications.
///  @param accountId The account ID of the user. 
///
///  @param conduit Filter results by notification type: EMAIL, SMS, PUSH, MOBILE_NOTIFICATION. 
///
///  @param title title of the notification template 
///
///  @param body body of the notification template 
///
///  @param appKey Filter results by application. (optional)
///
///  @param event Filter results by event. (optional)
///
///  @param tags tags associated with the note template (optional)
///
///  @returns OAINotificationTemplateResponse*
///
-(NSURLSessionTask*) createNotificationTemplateWithAccountId: (NSNumber*) accountId
    conduit: (NSString*) conduit
    title: (NSString*) title
    body: (NSString*) body
    appKey: (NSString*) appKey
    event: (NSString*) event
    tags: (NSString*) tags
    completionHandler: (void (^)(OAINotificationTemplateResponse* output, NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kOAINotificationApiErrorDomain code:kOAINotificationApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'conduit' is set
    if (conduit == nil) {
        NSParameterAssert(conduit);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"conduit"] };
            NSError* error = [NSError errorWithDomain:kOAINotificationApiErrorDomain code:kOAINotificationApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'title' is set
    if (title == nil) {
        NSParameterAssert(title);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"title"] };
            NSError* error = [NSError errorWithDomain:kOAINotificationApiErrorDomain code:kOAINotificationApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'body' is set
    if (body == nil) {
        NSParameterAssert(body);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"body"] };
            NSError* error = [NSError errorWithDomain:kOAINotificationApiErrorDomain code:kOAINotificationApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/notification/template/create"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        queryParams[@"accountId"] = accountId;
    }
    if (appKey != nil) {
        queryParams[@"appKey"] = appKey;
    }
    if (event != nil) {
        queryParams[@"event"] = event;
    }
    if (conduit != nil) {
        queryParams[@"conduit"] = conduit;
    }
    if (title != nil) {
        queryParams[@"title"] = title;
    }
    if (body != nil) {
        queryParams[@"body"] = body;
    }
    if (tags != nil) {
        queryParams[@"tags"] = tags;
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
                              responseType: @"OAINotificationTemplateResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAINotificationTemplateResponse*)data, error);
                                }
                            }];
}

///
/// Create or update blocked notification settings
/// Create or update blocked notification settings
///  @param appKey The application key 
///
///  @param data batch data payload (application specific) 
///
///  @param accountId the account id of the user (optional)
///
///  @returns OAIBlockedNotificationResponse*
///
-(NSURLSessionTask*) createOrUpdateBlockedNotificationsWithAppKey: (NSString*) appKey
    data: (NSString*) data
    accountId: (NSNumber*) accountId
    completionHandler: (void (^)(OAIBlockedNotificationResponse* output, NSError* error)) handler {
    // verify the required parameter 'appKey' is set
    if (appKey == nil) {
        NSParameterAssert(appKey);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"appKey"] };
            NSError* error = [NSError errorWithDomain:kOAINotificationApiErrorDomain code:kOAINotificationApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'data' is set
    if (data == nil) {
        NSParameterAssert(data);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"data"] };
            NSError* error = [NSError errorWithDomain:kOAINotificationApiErrorDomain code:kOAINotificationApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/notification/blocked/batch"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        queryParams[@"accountId"] = accountId;
    }
    if (appKey != nil) {
        queryParams[@"appKey"] = appKey;
    }
    if (data != nil) {
        queryParams[@"data"] = data;
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
                              responseType: @"OAIBlockedNotificationResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIBlockedNotificationResponse*)data, error);
                                }
                            }];
}

///
/// Delete Notification Template
/// Deletes a notification template. Developers will only be able to delete notification templates for their own applications.
///  @param accountId the account id of the user 
///
///  @param notificationTemplateId the id of the notification template to delete 
///
///  @returns OAINotificationTemplateResponse*
///
-(NSURLSessionTask*) deleteNotificationTemplateWithAccountId: (NSNumber*) accountId
    notificationTemplateId: (NSNumber*) notificationTemplateId
    completionHandler: (void (^)(OAINotificationTemplateResponse* output, NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kOAINotificationApiErrorDomain code:kOAINotificationApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'notificationTemplateId' is set
    if (notificationTemplateId == nil) {
        NSParameterAssert(notificationTemplateId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"notificationTemplateId"] };
            NSError* error = [NSError errorWithDomain:kOAINotificationApiErrorDomain code:kOAINotificationApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/notification/template/delete"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        queryParams[@"accountId"] = accountId;
    }
    if (notificationTemplateId != nil) {
        queryParams[@"notificationTemplateId"] = notificationTemplateId;
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
                              responseType: @"OAINotificationTemplateResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAINotificationTemplateResponse*)data, error);
                                }
                            }];
}

///
/// Get Notification Template
/// Get the details of a notification template. Developers will only be able to see notification templates for their own applications.
///  @param accountId the id of the account 
///
///  @param notificationTemplateId the id of the notification template to get 
///
///  @returns OAINotificationTemplateResponse*
///
-(NSURLSessionTask*) getNotificationTemplateWithAccountId: (NSNumber*) accountId
    notificationTemplateId: (NSNumber*) notificationTemplateId
    completionHandler: (void (^)(OAINotificationTemplateResponse* output, NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kOAINotificationApiErrorDomain code:kOAINotificationApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'notificationTemplateId' is set
    if (notificationTemplateId == nil) {
        NSParameterAssert(notificationTemplateId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"notificationTemplateId"] };
            NSError* error = [NSError errorWithDomain:kOAINotificationApiErrorDomain code:kOAINotificationApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/notification/template/get"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        queryParams[@"accountId"] = accountId;
    }
    if (notificationTemplateId != nil) {
        queryParams[@"notificationTemplateId"] = notificationTemplateId;
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
                              responseType: @"OAINotificationTemplateResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAINotificationTemplateResponse*)data, error);
                                }
                            }];
}

///
/// Get Notifications
/// Get a list of notifications for a user. If the \"markAsRead\" parameter is set to true, the returned notifications will be marked as \"read\" after the response has been sent. By default, read messages will not be returned, so to see read messages, set \"returnReadMessages\" to true.
///  @param deviceId the unique id of the device making the request (deviceId or accountId required) (optional)
///
///  @param accountId the account id of the user (deviceId or accountId required) (optional)
///
///  @param connectionAccountId the account id used to view another person's notifications (optional)
///
///  @param appKey the application key to filter messages by application (optional)
///
///  @param eventType comma separated list of EVENTS. Filters search results to only include these events. Don't include this parameter or pass in an empty string to return all event types. (optional)
///
///  @param contentIds comma separated list of content ids to search notifications on (optional)
///
///  @param contentTypes comma separated list of content types to search notifications on (optional)
///
///  @param parentIds comma separated list of parent ids to search notifications on (optional)
///
///  @param parentTypes comma separated list of parent types to search notifications on (optional)
///
///  @param actionCategory Action category used to filter notifications (optional)
///
///  @param conduits comma separated list of conduits to search notifications on (optional)
///
///  @param keyword search notifications via keyword (optional)
///
///  @param returnReadMessages if set to true, will return notifications that have been marked as read (optional)
///
///  @param markAsRead if set to true, the returned notifications will be marked as \\\"read\\\" after the response has been sent (optional)
///
///  @param fromDate filter notifications from this date (optional)
///
///  @param latitude latitude used to update the user's current location (optional)
///
///  @param longitude longitude used to update the user's current location (optional)
///
///  @param returnSent whether to include notifications sent by the requester in the response (optional)
///
///  @param ignoreFlagged whether to ignore flagged notifications (optional)
///
///  @param start start of the pagination (optional)
///
///  @param limit limit of the pagination (optional)
///
///  @returns OAINotificationMessageListResponse*
///
-(NSURLSessionTask*) getNotificationsWithDeviceId: (NSString*) deviceId
    accountId: (NSNumber*) accountId
    connectionAccountId: (NSNumber*) connectionAccountId
    appKey: (NSString*) appKey
    eventType: (NSString*) eventType
    contentIds: (NSString*) contentIds
    contentTypes: (NSString*) contentTypes
    parentIds: (NSString*) parentIds
    parentTypes: (NSString*) parentTypes
    actionCategory: (NSString*) actionCategory
    conduits: (NSString*) conduits
    keyword: (NSString*) keyword
    returnReadMessages: (NSNumber*) returnReadMessages
    markAsRead: (NSNumber*) markAsRead
    fromDate: (NSNumber*) fromDate
    latitude: (NSNumber*) latitude
    longitude: (NSNumber*) longitude
    returnSent: (NSNumber*) returnSent
    ignoreFlagged: (NSNumber*) ignoreFlagged
    start: (NSNumber*) start
    limit: (NSNumber*) limit
    completionHandler: (void (^)(OAINotificationMessageListResponse* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/notification/search"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (deviceId != nil) {
        queryParams[@"deviceId"] = deviceId;
    }
    if (accountId != nil) {
        queryParams[@"accountId"] = accountId;
    }
    if (connectionAccountId != nil) {
        queryParams[@"connectionAccountId"] = connectionAccountId;
    }
    if (appKey != nil) {
        queryParams[@"appKey"] = appKey;
    }
    if (eventType != nil) {
        queryParams[@"eventType"] = eventType;
    }
    if (contentIds != nil) {
        queryParams[@"contentIds"] = contentIds;
    }
    if (contentTypes != nil) {
        queryParams[@"contentTypes"] = contentTypes;
    }
    if (parentIds != nil) {
        queryParams[@"parentIds"] = parentIds;
    }
    if (parentTypes != nil) {
        queryParams[@"parentTypes"] = parentTypes;
    }
    if (actionCategory != nil) {
        queryParams[@"actionCategory"] = actionCategory;
    }
    if (conduits != nil) {
        queryParams[@"conduits"] = conduits;
    }
    if (keyword != nil) {
        queryParams[@"keyword"] = keyword;
    }
    if (returnReadMessages != nil) {
        queryParams[@"returnReadMessages"] = [returnReadMessages isEqual:@(YES)] ? @"true" : @"false";
    }
    if (markAsRead != nil) {
        queryParams[@"markAsRead"] = [markAsRead isEqual:@(YES)] ? @"true" : @"false";
    }
    if (fromDate != nil) {
        queryParams[@"fromDate"] = fromDate;
    }
    if (latitude != nil) {
        queryParams[@"latitude"] = latitude;
    }
    if (longitude != nil) {
        queryParams[@"longitude"] = longitude;
    }
    if (returnSent != nil) {
        queryParams[@"returnSent"] = [returnSent isEqual:@(YES)] ? @"true" : @"false";
    }
    if (ignoreFlagged != nil) {
        queryParams[@"ignoreFlagged"] = [ignoreFlagged isEqual:@(YES)] ? @"true" : @"false";
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
                              responseType: @"OAINotificationMessageListResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAINotificationMessageListResponse*)data, error);
                                }
                            }];
}

///
/// Register Notification Token
/// Register a token to send application dependent notifications like Google Cloud Messaging, or Apple Push Notifications.
///  @param token A token that is generated by the device to sign requests for the notification service providers 
///
///  @param pushType The type of push notification. Possible values include: APNS, GCM 
///
///  @param deviceId The unique id of the device making the request (deviceId or accountId required) (optional)
///
///  @param accountId The account id of the user (deviceId or accountId required) (optional)
///
///  @param environment Determines if the token is a DEVELOPMENT or PRODUCTION token (optional)
///
///  @param appKey The application key (optional)
///
///  @param gameType This parameter is deprecated (use appKey instead) (optional)
///
///  @param active Sets whether the token is active or not (non-active tokens are not used) (optional)
///
///  @param latitude Latitude used to update the user's current location (optional)
///
///  @param longitude Longitude used to update the user's current location (optional)
///
///  @returns OAISirqulResponse*
///
-(NSURLSessionTask*) registerNotificationTokenWithToken: (NSString*) token
    pushType: (NSString*) pushType
    deviceId: (NSString*) deviceId
    accountId: (NSNumber*) accountId
    environment: (NSString*) environment
    appKey: (NSString*) appKey
    gameType: (NSString*) gameType
    active: (NSNumber*) active
    latitude: (NSNumber*) latitude
    longitude: (NSNumber*) longitude
    completionHandler: (void (^)(OAISirqulResponse* output, NSError* error)) handler {
    // verify the required parameter 'token' is set
    if (token == nil) {
        NSParameterAssert(token);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"token"] };
            NSError* error = [NSError errorWithDomain:kOAINotificationApiErrorDomain code:kOAINotificationApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'pushType' is set
    if (pushType == nil) {
        NSParameterAssert(pushType);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"pushType"] };
            NSError* error = [NSError errorWithDomain:kOAINotificationApiErrorDomain code:kOAINotificationApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/notification/token"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (deviceId != nil) {
        queryParams[@"deviceId"] = deviceId;
    }
    if (accountId != nil) {
        queryParams[@"accountId"] = accountId;
    }
    if (token != nil) {
        queryParams[@"token"] = token;
    }
    if (pushType != nil) {
        queryParams[@"pushType"] = pushType;
    }
    if (environment != nil) {
        queryParams[@"environment"] = environment;
    }
    if (appKey != nil) {
        queryParams[@"appKey"] = appKey;
    }
    if (gameType != nil) {
        queryParams[@"gameType"] = gameType;
    }
    if (active != nil) {
        queryParams[@"active"] = [active isEqual:@(YES)] ? @"true" : @"false";
    }
    if (latitude != nil) {
        queryParams[@"latitude"] = latitude;
    }
    if (longitude != nil) {
        queryParams[@"longitude"] = longitude;
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
/// Search on the user's blocked notification settings
/// Search on the user's blocked notification settings
///  @param appKey The application key 
///
///  @param accountId the account id of the user (optional)
///
///  @param searchTags search tags to filter results (optional)
///
///  @param events events to filter by (comma separated) (optional)
///
///  @param conduits conduits to filter by (comma separated) (optional)
///
///  @param customTypes custom types to filter by (comma separated) (optional)
///
///  @param contentTypes content types to filter by (comma separated) (optional)
///
///  @param contentIds content ids to filter by (comma separated) (optional)
///
///  @param sortField sort field for results (optional)
///
///  @param descending whether to sort descending (optional)
///
///  @param start start of the pagination (optional)
///
///  @param limit limit of the pagination (optional)
///
///  @returns OAIBlockedNotificationResponse*
///
-(NSURLSessionTask*) searchBlockedNotificationsWithAppKey: (NSString*) appKey
    accountId: (NSNumber*) accountId
    searchTags: (NSString*) searchTags
    events: (NSString*) events
    conduits: (NSString*) conduits
    customTypes: (NSString*) customTypes
    contentTypes: (NSString*) contentTypes
    contentIds: (NSString*) contentIds
    sortField: (NSString*) sortField
    descending: (NSNumber*) descending
    start: (NSNumber*) start
    limit: (NSNumber*) limit
    completionHandler: (void (^)(OAIBlockedNotificationResponse* output, NSError* error)) handler {
    // verify the required parameter 'appKey' is set
    if (appKey == nil) {
        NSParameterAssert(appKey);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"appKey"] };
            NSError* error = [NSError errorWithDomain:kOAINotificationApiErrorDomain code:kOAINotificationApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/notification/blocked/search"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        queryParams[@"accountId"] = accountId;
    }
    if (appKey != nil) {
        queryParams[@"appKey"] = appKey;
    }
    if (searchTags != nil) {
        queryParams[@"searchTags"] = searchTags;
    }
    if (events != nil) {
        queryParams[@"events"] = events;
    }
    if (conduits != nil) {
        queryParams[@"conduits"] = conduits;
    }
    if (customTypes != nil) {
        queryParams[@"customTypes"] = customTypes;
    }
    if (contentTypes != nil) {
        queryParams[@"contentTypes"] = contentTypes;
    }
    if (contentIds != nil) {
        queryParams[@"contentIds"] = contentIds;
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
                              responseType: @"OAIBlockedNotificationResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIBlockedNotificationResponse*)data, error);
                                }
                            }];
}

///
/// Search Notification Templates
/// Search for notification templates on owned applications.
///  @param accountId The account ID of the user. 
///
///  @param sortField Specifies how results are ordered.ID - order results by the notificationTemplateId CREATED - order results by the created date UPDATED - order results by the updated date TITLE - order results by title EVENT - order results by event CONDUIT - order results by conduit APP_NAME - order results by the application name ('global' templates will not have an application and will be returned last if 'descending' is set to false. 
///
///  @param descending Specified whether the results are returned in descending or ascending order. 
///
///  @param start The start of the pagination. 
///
///  @param limit The limit of the pagination. 
///
///  @param appKey Filter results by application. (optional)
///
///  @param event Filter results by event. (optional)
///
///  @param conduit Filter results by notification type: EMAIL, SMS, PUSH, MOBILE_NOTIFICATION. (optional)
///
///  @param globalOnly Returns only templates that have been reserved for system use on all applications (only for admin accounts). (optional)
///
///  @param reservedOnly Returns only templates that use reserved events. (optional)
///
///  @param keyword Filter results by keyword on the title, tags. (optional)
///
///  @returns OAINotificationTemplateResponse*
///
-(NSURLSessionTask*) searchNotificationTemplateWithAccountId: (NSNumber*) accountId
    sortField: (NSString*) sortField
    descending: (NSNumber*) descending
    start: (NSNumber*) start
    limit: (NSNumber*) limit
    appKey: (NSString*) appKey
    event: (NSString*) event
    conduit: (NSString*) conduit
    globalOnly: (NSNumber*) globalOnly
    reservedOnly: (NSNumber*) reservedOnly
    keyword: (NSString*) keyword
    completionHandler: (void (^)(OAINotificationTemplateResponse* output, NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kOAINotificationApiErrorDomain code:kOAINotificationApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'sortField' is set
    if (sortField == nil) {
        NSParameterAssert(sortField);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"sortField"] };
            NSError* error = [NSError errorWithDomain:kOAINotificationApiErrorDomain code:kOAINotificationApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'descending' is set
    if (descending == nil) {
        NSParameterAssert(descending);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"descending"] };
            NSError* error = [NSError errorWithDomain:kOAINotificationApiErrorDomain code:kOAINotificationApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'start' is set
    if (start == nil) {
        NSParameterAssert(start);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"start"] };
            NSError* error = [NSError errorWithDomain:kOAINotificationApiErrorDomain code:kOAINotificationApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'limit' is set
    if (limit == nil) {
        NSParameterAssert(limit);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"limit"] };
            NSError* error = [NSError errorWithDomain:kOAINotificationApiErrorDomain code:kOAINotificationApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/notification/template/search"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        queryParams[@"accountId"] = accountId;
    }
    if (appKey != nil) {
        queryParams[@"appKey"] = appKey;
    }
    if (event != nil) {
        queryParams[@"event"] = event;
    }
    if (conduit != nil) {
        queryParams[@"conduit"] = conduit;
    }
    if (globalOnly != nil) {
        queryParams[@"globalOnly"] = [globalOnly isEqual:@(YES)] ? @"true" : @"false";
    }
    if (reservedOnly != nil) {
        queryParams[@"reservedOnly"] = [reservedOnly isEqual:@(YES)] ? @"true" : @"false";
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
                              responseType: @"OAINotificationTemplateResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAINotificationTemplateResponse*)data, error);
                                }
                            }];
}

///
/// Search for Recipients
/// Search for application users to send notifications.
///  @param sortField The field to sort by. Possible values include: {ACCOUNT_DISPLAY, CREATED, UPDATED, ACTIVE, DELETED, LAST_LOGGED_IN, CONTACT_EMAIL, RETAILER_LOCATION_NAME, RETAILER_NAME, APPLICATION_NAME} 
///
///  @param deviceId the unique id of the device making the request (deviceId or accountId required) (optional)
///
///  @param accountId the account id of the user (deviceId or accountId required) (optional)
///
///  @param appKey filters results by application. If this is empty, will return all recipients for all applications that the user has access to. (optional)
///
///  @param conduit the type of notification to send: EMAIL, SMS, PUSH, MOBILE_NOTIFICATION. (optional)
///
///  @param keyword search by keyword on user's display name and email (optional)
///
///  @param audienceId This parameter is deprecated. filter results by audience (optional)
///
///  @param audienceIds filter results by audiences (comma separated list of audience ids) (optional)
///
///  @param connectionGroupIds filter results by connection groups (comma separated list of connection group ids) (optional)
///
///  @param recipientAccountIds filter results by accounts (comma separated list of account ids) (optional)
///
///  @param descending Determines whether the sorted list is in descending or ascending order (optional)
///
///  @param start start of the pagination (optional)
///
///  @param limit limit of the pagination (hard limit of 1000) (optional)
///
///  @returns NSArray<OAINotificationRecipientResponse>*
///
-(NSURLSessionTask*) searchRecipientsWithSortField: (NSString*) sortField
    deviceId: (NSString*) deviceId
    accountId: (NSNumber*) accountId
    appKey: (NSString*) appKey
    conduit: (NSString*) conduit
    keyword: (NSString*) keyword
    audienceId: (NSNumber*) audienceId
    audienceIds: (NSString*) audienceIds
    connectionGroupIds: (NSString*) connectionGroupIds
    recipientAccountIds: (NSString*) recipientAccountIds
    descending: (NSNumber*) descending
    start: (NSNumber*) start
    limit: (NSNumber*) limit
    completionHandler: (void (^)(NSArray<OAINotificationRecipientResponse>* output, NSError* error)) handler {
    // verify the required parameter 'sortField' is set
    if (sortField == nil) {
        NSParameterAssert(sortField);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"sortField"] };
            NSError* error = [NSError errorWithDomain:kOAINotificationApiErrorDomain code:kOAINotificationApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/notification/recipient/search"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (deviceId != nil) {
        queryParams[@"deviceId"] = deviceId;
    }
    if (accountId != nil) {
        queryParams[@"accountId"] = accountId;
    }
    if (appKey != nil) {
        queryParams[@"appKey"] = appKey;
    }
    if (conduit != nil) {
        queryParams[@"conduit"] = conduit;
    }
    if (keyword != nil) {
        queryParams[@"keyword"] = keyword;
    }
    if (audienceId != nil) {
        queryParams[@"audienceId"] = audienceId;
    }
    if (audienceIds != nil) {
        queryParams[@"audienceIds"] = audienceIds;
    }
    if (connectionGroupIds != nil) {
        queryParams[@"connectionGroupIds"] = connectionGroupIds;
    }
    if (recipientAccountIds != nil) {
        queryParams[@"recipientAccountIds"] = recipientAccountIds;
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
                              responseType: @"NSArray<OAINotificationRecipientResponse>*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSArray<OAINotificationRecipientResponse>*)data, error);
                                }
                            }];
}

///
/// Search for Recipients (Counts/Grouped)
/// Search for application users to send notifications (count/grouped variant).
///  @param deviceId the unique id of the device making the request (deviceId or accountId required) (optional)
///
///  @param accountId the account id of the user (deviceId or accountId required) (optional)
///
///  @param appKey filters results by application. If this is empty, will return all recipients for all applications that the user has access to. (optional)
///
///  @param conduit the type of notification to send: EMAIL, SMS, PUSH, MOBILE_NOTIFICATION. (optional)
///
///  @param keyword search by keyword on user's display name and email (optional)
///
///  @param audienceId This parameter is deprecated. filter results by audience (optional)
///
///  @param audienceIds filter results by audiences (comma separated list of audience ids) (optional)
///
///  @param connectionGroupIds filter results by connection groups (comma separated list of connection group ids) (optional)
///
///  @param sortField The field to sort by (see API docs for allowed values). (optional)
///
///  @param descending Determines whether the sorted list is in descending or ascending order (optional)
///
///  @param start start of the pagination (optional)
///
///  @param limit limit of the pagination (optional)
///
///  @returns OAINotificationRecipientResponseListResponse*
///
-(NSURLSessionTask*) searchRecipientsCountWithDeviceId: (NSString*) deviceId
    accountId: (NSNumber*) accountId
    appKey: (NSString*) appKey
    conduit: (NSString*) conduit
    keyword: (NSString*) keyword
    audienceId: (NSNumber*) audienceId
    audienceIds: (NSString*) audienceIds
    connectionGroupIds: (NSString*) connectionGroupIds
    sortField: (NSString*) sortField
    descending: (NSNumber*) descending
    start: (NSNumber*) start
    limit: (NSNumber*) limit
    completionHandler: (void (^)(OAINotificationRecipientResponseListResponse* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/notification/recipient/search/count"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (deviceId != nil) {
        queryParams[@"deviceId"] = deviceId;
    }
    if (accountId != nil) {
        queryParams[@"accountId"] = accountId;
    }
    if (appKey != nil) {
        queryParams[@"appKey"] = appKey;
    }
    if (conduit != nil) {
        queryParams[@"conduit"] = conduit;
    }
    if (keyword != nil) {
        queryParams[@"keyword"] = keyword;
    }
    if (audienceId != nil) {
        queryParams[@"audienceId"] = audienceId;
    }
    if (audienceIds != nil) {
        queryParams[@"audienceIds"] = audienceIds;
    }
    if (connectionGroupIds != nil) {
        queryParams[@"connectionGroupIds"] = connectionGroupIds;
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
                              responseType: @"OAINotificationRecipientResponseListResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAINotificationRecipientResponseListResponse*)data, error);
                                }
                            }];
}

///
/// Send Batch Notifications
/// Send notifications to all users of an application. Only someone with permissions to the application can do this.
///  @param accountId The account id of the application owner/manager 
///
///  @param appKey The application key for updating an existing application 
///
///  @param customMessage Message string that will be displayed in on the notification 
///
///  @param conduit The type of notification to send: EMAIL, SMS, PUSH, MOBILE_NOTIFICATION. (optional)
///
///  @param contentId Default notification pay-load field (usage is dependent on the app and the type of event) (optional)
///
///  @param contentName Default notification pay-load field (usage is dependent on the app and the type of event) (optional)
///
///  @param contentType Default notification pay-load field (usage is dependent on the app and the type of event) (optional)
///
///  @param parentId Default notification pay-load field (usage is dependent on the app and the type of event) (optional)
///
///  @param parentType Default notification pay-load field (usage is dependent on the app and the type of event) (optional)
///
///  @returns OAISirqulResponse*
///
-(NSURLSessionTask*) sendBatchNotificationsWithAccountId: (NSNumber*) accountId
    appKey: (NSString*) appKey
    customMessage: (NSString*) customMessage
    conduit: (NSString*) conduit
    contentId: (NSNumber*) contentId
    contentName: (NSString*) contentName
    contentType: (NSString*) contentType
    parentId: (NSNumber*) parentId
    parentType: (NSString*) parentType
    completionHandler: (void (^)(OAISirqulResponse* output, NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kOAINotificationApiErrorDomain code:kOAINotificationApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'appKey' is set
    if (appKey == nil) {
        NSParameterAssert(appKey);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"appKey"] };
            NSError* error = [NSError errorWithDomain:kOAINotificationApiErrorDomain code:kOAINotificationApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'customMessage' is set
    if (customMessage == nil) {
        NSParameterAssert(customMessage);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"customMessage"] };
            NSError* error = [NSError errorWithDomain:kOAINotificationApiErrorDomain code:kOAINotificationApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/notification/batch"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        queryParams[@"accountId"] = accountId;
    }
    if (appKey != nil) {
        queryParams[@"appKey"] = appKey;
    }
    if (conduit != nil) {
        queryParams[@"conduit"] = conduit;
    }
    if (customMessage != nil) {
        queryParams[@"customMessage"] = customMessage;
    }
    if (contentId != nil) {
        queryParams[@"contentId"] = contentId;
    }
    if (contentName != nil) {
        queryParams[@"contentName"] = contentName;
    }
    if (contentType != nil) {
        queryParams[@"contentType"] = contentType;
    }
    if (parentId != nil) {
        queryParams[@"parentId"] = parentId;
    }
    if (parentType != nil) {
        queryParams[@"parentType"] = parentType;
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
/// Send Custom Notifications
/// Send your own custom notification to a user. NOTE: the EventType of these notifications will be CUSTOM. Notifications sent to yourself will currently be ignored.
///  @param deviceId the unique id of the device making the request (deviceId or accountId required) (optional)
///
///  @param accountId the account id of the user (deviceId or accountId required) (optional)
///
///  @param receiverAccountIds comma separated list of account IDs that will receive the notification (optional)
///
///  @param includeFriendGroup determines whether to send to all of the user's friends, this flag must be true or receiverAccountIds must not be empty (optional)
///
///  @param appKey the application key (optional)
///
///  @param gameType This parameter is deprecated. (optional)
///
///  @param conduit the type of notification to send: EMAIL, SMS, PUSH, MOBILE_NOTIFICATION. (optional)
///
///  @param contentId default notification pay-load field (usage is dependent on the app and the type of event) (optional)
///
///  @param contentName default notification pay-load field (usage is dependent on the app and the type of event) (optional)
///
///  @param contentType default notification pay-load field (usage is dependent on the app and the type of event) (optional)
///
///  @param parentId default notification pay-load field (usage is dependent on the app and the type of event) (optional)
///
///  @param parentType default notification pay-load field (usage is dependent on the app and the type of event) (optional)
///
///  @param actionCategory  (optional)
///
///  @param subject the subject line of an email #@param customPayload custom json definition of notification pay-load (usage is dependent on the app and the type of event) (optional)
///
///  @param customMessage message string that will be displayed in on the notification (optional)
///
///  @param friendOnlyAPNS only sends APNS to people who are friends of the user (still saves the notification message for feed polling) (optional)
///
///  @param latitude latitude used to update the user's current location (optional)
///
///  @param longitude longitude used to update the user's current location (optional)
///
///  @returns OAISirqulResponse*
///
-(NSURLSessionTask*) sendCustomNotificationsWithDeviceId: (NSString*) deviceId
    accountId: (NSNumber*) accountId
    receiverAccountIds: (NSString*) receiverAccountIds
    includeFriendGroup: (NSNumber*) includeFriendGroup
    appKey: (NSString*) appKey
    gameType: (NSString*) gameType
    conduit: (NSString*) conduit
    contentId: (NSNumber*) contentId
    contentName: (NSString*) contentName
    contentType: (NSString*) contentType
    parentId: (NSNumber*) parentId
    parentType: (NSString*) parentType
    actionCategory: (NSString*) actionCategory
    subject: (NSString*) subject
    customMessage: (NSString*) customMessage
    friendOnlyAPNS: (NSNumber*) friendOnlyAPNS
    latitude: (NSNumber*) latitude
    longitude: (NSNumber*) longitude
    completionHandler: (void (^)(OAISirqulResponse* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/notification/custom"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (deviceId != nil) {
        queryParams[@"deviceId"] = deviceId;
    }
    if (accountId != nil) {
        queryParams[@"accountId"] = accountId;
    }
    if (receiverAccountIds != nil) {
        queryParams[@"receiverAccountIds"] = receiverAccountIds;
    }
    if (includeFriendGroup != nil) {
        queryParams[@"includeFriendGroup"] = [includeFriendGroup isEqual:@(YES)] ? @"true" : @"false";
    }
    if (appKey != nil) {
        queryParams[@"appKey"] = appKey;
    }
    if (gameType != nil) {
        queryParams[@"gameType"] = gameType;
    }
    if (conduit != nil) {
        queryParams[@"conduit"] = conduit;
    }
    if (contentId != nil) {
        queryParams[@"contentId"] = contentId;
    }
    if (contentName != nil) {
        queryParams[@"contentName"] = contentName;
    }
    if (contentType != nil) {
        queryParams[@"contentType"] = contentType;
    }
    if (parentId != nil) {
        queryParams[@"parentId"] = parentId;
    }
    if (parentType != nil) {
        queryParams[@"parentType"] = parentType;
    }
    if (actionCategory != nil) {
        queryParams[@"actionCategory"] = actionCategory;
    }
    if (subject != nil) {
        queryParams[@"subject"] = subject;
    }
    if (customMessage != nil) {
        queryParams[@"customMessage"] = customMessage;
    }
    if (friendOnlyAPNS != nil) {
        queryParams[@"friendOnlyAPNS"] = [friendOnlyAPNS isEqual:@(YES)] ? @"true" : @"false";
    }
    if (latitude != nil) {
        queryParams[@"latitude"] = latitude;
    }
    if (longitude != nil) {
        queryParams[@"longitude"] = longitude;
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
/// Update Notification Template
/// Update a notification template. Developers will only be able to update notification templates for their own applications.
///  @param accountId The account ID of the user. 
///
///  @param notificationTemplateId The notification template ID to update. 
///
///  @param title The title of the message (this would become the subject title for emails). There is a 191 character limit. (optional)
///
///  @param body The body of the message. (optional)
///
///  @param tags The search tags on the template used during search queries. (optional)
///
///  @returns OAINotificationTemplateResponse*
///
-(NSURLSessionTask*) updateNotificationTemplateWithAccountId: (NSNumber*) accountId
    notificationTemplateId: (NSNumber*) notificationTemplateId
    title: (NSString*) title
    body: (NSString*) body
    tags: (NSString*) tags
    completionHandler: (void (^)(OAINotificationTemplateResponse* output, NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kOAINotificationApiErrorDomain code:kOAINotificationApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'notificationTemplateId' is set
    if (notificationTemplateId == nil) {
        NSParameterAssert(notificationTemplateId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"notificationTemplateId"] };
            NSError* error = [NSError errorWithDomain:kOAINotificationApiErrorDomain code:kOAINotificationApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/notification/template/update"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        queryParams[@"accountId"] = accountId;
    }
    if (notificationTemplateId != nil) {
        queryParams[@"notificationTemplateId"] = notificationTemplateId;
    }
    if (title != nil) {
        queryParams[@"title"] = title;
    }
    if (body != nil) {
        queryParams[@"body"] = body;
    }
    if (tags != nil) {
        queryParams[@"tags"] = tags;
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
                              responseType: @"OAINotificationTemplateResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAINotificationTemplateResponse*)data, error);
                                }
                            }];
}



@end
