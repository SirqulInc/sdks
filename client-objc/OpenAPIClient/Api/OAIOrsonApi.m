#import "OAIOrsonApi.h"
#import "OAIQueryParamCollection.h"
#import "OAIApiClient.h"
#import "OAIOrsonAiAddMovieResponse.h"
#import "OAIOrsonAiBatchResponse.h"
#import "OAIOrsonAiEmotionsResponse.h"
#import "OAIOrsonAiProtoResponse.h"
#import "OAIOrsonAiSTTResponse.h"
#import "OAIOrsonAiTTSResponse.h"
#import "OAIOrsonAiTechTuneResponse.h"
#import "OAIOrsonAiTopicsResponse.h"
#import "OAIOrsonAiVoiceCanvasResponse.h"
#import "OAIOrsonEpisodeResponse.h"
#import "OAIOrsonRenderResponse.h"


@interface OAIOrsonApi ()

@property (nonatomic, strong, readwrite) NSMutableDictionary *mutableDefaultHeaders;

@end

@implementation OAIOrsonApi

NSString* kOAIOrsonApiErrorDomain = @"OAIOrsonApiErrorDomain";
NSInteger kOAIOrsonApiMissingParamErrorCode = 234513;

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
/// Add Movie
/// Add a movie to be indexed for Topics. Indexing a movie analyses the content and incorporates it into the topics model for future /topics calls. This does not store the movie file long-term.
///  @param accountId Sirqul Account Id 
///
///  @param movieName Movie Name 
///
///  @param thirdPartyAccountId A third-party account id that is meaningful to your systems (optional)
///
///  @param tags A user defined list (comma-delimited) of tags associated with the movie (optional)
///
///  @param file An uploaded recording to analyze (Currently limited to 10MB) (optional)
///
///  @param url A recording file to download and analyze (Size limit: 1GB) (optional)
///
///  @param callback When provided, Orson will return a 202 and POST the results to this URL when complete instead of holding the Request open (optional)
///
///  @returns OAIOrsonAiAddMovieResponse*
///
-(NSURLSessionTask*) addMovieWithAccountId: (NSNumber*) accountId
    movieName: (NSString*) movieName
    thirdPartyAccountId: (NSString*) thirdPartyAccountId
    tags: (NSString*) tags
    file: (NSURL*) file
    url: (NSString*) url
    callback: (NSString*) callback
    completionHandler: (void (^)(OAIOrsonAiAddMovieResponse* output, NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kOAIOrsonApiErrorDomain code:kOAIOrsonApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'movieName' is set
    if (movieName == nil) {
        NSParameterAssert(movieName);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"movieName"] };
            NSError* error = [NSError errorWithDomain:kOAIOrsonApiErrorDomain code:kOAIOrsonApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/orson/ai/addMovie"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        queryParams[@"accountId"] = accountId;
    }
    if (thirdPartyAccountId != nil) {
        queryParams[@"thirdPartyAccountId"] = thirdPartyAccountId;
    }
    if (tags != nil) {
        queryParams[@"tags"] = tags;
    }
    if (movieName != nil) {
        queryParams[@"movieName"] = movieName;
    }
    if (file != nil) {
        queryParams[@"file"] = file;
    }
    if (url != nil) {
        queryParams[@"url"] = url;
    }
    if (callback != nil) {
        queryParams[@"callback"] = callback;
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
                              responseType: @"OAIOrsonAiAddMovieResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIOrsonAiAddMovieResponse*)data, error);
                                }
                            }];
}

///
/// Search Docs
/// Takes in a text string representing one or more sentences and it returns a list of documents which are related to the provided document.
///  @param accountId Sirqul Account Id 
///
///  @param doc Doc 
///
///  @param returnTopics Return Topics (optional)
///
///  @param limit Limit (optional)
///
///  @param offset Offset (optional)
///
///  @returns OAIOrsonAiProtoResponse*
///
-(NSURLSessionTask*) aiDocsWithAccountId: (NSNumber*) accountId
    doc: (NSString*) doc
    returnTopics: (NSNumber*) returnTopics
    limit: (NSNumber*) limit
    offset: (NSNumber*) offset
    completionHandler: (void (^)(OAIOrsonAiProtoResponse* output, NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kOAIOrsonApiErrorDomain code:kOAIOrsonApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'doc' is set
    if (doc == nil) {
        NSParameterAssert(doc);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"doc"] };
            NSError* error = [NSError errorWithDomain:kOAIOrsonApiErrorDomain code:kOAIOrsonApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/orson/ai/docs"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        queryParams[@"accountId"] = accountId;
    }
    if (doc != nil) {
        queryParams[@"doc"] = doc;
    }
    if (returnTopics != nil) {
        queryParams[@"return_topics"] = [returnTopics isEqual:@(YES)] ? @"true" : @"false";
    }
    if (limit != nil) {
        queryParams[@"limit"] = limit;
    }
    if (offset != nil) {
        queryParams[@"offset"] = offset;
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
                              responseType: @"OAIOrsonAiProtoResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIOrsonAiProtoResponse*)data, error);
                                }
                            }];
}

///
/// Find images
/// Returns a list of URIs of images that match the text.
///  @param accountId Sirqul Account Id 
///
///  @param text Text 
///
///  @param parseFlag Parse Flag (optional)
///
///  @param fetchFlag Fetch Flag (optional)
///
///  @param size Size (optional)
///
///  @returns OAIOrsonAiProtoResponse*
///
-(NSURLSessionTask*) aiFindImagesWithAccountId: (NSNumber*) accountId
    text: (NSString*) text
    parseFlag: (NSString*) parseFlag
    fetchFlag: (NSString*) fetchFlag
    size: (NSString*) size
    completionHandler: (void (^)(OAIOrsonAiProtoResponse* output, NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kOAIOrsonApiErrorDomain code:kOAIOrsonApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'text' is set
    if (text == nil) {
        NSParameterAssert(text);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"text"] };
            NSError* error = [NSError errorWithDomain:kOAIOrsonApiErrorDomain code:kOAIOrsonApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/orson/ai/img"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        queryParams[@"accountId"] = accountId;
    }
    if (text != nil) {
        queryParams[@"text"] = text;
    }
    if (parseFlag != nil) {
        queryParams[@"parse_flag"] = parseFlag;
    }
    if (fetchFlag != nil) {
        queryParams[@"fetch_flag"] = fetchFlag;
    }
    if (size != nil) {
        queryParams[@"size"] = size;
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
                              responseType: @"OAIOrsonAiProtoResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIOrsonAiProtoResponse*)data, error);
                                }
                            }];
}

///
/// Search Tags
/// Search the tags column of user provided tags using this endpoint.
///  @param accountId Sirqul Account Id 
///
///  @param tags Tags 
///
///  @param conditional Conditional (optional)
///
///  @param limit Limit (optional)
///
///  @param offset Offset (optional)
///
///  @returns OAIOrsonAiProtoResponse*
///
-(NSURLSessionTask*) aiTagsWithAccountId: (NSNumber*) accountId
    tags: (NSString*) tags
    conditional: (NSString*) conditional
    limit: (NSNumber*) limit
    offset: (NSNumber*) offset
    completionHandler: (void (^)(OAIOrsonAiProtoResponse* output, NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kOAIOrsonApiErrorDomain code:kOAIOrsonApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'tags' is set
    if (tags == nil) {
        NSParameterAssert(tags);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"tags"] };
            NSError* error = [NSError errorWithDomain:kOAIOrsonApiErrorDomain code:kOAIOrsonApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/orson/ai/tags"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        queryParams[@"accountId"] = accountId;
    }
    if (tags != nil) {
        queryParams[@"tags"] = tags;
    }
    if (conditional != nil) {
        queryParams[@"conditional"] = conditional;
    }
    if (limit != nil) {
        queryParams[@"limit"] = limit;
    }
    if (offset != nil) {
        queryParams[@"offset"] = offset;
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
                              responseType: @"OAIOrsonAiProtoResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIOrsonAiProtoResponse*)data, error);
                                }
                            }];
}

///
/// Search Text
/// Search the movie text column of movie text using this endpoint.
///  @param accountId Sirqul Account Id 
///
///  @param terms Terms 
///
///  @param conditional Conditional (optional)
///
///  @param limit Limit (optional)
///
///  @param offset Offset (optional)
///
///  @returns OAIOrsonAiProtoResponse*
///
-(NSURLSessionTask*) aiTextWithAccountId: (NSNumber*) accountId
    terms: (NSString*) terms
    conditional: (NSString*) conditional
    limit: (NSNumber*) limit
    offset: (NSNumber*) offset
    completionHandler: (void (^)(OAIOrsonAiProtoResponse* output, NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kOAIOrsonApiErrorDomain code:kOAIOrsonApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'terms' is set
    if (terms == nil) {
        NSParameterAssert(terms);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"terms"] };
            NSError* error = [NSError errorWithDomain:kOAIOrsonApiErrorDomain code:kOAIOrsonApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/orson/ai/text"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        queryParams[@"accountId"] = accountId;
    }
    if (terms != nil) {
        queryParams[@"terms"] = terms;
    }
    if (conditional != nil) {
        queryParams[@"conditional"] = conditional;
    }
    if (limit != nil) {
        queryParams[@"limit"] = limit;
    }
    if (offset != nil) {
        queryParams[@"offset"] = offset;
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
                              responseType: @"OAIOrsonAiProtoResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIOrsonAiProtoResponse*)data, error);
                                }
                            }];
}

///
/// Batch Analysis
/// Run several types of analysis on an audio or video file in a single API call, instead of calling several operations for the same file..
///  @param accountId Sirqul Account Id 
///
///  @param thirdPartyAccountId A third-party account id that is meaningful to your systems (optional)
///
///  @param limit The number of topics to return (optional)
///
///  @param operations The comma-delimited list of A/V batch analysis operations to run on this file. Possible values: Transcript,Topics,Emotions (optional)
///
///  @param file An uploaded recording to analyze (Currently limited to 10MB) (optional)
///
///  @param url A recording file to download and analyze (Size limit: 1GB) (optional)
///
///  @param callback When provided, Orson will return a 202 and POST the results to this URL when complete instead of holding the Request open (optional)
///
///  @returns OAIOrsonAiBatchResponse*
///
-(NSURLSessionTask*) batchWithAccountId: (NSNumber*) accountId
    thirdPartyAccountId: (NSString*) thirdPartyAccountId
    limit: (NSNumber*) limit
    operations: (NSString*) operations
    file: (NSURL*) file
    url: (NSString*) url
    callback: (NSString*) callback
    completionHandler: (void (^)(OAIOrsonAiBatchResponse* output, NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kOAIOrsonApiErrorDomain code:kOAIOrsonApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/orson/ai/batch"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        queryParams[@"accountId"] = accountId;
    }
    if (thirdPartyAccountId != nil) {
        queryParams[@"thirdPartyAccountId"] = thirdPartyAccountId;
    }
    if (limit != nil) {
        queryParams[@"limit"] = limit;
    }
    if (operations != nil) {
        queryParams[@"operations"] = operations;
    }
    if (file != nil) {
        queryParams[@"file"] = file;
    }
    if (url != nil) {
        queryParams[@"url"] = url;
    }
    if (callback != nil) {
        queryParams[@"callback"] = callback;
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
                              responseType: @"OAIOrsonAiBatchResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIOrsonAiBatchResponse*)data, error);
                                }
                            }];
}

///
/// Creates an instant episode
/// Creates an instant episode for a given StoryStrip by providing all necessary inputs, interview recordings, and pictures, kicking off a render immediately.
///  @param accountId Sirqul Account Id 
///
///  @param data Request Data String 
///
///  @returns OAIOrsonEpisodeResponse*
///
-(NSURLSessionTask*) createInstantEpisodeWithAccountId: (NSNumber*) accountId
    data: (NSString*) data
    completionHandler: (void (^)(OAIOrsonEpisodeResponse* output, NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kOAIOrsonApiErrorDomain code:kOAIOrsonApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'data' is set
    if (data == nil) {
        NSParameterAssert(data);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"data"] };
            NSError* error = [NSError errorWithDomain:kOAIOrsonApiErrorDomain code:kOAIOrsonApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/orson/stories/episodes/instant"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        queryParams[@"accountId"] = accountId;
    }
    if (data != nil) {
        queryParams[@"data"] = data;
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
                              responseType: @"OAIOrsonEpisodeResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIOrsonEpisodeResponse*)data, error);
                                }
                            }];
}

///
/// Create VoiceCanvas images
/// Create VoiceCanvas images for provided text, file upload, or file URL
///  @param accountId Sirqul Account Id 
///
///  @param dimensions Enum: \"256x256\" \"512x512\" \"1024x1024\" 
///
///  @param thirdPartyAccountId A third-party account id that is meaningful to your systems (optional)
///
///  @param text Provide a transcript or previously extracted topics for image generation (optional)
///
///  @param file An uploaded recording to analyze (Currently limited to 10MB) (optional)
///
///  @param url A recording file to download and analyze (Size limit: 1GB) (optional)
///
///  @param parseFlag When false, uses the raw value from text instead of identifying topics to fetch/generate from (optional)
///
///  @param fetchFlag When true, fetches images instead of generating them (optional)
///
///  @param callback When provided, Orson will return a 202 and POST the results to this URL when complete instead of holding the Request open (optional)
///
///  @returns OAIOrsonAiVoiceCanvasResponse*
///
-(NSURLSessionTask*) createVoiceCanvasWithAccountId: (NSNumber*) accountId
    dimensions: (NSString*) dimensions
    thirdPartyAccountId: (NSString*) thirdPartyAccountId
    text: (NSString*) text
    file: (NSURL*) file
    url: (NSString*) url
    parseFlag: (NSNumber*) parseFlag
    fetchFlag: (NSNumber*) fetchFlag
    callback: (NSString*) callback
    completionHandler: (void (^)(OAIOrsonAiVoiceCanvasResponse* output, NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kOAIOrsonApiErrorDomain code:kOAIOrsonApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'dimensions' is set
    if (dimensions == nil) {
        NSParameterAssert(dimensions);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"dimensions"] };
            NSError* error = [NSError errorWithDomain:kOAIOrsonApiErrorDomain code:kOAIOrsonApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/orson/ai/voiceCanvas"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        queryParams[@"accountId"] = accountId;
    }
    if (thirdPartyAccountId != nil) {
        queryParams[@"thirdPartyAccountId"] = thirdPartyAccountId;
    }
    if (dimensions != nil) {
        queryParams[@"dimensions"] = dimensions;
    }
    if (text != nil) {
        queryParams[@"text"] = text;
    }
    if (file != nil) {
        queryParams[@"file"] = file;
    }
    if (url != nil) {
        queryParams[@"url"] = url;
    }
    if (parseFlag != nil) {
        queryParams[@"parseFlag"] = [parseFlag isEqual:@(YES)] ? @"true" : @"false";
    }
    if (fetchFlag != nil) {
        queryParams[@"fetchFlag"] = [fetchFlag isEqual:@(YES)] ? @"true" : @"false";
    }
    if (callback != nil) {
        queryParams[@"callback"] = callback;
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
                              responseType: @"OAIOrsonAiVoiceCanvasResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIOrsonAiVoiceCanvasResponse*)data, error);
                                }
                            }];
}

///
/// Detect emotions
/// Detects emotions in an audio or video recording.
///  @param accountId Sirqul Account Id 
///
///  @param thirdPartyAccountId A third-party account id that is meaningful to your systems (optional)
///
///  @param file An uploaded recording to analyze (Currently limited to 10MB) (optional)
///
///  @param url A recording file to download and analyze (Size limit: 1GB) (optional)
///
///  @param callback When provided, Orson will return a 202 and POST the results to this URL when complete instead of holding the Request open (optional)
///
///  @returns OAIOrsonAiEmotionsResponse*
///
-(NSURLSessionTask*) emotionWithAccountId: (NSNumber*) accountId
    thirdPartyAccountId: (NSString*) thirdPartyAccountId
    file: (NSURL*) file
    url: (NSString*) url
    callback: (NSString*) callback
    completionHandler: (void (^)(OAIOrsonAiEmotionsResponse* output, NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kOAIOrsonApiErrorDomain code:kOAIOrsonApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/orson/ai/emotion"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        queryParams[@"accountId"] = accountId;
    }
    if (thirdPartyAccountId != nil) {
        queryParams[@"thirdPartyAccountId"] = thirdPartyAccountId;
    }
    if (file != nil) {
        queryParams[@"file"] = file;
    }
    if (url != nil) {
        queryParams[@"url"] = url;
    }
    if (callback != nil) {
        queryParams[@"callback"] = callback;
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
                              responseType: @"OAIOrsonAiEmotionsResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIOrsonAiEmotionsResponse*)data, error);
                                }
                            }];
}

///
/// Get Add Movie Result
/// Get the result of an in progress Add Movie request from an earlier POST.
///  @param requestId Orson Request Id 
///
///  @param accountId Sirqul Account Id 
///
///  @returns OAIOrsonAiAddMovieResponse*
///
-(NSURLSessionTask*) getAddMovieResultWithRequestId: (NSString*) requestId
    accountId: (NSNumber*) accountId
    completionHandler: (void (^)(OAIOrsonAiAddMovieResponse* output, NSError* error)) handler {
    // verify the required parameter 'requestId' is set
    if (requestId == nil) {
        NSParameterAssert(requestId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"requestId"] };
            NSError* error = [NSError errorWithDomain:kOAIOrsonApiErrorDomain code:kOAIOrsonApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kOAIOrsonApiErrorDomain code:kOAIOrsonApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/orson/ai/addMovie/{requestId}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (requestId != nil) {
        pathParams[@"requestId"] = requestId;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        queryParams[@"accountId"] = accountId;
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
                              responseType: @"OAIOrsonAiAddMovieResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIOrsonAiAddMovieResponse*)data, error);
                                }
                            }];
}

///
/// Get Batch Analysis Results
/// Gets the completed Video Batch results, if done, or an error or status update if not.
///  @param requestId Orson Request Id 
///
///  @param accountId Sirqul Account Id 
///
///  @returns OAIOrsonAiBatchResponse*
///
-(NSURLSessionTask*) getBatchWithRequestId: (NSString*) requestId
    accountId: (NSNumber*) accountId
    completionHandler: (void (^)(OAIOrsonAiBatchResponse* output, NSError* error)) handler {
    // verify the required parameter 'requestId' is set
    if (requestId == nil) {
        NSParameterAssert(requestId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"requestId"] };
            NSError* error = [NSError errorWithDomain:kOAIOrsonApiErrorDomain code:kOAIOrsonApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kOAIOrsonApiErrorDomain code:kOAIOrsonApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/orson/ai/batch/{requestId}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (requestId != nil) {
        pathParams[@"requestId"] = requestId;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        queryParams[@"accountId"] = accountId;
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
                              responseType: @"OAIOrsonAiBatchResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIOrsonAiBatchResponse*)data, error);
                                }
                            }];
}

///
/// Get Emotion Results
/// Checks the Emotion analysis and returns in progress, results, or error.
///  @param requestId Orson Request Id 
///
///  @param accountId Sirqul Account Id 
///
///  @returns OAIOrsonAiEmotionsResponse*
///
-(NSURLSessionTask*) getEmotionWithRequestId: (NSString*) requestId
    accountId: (NSNumber*) accountId
    completionHandler: (void (^)(OAIOrsonAiEmotionsResponse* output, NSError* error)) handler {
    // verify the required parameter 'requestId' is set
    if (requestId == nil) {
        NSParameterAssert(requestId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"requestId"] };
            NSError* error = [NSError errorWithDomain:kOAIOrsonApiErrorDomain code:kOAIOrsonApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kOAIOrsonApiErrorDomain code:kOAIOrsonApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/orson/ai/emotion/{requestId}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (requestId != nil) {
        pathParams[@"requestId"] = requestId;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        queryParams[@"accountId"] = accountId;
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
                              responseType: @"OAIOrsonAiEmotionsResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIOrsonAiEmotionsResponse*)data, error);
                                }
                            }];
}

///
/// Check episode status
/// Gets a summary of the episode's status, including any renders.
///  @param episodeId Episode ID 
///
///  @param accountId Sirqul Account Id 
///
///  @returns OAIOrsonEpisodeResponse*
///
-(NSURLSessionTask*) getEpisodeStatusWithEpisodeId: (NSNumber*) episodeId
    accountId: (NSNumber*) accountId
    completionHandler: (void (^)(OAIOrsonEpisodeResponse* output, NSError* error)) handler {
    // verify the required parameter 'episodeId' is set
    if (episodeId == nil) {
        NSParameterAssert(episodeId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"episodeId"] };
            NSError* error = [NSError errorWithDomain:kOAIOrsonApiErrorDomain code:kOAIOrsonApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kOAIOrsonApiErrorDomain code:kOAIOrsonApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/orson/stories/episodes/{episodeId}/status"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (episodeId != nil) {
        pathParams[@"episodeId"] = episodeId;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        queryParams[@"accountId"] = accountId;
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
                              responseType: @"OAIOrsonEpisodeResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIOrsonEpisodeResponse*)data, error);
                                }
                            }];
}

///
/// Check episode status
/// Gets a summary of the episode's status, including any renders.
///  @param renderId Render ID 
///
///  @param accountId Sirqul Account Id 
///
///  @returns OAIOrsonRenderResponse*
///
-(NSURLSessionTask*) getRenderStatusWithRenderId: (NSString*) renderId
    accountId: (NSNumber*) accountId
    completionHandler: (void (^)(OAIOrsonRenderResponse* output, NSError* error)) handler {
    // verify the required parameter 'renderId' is set
    if (renderId == nil) {
        NSParameterAssert(renderId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"renderId"] };
            NSError* error = [NSError errorWithDomain:kOAIOrsonApiErrorDomain code:kOAIOrsonApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kOAIOrsonApiErrorDomain code:kOAIOrsonApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/orson/stories/renders/{renderId}/status"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (renderId != nil) {
        pathParams[@"renderId"] = renderId;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        queryParams[@"accountId"] = accountId;
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
                              responseType: @"OAIOrsonRenderResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIOrsonRenderResponse*)data, error);
                                }
                            }];
}

///
/// Get Speach to Text Result
/// The results of the video transcription and optional translation.
///  @param requestId Orson Request Id 
///
///  @param accountId Sirqul Account Id 
///
///  @returns OAIOrsonAiSTTResponse*
///
-(NSURLSessionTask*) getSTTWithRequestId: (NSString*) requestId
    accountId: (NSNumber*) accountId
    completionHandler: (void (^)(OAIOrsonAiSTTResponse* output, NSError* error)) handler {
    // verify the required parameter 'requestId' is set
    if (requestId == nil) {
        NSParameterAssert(requestId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"requestId"] };
            NSError* error = [NSError errorWithDomain:kOAIOrsonApiErrorDomain code:kOAIOrsonApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kOAIOrsonApiErrorDomain code:kOAIOrsonApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/orson/ai/stt/{requestId}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (requestId != nil) {
        pathParams[@"requestId"] = requestId;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        queryParams[@"accountId"] = accountId;
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
                              responseType: @"OAIOrsonAiSTTResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIOrsonAiSTTResponse*)data, error);
                                }
                            }];
}

///
/// Get Text to Speach Result
/// Check the status of an in progress Text-to-Speech call or download the result.
///  @param requestId Orson Request Id 
///
///  @param accountId Sirqul Account Id 
///
///  @returns OAIOrsonAiTTSResponse*
///
-(NSURLSessionTask*) getTTSWithRequestId: (NSString*) requestId
    accountId: (NSNumber*) accountId
    completionHandler: (void (^)(OAIOrsonAiTTSResponse* output, NSError* error)) handler {
    // verify the required parameter 'requestId' is set
    if (requestId == nil) {
        NSParameterAssert(requestId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"requestId"] };
            NSError* error = [NSError errorWithDomain:kOAIOrsonApiErrorDomain code:kOAIOrsonApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kOAIOrsonApiErrorDomain code:kOAIOrsonApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/orson/ai/tts/{requestId}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (requestId != nil) {
        pathParams[@"requestId"] = requestId;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        queryParams[@"accountId"] = accountId;
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
                              responseType: @"OAIOrsonAiTTSResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIOrsonAiTTSResponse*)data, error);
                                }
                            }];
}

///
/// Get TechTune Results
/// Get a result or continue waiting for a pending request for TechTune analysis.
///  @param requestId Orson Request Id 
///
///  @param accountId Sirqul Account Id 
///
///  @returns OAIOrsonAiTechTuneResponse*
///
-(NSURLSessionTask*) getTechTuneWithRequestId: (NSString*) requestId
    accountId: (NSNumber*) accountId
    completionHandler: (void (^)(OAIOrsonAiTechTuneResponse* output, NSError* error)) handler {
    // verify the required parameter 'requestId' is set
    if (requestId == nil) {
        NSParameterAssert(requestId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"requestId"] };
            NSError* error = [NSError errorWithDomain:kOAIOrsonApiErrorDomain code:kOAIOrsonApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kOAIOrsonApiErrorDomain code:kOAIOrsonApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/orson/ai/techTune/{requestId}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (requestId != nil) {
        pathParams[@"requestId"] = requestId;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        queryParams[@"accountId"] = accountId;
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
                              responseType: @"OAIOrsonAiTechTuneResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIOrsonAiTechTuneResponse*)data, error);
                                }
                            }];
}

///
/// Get Topics
/// Get the result of an in progress Topics Analysis from an earlier POST.
///  @param requestId Orson Request Id 
///
///  @param accountId Sirqul Account Id 
///
///  @returns OAIOrsonAiTopicsResponse*
///
-(NSURLSessionTask*) getTopicsWithRequestId: (NSString*) requestId
    accountId: (NSNumber*) accountId
    completionHandler: (void (^)(OAIOrsonAiTopicsResponse* output, NSError* error)) handler {
    // verify the required parameter 'requestId' is set
    if (requestId == nil) {
        NSParameterAssert(requestId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"requestId"] };
            NSError* error = [NSError errorWithDomain:kOAIOrsonApiErrorDomain code:kOAIOrsonApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kOAIOrsonApiErrorDomain code:kOAIOrsonApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/orson/ai/topics/{requestId}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (requestId != nil) {
        pathParams[@"requestId"] = requestId;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        queryParams[@"accountId"] = accountId;
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
                              responseType: @"OAIOrsonAiTopicsResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIOrsonAiTopicsResponse*)data, error);
                                }
                            }];
}

///
/// Get VoiceCanvas images
/// Get a result or continue waiting for a pending request for VoiceCanvas Images.
///  @param requestId Orson Request Id 
///
///  @param accountId Sirqul Account Id 
///
///  @returns OAIOrsonAiVoiceCanvasResponse*
///
-(NSURLSessionTask*) getVoiceCanvasWithRequestId: (NSString*) requestId
    accountId: (NSNumber*) accountId
    completionHandler: (void (^)(OAIOrsonAiVoiceCanvasResponse* output, NSError* error)) handler {
    // verify the required parameter 'requestId' is set
    if (requestId == nil) {
        NSParameterAssert(requestId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"requestId"] };
            NSError* error = [NSError errorWithDomain:kOAIOrsonApiErrorDomain code:kOAIOrsonApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kOAIOrsonApiErrorDomain code:kOAIOrsonApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/orson/ai/voiceCanvas/{requestId}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (requestId != nil) {
        pathParams[@"requestId"] = requestId;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        queryParams[@"accountId"] = accountId;
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
                              responseType: @"OAIOrsonAiVoiceCanvasResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIOrsonAiVoiceCanvasResponse*)data, error);
                                }
                            }];
}

///
/// Starts a StoryStitch video render
/// Starts a StoryStitch video render to produce your final video, returning the status details.
///  @param accountId Sirqul Account Id 
///
///  @param data Request Data String 
///
///  @returns OAIOrsonRenderResponse*
///
-(NSURLSessionTask*) startVideoRenderWithAccountId: (NSNumber*) accountId
    data: (NSString*) data
    completionHandler: (void (^)(OAIOrsonRenderResponse* output, NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kOAIOrsonApiErrorDomain code:kOAIOrsonApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'data' is set
    if (data == nil) {
        NSParameterAssert(data);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"data"] };
            NSError* error = [NSError errorWithDomain:kOAIOrsonApiErrorDomain code:kOAIOrsonApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/orson/stories/renders"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        queryParams[@"accountId"] = accountId;
    }
    if (data != nil) {
        queryParams[@"data"] = data;
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
                              responseType: @"OAIOrsonRenderResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIOrsonRenderResponse*)data, error);
                                }
                            }];
}

///
/// Speach to Text
/// Accepts a movie URL or uploaded file and transcribes it. You also have the option to translate it into one of our additional supported languages.
///  @param accountId Sirqul Account Id 
///
///  @param thirdPartyAccountId A third-party account id that is meaningful to your systems (optional)
///
///  @param sourceLanguage Source Language (optional)
///
///  @param targetLanguage Target Language (optional)
///
///  @param file An uploaded recording to analyze (Currently limited to 10MB) (optional)
///
///  @param url A recording file to download and analyze (Size limit: 1GB) (optional)
///
///  @param callback When provided, Orson will return a 202 and POST the results to this URL when complete instead of holding the Request open (optional)
///
///  @returns OAIOrsonAiSTTResponse*
///
-(NSURLSessionTask*) sttWithAccountId: (NSNumber*) accountId
    thirdPartyAccountId: (NSString*) thirdPartyAccountId
    sourceLanguage: (NSString*) sourceLanguage
    targetLanguage: (NSString*) targetLanguage
    file: (NSURL*) file
    url: (NSString*) url
    callback: (NSString*) callback
    completionHandler: (void (^)(OAIOrsonAiSTTResponse* output, NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kOAIOrsonApiErrorDomain code:kOAIOrsonApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/orson/ai/stt"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        queryParams[@"accountId"] = accountId;
    }
    if (thirdPartyAccountId != nil) {
        queryParams[@"thirdPartyAccountId"] = thirdPartyAccountId;
    }
    if (sourceLanguage != nil) {
        queryParams[@"sourceLanguage"] = sourceLanguage;
    }
    if (targetLanguage != nil) {
        queryParams[@"targetLanguage"] = targetLanguage;
    }
    if (file != nil) {
        queryParams[@"file"] = file;
    }
    if (url != nil) {
        queryParams[@"url"] = url;
    }
    if (callback != nil) {
        queryParams[@"callback"] = callback;
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
                              responseType: @"OAIOrsonAiSTTResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIOrsonAiSTTResponse*)data, error);
                                }
                            }];
}

///
/// Summarize Topics
/// Takes in a string of text sentences (also known as a document) and returns a list of associated topics and their proximity score.
///  @param accountId Sirqul Account Id 
///
///  @param thirdPartyAccountId A third-party account id that is meaningful to your systems (optional)
///
///  @param doc The text to get topics for. (optional)
///
///  @param file An uploaded recording to analyze (Currently limited to 10MB) (optional)
///
///  @param url A recording file to download and analyze (Size limit: 1GB) (optional)
///
///  @param limit The number of results to return (optional)
///
///  @param offset The starting offset into the total result set to start from (optional)
///
///  @param callback When provided, Orson will return a 202 and POST the results to this URL when complete instead of holding the Request open (optional)
///
///  @returns OAIOrsonAiTopicsResponse*
///
-(NSURLSessionTask*) summarizeTopicsWithAccountId: (NSNumber*) accountId
    thirdPartyAccountId: (NSString*) thirdPartyAccountId
    doc: (NSString*) doc
    file: (NSURL*) file
    url: (NSString*) url
    limit: (NSNumber*) limit
    offset: (NSNumber*) offset
    callback: (NSString*) callback
    completionHandler: (void (^)(OAIOrsonAiTopicsResponse* output, NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kOAIOrsonApiErrorDomain code:kOAIOrsonApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/orson/ai/topics"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        queryParams[@"accountId"] = accountId;
    }
    if (thirdPartyAccountId != nil) {
        queryParams[@"thirdPartyAccountId"] = thirdPartyAccountId;
    }
    if (doc != nil) {
        queryParams[@"doc"] = doc;
    }
    if (file != nil) {
        queryParams[@"file"] = file;
    }
    if (url != nil) {
        queryParams[@"url"] = url;
    }
    if (limit != nil) {
        queryParams[@"limit"] = limit;
    }
    if (offset != nil) {
        queryParams[@"offset"] = offset;
    }
    if (callback != nil) {
        queryParams[@"callback"] = callback;
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
                              responseType: @"OAIOrsonAiTopicsResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIOrsonAiTopicsResponse*)data, error);
                                }
                            }];
}

///
/// Detect Technical Issues
/// Analyses a movie file to detect technical issues, such as too few people in frame.
///  @param accountId Sirqul Account Id 
///
///  @param numFacesExpected Number of expected faces 
///
///  @param thirdPartyAccountId A third-party account id that is meaningful to your systems (optional)
///
///  @param file An uploaded recording to analyze (Currently limited to 10MB) (optional)
///
///  @param url A recording file to download and analyze (Size limit: 1GB) (optional)
///
///  @param callback When provided, Orson will return a 202 and POST the results to this URL when complete instead of holding the Request open (optional)
///
///  @returns OAIOrsonAiTechTuneResponse*
///
-(NSURLSessionTask*) techTuneWithAccountId: (NSNumber*) accountId
    numFacesExpected: (NSNumber*) numFacesExpected
    thirdPartyAccountId: (NSString*) thirdPartyAccountId
    file: (NSURL*) file
    url: (NSString*) url
    callback: (NSString*) callback
    completionHandler: (void (^)(OAIOrsonAiTechTuneResponse* output, NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kOAIOrsonApiErrorDomain code:kOAIOrsonApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'numFacesExpected' is set
    if (numFacesExpected == nil) {
        NSParameterAssert(numFacesExpected);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"numFacesExpected"] };
            NSError* error = [NSError errorWithDomain:kOAIOrsonApiErrorDomain code:kOAIOrsonApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/orson/ai/techTune"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        queryParams[@"accountId"] = accountId;
    }
    if (thirdPartyAccountId != nil) {
        queryParams[@"thirdPartyAccountId"] = thirdPartyAccountId;
    }
    if (numFacesExpected != nil) {
        queryParams[@"numFacesExpected"] = numFacesExpected;
    }
    if (file != nil) {
        queryParams[@"file"] = file;
    }
    if (url != nil) {
        queryParams[@"url"] = url;
    }
    if (callback != nil) {
        queryParams[@"callback"] = callback;
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
                              responseType: @"OAIOrsonAiTechTuneResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIOrsonAiTechTuneResponse*)data, error);
                                }
                            }];
}

///
/// Text to Speach
/// Creates an audio file for the given text, with the option of language and voice selection.
///  @param accountId Sirqul Account Id 
///
///  @param text Text 
///
///  @param thirdPartyAccountId A third-party account id that is meaningful to your systems (optional)
///
///  @param language The language to use for the speaker and incoming text (optional)
///
///  @param voice A language-specific voice to use, or picks the language default if not provided (optional)
///
///  @param callback When provided, Orson will return a 202 and POST the results to this URL when complete instead of holding the Request open (optional)
///
///  @returns OAIOrsonAiTTSResponse*
///
-(NSURLSessionTask*) ttsWithAccountId: (NSNumber*) accountId
    text: (NSString*) text
    thirdPartyAccountId: (NSString*) thirdPartyAccountId
    language: (NSString*) language
    voice: (NSString*) voice
    callback: (NSString*) callback
    completionHandler: (void (^)(OAIOrsonAiTTSResponse* output, NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kOAIOrsonApiErrorDomain code:kOAIOrsonApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'text' is set
    if (text == nil) {
        NSParameterAssert(text);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"text"] };
            NSError* error = [NSError errorWithDomain:kOAIOrsonApiErrorDomain code:kOAIOrsonApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/orson/ai/tts"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        queryParams[@"accountId"] = accountId;
    }
    if (thirdPartyAccountId != nil) {
        queryParams[@"thirdPartyAccountId"] = thirdPartyAccountId;
    }
    if (text != nil) {
        queryParams[@"text"] = text;
    }
    if (language != nil) {
        queryParams[@"language"] = language;
    }
    if (voice != nil) {
        queryParams[@"voice"] = voice;
    }
    if (callback != nil) {
        queryParams[@"callback"] = callback;
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
                              responseType: @"OAIOrsonAiTTSResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIOrsonAiTTSResponse*)data, error);
                                }
                            }];
}



@end
