#import "OAIRetailerLocationApi.h"
#import "OAIQueryParamCollection.h"
#import "OAIApiClient.h"
#import "OAIRetailerLocationResponse.h"
#import "OAISirqulResponse.h"


@interface OAIRetailerLocationApi ()

@property (nonatomic, strong, readwrite) NSMutableDictionary *mutableDefaultHeaders;

@end

@implementation OAIRetailerLocationApi

NSString* kOAIRetailerLocationApiErrorDomain = @"OAIRetailerLocationApiErrorDomain";
NSInteger kOAIRetailerLocationApiMissingParamErrorCode = 234513;

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
/// Create Retailer Location (Consumer)
/// Creates a location record for an application that can support crowd sourced locations.
///  @param appKey the application key 
///
///  @param name The name of the retailer location 
///
///  @param deviceId The device id (deviceId or accountId required) (optional)
///
///  @param accountId The account id of the user (deviceId or accountId required) (optional)
///
///  @param streetAddress The street address of the retailer location (optional)
///
///  @param streetAddress2 Additional address information (such as a suite number, floor number, building name, or PO Box) (optional)
///
///  @param city The city of the retailer location (optional)
///
///  @param state The state of the retailer location (optional)
///
///  @param postalCode The postal code of the retailer location (optional)
///
///  @param country the country of the retailer location (optional)
///
///  @param businessPhone The business phone (optional)
///
///  @param businessPhoneExt The business phone extension (optional)
///
///  @param website The website of the retailer location (optional)
///
///  @param email The email of the retailer location (optional)
///
///  @param detailsHeader A brief description about the retailer location (255 character limit) (optional)
///
///  @param detailsBody A detailed description about the retailer location (optional)
///
///  @param hours The hours of operation (optional)
///
///  @param tags Custom string field for doing full-text searches (optional)
///
///  @param logoAssetId The retailer location logo asset id (optional)
///
///  @param picture1AssetId An asset id (optional)
///
///  @param picture2AssetId An asset id (optional)
///
///  @param categoryIds Comma separated list of category IDs used to filter retailer locations by categories (optional)
///
///  @param filterIds Comma separated list of filter IDs used to filter retailer locations (optional)
///
///  @param metaData External custom client defined data (optional)
///
///  @param publicLocation Whether the location is public (optional)
///
///  @param active whether the retailer location created should be active or not (optional)
///
///  @param locationType External custom type identifier (optional)
///
///  @param latitude The latitude to center the search on (optional)
///
///  @param longitude The longitude to center the search on (optional)
///
///  @returns OAIRetailerLocationResponse*
///
-(NSURLSessionTask*) createRetailerLocationConsumerWithAppKey: (NSString*) appKey
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
    detailsHeader: (NSString*) detailsHeader
    detailsBody: (NSString*) detailsBody
    hours: (NSString*) hours
    tags: (NSString*) tags
    logoAssetId: (NSNumber*) logoAssetId
    picture1AssetId: (NSNumber*) picture1AssetId
    picture2AssetId: (NSNumber*) picture2AssetId
    categoryIds: (NSString*) categoryIds
    filterIds: (NSString*) filterIds
    metaData: (NSString*) metaData
    publicLocation: (NSNumber*) publicLocation
    active: (NSNumber*) active
    locationType: (NSString*) locationType
    latitude: (NSNumber*) latitude
    longitude: (NSNumber*) longitude
    completionHandler: (void (^)(OAIRetailerLocationResponse* output, NSError* error)) handler {
    // verify the required parameter 'appKey' is set
    if (appKey == nil) {
        NSParameterAssert(appKey);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"appKey"] };
            NSError* error = [NSError errorWithDomain:kOAIRetailerLocationApiErrorDomain code:kOAIRetailerLocationApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'name' is set
    if (name == nil) {
        NSParameterAssert(name);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"name"] };
            NSError* error = [NSError errorWithDomain:kOAIRetailerLocationApiErrorDomain code:kOAIRetailerLocationApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/location/create"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (deviceId != nil) {
        queryParams[@"deviceId"] = deviceId;
    }
    if (accountId != nil) {
        queryParams[@"accountId"] = accountId;
    }
    if (appKey != nil) {
        queryParams[@"appKey"] = appKey;
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
    if (detailsHeader != nil) {
        queryParams[@"detailsHeader"] = detailsHeader;
    }
    if (detailsBody != nil) {
        queryParams[@"detailsBody"] = detailsBody;
    }
    if (hours != nil) {
        queryParams[@"hours"] = hours;
    }
    if (tags != nil) {
        queryParams[@"tags"] = tags;
    }
    if (logoAssetId != nil) {
        queryParams[@"logoAssetId"] = logoAssetId;
    }
    if (picture1AssetId != nil) {
        queryParams[@"picture1AssetId"] = picture1AssetId;
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
    if (metaData != nil) {
        queryParams[@"metaData"] = metaData;
    }
    if (publicLocation != nil) {
        queryParams[@"publicLocation"] = [publicLocation isEqual:@(YES)] ? @"true" : @"false";
    }
    if (active != nil) {
        queryParams[@"active"] = [active isEqual:@(YES)] ? @"true" : @"false";
    }
    if (locationType != nil) {
        queryParams[@"locationType"] = locationType;
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
                              responseType: @"OAIRetailerLocationResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIRetailerLocationResponse*)data, error);
                                }
                            }];
}

///
/// Create Retailer Location
/// Creates a location record for a retailer. Only the owner and the employees of the retailer have access to do this.
///  @param retailerId The ID of the retailer 
///
///  @param name The name of the retailer location 
///
///  @param streetAddress The street address of the retailer location 
///
///  @param city The city of the retailer location 
///
///  @param state The state of the retailer location 
///
///  @param postalCode The postal code of the retailer location 
///
///  @param deviceId The device id (deviceId or accountId required) (optional)
///
///  @param accountId The account id of the user (deviceId or accountId required) (optional)
///
///  @param streetAddress2 Additional address information (such as a suite number, floor number, building name, or PO Box) (optional)
///
///  @param country the country of the retailer location (optional)
///
///  @param businessPhone The business phone number of the retailer location (optional)
///
///  @param businessPhoneExt The business phone extension (optional)
///
///  @param website The website of the retailer location (optional)
///
///  @param email The email of the retailer location (optional)
///
///  @param internalId An internal identifier used by the retailer (optional)
///
///  @param detailsHeader A brief description about the retailer location (255 character limit) (optional)
///
///  @param detailsBody A detailed description about the retailer location (optional)
///
///  @param hours The hours of operation (optional)
///
///  @param logo The retailer location logo sent as a multipart binary file (you can optionally use logoAssetId if the asset has already been uploaded before) (optional)
///
///  @param logoAssetId The retailer location logo asset id (optional)
///
///  @param picture1 Optional store-front pictures or product pictures or etc. A multipart binary file (you can optionally use picture1AssetId if the asset has already been uploaded before) (optional)
///
///  @param picture1AssetId An asset id (optional)
///
///  @param picture2 Optional store-front pictures or product pictures or etc. A multipart binary file (you can optionally use picture2AssetId if the asset has already been uploaded before) (optional)
///
///  @param picture2AssetId An asset id (optional)
///
///  @param categoryIds Comma separated list of category IDs used to filter retailer locations by categories (optional)
///
///  @param filterIds Comma separated list of filter IDs used to filter retailer locations (optional)
///
///  @param latitude the latitude of the retailer location (optional)
///
///  @param longitude the longitude of the retailer location (optional)
///
///  @param building  (optional)
///
///  @param googlePlaceId the ID of the Google Place that this retailer location is assigned to (optional)
///
///  @param yelpId the Yelp ID that this retailer location is assigned to (optional)
///
///  @param active whether the retailer location should be active or inactive (optional)
///
///  @param publicLocation Sets whether the location is public or not (optional)
///
///  @param locationType External custom type identifier (optional)
///
///  @param audienceIds Comma separated list of audience IDs used to assign audiences to the retailer location (optional)
///
///  @param audienceIdsToAdd Comma separated list of audience IDs to add to the retailer location (optional)
///
///  @param audienceIdsToRemove Comma separated list of audience IDs to remove from the retailer location (optional)
///
///  @param responseFormat The format of the returned response {JSON // default , HTML // for Dojo support when uploading assets} (optional)
///
///  @param responseIncludes Comma separated list of response includes (e.g. RETAILER,ASSETS,OFFERS,CATEGORIES,FILTERS,AUDIENCES,QRCODE) (optional)
///
///  @returns OAIRetailerLocationResponse*
///
-(NSURLSessionTask*) createRetailerLocationsWithRetailerId: (NSNumber*) retailerId
    name: (NSString*) name
    streetAddress: (NSString*) streetAddress
    city: (NSString*) city
    state: (NSString*) state
    postalCode: (NSString*) postalCode
    deviceId: (NSString*) deviceId
    accountId: (NSNumber*) accountId
    streetAddress2: (NSString*) streetAddress2
    country: (NSString*) country
    businessPhone: (NSString*) businessPhone
    businessPhoneExt: (NSString*) businessPhoneExt
    website: (NSString*) website
    email: (NSString*) email
    internalId: (NSString*) internalId
    detailsHeader: (NSString*) detailsHeader
    detailsBody: (NSString*) detailsBody
    hours: (NSString*) hours
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
    building: (NSString*) building
    googlePlaceId: (NSString*) googlePlaceId
    yelpId: (NSString*) yelpId
    active: (NSNumber*) active
    publicLocation: (NSNumber*) publicLocation
    locationType: (NSString*) locationType
    audienceIds: (NSString*) audienceIds
    audienceIdsToAdd: (NSString*) audienceIdsToAdd
    audienceIdsToRemove: (NSString*) audienceIdsToRemove
    responseFormat: (NSString*) responseFormat
    responseIncludes: (NSString*) responseIncludes
    completionHandler: (void (^)(OAIRetailerLocationResponse* output, NSError* error)) handler {
    // verify the required parameter 'retailerId' is set
    if (retailerId == nil) {
        NSParameterAssert(retailerId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"retailerId"] };
            NSError* error = [NSError errorWithDomain:kOAIRetailerLocationApiErrorDomain code:kOAIRetailerLocationApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'name' is set
    if (name == nil) {
        NSParameterAssert(name);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"name"] };
            NSError* error = [NSError errorWithDomain:kOAIRetailerLocationApiErrorDomain code:kOAIRetailerLocationApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'streetAddress' is set
    if (streetAddress == nil) {
        NSParameterAssert(streetAddress);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"streetAddress"] };
            NSError* error = [NSError errorWithDomain:kOAIRetailerLocationApiErrorDomain code:kOAIRetailerLocationApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'city' is set
    if (city == nil) {
        NSParameterAssert(city);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"city"] };
            NSError* error = [NSError errorWithDomain:kOAIRetailerLocationApiErrorDomain code:kOAIRetailerLocationApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'state' is set
    if (state == nil) {
        NSParameterAssert(state);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"state"] };
            NSError* error = [NSError errorWithDomain:kOAIRetailerLocationApiErrorDomain code:kOAIRetailerLocationApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'postalCode' is set
    if (postalCode == nil) {
        NSParameterAssert(postalCode);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"postalCode"] };
            NSError* error = [NSError errorWithDomain:kOAIRetailerLocationApiErrorDomain code:kOAIRetailerLocationApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/retailer/location/create"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

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
    if (internalId != nil) {
        queryParams[@"internalId"] = internalId;
    }
    if (detailsHeader != nil) {
        queryParams[@"detailsHeader"] = detailsHeader;
    }
    if (detailsBody != nil) {
        queryParams[@"detailsBody"] = detailsBody;
    }
    if (hours != nil) {
        queryParams[@"hours"] = hours;
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
    if (building != nil) {
        queryParams[@"building"] = building;
    }
    if (googlePlaceId != nil) {
        queryParams[@"googlePlaceId"] = googlePlaceId;
    }
    if (yelpId != nil) {
        queryParams[@"yelpId"] = yelpId;
    }
    if (active != nil) {
        queryParams[@"active"] = [active isEqual:@(YES)] ? @"true" : @"false";
    }
    if (publicLocation != nil) {
        queryParams[@"publicLocation"] = [publicLocation isEqual:@(YES)] ? @"true" : @"false";
    }
    if (locationType != nil) {
        queryParams[@"locationType"] = locationType;
    }
    if (audienceIds != nil) {
        queryParams[@"audienceIds"] = audienceIds;
    }
    if (audienceIdsToAdd != nil) {
        queryParams[@"audienceIdsToAdd"] = audienceIdsToAdd;
    }
    if (audienceIdsToRemove != nil) {
        queryParams[@"audienceIdsToRemove"] = audienceIdsToRemove;
    }
    if (responseFormat != nil) {
        queryParams[@"responseFormat"] = responseFormat;
    }
    if (responseIncludes != nil) {
        queryParams[@"responseIncludes"] = responseIncludes;
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
                              responseType: @"OAIRetailerLocationResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIRetailerLocationResponse*)data, error);
                                }
                            }];
}

///
/// Delete Retailer Location
/// Set the deleted timestamp to current time. This effectively deletes the retailer location since all queries should ignore any records with a deleted time stamp.
///  @param deviceId the device id (optional)
///
///  @param accountId the id of the logged in user (optional)
///
///  @param retailerLocationId the id of the retailer location to delete (optional)
///
///  @returns OAISirqulResponse*
///
-(NSURLSessionTask*) deleteRetailerLocationWithDeviceId: (NSString*) deviceId
    accountId: (NSNumber*) accountId
    retailerLocationId: (NSNumber*) retailerLocationId
    completionHandler: (void (^)(OAISirqulResponse* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/retailer/location/delete"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (deviceId != nil) {
        queryParams[@"deviceId"] = deviceId;
    }
    if (accountId != nil) {
        queryParams[@"accountId"] = accountId;
    }
    if (retailerLocationId != nil) {
        queryParams[@"retailerLocationId"] = retailerLocationId;
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
/// Get Retailer Location
/// Gets a retailer location. Only the owner and the employees of the retailer have access to view its information.
///  @param retailerLocationId The ID of the retailer location 
///
///  @param deviceId The device id (deviceId or accountId required) (optional)
///
///  @param accountId The account id of the user (deviceId or accountId required) (optional)
///
///  @param retailerLocationToken the unique token of the retailer location (optional)
///
///  @returns OAIRetailerLocationResponse*
///
-(NSURLSessionTask*) getRetailerLocationWithRetailerLocationId: (NSNumber*) retailerLocationId
    deviceId: (NSString*) deviceId
    accountId: (NSNumber*) accountId
    retailerLocationToken: (NSString*) retailerLocationToken
    completionHandler: (void (^)(OAIRetailerLocationResponse* output, NSError* error)) handler {
    // verify the required parameter 'retailerLocationId' is set
    if (retailerLocationId == nil) {
        NSParameterAssert(retailerLocationId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"retailerLocationId"] };
            NSError* error = [NSError errorWithDomain:kOAIRetailerLocationApiErrorDomain code:kOAIRetailerLocationApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/retailer/location/get"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (deviceId != nil) {
        queryParams[@"deviceId"] = deviceId;
    }
    if (accountId != nil) {
        queryParams[@"accountId"] = accountId;
    }
    if (retailerLocationId != nil) {
        queryParams[@"retailerLocationId"] = retailerLocationId;
    }
    if (retailerLocationToken != nil) {
        queryParams[@"retailerLocationToken"] = retailerLocationToken;
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
                              responseType: @"OAIRetailerLocationResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIRetailerLocationResponse*)data, error);
                                }
                            }];
}

///
/// Get Retailer Location (Consumer)
/// Gets the details of a retailer location as a consumer.
///  @param retailerLocationId The retailer location id 
///
///  @param deviceId The device id for returning account information (i.e. favorites) (optional)
///
///  @param accountId The account id for returning account information (i.e. favorites) (optional)
///
///  @returns OAIRetailerLocationResponse*
///
-(NSURLSessionTask*) getRetailerLocationConsumerWithRetailerLocationId: (NSNumber*) retailerLocationId
    deviceId: (NSString*) deviceId
    accountId: (NSNumber*) accountId
    completionHandler: (void (^)(OAIRetailerLocationResponse* output, NSError* error)) handler {
    // verify the required parameter 'retailerLocationId' is set
    if (retailerLocationId == nil) {
        NSParameterAssert(retailerLocationId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"retailerLocationId"] };
            NSError* error = [NSError errorWithDomain:kOAIRetailerLocationApiErrorDomain code:kOAIRetailerLocationApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/location/get"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (deviceId != nil) {
        queryParams[@"deviceId"] = deviceId;
    }
    if (accountId != nil) {
        queryParams[@"accountId"] = accountId;
    }
    if (retailerLocationId != nil) {
        queryParams[@"retailerLocationId"] = retailerLocationId;
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
                              responseType: @"OAIRetailerLocationResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIRetailerLocationResponse*)data, error);
                                }
                            }];
}

///
/// Distance Search Retailer Locations (Indexed)
/// Retailer location indexed search by distance. This searches on any retailer location with location data and returns the results sorted by distance.
///  @param latitude The latitude to center the search on 
///
///  @param longitude The longitude to center the search on 
///
///  @param searchRange The search range in the distanceUnit specified; default is MILES. 
///
///  @param start The start index for pagination 
///
///  @param limit The limit for pagination 
///
///  @param accountId The account id of the user (optional)
///
///  @param address Used to return results using this address as the center (optional)
///
///  @param hasOffers boolean to indicate whether to include retailer locations that have no offers (optional)
///
///  @param categories Comma separate list of category ids (optional)
///
///  @param filters Comma separated list of filter ids (optional)
///
///  @param audiences Comma separated list of audience ids (optional)
///
///  @param retailerIds Comma separated list of retailer ids (optional)
///
///  @param retailerLocationIds Comma separated list of retailer location ids (optional)
///
///  @param tags Does a full-text search on tags (optional)
///
///  @param locationType Location type filter (optional)
///
///  @param sortField The field to sort the result set on. Possible values include: DISTANCE, RETAILER_NAME, RETAILER_LOCATION_NAME (optional)
///
///  @param descending Determines whether the sorted list is in descending or ascending order (optional)
///
///  @param q This parameter is deprecated. (optional)
///
///  @param keyword Search by keyword (optional)
///
///  @param keywordOperator Determines the operator used when there are multiple words in the 'keyword' parameter (optional)
///
///  @param searchExpression Search expression to further refine results (optional)
///
///  @param distanceUnit Unit of distance (optional)
///
///  @param returnFavorited (deprecated) return favorited flag (optional)
///
///  @param returnRetailer Return retailer info (optional)
///
///  @param returnAssets Return assets (optional)
///
///  @param returnOffers Return offers (optional)
///
///  @param returnCategories Return categories (optional)
///
///  @param returnFilters Return filters (optional)
///
///  @param returnAudiences Return audiences (optional)
///
///  @param returnQrCode Return QR code info (optional)
///
///  @param returnExternalCategoryData Return external category data (optional)
///
///  @param includeFavorite Include favorites in response (optional)
///
///  @param includeLiked Include liked flag in response (optional)
///
///  @param includeRating Include rating info in response (optional)
///
///  @returns NSArray<OAIRetailerLocationResponse>*
///
-(NSURLSessionTask*) indexedRetailerLocationDistanceSearchWithLatitude: (NSNumber*) latitude
    longitude: (NSNumber*) longitude
    searchRange: (NSNumber*) searchRange
    start: (NSNumber*) start
    limit: (NSNumber*) limit
    accountId: (NSNumber*) accountId
    address: (NSString*) address
    hasOffers: (NSNumber*) hasOffers
    categories: (NSString*) categories
    filters: (NSString*) filters
    audiences: (NSString*) audiences
    retailerIds: (NSString*) retailerIds
    retailerLocationIds: (NSString*) retailerLocationIds
    tags: (NSString*) tags
    locationType: (NSString*) locationType
    sortField: (NSString*) sortField
    descending: (NSNumber*) descending
    q: (NSString*) q
    keyword: (NSString*) keyword
    keywordOperator: (NSString*) keywordOperator
    searchExpression: (NSString*) searchExpression
    distanceUnit: (NSString*) distanceUnit
    returnFavorited: (NSNumber*) returnFavorited
    returnRetailer: (NSNumber*) returnRetailer
    returnAssets: (NSNumber*) returnAssets
    returnOffers: (NSNumber*) returnOffers
    returnCategories: (NSNumber*) returnCategories
    returnFilters: (NSNumber*) returnFilters
    returnAudiences: (NSNumber*) returnAudiences
    returnQrCode: (NSNumber*) returnQrCode
    returnExternalCategoryData: (NSNumber*) returnExternalCategoryData
    includeFavorite: (NSNumber*) includeFavorite
    includeLiked: (NSNumber*) includeLiked
    includeRating: (NSNumber*) includeRating
    completionHandler: (void (^)(NSArray<OAIRetailerLocationResponse>* output, NSError* error)) handler {
    // verify the required parameter 'latitude' is set
    if (latitude == nil) {
        NSParameterAssert(latitude);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"latitude"] };
            NSError* error = [NSError errorWithDomain:kOAIRetailerLocationApiErrorDomain code:kOAIRetailerLocationApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'longitude' is set
    if (longitude == nil) {
        NSParameterAssert(longitude);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"longitude"] };
            NSError* error = [NSError errorWithDomain:kOAIRetailerLocationApiErrorDomain code:kOAIRetailerLocationApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'searchRange' is set
    if (searchRange == nil) {
        NSParameterAssert(searchRange);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"searchRange"] };
            NSError* error = [NSError errorWithDomain:kOAIRetailerLocationApiErrorDomain code:kOAIRetailerLocationApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'start' is set
    if (start == nil) {
        NSParameterAssert(start);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"start"] };
            NSError* error = [NSError errorWithDomain:kOAIRetailerLocationApiErrorDomain code:kOAIRetailerLocationApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'limit' is set
    if (limit == nil) {
        NSParameterAssert(limit);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"limit"] };
            NSError* error = [NSError errorWithDomain:kOAIRetailerLocationApiErrorDomain code:kOAIRetailerLocationApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/retailer/location/idistancesearch"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (latitude != nil) {
        queryParams[@"latitude"] = latitude;
    }
    if (longitude != nil) {
        queryParams[@"longitude"] = longitude;
    }
    if (accountId != nil) {
        queryParams[@"accountId"] = accountId;
    }
    if (address != nil) {
        queryParams[@"address"] = address;
    }
    if (searchRange != nil) {
        queryParams[@"searchRange"] = searchRange;
    }
    if (start != nil) {
        queryParams[@"start"] = start;
    }
    if (limit != nil) {
        queryParams[@"limit"] = limit;
    }
    if (hasOffers != nil) {
        queryParams[@"hasOffers"] = [hasOffers isEqual:@(YES)] ? @"true" : @"false";
    }
    if (categories != nil) {
        queryParams[@"categories"] = categories;
    }
    if (filters != nil) {
        queryParams[@"filters"] = filters;
    }
    if (audiences != nil) {
        queryParams[@"audiences"] = audiences;
    }
    if (retailerIds != nil) {
        queryParams[@"retailerIds"] = retailerIds;
    }
    if (retailerLocationIds != nil) {
        queryParams[@"retailerLocationIds"] = retailerLocationIds;
    }
    if (tags != nil) {
        queryParams[@"tags"] = tags;
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
    if (q != nil) {
        queryParams[@"q"] = q;
    }
    if (keyword != nil) {
        queryParams[@"keyword"] = keyword;
    }
    if (keywordOperator != nil) {
        queryParams[@"keywordOperator"] = keywordOperator;
    }
    if (searchExpression != nil) {
        queryParams[@"searchExpression"] = searchExpression;
    }
    if (distanceUnit != nil) {
        queryParams[@"distanceUnit"] = distanceUnit;
    }
    if (returnFavorited != nil) {
        queryParams[@"returnFavorited"] = [returnFavorited isEqual:@(YES)] ? @"true" : @"false";
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
    if (returnAudiences != nil) {
        queryParams[@"returnAudiences"] = [returnAudiences isEqual:@(YES)] ? @"true" : @"false";
    }
    if (returnQrCode != nil) {
        queryParams[@"returnQrCode"] = [returnQrCode isEqual:@(YES)] ? @"true" : @"false";
    }
    if (returnExternalCategoryData != nil) {
        queryParams[@"returnExternalCategoryData"] = [returnExternalCategoryData isEqual:@(YES)] ? @"true" : @"false";
    }
    if (includeFavorite != nil) {
        queryParams[@"includeFavorite"] = [includeFavorite isEqual:@(YES)] ? @"true" : @"false";
    }
    if (includeLiked != nil) {
        queryParams[@"includeLiked"] = [includeLiked isEqual:@(YES)] ? @"true" : @"false";
    }
    if (includeRating != nil) {
        queryParams[@"includeRating"] = [includeRating isEqual:@(YES)] ? @"true" : @"false";
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
                              responseType: @"NSArray<OAIRetailerLocationResponse>*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSArray<OAIRetailerLocationResponse>*)data, error);
                                }
                            }];
}

///
/// Keyword Search Retailer Locations (Indexed)
/// Retailer location (faster) indexed search. This searches all retailer locations.
///  @param accountId The account id of the user (optional)
///
///  @param start The start index for pagination (optional)
///
///  @param limit The limit for pagination (optional)
///
///  @param hasOffers boolean to indicate whether to include retailer locations that have no offers (optional)
///
///  @param categories Comma separate list of category ids (optional)
///
///  @param filters Comma separated list of filter ids (optional)
///
///  @param audiences Comma separated list of audience ids (optional)
///
///  @param retailerIds Comma separated list of retailer ids (optional)
///
///  @param retailerLocationIds Comma separated list of retailer location ids (optional)
///
///  @param tags Does a full-text search on tags (optional)
///
///  @param locationType Location type filter (optional)
///
///  @param sortField The field to sort the result set on. Possible values include: RETAILER_NAME, RETAILER_LOCATION_NAME (optional)
///
///  @param descending Determines whether the sorted list is in descending or ascending order (optional)
///
///  @param q This parameter is deprecated. (optional)
///
///  @param keyword Search by keyword (optional)
///
///  @param keywordOperator Determines the operator used when there are multiple words in the 'keyword' parameter (optional)
///
///  @param searchExpression Search expression to further refine results (optional)
///
///  @param returnRetailer Return retailer info (optional)
///
///  @param returnAssets Return assets (optional)
///
///  @param returnOffers Return offers (optional)
///
///  @param returnCategories Return categories (optional)
///
///  @param returnFilters Return filters (optional)
///
///  @param returnAudiences Return audiences (optional)
///
///  @param returnQrCode Return QR code info (optional)
///
///  @param returnExternalCategoryData Return external category data (optional)
///
///  @param includeFavorite Include favorites in response (optional)
///
///  @param includeLiked Include liked flag in response (optional)
///
///  @param includeRating Include rating info in response (optional)
///
///  @returns NSArray<OAIRetailerLocationResponse>*
///
-(NSURLSessionTask*) indexedRetailerLocationSearchWithAccountId: (NSNumber*) accountId
    start: (NSNumber*) start
    limit: (NSNumber*) limit
    hasOffers: (NSNumber*) hasOffers
    categories: (NSString*) categories
    filters: (NSString*) filters
    audiences: (NSString*) audiences
    retailerIds: (NSString*) retailerIds
    retailerLocationIds: (NSString*) retailerLocationIds
    tags: (NSString*) tags
    locationType: (NSString*) locationType
    sortField: (NSString*) sortField
    descending: (NSNumber*) descending
    q: (NSString*) q
    keyword: (NSString*) keyword
    keywordOperator: (NSString*) keywordOperator
    searchExpression: (NSString*) searchExpression
    returnRetailer: (NSNumber*) returnRetailer
    returnAssets: (NSNumber*) returnAssets
    returnOffers: (NSNumber*) returnOffers
    returnCategories: (NSNumber*) returnCategories
    returnFilters: (NSNumber*) returnFilters
    returnAudiences: (NSNumber*) returnAudiences
    returnQrCode: (NSNumber*) returnQrCode
    returnExternalCategoryData: (NSNumber*) returnExternalCategoryData
    includeFavorite: (NSNumber*) includeFavorite
    includeLiked: (NSNumber*) includeLiked
    includeRating: (NSNumber*) includeRating
    completionHandler: (void (^)(NSArray<OAIRetailerLocationResponse>* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/retailer/location/isearch"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        queryParams[@"accountId"] = accountId;
    }
    if (start != nil) {
        queryParams[@"start"] = start;
    }
    if (limit != nil) {
        queryParams[@"limit"] = limit;
    }
    if (hasOffers != nil) {
        queryParams[@"hasOffers"] = [hasOffers isEqual:@(YES)] ? @"true" : @"false";
    }
    if (categories != nil) {
        queryParams[@"categories"] = categories;
    }
    if (filters != nil) {
        queryParams[@"filters"] = filters;
    }
    if (audiences != nil) {
        queryParams[@"audiences"] = audiences;
    }
    if (retailerIds != nil) {
        queryParams[@"retailerIds"] = retailerIds;
    }
    if (retailerLocationIds != nil) {
        queryParams[@"retailerLocationIds"] = retailerLocationIds;
    }
    if (tags != nil) {
        queryParams[@"tags"] = tags;
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
    if (q != nil) {
        queryParams[@"q"] = q;
    }
    if (keyword != nil) {
        queryParams[@"keyword"] = keyword;
    }
    if (keywordOperator != nil) {
        queryParams[@"keywordOperator"] = keywordOperator;
    }
    if (searchExpression != nil) {
        queryParams[@"searchExpression"] = searchExpression;
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
    if (returnAudiences != nil) {
        queryParams[@"returnAudiences"] = [returnAudiences isEqual:@(YES)] ? @"true" : @"false";
    }
    if (returnQrCode != nil) {
        queryParams[@"returnQrCode"] = [returnQrCode isEqual:@(YES)] ? @"true" : @"false";
    }
    if (returnExternalCategoryData != nil) {
        queryParams[@"returnExternalCategoryData"] = [returnExternalCategoryData isEqual:@(YES)] ? @"true" : @"false";
    }
    if (includeFavorite != nil) {
        queryParams[@"includeFavorite"] = [includeFavorite isEqual:@(YES)] ? @"true" : @"false";
    }
    if (includeLiked != nil) {
        queryParams[@"includeLiked"] = [includeLiked isEqual:@(YES)] ? @"true" : @"false";
    }
    if (includeRating != nil) {
        queryParams[@"includeRating"] = [includeRating isEqual:@(YES)] ? @"true" : @"false";
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
                              responseType: @"NSArray<OAIRetailerLocationResponse>*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSArray<OAIRetailerLocationResponse>*)data, error);
                                }
                            }];
}

///
/// Search Retailer Locations (Owned)
/// Searches on retailer locations that the account has access to.
///  @param deviceId The device id (deviceId or accountId required) (optional)
///
///  @param accountId The account id of the user (deviceId or accountId required) (optional)
///
///  @param q This parameter is deprecated. (optional)
///
///  @param keyword The keyword used to search (optional)
///
///  @param retailerIds Comma separated list of retailer IDs which when passed in will filter the results to only return these retailers. (optional)
///
///  @param retailerLocationIds Comma separated list of retailer location IDs (optional)
///
///  @param locationType Location type filter (optional)
///
///  @param sortField The column to sort the search on (optional)
///
///  @param descending The order to return the search results (optional)
///
///  @param i This parameter is deprecated. (optional)
///
///  @param start The record to begin the return set on (optional)
///
///  @param l This parameter is deprecated. (optional)
///
///  @param limit The number of records to return (optional)
///
///  @param showPublicLocations Whether to include public locations in the results (optional)
///
///  @param activeOnly Return only active results (optional)
///
///  @param returnRetailer Return retailer info (optional)
///
///  @param returnAssets Return assets (optional)
///
///  @param returnOffers Return offers (optional)
///
///  @param returnCategories Return categories (optional)
///
///  @param returnFilters Return filters (optional)
///
///  @param returnAudiences Return audiences (optional)
///
///  @param returnQrCode Return QR code info (optional)
///
///  @param includeFavorite Include favorites in response (optional)
///
///  @param includeLiked Include liked flag in response (optional)
///
///  @param includeRating Include rating info in response (optional)
///
///  @returns NSArray<OAIRetailerLocationResponse>*
///
-(NSURLSessionTask*) searchRetailerLocationsWithDeviceId: (NSString*) deviceId
    accountId: (NSNumber*) accountId
    q: (NSString*) q
    keyword: (NSString*) keyword
    retailerIds: (NSString*) retailerIds
    retailerLocationIds: (NSString*) retailerLocationIds
    locationType: (NSString*) locationType
    sortField: (NSString*) sortField
    descending: (NSNumber*) descending
    i: (NSNumber*) i
    start: (NSNumber*) start
    l: (NSNumber*) l
    limit: (NSNumber*) limit
    showPublicLocations: (NSNumber*) showPublicLocations
    activeOnly: (NSNumber*) activeOnly
    returnRetailer: (NSNumber*) returnRetailer
    returnAssets: (NSNumber*) returnAssets
    returnOffers: (NSNumber*) returnOffers
    returnCategories: (NSNumber*) returnCategories
    returnFilters: (NSNumber*) returnFilters
    returnAudiences: (NSNumber*) returnAudiences
    returnQrCode: (NSNumber*) returnQrCode
    includeFavorite: (NSNumber*) includeFavorite
    includeLiked: (NSNumber*) includeLiked
    includeRating: (NSNumber*) includeRating
    completionHandler: (void (^)(NSArray<OAIRetailerLocationResponse>* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/retailer/location/search"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

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
    if (retailerIds != nil) {
        queryParams[@"retailerIds"] = retailerIds;
    }
    if (retailerLocationIds != nil) {
        queryParams[@"retailerLocationIds"] = retailerLocationIds;
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
    if (showPublicLocations != nil) {
        queryParams[@"showPublicLocations"] = [showPublicLocations isEqual:@(YES)] ? @"true" : @"false";
    }
    if (activeOnly != nil) {
        queryParams[@"activeOnly"] = [activeOnly isEqual:@(YES)] ? @"true" : @"false";
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
    if (returnAudiences != nil) {
        queryParams[@"returnAudiences"] = [returnAudiences isEqual:@(YES)] ? @"true" : @"false";
    }
    if (returnQrCode != nil) {
        queryParams[@"returnQrCode"] = [returnQrCode isEqual:@(YES)] ? @"true" : @"false";
    }
    if (includeFavorite != nil) {
        queryParams[@"includeFavorite"] = [includeFavorite isEqual:@(YES)] ? @"true" : @"false";
    }
    if (includeLiked != nil) {
        queryParams[@"includeLiked"] = [includeLiked isEqual:@(YES)] ? @"true" : @"false";
    }
    if (includeRating != nil) {
        queryParams[@"includeRating"] = [includeRating isEqual:@(YES)] ? @"true" : @"false";
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
                              responseType: @"NSArray<OAIRetailerLocationResponse>*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSArray<OAIRetailerLocationResponse>*)data, error);
                                }
                            }];
}

///
/// Update Retailer Location
/// Updates a location record for a retailer. Only the owner and the employees of the retailer have access to do this.
///  @param retailerLocationId The ID of the retailer location 
///
///  @param deviceId The device id (deviceId or accountId required) (optional)
///
///  @param accountId The account id of the user (deviceId or accountId required) (optional)
///
///  @param name The name of the retailer location (optional)
///
///  @param streetAddress The street address of the retailer location (optional)
///
///  @param streetAddress2 Additional address information (such as a suite number, floor number, building name, or PO Box) (optional)
///
///  @param city The city of the retailer location (optional)
///
///  @param state The state of the retailer location (optional)
///
///  @param postalCode The postal code of the retailer location (optional)
///
///  @param country the country of the retailer location (optional)
///
///  @param businessPhone The business phone number of the retailer location (optional)
///
///  @param businessPhoneExt The business phone extension of the retailer location (optional)
///
///  @param website The website of the retailer location (optional)
///
///  @param email The email of the retailer location (optional)
///
///  @param internalId An internal identifier used by the retailer (optional)
///
///  @param detailsHeader A brief description about the retailer location (255 character limit) (optional)
///
///  @param detailsBody A detailed description about the retailer location (optional)
///
///  @param hours The hours of operation (optional)
///
///  @param logo The retailer location logo sent as a multipart binary file (you can optionally use logoAssetId if the asset has already been uploaded before) (optional)
///
///  @param logoAssetId The retailer location logo asset id (optional)
///
///  @param picture1 Optional store-front pictures or product pictures or etc. A multipart binary file (you can optionally use picture1AssetId if the asset has already been uploaded before) (optional)
///
///  @param picture1AssetId An asset id (optional)
///
///  @param picture2 Optional store-front pictures or product pictures or etc. A multipart binary file (you can optionally use picture2AssetId if the asset has already been uploaded before) (optional)
///
///  @param picture2AssetId An asset id (optional)
///
///  @param categoryIds Comma separated list of category IDs used to filter retailer locations by categories (optional)
///
///  @param filterIds Comma separated list of filter IDs used to filter retailer locations (optional)
///
///  @param latitude the latituede of the retailer location (optional)
///
///  @param longitude the longitude of the retailer location (optional)
///
///  @param building  (optional)
///
///  @param googlePlaceId the Google Place ID that the retailer location is associated with (optional)
///
///  @param yelpId the Yelp ID that the retailer location is associated with (optional)
///
///  @param metaData External custom client defined data (optional)
///
///  @param paymentProvider Specifies which payment provider Sirqul will use when making payments (optional)
///
///  @param active Sets whether the retailer is active or inactive (hidden from consumers) (optional)
///
///  @param publicLocation Sets whether the location is public or not (optional)
///
///  @param locationType External custom type identifier (optional)
///
///  @param audienceIds Comma separated list of audience IDs used to assign audiences to the retailer location (optional)
///
///  @param audienceIdsToAdd Comma separated list of audience IDs to add to the retailer location (optional)
///
///  @param audienceIdsToRemove Comma separated list of audience IDs to remove from the retailer location (optional)
///
///  @param responseFormat The format of the returned response {JSON // default , HTML // for Dojo support when uploading assets} (optional)
///
///  @param tags Custom string field for doing full-text searches (optional)
///
///  @returns OAIRetailerLocationResponse*
///
-(NSURLSessionTask*) updateRetailerLocationsWithRetailerLocationId: (NSNumber*) retailerLocationId
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
    internalId: (NSString*) internalId
    detailsHeader: (NSString*) detailsHeader
    detailsBody: (NSString*) detailsBody
    hours: (NSString*) hours
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
    building: (NSString*) building
    googlePlaceId: (NSString*) googlePlaceId
    yelpId: (NSString*) yelpId
    metaData: (NSString*) metaData
    paymentProvider: (NSString*) paymentProvider
    active: (NSNumber*) active
    publicLocation: (NSNumber*) publicLocation
    locationType: (NSString*) locationType
    audienceIds: (NSString*) audienceIds
    audienceIdsToAdd: (NSString*) audienceIdsToAdd
    audienceIdsToRemove: (NSString*) audienceIdsToRemove
    responseFormat: (NSString*) responseFormat
    tags: (NSString*) tags
    completionHandler: (void (^)(OAIRetailerLocationResponse* output, NSError* error)) handler {
    // verify the required parameter 'retailerLocationId' is set
    if (retailerLocationId == nil) {
        NSParameterAssert(retailerLocationId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"retailerLocationId"] };
            NSError* error = [NSError errorWithDomain:kOAIRetailerLocationApiErrorDomain code:kOAIRetailerLocationApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/retailer/location/update"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (deviceId != nil) {
        queryParams[@"deviceId"] = deviceId;
    }
    if (accountId != nil) {
        queryParams[@"accountId"] = accountId;
    }
    if (retailerLocationId != nil) {
        queryParams[@"retailerLocationId"] = retailerLocationId;
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
    if (internalId != nil) {
        queryParams[@"internalId"] = internalId;
    }
    if (detailsHeader != nil) {
        queryParams[@"detailsHeader"] = detailsHeader;
    }
    if (detailsBody != nil) {
        queryParams[@"detailsBody"] = detailsBody;
    }
    if (hours != nil) {
        queryParams[@"hours"] = hours;
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
    if (building != nil) {
        queryParams[@"building"] = building;
    }
    if (googlePlaceId != nil) {
        queryParams[@"googlePlaceId"] = googlePlaceId;
    }
    if (yelpId != nil) {
        queryParams[@"yelpId"] = yelpId;
    }
    if (metaData != nil) {
        queryParams[@"metaData"] = metaData;
    }
    if (paymentProvider != nil) {
        queryParams[@"paymentProvider"] = paymentProvider;
    }
    if (active != nil) {
        queryParams[@"active"] = [active isEqual:@(YES)] ? @"true" : @"false";
    }
    if (publicLocation != nil) {
        queryParams[@"publicLocation"] = [publicLocation isEqual:@(YES)] ? @"true" : @"false";
    }
    if (locationType != nil) {
        queryParams[@"locationType"] = locationType;
    }
    if (audienceIds != nil) {
        queryParams[@"audienceIds"] = audienceIds;
    }
    if (audienceIdsToAdd != nil) {
        queryParams[@"audienceIdsToAdd"] = audienceIdsToAdd;
    }
    if (audienceIdsToRemove != nil) {
        queryParams[@"audienceIdsToRemove"] = audienceIdsToRemove;
    }
    if (responseFormat != nil) {
        queryParams[@"responseFormat"] = responseFormat;
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
                              responseType: @"OAIRetailerLocationResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIRetailerLocationResponse*)data, error);
                                }
                            }];
}



@end
