#import "OAITwilioApi.h"
#import "OAIQueryParamCollection.h"
#import "OAIApiClient.h"
#import "OAITwiMLResponse.h"


@interface OAITwilioApi ()

@property (nonatomic, strong, readwrite) NSMutableDictionary *mutableDefaultHeaders;

@end

@implementation OAITwilioApi

NSString* kOAITwilioApiErrorDomain = @"OAITwilioApiErrorDomain";
NSInteger kOAITwilioApiMissingParamErrorCode = 234513;

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
/// Buy Offer by SMS
/// Recieve an SMS payload from Twillio to purchase an offer.
///  @param appKey the application key 
///
///  @param body the message of the text 
///
///  @param from the sender of the sms 
///
///  @param currencyType the type of currency 
///
///  @returns OAITwiMLResponse*
///
-(NSURLSessionTask*) smsBuyOfferWithAppKey: (NSString*) appKey
    body: (NSString*) body
    from: (NSString*) from
    currencyType: (NSString*) currencyType
    completionHandler: (void (^)(OAITwiMLResponse* output, NSError* error)) handler {
    // verify the required parameter 'appKey' is set
    if (appKey == nil) {
        NSParameterAssert(appKey);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"appKey"] };
            NSError* error = [NSError errorWithDomain:kOAITwilioApiErrorDomain code:kOAITwilioApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'body' is set
    if (body == nil) {
        NSParameterAssert(body);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"body"] };
            NSError* error = [NSError errorWithDomain:kOAITwilioApiErrorDomain code:kOAITwilioApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'from' is set
    if (from == nil) {
        NSParameterAssert(from);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"from"] };
            NSError* error = [NSError errorWithDomain:kOAITwilioApiErrorDomain code:kOAITwilioApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'currencyType' is set
    if (currencyType == nil) {
        NSParameterAssert(currencyType);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"currencyType"] };
            NSError* error = [NSError errorWithDomain:kOAITwilioApiErrorDomain code:kOAITwilioApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/sms/buyoffer/{appKey}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (appKey != nil) {
        pathParams[@"appKey"] = appKey;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (body != nil) {
        queryParams[@"Body"] = body;
    }
    if (from != nil) {
        queryParams[@"From"] = from;
    }
    if (currencyType != nil) {
        queryParams[@"currencyType"] = currencyType;
    }
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/xml"]];
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
                              responseType: @"OAITwiMLResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAITwiMLResponse*)data, error);
                                }
                            }];
}



@end
