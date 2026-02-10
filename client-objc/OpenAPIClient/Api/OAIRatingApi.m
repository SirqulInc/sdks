#import "OAIRatingApi.h"
#import "OAIQueryParamCollection.h"
#import "OAIApiClient.h"
#import "OAIRatingIndexResponse.h"
#import "OAIRatingResponse.h"
#import "OAISirqulResponse.h"


@interface OAIRatingApi ()

@property (nonatomic, strong, readwrite) NSMutableDictionary *mutableDefaultHeaders;

@end

@implementation OAIRatingApi

NSString* kOAIRatingApiErrorDomain = @"OAIRatingApiErrorDomain";
NSInteger kOAIRatingApiMissingParamErrorCode = 234513;

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
/// Create Rating
/// This is used to leave rating on a ratable object (i.e. retailer locations). Each user can only rate on a ratable object once per category. If a user rates on the same object and category, the previous rating will be overwritten. Leaving a rating on a ratable object will be visible to everyone who has access to view the object.
///  @param version  
///
///  @param ratableType The ratable object type {RETAILER_LOCATION} 
///
///  @param ratableId The id of the ratable object 
///
///  @param ratingValue The integer value of 0-100 
///
///  @param deviceId The unique device identifier that made the request (either deviceId or accountId must be used) (optional)
///
///  @param accountId The unique accountId that made the request (either deviceId or accountId must be used) (optional)
///
///  @param categoryId  (optional)
///
///  @param display A subject title for the user rating (limited to 255 characters) (optional)
///
///  @param _description The description of the rating (optional)
///
///  @param locationDescription The description of the location (optional)
///
///  @param latitude The current location of the user (optional)
///
///  @param longitude The current location of the user (optional)
///
///  @returns OAIRatingResponse*
///
-(NSURLSessionTask*) createRatingWithVersion: (NSNumber*) version
    ratableType: (NSString*) ratableType
    ratableId: (NSNumber*) ratableId
    ratingValue: (NSNumber*) ratingValue
    deviceId: (NSString*) deviceId
    accountId: (NSNumber*) accountId
    categoryId: (NSNumber*) categoryId
    display: (NSString*) display
    _description: (NSString*) _description
    locationDescription: (NSString*) locationDescription
    latitude: (NSNumber*) latitude
    longitude: (NSNumber*) longitude
    completionHandler: (void (^)(OAIRatingResponse* output, NSError* error)) handler {
    // verify the required parameter 'version' is set
    if (version == nil) {
        NSParameterAssert(version);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"version"] };
            NSError* error = [NSError errorWithDomain:kOAIRatingApiErrorDomain code:kOAIRatingApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'ratableType' is set
    if (ratableType == nil) {
        NSParameterAssert(ratableType);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"ratableType"] };
            NSError* error = [NSError errorWithDomain:kOAIRatingApiErrorDomain code:kOAIRatingApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'ratableId' is set
    if (ratableId == nil) {
        NSParameterAssert(ratableId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"ratableId"] };
            NSError* error = [NSError errorWithDomain:kOAIRatingApiErrorDomain code:kOAIRatingApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'ratingValue' is set
    if (ratingValue == nil) {
        NSParameterAssert(ratingValue);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"ratingValue"] };
            NSError* error = [NSError errorWithDomain:kOAIRatingApiErrorDomain code:kOAIRatingApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/{version}/rating/create"];

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
    if (ratableType != nil) {
        queryParams[@"ratableType"] = ratableType;
    }
    if (ratableId != nil) {
        queryParams[@"ratableId"] = ratableId;
    }
    if (ratingValue != nil) {
        queryParams[@"ratingValue"] = ratingValue;
    }
    if (categoryId != nil) {
        queryParams[@"categoryId"] = categoryId;
    }
    if (display != nil) {
        queryParams[@"display"] = display;
    }
    if (_description != nil) {
        queryParams[@"description"] = _description;
    }
    if (locationDescription != nil) {
        queryParams[@"locationDescription"] = locationDescription;
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
                              responseType: @"OAIRatingResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIRatingResponse*)data, error);
                                }
                            }];
}

///
/// Delete Rating
/// Sets a rating as deleted.
///  @param version  
///
///  @param ratingId The ID of the rating to delete 
///
///  @param deviceId The unique device identifier that made the request (either deviceId or accountId must be used) (optional)
///
///  @param accountId The unique accountId that made the request (either deviceId or accountId must be used) (optional)
///
///  @returns OAISirqulResponse*
///
-(NSURLSessionTask*) deleteRatingWithVersion: (NSNumber*) version
    ratingId: (NSNumber*) ratingId
    deviceId: (NSString*) deviceId
    accountId: (NSNumber*) accountId
    completionHandler: (void (^)(OAISirqulResponse* output, NSError* error)) handler {
    // verify the required parameter 'version' is set
    if (version == nil) {
        NSParameterAssert(version);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"version"] };
            NSError* error = [NSError errorWithDomain:kOAIRatingApiErrorDomain code:kOAIRatingApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'ratingId' is set
    if (ratingId == nil) {
        NSParameterAssert(ratingId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"ratingId"] };
            NSError* error = [NSError errorWithDomain:kOAIRatingApiErrorDomain code:kOAIRatingApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/{version}/rating/delete"];

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
    if (ratingId != nil) {
        queryParams[@"ratingId"] = ratingId;
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
/// Search Location Rating Indexes
/// Search for retailer locations by averages near you.
///  @param version  
///
///  @param categoryIds Comma separated list of category ids to filter the results by (optional)
///
///  @param keyword The keyword used to search (optional)
///
///  @param locationType The type of location to filter the results by (optional)
///
///  @param sortField The column to sort the search on {ID, CREATED, UPDATED, ACTIVE, RATABLE_TYPE, RATABLE_ID, RATABLE_DISPLAY, CATEGORY_ID, CATEGORY_NAME, CATEGORY_SHORT_NAME, CATEGORY_DISPLAY, COUNT, SUMMATION, AVERAGE, VALUE} (optional)
///
///  @param descending The order to return the search results (optional)
///
///  @param start The record to begin the return set on (optional)
///
///  @param limit The number of records to return (optional)
///
///  @param searchRange The search radius in kilometers to filter results (optional)
///
///  @param latitude The current location of the user (optional)
///
///  @param longitude The current location of the user (optional)
///
///  @param returnOverallRating Determines whether to return the overall rating record instead (optional)
///
///  @param distanceUnit  (optional)
///
///  @param returnRetailer whether to return the retailer or not (optional)
///
///  @param returnAssets whether to return the assets or not (optional)
///
///  @param returnOffers whether to return the offers or not (optional)
///
///  @param returnCategories whether to return the categories or not (optional)
///
///  @param returnFilters whether to return the filters or not (optional)
///
///  @returns NSArray<OAIRatingIndexResponse>*
///
-(NSURLSessionTask*) searchLocationRatingIndexesWithVersion: (NSNumber*) version
    categoryIds: (NSString*) categoryIds
    keyword: (NSString*) keyword
    locationType: (NSString*) locationType
    sortField: (NSString*) sortField
    descending: (NSNumber*) descending
    start: (NSNumber*) start
    limit: (NSNumber*) limit
    searchRange: (NSNumber*) searchRange
    latitude: (NSNumber*) latitude
    longitude: (NSNumber*) longitude
    returnOverallRating: (NSNumber*) returnOverallRating
    distanceUnit: (NSString*) distanceUnit
    returnRetailer: (NSNumber*) returnRetailer
    returnAssets: (NSNumber*) returnAssets
    returnOffers: (NSNumber*) returnOffers
    returnCategories: (NSNumber*) returnCategories
    returnFilters: (NSNumber*) returnFilters
    completionHandler: (void (^)(NSArray<OAIRatingIndexResponse>* output, NSError* error)) handler {
    // verify the required parameter 'version' is set
    if (version == nil) {
        NSParameterAssert(version);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"version"] };
            NSError* error = [NSError errorWithDomain:kOAIRatingApiErrorDomain code:kOAIRatingApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/{version}/location/rating/index/search"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (version != nil) {
        pathParams[@"version"] = version;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (categoryIds != nil) {
        queryParams[@"categoryIds"] = categoryIds;
    }
    if (keyword != nil) {
        queryParams[@"keyword"] = keyword;
    }
    if (locationType != nil) {
        queryParams[@"locationType"] = locationType;
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
    if (latitude != nil) {
        queryParams[@"latitude"] = latitude;
    }
    if (longitude != nil) {
        queryParams[@"longitude"] = longitude;
    }
    if (returnOverallRating != nil) {
        queryParams[@"returnOverallRating"] = [returnOverallRating isEqual:@(YES)] ? @"true" : @"false";
    }
    if (distanceUnit != nil) {
        queryParams[@"distanceUnit"] = distanceUnit;
    }
    if (returnRetailer != nil) {
        queryParams[@"returnRetailer"] = [returnRetailer isEqual:@(YES)] ? @"true" : @"false";
    }
    if (returnAssets != nil) {
        queryParams[@"returnAssets"] = [returnAssets isEqual:@(YES)] ? @"true" : @"false";
    }
    if (returnOffers != nil) {
        queryParams[@"returnOffers"] = [returnOffers isEqual:@(YES)] ? @"true" : @"false";
    }
    if (returnCategories != nil) {
        queryParams[@"returnCategories"] = [returnCategories isEqual:@(YES)] ? @"true" : @"false";
    }
    if (returnFilters != nil) {
        queryParams[@"returnFilters"] = [returnFilters isEqual:@(YES)] ? @"true" : @"false";
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
                              responseType: @"NSArray<OAIRatingIndexResponse>*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSArray<OAIRatingIndexResponse>*)data, error);
                                }
                            }];
}

///
/// Search Rating Indexes
/// Search for ratable items by averages.
///  @param version  
///
///  @param ratableType Filter results by a ratable type {RETAILER_LOCATION} 
///
///  @param ratableIds Comma separated list of ratable ids to filter the resuts by (optional)
///
///  @param categoryIds Comma separated list of category ids to filter the results by (optional)
///
///  @param secondaryType  (optional)
///
///  @param keyword The keyword used to search (optional)
///
///  @param sortField The column to sort the search on {ID, CREATED, UPDATED, ACTIVE, RATABLE_TYPE, RATABLE_ID, RATABLE_DISPLAY, CATEGORY_ID, CATEGORY_NAME, CATEGORY_SHORT_NAME, CATEGORY_DISPLAY, COUNT, SUMMATION, AVERAGE, VALUE} (optional)
///
///  @param descending The order to return the search results (optional)
///
///  @param start The record to begin the return set on (optional)
///
///  @param limit The number of records to return (optional)
///
///  @param latitude  (optional)
///
///  @param longitude  (optional)
///
///  @param returnRatable Determines whether to return the ratable object in the response (optional)
///
///  @param returnOverallRating Determines whether to return the overall rating record instead (optional)
///
///  @returns NSArray<OAIRatingIndexResponse>*
///
-(NSURLSessionTask*) searchRatingIndexesWithVersion: (NSNumber*) version
    ratableType: (NSString*) ratableType
    ratableIds: (NSString*) ratableIds
    categoryIds: (NSString*) categoryIds
    secondaryType: (NSString*) secondaryType
    keyword: (NSString*) keyword
    sortField: (NSString*) sortField
    descending: (NSNumber*) descending
    start: (NSNumber*) start
    limit: (NSNumber*) limit
    latitude: (NSNumber*) latitude
    longitude: (NSNumber*) longitude
    returnRatable: (NSNumber*) returnRatable
    returnOverallRating: (NSNumber*) returnOverallRating
    completionHandler: (void (^)(NSArray<OAIRatingIndexResponse>* output, NSError* error)) handler {
    // verify the required parameter 'version' is set
    if (version == nil) {
        NSParameterAssert(version);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"version"] };
            NSError* error = [NSError errorWithDomain:kOAIRatingApiErrorDomain code:kOAIRatingApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'ratableType' is set
    if (ratableType == nil) {
        NSParameterAssert(ratableType);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"ratableType"] };
            NSError* error = [NSError errorWithDomain:kOAIRatingApiErrorDomain code:kOAIRatingApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/{version}/rating/index/search"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (version != nil) {
        pathParams[@"version"] = version;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (ratableType != nil) {
        queryParams[@"ratableType"] = ratableType;
    }
    if (ratableIds != nil) {
        queryParams[@"ratableIds"] = ratableIds;
    }
    if (categoryIds != nil) {
        queryParams[@"categoryIds"] = categoryIds;
    }
    if (secondaryType != nil) {
        queryParams[@"secondaryType"] = secondaryType;
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
    if (latitude != nil) {
        queryParams[@"latitude"] = latitude;
    }
    if (longitude != nil) {
        queryParams[@"longitude"] = longitude;
    }
    if (returnRatable != nil) {
        queryParams[@"returnRatable"] = [returnRatable isEqual:@(YES)] ? @"true" : @"false";
    }
    if (returnOverallRating != nil) {
        queryParams[@"returnOverallRating"] = [returnOverallRating isEqual:@(YES)] ? @"true" : @"false";
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
                              responseType: @"NSArray<OAIRatingIndexResponse>*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSArray<OAIRatingIndexResponse>*)data, error);
                                }
                            }];
}

///
/// Search Ratings
/// Search for ratings on a ratable object.
///  @param version  
///
///  @param deviceId The device id (deviceId or accountId required) (optional)
///
///  @param accountId The account id of the user (deviceId or accountId required) (optional)
///
///  @param filterAccountId Filter results for a particular account (optional)
///
///  @param ratableType The ratable object type {RETAILER_LOCATION} (optional)
///
///  @param ratableId The id of the ratable object (optional)
///
///  @param categoryIds Comma separated list of category ids to filter the results by (optional)
///
///  @param keyword The keyword used to search (optional)
///
///  @param sortField The column to sort the search on {ID, CREATED, UPDATED, ACTIVE, OWNER_DISPLAY, RATABLE_TYPE, RATABLE_ID, RATABLE_DISPLAY, CATEGORY_ID, CATEGORY_NAME, CATEGORY_SHORT_NAME, CATEGORY_DISPLAY, VALUE} (optional)
///
///  @param descending The order to return the search results (optional)
///
///  @param start The record to begin the return set on (optional)
///
///  @param limit The number of records to return (optional)
///
///  @returns NSArray<OAIRatingResponse>*
///
-(NSURLSessionTask*) searchRatingsWithVersion: (NSNumber*) version
    deviceId: (NSString*) deviceId
    accountId: (NSNumber*) accountId
    filterAccountId: (NSNumber*) filterAccountId
    ratableType: (NSString*) ratableType
    ratableId: (NSNumber*) ratableId
    categoryIds: (NSString*) categoryIds
    keyword: (NSString*) keyword
    sortField: (NSString*) sortField
    descending: (NSNumber*) descending
    start: (NSNumber*) start
    limit: (NSNumber*) limit
    completionHandler: (void (^)(NSArray<OAIRatingResponse>* output, NSError* error)) handler {
    // verify the required parameter 'version' is set
    if (version == nil) {
        NSParameterAssert(version);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"version"] };
            NSError* error = [NSError errorWithDomain:kOAIRatingApiErrorDomain code:kOAIRatingApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/{version}/rating/search"];

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
    if (filterAccountId != nil) {
        queryParams[@"filterAccountId"] = filterAccountId;
    }
    if (ratableType != nil) {
        queryParams[@"ratableType"] = ratableType;
    }
    if (ratableId != nil) {
        queryParams[@"ratableId"] = ratableId;
    }
    if (categoryIds != nil) {
        queryParams[@"categoryIds"] = categoryIds;
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
                              responseType: @"NSArray<OAIRatingResponse>*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSArray<OAIRatingResponse>*)data, error);
                                }
                            }];
}

///
/// Update Rating
/// Update an existing rating. Only the creator of the rating have permission to update.
///  @param version  
///
///  @param ratingId The id of the rating (Note: this is not the ratable object id) 
///
///  @param deviceId The unique device identifier that made the request (either deviceId or accountId must be used) (optional)
///
///  @param accountId The unique accountId that made the request (either deviceId or accountId must be used) (optional)
///
///  @param ratingValue The rating value to update (optional)
///
///  @param categoryId  (optional)
///
///  @param display A subject title for the user rating (limited to 255 characters) (optional)
///
///  @param _description The description of the rating (optional)
///
///  @param locationDescription The description of the location (optional)
///
///  @param latitude The current location of the user (optional)
///
///  @param longitude The current location of the user (optional)
///
///  @returns OAIRatingResponse*
///
-(NSURLSessionTask*) updateRatingWithVersion: (NSNumber*) version
    ratingId: (NSNumber*) ratingId
    deviceId: (NSString*) deviceId
    accountId: (NSNumber*) accountId
    ratingValue: (NSNumber*) ratingValue
    categoryId: (NSNumber*) categoryId
    display: (NSString*) display
    _description: (NSString*) _description
    locationDescription: (NSString*) locationDescription
    latitude: (NSNumber*) latitude
    longitude: (NSNumber*) longitude
    completionHandler: (void (^)(OAIRatingResponse* output, NSError* error)) handler {
    // verify the required parameter 'version' is set
    if (version == nil) {
        NSParameterAssert(version);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"version"] };
            NSError* error = [NSError errorWithDomain:kOAIRatingApiErrorDomain code:kOAIRatingApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'ratingId' is set
    if (ratingId == nil) {
        NSParameterAssert(ratingId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"ratingId"] };
            NSError* error = [NSError errorWithDomain:kOAIRatingApiErrorDomain code:kOAIRatingApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/{version}/rating/update"];

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
    if (ratingId != nil) {
        queryParams[@"ratingId"] = ratingId;
    }
    if (ratingValue != nil) {
        queryParams[@"ratingValue"] = ratingValue;
    }
    if (categoryId != nil) {
        queryParams[@"categoryId"] = categoryId;
    }
    if (display != nil) {
        queryParams[@"display"] = display;
    }
    if (_description != nil) {
        queryParams[@"description"] = _description;
    }
    if (locationDescription != nil) {
        queryParams[@"locationDescription"] = locationDescription;
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
                              responseType: @"OAIRatingResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIRatingResponse*)data, error);
                                }
                            }];
}



@end
