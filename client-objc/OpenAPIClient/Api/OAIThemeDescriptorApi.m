#import "OAIThemeDescriptorApi.h"
#import "OAIQueryParamCollection.h"
#import "OAIApiClient.h"
#import "OAIPurchaseItemListResponse.h"
#import "OAISirqulResponse.h"
#import "OAIThemeDescriptorResponse.h"


@interface OAIThemeDescriptorApi ()

@property (nonatomic, strong, readwrite) NSMutableDictionary *mutableDefaultHeaders;

@end

@implementation OAIThemeDescriptorApi

NSString* kOAIThemeDescriptorApiErrorDomain = @"OAIThemeDescriptorApiErrorDomain";
NSInteger kOAIThemeDescriptorApiMissingParamErrorCode = 234513;

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
/// Create/Update Theme
/// Creates or updates a theme descriptor that can be used to give applications a customized look and feel. The theme can be created by consumers and shared to other users, allowing them to use and/or collaborate on making the theme.
///  @param publicRead determines whether the theme's participants have read permissions 
///
///  @param publicWrite determines whether the theme's participants have write permissions 
///
///  @param publicDelete determines whether the theme's participants have delete permissions 
///
///  @param publicAdd  
///
///  @param visibility the determines the theme's participants (PUBLIC - includes everyone in the system as a potential participant, PRIVATE - only considers people who have been invited as participants) 
///
///  @param includeFriendGroup flag to determine whether to share to the user's \"friends\" group 
///
///  @param completeWithDefaultValues determines whether to use default values to complete the theme 
///
///  @param deviceId a unique ID given by the device (deviceId or accountId required) (optional)
///
///  @param accountId the account ID of the user (deviceId or accountId required) (optional)
///
///  @param gameType the application key (optional)
///
///  @param themeDescriptorId the theme descriptor id used to update an existing theme, leave empty for creating a new theme (optional)
///
///  @param title the title of the theme (optional)
///
///  @param _description the description of the theme (optional)
///
///  @param connectionIdsToAdd a comma separated list of connection IDs to share to users (optional)
///
///  @param connectionGroupIdsToAdd a comma separated list of connection group IDs to share to groups (optional)
///
///  @param appVersion the application version the theme was created for (optional)
///
///  @param colorValueJson a json array used to replace colors within the application. Example: ```json [   {     \"name\": \"sceneAtlas\",     \"valueString\": \"100,100,100,255\"   },   {     \"name\": \"bg\",     \"valueString\": \"100,100,100,255\"   } ] ```  (optional)
///
///  @param stringReplacerJson a json array used to replace strings within the application. Example: ```json [   {     \"name\": \"coins\",     \"valueString\": \"Gems\"   },   {     \"name\": \"lives\",     \"valueString\": \"lives\"   } ] ```  (optional)
///
///  @param customJsonObjects a json object used by the scene atlas to position sprites. Example: ```json {   \"pShootingOffset\": [     {       \"name\": \"x\",       \"valueString\": \"2.2\"     },     {       \"name\": \"y\",       \"valueString\": \"-0.3\"     }   ],   \"e1ShootingOffset\": [     {       \"name\": \"x\",       \"valueString\": \"0.25\"     },     {       \"name\": \"y\",       \"valueString\": \"0.5\"     }   ] } ```  (optional)
///
///  @param iconImage a MultipartFile containing the image used as the theme icon (optional)
///
///  @param sceneAtlasImage a MultipartFile containing the scene atlas (optional)
///
///  @param bgImage a MultipartFile containing the background image (optional)
///
///  @param bgSound a MultipartFile containing the background sound file (preferably in MP3 format) (optional)
///
///  @param musicSelection used to select a default sound file that already exists in the application (optional)
///
///  @param locationDescription the description of the user's current location (optional)
///
///  @param latitude the current latitude of the user (optional)
///
///  @param longitude the current longitude of the user (optional)
///
///  @returns OAIThemeDescriptorResponse*
///
-(NSURLSessionTask*) addOrUpdateThemeDescriptorWithPublicRead: (NSNumber*) publicRead
    publicWrite: (NSNumber*) publicWrite
    publicDelete: (NSNumber*) publicDelete
    publicAdd: (NSNumber*) publicAdd
    visibility: (NSString*) visibility
    includeFriendGroup: (NSNumber*) includeFriendGroup
    completeWithDefaultValues: (NSNumber*) completeWithDefaultValues
    deviceId: (NSString*) deviceId
    accountId: (NSNumber*) accountId
    gameType: (NSString*) gameType
    themeDescriptorId: (NSNumber*) themeDescriptorId
    title: (NSString*) title
    _description: (NSString*) _description
    connectionIdsToAdd: (NSString*) connectionIdsToAdd
    connectionGroupIdsToAdd: (NSString*) connectionGroupIdsToAdd
    appVersion: (NSString*) appVersion
    colorValueJson: (NSString*) colorValueJson
    stringReplacerJson: (NSString*) stringReplacerJson
    customJsonObjects: (NSString*) customJsonObjects
    iconImage: (NSURL*) iconImage
    sceneAtlasImage: (NSURL*) sceneAtlasImage
    bgImage: (NSURL*) bgImage
    bgSound: (NSURL*) bgSound
    musicSelection: (NSString*) musicSelection
    locationDescription: (NSString*) locationDescription
    latitude: (NSNumber*) latitude
    longitude: (NSNumber*) longitude
    completionHandler: (void (^)(OAIThemeDescriptorResponse* output, NSError* error)) handler {
    // verify the required parameter 'publicRead' is set
    if (publicRead == nil) {
        NSParameterAssert(publicRead);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"publicRead"] };
            NSError* error = [NSError errorWithDomain:kOAIThemeDescriptorApiErrorDomain code:kOAIThemeDescriptorApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'publicWrite' is set
    if (publicWrite == nil) {
        NSParameterAssert(publicWrite);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"publicWrite"] };
            NSError* error = [NSError errorWithDomain:kOAIThemeDescriptorApiErrorDomain code:kOAIThemeDescriptorApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'publicDelete' is set
    if (publicDelete == nil) {
        NSParameterAssert(publicDelete);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"publicDelete"] };
            NSError* error = [NSError errorWithDomain:kOAIThemeDescriptorApiErrorDomain code:kOAIThemeDescriptorApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'publicAdd' is set
    if (publicAdd == nil) {
        NSParameterAssert(publicAdd);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"publicAdd"] };
            NSError* error = [NSError errorWithDomain:kOAIThemeDescriptorApiErrorDomain code:kOAIThemeDescriptorApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'visibility' is set
    if (visibility == nil) {
        NSParameterAssert(visibility);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"visibility"] };
            NSError* error = [NSError errorWithDomain:kOAIThemeDescriptorApiErrorDomain code:kOAIThemeDescriptorApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'includeFriendGroup' is set
    if (includeFriendGroup == nil) {
        NSParameterAssert(includeFriendGroup);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"includeFriendGroup"] };
            NSError* error = [NSError errorWithDomain:kOAIThemeDescriptorApiErrorDomain code:kOAIThemeDescriptorApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'completeWithDefaultValues' is set
    if (completeWithDefaultValues == nil) {
        NSParameterAssert(completeWithDefaultValues);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"completeWithDefaultValues"] };
            NSError* error = [NSError errorWithDomain:kOAIThemeDescriptorApiErrorDomain code:kOAIThemeDescriptorApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/consumer/theme"];

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
    if (themeDescriptorId != nil) {
        queryParams[@"themeDescriptorId"] = themeDescriptorId;
    }
    if (title != nil) {
        queryParams[@"title"] = title;
    }
    if (_description != nil) {
        queryParams[@"description"] = _description;
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
    if (appVersion != nil) {
        queryParams[@"appVersion"] = appVersion;
    }
    if (colorValueJson != nil) {
        queryParams[@"colorValueJson"] = colorValueJson;
    }
    if (stringReplacerJson != nil) {
        queryParams[@"stringReplacerJson"] = stringReplacerJson;
    }
    if (customJsonObjects != nil) {
        queryParams[@"customJsonObjects"] = customJsonObjects;
    }
    if (iconImage != nil) {
        queryParams[@"iconImage"] = iconImage;
    }
    if (sceneAtlasImage != nil) {
        queryParams[@"sceneAtlasImage"] = sceneAtlasImage;
    }
    if (bgImage != nil) {
        queryParams[@"bgImage"] = bgImage;
    }
    if (bgSound != nil) {
        queryParams[@"bgSound"] = bgSound;
    }
    if (musicSelection != nil) {
        queryParams[@"musicSelection"] = musicSelection;
    }
    if (completeWithDefaultValues != nil) {
        queryParams[@"completeWithDefaultValues"] = [completeWithDefaultValues isEqual:@(YES)] ? @"true" : @"false";
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
                              responseType: @"OAIThemeDescriptorResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIThemeDescriptorResponse*)data, error);
                                }
                            }];
}

///
/// Get Theme
/// Gets a theme.
///  @param themeDescriptorId the theme id 
///
///  @param deviceId a unique ID given by the device (deviceId or accountId required) (optional)
///
///  @param accountId the account ID of the user (deviceId or accountId required) (optional)
///
///  @param gameType the application key (optional)
///
///  @param latitude latitude used to update the user's current location (optional)
///
///  @param longitude longitude used to update the user's current location (optional)
///
///  @returns OAIPurchaseItemListResponse*
///
-(NSURLSessionTask*) getThemeDescriptorWithThemeDescriptorId: (NSNumber*) themeDescriptorId
    deviceId: (NSString*) deviceId
    accountId: (NSNumber*) accountId
    gameType: (NSString*) gameType
    latitude: (NSNumber*) latitude
    longitude: (NSNumber*) longitude
    completionHandler: (void (^)(OAIPurchaseItemListResponse* output, NSError* error)) handler {
    // verify the required parameter 'themeDescriptorId' is set
    if (themeDescriptorId == nil) {
        NSParameterAssert(themeDescriptorId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"themeDescriptorId"] };
            NSError* error = [NSError errorWithDomain:kOAIThemeDescriptorApiErrorDomain code:kOAIThemeDescriptorApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/consumer/theme/get"];

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
    if (themeDescriptorId != nil) {
        queryParams[@"themeDescriptorId"] = themeDescriptorId;
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
                              responseType: @"OAIPurchaseItemListResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIPurchaseItemListResponse*)data, error);
                                }
                            }];
}

///
/// Search Themes
/// Searches for themes.
///  @param filter a comma separated list of Ownership 
///
///  @param sortField the field to sort by. See ThemeDescriptorApiMap 
///
///  @param descending determines whether the sorted list is in descending or ascending order 
///
///  @param start the start parameter for pagination 
///
///  @param limit the limit parameter for pagination 
///
///  @param deviceId a unique id given by the device (deviceId or accountId required) (optional)
///
///  @param accountId the account id of the user (deviceId or accountId required) (optional)
///
///  @param gameType the unique title of an application given from the admin tool (optional)
///
///  @param contestType contest type (optional)
///
///  @param ownerId search on contests that an account has access to (optional)
///
///  @param q This parameter is deprecated. (optional)
///
///  @param keyword a keyword to search on (optional)
///
///  @param i This parameter is deprecated. (optional)
///
///  @param l This parameter is deprecated. (optional)
///
///  @param dateCreated filter on items that have been created before this date (optional)
///
///  @param appVersion application version of the theme to filter by (optional)
///
///  @param latitude latitude used to update the user's current location (optional)
///
///  @param longitude longitude used to update the user's current location (optional)
///
///  @returns OAIPurchaseItemListResponse*
///
-(NSURLSessionTask*) getThemeDescriptorsWithFilter: (NSString*) filter
    sortField: (NSString*) sortField
    descending: (NSNumber*) descending
    start: (NSNumber*) start
    limit: (NSNumber*) limit
    deviceId: (NSString*) deviceId
    accountId: (NSNumber*) accountId
    gameType: (NSString*) gameType
    contestType: (NSString*) contestType
    ownerId: (NSNumber*) ownerId
    q: (NSString*) q
    keyword: (NSString*) keyword
    i: (NSNumber*) i
    l: (NSNumber*) l
    dateCreated: (NSNumber*) dateCreated
    appVersion: (NSString*) appVersion
    latitude: (NSNumber*) latitude
    longitude: (NSNumber*) longitude
    completionHandler: (void (^)(OAIPurchaseItemListResponse* output, NSError* error)) handler {
    // verify the required parameter 'filter' is set
    if (filter == nil) {
        NSParameterAssert(filter);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"filter"] };
            NSError* error = [NSError errorWithDomain:kOAIThemeDescriptorApiErrorDomain code:kOAIThemeDescriptorApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'sortField' is set
    if (sortField == nil) {
        NSParameterAssert(sortField);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"sortField"] };
            NSError* error = [NSError errorWithDomain:kOAIThemeDescriptorApiErrorDomain code:kOAIThemeDescriptorApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'descending' is set
    if (descending == nil) {
        NSParameterAssert(descending);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"descending"] };
            NSError* error = [NSError errorWithDomain:kOAIThemeDescriptorApiErrorDomain code:kOAIThemeDescriptorApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'start' is set
    if (start == nil) {
        NSParameterAssert(start);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"start"] };
            NSError* error = [NSError errorWithDomain:kOAIThemeDescriptorApiErrorDomain code:kOAIThemeDescriptorApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'limit' is set
    if (limit == nil) {
        NSParameterAssert(limit);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"limit"] };
            NSError* error = [NSError errorWithDomain:kOAIThemeDescriptorApiErrorDomain code:kOAIThemeDescriptorApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/consumer/theme/search"];

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
    if (appVersion != nil) {
        queryParams[@"appVersion"] = appVersion;
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
                              responseType: @"OAIPurchaseItemListResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIPurchaseItemListResponse*)data, error);
                                }
                            }];
}

///
/// Delete Theme
/// Removes a theme.
///  @param themeDescriptorId the theme id to remove 
///
///  @param deviceId a unique id given by the device (deviceId or accountId required) (optional)
///
///  @param accountId the account id of the user (deviceId or accountId required) (optional)
///
///  @param gameType the unique title of an application given from the admin tool (optional)
///
///  @param latitude latitude used to update the user's current location (optional)
///
///  @param longitude longitude used to update the user's current location (optional)
///
///  @returns OAISirqulResponse*
///
-(NSURLSessionTask*) removeThemeDescriptorWithThemeDescriptorId: (NSNumber*) themeDescriptorId
    deviceId: (NSString*) deviceId
    accountId: (NSNumber*) accountId
    gameType: (NSString*) gameType
    latitude: (NSNumber*) latitude
    longitude: (NSNumber*) longitude
    completionHandler: (void (^)(OAISirqulResponse* output, NSError* error)) handler {
    // verify the required parameter 'themeDescriptorId' is set
    if (themeDescriptorId == nil) {
        NSParameterAssert(themeDescriptorId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"themeDescriptorId"] };
            NSError* error = [NSError errorWithDomain:kOAIThemeDescriptorApiErrorDomain code:kOAIThemeDescriptorApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/consumer/theme/remove"];

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
    if (themeDescriptorId != nil) {
        queryParams[@"themeDescriptorId"] = themeDescriptorId;
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



@end
