#import "OAILocationApi.h"
#import "OAIQueryParamCollection.h"
#import "OAIApiClient.h"
#import "OAICoordsResponse.h"
#import "OAIGeoPointResponse.h"
#import "OAILocationSearchResponse.h"
#import "OAISirqulResponse.h"
#import "OAITrilatCacheRequest.h"


@interface OAILocationApi ()

@property (nonatomic, strong, readwrite) NSMutableDictionary *mutableDefaultHeaders;

@end

@implementation OAILocationApi

NSString* kOAILocationApiErrorDomain = @"OAILocationApiErrorDomain";
NSInteger kOAILocationApiMissingParamErrorCode = 234513;

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
/// Create Trilateration Data with File
/// Creates trilateration samples for a source device (i.e. a router).
///  @param version  
///
///  @param udid The unique identifier of the source device 
///
///  @param sourceTime The current timestamp of the source device (optional)
///
///  @param minimumSampleSize the minimum number of Edysen devices that must be used to be able to trilaterate a device (optional)
///
///  @param data The json formated sample data:  ```json {    \"count\": 2,   \"timespan\": 10,    \"samples\": [     {       \"deviceId\": \"device1\",       \"randomizedId\": true,        \"deviceSignature\": \"probe:xyz...\",        \"alternativeId\":\"adc123\",        \"rssi\": [-63, -75]     },      {       \"deviceId\": \"device2\",       \"randomizedId\": true,        \"deviceSignature\": \"probe:xyz...\",        \"alternativeId\": \"adc123\",        \"rssi\": [-83, -79]     }   ] } ```  (optional)
///
///  @param dataFile Binary file containing data (multipart upload) (optional)
///
///  @returns OAISirqulResponse*
///
-(NSURLSessionTask*) cacheTrilaterationDataWithVersion: (NSNumber*) version
    udid: (NSString*) udid
    sourceTime: (NSNumber*) sourceTime
    minimumSampleSize: (NSNumber*) minimumSampleSize
    data: (NSString*) data
    dataFile: (NSURL*) dataFile
    completionHandler: (void (^)(OAISirqulResponse* output, NSError* error)) handler {
    // verify the required parameter 'version' is set
    if (version == nil) {
        NSParameterAssert(version);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"version"] };
            NSError* error = [NSError errorWithDomain:kOAILocationApiErrorDomain code:kOAILocationApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'udid' is set
    if (udid == nil) {
        NSParameterAssert(udid);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"udid"] };
            NSError* error = [NSError errorWithDomain:kOAILocationApiErrorDomain code:kOAILocationApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/{version}/location/trilaterate/cache"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (version != nil) {
        pathParams[@"version"] = version;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (udid != nil) {
        queryParams[@"udid"] = udid;
    }
    if (sourceTime != nil) {
        queryParams[@"sourceTime"] = sourceTime;
    }
    if (minimumSampleSize != nil) {
        queryParams[@"minimumSampleSize"] = minimumSampleSize;
    }
    if (data != nil) {
        queryParams[@"data"] = data;
    }
    if (dataFile != nil) {
        queryParams[@"dataFile"] = dataFile;
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
/// Create Trilateration Data with Rest
/// Creates trilateration samples for a source device (i.e. a router).
///  @param version  
///
///  @param body  (optional)
///
///  @returns OAISirqulResponse*
///
-(NSURLSessionTask*) cacheTrilaterationDataGzipWithVersion: (NSNumber*) version
    body: (OAITrilatCacheRequest*) body
    completionHandler: (void (^)(OAISirqulResponse* output, NSError* error)) handler {
    // verify the required parameter 'version' is set
    if (version == nil) {
        NSParameterAssert(version);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"version"] };
            NSError* error = [NSError errorWithDomain:kOAILocationApiErrorDomain code:kOAILocationApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/{version}/location/trilaterate/cache/submit"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (version != nil) {
        pathParams[@"version"] = version;
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
                              responseType: @"OAISirqulResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAISirqulResponse*)data, error);
                                }
                            }];
}

///
/// Get Location by IP
/// Get location information based on an IP address.
///  @param version  
///
///  @param ip the ip address of the client device (optional)
///
///  @returns OAICoordsResponse*
///
-(NSURLSessionTask*) getLocationByIpWithVersion: (NSNumber*) version
    ip: (NSString*) ip
    completionHandler: (void (^)(OAICoordsResponse* output, NSError* error)) handler {
    // verify the required parameter 'version' is set
    if (version == nil) {
        NSParameterAssert(version);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"version"] };
            NSError* error = [NSError errorWithDomain:kOAILocationApiErrorDomain code:kOAILocationApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/{version}/location/ip"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (version != nil) {
        pathParams[@"version"] = version;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (ip != nil) {
        queryParams[@"ip"] = ip;
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
                              responseType: @"OAICoordsResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAICoordsResponse*)data, error);
                                }
                            }];
}

///
/// Get Location by Trilateration
/// Send in device data and calculate a position based on signal strengths.
///  @param version  
///
///  @param accountId The account making the request, if provided the last know location will be updated (optional)
///
///  @param latitude The known GPS latitude to compare to the calculated version (optional)
///
///  @param longitude The known GPS longitude to compare to the calculated version (optional)
///
///  @param data The json formated sample data:  ```json {    \"count\": 2,   \"timespan\": 10,    \"samples\": [     {       \"deviceId\": \"device1\",       \"rssi\": [-63, -75]     },      {       \"deviceId\": \"device2\",       \"rssi\": [-83, -79]     }   ] } ```  (optional)
///
///  @param responseFilters Optional response filters (not used currently) (optional)
///
///  @returns OAIGeoPointResponse*
///
-(NSURLSessionTask*) getLocationByTrilaterationWithVersion: (NSNumber*) version
    accountId: (NSNumber*) accountId
    latitude: (NSNumber*) latitude
    longitude: (NSNumber*) longitude
    data: (NSString*) data
    responseFilters: (NSString*) responseFilters
    completionHandler: (void (^)(OAIGeoPointResponse* output, NSError* error)) handler {
    // verify the required parameter 'version' is set
    if (version == nil) {
        NSParameterAssert(version);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"version"] };
            NSError* error = [NSError errorWithDomain:kOAILocationApiErrorDomain code:kOAILocationApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/{version}/account/location/trilaterate"];

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
    if (data != nil) {
        queryParams[@"data"] = data;
    }
    if (responseFilters != nil) {
        queryParams[@"responseFilters"] = responseFilters;
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
                              responseType: @"OAIGeoPointResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIGeoPointResponse*)data, error);
                                }
                            }];
}

///
/// Search Regions or Postal Codes
/// Searches geographic locations by proximity via address or keyword.
///  @param version  
///
///  @param deviceId the device id (optional)
///
///  @param accountId the account id (optional)
///
///  @param currentlatitude This parameter is deprecated. (optional)
///
///  @param currentlongitude This parameter is deprecated. (optional)
///
///  @param currentLatitude the current latitude of the user (optional)
///
///  @param currentLongitude the current longitude of the user (optional)
///
///  @param query the query results by keyword or address (optional)
///
///  @param zipcode This parameter is deprecated. (optional)
///
///  @param zipCode the zip code to filter results (optional)
///
///  @param selectedMaplatitude This parameter is deprecated. (optional)
///
///  @param selectedMaplongitude This parameter is deprecated. (optional)
///
///  @param selectedMapLatitude the latitude of where the search should originate from (optional)
///
///  @param selectedMapLongitude the longitude of where the search should originate from (optional)
///
///  @param searchRange the search range of the search in miles (optional, default to @5)
///
///  @param useGeocode determines whether to allow searches via address (optional, default to @(NO))
///
///  @param i This parameter is deprecated. (optional)
///
///  @param start the start index for pagination (optional, default to @0)
///
///  @param l This parameter is deprecated. (optional)
///
///  @param limit the limit for pagination (optional, default to @20)
///
///  @returns OAILocationSearchResponse*
///
-(NSURLSessionTask*) getLocationsWithVersion: (NSNumber*) version
    deviceId: (NSString*) deviceId
    accountId: (NSNumber*) accountId
    currentlatitude: (NSNumber*) currentlatitude
    currentlongitude: (NSNumber*) currentlongitude
    currentLatitude: (NSNumber*) currentLatitude
    currentLongitude: (NSNumber*) currentLongitude
    query: (NSString*) query
    zipcode: (NSString*) zipcode
    zipCode: (NSString*) zipCode
    selectedMaplatitude: (NSNumber*) selectedMaplatitude
    selectedMaplongitude: (NSNumber*) selectedMaplongitude
    selectedMapLatitude: (NSNumber*) selectedMapLatitude
    selectedMapLongitude: (NSNumber*) selectedMapLongitude
    searchRange: (NSNumber*) searchRange
    useGeocode: (NSNumber*) useGeocode
    i: (NSNumber*) i
    start: (NSNumber*) start
    l: (NSNumber*) l
    limit: (NSNumber*) limit
    completionHandler: (void (^)(OAILocationSearchResponse* output, NSError* error)) handler {
    // verify the required parameter 'version' is set
    if (version == nil) {
        NSParameterAssert(version);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"version"] };
            NSError* error = [NSError errorWithDomain:kOAILocationApiErrorDomain code:kOAILocationApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/{version}/location/search"];

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
    if (currentlatitude != nil) {
        queryParams[@"currentlatitude"] = currentlatitude;
    }
    if (currentlongitude != nil) {
        queryParams[@"currentlongitude"] = currentlongitude;
    }
    if (currentLatitude != nil) {
        queryParams[@"currentLatitude"] = currentLatitude;
    }
    if (currentLongitude != nil) {
        queryParams[@"currentLongitude"] = currentLongitude;
    }
    if (query != nil) {
        queryParams[@"query"] = query;
    }
    if (zipcode != nil) {
        queryParams[@"zipcode"] = zipcode;
    }
    if (zipCode != nil) {
        queryParams[@"zipCode"] = zipCode;
    }
    if (selectedMaplatitude != nil) {
        queryParams[@"selectedMaplatitude"] = selectedMaplatitude;
    }
    if (selectedMaplongitude != nil) {
        queryParams[@"selectedMaplongitude"] = selectedMaplongitude;
    }
    if (selectedMapLatitude != nil) {
        queryParams[@"selectedMapLatitude"] = selectedMapLatitude;
    }
    if (selectedMapLongitude != nil) {
        queryParams[@"selectedMapLongitude"] = selectedMapLongitude;
    }
    if (searchRange != nil) {
        queryParams[@"searchRange"] = searchRange;
    }
    if (useGeocode != nil) {
        queryParams[@"useGeocode"] = [useGeocode isEqual:@(YES)] ? @"true" : @"false";
    }
    if (i != nil) {
        queryParams[@"_i"] = i;
    }
    if (start != nil) {
        queryParams[@"start"] = start;
    }
    if (l != nil) {
        queryParams[@"_l"] = l;
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
                              responseType: @"OAILocationSearchResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAILocationSearchResponse*)data, error);
                                }
                            }];
}



@end
