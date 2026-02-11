#import "OAIMissionApi.h"
#import "OAIQueryParamCollection.h"
#import "OAIApiClient.h"
#import "OAIMissionFormatResponse.h"
#import "OAIMissionResponse.h"
#import "OAISirqulResponse.h"


@interface OAIMissionApi ()

@property (nonatomic, strong, readwrite) NSMutableDictionary *mutableDefaultHeaders;

@end

@implementation OAIMissionApi

NSString* kOAIMissionApiErrorDomain = @"OAIMissionApiErrorDomain";
NSInteger kOAIMissionApiMissingParamErrorCode = 234513;

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
/// Create Mission
/// Create a user defined mission.
///  @param accountId The logged in user. 
///
///  @param title The title of the mission 
///
///  @param _description The description of the mission (optional)
///
///  @param subType Custom string client apps can use for searching/filtering missions (optional)
///
///  @param startDate The date/time to start the mission, send 0 to unset (optional)
///
///  @param endDate The date/time to end the mission, send 0 to unset (optional)
///
///  @param active Activate/deactivate the mission (optional)
///
///  @param gameLevelIds the game level ids to include in the mission, comma separated (optional)
///
///  @param creativeIds creatives to associate with the mission (optional)
///
///  @param audienceIds audiences to associate with the mission (optional)
///
///  @param missionTask This parameter is deprecated. (optional)
///
///  @param formatType The string identifier for a mission format (this is not the missionFormatId) (optional)
///
///  @param offerId The offerId to give as a reward (optional)
///
///  @param balance Set the amount of money available to spend, once 0 deactivate mission. Set to a negative value for unlimited. (optional)
///
///  @param advancedReporting Flag to mark the mission as eligible for advanced reporting (optional)
///
///  @param allocateTickets Flag to indicate owner should receive tickets for completed missions (optional)
///
///  @param ticketCount The number of tickets to reward (optional)
///
///  @param ticketType The type of ticket to reward, null means default type (optional)
///
///  @param points The number of points to award for completing a mission (optional)
///
///  @param metaData external custom client defined data (optional)
///
///  @param applicationIds Comma separated list of application ids (optional)
///
///  @param devices Deprecated parameter for device names (optional)
///
///  @param deviceIds Comma separated list of device ids (optional)
///
///  @param deviceVersions Comma separated list of device version ranges (optional)
///
///  @param locations List of lat/long pairs for mission locations (optional)
///
///  @param radius Comma separated list of radii for locations (optional)
///
///  @returns OAIMissionResponse*
///
-(NSURLSessionTask*) createMissionWithAccountId: (NSNumber*) accountId
    title: (NSString*) title
    _description: (NSString*) _description
    subType: (NSString*) subType
    startDate: (NSNumber*) startDate
    endDate: (NSNumber*) endDate
    active: (NSNumber*) active
    gameLevelIds: (NSString*) gameLevelIds
    creativeIds: (NSString*) creativeIds
    audienceIds: (NSString*) audienceIds
    missionTask: (NSString*) missionTask
    formatType: (NSString*) formatType
    offerId: (NSNumber*) offerId
    balance: (NSNumber*) balance
    advancedReporting: (NSNumber*) advancedReporting
    allocateTickets: (NSNumber*) allocateTickets
    ticketCount: (NSNumber*) ticketCount
    ticketType: (NSString*) ticketType
    points: (NSNumber*) points
    metaData: (NSString*) metaData
    applicationIds: (NSString*) applicationIds
    devices: (NSString*) devices
    deviceIds: (NSString*) deviceIds
    deviceVersions: (NSString*) deviceVersions
    locations: (NSString*) locations
    radius: (NSString*) radius
    completionHandler: (void (^)(OAIMissionResponse* output, NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kOAIMissionApiErrorDomain code:kOAIMissionApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'title' is set
    if (title == nil) {
        NSParameterAssert(title);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"title"] };
            NSError* error = [NSError errorWithDomain:kOAIMissionApiErrorDomain code:kOAIMissionApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/mission/create"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        queryParams[@"accountId"] = accountId;
    }
    if (title != nil) {
        queryParams[@"title"] = title;
    }
    if (_description != nil) {
        queryParams[@"description"] = _description;
    }
    if (subType != nil) {
        queryParams[@"subType"] = subType;
    }
    if (startDate != nil) {
        queryParams[@"startDate"] = startDate;
    }
    if (endDate != nil) {
        queryParams[@"endDate"] = endDate;
    }
    if (active != nil) {
        queryParams[@"active"] = [active isEqual:@(YES)] ? @"true" : @"false";
    }
    if (gameLevelIds != nil) {
        queryParams[@"gameLevelIds"] = gameLevelIds;
    }
    if (creativeIds != nil) {
        queryParams[@"creativeIds"] = creativeIds;
    }
    if (audienceIds != nil) {
        queryParams[@"audienceIds"] = audienceIds;
    }
    if (missionTask != nil) {
        queryParams[@"missionTask"] = missionTask;
    }
    if (formatType != nil) {
        queryParams[@"formatType"] = formatType;
    }
    if (offerId != nil) {
        queryParams[@"offerId"] = offerId;
    }
    if (balance != nil) {
        queryParams[@"balance"] = balance;
    }
    if (advancedReporting != nil) {
        queryParams[@"advancedReporting"] = [advancedReporting isEqual:@(YES)] ? @"true" : @"false";
    }
    if (allocateTickets != nil) {
        queryParams[@"allocateTickets"] = [allocateTickets isEqual:@(YES)] ? @"true" : @"false";
    }
    if (ticketCount != nil) {
        queryParams[@"ticketCount"] = ticketCount;
    }
    if (ticketType != nil) {
        queryParams[@"ticketType"] = ticketType;
    }
    if (points != nil) {
        queryParams[@"points"] = points;
    }
    if (metaData != nil) {
        queryParams[@"metaData"] = metaData;
    }
    if (applicationIds != nil) {
        queryParams[@"applicationIds"] = applicationIds;
    }
    if (devices != nil) {
        queryParams[@"devices"] = devices;
    }
    if (deviceIds != nil) {
        queryParams[@"deviceIds"] = deviceIds;
    }
    if (deviceVersions != nil) {
        queryParams[@"deviceVersions"] = deviceVersions;
    }
    if (locations != nil) {
        queryParams[@"locations"] = locations;
    }
    if (radius != nil) {
        queryParams[@"radius"] = radius;
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
                              responseType: @"OAIMissionResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIMissionResponse*)data, error);
                                }
                            }];
}

///
/// Delete Mission
/// Delete a mission.
///  @param accountId the id of the logged in user 
///
///  @param missionId the id of the mission to delete 
///
///  @returns OAISirqulResponse*
///
-(NSURLSessionTask*) deleteMissionWithAccountId: (NSNumber*) accountId
    missionId: (NSNumber*) missionId
    completionHandler: (void (^)(OAISirqulResponse* output, NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kOAIMissionApiErrorDomain code:kOAIMissionApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'missionId' is set
    if (missionId == nil) {
        NSParameterAssert(missionId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"missionId"] };
            NSError* error = [NSError errorWithDomain:kOAIMissionApiErrorDomain code:kOAIMissionApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/mission/delete"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        queryParams[@"accountId"] = accountId;
    }
    if (missionId != nil) {
        queryParams[@"missionId"] = missionId;
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
/// Find Missions
/// Get a set of ad filtered by the parameters provided.
///  @param appKey The application key, if provided return missions specific for the app. Will always return mission levels that are app agnostic. 
///
///  @param suffix The type of mission to get, possible values are: click_banner, click_leaderboard, click_skyscraper, click_full, click_video, or click_zip (optional)
///
///  @param type The type of ads to get, possible values are: BANNER, LEADERBOARD, SKYSCRAPER, FULL, VIDEO, ZIP, CONFIG. Use this instead of suffix. (optional)
///
///  @param accountId The logged in user. (optional)
///
///  @param appVersion The version of the application, will not return levels newer than the appVersion. (optional)
///
///  @param latitude The current location of the requesting device (optional)
///
///  @param longitude The current location of the requesting device (optional)
///
///  @param device Should use deviceId if possible. The name of the requesting device; possible values are: Android, iPhone, iPad, iPod, etc. use /audience/devices for list. (optional)
///
///  @param deviceIdentifier The device ID of the requesting device, use /audience/devices for list (optional)
///
///  @param deviceVersion The requesting device version; examples are: 2.3, 5.1.4, 6.1.4. Supports X, X.X, or X.X.X formated string. (optional)
///
///  @param start The index into the record set to start with. (optional)
///
///  @param limit The total number of record to return. (optional)
///
///  @param includeGameData Include the game level data with the mission. (optional)
///
///  @param includeAudiences If true then return the audience data in the response. Default is false. (optional)
///
///  @param allocatesTickets If true/false only return missions whose game levels allocate (or don't allocate) tickets. Do not provide a value to return both. (optional)
///
///  @param randomize return a random set of results, default is true. If false returns in natural order. (optional)
///
///  @param targetedAdsOnly return only ads targeted to the specific app, no global ads. (optional)
///
///  @param missionIds return only ads from the specified campaigns. (optional)
///
///  @param audienceOperator will return the items that have at least 1 or all of their audiences exist in the logged in user’s audiences, depending if the value is OR or AND (optional)
///
///  @returns OAIMissionResponse*
///
-(NSURLSessionTask*) findMissionsWithAppKey: (NSString*) appKey
    suffix: (NSString*) suffix
    type: (NSString*) type
    accountId: (NSNumber*) accountId
    appVersion: (NSString*) appVersion
    latitude: (NSNumber*) latitude
    longitude: (NSNumber*) longitude
    device: (NSString*) device
    deviceIdentifier: (NSNumber*) deviceIdentifier
    deviceVersion: (NSString*) deviceVersion
    start: (NSNumber*) start
    limit: (NSNumber*) limit
    includeGameData: (NSNumber*) includeGameData
    includeAudiences: (NSNumber*) includeAudiences
    allocatesTickets: (NSNumber*) allocatesTickets
    randomize: (NSNumber*) randomize
    targetedAdsOnly: (NSNumber*) targetedAdsOnly
    missionIds: (NSString*) missionIds
    audienceOperator: (NSString*) audienceOperator
    completionHandler: (void (^)(OAIMissionResponse* output, NSError* error)) handler {
    // verify the required parameter 'appKey' is set
    if (appKey == nil) {
        NSParameterAssert(appKey);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"appKey"] };
            NSError* error = [NSError errorWithDomain:kOAIMissionApiErrorDomain code:kOAIMissionApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/mission/find"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (appKey != nil) {
        queryParams[@"appKey"] = appKey;
    }
    if (suffix != nil) {
        queryParams[@"suffix"] = suffix;
    }
    if (type != nil) {
        queryParams[@"type"] = type;
    }
    if (accountId != nil) {
        queryParams[@"accountId"] = accountId;
    }
    if (appVersion != nil) {
        queryParams[@"appVersion"] = appVersion;
    }
    if (latitude != nil) {
        queryParams[@"latitude"] = latitude;
    }
    if (longitude != nil) {
        queryParams[@"longitude"] = longitude;
    }
    if (device != nil) {
        queryParams[@"device"] = device;
    }
    if (deviceIdentifier != nil) {
        queryParams[@"deviceIdentifier"] = deviceIdentifier;
    }
    if (deviceVersion != nil) {
        queryParams[@"deviceVersion"] = deviceVersion;
    }
    if (start != nil) {
        queryParams[@"start"] = start;
    }
    if (limit != nil) {
        queryParams[@"limit"] = limit;
    }
    if (includeGameData != nil) {
        queryParams[@"includeGameData"] = [includeGameData isEqual:@(YES)] ? @"true" : @"false";
    }
    if (includeAudiences != nil) {
        queryParams[@"includeAudiences"] = [includeAudiences isEqual:@(YES)] ? @"true" : @"false";
    }
    if (allocatesTickets != nil) {
        queryParams[@"allocatesTickets"] = [allocatesTickets isEqual:@(YES)] ? @"true" : @"false";
    }
    if (randomize != nil) {
        queryParams[@"randomize"] = [randomize isEqual:@(YES)] ? @"true" : @"false";
    }
    if (targetedAdsOnly != nil) {
        queryParams[@"targetedAdsOnly"] = [targetedAdsOnly isEqual:@(YES)] ? @"true" : @"false";
    }
    if (missionIds != nil) {
        queryParams[@"missionIds"] = missionIds;
    }
    if (audienceOperator != nil) {
        queryParams[@"audienceOperator"] = audienceOperator;
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
                              responseType: @"OAIMissionResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIMissionResponse*)data, error);
                                }
                            }];
}

///
/// Get Mission
/// Get a mission.
///  @param accountId The logged in user. 
///
///  @param missionId The id of the mission to return. 
///
///  @param returnCreative Return creatives associated with the mission when true (optional)
///
///  @returns OAIMissionResponse*
///
-(NSURLSessionTask*) getMissionWithAccountId: (NSNumber*) accountId
    missionId: (NSNumber*) missionId
    returnCreative: (NSNumber*) returnCreative
    completionHandler: (void (^)(OAIMissionResponse* output, NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kOAIMissionApiErrorDomain code:kOAIMissionApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'missionId' is set
    if (missionId == nil) {
        NSParameterAssert(missionId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"missionId"] };
            NSError* error = [NSError errorWithDomain:kOAIMissionApiErrorDomain code:kOAIMissionApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/mission/get"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        queryParams[@"accountId"] = accountId;
    }
    if (missionId != nil) {
        queryParams[@"missionId"] = missionId;
    }
    if (returnCreative != nil) {
        queryParams[@"returnCreative"] = [returnCreative isEqual:@(YES)] ? @"true" : @"false";
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
                              responseType: @"OAIMissionResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIMissionResponse*)data, error);
                                }
                            }];
}

///
/// Import Mission
/// Create a mission using a source item such as an offer location.
///  @param accountId The logged in user. 
///
///  @param latitude The current location of the requesting device 
///
///  @param longitude The current location of the requesting device 
///
///  @param appKey the application key 
///
///  @param keyword the keyword of the mission (optional)
///
///  @param start The starting index in the result set to return. Default is 0. (optional)
///
///  @param limit The total number of records to return. Default is 20. (optional)
///
///  @param adSize the size of the ad (optional)
///
///  @returns OAISirqulResponse*
///
-(NSURLSessionTask*) importMissionWithAccountId: (NSNumber*) accountId
    latitude: (NSNumber*) latitude
    longitude: (NSNumber*) longitude
    appKey: (NSString*) appKey
    keyword: (NSString*) keyword
    start: (NSNumber*) start
    limit: (NSNumber*) limit
    adSize: (NSString*) adSize
    completionHandler: (void (^)(OAISirqulResponse* output, NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kOAIMissionApiErrorDomain code:kOAIMissionApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'latitude' is set
    if (latitude == nil) {
        NSParameterAssert(latitude);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"latitude"] };
            NSError* error = [NSError errorWithDomain:kOAIMissionApiErrorDomain code:kOAIMissionApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'longitude' is set
    if (longitude == nil) {
        NSParameterAssert(longitude);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"longitude"] };
            NSError* error = [NSError errorWithDomain:kOAIMissionApiErrorDomain code:kOAIMissionApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'appKey' is set
    if (appKey == nil) {
        NSParameterAssert(appKey);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"appKey"] };
            NSError* error = [NSError errorWithDomain:kOAIMissionApiErrorDomain code:kOAIMissionApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/mission/import"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

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
    if (keyword != nil) {
        queryParams[@"keyword"] = keyword;
    }
    if (start != nil) {
        queryParams[@"start"] = start;
    }
    if (limit != nil) {
        queryParams[@"limit"] = limit;
    }
    if (appKey != nil) {
        queryParams[@"appKey"] = appKey;
    }
    if (adSize != nil) {
        queryParams[@"adSize"] = adSize;
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
/// Search Mission Formats
/// Searches on pre-defined mission formats
///  @param start The starting index in the result set to return. Default is 0. 
///
///  @param limit The total number of records to return. Default is 20. 
///
///  @param activeOnly Determines whether to return only active results. Default is false. 
///
///  @returns NSArray<OAIMissionFormatResponse>*
///
-(NSURLSessionTask*) searchMissionFormatsWithStart: (NSNumber*) start
    limit: (NSNumber*) limit
    activeOnly: (NSNumber*) activeOnly
    completionHandler: (void (^)(NSArray<OAIMissionFormatResponse>* output, NSError* error)) handler {
    // verify the required parameter 'start' is set
    if (start == nil) {
        NSParameterAssert(start);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"start"] };
            NSError* error = [NSError errorWithDomain:kOAIMissionApiErrorDomain code:kOAIMissionApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'limit' is set
    if (limit == nil) {
        NSParameterAssert(limit);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"limit"] };
            NSError* error = [NSError errorWithDomain:kOAIMissionApiErrorDomain code:kOAIMissionApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'activeOnly' is set
    if (activeOnly == nil) {
        NSParameterAssert(activeOnly);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"activeOnly"] };
            NSError* error = [NSError errorWithDomain:kOAIMissionApiErrorDomain code:kOAIMissionApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/mission/format/search"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
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
                              responseType: @"NSArray<OAIMissionFormatResponse>*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSArray<OAIMissionFormatResponse>*)data, error);
                                }
                            }];
}

///
/// Search Missions
/// Get the list missions available to the account.  
///  @param accountId The logged in user. 
///
///  @param keyword Filter by keyword (optional)
///
///  @param subType Custom string client apps can use for searching/filtering missions (optional)
///
///  @param start The index into the record set to start with. Default is 0. (optional)
///
///  @param limit The total number of record to return. Default is 20, maximum is 100. (optional)
///
///  @param includeGameData If true then return the game level data in the response. Default is false. (optional)
///
///  @param includeAudiences If true then return the audience data in the response. Default is false. (optional)
///
///  @param includeInactive If true then include inactive missions. Default is false. (optional)
///
///  @param suffix A list of game types to include; click_leaderboard, click_banner, click_skyscraper, click_full, click_video, click_zip, create, vote, question, invite, share, json, xml (optional)
///
///  @param sortField The field to sort the search on (for example TITLE) (optional)
///
///  @param descending Whether to sort in descending order (default true) (optional)
///
///  @returns NSArray<OAIMissionResponse>*
///
-(NSURLSessionTask*) searchMissionsWithAccountId: (NSNumber*) accountId
    keyword: (NSString*) keyword
    subType: (NSString*) subType
    start: (NSNumber*) start
    limit: (NSNumber*) limit
    includeGameData: (NSNumber*) includeGameData
    includeAudiences: (NSNumber*) includeAudiences
    includeInactive: (NSNumber*) includeInactive
    suffix: (NSString*) suffix
    sortField: (NSString*) sortField
    descending: (NSNumber*) descending
    completionHandler: (void (^)(NSArray<OAIMissionResponse>* output, NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kOAIMissionApiErrorDomain code:kOAIMissionApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/mission/search"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        queryParams[@"accountId"] = accountId;
    }
    if (keyword != nil) {
        queryParams[@"keyword"] = keyword;
    }
    if (subType != nil) {
        queryParams[@"subType"] = subType;
    }
    if (start != nil) {
        queryParams[@"start"] = start;
    }
    if (limit != nil) {
        queryParams[@"limit"] = limit;
    }
    if (includeGameData != nil) {
        queryParams[@"includeGameData"] = [includeGameData isEqual:@(YES)] ? @"true" : @"false";
    }
    if (includeAudiences != nil) {
        queryParams[@"includeAudiences"] = [includeAudiences isEqual:@(YES)] ? @"true" : @"false";
    }
    if (includeInactive != nil) {
        queryParams[@"includeInactive"] = [includeInactive isEqual:@(YES)] ? @"true" : @"false";
    }
    if (suffix != nil) {
        queryParams[@"suffix"] = suffix;
    }
    if (sortField != nil) {
        queryParams[@"sortField"] = sortField;
    }
    if (descending != nil) {
        queryParams[@"descending"] = [descending isEqual:@(YES)] ? @"true" : @"false";
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
                              responseType: @"NSArray<OAIMissionResponse>*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSArray<OAIMissionResponse>*)data, error);
                                }
                            }];
}

///
/// Search Missions by Billable Entity
/// Use the accountId to determine the associated BillableEntity.  From there get a list of all accounts associated as managers.  Get the list missions owned by all associated managers.
///  @param accountId The logged in user. 
///
///  @param keyword Filter by keyword (optional)
///
///  @param start The index into the record set to start with. Default is 0. (optional)
///
///  @param limit The total number of record to return. Default id 20. (optional)
///
///  @param includeGameData If true then return the game level data in the response. Default is false. (optional)
///
///  @param includeAudiences If true then return the audience data in the response. Default is false. (optional)
///
///  @param includeInactive If true then include inactive missions. Default is false. (optional)
///
///  @param suffix A list of game types to include; click_leaderboard, click_banner, click_skyscraper, click_full, click_video, click_zip, create, vote, question, invite, share, json, xml (optional)
///
///  @param sortField The field to sort the search on (for example TITLE) (optional)
///
///  @param descending Whether to sort in descending order (default true) (optional)
///
///  @returns NSArray<OAIMissionResponse>*
///
-(NSURLSessionTask*) searchMissionsByBillableEntityWithAccountId: (NSNumber*) accountId
    keyword: (NSString*) keyword
    start: (NSNumber*) start
    limit: (NSNumber*) limit
    includeGameData: (NSNumber*) includeGameData
    includeAudiences: (NSNumber*) includeAudiences
    includeInactive: (NSNumber*) includeInactive
    suffix: (NSString*) suffix
    sortField: (NSString*) sortField
    descending: (NSNumber*) descending
    completionHandler: (void (^)(NSArray<OAIMissionResponse>* output, NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kOAIMissionApiErrorDomain code:kOAIMissionApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/mission/searchByBillableEntity"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        queryParams[@"accountId"] = accountId;
    }
    if (keyword != nil) {
        queryParams[@"keyword"] = keyword;
    }
    if (start != nil) {
        queryParams[@"start"] = start;
    }
    if (limit != nil) {
        queryParams[@"limit"] = limit;
    }
    if (includeGameData != nil) {
        queryParams[@"includeGameData"] = [includeGameData isEqual:@(YES)] ? @"true" : @"false";
    }
    if (includeAudiences != nil) {
        queryParams[@"includeAudiences"] = [includeAudiences isEqual:@(YES)] ? @"true" : @"false";
    }
    if (includeInactive != nil) {
        queryParams[@"includeInactive"] = [includeInactive isEqual:@(YES)] ? @"true" : @"false";
    }
    if (suffix != nil) {
        queryParams[@"suffix"] = suffix;
    }
    if (sortField != nil) {
        queryParams[@"sortField"] = sortField;
    }
    if (descending != nil) {
        queryParams[@"descending"] = [descending isEqual:@(YES)] ? @"true" : @"false";
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
                              responseType: @"NSArray<OAIMissionResponse>*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSArray<OAIMissionResponse>*)data, error);
                                }
                            }];
}

///
/// Update Mission
/// Update a mission.
///  @param accountId The logged in user. 
///
///  @param missionId The id of the mission to update. 
///
///  @param title The title of the mission (optional)
///
///  @param _description The description of the mission (optional)
///
///  @param subType Custom string client apps can use for searching/filtering missions (optional)
///
///  @param metaData external custom client defined data (optional)
///
///  @param startDate The date/time to start the mission, send 0 to unset (optional)
///
///  @param endDate The date/time to end the mission, send 0 to unset (optional)
///
///  @param active Activate/deactivate the mission (optional)
///
///  @param gameLevelIds the game level ids to include in the mission, comma separated (optional)
///
///  @param creativeIds  (optional)
///
///  @param audienceIds  (optional)
///
///  @param offerId The offerId to give as a reward (optional)
///
///  @param balance Replace the amount of money available to spend, once 0 deactivate mission. Set to a negative value for unlimited. (optional)
///
///  @param advancedReporting Flag to mark the mission as eligible for advanced reporting (optional)
///
///  @param allocateTickets Flag to indicate owner should receive tickets for completed missions (optional)
///
///  @param ticketCount The number of tickets to reward (optional)
///
///  @param ticketType The type of ticket to reward, null means default type (optional)
///
///  @param points The number of points to award for completing a mission (optional)
///
///  @param applicationIds Comma separated list of application ids (optional)
///
///  @param devices Deprecated parameter for device names (optional)
///
///  @param deviceIds Comma separated list of device ids (optional)
///
///  @param deviceVersions Comma separated list of device version ranges (optional)
///
///  @param locations List of lat/long pairs for mission locations (optional)
///
///  @param radius Comma separated list of radii for locations (optional)
///
///  @returns OAIMissionResponse*
///
-(NSURLSessionTask*) updateMissionWithAccountId: (NSNumber*) accountId
    missionId: (NSNumber*) missionId
    title: (NSString*) title
    _description: (NSString*) _description
    subType: (NSString*) subType
    metaData: (NSString*) metaData
    startDate: (NSNumber*) startDate
    endDate: (NSNumber*) endDate
    active: (NSNumber*) active
    gameLevelIds: (NSString*) gameLevelIds
    creativeIds: (NSString*) creativeIds
    audienceIds: (NSString*) audienceIds
    offerId: (NSNumber*) offerId
    balance: (NSNumber*) balance
    advancedReporting: (NSNumber*) advancedReporting
    allocateTickets: (NSNumber*) allocateTickets
    ticketCount: (NSNumber*) ticketCount
    ticketType: (NSString*) ticketType
    points: (NSNumber*) points
    applicationIds: (NSString*) applicationIds
    devices: (NSString*) devices
    deviceIds: (NSString*) deviceIds
    deviceVersions: (NSString*) deviceVersions
    locations: (NSString*) locations
    radius: (NSString*) radius
    completionHandler: (void (^)(OAIMissionResponse* output, NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kOAIMissionApiErrorDomain code:kOAIMissionApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'missionId' is set
    if (missionId == nil) {
        NSParameterAssert(missionId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"missionId"] };
            NSError* error = [NSError errorWithDomain:kOAIMissionApiErrorDomain code:kOAIMissionApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/mission/update"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        queryParams[@"accountId"] = accountId;
    }
    if (missionId != nil) {
        queryParams[@"missionId"] = missionId;
    }
    if (title != nil) {
        queryParams[@"title"] = title;
    }
    if (_description != nil) {
        queryParams[@"description"] = _description;
    }
    if (subType != nil) {
        queryParams[@"subType"] = subType;
    }
    if (metaData != nil) {
        queryParams[@"metaData"] = metaData;
    }
    if (startDate != nil) {
        queryParams[@"startDate"] = startDate;
    }
    if (endDate != nil) {
        queryParams[@"endDate"] = endDate;
    }
    if (active != nil) {
        queryParams[@"active"] = [active isEqual:@(YES)] ? @"true" : @"false";
    }
    if (gameLevelIds != nil) {
        queryParams[@"gameLevelIds"] = gameLevelIds;
    }
    if (creativeIds != nil) {
        queryParams[@"creativeIds"] = creativeIds;
    }
    if (audienceIds != nil) {
        queryParams[@"audienceIds"] = audienceIds;
    }
    if (offerId != nil) {
        queryParams[@"offerId"] = offerId;
    }
    if (balance != nil) {
        queryParams[@"balance"] = balance;
    }
    if (advancedReporting != nil) {
        queryParams[@"advancedReporting"] = [advancedReporting isEqual:@(YES)] ? @"true" : @"false";
    }
    if (allocateTickets != nil) {
        queryParams[@"allocateTickets"] = [allocateTickets isEqual:@(YES)] ? @"true" : @"false";
    }
    if (ticketCount != nil) {
        queryParams[@"ticketCount"] = ticketCount;
    }
    if (ticketType != nil) {
        queryParams[@"ticketType"] = ticketType;
    }
    if (points != nil) {
        queryParams[@"points"] = points;
    }
    if (applicationIds != nil) {
        queryParams[@"applicationIds"] = applicationIds;
    }
    if (devices != nil) {
        queryParams[@"devices"] = devices;
    }
    if (deviceIds != nil) {
        queryParams[@"deviceIds"] = deviceIds;
    }
    if (deviceVersions != nil) {
        queryParams[@"deviceVersions"] = deviceVersions;
    }
    if (locations != nil) {
        queryParams[@"locations"] = locations;
    }
    if (radius != nil) {
        queryParams[@"radius"] = radius;
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
                              responseType: @"OAIMissionResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIMissionResponse*)data, error);
                                }
                            }];
}



@end
