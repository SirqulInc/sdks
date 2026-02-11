#import "OAIAudienceApi.h"
#import "OAIQueryParamCollection.h"
#import "OAIApiClient.h"
#import "OAIAgeGroupResponse.h"
#import "OAIAudienceDeviceResponse.h"
#import "OAIAudienceResponse.h"
#import "OAIOfferListResponse.h"
#import "OAISearchResponse.h"
#import "OAISirqulResponse.h"


@interface OAIAudienceApi ()

@property (nonatomic, strong, readwrite) NSMutableDictionary *mutableDefaultHeaders;

@end

@implementation OAIAudienceApi

NSString* kOAIAudienceApiErrorDomain = @"OAIAudienceApiErrorDomain";
NSInteger kOAIAudienceApiMissingParamErrorCode = 234513;

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
/// Create Audience
/// Create a user defined audience.
///  @param accountId The logged in user. 
///
///  @param name The name of the audience 
///
///  @param _description The description of the audience (optional)
///
///  @param searchTags The search tags (optional)
///
///  @param gender The gender; possible values are: MALE, FEMALE, ANY (optional)
///
///  @param ageGroups The list of age groups, comma separated; possible values are AGE_0_13, AGE_14_17, AGE_18_22, AGE_23_30, AGE_31_54, AGE_55_PLUS, AGE_ANY (to reset to none) (optional)
///
///  @param categoryIds The list of category ids, comma separated; possible values are retrieved via /api/{version}/category/search (pass in id values) (optional)
///
///  @param applicationIds The list of application ids, comma separated; possible values are retrieved via /api/{version}/application/list (pass in id values) (optional)
///
///  @param gameExperienceLevel The experience level of the player; possible values are: ANY, NEW, BEGINNER, INTERMEDIATE, EXPERT (optional)
///
///  @param devices (Deprecated) Use deviceIds. The list of targeted device names, comma separated; possible values are retrieved via /api/{version}/audience/devices (pass in name values) (optional)
///
///  @param deviceIds The list of targeted device ids, comma separated; possible values are retrieved via /api/{version}/audience/devices (pass in id values) (optional)
///
///  @param deviceVersions The list of targeted device version ranges that are aligned with the provided devices list, comma separated (examples: 2.3-X, 0-5.1.4, 4.3.1-6.1.4) (optional)
///
///  @param locations The list of locations to build the center around; comma separated list of latitude/longitude pairs (example: lat1,long1,lat2,long2) (optional)
///
///  @param radius The list of radius of influence for the audience, in miles; comma separated list. Either provide 1 to be applied to all location pairs or a matching list to each lat/long pair. (optional)
///
///  @param startTimeOffset Seconds from the start time of an event (optional)
///
///  @param endTimeOffset Seconds from the end time of an event (optional)
///
///  @param sendSuggestion If true, then notify matching users when they are inside the radius (optional, default to @(YES))
///
///  @param associateDescription The description of the associated object (optional)
///
///  @param associateType The type of the object to center the audience geofence (optional)
///
///  @param associateId The ID of the object to center the audience geofence (optional)
///
///  @param groupingId Optional grouping id for the audience (optional)
///
///  @param metaData External custom client defined data (optional)
///
///  @param visibility Visibility of the audience (optional)
///
///  @param audienceType Type of audience (optional)
///
///  @param useOrder Use order for cohort (optional)
///
///  @param cohortRegionsData Cohort data for \"cohort\" audience type (optional)
///
///  @param appKey Filter results by application key (optional)
///
///  @param trilaterationTypes Trilateration types (optional)
///
///  @param uniqueName If true, makes sure the audience name is unique (optional)
///
///  @returns OAIAudienceResponse*
///
-(NSURLSessionTask*) createAudienceWithAccountId: (NSNumber*) accountId
    name: (NSString*) name
    _description: (NSString*) _description
    searchTags: (NSString*) searchTags
    gender: (NSString*) gender
    ageGroups: (NSString*) ageGroups
    categoryIds: (NSString*) categoryIds
    applicationIds: (NSString*) applicationIds
    gameExperienceLevel: (NSString*) gameExperienceLevel
    devices: (NSString*) devices
    deviceIds: (NSString*) deviceIds
    deviceVersions: (NSString*) deviceVersions
    locations: (NSString*) locations
    radius: (NSString*) radius
    startTimeOffset: (NSNumber*) startTimeOffset
    endTimeOffset: (NSNumber*) endTimeOffset
    sendSuggestion: (NSNumber*) sendSuggestion
    associateDescription: (NSString*) associateDescription
    associateType: (NSString*) associateType
    associateId: (NSNumber*) associateId
    groupingId: (NSString*) groupingId
    metaData: (NSString*) metaData
    visibility: (NSString*) visibility
    audienceType: (NSString*) audienceType
    useOrder: (NSNumber*) useOrder
    cohortRegionsData: (NSString*) cohortRegionsData
    appKey: (NSString*) appKey
    trilaterationTypes: (NSString*) trilaterationTypes
    uniqueName: (NSNumber*) uniqueName
    completionHandler: (void (^)(OAIAudienceResponse* output, NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kOAIAudienceApiErrorDomain code:kOAIAudienceApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'name' is set
    if (name == nil) {
        NSParameterAssert(name);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"name"] };
            NSError* error = [NSError errorWithDomain:kOAIAudienceApiErrorDomain code:kOAIAudienceApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/audience/create"];

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
    if (searchTags != nil) {
        queryParams[@"searchTags"] = searchTags;
    }
    if (gender != nil) {
        queryParams[@"gender"] = gender;
    }
    if (ageGroups != nil) {
        queryParams[@"ageGroups"] = ageGroups;
    }
    if (categoryIds != nil) {
        queryParams[@"categoryIds"] = categoryIds;
    }
    if (applicationIds != nil) {
        queryParams[@"applicationIds"] = applicationIds;
    }
    if (gameExperienceLevel != nil) {
        queryParams[@"gameExperienceLevel"] = gameExperienceLevel;
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
    if (startTimeOffset != nil) {
        queryParams[@"startTimeOffset"] = startTimeOffset;
    }
    if (endTimeOffset != nil) {
        queryParams[@"endTimeOffset"] = endTimeOffset;
    }
    if (sendSuggestion != nil) {
        queryParams[@"sendSuggestion"] = [sendSuggestion isEqual:@(YES)] ? @"true" : @"false";
    }
    if (associateDescription != nil) {
        queryParams[@"associateDescription"] = associateDescription;
    }
    if (associateType != nil) {
        queryParams[@"associateType"] = associateType;
    }
    if (associateId != nil) {
        queryParams[@"associateId"] = associateId;
    }
    if (groupingId != nil) {
        queryParams[@"groupingId"] = groupingId;
    }
    if (metaData != nil) {
        queryParams[@"metaData"] = metaData;
    }
    if (visibility != nil) {
        queryParams[@"visibility"] = visibility;
    }
    if (audienceType != nil) {
        queryParams[@"audienceType"] = audienceType;
    }
    if (useOrder != nil) {
        queryParams[@"useOrder"] = [useOrder isEqual:@(YES)] ? @"true" : @"false";
    }
    if (cohortRegionsData != nil) {
        queryParams[@"cohortRegionsData"] = cohortRegionsData;
    }
    if (appKey != nil) {
        queryParams[@"appKey"] = appKey;
    }
    if (trilaterationTypes != nil) {
        queryParams[@"trilaterationTypes"] = trilaterationTypes;
    }
    if (uniqueName != nil) {
        queryParams[@"uniqueName"] = [uniqueName isEqual:@(YES)] ? @"true" : @"false";
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
                              responseType: @"OAIAudienceResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIAudienceResponse*)data, error);
                                }
                            }];
}

///
/// Delete Audience
/// Delete an audience. The audience and account must be valid and have the appropirate permissions to view the content.
///  @param accountId The logged in user. 
///
///  @param audienceId The id of the audience to delete. 
///
///  @returns OAISirqulResponse*
///
-(NSURLSessionTask*) deleteAudienceWithAccountId: (NSNumber*) accountId
    audienceId: (NSNumber*) audienceId
    completionHandler: (void (^)(OAISirqulResponse* output, NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kOAIAudienceApiErrorDomain code:kOAIAudienceApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'audienceId' is set
    if (audienceId == nil) {
        NSParameterAssert(audienceId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"audienceId"] };
            NSError* error = [NSError errorWithDomain:kOAIAudienceApiErrorDomain code:kOAIAudienceApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/audience/delete"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        queryParams[@"accountId"] = accountId;
    }
    if (audienceId != nil) {
        queryParams[@"audienceId"] = audienceId;
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
/// Get Age Groups
/// Gets the list of available age groups that can be selected by consumers and retailers targeting offers.
///  @returns NSArray<OAIAgeGroupResponse>*
///
-(NSURLSessionTask*) getAgeGroupsWithCompletionHandler: 
    (void (^)(NSArray<OAIAgeGroupResponse>* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/audience/ageGroups"];

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
                              responseType: @"NSArray<OAIAgeGroupResponse>*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSArray<OAIAgeGroupResponse>*)data, error);
                                }
                            }];
}

///
/// Get Audience
/// Get an audience. The audience and account must be valid and have the appropriate permissions to view the content.
///  @param accountId The logged in user. 
///
///  @param audienceId The id of the audience to return. 
///
///  @param appKey The application key (optional). If provided, results may be scoped to this application. (optional)
///
///  @param returnAccountCount (boolean) set to true to include the accountCount associated with current audience of the current app (optional, default to @(NO))
///
///  @param returnAlbumCount (boolean) set to true to include the albumCount associated with current audience of the current app (optional, default to @(NO))
///
///  @param albumTypesForCount (String) comma separated list, return an array with each item is the count of each album type. If not provided, \"all_types\" count is returned. (optional)
///
///  @returns OAIAudienceResponse*
///
-(NSURLSessionTask*) getAudienceWithAccountId: (NSNumber*) accountId
    audienceId: (NSNumber*) audienceId
    appKey: (NSString*) appKey
    returnAccountCount: (NSNumber*) returnAccountCount
    returnAlbumCount: (NSNumber*) returnAlbumCount
    albumTypesForCount: (NSString*) albumTypesForCount
    completionHandler: (void (^)(OAIAudienceResponse* output, NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kOAIAudienceApiErrorDomain code:kOAIAudienceApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'audienceId' is set
    if (audienceId == nil) {
        NSParameterAssert(audienceId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"audienceId"] };
            NSError* error = [NSError errorWithDomain:kOAIAudienceApiErrorDomain code:kOAIAudienceApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/audience/get"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        queryParams[@"accountId"] = accountId;
    }
    if (audienceId != nil) {
        queryParams[@"audienceId"] = audienceId;
    }
    if (appKey != nil) {
        queryParams[@"appKey"] = appKey;
    }
    if (returnAccountCount != nil) {
        queryParams[@"returnAccountCount"] = [returnAccountCount isEqual:@(YES)] ? @"true" : @"false";
    }
    if (returnAlbumCount != nil) {
        queryParams[@"returnAlbumCount"] = [returnAlbumCount isEqual:@(YES)] ? @"true" : @"false";
    }
    if (albumTypesForCount != nil) {
        queryParams[@"albumTypesForCount"] = albumTypesForCount;
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
                              responseType: @"OAIAudienceResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIAudienceResponse*)data, error);
                                }
                            }];
}

///
/// Search Audiences
/// Get the list audiences owned by the account
///  @param accountId The logged in user. (optional)
///
///  @param albumIds Comma separated list of album IDs to filter results with (optional)
///
///  @param keyword The keyword used to search (optional)
///
///  @param keywordFields Comma separated list of fields that the keywords will match against. Possible values include: SEARCH_TAGS, NAME, DESCRIPTION, OWNER_DISPLAY (optional, default to @"SEARCH_TAGS,NAME,DESCRIPTION")
///
///  @param sortField The field to sort by, possible values include: {ID, CREATED, UPDATED, DELETED, SEARCH_TAGS, ACTIVE, NAME, DESCRIPTION, OWNER_ID, OWNER_DISPLAY, GENDER} (optional, default to @"NAME")
///
///  @param descending The order to return the results. Default is false, which will return the results in ascending order. (optional, default to @(NO))
///
///  @param start The index into the record set to start with. (optional, default to @0)
///
///  @param limit The total number of record to return (there is a hard limit of 100). (optional, default to @20)
///
///  @param sendSuggestion Filter results based on whether or not the audience is set to send suggestions (optional)
///
///  @param activeOnly Determines whether to return only active results. Default is false. (optional)
///
///  @param groupByGroupingId Groups results by the audience groupingId (this does not work in conjunction with the following parameters: albumIds, audienceType, appKey, returnGlobal) (optional)
///
///  @param appKey Filter results by application key (optional)
///
///  @param returnGlobal If filtering by appKey, determines whether or not audiences that do not have an application set will also be returned as well (optional)
///
///  @param exactKeyword If true, match keyword exactly (optional)
///
///  @param audienceType (Deprecated) Filter results by audience type (optional)
///
///  @param audienceTypes comma separated string with the different audience types you want to filter for (optional)
///
///  @param returnAccountCount (boolean) set to true to include the accountCount associated with current audience of the current app (optional, default to @(NO))
///
///  @param returnAlbumCount (boolean) set to true to include the albumCount associated with current audience of the current app (optional, default to @(NO))
///
///  @param albumTypesForCount (String) comma separated list, return an array with each item is the count of each album type. If not provided, \"all_types\" count is returned. (optional)
///
///  @returns NSArray<OAISearchResponse>*
///
-(NSURLSessionTask*) getAudienceListWithAccountId: (NSNumber*) accountId
    albumIds: (NSString*) albumIds
    keyword: (NSString*) keyword
    keywordFields: (NSString*) keywordFields
    sortField: (NSString*) sortField
    descending: (NSNumber*) descending
    start: (NSNumber*) start
    limit: (NSNumber*) limit
    sendSuggestion: (NSNumber*) sendSuggestion
    activeOnly: (NSNumber*) activeOnly
    groupByGroupingId: (NSNumber*) groupByGroupingId
    appKey: (NSString*) appKey
    returnGlobal: (NSNumber*) returnGlobal
    exactKeyword: (NSNumber*) exactKeyword
    audienceType: (NSString*) audienceType
    audienceTypes: (NSString*) audienceTypes
    returnAccountCount: (NSNumber*) returnAccountCount
    returnAlbumCount: (NSNumber*) returnAlbumCount
    albumTypesForCount: (NSString*) albumTypesForCount
    completionHandler: (void (^)(NSArray<OAISearchResponse>* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/audience/search"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        queryParams[@"accountId"] = accountId;
    }
    if (albumIds != nil) {
        queryParams[@"albumIds"] = albumIds;
    }
    if (keyword != nil) {
        queryParams[@"keyword"] = keyword;
    }
    if (keywordFields != nil) {
        queryParams[@"keywordFields"] = keywordFields;
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
    if (sendSuggestion != nil) {
        queryParams[@"sendSuggestion"] = [sendSuggestion isEqual:@(YES)] ? @"true" : @"false";
    }
    if (activeOnly != nil) {
        queryParams[@"activeOnly"] = [activeOnly isEqual:@(YES)] ? @"true" : @"false";
    }
    if (groupByGroupingId != nil) {
        queryParams[@"groupByGroupingId"] = [groupByGroupingId isEqual:@(YES)] ? @"true" : @"false";
    }
    if (appKey != nil) {
        queryParams[@"appKey"] = appKey;
    }
    if (returnGlobal != nil) {
        queryParams[@"returnGlobal"] = [returnGlobal isEqual:@(YES)] ? @"true" : @"false";
    }
    if (exactKeyword != nil) {
        queryParams[@"exactKeyword"] = [exactKeyword isEqual:@(YES)] ? @"true" : @"false";
    }
    if (audienceType != nil) {
        queryParams[@"audienceType"] = audienceType;
    }
    if (audienceTypes != nil) {
        queryParams[@"audienceTypes"] = audienceTypes;
    }
    if (returnAccountCount != nil) {
        queryParams[@"returnAccountCount"] = [returnAccountCount isEqual:@(YES)] ? @"true" : @"false";
    }
    if (returnAlbumCount != nil) {
        queryParams[@"returnAlbumCount"] = [returnAlbumCount isEqual:@(YES)] ? @"true" : @"false";
    }
    if (albumTypesForCount != nil) {
        queryParams[@"albumTypesForCount"] = albumTypesForCount;
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
                              responseType: @"NSArray<OAISearchResponse>*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSArray<OAISearchResponse>*)data, error);
                                }
                            }];
}

///
/// Get Devices
/// Gets the list of available devices that can be selected by consumers and retailers.
///  @param includeInactive If true return inactive record as well. default is false. 
///
///  @returns NSArray<OAIAudienceDeviceResponse>*
///
-(NSURLSessionTask*) getDevicesWithIncludeInactive: (NSNumber*) includeInactive
    completionHandler: (void (^)(NSArray<OAIAudienceDeviceResponse>* output, NSError* error)) handler {
    // verify the required parameter 'includeInactive' is set
    if (includeInactive == nil) {
        NSParameterAssert(includeInactive);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"includeInactive"] };
            NSError* error = [NSError errorWithDomain:kOAIAudienceApiErrorDomain code:kOAIAudienceApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/audience/devices"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (includeInactive != nil) {
        queryParams[@"includeInactive"] = [includeInactive isEqual:@(YES)] ? @"true" : @"false";
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
                              responseType: @"NSArray<OAIAudienceDeviceResponse>*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSArray<OAIAudienceDeviceResponse>*)data, error);
                                }
                            }];
}

///
/// Get Experiences
/// Gets the list of available experiences that can be selected by consumers and retailers.
///  @returns OAISirqulResponse*
///
-(NSURLSessionTask*) getExperiencesWithCompletionHandler: 
    (void (^)(OAISirqulResponse* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/audience/experiences"];

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
                              responseType: @"OAISirqulResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAISirqulResponse*)data, error);
                                }
                            }];
}

///
/// Get GroupedAudiences
/// Get a group of audiences. The audience and account must be valid and have the appropriate permissions to view the content.
///  @param accountId The logged in user. 
///
///  @param audienceGroupingId The audience grouping id to return. 
///
///  @returns OAIAudienceResponse*
///
-(NSURLSessionTask*) getGroupedAudiencesWithAccountId: (NSNumber*) accountId
    audienceGroupingId: (NSString*) audienceGroupingId
    completionHandler: (void (^)(OAIAudienceResponse* output, NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kOAIAudienceApiErrorDomain code:kOAIAudienceApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'audienceGroupingId' is set
    if (audienceGroupingId == nil) {
        NSParameterAssert(audienceGroupingId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"audienceGroupingId"] };
            NSError* error = [NSError errorWithDomain:kOAIAudienceApiErrorDomain code:kOAIAudienceApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/audience/grouped/get"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        queryParams[@"accountId"] = accountId;
    }
    if (audienceGroupingId != nil) {
        queryParams[@"audienceGroupingId"] = audienceGroupingId;
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
                              responseType: @"OAIAudienceResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIAudienceResponse*)data, error);
                                }
                            }];
}

///
/// List Suggestions by Audience
/// List either Missions or Offers that the user matches the assigned audience.
///  @param accountId The account to match offers for. 
///
///  @param limit the limit of the index 
///
///  @param suggestionType the type of suggestion 
///
///  @returns OAIOfferListResponse*
///
-(NSURLSessionTask*) listByAccountWithAccountId: (NSNumber*) accountId
    limit: (NSNumber*) limit
    suggestionType: (NSString*) suggestionType
    completionHandler: (void (^)(OAIOfferListResponse* output, NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kOAIAudienceApiErrorDomain code:kOAIAudienceApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'limit' is set
    if (limit == nil) {
        NSParameterAssert(limit);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"limit"] };
            NSError* error = [NSError errorWithDomain:kOAIAudienceApiErrorDomain code:kOAIAudienceApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'suggestionType' is set
    if (suggestionType == nil) {
        NSParameterAssert(suggestionType);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"suggestionType"] };
            NSError* error = [NSError errorWithDomain:kOAIAudienceApiErrorDomain code:kOAIAudienceApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/audience/suggestion/list"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        queryParams[@"accountId"] = accountId;
    }
    if (limit != nil) {
        queryParams[@"limit"] = limit;
    }
    if (suggestionType != nil) {
        queryParams[@"suggestionType"] = suggestionType;
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
                              responseType: @"OAIOfferListResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIOfferListResponse*)data, error);
                                }
                            }];
}

///
/// List Offers by Audience
/// Get a list of offer locations based on audience information provided.
///  @param limit this is the limit of the index 
///
///  @param gender this is the gender to list offers by (optional)
///
///  @param age this is the age to list offers by (optional)
///
///  @param categoryIds this is the category IDs to list offers by (optional)
///
///  @param latitude this is the latitude to list offers by (optional)
///
///  @param longitude this is the longitude to list offers by (optional)
///
///  @returns OAIOfferListResponse*
///
-(NSURLSessionTask*) listByAudienceWithLimit: (NSNumber*) limit
    gender: (NSString*) gender
    age: (NSNumber*) age
    categoryIds: (NSString*) categoryIds
    latitude: (NSNumber*) latitude
    longitude: (NSNumber*) longitude
    completionHandler: (void (^)(OAIOfferListResponse* output, NSError* error)) handler {
    // verify the required parameter 'limit' is set
    if (limit == nil) {
        NSParameterAssert(limit);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"limit"] };
            NSError* error = [NSError errorWithDomain:kOAIAudienceApiErrorDomain code:kOAIAudienceApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/audience/suggestion/offersByAudience"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (gender != nil) {
        queryParams[@"gender"] = gender;
    }
    if (age != nil) {
        queryParams[@"age"] = age;
    }
    if (categoryIds != nil) {
        queryParams[@"categoryIds"] = categoryIds;
    }
    if (latitude != nil) {
        queryParams[@"latitude"] = latitude;
    }
    if (longitude != nil) {
        queryParams[@"longitude"] = longitude;
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
                              responseType: @"OAIOfferListResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIOfferListResponse*)data, error);
                                }
                            }];
}

///
/// List Sent Suggestions 
/// Return list of recent trigger suggestions that have been sent to the user.
///  @param accountId The account to match offers for. 
///
///  @param timeframe The timeframe in seconds of the latest suggestions 
///
///  @param suggestionType The type of trigger suggestions to return 
///
///  @returns OAIOfferListResponse*
///
-(NSURLSessionTask*) listLastestByAccountWithAccountId: (NSNumber*) accountId
    timeframe: (NSNumber*) timeframe
    suggestionType: (NSString*) suggestionType
    completionHandler: (void (^)(OAIOfferListResponse* output, NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kOAIAudienceApiErrorDomain code:kOAIAudienceApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'timeframe' is set
    if (timeframe == nil) {
        NSParameterAssert(timeframe);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"timeframe"] };
            NSError* error = [NSError errorWithDomain:kOAIAudienceApiErrorDomain code:kOAIAudienceApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'suggestionType' is set
    if (suggestionType == nil) {
        NSParameterAssert(suggestionType);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"suggestionType"] };
            NSError* error = [NSError errorWithDomain:kOAIAudienceApiErrorDomain code:kOAIAudienceApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/audience/suggestion/latest"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        queryParams[@"accountId"] = accountId;
    }
    if (timeframe != nil) {
        queryParams[@"timeframe"] = timeframe;
    }
    if (suggestionType != nil) {
        queryParams[@"suggestionType"] = suggestionType;
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
                              responseType: @"OAIOfferListResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIOfferListResponse*)data, error);
                                }
                            }];
}

///
/// Send Suggestions
/// Use the accountId to determine the associated BillableEntity. From there get a list of all triggers associated with the BillableEntity.
///  @param accountId The account to match offers for. 
///
///  @param latitude the latitude 
///
///  @param longitude the longitude 
///
///  @returns OAISirqulResponse*
///
-(NSURLSessionTask*) sendByAccountWithAccountId: (NSNumber*) accountId
    latitude: (NSNumber*) latitude
    longitude: (NSNumber*) longitude
    completionHandler: (void (^)(OAISirqulResponse* output, NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kOAIAudienceApiErrorDomain code:kOAIAudienceApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'latitude' is set
    if (latitude == nil) {
        NSParameterAssert(latitude);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"latitude"] };
            NSError* error = [NSError errorWithDomain:kOAIAudienceApiErrorDomain code:kOAIAudienceApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'longitude' is set
    if (longitude == nil) {
        NSParameterAssert(longitude);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"longitude"] };
            NSError* error = [NSError errorWithDomain:kOAIAudienceApiErrorDomain code:kOAIAudienceApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/audience/suggestion/send"];

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
/// Update Audience
/// Update a user defined audience.
///  @param accountId The logged in user. 
///
///  @param audienceId The id of the audience to update. 
///
///  @param name The name of the audience (optional)
///
///  @param _description The description of the audience (optional)
///
///  @param searchTags The search tags (optional)
///
///  @param gender The gender; possible values are: MALE, FEMALE, ANY (optional)
///
///  @param ageGroups The list of age groups, comma separated; possible values are AGE_0_13, AGE_14_17, AGE_18_22, AGE_23_30, AGE_31_54, AGE_55_PLUS, AGE_ANY (to reset to none) (optional)
///
///  @param categoryIds The list of category ids, comma separated; possible values are retrieved via /api/{version}/category/search (pass in id values) (optional)
///
///  @param applicationIds The list of application ids, comma separated; possible values are retrieved via /api/{version}/application/list (pass in id values) (optional)
///
///  @param gameExperienceLevel The experience level of the player; possible values are: ANY, NEW, BEGINNER, INTERMEDIATE, EXPERT (optional)
///
///  @param devices (Deprecated) Use deviceIds. The list of targeted device names, comma separated; possible values are retrieved via /api/{version}/audience/devices (pass in name values) (optional)
///
///  @param deviceIds The list of targeted device ids, comma separated; possible values are retrieved via /api/{version}/audience/devices (pass in id values) (optional)
///
///  @param deviceVersions The list of targeted device version ranges that are aligned with the provided devices list, comma separated (examples: 2.3-X, 0-5.1.4, 4.3.1-6.1.4) (optional)
///
///  @param locations The list of locations to build the center around; comma separated list of latitude/longitude pairs (example: lat1,long1,lat2,long2) (optional)
///
///  @param radius The list of radius of influence for the audience, in miles; comma separated list. Either provide 1 to be applied to all location pairs or a matching list to each lat/long pair. (optional)
///
///  @param active if audience is active (optional)
///
///  @param sendSuggestion If true, then notify matching users when they are inside the radius (optional)
///
///  @param startTimeOffset Seconds from the start time of an event (optional)
///
///  @param endTimeOffset Seconds from the end time of an event (optional)
///
///  @param associateDescription the associate description (optional)
///
///  @param associateType The type of the object to center the audience geofence (optional)
///
///  @param associateId The ID of the object to center the audience geofence (optional)
///
///  @param groupingId Optional grouping id for the audience (optional)
///
///  @param metaData External custom client defined data (optional)
///
///  @param visibility Visibility of the audience (optional)
///
///  @param audienceType Type of audience (optional)
///
///  @param useOrder Use order for cohort (optional)
///
///  @param cohortRegionsData Cohort data for \"cohort\" audience type (optional)
///
///  @param appKey Filter results by application key (optional)
///
///  @param trilaterationTypes Trilateration types (optional)
///
///  @param uniqueName If true, makes sure the audience name is unique (optional)
///
///  @returns OAIAudienceResponse*
///
-(NSURLSessionTask*) updateAudienceWithAccountId: (NSNumber*) accountId
    audienceId: (NSNumber*) audienceId
    name: (NSString*) name
    _description: (NSString*) _description
    searchTags: (NSString*) searchTags
    gender: (NSString*) gender
    ageGroups: (NSString*) ageGroups
    categoryIds: (NSString*) categoryIds
    applicationIds: (NSString*) applicationIds
    gameExperienceLevel: (NSString*) gameExperienceLevel
    devices: (NSString*) devices
    deviceIds: (NSString*) deviceIds
    deviceVersions: (NSString*) deviceVersions
    locations: (NSString*) locations
    radius: (NSString*) radius
    active: (NSNumber*) active
    sendSuggestion: (NSNumber*) sendSuggestion
    startTimeOffset: (NSNumber*) startTimeOffset
    endTimeOffset: (NSNumber*) endTimeOffset
    associateDescription: (NSString*) associateDescription
    associateType: (NSString*) associateType
    associateId: (NSNumber*) associateId
    groupingId: (NSString*) groupingId
    metaData: (NSString*) metaData
    visibility: (NSString*) visibility
    audienceType: (NSString*) audienceType
    useOrder: (NSNumber*) useOrder
    cohortRegionsData: (NSString*) cohortRegionsData
    appKey: (NSString*) appKey
    trilaterationTypes: (NSString*) trilaterationTypes
    uniqueName: (NSNumber*) uniqueName
    completionHandler: (void (^)(OAIAudienceResponse* output, NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kOAIAudienceApiErrorDomain code:kOAIAudienceApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'audienceId' is set
    if (audienceId == nil) {
        NSParameterAssert(audienceId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"audienceId"] };
            NSError* error = [NSError errorWithDomain:kOAIAudienceApiErrorDomain code:kOAIAudienceApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/audience/update"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        queryParams[@"accountId"] = accountId;
    }
    if (audienceId != nil) {
        queryParams[@"audienceId"] = audienceId;
    }
    if (name != nil) {
        queryParams[@"name"] = name;
    }
    if (_description != nil) {
        queryParams[@"description"] = _description;
    }
    if (searchTags != nil) {
        queryParams[@"searchTags"] = searchTags;
    }
    if (gender != nil) {
        queryParams[@"gender"] = gender;
    }
    if (ageGroups != nil) {
        queryParams[@"ageGroups"] = ageGroups;
    }
    if (categoryIds != nil) {
        queryParams[@"categoryIds"] = categoryIds;
    }
    if (applicationIds != nil) {
        queryParams[@"applicationIds"] = applicationIds;
    }
    if (gameExperienceLevel != nil) {
        queryParams[@"gameExperienceLevel"] = gameExperienceLevel;
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
    if (active != nil) {
        queryParams[@"active"] = [active isEqual:@(YES)] ? @"true" : @"false";
    }
    if (sendSuggestion != nil) {
        queryParams[@"sendSuggestion"] = [sendSuggestion isEqual:@(YES)] ? @"true" : @"false";
    }
    if (startTimeOffset != nil) {
        queryParams[@"startTimeOffset"] = startTimeOffset;
    }
    if (endTimeOffset != nil) {
        queryParams[@"endTimeOffset"] = endTimeOffset;
    }
    if (associateDescription != nil) {
        queryParams[@"associateDescription"] = associateDescription;
    }
    if (associateType != nil) {
        queryParams[@"associateType"] = associateType;
    }
    if (associateId != nil) {
        queryParams[@"associateId"] = associateId;
    }
    if (groupingId != nil) {
        queryParams[@"groupingId"] = groupingId;
    }
    if (metaData != nil) {
        queryParams[@"metaData"] = metaData;
    }
    if (visibility != nil) {
        queryParams[@"visibility"] = visibility;
    }
    if (audienceType != nil) {
        queryParams[@"audienceType"] = audienceType;
    }
    if (useOrder != nil) {
        queryParams[@"useOrder"] = [useOrder isEqual:@(YES)] ? @"true" : @"false";
    }
    if (cohortRegionsData != nil) {
        queryParams[@"cohortRegionsData"] = cohortRegionsData;
    }
    if (appKey != nil) {
        queryParams[@"appKey"] = appKey;
    }
    if (trilaterationTypes != nil) {
        queryParams[@"trilaterationTypes"] = trilaterationTypes;
    }
    if (uniqueName != nil) {
        queryParams[@"uniqueName"] = [uniqueName isEqual:@(YES)] ? @"true" : @"false";
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
                              responseType: @"OAIAudienceResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIAudienceResponse*)data, error);
                                }
                            }];
}



@end
