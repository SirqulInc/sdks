#import "OAIFacebookApi.h"
#import "OAIQueryParamCollection.h"
#import "OAIApiClient.h"
#import "OAISirqulResponse.h"
#import "OAITokenResponse.h"


@interface OAIFacebookApi ()

@property (nonatomic, strong, readwrite) NSMutableDictionary *mutableDefaultHeaders;

@end

@implementation OAIFacebookApi

NSString* kOAIFacebookApiErrorDomain = @"OAIFacebookApiErrorDomain";
NSInteger kOAIFacebookApiMissingParamErrorCode = 234513;

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
/// Get Facebook Token
/// Gets a user's Facebook token.
///  @param deviceId a unique id given by the device (deviceId or accountId required) (optional)
///
///  @param accountId the account id of the user (deviceId or accountId required) (optional)
///
///  @param latitude used to update the user's current location (optional)
///
///  @param longitude used to update the user's current location (optional)
///
///  @returns OAITokenResponse*
///
-(NSURLSessionTask*) getTokenWithDeviceId: (NSString*) deviceId
    accountId: (NSNumber*) accountId
    latitude: (NSNumber*) latitude
    longitude: (NSNumber*) longitude
    completionHandler: (void (^)(OAITokenResponse* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/facebook/getfbtoken"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (deviceId != nil) {
        queryParams[@"deviceId"] = deviceId;
    }
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
                              responseType: @"OAITokenResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAITokenResponse*)data, error);
                                }
                            }];
}

///
/// Post to Facebook
/// Make Facebook posts on behalf of the user.
///  @param event the type of Sirqul event {DOWNLOADED_APP, CHALLENGE, LEVEL_COMPLETED, LEVEL_CREATED} 
///
///  @param deviceId a unique id given by the device (deviceId or accountId required) (optional)
///
///  @param accountId the account id of the user (deviceId or accountId required) (optional)
///
///  @param permissionableType for posting about information related to an object. Possible types: {ALBUM, ALBUM_CONTEST, GAME_LEVEL, THEME_DESCRIPTOR} (optional)
///
///  @param permissionableId the object id (optional)
///
///  @param assetId used to include an asset on a Facebook post (optional)
///
///  @param gameType This parameter is deprecated. (optional)
///
///  @param appKey the application key (optional)
///
///  @param latitude used to update the user's current location (optional)
///
///  @param longitude used to update the user's current location (optional)
///
///  @returns OAISirqulResponse*
///
-(NSURLSessionTask*) graphInterfaceWithEvent: (NSString*) event
    deviceId: (NSString*) deviceId
    accountId: (NSNumber*) accountId
    permissionableType: (NSString*) permissionableType
    permissionableId: (NSNumber*) permissionableId
    assetId: (NSNumber*) assetId
    gameType: (NSString*) gameType
    appKey: (NSString*) appKey
    latitude: (NSNumber*) latitude
    longitude: (NSNumber*) longitude
    completionHandler: (void (^)(OAISirqulResponse* output, NSError* error)) handler {
    // verify the required parameter 'event' is set
    if (event == nil) {
        NSParameterAssert(event);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"event"] };
            NSError* error = [NSError errorWithDomain:kOAIFacebookApiErrorDomain code:kOAIFacebookApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/facebook/graph"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (deviceId != nil) {
        queryParams[@"deviceId"] = deviceId;
    }
    if (accountId != nil) {
        queryParams[@"accountId"] = accountId;
    }
    if (event != nil) {
        queryParams[@"event"] = event;
    }
    if (permissionableType != nil) {
        queryParams[@"permissionableType"] = permissionableType;
    }
    if (permissionableId != nil) {
        queryParams[@"permissionableId"] = permissionableId;
    }
    if (assetId != nil) {
        queryParams[@"assetId"] = assetId;
    }
    if (gameType != nil) {
        queryParams[@"gameType"] = gameType;
    }
    if (appKey != nil) {
        queryParams[@"appKey"] = appKey;
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
