#import "OAICategoryApi.h"
#import "OAIQueryParamCollection.h"
#import "OAIApiClient.h"
#import "OAICategoryResponse.h"
#import "OAICategoryTreeResponse.h"
#import "OAISirqulResponse.h"


@interface OAICategoryApi ()

@property (nonatomic, strong, readwrite) NSMutableDictionary *mutableDefaultHeaders;

@end

@implementation OAICategoryApi

NSString* kOAICategoryApiErrorDomain = @"OAICategoryApiErrorDomain";
NSInteger kOAICategoryApiMissingParamErrorCode = 234513;

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
/// Search Categories by Distance
/// Search for categories by distance.
///  @param version  
///
///  @param accountId The account id of the user (optional)
///
///  @param keyword The keyword string to search on (optional)
///
///  @param appKey the appKey of the application to retrieve categories for, if not specified then search on the global application. (optional)
///
///  @param categoryIds Restrict the search by specific categories (optional)
///
///  @param parentCategoryIds Restrict the search by specific parent categories so that only its sub children are searched. (optional)
///
///  @param rootOnly Restrict the search to only those categories with no parent category assigned. (optional)
///
///  @param sortField The column to sort the search on. Possible values include: ID, CREATED, UPDATED, ACTIVE, NAME, DISPLAY (optional, default to @"DISPLAY")
///
///  @param responseGroup The group of categories to return: ALL, GLOBAL or MINE. ALL returns both global and application specific matches, GLOBAL only returns global matches, and MINE only returns the application specific matches. If not provided search on the application provided. (optional)
///
///  @param descending The order to return the search results (optional, default to @(NO))
///
///  @param start The record to begin the return set on (optional, default to @0)
///
///  @param limit The number of records to return (optional, default to @20)
///
///  @param activeOnly Determines whether to return only active categories (optional, default to @(YES))
///
///  @param returnExternal Determines whether to return extra info about the category's \"Participant\" reference (optional)
///
///  @param exactMatch If true search categories using the exact keyword, if false then do a partial match (like) search. (optional)
///
///  @param type Filters results by the Category's type (optional)
///
///  @param externalType Filters results by externalType (optional)
///
///  @param minOfferCount Filters results to only return Categories that have been referenced by a minimum number of Offers (optional)
///
///  @param latitude the latitude of where the search is centered on (optional)
///
///  @param longitude the longitude of where the search is centered on (optional)
///
///  @param range the maximum range the category can be from the center (optional)
///
///  @returns NSArray<OAICategoryResponse>*
///
-(NSURLSessionTask*) categoryDistanceSearchWithVersion: (NSNumber*) version
    accountId: (NSNumber*) accountId
    keyword: (NSString*) keyword
    appKey: (NSString*) appKey
    categoryIds: (NSString*) categoryIds
    parentCategoryIds: (NSString*) parentCategoryIds
    rootOnly: (NSNumber*) rootOnly
    sortField: (NSString*) sortField
    responseGroup: (NSString*) responseGroup
    descending: (NSNumber*) descending
    start: (NSNumber*) start
    limit: (NSNumber*) limit
    activeOnly: (NSNumber*) activeOnly
    returnExternal: (NSNumber*) returnExternal
    exactMatch: (NSNumber*) exactMatch
    type: (NSString*) type
    externalType: (NSString*) externalType
    minOfferCount: (NSNumber*) minOfferCount
    latitude: (NSNumber*) latitude
    longitude: (NSNumber*) longitude
    range: (NSNumber*) range
    completionHandler: (void (^)(NSArray<OAICategoryResponse>* output, NSError* error)) handler {
    // verify the required parameter 'version' is set
    if (version == nil) {
        NSParameterAssert(version);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"version"] };
            NSError* error = [NSError errorWithDomain:kOAICategoryApiErrorDomain code:kOAICategoryApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/{version}/category/distancesearch"];

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
    if (appKey != nil) {
        queryParams[@"appKey"] = appKey;
    }
    if (categoryIds != nil) {
        queryParams[@"categoryIds"] = categoryIds;
    }
    if (parentCategoryIds != nil) {
        queryParams[@"parentCategoryIds"] = parentCategoryIds;
    }
    if (rootOnly != nil) {
        queryParams[@"rootOnly"] = [rootOnly isEqual:@(YES)] ? @"true" : @"false";
    }
    if (sortField != nil) {
        queryParams[@"sortField"] = sortField;
    }
    if (responseGroup != nil) {
        queryParams[@"responseGroup"] = responseGroup;
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
    if (returnExternal != nil) {
        queryParams[@"returnExternal"] = [returnExternal isEqual:@(YES)] ? @"true" : @"false";
    }
    if (exactMatch != nil) {
        queryParams[@"exactMatch"] = [exactMatch isEqual:@(YES)] ? @"true" : @"false";
    }
    if (type != nil) {
        queryParams[@"type"] = type;
    }
    if (externalType != nil) {
        queryParams[@"externalType"] = externalType;
    }
    if (minOfferCount != nil) {
        queryParams[@"minOfferCount"] = minOfferCount;
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
                              responseType: @"NSArray<OAICategoryResponse>*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSArray<OAICategoryResponse>*)data, error);
                                }
                            }];
}

///
/// Create Category
/// Create a new category.
///  @param version  
///
///  @param accountId The account id of the user (must have permissions to the target application) 
///
///  @param name The name of the category 
///
///  @param appKey The appKey of the application to assign the category to, if not provided then the category will be applied to the global application (if the account has permissions) (optional)
///
///  @param parentCategoryId The ID of the parent category, if not provided then the parent category will be null (optional)
///
///  @param _description The description of the category (optional)
///
///  @param type The type of the category (optional)
///
///  @param assetId The ID of the image asset previously uploaded using the media service (optional)
///
///  @param externalId A string identifier used by client applications to store external information (optional)
///
///  @param externalType A string type used by client applications to store external information (optional)
///
///  @param externalCategorySlug external category slug (optional)
///
///  @param sqootSlug sqoot slug (optional)
///
///  @param active Sets whether the category is active or inactive (hidden from consumers) (optional)
///
///  @param metaData external custom client defined data (optional)
///
///  @param searchTags user defined strings for searching (optional)
///
///  @returns OAICategoryTreeResponse*
///
-(NSURLSessionTask*) createCategoryWithVersion: (NSNumber*) version
    accountId: (NSNumber*) accountId
    name: (NSString*) name
    appKey: (NSString*) appKey
    parentCategoryId: (NSNumber*) parentCategoryId
    _description: (NSString*) _description
    type: (NSString*) type
    assetId: (NSNumber*) assetId
    externalId: (NSString*) externalId
    externalType: (NSString*) externalType
    externalCategorySlug: (NSString*) externalCategorySlug
    sqootSlug: (NSString*) sqootSlug
    active: (NSNumber*) active
    metaData: (NSString*) metaData
    searchTags: (NSString*) searchTags
    completionHandler: (void (^)(OAICategoryTreeResponse* output, NSError* error)) handler {
    // verify the required parameter 'version' is set
    if (version == nil) {
        NSParameterAssert(version);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"version"] };
            NSError* error = [NSError errorWithDomain:kOAICategoryApiErrorDomain code:kOAICategoryApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kOAICategoryApiErrorDomain code:kOAICategoryApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'name' is set
    if (name == nil) {
        NSParameterAssert(name);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"name"] };
            NSError* error = [NSError errorWithDomain:kOAICategoryApiErrorDomain code:kOAICategoryApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/{version}/category/create"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (version != nil) {
        pathParams[@"version"] = version;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (appKey != nil) {
        queryParams[@"appKey"] = appKey;
    }
    if (accountId != nil) {
        queryParams[@"accountId"] = accountId;
    }
    if (parentCategoryId != nil) {
        queryParams[@"parentCategoryId"] = parentCategoryId;
    }
    if (name != nil) {
        queryParams[@"name"] = name;
    }
    if (_description != nil) {
        queryParams[@"description"] = _description;
    }
    if (type != nil) {
        queryParams[@"type"] = type;
    }
    if (assetId != nil) {
        queryParams[@"assetId"] = assetId;
    }
    if (externalId != nil) {
        queryParams[@"externalId"] = externalId;
    }
    if (externalType != nil) {
        queryParams[@"externalType"] = externalType;
    }
    if (externalCategorySlug != nil) {
        queryParams[@"externalCategorySlug"] = externalCategorySlug;
    }
    if (sqootSlug != nil) {
        queryParams[@"sqootSlug"] = sqootSlug;
    }
    if (active != nil) {
        queryParams[@"active"] = [active isEqual:@(YES)] ? @"true" : @"false";
    }
    if (metaData != nil) {
        queryParams[@"metaData"] = metaData;
    }
    if (searchTags != nil) {
        queryParams[@"searchTags"] = searchTags;
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
                              responseType: @"OAICategoryTreeResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAICategoryTreeResponse*)data, error);
                                }
                            }];
}

///
/// Delete Category
/// Delete a category.
///  @param version  
///
///  @param accountId the ID of the account 
///
///  @param categoryId the ID of the category 
///
///  @returns OAISirqulResponse*
///
-(NSURLSessionTask*) deleteCategoryWithVersion: (NSNumber*) version
    accountId: (NSNumber*) accountId
    categoryId: (NSNumber*) categoryId
    completionHandler: (void (^)(OAISirqulResponse* output, NSError* error)) handler {
    // verify the required parameter 'version' is set
    if (version == nil) {
        NSParameterAssert(version);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"version"] };
            NSError* error = [NSError errorWithDomain:kOAICategoryApiErrorDomain code:kOAICategoryApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kOAICategoryApiErrorDomain code:kOAICategoryApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'categoryId' is set
    if (categoryId == nil) {
        NSParameterAssert(categoryId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"categoryId"] };
            NSError* error = [NSError errorWithDomain:kOAICategoryApiErrorDomain code:kOAICategoryApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/{version}/category/delete"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (version != nil) {
        pathParams[@"version"] = version;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        queryParams[@"accountId"] = accountId;
    }
    if (categoryId != nil) {
        queryParams[@"categoryId"] = categoryId;
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
/// Duplicate Category
/// Duplicate a category, including all its children.
///  @param version  
///
///  @param accountId The account id of the user (must have permissions to the target application) 
///
///  @param categoryId The category ID to duplicate (includes all children) 
///
///  @param appKey The application to assign the new category to, may be different then the application the source category is assigned to (optional)
///
///  @param parentCategoryId The parent category ID to add the target category to. (optional)
///
///  @returns OAICategoryTreeResponse*
///
-(NSURLSessionTask*) duplicateCategoryWithVersion: (NSNumber*) version
    accountId: (NSNumber*) accountId
    categoryId: (NSNumber*) categoryId
    appKey: (NSString*) appKey
    parentCategoryId: (NSNumber*) parentCategoryId
    completionHandler: (void (^)(OAICategoryTreeResponse* output, NSError* error)) handler {
    // verify the required parameter 'version' is set
    if (version == nil) {
        NSParameterAssert(version);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"version"] };
            NSError* error = [NSError errorWithDomain:kOAICategoryApiErrorDomain code:kOAICategoryApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kOAICategoryApiErrorDomain code:kOAICategoryApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'categoryId' is set
    if (categoryId == nil) {
        NSParameterAssert(categoryId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"categoryId"] };
            NSError* error = [NSError errorWithDomain:kOAICategoryApiErrorDomain code:kOAICategoryApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/{version}/category/duplicate"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (version != nil) {
        pathParams[@"version"] = version;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (appKey != nil) {
        queryParams[@"appKey"] = appKey;
    }
    if (accountId != nil) {
        queryParams[@"accountId"] = accountId;
    }
    if (categoryId != nil) {
        queryParams[@"categoryId"] = categoryId;
    }
    if (parentCategoryId != nil) {
        queryParams[@"parentCategoryId"] = parentCategoryId;
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
                              responseType: @"OAICategoryTreeResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAICategoryTreeResponse*)data, error);
                                }
                            }];
}

///
/// Get Category
/// Get the details of a specific category. Recursively include all child categories and their children.
///  @param version  
///
///  @param categoryId the ID of the category 
///
///  @param returnExternal Determines whether to return extra info about the category's \"Participant\" reference (optional, default to @(YES))
///
///  @returns OAICategoryTreeResponse*
///
-(NSURLSessionTask*) getCategoryWithVersion: (NSNumber*) version
    categoryId: (NSNumber*) categoryId
    returnExternal: (NSNumber*) returnExternal
    completionHandler: (void (^)(OAICategoryTreeResponse* output, NSError* error)) handler {
    // verify the required parameter 'version' is set
    if (version == nil) {
        NSParameterAssert(version);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"version"] };
            NSError* error = [NSError errorWithDomain:kOAICategoryApiErrorDomain code:kOAICategoryApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'categoryId' is set
    if (categoryId == nil) {
        NSParameterAssert(categoryId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"categoryId"] };
            NSError* error = [NSError errorWithDomain:kOAICategoryApiErrorDomain code:kOAICategoryApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/{version}/category/get"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (version != nil) {
        pathParams[@"version"] = version;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (categoryId != nil) {
        queryParams[@"categoryId"] = categoryId;
    }
    if (returnExternal != nil) {
        queryParams[@"returnExternal"] = [returnExternal isEqual:@(YES)] ? @"true" : @"false";
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
                              responseType: @"OAICategoryTreeResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAICategoryTreeResponse*)data, error);
                                }
                            }];
}

///
/// Search Categories
/// Search for categories.
///  @param version  
///
///  @param accountId The account id of the user (optional)
///
///  @param keyword The string to search on (optional)
///
///  @param appKey the appKey of the application to retrieve categories for, if not specified then search on the global application. (optional)
///
///  @param categoryId @Deprecated, use parentCategoryIds instead (optional)
///
///  @param categoryIds Restrict the search by specific categories (optional)
///
///  @param parentCategoryIds Restrict the search by specific parent categories so that only its sub children are searched. (optional)
///
///  @param rootOnly Restrict the search to only those categories with no parent category assigned. (optional)
///
///  @param sortField The column to sort the search on. Possible values include: ID, CREATED, UPDATED, ACTIVE, NAME, DISPLAY (optional, default to @"DISPLAY")
///
///  @param responseGroup The group of categories to return: ALL, GLOBAL or MINE. ALL returns both global and application specific matches, GLOBAL only returns global matches, and MINE only returns the application specific matches. If not provided search on the application provided. (optional)
///
///  @param descending The order to return the search results (optional, default to @(NO))
///
///  @param start The record to begin the return set on (optional, default to @0)
///
///  @param limit The number of records to return (optional, default to @20)
///
///  @param activeOnly Determines whether to return only active categories (optional, default to @(YES))
///
///  @param returnExternal Determines whether to return extra info about the category's \"Participant\" reference (optional, default to @(YES))
///
///  @param exactMatch If true search categories using the exact keyword, if false then do a partial match (like) search. Default is false. (optional, default to @(NO))
///
///  @param type Filters results by the Category's type (optional)
///
///  @param externalType Filters results by externalType (optional)
///
///  @param excludeExternalType Determines whether the \"externalType\" param is excluded from the search results (optional)
///
///  @param minOfferCount Filters results to only return Categories that have been referenced by a minimum number of Offers (optional)
///
///  @param searchDepth When searching by a specific parent category (to return sub children), this determines the number of child layers to search in. The minimum is 1, the maximum is 4. (optional, default to @4)
///
///  @param searchMode The search index mode to use (e.g. OPENSEARCH or RDS) (optional)
///
///  @returns NSArray<OAICategoryResponse>*
///
-(NSURLSessionTask*) searchCategoriesWithVersion: (NSNumber*) version
    accountId: (NSNumber*) accountId
    keyword: (NSString*) keyword
    appKey: (NSString*) appKey
    categoryId: (NSString*) categoryId
    categoryIds: (NSString*) categoryIds
    parentCategoryIds: (NSString*) parentCategoryIds
    rootOnly: (NSNumber*) rootOnly
    sortField: (NSString*) sortField
    responseGroup: (NSString*) responseGroup
    descending: (NSNumber*) descending
    start: (NSNumber*) start
    limit: (NSNumber*) limit
    activeOnly: (NSNumber*) activeOnly
    returnExternal: (NSNumber*) returnExternal
    exactMatch: (NSNumber*) exactMatch
    type: (NSString*) type
    externalType: (NSString*) externalType
    excludeExternalType: (NSNumber*) excludeExternalType
    minOfferCount: (NSNumber*) minOfferCount
    searchDepth: (NSNumber*) searchDepth
    searchMode: (NSString*) searchMode
    completionHandler: (void (^)(NSArray<OAICategoryResponse>* output, NSError* error)) handler {
    // verify the required parameter 'version' is set
    if (version == nil) {
        NSParameterAssert(version);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"version"] };
            NSError* error = [NSError errorWithDomain:kOAICategoryApiErrorDomain code:kOAICategoryApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/{version}/category/search"];

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
    if (appKey != nil) {
        queryParams[@"appKey"] = appKey;
    }
    if (categoryId != nil) {
        queryParams[@"categoryId"] = categoryId;
    }
    if (categoryIds != nil) {
        queryParams[@"categoryIds"] = categoryIds;
    }
    if (parentCategoryIds != nil) {
        queryParams[@"parentCategoryIds"] = parentCategoryIds;
    }
    if (rootOnly != nil) {
        queryParams[@"rootOnly"] = [rootOnly isEqual:@(YES)] ? @"true" : @"false";
    }
    if (sortField != nil) {
        queryParams[@"sortField"] = sortField;
    }
    if (responseGroup != nil) {
        queryParams[@"responseGroup"] = responseGroup;
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
    if (returnExternal != nil) {
        queryParams[@"returnExternal"] = [returnExternal isEqual:@(YES)] ? @"true" : @"false";
    }
    if (exactMatch != nil) {
        queryParams[@"exactMatch"] = [exactMatch isEqual:@(YES)] ? @"true" : @"false";
    }
    if (type != nil) {
        queryParams[@"type"] = type;
    }
    if (externalType != nil) {
        queryParams[@"externalType"] = externalType;
    }
    if (excludeExternalType != nil) {
        queryParams[@"excludeExternalType"] = [excludeExternalType isEqual:@(YES)] ? @"true" : @"false";
    }
    if (minOfferCount != nil) {
        queryParams[@"minOfferCount"] = minOfferCount;
    }
    if (searchDepth != nil) {
        queryParams[@"searchDepth"] = searchDepth;
    }
    if (searchMode != nil) {
        queryParams[@"searchMode"] = searchMode;
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
                              responseType: @"NSArray<OAICategoryResponse>*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSArray<OAICategoryResponse>*)data, error);
                                }
                            }];
}

///
/// Update Category
/// Update a category.
///  @param version  
///
///  @param accountId The account id of the user 
///
///  @param categoryId The ID of the category to edit 
///
///  @param parentCategoryId The ID of the parent category, if not provided then the parent category will be null (optional)
///
///  @param name The name of the category (optional)
///
///  @param _description The description of the category (optional)
///
///  @param type The type of the category (optional)
///
///  @param assetId The ID of the image asset previously uploaded using the media service (optional)
///
///  @param externalId A string identifier used by client applications to store external information (optional)
///
///  @param externalType A string type used by client applications to store external information (optional)
///
///  @param externalCategorySlug external category slug (optional)
///
///  @param sqootSlug sqoot slug (optional)
///
///  @param active Sets whether the category is active or inactive (hidden from consumers) (optional)
///
///  @param metaData external custom client defined data (optional)
///
///  @param searchTags user defined strings for searching (optional)
///
///  @returns OAICategoryTreeResponse*
///
-(NSURLSessionTask*) updateCategoryWithVersion: (NSNumber*) version
    accountId: (NSNumber*) accountId
    categoryId: (NSNumber*) categoryId
    parentCategoryId: (NSNumber*) parentCategoryId
    name: (NSString*) name
    _description: (NSString*) _description
    type: (NSString*) type
    assetId: (NSNumber*) assetId
    externalId: (NSString*) externalId
    externalType: (NSString*) externalType
    externalCategorySlug: (NSString*) externalCategorySlug
    sqootSlug: (NSString*) sqootSlug
    active: (NSNumber*) active
    metaData: (NSString*) metaData
    searchTags: (NSString*) searchTags
    completionHandler: (void (^)(OAICategoryTreeResponse* output, NSError* error)) handler {
    // verify the required parameter 'version' is set
    if (version == nil) {
        NSParameterAssert(version);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"version"] };
            NSError* error = [NSError errorWithDomain:kOAICategoryApiErrorDomain code:kOAICategoryApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kOAICategoryApiErrorDomain code:kOAICategoryApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'categoryId' is set
    if (categoryId == nil) {
        NSParameterAssert(categoryId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"categoryId"] };
            NSError* error = [NSError errorWithDomain:kOAICategoryApiErrorDomain code:kOAICategoryApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/{version}/category/update"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (version != nil) {
        pathParams[@"version"] = version;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        queryParams[@"accountId"] = accountId;
    }
    if (categoryId != nil) {
        queryParams[@"categoryId"] = categoryId;
    }
    if (parentCategoryId != nil) {
        queryParams[@"parentCategoryId"] = parentCategoryId;
    }
    if (name != nil) {
        queryParams[@"name"] = name;
    }
    if (_description != nil) {
        queryParams[@"description"] = _description;
    }
    if (type != nil) {
        queryParams[@"type"] = type;
    }
    if (assetId != nil) {
        queryParams[@"assetId"] = assetId;
    }
    if (externalId != nil) {
        queryParams[@"externalId"] = externalId;
    }
    if (externalType != nil) {
        queryParams[@"externalType"] = externalType;
    }
    if (externalCategorySlug != nil) {
        queryParams[@"externalCategorySlug"] = externalCategorySlug;
    }
    if (sqootSlug != nil) {
        queryParams[@"sqootSlug"] = sqootSlug;
    }
    if (active != nil) {
        queryParams[@"active"] = [active isEqual:@(YES)] ? @"true" : @"false";
    }
    if (metaData != nil) {
        queryParams[@"metaData"] = metaData;
    }
    if (searchTags != nil) {
        queryParams[@"searchTags"] = searchTags;
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
                              responseType: @"OAICategoryTreeResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAICategoryTreeResponse*)data, error);
                                }
                            }];
}



@end
