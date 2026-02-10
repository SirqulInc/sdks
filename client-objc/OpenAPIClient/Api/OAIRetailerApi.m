#import "OAIRetailerApi.h"
#import "OAIQueryParamCollection.h"
#import "OAIApiClient.h"
#import "OAIAccountLoginResponse.h"
#import "OAIRetailerFullResponse.h"
#import "OAIRetailerResponse.h"
#import "OAISirqulResponse.h"


@interface OAIRetailerApi ()

@property (nonatomic, strong, readwrite) NSMutableDictionary *mutableDefaultHeaders;

@end

@implementation OAIRetailerApi

NSString* kOAIRetailerApiErrorDomain = @"OAIRetailerApiErrorDomain";
NSInteger kOAIRetailerApiMissingParamErrorCode = 234513;

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
/// Create Retailer
/// Create a retailer record. A billable entity must be created first before a retailer record can be made.
///  @param version  
///
///  @param name The name of the retailer 
///
///  @param deviceId The device id (deviceId or accountId required) (optional)
///
///  @param accountId The account id of the user (deviceId or accountId required) (optional)
///
///  @param streetAddress The street address of the retailer (optional)
///
///  @param streetAddress2 Additional address information (such as a suite number, floor number, building name, or PO Box) (optional)
///
///  @param city The city of the retailer (optional)
///
///  @param state The state of the retailer (optional)
///
///  @param postalCode The postal code of the retailer (optional)
///
///  @param country the country of the retailer (optional)
///
///  @param businessPhone The business phone number of the retailer (optional)
///
///  @param businessPhoneExt The business phone extension of the retailer (optional)
///
///  @param website The website of the retailer (optional)
///
///  @param email The email of the retailer (optional)
///
///  @param facebookUrl The facebook URL of the retailer (optional)
///
///  @param twitterUrl The twitter URL of the retailer (optional)
///
///  @param logo The retailer logo sent as a multipart binary file (you can optionally use logoAssetId if the asset has already been uploaded before) (optional)
///
///  @param logoAssetId The retailer logo asset id (optional)
///
///  @param picture1 Optional store-front pictures or product pictures or etc. A multipart binary file (you can optionally use picture1AssetId if the asset has already been uploaded before) (optional)
///
///  @param picture1AssetId An asset id (optional)
///
///  @param picture2 Optional store-front pictures or product pictures or etc. A multipart binary file (you can optionally use picture2AssetId if the asset has already been uploaded before) (optional)
///
///  @param picture2AssetId An asset id (optional)
///
///  @param categoryIds Comma separated list of category IDs used to filter retailers by categories (optional)
///
///  @param categoryIdsToAdd Comma separated list of category IDs to add to the retailer (optional)
///
///  @param categoryIdsToRemove Comma separated list of category IDs to remove from the retailer (optional)
///
///  @param filterIds Comma separated list of filter IDs used to filter retailers (optional)
///
///  @param latitude the latitude of the retailer (optional)
///
///  @param longitude the longitude of the retailer (optional)
///
///  @param metaData External custom client defined data (optional)
///
///  @param searchTags External custom search keywords (optional)
///
///  @param retailerType External custom type identifier (optional)
///
///  @param visibility  (optional)
///
///  @param createDefaultLocation Determines whether to create a default location using the retailer information (optional)
///
///  @param responseFormat The format of the returned response {JSON // default , HTML // for Dojo support when uploading assets} (optional)
///
///  @returns OAIRetailerFullResponse*
///
-(NSURLSessionTask*) createRetailerWithVersion: (NSNumber*) version
    name: (NSString*) name
    deviceId: (NSString*) deviceId
    accountId: (NSNumber*) accountId
    streetAddress: (NSString*) streetAddress
    streetAddress2: (NSString*) streetAddress2
    city: (NSString*) city
    state: (NSString*) state
    postalCode: (NSString*) postalCode
    country: (NSString*) country
    businessPhone: (NSString*) businessPhone
    businessPhoneExt: (NSString*) businessPhoneExt
    website: (NSString*) website
    email: (NSString*) email
    facebookUrl: (NSString*) facebookUrl
    twitterUrl: (NSString*) twitterUrl
    logo: (NSURL*) logo
    logoAssetId: (NSNumber*) logoAssetId
    picture1: (NSURL*) picture1
    picture1AssetId: (NSNumber*) picture1AssetId
    picture2: (NSURL*) picture2
    picture2AssetId: (NSNumber*) picture2AssetId
    categoryIds: (NSString*) categoryIds
    categoryIdsToAdd: (NSString*) categoryIdsToAdd
    categoryIdsToRemove: (NSString*) categoryIdsToRemove
    filterIds: (NSString*) filterIds
    latitude: (NSNumber*) latitude
    longitude: (NSNumber*) longitude
    metaData: (NSString*) metaData
    searchTags: (NSString*) searchTags
    retailerType: (NSString*) retailerType
    visibility: (NSString*) visibility
    createDefaultLocation: (NSNumber*) createDefaultLocation
    responseFormat: (NSString*) responseFormat
    completionHandler: (void (^)(OAIRetailerFullResponse* output, NSError* error)) handler {
    // verify the required parameter 'version' is set
    if (version == nil) {
        NSParameterAssert(version);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"version"] };
            NSError* error = [NSError errorWithDomain:kOAIRetailerApiErrorDomain code:kOAIRetailerApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'name' is set
    if (name == nil) {
        NSParameterAssert(name);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"name"] };
            NSError* error = [NSError errorWithDomain:kOAIRetailerApiErrorDomain code:kOAIRetailerApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/{version}/retailer/create"];

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
    if (name != nil) {
        queryParams[@"name"] = name;
    }
    if (streetAddress != nil) {
        queryParams[@"streetAddress"] = streetAddress;
    }
    if (streetAddress2 != nil) {
        queryParams[@"streetAddress2"] = streetAddress2;
    }
    if (city != nil) {
        queryParams[@"city"] = city;
    }
    if (state != nil) {
        queryParams[@"state"] = state;
    }
    if (postalCode != nil) {
        queryParams[@"postalCode"] = postalCode;
    }
    if (country != nil) {
        queryParams[@"country"] = country;
    }
    if (businessPhone != nil) {
        queryParams[@"businessPhone"] = businessPhone;
    }
    if (businessPhoneExt != nil) {
        queryParams[@"businessPhoneExt"] = businessPhoneExt;
    }
    if (website != nil) {
        queryParams[@"website"] = website;
    }
    if (email != nil) {
        queryParams[@"email"] = email;
    }
    if (facebookUrl != nil) {
        queryParams[@"facebookUrl"] = facebookUrl;
    }
    if (twitterUrl != nil) {
        queryParams[@"twitterUrl"] = twitterUrl;
    }
    if (logo != nil) {
        queryParams[@"logo"] = logo;
    }
    if (logoAssetId != nil) {
        queryParams[@"logoAssetId"] = logoAssetId;
    }
    if (picture1 != nil) {
        queryParams[@"picture1"] = picture1;
    }
    if (picture1AssetId != nil) {
        queryParams[@"picture1AssetId"] = picture1AssetId;
    }
    if (picture2 != nil) {
        queryParams[@"picture2"] = picture2;
    }
    if (picture2AssetId != nil) {
        queryParams[@"picture2AssetId"] = picture2AssetId;
    }
    if (categoryIds != nil) {
        queryParams[@"categoryIds"] = categoryIds;
    }
    if (categoryIdsToAdd != nil) {
        queryParams[@"categoryIdsToAdd"] = categoryIdsToAdd;
    }
    if (categoryIdsToRemove != nil) {
        queryParams[@"categoryIdsToRemove"] = categoryIdsToRemove;
    }
    if (filterIds != nil) {
        queryParams[@"filterIds"] = filterIds;
    }
    if (latitude != nil) {
        queryParams[@"latitude"] = latitude;
    }
    if (longitude != nil) {
        queryParams[@"longitude"] = longitude;
    }
    if (metaData != nil) {
        queryParams[@"metaData"] = metaData;
    }
    if (searchTags != nil) {
        queryParams[@"searchTags"] = searchTags;
    }
    if (retailerType != nil) {
        queryParams[@"retailerType"] = retailerType;
    }
    if (visibility != nil) {
        queryParams[@"visibility"] = visibility;
    }
    if (createDefaultLocation != nil) {
        queryParams[@"createDefaultLocation"] = [createDefaultLocation isEqual:@(YES)] ? @"true" : @"false";
    }
    if (responseFormat != nil) {
        queryParams[@"responseFormat"] = responseFormat;
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
                              responseType: @"OAIRetailerFullResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIRetailerFullResponse*)data, error);
                                }
                            }];
}

///
/// Delete Retailer
/// Set the deleted timestamp to current time.
///  @param version  
///
///  @param deviceId The device id (deviceId or accountId required) (optional)
///
///  @param accountId The account used to perform the delete, must have rights to edit the retailer. (optional)
///
///  @param retailerId The ID of the retailer to be deleted (optional)
///
///  @returns OAISirqulResponse*
///
-(NSURLSessionTask*) deleteRetailerWithVersion: (NSNumber*) version
    deviceId: (NSString*) deviceId
    accountId: (NSNumber*) accountId
    retailerId: (NSNumber*) retailerId
    completionHandler: (void (^)(OAISirqulResponse* output, NSError* error)) handler {
    // verify the required parameter 'version' is set
    if (version == nil) {
        NSParameterAssert(version);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"version"] };
            NSError* error = [NSError errorWithDomain:kOAIRetailerApiErrorDomain code:kOAIRetailerApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/{version}/retailer/delete"];

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
    if (retailerId != nil) {
        queryParams[@"retailerId"] = retailerId;
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
/// Get Retailer
/// Gets a retailer. Only the owner and the employees of a retailer have access to view its information.
///  @param version  
///
///  @param retailerId the ID of the retailer 
///
///  @param deviceId the device id (deviceId or accountId required) (optional)
///
///  @param accountId the account id of the user (deviceId or accountId required) (optional)
///
///  @param includeCounts Determines whether to include counts in the response (default true) (optional)
///
///  @returns OAIRetailerFullResponse*
///
-(NSURLSessionTask*) getRetailerWithVersion: (NSNumber*) version
    retailerId: (NSNumber*) retailerId
    deviceId: (NSString*) deviceId
    accountId: (NSNumber*) accountId
    includeCounts: (NSNumber*) includeCounts
    completionHandler: (void (^)(OAIRetailerFullResponse* output, NSError* error)) handler {
    // verify the required parameter 'version' is set
    if (version == nil) {
        NSParameterAssert(version);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"version"] };
            NSError* error = [NSError errorWithDomain:kOAIRetailerApiErrorDomain code:kOAIRetailerApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'retailerId' is set
    if (retailerId == nil) {
        NSParameterAssert(retailerId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"retailerId"] };
            NSError* error = [NSError errorWithDomain:kOAIRetailerApiErrorDomain code:kOAIRetailerApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/{version}/retailer/get"];

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
    if (retailerId != nil) {
        queryParams[@"retailerId"] = retailerId;
    }
    if (includeCounts != nil) {
        queryParams[@"includeCounts"] = [includeCounts isEqual:@(YES)] ? @"true" : @"false";
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
                              responseType: @"OAIRetailerFullResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIRetailerFullResponse*)data, error);
                                }
                            }];
}

///
/// Search Retailers
/// earches on retailers that the account has access to.
///  @param version  
///
///  @param visibility  
///
///  @param sortField The column to sort the search on 
///
///  @param descending The order to return the search results 
///
///  @param start The record to begin the return set on 
///
///  @param limit The number of records to return 
///
///  @param activeOnly Return only active results 
///
///  @param deviceId The device id (deviceId or accountId required) (optional)
///
///  @param accountId The account id of the user (deviceId or accountId required) (optional)
///
///  @param q This parameter is deprecated. (optional)
///
///  @param keyword The keyword used to search (optional)
///
///  @param categoryIds the categories that the retailer is associated with (optional)
///
///  @param filterIds the filters that the retailer is associated with (optional)
///
///  @param i This parameter is deprecated. (optional)
///
///  @param l This parameter is deprecated. (optional)
///
///  @returns NSArray<OAIRetailerResponse>*
///
-(NSURLSessionTask*) getRetailersWithVersion: (NSNumber*) version
    visibility: (NSString*) visibility
    sortField: (NSString*) sortField
    descending: (NSNumber*) descending
    start: (NSNumber*) start
    limit: (NSNumber*) limit
    activeOnly: (NSNumber*) activeOnly
    deviceId: (NSString*) deviceId
    accountId: (NSNumber*) accountId
    q: (NSString*) q
    keyword: (NSString*) keyword
    categoryIds: (NSString*) categoryIds
    filterIds: (NSString*) filterIds
    i: (NSNumber*) i
    l: (NSNumber*) l
    completionHandler: (void (^)(NSArray<OAIRetailerResponse>* output, NSError* error)) handler {
    // verify the required parameter 'version' is set
    if (version == nil) {
        NSParameterAssert(version);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"version"] };
            NSError* error = [NSError errorWithDomain:kOAIRetailerApiErrorDomain code:kOAIRetailerApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'visibility' is set
    if (visibility == nil) {
        NSParameterAssert(visibility);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"visibility"] };
            NSError* error = [NSError errorWithDomain:kOAIRetailerApiErrorDomain code:kOAIRetailerApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'sortField' is set
    if (sortField == nil) {
        NSParameterAssert(sortField);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"sortField"] };
            NSError* error = [NSError errorWithDomain:kOAIRetailerApiErrorDomain code:kOAIRetailerApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'descending' is set
    if (descending == nil) {
        NSParameterAssert(descending);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"descending"] };
            NSError* error = [NSError errorWithDomain:kOAIRetailerApiErrorDomain code:kOAIRetailerApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'start' is set
    if (start == nil) {
        NSParameterAssert(start);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"start"] };
            NSError* error = [NSError errorWithDomain:kOAIRetailerApiErrorDomain code:kOAIRetailerApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'limit' is set
    if (limit == nil) {
        NSParameterAssert(limit);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"limit"] };
            NSError* error = [NSError errorWithDomain:kOAIRetailerApiErrorDomain code:kOAIRetailerApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'activeOnly' is set
    if (activeOnly == nil) {
        NSParameterAssert(activeOnly);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"activeOnly"] };
            NSError* error = [NSError errorWithDomain:kOAIRetailerApiErrorDomain code:kOAIRetailerApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/{version}/retailer/search"];

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
    if (q != nil) {
        queryParams[@"q"] = q;
    }
    if (keyword != nil) {
        queryParams[@"keyword"] = keyword;
    }
    if (categoryIds != nil) {
        queryParams[@"categoryIds"] = categoryIds;
    }
    if (filterIds != nil) {
        queryParams[@"filterIds"] = filterIds;
    }
    if (visibility != nil) {
        queryParams[@"visibility"] = visibility;
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
                              responseType: @"NSArray<OAIRetailerResponse>*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSArray<OAIRetailerResponse>*)data, error);
                                }
                            }];
}

///
/// Login Retailer
/// Retailer login check.
///  @param version  
///
///  @param username the user's email address they used to sign-up 
///
///  @param password the password 
///
///  @param deviceId the device id (optional) (optional)
///
///  @param latitude the current latitude of the user (optional)
///
///  @param longitude the current longitude of the user (optional)
///
///  @param appKey the application key (optional)
///
///  @returns OAIAccountLoginResponse*
///
-(NSURLSessionTask*) retailerLoginCheckWithVersion: (NSNumber*) version
    username: (NSString*) username
    password: (NSString*) password
    deviceId: (NSString*) deviceId
    latitude: (NSNumber*) latitude
    longitude: (NSNumber*) longitude
    appKey: (NSString*) appKey
    completionHandler: (void (^)(OAIAccountLoginResponse* output, NSError* error)) handler {
    // verify the required parameter 'version' is set
    if (version == nil) {
        NSParameterAssert(version);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"version"] };
            NSError* error = [NSError errorWithDomain:kOAIRetailerApiErrorDomain code:kOAIRetailerApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'username' is set
    if (username == nil) {
        NSParameterAssert(username);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"username"] };
            NSError* error = [NSError errorWithDomain:kOAIRetailerApiErrorDomain code:kOAIRetailerApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'password' is set
    if (password == nil) {
        NSParameterAssert(password);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"password"] };
            NSError* error = [NSError errorWithDomain:kOAIRetailerApiErrorDomain code:kOAIRetailerApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/{version}/retailer/login"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (version != nil) {
        pathParams[@"version"] = version;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (username != nil) {
        queryParams[@"username"] = username;
    }
    if (password != nil) {
        queryParams[@"password"] = password;
    }
    if (deviceId != nil) {
        queryParams[@"deviceId"] = deviceId;
    }
    if (latitude != nil) {
        queryParams[@"latitude"] = latitude;
    }
    if (longitude != nil) {
        queryParams[@"longitude"] = longitude;
    }
    if (appKey != nil) {
        queryParams[@"appKey"] = appKey;
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
                              responseType: @"OAIAccountLoginResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIAccountLoginResponse*)data, error);
                                }
                            }];
}

///
/// Update Retailer
/// Update a retailer record. Only the owner and the employees of the retailer have access to update its information.
///  @param version  
///
///  @param retailerId The ID of the retailer to update 
///
///  @param deviceId The device id (deviceId or accountId required) (optional)
///
///  @param accountId The account id of the user (deviceId or accountId required) (optional)
///
///  @param name The name of the retailer (optional)
///
///  @param streetAddress The street address of the retailer (optional)
///
///  @param streetAddress2 Additional address information (such as a suite number, floor number, building name, or PO Box) (optional)
///
///  @param city The city of the retailer (optional)
///
///  @param state The state of the retailer (optional)
///
///  @param postalCode The postal code of the retailer (optional)
///
///  @param country the country of the retailer (optional)
///
///  @param businessPhone The business phone of the retailer (optional)
///
///  @param businessPhoneExt The business phone extension of the retailer (optional)
///
///  @param website The website of the retailer (optional)
///
///  @param email The email of the retailer (optional)
///
///  @param facebookUrl The facebook URL of the retailer (optional)
///
///  @param twitterUrl The twitter URL of the retailer (optional)
///
///  @param logo The retailer logo sent as a multipart binary file (you can optionally use logoAssetId if the asset has already been uploaded before) (optional)
///
///  @param logoAssetId The retailer logo asset id (optional)
///
///  @param picture1 Optional store-front pictures or product pictures or etc. A multipart binary file (you can optionally use picture1AssetId if the asset has already been uploaded before) (optional)
///
///  @param picture1AssetId An asset id (optional)
///
///  @param picture2 Optional store-front pictures or product pictures or etc. A multipart binary file (you can optionally use picture2AssetId if the asset has already been uploaded before) (optional)
///
///  @param picture2AssetId An asset id (optional)
///
///  @param categoryIds Comma separated list of category IDs used to filter retailers by categories (optional)
///
///  @param filterIds Comma separated list of filter IDs used to filter retailers (optional)
///
///  @param latitude the latitude of the retailer (optional)
///
///  @param longitude the longitude of the retailer (optional)
///
///  @param metaData External custom client defined data (optional)
///
///  @param searchTags External custom search keywords (optional)
///
///  @param retailerType External custom type identifier (optional)
///
///  @param visibility  (optional)
///
///  @param active Sets whether the retailer is active or inactive (hidden from consumers) (optional)
///
///  @param responseFormat The format of the returned response {JSON // default , HTML // for Dojo support when uploading assets} (optional)
///
///  @returns OAIRetailerFullResponse*
///
-(NSURLSessionTask*) updateRetailerWithVersion: (NSNumber*) version
    retailerId: (NSNumber*) retailerId
    deviceId: (NSString*) deviceId
    accountId: (NSNumber*) accountId
    name: (NSString*) name
    streetAddress: (NSString*) streetAddress
    streetAddress2: (NSString*) streetAddress2
    city: (NSString*) city
    state: (NSString*) state
    postalCode: (NSString*) postalCode
    country: (NSString*) country
    businessPhone: (NSString*) businessPhone
    businessPhoneExt: (NSString*) businessPhoneExt
    website: (NSString*) website
    email: (NSString*) email
    facebookUrl: (NSString*) facebookUrl
    twitterUrl: (NSString*) twitterUrl
    logo: (NSURL*) logo
    logoAssetId: (NSNumber*) logoAssetId
    picture1: (NSURL*) picture1
    picture1AssetId: (NSNumber*) picture1AssetId
    picture2: (NSURL*) picture2
    picture2AssetId: (NSNumber*) picture2AssetId
    categoryIds: (NSString*) categoryIds
    filterIds: (NSString*) filterIds
    latitude: (NSNumber*) latitude
    longitude: (NSNumber*) longitude
    metaData: (NSString*) metaData
    searchTags: (NSString*) searchTags
    retailerType: (NSString*) retailerType
    visibility: (NSString*) visibility
    active: (NSNumber*) active
    responseFormat: (NSString*) responseFormat
    completionHandler: (void (^)(OAIRetailerFullResponse* output, NSError* error)) handler {
    // verify the required parameter 'version' is set
    if (version == nil) {
        NSParameterAssert(version);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"version"] };
            NSError* error = [NSError errorWithDomain:kOAIRetailerApiErrorDomain code:kOAIRetailerApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'retailerId' is set
    if (retailerId == nil) {
        NSParameterAssert(retailerId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"retailerId"] };
            NSError* error = [NSError errorWithDomain:kOAIRetailerApiErrorDomain code:kOAIRetailerApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/{version}/retailer/update"];

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
    if (retailerId != nil) {
        queryParams[@"retailerId"] = retailerId;
    }
    if (name != nil) {
        queryParams[@"name"] = name;
    }
    if (streetAddress != nil) {
        queryParams[@"streetAddress"] = streetAddress;
    }
    if (streetAddress2 != nil) {
        queryParams[@"streetAddress2"] = streetAddress2;
    }
    if (city != nil) {
        queryParams[@"city"] = city;
    }
    if (state != nil) {
        queryParams[@"state"] = state;
    }
    if (postalCode != nil) {
        queryParams[@"postalCode"] = postalCode;
    }
    if (country != nil) {
        queryParams[@"country"] = country;
    }
    if (businessPhone != nil) {
        queryParams[@"businessPhone"] = businessPhone;
    }
    if (businessPhoneExt != nil) {
        queryParams[@"businessPhoneExt"] = businessPhoneExt;
    }
    if (website != nil) {
        queryParams[@"website"] = website;
    }
    if (email != nil) {
        queryParams[@"email"] = email;
    }
    if (facebookUrl != nil) {
        queryParams[@"facebookUrl"] = facebookUrl;
    }
    if (twitterUrl != nil) {
        queryParams[@"twitterUrl"] = twitterUrl;
    }
    if (logo != nil) {
        queryParams[@"logo"] = logo;
    }
    if (logoAssetId != nil) {
        queryParams[@"logoAssetId"] = logoAssetId;
    }
    if (picture1 != nil) {
        queryParams[@"picture1"] = picture1;
    }
    if (picture1AssetId != nil) {
        queryParams[@"picture1AssetId"] = picture1AssetId;
    }
    if (picture2 != nil) {
        queryParams[@"picture2"] = picture2;
    }
    if (picture2AssetId != nil) {
        queryParams[@"picture2AssetId"] = picture2AssetId;
    }
    if (categoryIds != nil) {
        queryParams[@"categoryIds"] = categoryIds;
    }
    if (filterIds != nil) {
        queryParams[@"filterIds"] = filterIds;
    }
    if (latitude != nil) {
        queryParams[@"latitude"] = latitude;
    }
    if (longitude != nil) {
        queryParams[@"longitude"] = longitude;
    }
    if (metaData != nil) {
        queryParams[@"metaData"] = metaData;
    }
    if (searchTags != nil) {
        queryParams[@"searchTags"] = searchTags;
    }
    if (retailerType != nil) {
        queryParams[@"retailerType"] = retailerType;
    }
    if (visibility != nil) {
        queryParams[@"visibility"] = visibility;
    }
    if (active != nil) {
        queryParams[@"active"] = [active isEqual:@(YES)] ? @"true" : @"false";
    }
    if (responseFormat != nil) {
        queryParams[@"responseFormat"] = responseFormat;
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
                              responseType: @"OAIRetailerFullResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIRetailerFullResponse*)data, error);
                                }
                            }];
}



@end
