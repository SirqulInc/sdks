#import "OAIThirdPartyCredentialsApi.h"
#import "OAIQueryParamCollection.h"
#import "OAIApiClient.h"
#import "OAIProfileResponse.h"
#import "OAISirqulResponse.h"
#import "OAIThirdPartyCredentialResponse.h"
#import "OAIThirdPartyNetworkResponse.h"
#import "OAIThirdPartyNetworkShortResponse.h"


@interface OAIThirdPartyCredentialsApi ()

@property (nonatomic, strong, readwrite) NSMutableDictionary *mutableDefaultHeaders;

@end

@implementation OAIThirdPartyCredentialsApi

NSString* kOAIThirdPartyCredentialsApiErrorDomain = @"OAIThirdPartyCredentialsApiErrorDomain";
NSInteger kOAIThirdPartyCredentialsApiMissingParamErrorCode = 234513;

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
/// Create Credential
/// This endpoint creates a third-party login for a Sirqul account. A third party login is a way for external systems (Third Party Networks) to link their own user accounts with a Sirqul account.   The thirdPartyId parameter is used to determine if the user already exists in Sirqul or not. This parameter needs to be unique for each user in the Third Party Network (identified by the networkUID parameter). Note that subsequent calls will update the user's third-party login credentials for the user with the same thirdPartyId and networkUID combination.    The thirdPartyToken parameter acts as a shared secret and used by client applications to log users into Sirqul without providing a Sirqul username and password. 
///  @param version  
///
///  @param thirdPartyId the third party user account id 
///
///  @param thirdPartyToken the access token to authenticate with (ex: username or fb token or phone number) 
///
///  @param networkUID the access provider to authenticate against 
///
///  @param appKey the application key 
///
///  @param accountId the unique id of the account that needs authenticating (optional for PHONE_V2) (optional)
///
///  @param deviceId the unique id of the device making the request (optional)
///
///  @param sessionId the session id for the request (optional)
///
///  @param thirdPartyName the third party user's display name (optional)
///
///  @param emailAddress optional email address associated with the third party account (optional)
///
///  @param signinOnlyMode when true will error out if can't find any accounts matching (signin only) (optional, default to @(NO))
///
///  @param responseFilters this determines how much of the profile should be returned, see ProfileFilters (optional)
///
///  @param latitude the latitude of the user (optional)
///
///  @param longitude the longitude of the user (optional)
///
///  @param metaData External custom client defined data (optional)
///
///  @param thirdPartyRefreshToken optional refresh token for the third party (optional)
///
///  @param audienceIdsToAdd audience ids to add to the account (optional)
///
///  @param audienceIdsToRemove audience ids to remove from the account (optional)
///
///  @returns OAIProfileResponse*
///
-(NSURLSessionTask*) createCredentialWithVersion: (NSNumber*) version
    thirdPartyId: (NSString*) thirdPartyId
    thirdPartyToken: (NSString*) thirdPartyToken
    networkUID: (NSString*) networkUID
    appKey: (NSString*) appKey
    accountId: (NSNumber*) accountId
    deviceId: (NSString*) deviceId
    sessionId: (NSString*) sessionId
    thirdPartyName: (NSString*) thirdPartyName
    emailAddress: (NSString*) emailAddress
    signinOnlyMode: (NSNumber*) signinOnlyMode
    responseFilters: (NSString*) responseFilters
    latitude: (NSNumber*) latitude
    longitude: (NSNumber*) longitude
    metaData: (NSString*) metaData
    thirdPartyRefreshToken: (NSString*) thirdPartyRefreshToken
    audienceIdsToAdd: (NSString*) audienceIdsToAdd
    audienceIdsToRemove: (NSString*) audienceIdsToRemove
    completionHandler: (void (^)(OAIProfileResponse* output, NSError* error)) handler {
    // verify the required parameter 'version' is set
    if (version == nil) {
        NSParameterAssert(version);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"version"] };
            NSError* error = [NSError errorWithDomain:kOAIThirdPartyCredentialsApiErrorDomain code:kOAIThirdPartyCredentialsApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'thirdPartyId' is set
    if (thirdPartyId == nil) {
        NSParameterAssert(thirdPartyId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"thirdPartyId"] };
            NSError* error = [NSError errorWithDomain:kOAIThirdPartyCredentialsApiErrorDomain code:kOAIThirdPartyCredentialsApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'thirdPartyToken' is set
    if (thirdPartyToken == nil) {
        NSParameterAssert(thirdPartyToken);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"thirdPartyToken"] };
            NSError* error = [NSError errorWithDomain:kOAIThirdPartyCredentialsApiErrorDomain code:kOAIThirdPartyCredentialsApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'networkUID' is set
    if (networkUID == nil) {
        NSParameterAssert(networkUID);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"networkUID"] };
            NSError* error = [NSError errorWithDomain:kOAIThirdPartyCredentialsApiErrorDomain code:kOAIThirdPartyCredentialsApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'appKey' is set
    if (appKey == nil) {
        NSParameterAssert(appKey);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"appKey"] };
            NSError* error = [NSError errorWithDomain:kOAIThirdPartyCredentialsApiErrorDomain code:kOAIThirdPartyCredentialsApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/{version}/thirdparty/credential/create"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (version != nil) {
        pathParams[@"version"] = version;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        queryParams[@"accountId"] = accountId;
    }
    if (deviceId != nil) {
        queryParams[@"deviceId"] = deviceId;
    }
    if (sessionId != nil) {
        queryParams[@"sessionId"] = sessionId;
    }
    if (thirdPartyId != nil) {
        queryParams[@"thirdPartyId"] = thirdPartyId;
    }
    if (thirdPartyName != nil) {
        queryParams[@"thirdPartyName"] = thirdPartyName;
    }
    if (thirdPartyToken != nil) {
        queryParams[@"thirdPartyToken"] = thirdPartyToken;
    }
    if (networkUID != nil) {
        queryParams[@"networkUID"] = networkUID;
    }
    if (appKey != nil) {
        queryParams[@"appKey"] = appKey;
    }
    if (emailAddress != nil) {
        queryParams[@"emailAddress"] = emailAddress;
    }
    if (signinOnlyMode != nil) {
        queryParams[@"signinOnlyMode"] = [signinOnlyMode isEqual:@(YES)] ? @"true" : @"false";
    }
    if (responseFilters != nil) {
        queryParams[@"responseFilters"] = responseFilters;
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
    if (thirdPartyRefreshToken != nil) {
        queryParams[@"thirdPartyRefreshToken"] = thirdPartyRefreshToken;
    }
    if (audienceIdsToAdd != nil) {
        queryParams[@"audienceIdsToAdd"] = audienceIdsToAdd;
    }
    if (audienceIdsToRemove != nil) {
        queryParams[@"audienceIdsToRemove"] = audienceIdsToRemove;
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
                              responseType: @"OAIProfileResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIProfileResponse*)data, error);
                                }
                            }];
}

///
/// Create Network
/// Creates a custom third party network.
///  @param version  
///
///  @param accountId The account id making the request 
///
///  @param name The name of the network 
///
///  @param enableIntrospection Whether the network uses introspection calls 
///
///  @param _description The description of the network (optional)
///
///  @param introspectionMethod HTTP method to use for introspection calls (e.g., GET, POST) (optional)
///
///  @param introspectionURL The HTTP URL of the introspection call (optional)
///
///  @param introspectionParams The parameters of the introspection call (optional)
///
///  @param requiredRootField Required response params (optional)
///
///  @param enableMFA Whether this network uses MFA (optional)
///
///  @param sizeMFA Size of the MFA token (optional)
///
///  @param shelfLifeMFA Shelf life (seconds) of the MFA token (optional)
///
///  @param oauthTokenURL OAuth token endpoint URL (optional)
///
///  @param oauthPrivateKey OAuth private key file (multipart) (optional)
///
///  @param oauthPublicKey OAuth public key file (multipart) (optional)
///
///  @param oauthClientId OAuth client id (optional)
///
///  @param oauthSecretKey OAuth secret key (optional)
///
///  @param body  (optional)
///
///  @returns OAIThirdPartyNetworkResponse*
///
-(NSURLSessionTask*) createNetworkWithVersion: (NSNumber*) version
    accountId: (NSNumber*) accountId
    name: (NSString*) name
    enableIntrospection: (NSNumber*) enableIntrospection
    _description: (NSString*) _description
    introspectionMethod: (NSString*) introspectionMethod
    introspectionURL: (NSString*) introspectionURL
    introspectionParams: (NSString*) introspectionParams
    requiredRootField: (NSString*) requiredRootField
    enableMFA: (NSNumber*) enableMFA
    sizeMFA: (NSNumber*) sizeMFA
    shelfLifeMFA: (NSNumber*) shelfLifeMFA
    oauthTokenURL: (NSString*) oauthTokenURL
    oauthPrivateKey: (NSURL*) oauthPrivateKey
    oauthPublicKey: (NSURL*) oauthPublicKey
    oauthClientId: (NSString*) oauthClientId
    oauthSecretKey: (NSString*) oauthSecretKey
    body: (NSString*) body
    completionHandler: (void (^)(OAIThirdPartyNetworkResponse* output, NSError* error)) handler {
    // verify the required parameter 'version' is set
    if (version == nil) {
        NSParameterAssert(version);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"version"] };
            NSError* error = [NSError errorWithDomain:kOAIThirdPartyCredentialsApiErrorDomain code:kOAIThirdPartyCredentialsApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kOAIThirdPartyCredentialsApiErrorDomain code:kOAIThirdPartyCredentialsApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'name' is set
    if (name == nil) {
        NSParameterAssert(name);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"name"] };
            NSError* error = [NSError errorWithDomain:kOAIThirdPartyCredentialsApiErrorDomain code:kOAIThirdPartyCredentialsApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'enableIntrospection' is set
    if (enableIntrospection == nil) {
        NSParameterAssert(enableIntrospection);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"enableIntrospection"] };
            NSError* error = [NSError errorWithDomain:kOAIThirdPartyCredentialsApiErrorDomain code:kOAIThirdPartyCredentialsApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/{version}/thirdparty/network/create"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (version != nil) {
        pathParams[@"version"] = version;
    }

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
    if (enableIntrospection != nil) {
        queryParams[@"enableIntrospection"] = [enableIntrospection isEqual:@(YES)] ? @"true" : @"false";
    }
    if (introspectionMethod != nil) {
        queryParams[@"introspectionMethod"] = introspectionMethod;
    }
    if (introspectionURL != nil) {
        queryParams[@"introspectionURL"] = introspectionURL;
    }
    if (introspectionParams != nil) {
        queryParams[@"introspectionParams"] = introspectionParams;
    }
    if (requiredRootField != nil) {
        queryParams[@"requiredRootField"] = requiredRootField;
    }
    if (enableMFA != nil) {
        queryParams[@"enableMFA"] = [enableMFA isEqual:@(YES)] ? @"true" : @"false";
    }
    if (sizeMFA != nil) {
        queryParams[@"sizeMFA"] = sizeMFA;
    }
    if (shelfLifeMFA != nil) {
        queryParams[@"shelfLifeMFA"] = shelfLifeMFA;
    }
    if (oauthTokenURL != nil) {
        queryParams[@"oauthTokenURL"] = oauthTokenURL;
    }
    if (oauthPrivateKey != nil) {
        queryParams[@"oauthPrivateKey"] = oauthPrivateKey;
    }
    if (oauthPublicKey != nil) {
        queryParams[@"oauthPublicKey"] = oauthPublicKey;
    }
    if (oauthClientId != nil) {
        queryParams[@"oauthClientId"] = oauthClientId;
    }
    if (oauthSecretKey != nil) {
        queryParams[@"oauthSecretKey"] = oauthSecretKey;
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
    bodyParam = body;

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
                              responseType: @"OAIThirdPartyNetworkResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIThirdPartyNetworkResponse*)data, error);
                                }
                            }];
}

///
/// Delete Credential
/// Delete a third party network on a Sirqul account.
///  @param version  
///
///  @param accountId The account id of the user 
///
///  @param networkUID The third party network identifier 
///
///  @param thirdPartyId The third party user id 
///
///  @param appKey the application key 
///
///  @returns OAISirqulResponse*
///
-(NSURLSessionTask*) deleteCredentialWithVersion: (NSNumber*) version
    accountId: (NSNumber*) accountId
    networkUID: (NSString*) networkUID
    thirdPartyId: (NSString*) thirdPartyId
    appKey: (NSString*) appKey
    completionHandler: (void (^)(OAISirqulResponse* output, NSError* error)) handler {
    // verify the required parameter 'version' is set
    if (version == nil) {
        NSParameterAssert(version);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"version"] };
            NSError* error = [NSError errorWithDomain:kOAIThirdPartyCredentialsApiErrorDomain code:kOAIThirdPartyCredentialsApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kOAIThirdPartyCredentialsApiErrorDomain code:kOAIThirdPartyCredentialsApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'networkUID' is set
    if (networkUID == nil) {
        NSParameterAssert(networkUID);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"networkUID"] };
            NSError* error = [NSError errorWithDomain:kOAIThirdPartyCredentialsApiErrorDomain code:kOAIThirdPartyCredentialsApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'thirdPartyId' is set
    if (thirdPartyId == nil) {
        NSParameterAssert(thirdPartyId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"thirdPartyId"] };
            NSError* error = [NSError errorWithDomain:kOAIThirdPartyCredentialsApiErrorDomain code:kOAIThirdPartyCredentialsApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'appKey' is set
    if (appKey == nil) {
        NSParameterAssert(appKey);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"appKey"] };
            NSError* error = [NSError errorWithDomain:kOAIThirdPartyCredentialsApiErrorDomain code:kOAIThirdPartyCredentialsApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/{version}/thirdparty/credential/delete"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (version != nil) {
        pathParams[@"version"] = version;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        queryParams[@"accountId"] = accountId;
    }
    if (networkUID != nil) {
        queryParams[@"networkUID"] = networkUID;
    }
    if (thirdPartyId != nil) {
        queryParams[@"thirdPartyId"] = thirdPartyId;
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
                              responseType: @"OAISirqulResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAISirqulResponse*)data, error);
                                }
                            }];
}

///
/// Delete Network
/// Marks a custom third party network as deleted. Only the network owners and managers have access to this.
///  @param version  
///
///  @param accountId the id of the logged in user 
///
///  @param networkUID The unique identifier for the third party network defined by Sirqul 
///
///  @returns OAISirqulResponse*
///
-(NSURLSessionTask*) deleteNetworkWithVersion: (NSNumber*) version
    accountId: (NSNumber*) accountId
    networkUID: (NSString*) networkUID
    completionHandler: (void (^)(OAISirqulResponse* output, NSError* error)) handler {
    // verify the required parameter 'version' is set
    if (version == nil) {
        NSParameterAssert(version);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"version"] };
            NSError* error = [NSError errorWithDomain:kOAIThirdPartyCredentialsApiErrorDomain code:kOAIThirdPartyCredentialsApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kOAIThirdPartyCredentialsApiErrorDomain code:kOAIThirdPartyCredentialsApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'networkUID' is set
    if (networkUID == nil) {
        NSParameterAssert(networkUID);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"networkUID"] };
            NSError* error = [NSError errorWithDomain:kOAIThirdPartyCredentialsApiErrorDomain code:kOAIThirdPartyCredentialsApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/{version}/thirdparty/network/delete"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (version != nil) {
        pathParams[@"version"] = version;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        queryParams[@"accountId"] = accountId;
    }
    if (networkUID != nil) {
        queryParams[@"networkUID"] = networkUID;
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
/// Get Credential
/// Gets the account information given a third party token.
///  @param version  
///
///  @param networkUID the access provider to authenticate against 
///
///  @param appKey the application key 
///
///  @param accountId the unique account id of a specific account that will be bound to the third-party credentials (optional)
///
///  @param deviceId the unique id of the device making the request (optional)
///
///  @param sessionId the session id for the request (optional)
///
///  @param thirdPartyCredentialId the third-party credentials id from the response of the credential/create step (optional)
///
///  @param thirdPartyToken the access token to authenticate with (optional)
///
///  @param thirdPartySecret the secret code to authenticate with (used for MFA) (optional)
///
///  @param createNewAccount flag to force creation of a new account when no accountId is passed and user chooses not to use listed accounts (optional, default to @(NO))
///
///  @param responseFilters this determines how much of the profile should be returned, see ProfileFilters (optional)
///
///  @param latitude the latitude of the user (optional)
///
///  @param longitude the longitude of the user (optional)
///
///  @param audienceIdsToAdd audience ids to add to the account (optional)
///
///  @param audienceIdsToRemove audience ids to remove from the account (optional)
///
///  @param referralAccountId account id of the referrer (inviter-invitee relationship) (optional)
///
///  @returns OAIProfileResponse*
///
-(NSURLSessionTask*) getCredentialWithVersion: (NSNumber*) version
    networkUID: (NSString*) networkUID
    appKey: (NSString*) appKey
    accountId: (NSNumber*) accountId
    deviceId: (NSString*) deviceId
    sessionId: (NSString*) sessionId
    thirdPartyCredentialId: (NSNumber*) thirdPartyCredentialId
    thirdPartyToken: (NSString*) thirdPartyToken
    thirdPartySecret: (NSString*) thirdPartySecret
    createNewAccount: (NSNumber*) createNewAccount
    responseFilters: (NSString*) responseFilters
    latitude: (NSNumber*) latitude
    longitude: (NSNumber*) longitude
    audienceIdsToAdd: (NSString*) audienceIdsToAdd
    audienceIdsToRemove: (NSString*) audienceIdsToRemove
    referralAccountId: (NSNumber*) referralAccountId
    completionHandler: (void (^)(OAIProfileResponse* output, NSError* error)) handler {
    // verify the required parameter 'version' is set
    if (version == nil) {
        NSParameterAssert(version);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"version"] };
            NSError* error = [NSError errorWithDomain:kOAIThirdPartyCredentialsApiErrorDomain code:kOAIThirdPartyCredentialsApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'networkUID' is set
    if (networkUID == nil) {
        NSParameterAssert(networkUID);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"networkUID"] };
            NSError* error = [NSError errorWithDomain:kOAIThirdPartyCredentialsApiErrorDomain code:kOAIThirdPartyCredentialsApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'appKey' is set
    if (appKey == nil) {
        NSParameterAssert(appKey);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"appKey"] };
            NSError* error = [NSError errorWithDomain:kOAIThirdPartyCredentialsApiErrorDomain code:kOAIThirdPartyCredentialsApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/{version}/thirdparty/credential/get"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (version != nil) {
        pathParams[@"version"] = version;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        queryParams[@"accountId"] = accountId;
    }
    if (deviceId != nil) {
        queryParams[@"deviceId"] = deviceId;
    }
    if (sessionId != nil) {
        queryParams[@"sessionId"] = sessionId;
    }
    if (thirdPartyCredentialId != nil) {
        queryParams[@"thirdPartyCredentialId"] = thirdPartyCredentialId;
    }
    if (thirdPartyToken != nil) {
        queryParams[@"thirdPartyToken"] = thirdPartyToken;
    }
    if (thirdPartySecret != nil) {
        queryParams[@"thirdPartySecret"] = thirdPartySecret;
    }
    if (createNewAccount != nil) {
        queryParams[@"createNewAccount"] = [createNewAccount isEqual:@(YES)] ? @"true" : @"false";
    }
    if (networkUID != nil) {
        queryParams[@"networkUID"] = networkUID;
    }
    if (appKey != nil) {
        queryParams[@"appKey"] = appKey;
    }
    if (responseFilters != nil) {
        queryParams[@"responseFilters"] = responseFilters;
    }
    if (latitude != nil) {
        queryParams[@"latitude"] = latitude;
    }
    if (longitude != nil) {
        queryParams[@"longitude"] = longitude;
    }
    if (audienceIdsToAdd != nil) {
        queryParams[@"audienceIdsToAdd"] = audienceIdsToAdd;
    }
    if (audienceIdsToRemove != nil) {
        queryParams[@"audienceIdsToRemove"] = audienceIdsToRemove;
    }
    if (referralAccountId != nil) {
        queryParams[@"referralAccountId"] = referralAccountId;
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
                              responseType: @"OAIProfileResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIProfileResponse*)data, error);
                                }
                            }];
}

///
/// Get Network
/// Get the details of a third party network. Only the network owners and managers have access to this.
///  @param version  
///
///  @param accountId The account id making the request 
///
///  @param networkUID The unique identifier for the third party network defined by Sirqul 
///
///  @returns OAIThirdPartyNetworkResponse*
///
-(NSURLSessionTask*) getNetworkWithVersion: (NSNumber*) version
    accountId: (NSNumber*) accountId
    networkUID: (NSString*) networkUID
    completionHandler: (void (^)(OAIThirdPartyNetworkResponse* output, NSError* error)) handler {
    // verify the required parameter 'version' is set
    if (version == nil) {
        NSParameterAssert(version);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"version"] };
            NSError* error = [NSError errorWithDomain:kOAIThirdPartyCredentialsApiErrorDomain code:kOAIThirdPartyCredentialsApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kOAIThirdPartyCredentialsApiErrorDomain code:kOAIThirdPartyCredentialsApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'networkUID' is set
    if (networkUID == nil) {
        NSParameterAssert(networkUID);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"networkUID"] };
            NSError* error = [NSError errorWithDomain:kOAIThirdPartyCredentialsApiErrorDomain code:kOAIThirdPartyCredentialsApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/{version}/thirdparty/network/get"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (version != nil) {
        pathParams[@"version"] = version;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        queryParams[@"accountId"] = accountId;
    }
    if (networkUID != nil) {
        queryParams[@"networkUID"] = networkUID;
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
                              responseType: @"OAIThirdPartyNetworkResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIThirdPartyNetworkResponse*)data, error);
                                }
                            }];
}

///
/// Search Credentials
/// Search on a user's linked third party networks.
///  @param version  
///
///  @param accountId The account id of the user 
///
///  @param keyword The keyword used to search on the third party name and network string (optional)
///
///  @param networkUID The network UID to filter results with (optional)
///
///  @param descending The order to return the search results (optional)
///
///  @param start The start of the pagination (optional, default to @0)
///
///  @param limit The limit of the pagination (optional, default to @20)
///
///  @returns NSArray<OAIThirdPartyCredentialResponse>*
///
-(NSURLSessionTask*) searchCredentialsWithVersion: (NSNumber*) version
    accountId: (NSNumber*) accountId
    keyword: (NSString*) keyword
    networkUID: (NSString*) networkUID
    descending: (NSNumber*) descending
    start: (NSNumber*) start
    limit: (NSNumber*) limit
    completionHandler: (void (^)(NSArray<OAIThirdPartyCredentialResponse>* output, NSError* error)) handler {
    // verify the required parameter 'version' is set
    if (version == nil) {
        NSParameterAssert(version);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"version"] };
            NSError* error = [NSError errorWithDomain:kOAIThirdPartyCredentialsApiErrorDomain code:kOAIThirdPartyCredentialsApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kOAIThirdPartyCredentialsApiErrorDomain code:kOAIThirdPartyCredentialsApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/{version}/thirdparty/credential/search"];

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
    if (networkUID != nil) {
        queryParams[@"networkUID"] = networkUID;
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
                              responseType: @"NSArray<OAIThirdPartyCredentialResponse>*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSArray<OAIThirdPartyCredentialResponse>*)data, error);
                                }
                            }];
}

///
/// Search Networks
/// Search on supported third party networks and custom networks from external users.
///  @param version  
///
///  @param accountId The account id making the request 
///
///  @param sortField The column to sort the search on, possible values include: UPDATED (default), CREATED, NAME 
///
///  @param descending The order to return the search results 
///
///  @param start The start of the pagination 
///
///  @param limit The limit of the pagination 
///
///  @param activeOnly Return only active results 
///
///  @param keyword The keyword used to search on the network name and description fields (optional)
///
///  @param filterBillable Determines whether to only return applications that the user has access to (optional)
///
///  @returns NSArray<OAIThirdPartyNetworkShortResponse>*
///
-(NSURLSessionTask*) searchNetworksWithVersion: (NSNumber*) version
    accountId: (NSNumber*) accountId
    sortField: (NSString*) sortField
    descending: (NSNumber*) descending
    start: (NSNumber*) start
    limit: (NSNumber*) limit
    activeOnly: (NSNumber*) activeOnly
    keyword: (NSString*) keyword
    filterBillable: (NSNumber*) filterBillable
    completionHandler: (void (^)(NSArray<OAIThirdPartyNetworkShortResponse>* output, NSError* error)) handler {
    // verify the required parameter 'version' is set
    if (version == nil) {
        NSParameterAssert(version);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"version"] };
            NSError* error = [NSError errorWithDomain:kOAIThirdPartyCredentialsApiErrorDomain code:kOAIThirdPartyCredentialsApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kOAIThirdPartyCredentialsApiErrorDomain code:kOAIThirdPartyCredentialsApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'sortField' is set
    if (sortField == nil) {
        NSParameterAssert(sortField);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"sortField"] };
            NSError* error = [NSError errorWithDomain:kOAIThirdPartyCredentialsApiErrorDomain code:kOAIThirdPartyCredentialsApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'descending' is set
    if (descending == nil) {
        NSParameterAssert(descending);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"descending"] };
            NSError* error = [NSError errorWithDomain:kOAIThirdPartyCredentialsApiErrorDomain code:kOAIThirdPartyCredentialsApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'start' is set
    if (start == nil) {
        NSParameterAssert(start);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"start"] };
            NSError* error = [NSError errorWithDomain:kOAIThirdPartyCredentialsApiErrorDomain code:kOAIThirdPartyCredentialsApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'limit' is set
    if (limit == nil) {
        NSParameterAssert(limit);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"limit"] };
            NSError* error = [NSError errorWithDomain:kOAIThirdPartyCredentialsApiErrorDomain code:kOAIThirdPartyCredentialsApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'activeOnly' is set
    if (activeOnly == nil) {
        NSParameterAssert(activeOnly);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"activeOnly"] };
            NSError* error = [NSError errorWithDomain:kOAIThirdPartyCredentialsApiErrorDomain code:kOAIThirdPartyCredentialsApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/{version}/thirdparty/network/search"];

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
    if (activeOnly != nil) {
        queryParams[@"activeOnly"] = [activeOnly isEqual:@(YES)] ? @"true" : @"false";
    }
    if (filterBillable != nil) {
        queryParams[@"filterBillable"] = [filterBillable isEqual:@(YES)] ? @"true" : @"false";
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
                              responseType: @"NSArray<OAIThirdPartyNetworkShortResponse>*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSArray<OAIThirdPartyNetworkShortResponse>*)data, error);
                                }
                            }];
}

///
/// Send MFA Challenge
/// Sends an MFA challenge (SMS or Email) for networks with MFA enabled.
///  @param version  
///
///  @param networkUID the third party network provider that has MFA enabled 
///
///  @param appKey the application key 
///
///  @param thirdPartyToken the access token to authenticate with (optional)
///
///  @param thirdPartyCredentialId optional id of the existing third party credential (optional)
///
///  @param deviceId the unique id of the device making the request (optional)
///
///  @returns OAISirqulResponse*
///
-(NSURLSessionTask*) sendMFAChallengeWithVersion: (NSNumber*) version
    networkUID: (NSString*) networkUID
    appKey: (NSString*) appKey
    thirdPartyToken: (NSString*) thirdPartyToken
    thirdPartyCredentialId: (NSNumber*) thirdPartyCredentialId
    deviceId: (NSString*) deviceId
    completionHandler: (void (^)(OAISirqulResponse* output, NSError* error)) handler {
    // verify the required parameter 'version' is set
    if (version == nil) {
        NSParameterAssert(version);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"version"] };
            NSError* error = [NSError errorWithDomain:kOAIThirdPartyCredentialsApiErrorDomain code:kOAIThirdPartyCredentialsApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'networkUID' is set
    if (networkUID == nil) {
        NSParameterAssert(networkUID);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"networkUID"] };
            NSError* error = [NSError errorWithDomain:kOAIThirdPartyCredentialsApiErrorDomain code:kOAIThirdPartyCredentialsApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'appKey' is set
    if (appKey == nil) {
        NSParameterAssert(appKey);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"appKey"] };
            NSError* error = [NSError errorWithDomain:kOAIThirdPartyCredentialsApiErrorDomain code:kOAIThirdPartyCredentialsApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/{version}/thirdparty/credential/mfa/send"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (version != nil) {
        pathParams[@"version"] = version;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (thirdPartyToken != nil) {
        queryParams[@"thirdPartyToken"] = thirdPartyToken;
    }
    if (thirdPartyCredentialId != nil) {
        queryParams[@"thirdPartyCredentialId"] = thirdPartyCredentialId;
    }
    if (networkUID != nil) {
        queryParams[@"networkUID"] = networkUID;
    }
    if (appKey != nil) {
        queryParams[@"appKey"] = appKey;
    }
    if (deviceId != nil) {
        queryParams[@"deviceId"] = deviceId;
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
/// Update Credential
/// Updates a third-party login for an account.
///  @param version  
///
///  @param networkUID the access provider to authenticate against 
///
///  @param thirdPartyId the third party user account id 
///
///  @param appKey the application key 
///
///  @param deviceId the unique id of the device making the request (optional)
///
///  @param thirdPartyName the third party user name (optional)
///
///  @param thirdPartyToken the access token to authenticate with (ex: username or fb token) (optional)
///
///  @param responseFilters this determines how much of the profile should be returned, see ProfileFilters (optional)
///
///  @param metaData External custom client defined data (optional)
///
///  @param thirdPartyRefreshToken optional refresh token for the third party (optional)
///
///  @returns OAIProfileResponse*
///
-(NSURLSessionTask*) updateCredentialWithVersion: (NSNumber*) version
    networkUID: (NSString*) networkUID
    thirdPartyId: (NSString*) thirdPartyId
    appKey: (NSString*) appKey
    deviceId: (NSString*) deviceId
    thirdPartyName: (NSString*) thirdPartyName
    thirdPartyToken: (NSString*) thirdPartyToken
    responseFilters: (NSString*) responseFilters
    metaData: (NSString*) metaData
    thirdPartyRefreshToken: (NSString*) thirdPartyRefreshToken
    completionHandler: (void (^)(OAIProfileResponse* output, NSError* error)) handler {
    // verify the required parameter 'version' is set
    if (version == nil) {
        NSParameterAssert(version);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"version"] };
            NSError* error = [NSError errorWithDomain:kOAIThirdPartyCredentialsApiErrorDomain code:kOAIThirdPartyCredentialsApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'networkUID' is set
    if (networkUID == nil) {
        NSParameterAssert(networkUID);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"networkUID"] };
            NSError* error = [NSError errorWithDomain:kOAIThirdPartyCredentialsApiErrorDomain code:kOAIThirdPartyCredentialsApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'thirdPartyId' is set
    if (thirdPartyId == nil) {
        NSParameterAssert(thirdPartyId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"thirdPartyId"] };
            NSError* error = [NSError errorWithDomain:kOAIThirdPartyCredentialsApiErrorDomain code:kOAIThirdPartyCredentialsApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'appKey' is set
    if (appKey == nil) {
        NSParameterAssert(appKey);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"appKey"] };
            NSError* error = [NSError errorWithDomain:kOAIThirdPartyCredentialsApiErrorDomain code:kOAIThirdPartyCredentialsApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/{version}/thirdparty/credential/update"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (version != nil) {
        pathParams[@"version"] = version;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (deviceId != nil) {
        queryParams[@"deviceId"] = deviceId;
    }
    if (networkUID != nil) {
        queryParams[@"networkUID"] = networkUID;
    }
    if (thirdPartyId != nil) {
        queryParams[@"thirdPartyId"] = thirdPartyId;
    }
    if (thirdPartyName != nil) {
        queryParams[@"thirdPartyName"] = thirdPartyName;
    }
    if (thirdPartyToken != nil) {
        queryParams[@"thirdPartyToken"] = thirdPartyToken;
    }
    if (appKey != nil) {
        queryParams[@"appKey"] = appKey;
    }
    if (responseFilters != nil) {
        queryParams[@"responseFilters"] = responseFilters;
    }
    if (metaData != nil) {
        queryParams[@"metaData"] = metaData;
    }
    if (thirdPartyRefreshToken != nil) {
        queryParams[@"thirdPartyRefreshToken"] = thirdPartyRefreshToken;
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
                              responseType: @"OAIProfileResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIProfileResponse*)data, error);
                                }
                            }];
}

///
/// Update Network
/// Updates a custom third party network. Only the network owners and managers have access to this.
///  @param version  
///
///  @param accountId The account id making the request 
///
///  @param networkUID The unique identifier for the third party network defined by Sirqul 
///
///  @param name The name of the network (optional)
///
///  @param _description The description of the network (optional)
///
///  @param enableIntrospection Whether the network uses introspection calls (optional)
///
///  @param introspectionMethod HTTP method to use for introspection calls (e.g., GET, POST) (optional)
///
///  @param introspectionURL The HTTP URL of the introspection call (optional)
///
///  @param introspectionParams The parameters of the introspection call (optional)
///
///  @param requiredRootField Required response params (optional)
///
///  @param enableMFA Whether this network uses MFA (optional)
///
///  @param sizeMFA Size of the MFA token (optional)
///
///  @param shelfLifeMFA Shelf life (seconds) of the MFA token (optional)
///
///  @param oauthTokenURL OAuth token endpoint URL (optional)
///
///  @param oauthPrivateKey OAuth private key file (multipart) (optional)
///
///  @param oauthPublicKey OAuth public key file (multipart) (optional)
///
///  @param oauthClientId OAuth client id (optional)
///
///  @param oauthSecretKey OAuth secret key (optional)
///
///  @param body  (optional)
///
///  @returns OAIThirdPartyNetworkResponse*
///
-(NSURLSessionTask*) updateNetworkWithVersion: (NSNumber*) version
    accountId: (NSNumber*) accountId
    networkUID: (NSString*) networkUID
    name: (NSString*) name
    _description: (NSString*) _description
    enableIntrospection: (NSNumber*) enableIntrospection
    introspectionMethod: (NSString*) introspectionMethod
    introspectionURL: (NSString*) introspectionURL
    introspectionParams: (NSString*) introspectionParams
    requiredRootField: (NSString*) requiredRootField
    enableMFA: (NSNumber*) enableMFA
    sizeMFA: (NSNumber*) sizeMFA
    shelfLifeMFA: (NSNumber*) shelfLifeMFA
    oauthTokenURL: (NSString*) oauthTokenURL
    oauthPrivateKey: (NSURL*) oauthPrivateKey
    oauthPublicKey: (NSURL*) oauthPublicKey
    oauthClientId: (NSString*) oauthClientId
    oauthSecretKey: (NSString*) oauthSecretKey
    body: (NSString*) body
    completionHandler: (void (^)(OAIThirdPartyNetworkResponse* output, NSError* error)) handler {
    // verify the required parameter 'version' is set
    if (version == nil) {
        NSParameterAssert(version);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"version"] };
            NSError* error = [NSError errorWithDomain:kOAIThirdPartyCredentialsApiErrorDomain code:kOAIThirdPartyCredentialsApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kOAIThirdPartyCredentialsApiErrorDomain code:kOAIThirdPartyCredentialsApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'networkUID' is set
    if (networkUID == nil) {
        NSParameterAssert(networkUID);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"networkUID"] };
            NSError* error = [NSError errorWithDomain:kOAIThirdPartyCredentialsApiErrorDomain code:kOAIThirdPartyCredentialsApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/{version}/thirdparty/network/update"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (version != nil) {
        pathParams[@"version"] = version;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        queryParams[@"accountId"] = accountId;
    }
    if (networkUID != nil) {
        queryParams[@"networkUID"] = networkUID;
    }
    if (name != nil) {
        queryParams[@"name"] = name;
    }
    if (_description != nil) {
        queryParams[@"description"] = _description;
    }
    if (enableIntrospection != nil) {
        queryParams[@"enableIntrospection"] = [enableIntrospection isEqual:@(YES)] ? @"true" : @"false";
    }
    if (introspectionMethod != nil) {
        queryParams[@"introspectionMethod"] = introspectionMethod;
    }
    if (introspectionURL != nil) {
        queryParams[@"introspectionURL"] = introspectionURL;
    }
    if (introspectionParams != nil) {
        queryParams[@"introspectionParams"] = introspectionParams;
    }
    if (requiredRootField != nil) {
        queryParams[@"requiredRootField"] = requiredRootField;
    }
    if (enableMFA != nil) {
        queryParams[@"enableMFA"] = [enableMFA isEqual:@(YES)] ? @"true" : @"false";
    }
    if (sizeMFA != nil) {
        queryParams[@"sizeMFA"] = sizeMFA;
    }
    if (shelfLifeMFA != nil) {
        queryParams[@"shelfLifeMFA"] = shelfLifeMFA;
    }
    if (oauthTokenURL != nil) {
        queryParams[@"oauthTokenURL"] = oauthTokenURL;
    }
    if (oauthPrivateKey != nil) {
        queryParams[@"oauthPrivateKey"] = oauthPrivateKey;
    }
    if (oauthPublicKey != nil) {
        queryParams[@"oauthPublicKey"] = oauthPublicKey;
    }
    if (oauthClientId != nil) {
        queryParams[@"oauthClientId"] = oauthClientId;
    }
    if (oauthSecretKey != nil) {
        queryParams[@"oauthSecretKey"] = oauthSecretKey;
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
    bodyParam = body;

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
                              responseType: @"OAIThirdPartyNetworkResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIThirdPartyNetworkResponse*)data, error);
                                }
                            }];
}



@end
