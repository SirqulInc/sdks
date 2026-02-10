#import "OAIScheduledNotificationApi.h"
#import "OAIQueryParamCollection.h"
#import "OAIApiClient.h"
#import "OAIScheduledNotificationFullResponse.h"
#import "OAISirqulResponse.h"


@interface OAIScheduledNotificationApi ()

@property (nonatomic, strong, readwrite) NSMutableDictionary *mutableDefaultHeaders;

@end

@implementation OAIScheduledNotificationApi

NSString* kOAIScheduledNotificationApiErrorDomain = @"OAIScheduledNotificationApiErrorDomain";
NSInteger kOAIScheduledNotificationApiMissingParamErrorCode = 234513;

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
/// Create Scheduled Notification
/// This endpoint creates a Scheduled Notification message that can be configured to process and send periodically at set time periods
///  @param version  
///
///  @param accountId The logged in user. 
///
///  @param name The name of the scheduled notification 
///
///  @param type The type of scheduled notification. Supported values include: MOBILE_NOTIFICATION - sends push notifications via APNS and GCM EMAIL - sends email messages SMS - sends text messages 
///
///  @param message The message to send 
///
///  @param contentId The payload content ID that gets sent along with the message. For push notification, this could be used in client apps to know what the message is referring to and open up the related view. (optional)
///
///  @param contentName The payload content name that gets sent along with the message. For push notification, this could be used in client apps to know what the message is referring to and open up the related view. (optional)
///
///  @param contentType The payload content type that gets sent along with the message. For push notification, this could be used in client apps to know what the message is referring to and open up the related view. (optional)
///
///  @param parentId The payload parent ID that gets sent along with the message. For push notification, this could be used in client apps to know what the message is referring to and open up the related view. (optional)
///
///  @param parentType The payload parent type that gets sent along with the message. For push notification, this could be used in client apps to know what the message is referring to and open up the related view. (optional)
///
///  @param appKey The application that the notifications will send to. If connectionGroupIds, connectionAccountIds, and audienceIds is not set, this will send to all users who have used the application. This parameter is also required when sending push notifications via the MOBILE_NOTIFICATION type. (optional)
///
///  @param groupingId Client defined identifier for grouping multiple scheduled notifications. This can be used with the search endpoint to return scheduled notifications with the same groupingId for display purposes. Only results that have been created by the user will be returned when using this feature. (optional)
///
///  @param connectionGroupIds The connection groups to use to generate the list of recipients (comma separated list of connection group IDs) (optional)
///
///  @param connectionAccountIds The connection accounts to use to generate the list of recipients (comma separated list of user account ids) (optional)
///
///  @param audienceId This parameter is deprecated. The audience used to generate the list of recipients (optional)
///
///  @param audienceIds The audiences used to generate the list of recipients (comma separated list of audience IDs) (optional)
///
///  @param albumIds The album ids to associate with the scheduled notification (comma separated list of album IDs) (optional)
///
///  @param reportId The report used to generate the the list of recipients (optional)
///
///  @param reportParams The parameters to supply to the report used to generate the the list of recipients (optional)
///
///  @param endpointURL The URL for making an HTTP call (optional)
///
///  @param payload The parameters for making an HTTP call (optional)
///
///  @param scheduledDate The next time when the scheduled notification should begin processing (time in milliseconds). If this is left empty, then the startDate will be used. (optional)
///
///  @param startDate The start time when the scheduled notification should be available to process (time in milliseconds). If this is left empty, then it will be assumed to be available now. (optional)
///
///  @param endDate The end time when the scheduled notification should be available to process (time in milliseconds). If this is left empty, then it will be assumed to not have an expiration date. (optional)
///
///  @param cronExpression The cron expression that represents the processing schedule. This uses the unix cron expression format. For example: 0 0 * * * will run once a day at midnight UTC. (optional)
///
///  @param cronType The cron expression type: UNIX, CRON4J, QUARTZ (optional)
///
///  @param metaData Additional metadata for the scheduled notification (optional)
///
///  @param conditionalInput Json input representing conditional logic that has to be met before running the scheduled notification (optional)
///
///  @param templateType This determines if the Scheduled Notification is a template which is used as a basis for dynamically generating re-occurring Scheduled Notifications. The available types include: REPORTING - saves an adhoc report to be able to run again at another time GEOFENCE_OWNER - template for sending notifications to the geofence/audience owner (i.e. the business owner) GEOFENCE_OWNER - template for sending notifications to the geofence/audience owner (i.e. the business employee, retailer location, etc) GEOFENCE_TRIGGER - template for sending notifications to the account that triggered the geofence/audience (i.e. the customer) GEOFENCE_HTTP_CALL - template for making http calls when the geofences are triggered (optional)
///
///  @param visibility Determines the scope of who is able to find and view the scheduled notification (PUBLIC - openly available to all Sirqul users, PRIVATE - only available to users that have been invited) (optional)
///
///  @param active Sets whether the Scheduled Notification is active or not (inactive Scheduled Notifications are not processed). This is a quick way to toggle on or off without altering its schedule. The default value is 'true'. (optional)
///
///  @param sendNow  (optional)
///
///  @param eventType Sets the event type for the notification (optional, default to @"CUSTOM")
///
///  @param deepLinkURI The payload deep link URI that can be used by the client app to direct users to a screen in the app (optional)
///
///  @param sendToAll Determines whether to send to all users of the app if set to true for push notifications (appKey is required) (optional)
///
///  @returns OAIScheduledNotificationFullResponse*
///
-(NSURLSessionTask*) createScheduledNotificationWithVersion: (NSNumber*) version
    accountId: (NSNumber*) accountId
    name: (NSString*) name
    type: (NSString*) type
    message: (NSString*) message
    contentId: (NSNumber*) contentId
    contentName: (NSString*) contentName
    contentType: (NSString*) contentType
    parentId: (NSNumber*) parentId
    parentType: (NSString*) parentType
    appKey: (NSString*) appKey
    groupingId: (NSString*) groupingId
    connectionGroupIds: (NSString*) connectionGroupIds
    connectionAccountIds: (NSString*) connectionAccountIds
    audienceId: (NSNumber*) audienceId
    audienceIds: (NSString*) audienceIds
    albumIds: (NSString*) albumIds
    reportId: (NSNumber*) reportId
    reportParams: (NSString*) reportParams
    endpointURL: (NSString*) endpointURL
    payload: (NSString*) payload
    scheduledDate: (NSNumber*) scheduledDate
    startDate: (NSNumber*) startDate
    endDate: (NSNumber*) endDate
    cronExpression: (NSString*) cronExpression
    cronType: (NSString*) cronType
    metaData: (NSString*) metaData
    conditionalInput: (NSString*) conditionalInput
    templateType: (NSString*) templateType
    visibility: (NSString*) visibility
    active: (NSNumber*) active
    sendNow: (NSNumber*) sendNow
    eventType: (NSString*) eventType
    deepLinkURI: (NSString*) deepLinkURI
    sendToAll: (NSNumber*) sendToAll
    completionHandler: (void (^)(OAIScheduledNotificationFullResponse* output, NSError* error)) handler {
    // verify the required parameter 'version' is set
    if (version == nil) {
        NSParameterAssert(version);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"version"] };
            NSError* error = [NSError errorWithDomain:kOAIScheduledNotificationApiErrorDomain code:kOAIScheduledNotificationApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kOAIScheduledNotificationApiErrorDomain code:kOAIScheduledNotificationApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'name' is set
    if (name == nil) {
        NSParameterAssert(name);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"name"] };
            NSError* error = [NSError errorWithDomain:kOAIScheduledNotificationApiErrorDomain code:kOAIScheduledNotificationApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'type' is set
    if (type == nil) {
        NSParameterAssert(type);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"type"] };
            NSError* error = [NSError errorWithDomain:kOAIScheduledNotificationApiErrorDomain code:kOAIScheduledNotificationApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'message' is set
    if (message == nil) {
        NSParameterAssert(message);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"message"] };
            NSError* error = [NSError errorWithDomain:kOAIScheduledNotificationApiErrorDomain code:kOAIScheduledNotificationApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/{version}/notification/schedule/create"];

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
    if (type != nil) {
        queryParams[@"type"] = type;
    }
    if (message != nil) {
        queryParams[@"message"] = message;
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
    if (appKey != nil) {
        queryParams[@"appKey"] = appKey;
    }
    if (groupingId != nil) {
        queryParams[@"groupingId"] = groupingId;
    }
    if (connectionGroupIds != nil) {
        queryParams[@"connectionGroupIds"] = connectionGroupIds;
    }
    if (connectionAccountIds != nil) {
        queryParams[@"connectionAccountIds"] = connectionAccountIds;
    }
    if (audienceId != nil) {
        queryParams[@"audienceId"] = audienceId;
    }
    if (audienceIds != nil) {
        queryParams[@"audienceIds"] = audienceIds;
    }
    if (albumIds != nil) {
        queryParams[@"albumIds"] = albumIds;
    }
    if (reportId != nil) {
        queryParams[@"reportId"] = reportId;
    }
    if (reportParams != nil) {
        queryParams[@"reportParams"] = reportParams;
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
    if (cronType != nil) {
        queryParams[@"cronType"] = cronType;
    }
    if (metaData != nil) {
        queryParams[@"metaData"] = metaData;
    }
    if (conditionalInput != nil) {
        queryParams[@"conditionalInput"] = conditionalInput;
    }
    if (templateType != nil) {
        queryParams[@"templateType"] = templateType;
    }
    if (visibility != nil) {
        queryParams[@"visibility"] = visibility;
    }
    if (active != nil) {
        queryParams[@"active"] = [active isEqual:@(YES)] ? @"true" : @"false";
    }
    if (sendNow != nil) {
        queryParams[@"sendNow"] = [sendNow isEqual:@(YES)] ? @"true" : @"false";
    }
    if (eventType != nil) {
        queryParams[@"eventType"] = eventType;
    }
    if (deepLinkURI != nil) {
        queryParams[@"deepLinkURI"] = deepLinkURI;
    }
    if (sendToAll != nil) {
        queryParams[@"sendToAll"] = [sendToAll isEqual:@(YES)] ? @"true" : @"false";
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
                              responseType: @"OAIScheduledNotificationFullResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIScheduledNotificationFullResponse*)data, error);
                                }
                            }];
}

///
/// Delete Scheduled Notification
/// This endpoint deletes a Scheduled Notification. Only the original owner of the Scheduled Notification or someone with write permissions can use this endpoint. Permissions can be granted to other users by using the UserPermissionsApi.
///  @param version  
///
///  @param accountId the id of the logged in user 
///
///  @param scheduledNotificationId the id of the scheduled notification to delete 
///
///  @param deleteByGroupingId If set to true, also deletes Scheduled Notifications under the same account with the same groupingId. (optional)
///
///  @returns OAIScheduledNotificationFullResponse*
///
-(NSURLSessionTask*) deleteScheduledNotificationWithVersion: (NSNumber*) version
    accountId: (NSNumber*) accountId
    scheduledNotificationId: (NSNumber*) scheduledNotificationId
    deleteByGroupingId: (NSNumber*) deleteByGroupingId
    completionHandler: (void (^)(OAIScheduledNotificationFullResponse* output, NSError* error)) handler {
    // verify the required parameter 'version' is set
    if (version == nil) {
        NSParameterAssert(version);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"version"] };
            NSError* error = [NSError errorWithDomain:kOAIScheduledNotificationApiErrorDomain code:kOAIScheduledNotificationApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kOAIScheduledNotificationApiErrorDomain code:kOAIScheduledNotificationApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'scheduledNotificationId' is set
    if (scheduledNotificationId == nil) {
        NSParameterAssert(scheduledNotificationId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"scheduledNotificationId"] };
            NSError* error = [NSError errorWithDomain:kOAIScheduledNotificationApiErrorDomain code:kOAIScheduledNotificationApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/{version}/notification/schedule/delete"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (version != nil) {
        pathParams[@"version"] = version;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        queryParams[@"accountId"] = accountId;
    }
    if (scheduledNotificationId != nil) {
        queryParams[@"scheduledNotificationId"] = scheduledNotificationId;
    }
    if (deleteByGroupingId != nil) {
        queryParams[@"deleteByGroupingId"] = [deleteByGroupingId isEqual:@(YES)] ? @"true" : @"false";
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
                              responseType: @"OAIScheduledNotificationFullResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIScheduledNotificationFullResponse*)data, error);
                                }
                            }];
}

///
/// Get Scheduled Notification
/// Get a ScheduledNotification
///  @param version  
///
///  @param accountId the id of the account logged in 
///
///  @param scheduledNotificationId the id of the scheduled notification to get 
///
///  @returns OAIScheduledNotificationFullResponse*
///
-(NSURLSessionTask*) getScheduledNotificationWithVersion: (NSNumber*) version
    accountId: (NSNumber*) accountId
    scheduledNotificationId: (NSNumber*) scheduledNotificationId
    completionHandler: (void (^)(OAIScheduledNotificationFullResponse* output, NSError* error)) handler {
    // verify the required parameter 'version' is set
    if (version == nil) {
        NSParameterAssert(version);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"version"] };
            NSError* error = [NSError errorWithDomain:kOAIScheduledNotificationApiErrorDomain code:kOAIScheduledNotificationApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kOAIScheduledNotificationApiErrorDomain code:kOAIScheduledNotificationApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'scheduledNotificationId' is set
    if (scheduledNotificationId == nil) {
        NSParameterAssert(scheduledNotificationId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"scheduledNotificationId"] };
            NSError* error = [NSError errorWithDomain:kOAIScheduledNotificationApiErrorDomain code:kOAIScheduledNotificationApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/{version}/notification/schedule/get"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (version != nil) {
        pathParams[@"version"] = version;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        queryParams[@"accountId"] = accountId;
    }
    if (scheduledNotificationId != nil) {
        queryParams[@"scheduledNotificationId"] = scheduledNotificationId;
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
                              responseType: @"OAIScheduledNotificationFullResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIScheduledNotificationFullResponse*)data, error);
                                }
                            }];
}

///
/// Generate Schedule Notifications
/// Use a report to identify events that are starting soon and then create a scheduled notification to push a message to matching users.
///  @param version  
///
///  @param accountId The logged in user. 
///
///  @param appKey The application to target 
///
///  @param reportName The name of the report used to identify events. The report must return columns named: id, name, date, params, and type otherwise it will fail 
///
///  @param message The message to be sent to the recipients. If you set %name% the report row name value will be swapped in. If you set %time% or %date% the report row start date/time value will be swapped in 
///
///  @param offset Time in munites before the event starts to notify recipients 
///
///  @param recipientReportId The report id used to generate the recipient list 
///
///  @param reportParams The parameters of the report used to identify events in a json structure, example: ```json {   \"string\": \"value\",   \"number\": 3.345,   \"date\": \"2014-05-01 00:00:00\" } ```  (optional)
///
///  @param type The type of scheduled notification; supported values are: MOBILE_NOTIFICATION (optional)
///
///  @returns OAISirqulResponse*
///
-(NSURLSessionTask*) scheduleNotificationListingsWithVersion: (NSNumber*) version
    accountId: (NSNumber*) accountId
    appKey: (NSString*) appKey
    reportName: (NSString*) reportName
    message: (NSString*) message
    offset: (NSNumber*) offset
    recipientReportId: (NSNumber*) recipientReportId
    reportParams: (NSString*) reportParams
    type: (NSString*) type
    completionHandler: (void (^)(OAISirqulResponse* output, NSError* error)) handler {
    // verify the required parameter 'version' is set
    if (version == nil) {
        NSParameterAssert(version);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"version"] };
            NSError* error = [NSError errorWithDomain:kOAIScheduledNotificationApiErrorDomain code:kOAIScheduledNotificationApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kOAIScheduledNotificationApiErrorDomain code:kOAIScheduledNotificationApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'appKey' is set
    if (appKey == nil) {
        NSParameterAssert(appKey);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"appKey"] };
            NSError* error = [NSError errorWithDomain:kOAIScheduledNotificationApiErrorDomain code:kOAIScheduledNotificationApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'reportName' is set
    if (reportName == nil) {
        NSParameterAssert(reportName);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"reportName"] };
            NSError* error = [NSError errorWithDomain:kOAIScheduledNotificationApiErrorDomain code:kOAIScheduledNotificationApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'message' is set
    if (message == nil) {
        NSParameterAssert(message);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"message"] };
            NSError* error = [NSError errorWithDomain:kOAIScheduledNotificationApiErrorDomain code:kOAIScheduledNotificationApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'offset' is set
    if (offset == nil) {
        NSParameterAssert(offset);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"offset"] };
            NSError* error = [NSError errorWithDomain:kOAIScheduledNotificationApiErrorDomain code:kOAIScheduledNotificationApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'recipientReportId' is set
    if (recipientReportId == nil) {
        NSParameterAssert(recipientReportId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"recipientReportId"] };
            NSError* error = [NSError errorWithDomain:kOAIScheduledNotificationApiErrorDomain code:kOAIScheduledNotificationApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/{version}/notification/schedule/generate"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (version != nil) {
        pathParams[@"version"] = version;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        queryParams[@"accountId"] = accountId;
    }
    if (appKey != nil) {
        queryParams[@"appKey"] = appKey;
    }
    if (reportName != nil) {
        queryParams[@"reportName"] = reportName;
    }
    if (reportParams != nil) {
        queryParams[@"reportParams"] = reportParams;
    }
    if (message != nil) {
        queryParams[@"message"] = message;
    }
    if (offset != nil) {
        queryParams[@"offset"] = offset;
    }
    if (type != nil) {
        queryParams[@"type"] = type;
    }
    if (recipientReportId != nil) {
        queryParams[@"recipientReportId"] = recipientReportId;
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
/// Search Scheduled Notifications
/// This endpoint searches on Scheduled Notifications. If a scheduled notification was created with the visibility parameter set to PUBLIC, then anyone can search on it if the filter parameter includes the PUBLIC value. PRIVATE visibility means that it can only be searched on by the owner or if it has been shared to the user using the UserPermissionsApi.  In addition, if a PUBLIC Scheduled Notification was created for an application that requires content approval (using the publicContentApproval parameter), then an administrator of the application needs to approve it before it can be search on by other users. Before this happens, it is in a PENDING state, and only the original creator or the owner of the application can search and see it. Also, only the owner of the application can use the UserPermissionsApi to approve or reject it. Scheduled notifications that have been rejected are only visible to the original creators.
///  @param version  
///
///  @param accountId The logged in user. 
///
///  @param groupingId Filter results by a grouping identifier defined by the client (optional)
///
///  @param audienceId Filter results by audience (optional)
///
///  @param filter a comma separated list of filters: MINE - Return scheduled notifications that the user has created. SHARED - Return scheduled notifications that have been shared to the user via addUsersToPermissionable. FOLLOWER - Return scheduled notifications that have been created by the users followers (the content needs to have been APPROVED or FEATURED). FOLLOWING - Return scheduled notifications that have been created by people who the user is following (the content needs to have been APPROVED or FEATURED). PUBLIC - Return all PUBLIC scheduled notifications that have been APPROVED or FEATURED. ALL_PUBLIC - Return all PUBLIC scheduled notifications regardless of whether they are approved or not (ignores the approval status). LIKED - Return all scheduled notifications that the user has liked. FEATURED - Return all scheduled notifications that have been featured. PENDING - Return all pending scheduled notifications. (optional)
///
///  @param types Filter results by notification types (comma separated list). Values include: HTTP, EMAIL, SMS, MOBILE_NOTIFICATION (optional)
///
///  @param contentIds search using content IDs (optional)
///
///  @param contentTypes search using content types (optional)
///
///  @param parentIds search using parent IDs (optional)
///
///  @param parentTypes search using parent types (optional)
///
///  @param statuses Filter results by status (comma separated list). Possible values include: NEW - scheduled to run ERROR - encountered an error during processing COMPLETE - processing has completed and it is no longer scheduled to run PROCESSING - currently processing/sending (optional)
///
///  @param templateTypes  (optional)
///
///  @param appKey Filter the list by a specific application (optional)
///
///  @param keyword Keyword search on the scheduled notification names. (optional)
///
///  @param sortField The field to sort by. Possible values include: ID - order by the scheduledNotificationId CREATED - order by the timestamp it was created UPDATED - order by the timestamp it was last updated ACTIVE - order by whether it is active or inactive NAME - order by the scheduled notification name SCHEDULED_DATE - order by the next scheduled date START_DATE - order by the start date END_DATE - order by the end date (optional)
///
///  @param descending Determines whether the sorted list is in descending or ascending order (optional)
///
///  @param start Start the result set at some index. (optional)
///
///  @param limit Limit the result to some number. (optional)
///
///  @param activeOnly Determines whether to return only active results (optional)
///
///  @param groupByGroupingId Determines whether to group results with the same groupingId together. (optional)
///
///  @param returnAudienceAccountCount If true, include audience account counts in the response (optional)
///
///  @returns OAIScheduledNotificationFullResponse*
///
-(NSURLSessionTask*) searchScheduledNotificationsWithVersion: (NSNumber*) version
    accountId: (NSNumber*) accountId
    groupingId: (NSString*) groupingId
    audienceId: (NSNumber*) audienceId
    filter: (NSString*) filter
    types: (NSString*) types
    contentIds: (NSString*) contentIds
    contentTypes: (NSString*) contentTypes
    parentIds: (NSString*) parentIds
    parentTypes: (NSString*) parentTypes
    statuses: (NSString*) statuses
    templateTypes: (NSString*) templateTypes
    appKey: (NSString*) appKey
    keyword: (NSString*) keyword
    sortField: (NSString*) sortField
    descending: (NSNumber*) descending
    start: (NSNumber*) start
    limit: (NSNumber*) limit
    activeOnly: (NSNumber*) activeOnly
    groupByGroupingId: (NSNumber*) groupByGroupingId
    returnAudienceAccountCount: (NSNumber*) returnAudienceAccountCount
    completionHandler: (void (^)(OAIScheduledNotificationFullResponse* output, NSError* error)) handler {
    // verify the required parameter 'version' is set
    if (version == nil) {
        NSParameterAssert(version);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"version"] };
            NSError* error = [NSError errorWithDomain:kOAIScheduledNotificationApiErrorDomain code:kOAIScheduledNotificationApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kOAIScheduledNotificationApiErrorDomain code:kOAIScheduledNotificationApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/{version}/notification/schedule/search"];

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
    if (audienceId != nil) {
        queryParams[@"audienceId"] = audienceId;
    }
    if (filter != nil) {
        queryParams[@"filter"] = filter;
    }
    if (types != nil) {
        queryParams[@"types"] = types;
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
    if (groupByGroupingId != nil) {
        queryParams[@"groupByGroupingId"] = [groupByGroupingId isEqual:@(YES)] ? @"true" : @"false";
    }
    if (returnAudienceAccountCount != nil) {
        queryParams[@"returnAudienceAccountCount"] = [returnAudienceAccountCount isEqual:@(YES)] ? @"true" : @"false";
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
                              responseType: @"OAIScheduledNotificationFullResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIScheduledNotificationFullResponse*)data, error);
                                }
                            }];
}

///
/// Update Scheduled Notification
/// This endpoint updates a Scheduled Notification message that can be configured to process and send periodically at set time periods. Please see createScheduledNotification for more details.  Only the original owner of the Scheduled Notification or someone with write permissions can use this endpoint. Permissions can be granted to other users by using theUserPermissionsApi.
///  @param version  
///
///  @param scheduledNotificationId The id of scheduled notification to update 
///
///  @param accountId The logged in user. 
///
///  @param name The name of the scheduled notification (optional)
///
///  @param type The type of scheduled notification. Supported values include: MOBILE_NOTIFICATION - sends push notifications via APNS and GCM EMAIL - sends email messages SMS - sends text messages (optional)
///
///  @param message The message to send (optional)
///
///  @param payload The parameters for making an HTTP call (optional)
///
///  @param contentId The payload content ID that gets sent along with the message. For push notification, this could be used in client apps to know what the message is referring to and open up the related view. (optional)
///
///  @param contentName The payload content name that gets sent along with the message. For push notification, this could be used in client apps to know what the message is referring to and open up the related view. (optional)
///
///  @param contentType The payload content type that gets sent along with the message. For push notification, this could be used in client apps to know what the message is referring to and open up the related view. (optional)
///
///  @param parentId The payload parent ID that gets sent along with the message. For push notification, this could be used in client apps to know what the message is referring to and open up the related view. (optional)
///
///  @param parentType The payload parent type that gets sent along with the message. For push notification, this could be used in client apps to know what the message is referring to and open up the related view. (optional)
///
///  @param appKey The application that the notifications will send to. If connectionGroupIds, connectionAccountIds, and audienceIds is not set, this will send to all users who have used the application. This parameter is also required when sending push notifications via the MOBILE_NOTIFICATION type. (optional)
///
///  @param groupingId Client defined identifier for grouping multiple scheduled notifications. This can be used with the search endpoint to return scheduled notifications with the same groupingId for display purposes. Only results that have been created by the user will be returned when using this feature. (optional)
///
///  @param connectionGroupIds The connection groups to use to generate the list of recipients (comma separated list of connection group IDs) (optional)
///
///  @param connectionAccountIds The connection accounts to use to generate the list of recipients (comma separated list of user account ids) (optional)
///
///  @param audienceId This parameter is deprecated. The audience used to generate the list of recipients (optional)
///
///  @param audienceIds The audiences used to generate the list of recipients (comma separated list of audience IDs) (optional)
///
///  @param albumIds The album ids to associate with the scheduled notification (comma separated list of album IDs) (optional)
///
///  @param reportId The report used to generate the the list of recipients (optional)
///
///  @param reportParams The parameters to supply to the report used to generate the the list of recipients (optional)
///
///  @param endpointURL The URL for making an HTTP call (optional)
///
///  @param scheduledDate The next time when the scheduled notification should begin processing (time in milliseconds). If this is left empty, then the startDate will be used. (optional)
///
///  @param startDate The start time when the scheduled notification should be available to process (time in milliseconds). If this is left empty, then it will be assumed to be available now. (optional)
///
///  @param endDate The end time when the scheduled notification should be available to process (time in milliseconds). If this is left empty, then it will be assumed to not have an expiration date. (optional)
///
///  @param cronExpression The cron expression that represents the processing schedule. This uses the unix cron expression format. For example: 0 0 * * * will run once a day at midnight UTC. (optional)
///
///  @param cronType The cron expression type: UNIX, CRON4J, QUARTZ (optional)
///
///  @param metaData Additional metadata for the scheduled notification (optional)
///
///  @param conditionalInput Json input representing conditional logic that has to be met before running the scheduled notification (optional)
///
///  @param templateType This determines if the Scheduled Notification is a template which is used as a basis for dynamically generating re-occurring Scheduled Notifications. The available types include: REPORTING - saves an adhoc report to be able to run again at another time GEOFENCE_OWNER - template for sending notifications to the geofence/audience owner (i.e. the business owner) GEOFENCE_OWNER - template for sending notifications to the geofence/audience owner (i.e. the business employee, retailer location, etc) GEOFENCE_TRIGGER - template for sending notifications to the account that triggered the geofence/audience (i.e. the customer) GEOFENCE_HTTP_CALL - template for making http calls when the geofences are triggered (optional)
///
///  @param visibility Determines the scope of who is able to find and view the scheduled notification (PUBLIC - openly available to all Sirqul users, PRIVATE - only available to users that have been invited) (optional)
///
///  @param active Sets whether the Scheduled Notification is active or not (inactive Scheduled Notifications are not processed). This is a quick way to toggle on or off without altering its schedule. (optional)
///
///  @param errorMessage the error message associated with the scheduled notification (optional)
///
///  @param status the status of the scheduled notification (optional)
///
///  @param updateByGroupingId also updates ScheduledNotifications with the same groupingId and account (optional)
///
///  @param sendNow whether to send the scheduled notification now or not (optional)
///
///  @param eventType Sets the event type for the notification (optional, default to @"CUSTOM")
///
///  @param deepLinkURI The payload deep link URI that can be used by the client app to direct users to a screen in the app (optional)
///
///  @param sendToAll Determines whether to send to all users of the app if set to true for push notifications (appKey is required) (optional)
///
///  @returns OAIScheduledNotificationFullResponse*
///
-(NSURLSessionTask*) updateScheduledNotificationWithVersion: (NSNumber*) version
    scheduledNotificationId: (NSNumber*) scheduledNotificationId
    accountId: (NSNumber*) accountId
    name: (NSString*) name
    type: (NSString*) type
    message: (NSString*) message
    payload: (NSString*) payload
    contentId: (NSNumber*) contentId
    contentName: (NSString*) contentName
    contentType: (NSString*) contentType
    parentId: (NSNumber*) parentId
    parentType: (NSString*) parentType
    appKey: (NSString*) appKey
    groupingId: (NSString*) groupingId
    connectionGroupIds: (NSString*) connectionGroupIds
    connectionAccountIds: (NSString*) connectionAccountIds
    audienceId: (NSNumber*) audienceId
    audienceIds: (NSString*) audienceIds
    albumIds: (NSString*) albumIds
    reportId: (NSNumber*) reportId
    reportParams: (NSString*) reportParams
    endpointURL: (NSString*) endpointURL
    scheduledDate: (NSNumber*) scheduledDate
    startDate: (NSNumber*) startDate
    endDate: (NSNumber*) endDate
    cronExpression: (NSString*) cronExpression
    cronType: (NSString*) cronType
    metaData: (NSString*) metaData
    conditionalInput: (NSString*) conditionalInput
    templateType: (NSString*) templateType
    visibility: (NSString*) visibility
    active: (NSNumber*) active
    errorMessage: (NSString*) errorMessage
    status: (NSString*) status
    updateByGroupingId: (NSNumber*) updateByGroupingId
    sendNow: (NSNumber*) sendNow
    eventType: (NSString*) eventType
    deepLinkURI: (NSString*) deepLinkURI
    sendToAll: (NSNumber*) sendToAll
    completionHandler: (void (^)(OAIScheduledNotificationFullResponse* output, NSError* error)) handler {
    // verify the required parameter 'version' is set
    if (version == nil) {
        NSParameterAssert(version);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"version"] };
            NSError* error = [NSError errorWithDomain:kOAIScheduledNotificationApiErrorDomain code:kOAIScheduledNotificationApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'scheduledNotificationId' is set
    if (scheduledNotificationId == nil) {
        NSParameterAssert(scheduledNotificationId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"scheduledNotificationId"] };
            NSError* error = [NSError errorWithDomain:kOAIScheduledNotificationApiErrorDomain code:kOAIScheduledNotificationApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kOAIScheduledNotificationApiErrorDomain code:kOAIScheduledNotificationApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/{version}/notification/schedule/update"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (version != nil) {
        pathParams[@"version"] = version;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (scheduledNotificationId != nil) {
        queryParams[@"scheduledNotificationId"] = scheduledNotificationId;
    }
    if (accountId != nil) {
        queryParams[@"accountId"] = accountId;
    }
    if (name != nil) {
        queryParams[@"name"] = name;
    }
    if (type != nil) {
        queryParams[@"type"] = type;
    }
    if (message != nil) {
        queryParams[@"message"] = message;
    }
    if (payload != nil) {
        queryParams[@"payload"] = payload;
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
    if (appKey != nil) {
        queryParams[@"appKey"] = appKey;
    }
    if (groupingId != nil) {
        queryParams[@"groupingId"] = groupingId;
    }
    if (connectionGroupIds != nil) {
        queryParams[@"connectionGroupIds"] = connectionGroupIds;
    }
    if (connectionAccountIds != nil) {
        queryParams[@"connectionAccountIds"] = connectionAccountIds;
    }
    if (audienceId != nil) {
        queryParams[@"audienceId"] = audienceId;
    }
    if (audienceIds != nil) {
        queryParams[@"audienceIds"] = audienceIds;
    }
    if (albumIds != nil) {
        queryParams[@"albumIds"] = albumIds;
    }
    if (reportId != nil) {
        queryParams[@"reportId"] = reportId;
    }
    if (reportParams != nil) {
        queryParams[@"reportParams"] = reportParams;
    }
    if (endpointURL != nil) {
        queryParams[@"endpointURL"] = endpointURL;
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
    if (cronType != nil) {
        queryParams[@"cronType"] = cronType;
    }
    if (metaData != nil) {
        queryParams[@"metaData"] = metaData;
    }
    if (conditionalInput != nil) {
        queryParams[@"conditionalInput"] = conditionalInput;
    }
    if (templateType != nil) {
        queryParams[@"templateType"] = templateType;
    }
    if (visibility != nil) {
        queryParams[@"visibility"] = visibility;
    }
    if (active != nil) {
        queryParams[@"active"] = [active isEqual:@(YES)] ? @"true" : @"false";
    }
    if (errorMessage != nil) {
        queryParams[@"errorMessage"] = errorMessage;
    }
    if (status != nil) {
        queryParams[@"status"] = status;
    }
    if (updateByGroupingId != nil) {
        queryParams[@"updateByGroupingId"] = [updateByGroupingId isEqual:@(YES)] ? @"true" : @"false";
    }
    if (sendNow != nil) {
        queryParams[@"sendNow"] = [sendNow isEqual:@(YES)] ? @"true" : @"false";
    }
    if (eventType != nil) {
        queryParams[@"eventType"] = eventType;
    }
    if (deepLinkURI != nil) {
        queryParams[@"deepLinkURI"] = deepLinkURI;
    }
    if (sendToAll != nil) {
        queryParams[@"sendToAll"] = [sendToAll isEqual:@(YES)] ? @"true" : @"false";
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
                              responseType: @"OAIScheduledNotificationFullResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIScheduledNotificationFullResponse*)data, error);
                                }
                            }];
}



@end
