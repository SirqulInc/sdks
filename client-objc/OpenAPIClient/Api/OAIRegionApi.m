#import "OAIRegionApi.h"
#import "OAIQueryParamCollection.h"
#import "OAIApiClient.h"
#import "OAIRegionResponse.h"


@interface OAIRegionApi ()

@property (nonatomic, strong, readwrite) NSMutableDictionary *mutableDefaultHeaders;

@end

@implementation OAIRegionApi

NSString* kOAIRegionApiErrorDomain = @"OAIRegionApiErrorDomain";
NSInteger kOAIRegionApiMissingParamErrorCode = 234513;

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
/// Create Region
/// Create a region.
///  @param accountId The id of the account sending the request 
///
///  @param regionClass RegionClass of this region 
///
///  @param shortName Short name of the region. This is optimized for search 
///
///  @param fullName Full name of the region (optional)
///
///  @param parentIds Comma separated region ids that are parents of this region (optional)
///
///  @param childrenIds Comma separated region ids that are children of this region (optional)
///
///  @param postalCodeIds Comma separated postal code ids the region will include (optional)
///
///  @param locations Sets of name,lat,long used to create new postal codes assigned to the region (optional)
///
///  @param retailerLocationId the id of the retailer location that the region is being created for (optional)
///
///  @param visibility The Visibility of the region (optional)
///
///  @param categoryIds the categories that the region is assigned to (optional)
///
///  @param filterIds the filters that the region is assigned to (optional)
///
///  @param start  (optional)
///
///  @param end  (optional)
///
///  @param polygon the polygon generated for the region (optional)
///
///  @param metaData the meta data associated with the region (optional)
///
///  @param latitude the latitude of the region (optional)
///
///  @param longitude the longitude of the region (optional)
///
///  @param versionCode the version code (optional)
///
///  @param root If this is a root region or not. If true means this region has no parent regions (optional)
///
///  @param active Active or inactive status of the region (optional)
///
///  @returns OAIRegionResponse*
///
-(NSURLSessionTask*) createRegionWithAccountId: (NSNumber*) accountId
    regionClass: (NSString*) regionClass
    shortName: (NSString*) shortName
    fullName: (NSString*) fullName
    parentIds: (NSString*) parentIds
    childrenIds: (NSString*) childrenIds
    postalCodeIds: (NSString*) postalCodeIds
    locations: (NSString*) locations
    retailerLocationId: (NSNumber*) retailerLocationId
    visibility: (NSString*) visibility
    categoryIds: (NSString*) categoryIds
    filterIds: (NSString*) filterIds
    start: (NSNumber*) start
    end: (NSNumber*) end
    polygon: (NSString*) polygon
    metaData: (NSString*) metaData
    latitude: (NSNumber*) latitude
    longitude: (NSNumber*) longitude
    versionCode: (NSNumber*) versionCode
    root: (NSNumber*) root
    active: (NSNumber*) active
    completionHandler: (void (^)(OAIRegionResponse* output, NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kOAIRegionApiErrorDomain code:kOAIRegionApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'regionClass' is set
    if (regionClass == nil) {
        NSParameterAssert(regionClass);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"regionClass"] };
            NSError* error = [NSError errorWithDomain:kOAIRegionApiErrorDomain code:kOAIRegionApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'shortName' is set
    if (shortName == nil) {
        NSParameterAssert(shortName);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"shortName"] };
            NSError* error = [NSError errorWithDomain:kOAIRegionApiErrorDomain code:kOAIRegionApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/region/create"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        queryParams[@"accountId"] = accountId;
    }
    if (regionClass != nil) {
        queryParams[@"regionClass"] = regionClass;
    }
    if (shortName != nil) {
        queryParams[@"shortName"] = shortName;
    }
    if (fullName != nil) {
        queryParams[@"fullName"] = fullName;
    }
    if (parentIds != nil) {
        queryParams[@"parentIds"] = parentIds;
    }
    if (childrenIds != nil) {
        queryParams[@"childrenIds"] = childrenIds;
    }
    if (postalCodeIds != nil) {
        queryParams[@"postalCodeIds"] = postalCodeIds;
    }
    if (locations != nil) {
        queryParams[@"locations"] = locations;
    }
    if (retailerLocationId != nil) {
        queryParams[@"retailerLocationId"] = retailerLocationId;
    }
    if (visibility != nil) {
        queryParams[@"visibility"] = visibility;
    }
    if (categoryIds != nil) {
        queryParams[@"categoryIds"] = categoryIds;
    }
    if (filterIds != nil) {
        queryParams[@"filterIds"] = filterIds;
    }
    if (start != nil) {
        queryParams[@"start"] = start;
    }
    if (end != nil) {
        queryParams[@"end"] = end;
    }
    if (polygon != nil) {
        queryParams[@"polygon"] = polygon;
    }
    if (metaData != nil) {
        queryParams[@"metaData"] = metaData;
    }
    if (latitude != nil) {
        queryParams[@"latitude"] = latitude;
    }
    if (longitude != nil) {
        queryParams[@"longitude"] = longitude;
    }
    if (versionCode != nil) {
        queryParams[@"versionCode"] = versionCode;
    }
    if (root != nil) {
        queryParams[@"root"] = [root isEqual:@(YES)] ? @"true" : @"false";
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
                              responseType: @"OAIRegionResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIRegionResponse*)data, error);
                                }
                            }];
}

///
/// Delete Region
/// Delete a region.
///  @param accountId the id of the account logged in 
///
///  @param regionId the id of the region 
///
///  @returns OAIRegionResponse*
///
-(NSURLSessionTask*) deleteRegionWithAccountId: (NSNumber*) accountId
    regionId: (NSNumber*) regionId
    completionHandler: (void (^)(OAIRegionResponse* output, NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kOAIRegionApiErrorDomain code:kOAIRegionApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'regionId' is set
    if (regionId == nil) {
        NSParameterAssert(regionId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"regionId"] };
            NSError* error = [NSError errorWithDomain:kOAIRegionApiErrorDomain code:kOAIRegionApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/region/delete"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        queryParams[@"accountId"] = accountId;
    }
    if (regionId != nil) {
        queryParams[@"regionId"] = regionId;
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
                              responseType: @"OAIRegionResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIRegionResponse*)data, error);
                                }
                            }];
}

///
/// Get Region
/// Get a region.
///  @param regionId the id of the region to get 
///
///  @param accountId the id of the logged in user (optional)
///
///  @returns OAIRegionResponse*
///
-(NSURLSessionTask*) getRegionWithRegionId: (NSNumber*) regionId
    accountId: (NSNumber*) accountId
    completionHandler: (void (^)(OAIRegionResponse* output, NSError* error)) handler {
    // verify the required parameter 'regionId' is set
    if (regionId == nil) {
        NSParameterAssert(regionId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"regionId"] };
            NSError* error = [NSError errorWithDomain:kOAIRegionApiErrorDomain code:kOAIRegionApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/region/get"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        queryParams[@"accountId"] = accountId;
    }
    if (regionId != nil) {
        queryParams[@"regionId"] = regionId;
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
                              responseType: @"OAIRegionResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIRegionResponse*)data, error);
                                }
                            }];
}

///
/// Search Regions
/// Get the list of regions.
///  @param accountId the owner account id of the region to be created (optional)
///
///  @param query This parameter is deprecated. deprecated - use \"keyword\" (optional)
///
///  @param keyword the keyword to filter results on (optional)
///
///  @param latitude the latitude of the user (optional)
///
///  @param longitude the longitude of the user (optional)
///
///  @param range the search radius (optional)
///
///  @param regionClass  (optional)
///
///  @param visibility  (optional)
///
///  @param searchMode the SearchIndexMode: RDS, LUCENE, or CLOUDINDEX. If not provided, will use the default defined in the Sirqul server (optional)
///
///  @param sortField the field to order results by: ID, UPDATED, NAME, or DISTANCE. If not provided, will use the default which is by ID for text and DISTANCE when lat/long is provided. (optional)
///
///  @param descending determines if the results get ordered in descending order (optional)
///
///  @param includeParent include the parent region or not (optional)
///
///  @param includeChildren include the chidren regions or not (optional)
///
///  @param includePostalCodes include the postal codes associated with the region or not (optional)
///
///  @param categoryIds search on the categories associated with the region (optional)
///
///  @param filterIds search on the filters associated with the region (optional)
///
///  @param versionCode filter by a specific version code (optional)
///
///  @param activeOnly filter to show only active results (optional)
///
///  @param showDeleted If showDeleted is true and activeOnly is false, will return regions that have been deleted (optional)
///
///  @param lastUpdatedSince only returns records that have last updated since this date \\(UTC timestamp in milliseconds\\) (optional)
///
///  @param start the start index for pagination (optional)
///
///  @param limit the limit for pagination (optional)
///
///  @returns NSArray<OAIRegionResponse>*
///
-(NSURLSessionTask*) searchRegionsWithAccountId: (NSNumber*) accountId
    query: (NSString*) query
    keyword: (NSString*) keyword
    latitude: (NSNumber*) latitude
    longitude: (NSNumber*) longitude
    range: (NSNumber*) range
    regionClass: (NSString*) regionClass
    visibility: (NSString*) visibility
    searchMode: (NSString*) searchMode
    sortField: (NSString*) sortField
    descending: (NSNumber*) descending
    includeParent: (NSNumber*) includeParent
    includeChildren: (NSNumber*) includeChildren
    includePostalCodes: (NSNumber*) includePostalCodes
    categoryIds: (NSString*) categoryIds
    filterIds: (NSString*) filterIds
    versionCode: (NSNumber*) versionCode
    activeOnly: (NSNumber*) activeOnly
    showDeleted: (NSNumber*) showDeleted
    lastUpdatedSince: (NSNumber*) lastUpdatedSince
    start: (NSNumber*) start
    limit: (NSNumber*) limit
    completionHandler: (void (^)(NSArray<OAIRegionResponse>* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/region/search"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        queryParams[@"accountId"] = accountId;
    }
    if (query != nil) {
        queryParams[@"query"] = query;
    }
    if (keyword != nil) {
        queryParams[@"keyword"] = keyword;
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
    if (regionClass != nil) {
        queryParams[@"regionClass"] = regionClass;
    }
    if (visibility != nil) {
        queryParams[@"visibility"] = visibility;
    }
    if (searchMode != nil) {
        queryParams[@"searchMode"] = searchMode;
    }
    if (sortField != nil) {
        queryParams[@"sortField"] = sortField;
    }
    if (descending != nil) {
        queryParams[@"descending"] = [descending isEqual:@(YES)] ? @"true" : @"false";
    }
    if (includeParent != nil) {
        queryParams[@"includeParent"] = [includeParent isEqual:@(YES)] ? @"true" : @"false";
    }
    if (includeChildren != nil) {
        queryParams[@"includeChildren"] = [includeChildren isEqual:@(YES)] ? @"true" : @"false";
    }
    if (includePostalCodes != nil) {
        queryParams[@"includePostalCodes"] = [includePostalCodes isEqual:@(YES)] ? @"true" : @"false";
    }
    if (categoryIds != nil) {
        queryParams[@"categoryIds"] = categoryIds;
    }
    if (filterIds != nil) {
        queryParams[@"filterIds"] = filterIds;
    }
    if (versionCode != nil) {
        queryParams[@"versionCode"] = versionCode;
    }
    if (activeOnly != nil) {
        queryParams[@"activeOnly"] = [activeOnly isEqual:@(YES)] ? @"true" : @"false";
    }
    if (showDeleted != nil) {
        queryParams[@"showDeleted"] = [showDeleted isEqual:@(YES)] ? @"true" : @"false";
    }
    if (lastUpdatedSince != nil) {
        queryParams[@"lastUpdatedSince"] = lastUpdatedSince;
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
                              responseType: @"NSArray<OAIRegionResponse>*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSArray<OAIRegionResponse>*)data, error);
                                }
                            }];
}

///
/// Update Region
/// Update a region.
///  @param accountId The id of the account sending the request 
///
///  @param regionId The id of the region to be updated 
///
///  @param regionClass RegionClass of this region (optional)
///
///  @param shortName Short name of the region. This is optimized for search (optional)
///
///  @param fullName Full name of the region (optional)
///
///  @param parentIds Comma separated region ids that are parents of this region (optional)
///
///  @param childrenIds Comma separated region ids that are children of this region (optional)
///
///  @param postalCodeIds Comma separated postal code ids the region will include (optional)
///
///  @param locations Sets of name,lat,long used to create new postal codes assigned to the region (optional)
///
///  @param retailerLocationId the retailer location ID that the region is associated with (optional)
///
///  @param visibility The Visibility of the region (optional)
///
///  @param categoryIds the categories that the region is assigned to (optional)
///
///  @param filterIds the filters that the region is assigned to (optional)
///
///  @param start  (optional)
///
///  @param end  (optional)
///
///  @param polygon the polygon of the region (optional)
///
///  @param metaData the meta data of the region (optional)
///
///  @param latitude the latitude of the region (optional)
///
///  @param longitude the longitude of the region (optional)
///
///  @param versionCode the version code (optional)
///
///  @param root If this is a root region or not. If true means this region has no parent regions (optional)
///
///  @param active Active or inactive status of the region (optional)
///
///  @param clearLists If true clear the children and postal code lists before add new ones, otherwise just append. (optional)
///
///  @returns OAIRegionResponse*
///
-(NSURLSessionTask*) updateRegionWithAccountId: (NSNumber*) accountId
    regionId: (NSNumber*) regionId
    regionClass: (NSString*) regionClass
    shortName: (NSString*) shortName
    fullName: (NSString*) fullName
    parentIds: (NSString*) parentIds
    childrenIds: (NSString*) childrenIds
    postalCodeIds: (NSString*) postalCodeIds
    locations: (NSString*) locations
    retailerLocationId: (NSNumber*) retailerLocationId
    visibility: (NSString*) visibility
    categoryIds: (NSString*) categoryIds
    filterIds: (NSString*) filterIds
    start: (NSNumber*) start
    end: (NSNumber*) end
    polygon: (NSString*) polygon
    metaData: (NSString*) metaData
    latitude: (NSNumber*) latitude
    longitude: (NSNumber*) longitude
    versionCode: (NSNumber*) versionCode
    root: (NSNumber*) root
    active: (NSNumber*) active
    clearLists: (NSNumber*) clearLists
    completionHandler: (void (^)(OAIRegionResponse* output, NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kOAIRegionApiErrorDomain code:kOAIRegionApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'regionId' is set
    if (regionId == nil) {
        NSParameterAssert(regionId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"regionId"] };
            NSError* error = [NSError errorWithDomain:kOAIRegionApiErrorDomain code:kOAIRegionApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/region/update"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        queryParams[@"accountId"] = accountId;
    }
    if (regionId != nil) {
        queryParams[@"regionId"] = regionId;
    }
    if (regionClass != nil) {
        queryParams[@"regionClass"] = regionClass;
    }
    if (shortName != nil) {
        queryParams[@"shortName"] = shortName;
    }
    if (fullName != nil) {
        queryParams[@"fullName"] = fullName;
    }
    if (parentIds != nil) {
        queryParams[@"parentIds"] = parentIds;
    }
    if (childrenIds != nil) {
        queryParams[@"childrenIds"] = childrenIds;
    }
    if (postalCodeIds != nil) {
        queryParams[@"postalCodeIds"] = postalCodeIds;
    }
    if (locations != nil) {
        queryParams[@"locations"] = locations;
    }
    if (retailerLocationId != nil) {
        queryParams[@"retailerLocationId"] = retailerLocationId;
    }
    if (visibility != nil) {
        queryParams[@"visibility"] = visibility;
    }
    if (categoryIds != nil) {
        queryParams[@"categoryIds"] = categoryIds;
    }
    if (filterIds != nil) {
        queryParams[@"filterIds"] = filterIds;
    }
    if (start != nil) {
        queryParams[@"start"] = start;
    }
    if (end != nil) {
        queryParams[@"end"] = end;
    }
    if (polygon != nil) {
        queryParams[@"polygon"] = polygon;
    }
    if (metaData != nil) {
        queryParams[@"metaData"] = metaData;
    }
    if (latitude != nil) {
        queryParams[@"latitude"] = latitude;
    }
    if (longitude != nil) {
        queryParams[@"longitude"] = longitude;
    }
    if (versionCode != nil) {
        queryParams[@"versionCode"] = versionCode;
    }
    if (root != nil) {
        queryParams[@"root"] = [root isEqual:@(YES)] ? @"true" : @"false";
    }
    if (active != nil) {
        queryParams[@"active"] = [active isEqual:@(YES)] ? @"true" : @"false";
    }
    if (clearLists != nil) {
        queryParams[@"clearLists"] = [clearLists isEqual:@(YES)] ? @"true" : @"false";
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
                              responseType: @"OAIRegionResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIRegionResponse*)data, error);
                                }
                            }];
}



@end
