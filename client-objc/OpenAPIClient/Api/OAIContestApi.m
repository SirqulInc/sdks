#import "OAIContestApi.h"
#import "OAIQueryParamCollection.h"
#import "OAIApiClient.h"
#import "OAIAlbumContestListResponse.h"
#import "OAIAlbumContestResponse.h"
#import "OAISirqulResponse.h"


@interface OAIContestApi ()

@property (nonatomic, strong, readwrite) NSMutableDictionary *mutableDefaultHeaders;

@end

@implementation OAIContestApi

NSString* kOAIContestApiErrorDomain = @"OAIContestApiErrorDomain";
NSInteger kOAIContestApiMissingParamErrorCode = 234513;

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
/// Create or Update Contest
/// Creates or updates a contest.
///  @param publicRead determines whether the contest's participants has read permissions 
///
///  @param publicWrite determines whether the contest's participants has write permissions 
///
///  @param publicDelete determines whether the contest's participants has delete permissions 
///
///  @param publicAdd determines whether the contest's participants has add permissions 
///
///  @param visibility the determines the album's participants (PUBLIC - includes everyone in the system as a potential participant, PRIVATE - only considers people who have been invited as participants) 
///
///  @param includeFriendGroup determines whether to include all friends as participants 
///
///  @param deviceId a unique ID given by the device (deviceId or accountId required) (optional)
///
///  @param accountId the account ID of the user (deviceId or accountId required) (optional)
///
///  @param gameType This parameter is deprecated. the application key (optional)
///
///  @param appKey the application key (optional)
///
///  @param contestType a custom field used for aggregation and searching (optional)
///
///  @param albumContestId the album contest ID for updating (don't pass in if creating) (optional)
///
///  @param title the title of the contest (optional)
///
///  @param _description the description of the contest (optional)
///
///  @param albumId1 the album ID for the first album (optional)
///
///  @param removeAlbum1 removes album1 from the contest (optional)
///
///  @param albumId2 the album ID for the second album (optional)
///
///  @param removeAlbum2 removes album2 from the contest (optional)
///
///  @param startDate the start date of the contest (time-stamp in milliseconds) (optional)
///
///  @param endDate the end date of the contest (time-stamp in milliseconds) (optional)
///
///  @param locationDescription the location description of the contest taking place (optional)
///
///  @param connectionIdsToAdd comma separated list of connection IDs (optional)
///
///  @param connectionGroupIdsToAdd comma separated list of connection group IDs (optional)
///
///  @param latitude latitude used to update the user's current location (optional)
///
///  @param longitude longitude used to update the user's current location (optional)
///
///  @returns OAIAlbumContestResponse*
///
-(NSURLSessionTask*) addOrUpdateAlbumContestWithPublicRead: (NSNumber*) publicRead
    publicWrite: (NSNumber*) publicWrite
    publicDelete: (NSNumber*) publicDelete
    publicAdd: (NSNumber*) publicAdd
    visibility: (NSString*) visibility
    includeFriendGroup: (NSNumber*) includeFriendGroup
    deviceId: (NSString*) deviceId
    accountId: (NSNumber*) accountId
    gameType: (NSString*) gameType
    appKey: (NSString*) appKey
    contestType: (NSString*) contestType
    albumContestId: (NSNumber*) albumContestId
    title: (NSString*) title
    _description: (NSString*) _description
    albumId1: (NSNumber*) albumId1
    removeAlbum1: (NSNumber*) removeAlbum1
    albumId2: (NSNumber*) albumId2
    removeAlbum2: (NSNumber*) removeAlbum2
    startDate: (NSNumber*) startDate
    endDate: (NSNumber*) endDate
    locationDescription: (NSString*) locationDescription
    connectionIdsToAdd: (NSString*) connectionIdsToAdd
    connectionGroupIdsToAdd: (NSString*) connectionGroupIdsToAdd
    latitude: (NSNumber*) latitude
    longitude: (NSNumber*) longitude
    completionHandler: (void (^)(OAIAlbumContestResponse* output, NSError* error)) handler {
    // verify the required parameter 'publicRead' is set
    if (publicRead == nil) {
        NSParameterAssert(publicRead);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"publicRead"] };
            NSError* error = [NSError errorWithDomain:kOAIContestApiErrorDomain code:kOAIContestApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'publicWrite' is set
    if (publicWrite == nil) {
        NSParameterAssert(publicWrite);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"publicWrite"] };
            NSError* error = [NSError errorWithDomain:kOAIContestApiErrorDomain code:kOAIContestApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'publicDelete' is set
    if (publicDelete == nil) {
        NSParameterAssert(publicDelete);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"publicDelete"] };
            NSError* error = [NSError errorWithDomain:kOAIContestApiErrorDomain code:kOAIContestApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'publicAdd' is set
    if (publicAdd == nil) {
        NSParameterAssert(publicAdd);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"publicAdd"] };
            NSError* error = [NSError errorWithDomain:kOAIContestApiErrorDomain code:kOAIContestApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'visibility' is set
    if (visibility == nil) {
        NSParameterAssert(visibility);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"visibility"] };
            NSError* error = [NSError errorWithDomain:kOAIContestApiErrorDomain code:kOAIContestApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'includeFriendGroup' is set
    if (includeFriendGroup == nil) {
        NSParameterAssert(includeFriendGroup);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"includeFriendGroup"] };
            NSError* error = [NSError errorWithDomain:kOAIContestApiErrorDomain code:kOAIContestApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/consumer/album/contest"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (deviceId != nil) {
        queryParams[@"deviceId"] = deviceId;
    }
    if (accountId != nil) {
        queryParams[@"accountId"] = accountId;
    }
    if (gameType != nil) {
        queryParams[@"gameType"] = gameType;
    }
    if (appKey != nil) {
        queryParams[@"appKey"] = appKey;
    }
    if (contestType != nil) {
        queryParams[@"contestType"] = contestType;
    }
    if (albumContestId != nil) {
        queryParams[@"albumContestId"] = albumContestId;
    }
    if (title != nil) {
        queryParams[@"title"] = title;
    }
    if (_description != nil) {
        queryParams[@"description"] = _description;
    }
    if (albumId1 != nil) {
        queryParams[@"albumId1"] = albumId1;
    }
    if (removeAlbum1 != nil) {
        queryParams[@"removeAlbum1"] = [removeAlbum1 isEqual:@(YES)] ? @"true" : @"false";
    }
    if (albumId2 != nil) {
        queryParams[@"albumId2"] = albumId2;
    }
    if (removeAlbum2 != nil) {
        queryParams[@"removeAlbum2"] = [removeAlbum2 isEqual:@(YES)] ? @"true" : @"false";
    }
    if (startDate != nil) {
        queryParams[@"startDate"] = startDate;
    }
    if (endDate != nil) {
        queryParams[@"endDate"] = endDate;
    }
    if (publicRead != nil) {
        queryParams[@"publicRead"] = [publicRead isEqual:@(YES)] ? @"true" : @"false";
    }
    if (publicWrite != nil) {
        queryParams[@"publicWrite"] = [publicWrite isEqual:@(YES)] ? @"true" : @"false";
    }
    if (publicDelete != nil) {
        queryParams[@"publicDelete"] = [publicDelete isEqual:@(YES)] ? @"true" : @"false";
    }
    if (publicAdd != nil) {
        queryParams[@"publicAdd"] = [publicAdd isEqual:@(YES)] ? @"true" : @"false";
    }
    if (locationDescription != nil) {
        queryParams[@"locationDescription"] = locationDescription;
    }
    if (visibility != nil) {
        queryParams[@"visibility"] = visibility;
    }
    if (connectionIdsToAdd != nil) {
        queryParams[@"connectionIdsToAdd"] = connectionIdsToAdd;
    }
    if (connectionGroupIdsToAdd != nil) {
        queryParams[@"connectionGroupIdsToAdd"] = connectionGroupIdsToAdd;
    }
    if (includeFriendGroup != nil) {
        queryParams[@"includeFriendGroup"] = [includeFriendGroup isEqual:@(YES)] ? @"true" : @"false";
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
                              responseType: @"OAIAlbumContestResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIAlbumContestResponse*)data, error);
                                }
                            }];
}

///
/// Approve Contest
/// Sets the approval status of a contest.
///  @param albumContestId The ID of the album contest 
///
///  @param approvalStatus The approval status to set {PENDING, REJECTED, APPROVED, FEATURED} 
///
///  @param deviceId A unique ID given by the device (deviceId or accountId required) (optional)
///
///  @param accountId The account ID of the user (deviceId or accountId required) (optional)
///
///  @returns OAISirqulResponse*
///
-(NSURLSessionTask*) approveAlbumContestWithAlbumContestId: (NSNumber*) albumContestId
    approvalStatus: (NSString*) approvalStatus
    deviceId: (NSString*) deviceId
    accountId: (NSNumber*) accountId
    completionHandler: (void (^)(OAISirqulResponse* output, NSError* error)) handler {
    // verify the required parameter 'albumContestId' is set
    if (albumContestId == nil) {
        NSParameterAssert(albumContestId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"albumContestId"] };
            NSError* error = [NSError errorWithDomain:kOAIContestApiErrorDomain code:kOAIContestApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'approvalStatus' is set
    if (approvalStatus == nil) {
        NSParameterAssert(approvalStatus);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"approvalStatus"] };
            NSError* error = [NSError errorWithDomain:kOAIContestApiErrorDomain code:kOAIContestApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/consumer/album/contest/approve"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (deviceId != nil) {
        queryParams[@"deviceId"] = deviceId;
    }
    if (accountId != nil) {
        queryParams[@"accountId"] = accountId;
    }
    if (albumContestId != nil) {
        queryParams[@"albumContestId"] = albumContestId;
    }
    if (approvalStatus != nil) {
        queryParams[@"approvalStatus"] = approvalStatus;
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
/// Delete Contest
/// Deletes a contest.
///  @param albumContestId the album contest ID 
///
///  @param deviceId a unique ID given by the device (deviceId or accountId required) (optional)
///
///  @param accountId the account ID of the user (deviceId or accountId required) (optional)
///
///  @param latitude latitude used to update the user's current location (optional)
///
///  @param longitude longitude used to update the user's current location (optional)
///
///  @returns OAISirqulResponse*
///
-(NSURLSessionTask*) deleteContestWithAlbumContestId: (NSNumber*) albumContestId
    deviceId: (NSString*) deviceId
    accountId: (NSNumber*) accountId
    latitude: (NSNumber*) latitude
    longitude: (NSNumber*) longitude
    completionHandler: (void (^)(OAISirqulResponse* output, NSError* error)) handler {
    // verify the required parameter 'albumContestId' is set
    if (albumContestId == nil) {
        NSParameterAssert(albumContestId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"albumContestId"] };
            NSError* error = [NSError errorWithDomain:kOAIContestApiErrorDomain code:kOAIContestApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/consumer/album/contest/remove"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (deviceId != nil) {
        queryParams[@"deviceId"] = deviceId;
    }
    if (accountId != nil) {
        queryParams[@"accountId"] = accountId;
    }
    if (albumContestId != nil) {
        queryParams[@"albumContestId"] = albumContestId;
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
/// Get Contest
/// Gets the contest object including the likes and notes
///  @param albumContestId the album contest ID 
///
///  @param deviceId a unique ID given by the device (deviceId or accountId required) (optional)
///
///  @param accountId the account ID of the user (deviceId or accountId required) (optional)
///
///  @param latitude latitude used to update the user's current location (optional)
///
///  @param longitude longitude used to update the user's current location (optional)
///
///  @returns OAIAlbumContestResponse*
///
-(NSURLSessionTask*) getAlbumContestWithAlbumContestId: (NSNumber*) albumContestId
    deviceId: (NSString*) deviceId
    accountId: (NSNumber*) accountId
    latitude: (NSNumber*) latitude
    longitude: (NSNumber*) longitude
    completionHandler: (void (^)(OAIAlbumContestResponse* output, NSError* error)) handler {
    // verify the required parameter 'albumContestId' is set
    if (albumContestId == nil) {
        NSParameterAssert(albumContestId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"albumContestId"] };
            NSError* error = [NSError errorWithDomain:kOAIContestApiErrorDomain code:kOAIContestApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/consumer/album/contest/get"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (deviceId != nil) {
        queryParams[@"deviceId"] = deviceId;
    }
    if (accountId != nil) {
        queryParams[@"accountId"] = accountId;
    }
    if (albumContestId != nil) {
        queryParams[@"albumContestId"] = albumContestId;
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
                              responseType: @"OAIAlbumContestResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIAlbumContestResponse*)data, error);
                                }
                            }];
}

///
/// Search Contests
/// Searches on contests.
///  @param filter a comma separated list of Ownership 
///
///  @param sortField the field to sort by. See AlbumContestApiMap 
///
///  @param descending determines whether the sorted list is in descending or ascending order 
///
///  @param start the start index for pagination 
///
///  @param limit the limit for pagination (there is a hard limit of 30) 
///
///  @param deviceId a unique ID given by the device (deviceId or accountId required) (optional)
///
///  @param accountId the account ID of the user (deviceId or accountId required) (optional)
///
///  @param gameType This parameter is deprecated. (optional)
///
///  @param appKey the application key (optional)
///
///  @param appType the application type (optional)
///
///  @param contestType filter contests with this contest type (optional)
///
///  @param ownerId search on contests that have been created by this account (that the user has permissions to) (optional)
///
///  @param q This parameter is deprecated. (optional)
///
///  @param keyword keyword search string (optional)
///
///  @param i This parameter is deprecated. (optional)
///
///  @param l This parameter is deprecated. (optional)
///
///  @param dateCreated filter on items that have been created before this date (optional)
///
///  @param latitude latitude used to update the user's current location (optional)
///
///  @param longitude longitude used to update the user's current location (optional)
///
///  @returns OAIAlbumContestListResponse*
///
-(NSURLSessionTask*) getAlbumContestsWithFilter: (NSString*) filter
    sortField: (NSString*) sortField
    descending: (NSNumber*) descending
    start: (NSNumber*) start
    limit: (NSNumber*) limit
    deviceId: (NSString*) deviceId
    accountId: (NSNumber*) accountId
    gameType: (NSString*) gameType
    appKey: (NSString*) appKey
    appType: (NSString*) appType
    contestType: (NSString*) contestType
    ownerId: (NSNumber*) ownerId
    q: (NSString*) q
    keyword: (NSString*) keyword
    i: (NSNumber*) i
    l: (NSNumber*) l
    dateCreated: (NSNumber*) dateCreated
    latitude: (NSNumber*) latitude
    longitude: (NSNumber*) longitude
    completionHandler: (void (^)(OAIAlbumContestListResponse* output, NSError* error)) handler {
    // verify the required parameter 'filter' is set
    if (filter == nil) {
        NSParameterAssert(filter);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"filter"] };
            NSError* error = [NSError errorWithDomain:kOAIContestApiErrorDomain code:kOAIContestApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'sortField' is set
    if (sortField == nil) {
        NSParameterAssert(sortField);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"sortField"] };
            NSError* error = [NSError errorWithDomain:kOAIContestApiErrorDomain code:kOAIContestApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'descending' is set
    if (descending == nil) {
        NSParameterAssert(descending);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"descending"] };
            NSError* error = [NSError errorWithDomain:kOAIContestApiErrorDomain code:kOAIContestApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'start' is set
    if (start == nil) {
        NSParameterAssert(start);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"start"] };
            NSError* error = [NSError errorWithDomain:kOAIContestApiErrorDomain code:kOAIContestApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'limit' is set
    if (limit == nil) {
        NSParameterAssert(limit);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"limit"] };
            NSError* error = [NSError errorWithDomain:kOAIContestApiErrorDomain code:kOAIContestApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/consumer/album/contest/search"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (deviceId != nil) {
        queryParams[@"deviceId"] = deviceId;
    }
    if (accountId != nil) {
        queryParams[@"accountId"] = accountId;
    }
    if (gameType != nil) {
        queryParams[@"gameType"] = gameType;
    }
    if (appKey != nil) {
        queryParams[@"appKey"] = appKey;
    }
    if (appType != nil) {
        queryParams[@"appType"] = appType;
    }
    if (contestType != nil) {
        queryParams[@"contestType"] = contestType;
    }
    if (ownerId != nil) {
        queryParams[@"ownerId"] = ownerId;
    }
    if (q != nil) {
        queryParams[@"q"] = q;
    }
    if (keyword != nil) {
        queryParams[@"keyword"] = keyword;
    }
    if (filter != nil) {
        queryParams[@"filter"] = filter;
    }
    if (sortField != nil) {
        queryParams[@"sortField"] = sortField;
    }
    if (descending != nil) {
        queryParams[@"descending"] = [descending isEqual:@(YES)] ? @"true" : @"false";
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
    if (dateCreated != nil) {
        queryParams[@"dateCreated"] = dateCreated;
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
                              responseType: @"OAIAlbumContestListResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIAlbumContestListResponse*)data, error);
                                }
                            }];
}

///
/// Vote on Contest
/// Vote on a collection in a contest.
///  @param albumContestId the album contest ID 
///
///  @param albumId the ID of the album to vote on 
///
///  @param deviceId a unique ID given by the device (deviceId or accountId required) (optional)
///
///  @param accountId the account ID of the user (deviceId or accountId required) (optional)
///
///  @param contestType a custom field used for aggregation and searching (optional)
///
///  @param latitude latitude used to update the user's current location (optional)
///
///  @param longitude longitude used to update the user's current location (optional)
///
///  @returns OAIAlbumContestResponse*
///
-(NSURLSessionTask*) voteOnAlbumContestWithAlbumContestId: (NSNumber*) albumContestId
    albumId: (NSNumber*) albumId
    deviceId: (NSString*) deviceId
    accountId: (NSNumber*) accountId
    contestType: (NSString*) contestType
    latitude: (NSNumber*) latitude
    longitude: (NSNumber*) longitude
    completionHandler: (void (^)(OAIAlbumContestResponse* output, NSError* error)) handler {
    // verify the required parameter 'albumContestId' is set
    if (albumContestId == nil) {
        NSParameterAssert(albumContestId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"albumContestId"] };
            NSError* error = [NSError errorWithDomain:kOAIContestApiErrorDomain code:kOAIContestApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'albumId' is set
    if (albumId == nil) {
        NSParameterAssert(albumId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"albumId"] };
            NSError* error = [NSError errorWithDomain:kOAIContestApiErrorDomain code:kOAIContestApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/consumer/album/contest/vote"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (deviceId != nil) {
        queryParams[@"deviceId"] = deviceId;
    }
    if (accountId != nil) {
        queryParams[@"accountId"] = accountId;
    }
    if (albumContestId != nil) {
        queryParams[@"albumContestId"] = albumContestId;
    }
    if (albumId != nil) {
        queryParams[@"albumId"] = albumId;
    }
    if (contestType != nil) {
        queryParams[@"contestType"] = contestType;
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
                              responseType: @"OAIAlbumContestResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIAlbumContestResponse*)data, error);
                                }
                            }];
}



@end
