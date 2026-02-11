#import "OAIListingApi.h"
#import "OAIQueryParamCollection.h"
#import "OAIApiClient.h"
#import "OAIListingFullResponse.h"
#import "OAIListingGroupResponse.h"
#import "OAIListingResponse.h"
#import "OAISirqulResponse.h"


@interface OAIListingApi ()

@property (nonatomic, strong, readwrite) NSMutableDictionary *mutableDefaultHeaders;

@end

@implementation OAIListingApi

NSString* kOAIListingApiErrorDomain = @"OAIListingApiErrorDomain";
NSInteger kOAIListingApiMissingParamErrorCode = 234513;

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
/// Create Listing
/// Creates a listing.
///  @param accountId the user's account ID 
///
///  @param name the name of the listing 
///
///  @param filterIds comma separated list of filter IDs (optional)
///
///  @param _description the description of the listing (optional)
///
///  @param start the start date of the listing (optional)
///
///  @param end the end date of the listing (optional)
///
///  @param locationName the name of the location the listing will be held at (optional)
///
///  @param locationDescription the description of the location the listing will be held at (optional)
///
///  @param isPrivate determines whether the listing is public or private (optional, default to @(NO))
///
///  @param externalId external identifier used by a third party (optional)
///
///  @param externalId2 secondary external identifier used by a third party (optional)
///
///  @param externalGroupId external group identifier used by a third party (optional)
///
///  @param active Sets the active flag (optional)
///
///  @param metaData external custom client defined data (optional)
///
///  @returns OAIListingFullResponse*
///
-(NSURLSessionTask*) createListingWithAccountId: (NSNumber*) accountId
    name: (NSString*) name
    filterIds: (NSString*) filterIds
    _description: (NSString*) _description
    start: (NSNumber*) start
    end: (NSNumber*) end
    locationName: (NSString*) locationName
    locationDescription: (NSString*) locationDescription
    isPrivate: (NSNumber*) isPrivate
    externalId: (NSString*) externalId
    externalId2: (NSString*) externalId2
    externalGroupId: (NSString*) externalGroupId
    active: (NSNumber*) active
    metaData: (NSString*) metaData
    completionHandler: (void (^)(OAIListingFullResponse* output, NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kOAIListingApiErrorDomain code:kOAIListingApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'name' is set
    if (name == nil) {
        NSParameterAssert(name);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"name"] };
            NSError* error = [NSError errorWithDomain:kOAIListingApiErrorDomain code:kOAIListingApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/listing/create"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        queryParams[@"accountId"] = accountId;
    }
    if (name != nil) {
        queryParams[@"name"] = name;
    }
    if (filterIds != nil) {
        queryParams[@"filterIds"] = filterIds;
    }
    if (_description != nil) {
        queryParams[@"description"] = _description;
    }
    if (start != nil) {
        queryParams[@"start"] = start;
    }
    if (end != nil) {
        queryParams[@"end"] = end;
    }
    if (locationName != nil) {
        queryParams[@"locationName"] = locationName;
    }
    if (locationDescription != nil) {
        queryParams[@"locationDescription"] = locationDescription;
    }
    if (isPrivate != nil) {
        queryParams[@"isPrivate"] = [isPrivate isEqual:@(YES)] ? @"true" : @"false";
    }
    if (externalId != nil) {
        queryParams[@"externalId"] = externalId;
    }
    if (externalId2 != nil) {
        queryParams[@"externalId2"] = externalId2;
    }
    if (externalGroupId != nil) {
        queryParams[@"externalGroupId"] = externalGroupId;
    }
    if (active != nil) {
        queryParams[@"active"] = [active isEqual:@(YES)] ? @"true" : @"false";
    }
    if (metaData != nil) {
        queryParams[@"metaData"] = metaData;
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
                              responseType: @"OAIListingFullResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIListingFullResponse*)data, error);
                                }
                            }];
}

///
/// Delete Listing
/// Delete a listing.
///  @param accountId the id of the logged in user 
///
///  @param listingId the id of the listing to delete 
///
///  @returns OAISirqulResponse*
///
-(NSURLSessionTask*) deleteListingWithAccountId: (NSNumber*) accountId
    listingId: (NSNumber*) listingId
    completionHandler: (void (^)(OAISirqulResponse* output, NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kOAIListingApiErrorDomain code:kOAIListingApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'listingId' is set
    if (listingId == nil) {
        NSParameterAssert(listingId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"listingId"] };
            NSError* error = [NSError errorWithDomain:kOAIListingApiErrorDomain code:kOAIListingApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/listing/delete"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        queryParams[@"accountId"] = accountId;
    }
    if (listingId != nil) {
        queryParams[@"listingId"] = listingId;
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
/// Get Listing
/// Get a listing by id.
///  @param listingId the id of the listing to get 
///
///  @returns OAIListingFullResponse*
///
-(NSURLSessionTask*) getListingWithListingId: (NSNumber*) listingId
    completionHandler: (void (^)(OAIListingFullResponse* output, NSError* error)) handler {
    // verify the required parameter 'listingId' is set
    if (listingId == nil) {
        NSParameterAssert(listingId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"listingId"] };
            NSError* error = [NSError errorWithDomain:kOAIListingApiErrorDomain code:kOAIListingApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/listing/get"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (listingId != nil) {
        queryParams[@"listingId"] = listingId;
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
                              responseType: @"OAIListingFullResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIListingFullResponse*)data, error);
                                }
                            }];
}

///
/// Search Listings
/// Search for event listings from the start time to end time
///  @param accountId the account id of the user (optional)
///
///  @param keyword search the event name and description for this keyword (optional)
///
///  @param start the record to begin the return set on (optional, default to @0)
///
///  @param limit the number of records to return (optional, default to @20)
///
///  @param activeOnly whether to search on active listings only (optional, default to @(NO))
///
///  @param latitude the current latitude of the user (optional)
///
///  @param longitude the current longitude of the user (optional)
///
///  @param startDate the start date to search from (optional)
///
///  @param endDate the end date to search to (optional)
///
///  @param categoryIds only return items of these categories (optional)
///
///  @param filterIds  (optional)
///
///  @param useListingOrderIds determines whether to use configured listing order ids (optional, default to @(YES))
///
///  @param externalId external identifier used by a third party (optional)
///
///  @param externalId2 secondary external identifier used by a third party (optional)
///
///  @param externalGroupId external group identifier used by a third party (optional)
///
///  @returns NSArray<OAIListingResponse>*
///
-(NSURLSessionTask*) searchListingWithAccountId: (NSNumber*) accountId
    keyword: (NSString*) keyword
    start: (NSNumber*) start
    limit: (NSNumber*) limit
    activeOnly: (NSNumber*) activeOnly
    latitude: (NSNumber*) latitude
    longitude: (NSNumber*) longitude
    startDate: (NSNumber*) startDate
    endDate: (NSNumber*) endDate
    categoryIds: (NSString*) categoryIds
    filterIds: (NSString*) filterIds
    useListingOrderIds: (NSNumber*) useListingOrderIds
    externalId: (NSString*) externalId
    externalId2: (NSString*) externalId2
    externalGroupId: (NSString*) externalGroupId
    completionHandler: (void (^)(NSArray<OAIListingResponse>* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/listing/search"];

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
    if (activeOnly != nil) {
        queryParams[@"activeOnly"] = [activeOnly isEqual:@(YES)] ? @"true" : @"false";
    }
    if (latitude != nil) {
        queryParams[@"latitude"] = latitude;
    }
    if (longitude != nil) {
        queryParams[@"longitude"] = longitude;
    }
    if (startDate != nil) {
        queryParams[@"startDate"] = startDate;
    }
    if (endDate != nil) {
        queryParams[@"endDate"] = endDate;
    }
    if (categoryIds != nil) {
        queryParams[@"categoryIds"] = categoryIds;
    }
    if (filterIds != nil) {
        queryParams[@"filterIds"] = filterIds;
    }
    if (useListingOrderIds != nil) {
        queryParams[@"useListingOrderIds"] = [useListingOrderIds isEqual:@(YES)] ? @"true" : @"false";
    }
    if (externalId != nil) {
        queryParams[@"externalId"] = externalId;
    }
    if (externalId2 != nil) {
        queryParams[@"externalId2"] = externalId2;
    }
    if (externalGroupId != nil) {
        queryParams[@"externalGroupId"] = externalGroupId;
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
                              responseType: @"NSArray<OAIListingResponse>*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSArray<OAIListingResponse>*)data, error);
                                }
                            }];
}

///
/// Summary Listing
/// Search for a list of summary listings from the start time up to 8 days out.
///  @param accountId the account id of the user (optional)
///
///  @param startDate the start date to search from (optional)
///
///  @param categoryIds the list of categories to search on (optional)
///
///  @param daysToInclude how far out to search, in days (optional, default to @15)
///
///  @param useListingOrderIds determines whether to use configured listing order ids (optional, default to @(YES))
///
///  @returns NSArray<OAIListingGroupResponse>*
///
-(NSURLSessionTask*) summaryListingWithAccountId: (NSNumber*) accountId
    startDate: (NSNumber*) startDate
    categoryIds: (NSString*) categoryIds
    daysToInclude: (NSNumber*) daysToInclude
    useListingOrderIds: (NSNumber*) useListingOrderIds
    completionHandler: (void (^)(NSArray<OAIListingGroupResponse>* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/listing/summary"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        queryParams[@"accountId"] = accountId;
    }
    if (startDate != nil) {
        queryParams[@"startDate"] = startDate;
    }
    if (categoryIds != nil) {
        queryParams[@"categoryIds"] = categoryIds;
    }
    if (daysToInclude != nil) {
        queryParams[@"daysToInclude"] = daysToInclude;
    }
    if (useListingOrderIds != nil) {
        queryParams[@"useListingOrderIds"] = [useListingOrderIds isEqual:@(YES)] ? @"true" : @"false";
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
                              responseType: @"NSArray<OAIListingGroupResponse>*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSArray<OAIListingGroupResponse>*)data, error);
                                }
                            }];
}

///
/// Update Listing
/// Updates a listing.
///  @param accountId the user's account ID 
///
///  @param listingId the listing to update 
///
///  @param filterIds comma separated list of filter IDs (optional)
///
///  @param name the name of the listing (optional)
///
///  @param _description the description of the listing (optional)
///
///  @param start the start date of the listing (optional)
///
///  @param end the end date of the listing (optional)
///
///  @param locationName the name of the location the listing will be held at (optional)
///
///  @param locationDescription the description of the location the listing will be held at (optional)
///
///  @param isPrivate determines whether the listing is public or private (optional)
///
///  @param externalId external identifier used by a third party (optional)
///
///  @param externalId2 secondary external identifier used by a third party (optional)
///
///  @param externalGroupId external group identifier used by a third party (optional)
///
///  @param active Sets the active flag (optional)
///
///  @param metaData external custom client defined data (optional)
///
///  @returns OAIListingFullResponse*
///
-(NSURLSessionTask*) updateListingWithAccountId: (NSNumber*) accountId
    listingId: (NSNumber*) listingId
    filterIds: (NSString*) filterIds
    name: (NSString*) name
    _description: (NSString*) _description
    start: (NSNumber*) start
    end: (NSNumber*) end
    locationName: (NSString*) locationName
    locationDescription: (NSString*) locationDescription
    isPrivate: (NSNumber*) isPrivate
    externalId: (NSString*) externalId
    externalId2: (NSString*) externalId2
    externalGroupId: (NSString*) externalGroupId
    active: (NSNumber*) active
    metaData: (NSString*) metaData
    completionHandler: (void (^)(OAIListingFullResponse* output, NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kOAIListingApiErrorDomain code:kOAIListingApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'listingId' is set
    if (listingId == nil) {
        NSParameterAssert(listingId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"listingId"] };
            NSError* error = [NSError errorWithDomain:kOAIListingApiErrorDomain code:kOAIListingApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/listing/update"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        queryParams[@"accountId"] = accountId;
    }
    if (listingId != nil) {
        queryParams[@"listingId"] = listingId;
    }
    if (filterIds != nil) {
        queryParams[@"filterIds"] = filterIds;
    }
    if (name != nil) {
        queryParams[@"name"] = name;
    }
    if (_description != nil) {
        queryParams[@"description"] = _description;
    }
    if (start != nil) {
        queryParams[@"start"] = start;
    }
    if (end != nil) {
        queryParams[@"end"] = end;
    }
    if (locationName != nil) {
        queryParams[@"locationName"] = locationName;
    }
    if (locationDescription != nil) {
        queryParams[@"locationDescription"] = locationDescription;
    }
    if (isPrivate != nil) {
        queryParams[@"isPrivate"] = [isPrivate isEqual:@(YES)] ? @"true" : @"false";
    }
    if (externalId != nil) {
        queryParams[@"externalId"] = externalId;
    }
    if (externalId2 != nil) {
        queryParams[@"externalId2"] = externalId2;
    }
    if (externalGroupId != nil) {
        queryParams[@"externalGroupId"] = externalGroupId;
    }
    if (active != nil) {
        queryParams[@"active"] = [active isEqual:@(YES)] ? @"true" : @"false";
    }
    if (metaData != nil) {
        queryParams[@"metaData"] = metaData;
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
                              responseType: @"OAIListingFullResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIListingFullResponse*)data, error);
                                }
                            }];
}



@end
