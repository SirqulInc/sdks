#import "OAITrackingApi.h"
#import "OAIQueryParamCollection.h"
#import "OAIApiClient.h"
#import "OAIAccountMiniResponse.h"
#import "OAILeg.h"
#import "OAILegResponse.h"
#import "OAIPredictedLocationResponse.h"
#import "OAIPreferredLocationResponse.h"
#import "OAISirqulResponse.h"
#import "OAIStepResponse.h"


@interface OAITrackingApi ()

@property (nonatomic, strong, readwrite) NSMutableDictionary *mutableDefaultHeaders;

@end

@implementation OAITrackingApi

NSString* kOAITrackingApiErrorDomain = @"OAITrackingApiErrorDomain";
NSInteger kOAITrackingApiMissingParamErrorCode = 234513;

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
/// Create Batch Tracking
/// Batch create tracking legs
///  @param version  
///
///  @param data JSON array of tracking legs ```json [   \"distance\": \"0.08\",   \"duration\": \"10000\",   \"startLatitude\": \"47.614603\",   \"startLongitude\": \"-122.350518\",   \"endLatitude\": \"47.614384\",   \"endLongitude\": \"-122.349161\",   \"startDate\": \"1361924010000\",   \"endDate\": \"1361924020000\",   \"steps\": [     {       \"distance\": \"0.03\",       \"duration\": \"5000\",       \"startLat\": \"47.614603\",       \"startLng\": \"-122.350518\",       \"startDate\": \"1361924010000\",       \"endLat\": \"47.614941\",       \"endLng\": \"-122.350062\",       \"endDate\": \"1361924015000\"     },{       \"distance\": \"0.05\",       \"duration\": \"5000\",       \"startLat\": \"47.614941\",       \"startLng\": \"-122.350062\",       \"startDate\": \"1361924015000\",       \"endLat\": \"47.614384\",       \"endLng\": \"-122.349161\",       \"endDate\": \"1361924020000\"     }   ] ] ```  
///
///  @param deviceId the device id (deviceId or accountId required) (optional)
///
///  @param accountId the account id of the user (deviceId or accountId required) (optional)
///
///  @param generateAccounts Whether to generate accounts for tracking entries when the owner does not exist (optional)
///
///  @param updateAccountLocations Whether to update the account's current location from the incoming tracking data (optional)
///
///  @param defaultTag The default tag to apply to incoming legs when no tag is provided (optional, default to @"PASSIVE")
///
///  @param slaveUID  (optional)
///
///  @returns NSArray<OAILeg>*
///
-(NSURLSessionTask*) batchSaveTrackingWithVersion: (NSNumber*) version
    data: (NSString*) data
    deviceId: (NSString*) deviceId
    accountId: (NSNumber*) accountId
    generateAccounts: (NSNumber*) generateAccounts
    updateAccountLocations: (NSNumber*) updateAccountLocations
    defaultTag: (NSString*) defaultTag
    slaveUID: (NSString*) slaveUID
    completionHandler: (void (^)(NSArray<OAILeg>* output, NSError* error)) handler {
    // verify the required parameter 'version' is set
    if (version == nil) {
        NSParameterAssert(version);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"version"] };
            NSError* error = [NSError errorWithDomain:kOAITrackingApiErrorDomain code:kOAITrackingApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'data' is set
    if (data == nil) {
        NSParameterAssert(data);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"data"] };
            NSError* error = [NSError errorWithDomain:kOAITrackingApiErrorDomain code:kOAITrackingApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/{version}/tracking/batch/create"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (version != nil) {
        pathParams[@"version"] = version;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (deviceId != nil) {
        queryParams[@"deviceId"] = deviceId;
    }
    if (accountId != nil) {
        queryParams[@"accountId"] = accountId;
    }
    if (data != nil) {
        queryParams[@"data"] = data;
    }
    if (generateAccounts != nil) {
        queryParams[@"generateAccounts"] = [generateAccounts isEqual:@(YES)] ? @"true" : @"false";
    }
    if (updateAccountLocations != nil) {
        queryParams[@"updateAccountLocations"] = [updateAccountLocations isEqual:@(YES)] ? @"true" : @"false";
    }
    if (defaultTag != nil) {
        queryParams[@"defaultTag"] = defaultTag;
    }
    if (slaveUID != nil) {
        queryParams[@"slaveUID"] = slaveUID;
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
                              responseType: @"NSArray<OAILeg>*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSArray<OAILeg>*)data, error);
                                }
                            }];
}

///
/// Get Predicted Locations
/// Get the predicted location for a customer based on previous behavior.  If a customer resides in a place for a period of time this is marked as a preferred location.  We look back over the previous few days and the previous days of the week from the day specified.  If for instance the day was a Wednesday then this would check the days before, including: Tuesday, Monday, Sunday, etc. It will also check some number of previous Wednesdays in the past few weeks.
///  @param version  
///
///  @param accountId The account id of the customer 
///
///  @param latitude latitude to return a more likely result set based on the user's current location (optional)
///
///  @param longitude longitude to return a more likely result set based on the user's current location (optional)
///
///  @param dateCheck Used to specify which day to get predicted locations for. So if you want to look at where they might be tomorrow, pass in tomorrow's date (timestamp in milliseconds). If no value is passed in, the current date will be used. (optional)
///
///  @param hourCheck Comma separated list of hours that will filter the results on the hours specified. For example, if you want to see predicted locations for the mornings and evening you can pass in \"8,9,10,11,17,18,19,20\". (optional)
///
///  @param threshold The minimum number matches in 1 hour to be considered a likely location. (optional, default to @1)
///
///  @param distanceUnit Determines which unit of measurement gets returned for distances: {MILES, KILOMETERS} (optional, default to @"MILES")
///
///  @param searchRange Filter results so only locations within the specified radius will be returned. The distance can either be in miles or kilometers as specified in the distanceUnit parameter. A value of \"0\" (zero) will ignore the radius restriction. (optional, default to @0)
///
///  @param sortOrder The ordering algorithm for sorting the returned results: {MATCHES, DISTANCE, WEIGHTED} (optional, default to @"MATCHES")
///
///  @returns OAIPredictedLocationResponse*
///
-(NSURLSessionTask*) getPredictedLocationsWithVersion: (NSNumber*) version
    accountId: (NSNumber*) accountId
    latitude: (NSNumber*) latitude
    longitude: (NSNumber*) longitude
    dateCheck: (NSNumber*) dateCheck
    hourCheck: (NSString*) hourCheck
    threshold: (NSNumber*) threshold
    distanceUnit: (NSString*) distanceUnit
    searchRange: (NSNumber*) searchRange
    sortOrder: (NSString*) sortOrder
    completionHandler: (void (^)(OAIPredictedLocationResponse* output, NSError* error)) handler {
    // verify the required parameter 'version' is set
    if (version == nil) {
        NSParameterAssert(version);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"version"] };
            NSError* error = [NSError errorWithDomain:kOAITrackingApiErrorDomain code:kOAITrackingApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kOAITrackingApiErrorDomain code:kOAITrackingApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/{version}/tracking/predicted/get"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (version != nil) {
        pathParams[@"version"] = version;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        queryParams[@"accountId"] = accountId;
    }
    if (latitude != nil) {
        queryParams[@"latitude"] = latitude;
    }
    if (longitude != nil) {
        queryParams[@"longitude"] = longitude;
    }
    if (dateCheck != nil) {
        queryParams[@"dateCheck"] = dateCheck;
    }
    if (hourCheck != nil) {
        queryParams[@"hourCheck"] = hourCheck;
    }
    if (threshold != nil) {
        queryParams[@"threshold"] = threshold;
    }
    if (distanceUnit != nil) {
        queryParams[@"distanceUnit"] = distanceUnit;
    }
    if (searchRange != nil) {
        queryParams[@"searchRange"] = searchRange;
    }
    if (sortOrder != nil) {
        queryParams[@"sortOrder"] = sortOrder;
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
                              responseType: @"OAIPredictedLocationResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIPredictedLocationResponse*)data, error);
                                }
                            }];
}

///
/// Get Tracking Path
/// Get the path (lat/long coordinates) between 2 steps previously logged for a customer.
///  @param version  
///
///  @param accountId The account id of the customer 
///
///  @param startStepId The stepId to begin from 
///
///  @param endStepId The stepId to end with 
///
///  @returns NSArray<OAIStepResponse>*
///
-(NSURLSessionTask*) getPredictedPathWithVersion: (NSNumber*) version
    accountId: (NSNumber*) accountId
    startStepId: (NSNumber*) startStepId
    endStepId: (NSNumber*) endStepId
    completionHandler: (void (^)(NSArray<OAIStepResponse>* output, NSError* error)) handler {
    // verify the required parameter 'version' is set
    if (version == nil) {
        NSParameterAssert(version);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"version"] };
            NSError* error = [NSError errorWithDomain:kOAITrackingApiErrorDomain code:kOAITrackingApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kOAITrackingApiErrorDomain code:kOAITrackingApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'startStepId' is set
    if (startStepId == nil) {
        NSParameterAssert(startStepId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"startStepId"] };
            NSError* error = [NSError errorWithDomain:kOAITrackingApiErrorDomain code:kOAITrackingApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'endStepId' is set
    if (endStepId == nil) {
        NSParameterAssert(endStepId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"endStepId"] };
            NSError* error = [NSError errorWithDomain:kOAITrackingApiErrorDomain code:kOAITrackingApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/{version}/tracking/path/get"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (version != nil) {
        pathParams[@"version"] = version;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        queryParams[@"accountId"] = accountId;
    }
    if (startStepId != nil) {
        queryParams[@"startStepId"] = startStepId;
    }
    if (endStepId != nil) {
        queryParams[@"endStepId"] = endStepId;
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
                              responseType: @"NSArray<OAIStepResponse>*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSArray<OAIStepResponse>*)data, error);
                                }
                            }];
}

///
/// Search Preferred Locations
/// Search on preferred locations for a user, which is created when a customer resides in a place for a period of time.
///  @param version  
///
///  @param accountId The account id of the customer 
///
///  @param latitude latitude to return a more likely result set based on the user's current location (optional)
///
///  @param longitude longitude to return a more likely result set based on the user's current location (optional)
///
///  @param dateCheck Used to specify which day to get preferred locations for. So if you want to look at where they might be tomorrow, pass in tomorrow's date (timestamp in milliseconds). If no value is passed in, results from all time will be returned. (optional)
///
///  @param hourCheck Comma separated list of hours that will filter the results on the hours specified. For example, if you want to see preferred locations for the mornings and evening you can pass in \"8,9,10,11,17,18,19,20\". (optional)
///
///  @param sortField Specifies how the results will be ordered. Supported values include: CREATED - the time of when the preferred location data was processed. PREFERRED_DATE - the time of when the user sent in the tracking data. HOUR - the hour of when the user sent in the tracking data. DURATION - the duration of the preferred location (optional, default to @"PREFERRED_DATE")
///
///  @param descending Determines whether the sorted list is in descending or ascending order (optional, default to @(YES))
///
///  @param start The start index for pagination (optional, default to @0)
///
///  @param limit The limit for pagination (optional, default to @20)
///
///  @param searchRange Filter results so only locations within the specified radius will be returned. The distance can either be in miles or kilometers as specified in the distanceUnit parameter. A value of \"0\" (zero) will ignore the radius restriction. (optional, default to @0)
///
///  @param distanceUnit Determines which unit of measurement gets returned for distances: {MILES, KILOMETERS} (optional, default to @"MILES")
///
///  @returns NSArray<OAIPreferredLocationResponse>*
///
-(NSURLSessionTask*) getPreferredLocationsWithVersion: (NSNumber*) version
    accountId: (NSNumber*) accountId
    latitude: (NSNumber*) latitude
    longitude: (NSNumber*) longitude
    dateCheck: (NSNumber*) dateCheck
    hourCheck: (NSString*) hourCheck
    sortField: (NSString*) sortField
    descending: (NSNumber*) descending
    start: (NSNumber*) start
    limit: (NSNumber*) limit
    searchRange: (NSNumber*) searchRange
    distanceUnit: (NSString*) distanceUnit
    completionHandler: (void (^)(NSArray<OAIPreferredLocationResponse>* output, NSError* error)) handler {
    // verify the required parameter 'version' is set
    if (version == nil) {
        NSParameterAssert(version);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"version"] };
            NSError* error = [NSError errorWithDomain:kOAITrackingApiErrorDomain code:kOAITrackingApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kOAITrackingApiErrorDomain code:kOAITrackingApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/{version}/tracking/preferred/search"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (version != nil) {
        pathParams[@"version"] = version;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        queryParams[@"accountId"] = accountId;
    }
    if (latitude != nil) {
        queryParams[@"latitude"] = latitude;
    }
    if (longitude != nil) {
        queryParams[@"longitude"] = longitude;
    }
    if (dateCheck != nil) {
        queryParams[@"dateCheck"] = dateCheck;
    }
    if (hourCheck != nil) {
        queryParams[@"hourCheck"] = hourCheck;
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
    if (searchRange != nil) {
        queryParams[@"searchRange"] = searchRange;
    }
    if (distanceUnit != nil) {
        queryParams[@"distanceUnit"] = distanceUnit;
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
                              responseType: @"NSArray<OAIPreferredLocationResponse>*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSArray<OAIPreferredLocationResponse>*)data, error);
                                }
                            }];
}

///
/// Search Tracking
/// Retrieve tracking data to be able to show where a user has been.
///  @param version  
///
///  @param deviceId the device id (deviceId or accountId required) (optional)
///
///  @param accountId the account id of the user (deviceId or accountId required) (optional)
///
///  @param ownerId the account id of the person the user wants to tracking data for (optional)
///
///  @param trackingDeviceId the id of the tracking device (optional)
///
///  @param startDate the start date in (UTC milliseconds) to filter the tracking results. If no startDate is passed in, the last 30 days will be returned. (optional)
///
///  @param endDate the end date in (UTC milliseconds) to filter the tracking results (optional)
///
///  @param tags filter results by tag (optional)
///
///  @param getLastPoint gets the last known location of the user (optional, default to @(NO))
///
///  @returns NSArray<OAILegResponse>*
///
-(NSURLSessionTask*) getTrackingLegsWithVersion: (NSNumber*) version
    deviceId: (NSString*) deviceId
    accountId: (NSNumber*) accountId
    ownerId: (NSNumber*) ownerId
    trackingDeviceId: (NSString*) trackingDeviceId
    startDate: (NSNumber*) startDate
    endDate: (NSNumber*) endDate
    tags: (NSString*) tags
    getLastPoint: (NSNumber*) getLastPoint
    completionHandler: (void (^)(NSArray<OAILegResponse>* output, NSError* error)) handler {
    // verify the required parameter 'version' is set
    if (version == nil) {
        NSParameterAssert(version);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"version"] };
            NSError* error = [NSError errorWithDomain:kOAITrackingApiErrorDomain code:kOAITrackingApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/{version}/tracking/search"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (version != nil) {
        pathParams[@"version"] = version;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (deviceId != nil) {
        queryParams[@"deviceId"] = deviceId;
    }
    if (accountId != nil) {
        queryParams[@"accountId"] = accountId;
    }
    if (ownerId != nil) {
        queryParams[@"ownerId"] = ownerId;
    }
    if (trackingDeviceId != nil) {
        queryParams[@"trackingDeviceId"] = trackingDeviceId;
    }
    if (startDate != nil) {
        queryParams[@"startDate"] = startDate;
    }
    if (endDate != nil) {
        queryParams[@"endDate"] = endDate;
    }
    if (tags != nil) {
        queryParams[@"tags"] = tags;
    }
    if (getLastPoint != nil) {
        queryParams[@"getLastPoint"] = [getLastPoint isEqual:@(YES)] ? @"true" : @"false";
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
                              responseType: @"NSArray<OAILegResponse>*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSArray<OAILegResponse>*)data, error);
                                }
                            }];
}

///
/// Create Tracking Leg
/// Send tracking points to be able to generate pathing data
///  @param version  
///
///  @param startLat the latitude of the first point 
///
///  @param startLng the longitude of the first point 
///
///  @param startDate the start date (in UTC milliseconds) of the first point 
///
///  @param endLat the latitude of the last point 
///
///  @param endLng the longitude of the last point 
///
///  @param endDate the end date (in UTC milliseconds) of the last point 
///
///  @param deviceId the device id (deviceId or accountId required) (optional)
///
///  @param accountId the account id of the user (deviceId or accountId required) (optional)
///
///  @param distance the total distance (optional)
///
///  @param duration the total duration (optional)
///
///  @param steps JSON array of tracking vectors used for smoother pathing data. If null then the leg data will be used to generate a single step, if an empty array then no steps will be generated. ```json [{   \"distance\": \"0.03\",   \"duration\": \"5000\",   \"startLat\": \"47.614603\",   \"startLng\": \"-122.350518\",   \"startDate\": \"1361924010000\",   \"endLat\": \"47.614941\",   \"endLng\": \"-122.350062\",   \"endDate\": \"1361924015000\" }] ```  (optional)
///
///  @param tags name the leg for searching (optional)
///
///  @returns OAISirqulResponse*
///
-(NSURLSessionTask*) saveTrackingLegWithVersion: (NSNumber*) version
    startLat: (NSNumber*) startLat
    startLng: (NSNumber*) startLng
    startDate: (NSNumber*) startDate
    endLat: (NSNumber*) endLat
    endLng: (NSNumber*) endLng
    endDate: (NSNumber*) endDate
    deviceId: (NSString*) deviceId
    accountId: (NSNumber*) accountId
    distance: (NSNumber*) distance
    duration: (NSNumber*) duration
    steps: (NSString*) steps
    tags: (NSString*) tags
    completionHandler: (void (^)(OAISirqulResponse* output, NSError* error)) handler {
    // verify the required parameter 'version' is set
    if (version == nil) {
        NSParameterAssert(version);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"version"] };
            NSError* error = [NSError errorWithDomain:kOAITrackingApiErrorDomain code:kOAITrackingApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'startLat' is set
    if (startLat == nil) {
        NSParameterAssert(startLat);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"startLat"] };
            NSError* error = [NSError errorWithDomain:kOAITrackingApiErrorDomain code:kOAITrackingApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'startLng' is set
    if (startLng == nil) {
        NSParameterAssert(startLng);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"startLng"] };
            NSError* error = [NSError errorWithDomain:kOAITrackingApiErrorDomain code:kOAITrackingApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'startDate' is set
    if (startDate == nil) {
        NSParameterAssert(startDate);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"startDate"] };
            NSError* error = [NSError errorWithDomain:kOAITrackingApiErrorDomain code:kOAITrackingApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'endLat' is set
    if (endLat == nil) {
        NSParameterAssert(endLat);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"endLat"] };
            NSError* error = [NSError errorWithDomain:kOAITrackingApiErrorDomain code:kOAITrackingApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'endLng' is set
    if (endLng == nil) {
        NSParameterAssert(endLng);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"endLng"] };
            NSError* error = [NSError errorWithDomain:kOAITrackingApiErrorDomain code:kOAITrackingApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'endDate' is set
    if (endDate == nil) {
        NSParameterAssert(endDate);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"endDate"] };
            NSError* error = [NSError errorWithDomain:kOAITrackingApiErrorDomain code:kOAITrackingApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/{version}/tracking/leg/create"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (version != nil) {
        pathParams[@"version"] = version;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (deviceId != nil) {
        queryParams[@"deviceId"] = deviceId;
    }
    if (accountId != nil) {
        queryParams[@"accountId"] = accountId;
    }
    if (distance != nil) {
        queryParams[@"distance"] = distance;
    }
    if (duration != nil) {
        queryParams[@"duration"] = duration;
    }
    if (startLat != nil) {
        queryParams[@"startLat"] = startLat;
    }
    if (startLng != nil) {
        queryParams[@"startLng"] = startLng;
    }
    if (startDate != nil) {
        queryParams[@"startDate"] = startDate;
    }
    if (endLat != nil) {
        queryParams[@"endLat"] = endLat;
    }
    if (endLng != nil) {
        queryParams[@"endLng"] = endLng;
    }
    if (endDate != nil) {
        queryParams[@"endDate"] = endDate;
    }
    if (steps != nil) {
        queryParams[@"steps"] = steps;
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
                              responseType: @"OAISirqulResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAISirqulResponse*)data, error);
                                }
                            }];
}

///
/// Create Tracking Step
/// Send tracking points to be able to generate pathing data
///  @param version  
///
///  @param legId the leg to add the step to 
///
///  @param startLat the latitude of the first point 
///
///  @param startLng the longitude of the first point 
///
///  @param startDate the start date (in UTC milliseconds) of the first point 
///
///  @param endLat the latitude of the last point 
///
///  @param endLng the longitude of the last point 
///
///  @param endDate the end date (in UTC milliseconds) of the last point 
///
///  @param deviceId the device id (deviceId or accountId required) (optional)
///
///  @param accountId the account id of the user (deviceId or accountId required) (optional)
///
///  @param distance the total distance (optional)
///
///  @param duration the total duration (optional)
///
///  @returns OAISirqulResponse*
///
-(NSURLSessionTask*) saveTrackingStepWithVersion: (NSNumber*) version
    legId: (NSNumber*) legId
    startLat: (NSNumber*) startLat
    startLng: (NSNumber*) startLng
    startDate: (NSNumber*) startDate
    endLat: (NSNumber*) endLat
    endLng: (NSNumber*) endLng
    endDate: (NSNumber*) endDate
    deviceId: (NSString*) deviceId
    accountId: (NSNumber*) accountId
    distance: (NSNumber*) distance
    duration: (NSNumber*) duration
    completionHandler: (void (^)(OAISirqulResponse* output, NSError* error)) handler {
    // verify the required parameter 'version' is set
    if (version == nil) {
        NSParameterAssert(version);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"version"] };
            NSError* error = [NSError errorWithDomain:kOAITrackingApiErrorDomain code:kOAITrackingApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'legId' is set
    if (legId == nil) {
        NSParameterAssert(legId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"legId"] };
            NSError* error = [NSError errorWithDomain:kOAITrackingApiErrorDomain code:kOAITrackingApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'startLat' is set
    if (startLat == nil) {
        NSParameterAssert(startLat);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"startLat"] };
            NSError* error = [NSError errorWithDomain:kOAITrackingApiErrorDomain code:kOAITrackingApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'startLng' is set
    if (startLng == nil) {
        NSParameterAssert(startLng);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"startLng"] };
            NSError* error = [NSError errorWithDomain:kOAITrackingApiErrorDomain code:kOAITrackingApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'startDate' is set
    if (startDate == nil) {
        NSParameterAssert(startDate);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"startDate"] };
            NSError* error = [NSError errorWithDomain:kOAITrackingApiErrorDomain code:kOAITrackingApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'endLat' is set
    if (endLat == nil) {
        NSParameterAssert(endLat);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"endLat"] };
            NSError* error = [NSError errorWithDomain:kOAITrackingApiErrorDomain code:kOAITrackingApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'endLng' is set
    if (endLng == nil) {
        NSParameterAssert(endLng);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"endLng"] };
            NSError* error = [NSError errorWithDomain:kOAITrackingApiErrorDomain code:kOAITrackingApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'endDate' is set
    if (endDate == nil) {
        NSParameterAssert(endDate);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"endDate"] };
            NSError* error = [NSError errorWithDomain:kOAITrackingApiErrorDomain code:kOAITrackingApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/{version}/tracking/step/create"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (version != nil) {
        pathParams[@"version"] = version;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (deviceId != nil) {
        queryParams[@"deviceId"] = deviceId;
    }
    if (accountId != nil) {
        queryParams[@"accountId"] = accountId;
    }
    if (legId != nil) {
        queryParams[@"legId"] = legId;
    }
    if (distance != nil) {
        queryParams[@"distance"] = distance;
    }
    if (duration != nil) {
        queryParams[@"duration"] = duration;
    }
    if (startLat != nil) {
        queryParams[@"startLat"] = startLat;
    }
    if (startLng != nil) {
        queryParams[@"startLng"] = startLng;
    }
    if (startDate != nil) {
        queryParams[@"startDate"] = startDate;
    }
    if (endLat != nil) {
        queryParams[@"endLat"] = endLat;
    }
    if (endLng != nil) {
        queryParams[@"endLng"] = endLng;
    }
    if (endDate != nil) {
        queryParams[@"endDate"] = endDate;
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
/// List Tracking
/// Search for all accounts that have tracking legs data by the given constraints.
///  @param version  
///
///  @param accountId The account id of the user 
///
///  @param keyword Used for LIKE search of first or last name on the acocunt (optional)
///
///  @param startDate Range to begin in UTC milliseconds (optional)
///
///  @param endDate Range to end in UTC milliseconds (optional)
///
///  @param tags Exact match on tag field of Legs's searchTag (optional)
///
///  @param audienceIds  (optional)
///
///  @param latitude Origin latitude to perform searching constraints with given range (optional)
///
///  @param longitude Origin longitude to perform searching constraints with given range (optional)
///
///  @param range The radius, in miles, to perform the search for (optional, default to @5)
///
///  @param sortField The column to sort the search on. Possible values include: {LEG_START_DATE, ACCOUNT_DISPLAY} (optional, default to @"LEG_START_DATE")
///
///  @param descending The order to return the results. Default is false, which will return the results in ascending order. (optional, default to @(YES))
///
///  @param start The index into the record set to start with. Default is 0. (optional, default to @0)
///
///  @param limit The total number of records to return. Default is 20. (optional, default to @20)
///
///  @param activeOnly Determines whether to return only active results. Default is false. (optional, default to @(NO))
///
///  @returns NSArray<OAIAccountMiniResponse>*
///
-(NSURLSessionTask*) searchAccountsWithTrackingLegsWithVersion: (NSNumber*) version
    accountId: (NSNumber*) accountId
    keyword: (NSString*) keyword
    startDate: (NSNumber*) startDate
    endDate: (NSNumber*) endDate
    tags: (NSString*) tags
    audienceIds: (NSString*) audienceIds
    latitude: (NSNumber*) latitude
    longitude: (NSNumber*) longitude
    range: (NSNumber*) range
    sortField: (NSString*) sortField
    descending: (NSNumber*) descending
    start: (NSNumber*) start
    limit: (NSNumber*) limit
    activeOnly: (NSNumber*) activeOnly
    completionHandler: (void (^)(NSArray<OAIAccountMiniResponse>* output, NSError* error)) handler {
    // verify the required parameter 'version' is set
    if (version == nil) {
        NSParameterAssert(version);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"version"] };
            NSError* error = [NSError errorWithDomain:kOAITrackingApiErrorDomain code:kOAITrackingApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kOAITrackingApiErrorDomain code:kOAITrackingApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/{version}/tracking/list"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (version != nil) {
        pathParams[@"version"] = version;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        queryParams[@"accountId"] = accountId;
    }
    if (keyword != nil) {
        queryParams[@"keyword"] = keyword;
    }
    if (startDate != nil) {
        queryParams[@"startDate"] = startDate;
    }
    if (endDate != nil) {
        queryParams[@"endDate"] = endDate;
    }
    if (tags != nil) {
        queryParams[@"tags"] = tags;
    }
    if (audienceIds != nil) {
        queryParams[@"audienceIds"] = audienceIds;
    }
    if (latitude != nil) {
        queryParams[@"latitude"] = latitude;
    }
    if (longitude != nil) {
        queryParams[@"longitude"] = longitude;
    }
    if (range != nil) {
        queryParams[@"range"] = range;
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
                              responseType: @"NSArray<OAIAccountMiniResponse>*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSArray<OAIAccountMiniResponse>*)data, error);
                                }
                            }];
}

///
/// Search Tracking (Billable)
/// Retrieve tracking data for billable/account scoped queries.
///  @param version  
///
///  @param accountId The account id to search tracking for 
///
///  @param appKey The application key 
///
///  @param trackingDeviceId The id of the tracking device (optional)
///
///  @param startDate The start date in (UTC milliseconds) to filter the tracking results (optional)
///
///  @param endDate The end date in (UTC milliseconds) to filter the tracking results (optional)
///
///  @param tags Filter results by tag (optional)
///
///  @param start The start index for pagination (optional, default to @0)
///
///  @param limit The limit for pagination (optional, default to @100)
///
///  @returns NSArray<OAILegResponse>*
///
-(NSURLSessionTask*) searchTrackingLegsWithVersion: (NSNumber*) version
    accountId: (NSNumber*) accountId
    appKey: (NSString*) appKey
    trackingDeviceId: (NSString*) trackingDeviceId
    startDate: (NSNumber*) startDate
    endDate: (NSNumber*) endDate
    tags: (NSString*) tags
    start: (NSNumber*) start
    limit: (NSNumber*) limit
    completionHandler: (void (^)(NSArray<OAILegResponse>* output, NSError* error)) handler {
    // verify the required parameter 'version' is set
    if (version == nil) {
        NSParameterAssert(version);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"version"] };
            NSError* error = [NSError errorWithDomain:kOAITrackingApiErrorDomain code:kOAITrackingApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kOAITrackingApiErrorDomain code:kOAITrackingApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'appKey' is set
    if (appKey == nil) {
        NSParameterAssert(appKey);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"appKey"] };
            NSError* error = [NSError errorWithDomain:kOAITrackingApiErrorDomain code:kOAITrackingApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/{version}/tracking/searchByBillable"];

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
    if (trackingDeviceId != nil) {
        queryParams[@"trackingDeviceId"] = trackingDeviceId;
    }
    if (startDate != nil) {
        queryParams[@"startDate"] = startDate;
    }
    if (endDate != nil) {
        queryParams[@"endDate"] = endDate;
    }
    if (tags != nil) {
        queryParams[@"tags"] = tags;
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
                              responseType: @"NSArray<OAILegResponse>*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSArray<OAILegResponse>*)data, error);
                                }
                            }];
}



@end
