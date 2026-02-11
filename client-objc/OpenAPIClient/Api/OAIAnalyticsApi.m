#import "OAIAnalyticsApi.h"
#import "OAIQueryParamCollection.h"
#import "OAIApiClient.h"
#import "OAIChartData.h"
#import "OAISirqulResponse.h"
#import "OAIUserActivityResponse.h"


@interface OAIAnalyticsApi ()

@property (nonatomic, strong, readwrite) NSMutableDictionary *mutableDefaultHeaders;

@end

@implementation OAIAnalyticsApi

NSString* kOAIAnalyticsApiErrorDomain = @"OAIAnalyticsApiErrorDomain";
NSInteger kOAIAnalyticsApiMissingParamErrorCode = 234513;

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
/// Get User Activity
/// Get an activity feed by user.
///  @param start The start of the pagination 
///
///  @param limit The limit of the pagination 
///
///  @param accountId the account id of the user 
///
///  @returns NSArray<OAIUserActivityResponse>*
///
-(NSURLSessionTask*) activitiesWithStart: (NSNumber*) start
    limit: (NSNumber*) limit
    accountId: (NSNumber*) accountId
    completionHandler: (void (^)(NSArray<OAIUserActivityResponse>* output, NSError* error)) handler {
    // verify the required parameter 'start' is set
    if (start == nil) {
        NSParameterAssert(start);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"start"] };
            NSError* error = [NSError errorWithDomain:kOAIAnalyticsApiErrorDomain code:kOAIAnalyticsApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'limit' is set
    if (limit == nil) {
        NSParameterAssert(limit);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"limit"] };
            NSError* error = [NSError errorWithDomain:kOAIAnalyticsApiErrorDomain code:kOAIAnalyticsApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kOAIAnalyticsApiErrorDomain code:kOAIAnalyticsApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/analytics/useractivity"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (start != nil) {
        queryParams[@"start"] = start;
    }
    if (limit != nil) {
        queryParams[@"limit"] = limit;
    }
    if (accountId != nil) {
        queryParams[@"accountId"] = accountId;
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
                              responseType: @"NSArray<OAIUserActivityResponse>*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSArray<OAIUserActivityResponse>*)data, error);
                                }
                            }];
}

///
/// Get Aggregated Filtered Usage
/// Query analytics to get data used for nested graphs and charts
///  @param deviceId The unique id of the device making the request (deviceId or accountId required) (optional)
///
///  @param accountId The account id of the user (deviceId or accountId required) (optional)
///
///  @param applicationId This parameter is deprecated. (optional)
///
///  @param appKey The application key used to filter results by application (optional)
///
///  @param startDate Used to search for results after or equal to this date (UNIX time-stamp in milliseconds) (optional)
///
///  @param endDate Used to search for results before or equal to this date (UNIX time-stamp in milliseconds) (optional)
///
///  @param deviceType The device type to filter results by (performs a LIKE search) (optional)
///
///  @param device The device to filter results by (performs a LIKE search) (optional)
///
///  @param deviceOS The device OS to filter results by (performs a LIKE search) (optional)
///
///  @param gender The gender to filter results by {MALE, FEMALE} (optional)
///
///  @param ageGroup Comma separated list of age groups to filter by {AGE_0_13, AGE_14_17, AGE_18_22, AGE_23_30, AGE_31_54, AGE_55_PLUS} (optional)
///
///  @param country The country to filter results by (performs a wild-card search) (optional)
///
///  @param state The state to filter results by (performs a wild-card search) (optional)
///
///  @param city The city to filter results by (performs a wild-card search) (optional)
///
///  @param zip The zip to filter results by (performs a wild-card search) (optional)
///
///  @param model The model to filter results by (performs a wild-card search) (optional)
///
///  @param tag The tag to filter results by (performs a wild-card search) (optional)
///
///  @param userAccountId The account id to filter results for a particular user (optional)
///
///  @param userAccountDisplay The user display to filter results by (performs a wild-card search) (optional)
///
///  @param userAccountUsername The username to filter results by (performs a wild-card search) (optional)
///
///  @param groupByRoot Determines how to group results. For example, passing in 'CREATED' will return results by date. Passing in 'ACCOUNT' will return results by user {TAG, CUSTOM_ID, TOKEN, MODEL, DEVICE_TYPE, DEVICE, DEVICE_OS, IP_ADDRESS, STATE, CITY, ZIP, COUNTRY, ACCOUNT, APPLICATION_ID, APPLICATION_NAME_BY_ID} (optional)
///
///  @param groupBy Determines how to group the nested data. {TAG, CUSTOM_ID, TOKEN, MODEL, DEVICE_TYPE, DEVICE, DEVICE_OS, IP_ADDRESS, STATE, CITY, ZIP, COUNTRY, ACCOUNT, APPLICATION_ID, APPLICATION_NAME_BY_ID} (optional)
///
///  @param distinctCount Performs a unique query on the specified column. For example, passing in 'ACCOUNT' will return the number of unique users. {TAG, CUSTOM_ID, TOKEN, MODEL, DEVICE_TYPE, DEVICE, DEVICE_OS, IP_ADDRESS, STATE, CITY, ZIP, COUNTRY, ACCOUNT, APPLICATION_ID, NEW_ACCOUNT} (optional)
///
///  @param sortField Determines whether the results will be sorted by day or by number of hits {CREATED, TAG_COUNT} (optional)
///
///  @param descending Determines whether to return results in descending order (optional)
///
///  @param hideUnknown Determines whether to return data that has empty or unknown values (optional)
///
///  @param responseFormat Determines whether to return a JOSN or XML representation of the graph results (optional)
///
///  @param l This parameter is deprecated. (optional)
///
///  @param limit Used to limit results to get a cleaner graph. The results that gets filtered out will be combined (optional)
///
///  @param latitude the current latitude of the user (optional)
///
///  @param longitude the current longitude of the user (optional)
///
///  @returns OAIChartData*
///
-(NSURLSessionTask*) aggregatedFilteredUsageWithDeviceId: (NSString*) deviceId
    accountId: (NSNumber*) accountId
    applicationId: (NSNumber*) applicationId
    appKey: (NSString*) appKey
    startDate: (NSNumber*) startDate
    endDate: (NSNumber*) endDate
    deviceType: (NSString*) deviceType
    device: (NSString*) device
    deviceOS: (NSString*) deviceOS
    gender: (NSString*) gender
    ageGroup: (NSString*) ageGroup
    country: (NSString*) country
    state: (NSString*) state
    city: (NSString*) city
    zip: (NSString*) zip
    model: (NSString*) model
    tag: (NSString*) tag
    userAccountId: (NSNumber*) userAccountId
    userAccountDisplay: (NSString*) userAccountDisplay
    userAccountUsername: (NSString*) userAccountUsername
    groupByRoot: (NSString*) groupByRoot
    groupBy: (NSString*) groupBy
    distinctCount: (NSString*) distinctCount
    sortField: (NSString*) sortField
    descending: (NSNumber*) descending
    hideUnknown: (NSNumber*) hideUnknown
    responseFormat: (NSString*) responseFormat
    l: (NSNumber*) l
    limit: (NSNumber*) limit
    latitude: (NSNumber*) latitude
    longitude: (NSNumber*) longitude
    completionHandler: (void (^)(OAIChartData* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/analytics/aggregatedFilteredUsage"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (deviceId != nil) {
        queryParams[@"deviceId"] = deviceId;
    }
    if (accountId != nil) {
        queryParams[@"accountId"] = accountId;
    }
    if (applicationId != nil) {
        queryParams[@"applicationId"] = applicationId;
    }
    if (appKey != nil) {
        queryParams[@"appKey"] = appKey;
    }
    if (startDate != nil) {
        queryParams[@"startDate"] = startDate;
    }
    if (endDate != nil) {
        queryParams[@"endDate"] = endDate;
    }
    if (deviceType != nil) {
        queryParams[@"deviceType"] = deviceType;
    }
    if (device != nil) {
        queryParams[@"device"] = device;
    }
    if (deviceOS != nil) {
        queryParams[@"deviceOS"] = deviceOS;
    }
    if (gender != nil) {
        queryParams[@"gender"] = gender;
    }
    if (ageGroup != nil) {
        queryParams[@"ageGroup"] = ageGroup;
    }
    if (country != nil) {
        queryParams[@"country"] = country;
    }
    if (state != nil) {
        queryParams[@"state"] = state;
    }
    if (city != nil) {
        queryParams[@"city"] = city;
    }
    if (zip != nil) {
        queryParams[@"zip"] = zip;
    }
    if (model != nil) {
        queryParams[@"model"] = model;
    }
    if (tag != nil) {
        queryParams[@"tag"] = tag;
    }
    if (userAccountId != nil) {
        queryParams[@"userAccountId"] = userAccountId;
    }
    if (userAccountDisplay != nil) {
        queryParams[@"userAccountDisplay"] = userAccountDisplay;
    }
    if (userAccountUsername != nil) {
        queryParams[@"userAccountUsername"] = userAccountUsername;
    }
    if (groupByRoot != nil) {
        queryParams[@"groupByRoot"] = groupByRoot;
    }
    if (groupBy != nil) {
        queryParams[@"groupBy"] = groupBy;
    }
    if (distinctCount != nil) {
        queryParams[@"distinctCount"] = distinctCount;
    }
    if (sortField != nil) {
        queryParams[@"sortField"] = sortField;
    }
    if (descending != nil) {
        queryParams[@"descending"] = [descending isEqual:@(YES)] ? @"true" : @"false";
    }
    if (hideUnknown != nil) {
        queryParams[@"hideUnknown"] = [hideUnknown isEqual:@(YES)] ? @"true" : @"false";
    }
    if (responseFormat != nil) {
        queryParams[@"responseFormat"] = responseFormat;
    }
    if (l != nil) {
        queryParams[@"_l"] = l;
    }
    if (limit != nil) {
        queryParams[@"limit"] = limit;
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
                              responseType: @"OAIChartData*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIChartData*)data, error);
                                }
                            }];
}

///
/// Get Filtered Usage
/// Query analytics to get data used for graphs and charts
///  @param deviceId The unique id of the device making the request (deviceId or accountId required) (optional)
///
///  @param accountId The account id of the user (deviceId or accountId required) (optional)
///
///  @param applicationId This parameter is deprecated. (optional)
///
///  @param appKey The application key used to filter results by application (optional)
///
///  @param startDate Used to search for results after or equal to this date (UNIX time-stamp in milliseconds) (optional)
///
///  @param endDate Used to search for results before or equal to this date (UNIX time-stamp in milliseconds) (optional)
///
///  @param deviceType The device type to filter results by (performs a LIKE search) (optional)
///
///  @param device The device to filter results by (performs a LIKE search) (optional)
///
///  @param deviceOS The device OS to filter results by (performs a LIKE search) (optional)
///
///  @param gender The gender to filter results by {MALE, FEMALE} (optional)
///
///  @param ageGroup Comma separated list of age groups to filter by {AGE_0_13, AGE_14_17, AGE_18_22, AGE_23_30, AGE_31_54, AGE_55_PLUS} (optional)
///
///  @param country The country to filter results by (performs a wild-card search) (optional)
///
///  @param state The state to filter results by (performs a wild-card search) (optional)
///
///  @param city The city to filter results by (performs a wild-card search) (optional)
///
///  @param zip The zip to filter results by (performs a wild-card search) (optional)
///
///  @param model The model to filter results by (performs a wild-card search) (optional)
///
///  @param tag The tag to filter results by (performs a wild-card search) (optional)
///
///  @param userAccountId The account id to filter results for a particular user (optional)
///
///  @param userAccountDisplay The user display to filter results by (performs a wild-card search) (optional)
///
///  @param userAccountUsername The username to filter results by (performs a wild-card search) (optional)
///
///  @param customId The ID for the custom table column (optional)
///
///  @param customType The type defined for the custom table column (optional)
///
///  @param customValue The value for the custom table column (optional)
///
///  @param customValue2 The value for another custom table column (optional)
///
///  @param customLong The value that supports Longs for custom table column (optional)
///
///  @param customLong2 The value that supports Longs for custom table column (optional)
///
///  @param customMessage The message for the custom table column (optional)
///
///  @param customMessage2 The message for the custom table column (optional)
///
///  @param groupBy Determines how to group results. For example, passing in 'CREATED' will return results by date. Passing in 'ACCOUNT' will return results by user {TAG, CUSTOM_ID, TOKEN, MODEL, DEVICE_TYPE, DEVICE, DEVICE_OS, DEVICE_ID, IP_ADDRESS, STATE, CITY, ZIP, COUNTRY, ACCOUNT, APPLICATION_ID} (optional)
///
///  @param distinctCount Performs a unique query on the specified column. For example, passing in 'ACCOUNT' will return the number of unique users. {TAG, CUSTOM_ID, TOKEN, MODEL, DEVICE_TYPE, DEVICE, DEVICE_OS, DEVICE_ID, IP_ADDRESS, STATE, CITY, ZIP, COUNTRY, ACCOUNT, APPLICATION_ID} (optional)
///
///  @param sumColumn sum of the column values (optional)
///
///  @param sortField Determines whether the results will be sorted by day or by number of hits {CREATED, TAG_COUNT} (optional)
///
///  @param descending Determines whether to return results in descending order (optional)
///
///  @param hideUnknown Determines whether to return data that has empty or unknown values (optional)
///
///  @param responseFormat Determines whether to return a JOSN or XML representation of the graph results (optional)
///
///  @param l This parameter is deprecated. (optional)
///
///  @param limit Used to limit results to get a cleaner graph. The results that gets filtered out will be combined (optional)
///
///  @param latitude the current latitude of the user (optional)
///
///  @param longitude the current longitude of the user (optional)
///
///  @returns OAIChartData*
///
-(NSURLSessionTask*) filteredUsageWithDeviceId: (NSString*) deviceId
    accountId: (NSNumber*) accountId
    applicationId: (NSNumber*) applicationId
    appKey: (NSString*) appKey
    startDate: (NSNumber*) startDate
    endDate: (NSNumber*) endDate
    deviceType: (NSString*) deviceType
    device: (NSString*) device
    deviceOS: (NSString*) deviceOS
    gender: (NSString*) gender
    ageGroup: (NSString*) ageGroup
    country: (NSString*) country
    state: (NSString*) state
    city: (NSString*) city
    zip: (NSString*) zip
    model: (NSString*) model
    tag: (NSString*) tag
    userAccountId: (NSNumber*) userAccountId
    userAccountDisplay: (NSString*) userAccountDisplay
    userAccountUsername: (NSString*) userAccountUsername
    customId: (NSNumber*) customId
    customType: (NSString*) customType
    customValue: (NSNumber*) customValue
    customValue2: (NSNumber*) customValue2
    customLong: (NSNumber*) customLong
    customLong2: (NSNumber*) customLong2
    customMessage: (NSString*) customMessage
    customMessage2: (NSString*) customMessage2
    groupBy: (NSString*) groupBy
    distinctCount: (NSString*) distinctCount
    sumColumn: (NSString*) sumColumn
    sortField: (NSString*) sortField
    descending: (NSNumber*) descending
    hideUnknown: (NSNumber*) hideUnknown
    responseFormat: (NSString*) responseFormat
    l: (NSNumber*) l
    limit: (NSNumber*) limit
    latitude: (NSNumber*) latitude
    longitude: (NSNumber*) longitude
    completionHandler: (void (^)(OAIChartData* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/analytics/filteredUsage"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (deviceId != nil) {
        queryParams[@"deviceId"] = deviceId;
    }
    if (accountId != nil) {
        queryParams[@"accountId"] = accountId;
    }
    if (applicationId != nil) {
        queryParams[@"applicationId"] = applicationId;
    }
    if (appKey != nil) {
        queryParams[@"appKey"] = appKey;
    }
    if (startDate != nil) {
        queryParams[@"startDate"] = startDate;
    }
    if (endDate != nil) {
        queryParams[@"endDate"] = endDate;
    }
    if (deviceType != nil) {
        queryParams[@"deviceType"] = deviceType;
    }
    if (device != nil) {
        queryParams[@"device"] = device;
    }
    if (deviceOS != nil) {
        queryParams[@"deviceOS"] = deviceOS;
    }
    if (gender != nil) {
        queryParams[@"gender"] = gender;
    }
    if (ageGroup != nil) {
        queryParams[@"ageGroup"] = ageGroup;
    }
    if (country != nil) {
        queryParams[@"country"] = country;
    }
    if (state != nil) {
        queryParams[@"state"] = state;
    }
    if (city != nil) {
        queryParams[@"city"] = city;
    }
    if (zip != nil) {
        queryParams[@"zip"] = zip;
    }
    if (model != nil) {
        queryParams[@"model"] = model;
    }
    if (tag != nil) {
        queryParams[@"tag"] = tag;
    }
    if (userAccountId != nil) {
        queryParams[@"userAccountId"] = userAccountId;
    }
    if (userAccountDisplay != nil) {
        queryParams[@"userAccountDisplay"] = userAccountDisplay;
    }
    if (userAccountUsername != nil) {
        queryParams[@"userAccountUsername"] = userAccountUsername;
    }
    if (customId != nil) {
        queryParams[@"customId"] = customId;
    }
    if (customType != nil) {
        queryParams[@"customType"] = customType;
    }
    if (customValue != nil) {
        queryParams[@"customValue"] = customValue;
    }
    if (customValue2 != nil) {
        queryParams[@"customValue2"] = customValue2;
    }
    if (customLong != nil) {
        queryParams[@"customLong"] = customLong;
    }
    if (customLong2 != nil) {
        queryParams[@"customLong2"] = customLong2;
    }
    if (customMessage != nil) {
        queryParams[@"customMessage"] = customMessage;
    }
    if (customMessage2 != nil) {
        queryParams[@"customMessage2"] = customMessage2;
    }
    if (groupBy != nil) {
        queryParams[@"groupBy"] = groupBy;
    }
    if (distinctCount != nil) {
        queryParams[@"distinctCount"] = distinctCount;
    }
    if (sumColumn != nil) {
        queryParams[@"sumColumn"] = sumColumn;
    }
    if (sortField != nil) {
        queryParams[@"sortField"] = sortField;
    }
    if (descending != nil) {
        queryParams[@"descending"] = [descending isEqual:@(YES)] ? @"true" : @"false";
    }
    if (hideUnknown != nil) {
        queryParams[@"hideUnknown"] = [hideUnknown isEqual:@(YES)] ? @"true" : @"false";
    }
    if (responseFormat != nil) {
        queryParams[@"responseFormat"] = responseFormat;
    }
    if (l != nil) {
        queryParams[@"_l"] = l;
    }
    if (limit != nil) {
        queryParams[@"limit"] = limit;
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
                              responseType: @"OAIChartData*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIChartData*)data, error);
                                }
                            }];
}

///
/// Create Usage Record
/// Record an analytic record for a known state within the application.
///  @param tag The tag to apply: the name of the action or thing being logged. 
///
///  @param deviceId The client deviceID (optional)
///
///  @param accountId The logged in user ID (optional)
///
///  @param applicationId This parameter is deprecated. This is deprecated, use appKey. (optional)
///
///  @param appKey The application key unique to each application. (optional)
///
///  @param appVersion The current build version of the application (optional)
///
///  @param device The name of the device being used (iPhone5,1 , HTC Nexus One, x86_64, etc.) (optional)
///
///  @param deviceType The type of device (Handheld or Desktop) (optional)
///
///  @param deviceOS The operating system that the device is using (iPhone OS 5.0, Android OS 2.3.6, Windows 7 Service Pack 1, etc) (optional)
///
///  @param model The model of the device (iPhone5,1 , Nexus One, etc.) (optional)
///
///  @param latitude The current position of the user (optional)
///
///  @param longitude The current position of the user (optional)
///
///  @param customId A customId used to associate the usage record with some other record in the system (optional)
///
///  @param customType The type of record the customId is recorded for (optional)
///
///  @param achievementIncrement This parameter is deprecated. This is deprecated, use \"customValue\". Determines how many achievement points and/or ranking points the user gets if this analytic is associated with an achievement (optional)
///
///  @param city The current city of the user (optional)
///
///  @param state The current state of the user (optional)
///
///  @param country The current country of the user (optional)
///
///  @param zip The current zip of the user (optional)
///
///  @param locationDescription The general description of the user's location (optional)
///
///  @param clientTime Timestamp sent from device (optional)
///
///  @param errorMessage This parameter is deprecated. (optional)
///
///  @param ip the ip address of the client device (optional)
///
///  @param userAgent this is a description of the client (might contain the device's OS, browser version etc - its a common term) (optional)
///
///  @param backgroundEvent This is deprecated. (optional)
///
///  @param customMessage a custom message for the usage record (optional)
///
///  @param customMessage2 a custom message for the usage record (optional)
///
///  @param customValue a custom value for the usage record (optional)
///
///  @param customValue2 a custom value for the usage record (optional)
///
///  @param customLong a custom long value for the usage record (optional)
///
///  @param customLong2 a custom long value for the usage record (optional)
///
///  @returns OAISirqulResponse*
///
-(NSURLSessionTask*) usageWithTag: (NSString*) tag
    deviceId: (NSString*) deviceId
    accountId: (NSNumber*) accountId
    applicationId: (NSNumber*) applicationId
    appKey: (NSString*) appKey
    appVersion: (NSString*) appVersion
    device: (NSString*) device
    deviceType: (NSString*) deviceType
    deviceOS: (NSString*) deviceOS
    model: (NSString*) model
    latitude: (NSNumber*) latitude
    longitude: (NSNumber*) longitude
    customId: (NSNumber*) customId
    customType: (NSString*) customType
    achievementIncrement: (NSNumber*) achievementIncrement
    city: (NSString*) city
    state: (NSString*) state
    country: (NSString*) country
    zip: (NSString*) zip
    locationDescription: (NSString*) locationDescription
    clientTime: (NSNumber*) clientTime
    errorMessage: (NSString*) errorMessage
    ip: (NSString*) ip
    userAgent: (NSString*) userAgent
    backgroundEvent: (NSNumber*) backgroundEvent
    customMessage: (NSString*) customMessage
    customMessage2: (NSString*) customMessage2
    customValue: (NSNumber*) customValue
    customValue2: (NSNumber*) customValue2
    customLong: (NSNumber*) customLong
    customLong2: (NSNumber*) customLong2
    completionHandler: (void (^)(OAISirqulResponse* output, NSError* error)) handler {
    // verify the required parameter 'tag' is set
    if (tag == nil) {
        NSParameterAssert(tag);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"tag"] };
            NSError* error = [NSError errorWithDomain:kOAIAnalyticsApiErrorDomain code:kOAIAnalyticsApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/analytics/usage"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (tag != nil) {
        queryParams[@"tag"] = tag;
    }
    if (deviceId != nil) {
        queryParams[@"deviceId"] = deviceId;
    }
    if (accountId != nil) {
        queryParams[@"accountId"] = accountId;
    }
    if (applicationId != nil) {
        queryParams[@"applicationId"] = applicationId;
    }
    if (appKey != nil) {
        queryParams[@"appKey"] = appKey;
    }
    if (appVersion != nil) {
        queryParams[@"appVersion"] = appVersion;
    }
    if (device != nil) {
        queryParams[@"device"] = device;
    }
    if (deviceType != nil) {
        queryParams[@"deviceType"] = deviceType;
    }
    if (deviceOS != nil) {
        queryParams[@"deviceOS"] = deviceOS;
    }
    if (model != nil) {
        queryParams[@"model"] = model;
    }
    if (latitude != nil) {
        queryParams[@"latitude"] = latitude;
    }
    if (longitude != nil) {
        queryParams[@"longitude"] = longitude;
    }
    if (customId != nil) {
        queryParams[@"customId"] = customId;
    }
    if (customType != nil) {
        queryParams[@"customType"] = customType;
    }
    if (achievementIncrement != nil) {
        queryParams[@"achievementIncrement"] = achievementIncrement;
    }
    if (city != nil) {
        queryParams[@"city"] = city;
    }
    if (state != nil) {
        queryParams[@"state"] = state;
    }
    if (country != nil) {
        queryParams[@"country"] = country;
    }
    if (zip != nil) {
        queryParams[@"zip"] = zip;
    }
    if (locationDescription != nil) {
        queryParams[@"locationDescription"] = locationDescription;
    }
    if (clientTime != nil) {
        queryParams[@"clientTime"] = clientTime;
    }
    if (errorMessage != nil) {
        queryParams[@"errorMessage"] = errorMessage;
    }
    if (ip != nil) {
        queryParams[@"ip"] = ip;
    }
    if (userAgent != nil) {
        queryParams[@"userAgent"] = userAgent;
    }
    if (backgroundEvent != nil) {
        queryParams[@"backgroundEvent"] = [backgroundEvent isEqual:@(YES)] ? @"true" : @"false";
    }
    if (customMessage != nil) {
        queryParams[@"customMessage"] = customMessage;
    }
    if (customMessage2 != nil) {
        queryParams[@"customMessage2"] = customMessage2;
    }
    if (customValue != nil) {
        queryParams[@"customValue"] = customValue;
    }
    if (customValue2 != nil) {
        queryParams[@"customValue2"] = customValue2;
    }
    if (customLong != nil) {
        queryParams[@"customLong"] = customLong;
    }
    if (customLong2 != nil) {
        queryParams[@"customLong2"] = customLong2;
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
/// Create Multiple Usage Records
/// Sends multiple analytics. Can be used to send in the user's stored usage when they did not have internet access. Should not include more than 100 items per batch.
///  @param appKey The application key unique to each application. 
///
///  @param device The name of the device being used (iPhone5,1 , HTC Nexus One, x86_64, etc.) 
///
///  @param data The analytic data AnalyticListResponse 
///
///  @param deviceId The unique id of the device making the request (optional)
///
///  @param accountId The account ID of the logged in user making the request (optional)
///
///  @param appVersion The current build version of the application (optional)
///
///  @param deviceType The type of device (Handheld or Desktop) (optional)
///
///  @param deviceOS The operating system that the device is using (iPhone OS 5.0, Android OS 2.3.6, Windows 7 Service Pack 1, etc.) (optional)
///
///  @param model The model of the device (iPhone5,1 , Nexus One, etc.) (optional)
///
///  @param updateRanking Will create a leaderboard if one does not exist for the \"tag\" yet (optional)
///
///  @param returnSummaryResponse Returns a summary response of the achievements that have been completed due to the analytics (optional)
///
///  @returns OAISirqulResponse*
///
-(NSURLSessionTask*) usageBatchWithAppKey: (NSString*) appKey
    device: (NSString*) device
    data: (NSString*) data
    deviceId: (NSString*) deviceId
    accountId: (NSNumber*) accountId
    appVersion: (NSString*) appVersion
    deviceType: (NSString*) deviceType
    deviceOS: (NSString*) deviceOS
    model: (NSString*) model
    updateRanking: (NSNumber*) updateRanking
    returnSummaryResponse: (NSNumber*) returnSummaryResponse
    completionHandler: (void (^)(OAISirqulResponse* output, NSError* error)) handler {
    // verify the required parameter 'appKey' is set
    if (appKey == nil) {
        NSParameterAssert(appKey);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"appKey"] };
            NSError* error = [NSError errorWithDomain:kOAIAnalyticsApiErrorDomain code:kOAIAnalyticsApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'device' is set
    if (device == nil) {
        NSParameterAssert(device);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"device"] };
            NSError* error = [NSError errorWithDomain:kOAIAnalyticsApiErrorDomain code:kOAIAnalyticsApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'data' is set
    if (data == nil) {
        NSParameterAssert(data);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"data"] };
            NSError* error = [NSError errorWithDomain:kOAIAnalyticsApiErrorDomain code:kOAIAnalyticsApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/analytics/usage/batch"];

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
    if (appVersion != nil) {
        queryParams[@"appVersion"] = appVersion;
    }
    if (device != nil) {
        queryParams[@"device"] = device;
    }
    if (deviceType != nil) {
        queryParams[@"deviceType"] = deviceType;
    }
    if (deviceOS != nil) {
        queryParams[@"deviceOS"] = deviceOS;
    }
    if (model != nil) {
        queryParams[@"model"] = model;
    }
    if (data != nil) {
        queryParams[@"data"] = data;
    }
    if (updateRanking != nil) {
        queryParams[@"updateRanking"] = [updateRanking isEqual:@(YES)] ? @"true" : @"false";
    }
    if (returnSummaryResponse != nil) {
        queryParams[@"returnSummaryResponse"] = [returnSummaryResponse isEqual:@(YES)] ? @"true" : @"false";
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



@end
