#import "OAIAMQPApi.h"
#import "OAIQueryParamCollection.h"
#import "OAIApiClient.h"
#import "OAIQueueResponse.h"
#import "OAISirqulResponse.h"


@interface OAIAMQPApi ()

@property (nonatomic, strong, readwrite) NSMutableDictionary *mutableDefaultHeaders;

@end

@implementation OAIAMQPApi

NSString* kOAIAMQPApiErrorDomain = @"OAIAMQPApiErrorDomain";
NSInteger kOAIAMQPApiMissingParamErrorCode = 234513;

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
/// Create Consumer
/// Create a connection to an existing amqp queue and register as a consumer.
///  @param version  
///
///  @param appKey The application key to use when creating an analytic or service request. The account needs to have permissions to the applicaton or it will be denied. 
///
///  @param name The name of the queue to connect to 
///
///  @param hostname The hostname of the server the queue is hosted on 
///
///  @param username The username to access the server the queue is hosted on 
///
///  @param password The password to access the queue to connect to 
///
///  @param dataMapping The data mapping information in the format of AMQPRequest 
///
///  @param deviceId The client deviceID (optional)
///
///  @param accountId The logged in user ID (optional)
///
///  @param port The port of the server the queue is hosted on (optional, default to @5672)
///
///  @param virtualHost The virtual host defined on the server the queue is associated on (optional)
///
///  @param exchanger The exchanger of the queue to connect to (optional)
///
///  @param exchangerType The exchanger type of the queue to connect to (optional)
///
///  @param workers The number of workers to generate  (optional, default to @1)
///
///  @param useSSL Use SSL (optional)
///
///  @returns OAIQueueResponse*
///
-(NSURLSessionTask*) consumerCreateWithVersion: (NSNumber*) version
    appKey: (NSString*) appKey
    name: (NSString*) name
    hostname: (NSString*) hostname
    username: (NSString*) username
    password: (NSString*) password
    dataMapping: (NSString*) dataMapping
    deviceId: (NSString*) deviceId
    accountId: (NSNumber*) accountId
    port: (NSNumber*) port
    virtualHost: (NSString*) virtualHost
    exchanger: (NSString*) exchanger
    exchangerType: (NSString*) exchangerType
    workers: (NSNumber*) workers
    useSSL: (NSNumber*) useSSL
    completionHandler: (void (^)(OAIQueueResponse* output, NSError* error)) handler {
    // verify the required parameter 'version' is set
    if (version == nil) {
        NSParameterAssert(version);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"version"] };
            NSError* error = [NSError errorWithDomain:kOAIAMQPApiErrorDomain code:kOAIAMQPApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'appKey' is set
    if (appKey == nil) {
        NSParameterAssert(appKey);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"appKey"] };
            NSError* error = [NSError errorWithDomain:kOAIAMQPApiErrorDomain code:kOAIAMQPApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'name' is set
    if (name == nil) {
        NSParameterAssert(name);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"name"] };
            NSError* error = [NSError errorWithDomain:kOAIAMQPApiErrorDomain code:kOAIAMQPApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'hostname' is set
    if (hostname == nil) {
        NSParameterAssert(hostname);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"hostname"] };
            NSError* error = [NSError errorWithDomain:kOAIAMQPApiErrorDomain code:kOAIAMQPApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'username' is set
    if (username == nil) {
        NSParameterAssert(username);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"username"] };
            NSError* error = [NSError errorWithDomain:kOAIAMQPApiErrorDomain code:kOAIAMQPApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'password' is set
    if (password == nil) {
        NSParameterAssert(password);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"password"] };
            NSError* error = [NSError errorWithDomain:kOAIAMQPApiErrorDomain code:kOAIAMQPApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'dataMapping' is set
    if (dataMapping == nil) {
        NSParameterAssert(dataMapping);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"dataMapping"] };
            NSError* error = [NSError errorWithDomain:kOAIAMQPApiErrorDomain code:kOAIAMQPApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/{version}/queue/consumer/create"];

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
    if (appKey != nil) {
        queryParams[@"appKey"] = appKey;
    }
    if (name != nil) {
        queryParams[@"name"] = name;
    }
    if (hostname != nil) {
        queryParams[@"hostname"] = hostname;
    }
    if (port != nil) {
        queryParams[@"port"] = port;
    }
    if (username != nil) {
        queryParams[@"username"] = username;
    }
    if (password != nil) {
        queryParams[@"password"] = password;
    }
    if (virtualHost != nil) {
        queryParams[@"virtualHost"] = virtualHost;
    }
    if (exchanger != nil) {
        queryParams[@"exchanger"] = exchanger;
    }
    if (exchangerType != nil) {
        queryParams[@"exchangerType"] = exchangerType;
    }
    if (workers != nil) {
        queryParams[@"workers"] = workers;
    }
    if (dataMapping != nil) {
        queryParams[@"dataMapping"] = dataMapping;
    }
    if (useSSL != nil) {
        queryParams[@"useSSL"] = [useSSL isEqual:@(YES)] ? @"true" : @"false";
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
                              responseType: @"OAIQueueResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIQueueResponse*)data, error);
                                }
                            }];
}

///
/// Update Consumer
/// Update an existing amqp queue's data mapping.
///  @param version  
///
///  @param appKey The application key to use when creating an analytic or service request. The account needs to have permissions to the applicaton or it will be denied. 
///
///  @param queueId The queue to update 
///
///  @param dataMapping The data mapping information in the format of AMQPRequest 
///
///  @param deviceId The client deviceID (optional)
///
///  @param accountId The logged in user ID (optional)
///
///  @param useSSL Use SSL (optional)
///
///  @returns OAIQueueResponse*
///
-(NSURLSessionTask*) consumerUpdateWithVersion: (NSNumber*) version
    appKey: (NSString*) appKey
    queueId: (NSNumber*) queueId
    dataMapping: (NSString*) dataMapping
    deviceId: (NSString*) deviceId
    accountId: (NSNumber*) accountId
    useSSL: (NSNumber*) useSSL
    completionHandler: (void (^)(OAIQueueResponse* output, NSError* error)) handler {
    // verify the required parameter 'version' is set
    if (version == nil) {
        NSParameterAssert(version);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"version"] };
            NSError* error = [NSError errorWithDomain:kOAIAMQPApiErrorDomain code:kOAIAMQPApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'appKey' is set
    if (appKey == nil) {
        NSParameterAssert(appKey);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"appKey"] };
            NSError* error = [NSError errorWithDomain:kOAIAMQPApiErrorDomain code:kOAIAMQPApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'queueId' is set
    if (queueId == nil) {
        NSParameterAssert(queueId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"queueId"] };
            NSError* error = [NSError errorWithDomain:kOAIAMQPApiErrorDomain code:kOAIAMQPApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'dataMapping' is set
    if (dataMapping == nil) {
        NSParameterAssert(dataMapping);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"dataMapping"] };
            NSError* error = [NSError errorWithDomain:kOAIAMQPApiErrorDomain code:kOAIAMQPApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/{version}/queue/consumer/update"];

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
    if (appKey != nil) {
        queryParams[@"appKey"] = appKey;
    }
    if (queueId != nil) {
        queryParams[@"queueId"] = queueId;
    }
    if (dataMapping != nil) {
        queryParams[@"dataMapping"] = dataMapping;
    }
    if (useSSL != nil) {
        queryParams[@"useSSL"] = [useSSL isEqual:@(YES)] ? @"true" : @"false";
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
                              responseType: @"OAIQueueResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIQueueResponse*)data, error);
                                }
                            }];
}

///
/// Create Queue
/// Create a basic AMQP queue. If the username and password and virtual host is not sepcified, the queue will be created on the virtual host assigned to the application.
///  @param version  
///
///  @param appKey The application key unique to each application. 
///
///  @param name The name of the queue to create 
///
///  @param deviceId The client deviceID (optional)
///
///  @param accountId The logged in user ID (optional)
///
///  @param workers The number of workers to generate  (optional, default to @1)
///
///  @param analyticTags If provided the analytic processing will publsih to this queue instead of the default one for the provided list of tags (optional)
///
///  @param hostname The hostname of the server the queue is hosted on (optional)
///
///  @param port The port of the server the queue is hosted on (optional)
///
///  @param username The username to access the server that the queue is on (optional)
///
///  @param password The password to access the queue to connect to (optional)
///
///  @param virtualHost The virtual host defined on the server to queue (optional)
///
///  @param useSSL Use SSL (optional)
///
///  @returns OAIQueueResponse*
///
-(NSURLSessionTask*) queueCreateWithVersion: (NSNumber*) version
    appKey: (NSString*) appKey
    name: (NSString*) name
    deviceId: (NSString*) deviceId
    accountId: (NSNumber*) accountId
    workers: (NSNumber*) workers
    analyticTags: (NSString*) analyticTags
    hostname: (NSString*) hostname
    port: (NSNumber*) port
    username: (NSString*) username
    password: (NSString*) password
    virtualHost: (NSString*) virtualHost
    useSSL: (NSNumber*) useSSL
    completionHandler: (void (^)(OAIQueueResponse* output, NSError* error)) handler {
    // verify the required parameter 'version' is set
    if (version == nil) {
        NSParameterAssert(version);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"version"] };
            NSError* error = [NSError errorWithDomain:kOAIAMQPApiErrorDomain code:kOAIAMQPApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'appKey' is set
    if (appKey == nil) {
        NSParameterAssert(appKey);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"appKey"] };
            NSError* error = [NSError errorWithDomain:kOAIAMQPApiErrorDomain code:kOAIAMQPApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'name' is set
    if (name == nil) {
        NSParameterAssert(name);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"name"] };
            NSError* error = [NSError errorWithDomain:kOAIAMQPApiErrorDomain code:kOAIAMQPApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/{version}/queue/create"];

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
    if (appKey != nil) {
        queryParams[@"appKey"] = appKey;
    }
    if (name != nil) {
        queryParams[@"name"] = name;
    }
    if (workers != nil) {
        queryParams[@"workers"] = workers;
    }
    if (analyticTags != nil) {
        queryParams[@"analyticTags"] = analyticTags;
    }
    if (hostname != nil) {
        queryParams[@"hostname"] = hostname;
    }
    if (port != nil) {
        queryParams[@"port"] = port;
    }
    if (username != nil) {
        queryParams[@"username"] = username;
    }
    if (password != nil) {
        queryParams[@"password"] = password;
    }
    if (virtualHost != nil) {
        queryParams[@"virtualHost"] = virtualHost;
    }
    if (useSSL != nil) {
        queryParams[@"useSSL"] = [useSSL isEqual:@(YES)] ? @"true" : @"false";
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
                              responseType: @"OAIQueueResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIQueueResponse*)data, error);
                                }
                            }];
}

///
/// Delete Queue
/// Delete the stored queue record and close any active connections to the AMQP servers.
///  @param version  
///
///  @param queueId The id of the queue to find 
///
///  @param deviceId The client device ID (optional)
///
///  @param accountId The logged in user ID (optional)
///
///  @returns OAISirqulResponse*
///
-(NSURLSessionTask*) queueDeleteWithVersion: (NSNumber*) version
    queueId: (NSNumber*) queueId
    deviceId: (NSString*) deviceId
    accountId: (NSNumber*) accountId
    completionHandler: (void (^)(OAISirqulResponse* output, NSError* error)) handler {
    // verify the required parameter 'version' is set
    if (version == nil) {
        NSParameterAssert(version);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"version"] };
            NSError* error = [NSError errorWithDomain:kOAIAMQPApiErrorDomain code:kOAIAMQPApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'queueId' is set
    if (queueId == nil) {
        NSParameterAssert(queueId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"queueId"] };
            NSError* error = [NSError errorWithDomain:kOAIAMQPApiErrorDomain code:kOAIAMQPApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/{version}/queue/delete"];

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
    if (queueId != nil) {
        queryParams[@"queueId"] = queueId;
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
/// Get Queue
/// Get the stored queue record. Must supply the queueId, or the name and hostname and virtualHost, or the name and appKey to find the record.
///  @param version  
///
///  @param deviceId The client device ID (optional)
///
///  @param accountId The logged in user ID (optional)
///
///  @param queueId The id of the queue to find (optional)
///
///  @param appKey The application key the queue was assigned to (optional)
///
///  @param name The name of the queue to find (optional)
///
///  @param hostname The hostname of the queue to find (optional)
///
///  @param virtualHost The virtual host of the queue to find (optional)
///
///  @returns OAIQueueResponse*
///
-(NSURLSessionTask*) queueGetWithVersion: (NSNumber*) version
    deviceId: (NSString*) deviceId
    accountId: (NSNumber*) accountId
    queueId: (NSNumber*) queueId
    appKey: (NSString*) appKey
    name: (NSString*) name
    hostname: (NSString*) hostname
    virtualHost: (NSString*) virtualHost
    completionHandler: (void (^)(OAIQueueResponse* output, NSError* error)) handler {
    // verify the required parameter 'version' is set
    if (version == nil) {
        NSParameterAssert(version);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"version"] };
            NSError* error = [NSError errorWithDomain:kOAIAMQPApiErrorDomain code:kOAIAMQPApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/{version}/queue/get"];

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
    if (queueId != nil) {
        queryParams[@"queueId"] = queueId;
    }
    if (appKey != nil) {
        queryParams[@"appKey"] = appKey;
    }
    if (name != nil) {
        queryParams[@"name"] = name;
    }
    if (hostname != nil) {
        queryParams[@"hostname"] = hostname;
    }
    if (virtualHost != nil) {
        queryParams[@"virtualHost"] = virtualHost;
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
                              responseType: @"OAIQueueResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIQueueResponse*)data, error);
                                }
                            }];
}

///
/// Publish Queue
/// Publish a message to a stored queue. Must supply the queueId, or the name and hostname and virtualHost, or the name and appKey to find the record.
///  @param version  
///
///  @param message The payload to send to the queue 
///
///  @param queueId The id of the queue to publish to (optional)
///
///  @param appKey The application key the queue was assigned to (optional)
///
///  @param name The name of the queue to publish to or the analytic tag to handle if the analytic param is true (optional)
///
///  @param hostname The hostname of the server the queue is hosted on (optional)
///
///  @param virtualHost The virtual host defined on the server to queue (optional)
///
///  @returns OAISirqulResponse*
///
-(NSURLSessionTask*) queuePublishWithVersion: (NSNumber*) version
    message: (NSString*) message
    queueId: (NSNumber*) queueId
    appKey: (NSString*) appKey
    name: (NSString*) name
    hostname: (NSString*) hostname
    virtualHost: (NSString*) virtualHost
    completionHandler: (void (^)(OAISirqulResponse* output, NSError* error)) handler {
    // verify the required parameter 'version' is set
    if (version == nil) {
        NSParameterAssert(version);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"version"] };
            NSError* error = [NSError errorWithDomain:kOAIAMQPApiErrorDomain code:kOAIAMQPApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'message' is set
    if (message == nil) {
        NSParameterAssert(message);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"message"] };
            NSError* error = [NSError errorWithDomain:kOAIAMQPApiErrorDomain code:kOAIAMQPApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/{version}/queue/publish"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (version != nil) {
        pathParams[@"version"] = version;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (queueId != nil) {
        queryParams[@"queueId"] = queueId;
    }
    if (appKey != nil) {
        queryParams[@"appKey"] = appKey;
    }
    if (name != nil) {
        queryParams[@"name"] = name;
    }
    if (hostname != nil) {
        queryParams[@"hostname"] = hostname;
    }
    if (virtualHost != nil) {
        queryParams[@"virtualHost"] = virtualHost;
    }
    if (message != nil) {
        queryParams[@"message"] = message;
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
/// Search Queue
/// Get the queues setup for the BillableEntity's applications.
///  @param version  
///
///  @param queueId The id of the queue to find (optional)
///
///  @param deviceId The client device ID (optional)
///
///  @param accountId The logged in user ID (optional)
///
///  @param name The name of the queue to find (optional)
///
///  @param start Start of the index (optional, default to @0)
///
///  @param limit Limit of the index (optional, default to @10)
///
///  @returns OAIQueueResponse*
///
-(NSURLSessionTask*) queueSearchWithVersion: (NSNumber*) version
    queueId: (NSNumber*) queueId
    deviceId: (NSString*) deviceId
    accountId: (NSNumber*) accountId
    name: (NSString*) name
    start: (NSNumber*) start
    limit: (NSNumber*) limit
    completionHandler: (void (^)(OAIQueueResponse* output, NSError* error)) handler {
    // verify the required parameter 'version' is set
    if (version == nil) {
        NSParameterAssert(version);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"version"] };
            NSError* error = [NSError errorWithDomain:kOAIAMQPApiErrorDomain code:kOAIAMQPApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/{version}/queue/search"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (version != nil) {
        pathParams[@"version"] = version;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (queueId != nil) {
        queryParams[@"queueId"] = queueId;
    }
    if (deviceId != nil) {
        queryParams[@"deviceId"] = deviceId;
    }
    if (accountId != nil) {
        queryParams[@"accountId"] = accountId;
    }
    if (name != nil) {
        queryParams[@"name"] = name;
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
                              responseType: @"OAIQueueResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIQueueResponse*)data, error);
                                }
                            }];
}

///
/// Update Queue
/// Update the basic AMQP queue.
///  @param version  
///
///  @param queueId The id of the queue to update 
///
///  @param deviceId The client deviceID (optional)
///
///  @param accountId The logged in user ID (optional)
///
///  @param appKey The application key unique to each application. (optional)
///
///  @param workers The number of workers to generate (optional)
///
///  @param analyticTags If provided the analytic processing will publsih to this queue instead of the default one for the provided list of tags (optional)
///
///  @param hostname The hostname of the server the queue is hosted on (optional)
///
///  @param port The port of the server the queue is hosted on (optional)
///
///  @param username The username to access the server that the queue is on (optional)
///
///  @param password The password to access the queue to connect to (optional)
///
///  @param virtualHost The virtual host defined on the server to queue (optional)
///
///  @param useSSL the SSL to use (optional)
///
///  @returns OAIQueueResponse*
///
-(NSURLSessionTask*) queueUpdateWithVersion: (NSNumber*) version
    queueId: (NSNumber*) queueId
    deviceId: (NSString*) deviceId
    accountId: (NSNumber*) accountId
    appKey: (NSString*) appKey
    workers: (NSNumber*) workers
    analyticTags: (NSString*) analyticTags
    hostname: (NSString*) hostname
    port: (NSNumber*) port
    username: (NSString*) username
    password: (NSString*) password
    virtualHost: (NSString*) virtualHost
    useSSL: (NSNumber*) useSSL
    completionHandler: (void (^)(OAIQueueResponse* output, NSError* error)) handler {
    // verify the required parameter 'version' is set
    if (version == nil) {
        NSParameterAssert(version);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"version"] };
            NSError* error = [NSError errorWithDomain:kOAIAMQPApiErrorDomain code:kOAIAMQPApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'queueId' is set
    if (queueId == nil) {
        NSParameterAssert(queueId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"queueId"] };
            NSError* error = [NSError errorWithDomain:kOAIAMQPApiErrorDomain code:kOAIAMQPApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/{version}/queue/update"];

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
    if (appKey != nil) {
        queryParams[@"appKey"] = appKey;
    }
    if (queueId != nil) {
        queryParams[@"queueId"] = queueId;
    }
    if (workers != nil) {
        queryParams[@"workers"] = workers;
    }
    if (analyticTags != nil) {
        queryParams[@"analyticTags"] = analyticTags;
    }
    if (hostname != nil) {
        queryParams[@"hostname"] = hostname;
    }
    if (port != nil) {
        queryParams[@"port"] = port;
    }
    if (username != nil) {
        queryParams[@"username"] = username;
    }
    if (password != nil) {
        queryParams[@"password"] = password;
    }
    if (virtualHost != nil) {
        queryParams[@"virtualHost"] = virtualHost;
    }
    if (useSSL != nil) {
        queryParams[@"useSSL"] = [useSSL isEqual:@(YES)] ? @"true" : @"false";
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
                              responseType: @"OAIQueueResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIQueueResponse*)data, error);
                                }
                            }];
}



@end
