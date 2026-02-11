#import "OAIWordApi.h"
#import "OAIQueryParamCollection.h"
#import "OAIApiClient.h"
#import "OAISirqulResponse.h"
#import "OAIWordzWordResponse.h"


@interface OAIWordApi ()

@property (nonatomic, strong, readwrite) NSMutableDictionary *mutableDefaultHeaders;

@end

@implementation OAIWordApi

NSString* kOAIWordApiErrorDomain = @"OAIWordApiErrorDomain";
NSInteger kOAIWordApiMissingParamErrorCode = 234513;

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
/// Create Word
/// Create a word by the given params.
///  @param accountId The logged in user. 
///
///  @param word The text of the word. 
///
///  @param definition The definition of the word. 
///
///  @param active If true set the word to active. Default to false. 
///
///  @param allocateTickets If true then scoring will give tickets. Default to false. 
///
///  @param ticketCount The number of tickets to reward 
///
///  @param assetId The asset id of the word. (optional)
///
///  @param ticketType The type of ticket to reward, null means default type (optional)
///
///  @param points The number of points to award for completing a mission (optional)
///
///  @returns OAIWordzWordResponse*
///
-(NSURLSessionTask*) createWordWithAccountId: (NSNumber*) accountId
    word: (NSString*) word
    definition: (NSString*) definition
    active: (NSNumber*) active
    allocateTickets: (NSNumber*) allocateTickets
    ticketCount: (NSNumber*) ticketCount
    assetId: (NSNumber*) assetId
    ticketType: (NSString*) ticketType
    points: (NSNumber*) points
    completionHandler: (void (^)(OAIWordzWordResponse* output, NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kOAIWordApiErrorDomain code:kOAIWordApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'word' is set
    if (word == nil) {
        NSParameterAssert(word);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"word"] };
            NSError* error = [NSError errorWithDomain:kOAIWordApiErrorDomain code:kOAIWordApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'definition' is set
    if (definition == nil) {
        NSParameterAssert(definition);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"definition"] };
            NSError* error = [NSError errorWithDomain:kOAIWordApiErrorDomain code:kOAIWordApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'active' is set
    if (active == nil) {
        NSParameterAssert(active);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"active"] };
            NSError* error = [NSError errorWithDomain:kOAIWordApiErrorDomain code:kOAIWordApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'allocateTickets' is set
    if (allocateTickets == nil) {
        NSParameterAssert(allocateTickets);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"allocateTickets"] };
            NSError* error = [NSError errorWithDomain:kOAIWordApiErrorDomain code:kOAIWordApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'ticketCount' is set
    if (ticketCount == nil) {
        NSParameterAssert(ticketCount);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"ticketCount"] };
            NSError* error = [NSError errorWithDomain:kOAIWordApiErrorDomain code:kOAIWordApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/game/word/create"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        queryParams[@"accountId"] = accountId;
    }
    if (word != nil) {
        queryParams[@"word"] = word;
    }
    if (definition != nil) {
        queryParams[@"definition"] = definition;
    }
    if (assetId != nil) {
        queryParams[@"assetId"] = assetId;
    }
    if (active != nil) {
        queryParams[@"active"] = [active isEqual:@(YES)] ? @"true" : @"false";
    }
    if (allocateTickets != nil) {
        queryParams[@"allocateTickets"] = [allocateTickets isEqual:@(YES)] ? @"true" : @"false";
    }
    if (ticketCount != nil) {
        queryParams[@"ticketCount"] = ticketCount;
    }
    if (ticketType != nil) {
        queryParams[@"ticketType"] = ticketType;
    }
    if (points != nil) {
        queryParams[@"points"] = points;
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
                              responseType: @"OAIWordzWordResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIWordzWordResponse*)data, error);
                                }
                            }];
}

///
/// Delete Word
/// Delete a word by the given id. The accountId given needs to be the owner or executive to delete.
///  @param wordId The id of the word to delete. 
///
///  @param accountId The account vor validating permission 
///
///  @returns OAISirqulResponse*
///
-(NSURLSessionTask*) deleteWordWithWordId: (NSNumber*) wordId
    accountId: (NSNumber*) accountId
    completionHandler: (void (^)(OAISirqulResponse* output, NSError* error)) handler {
    // verify the required parameter 'wordId' is set
    if (wordId == nil) {
        NSParameterAssert(wordId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"wordId"] };
            NSError* error = [NSError errorWithDomain:kOAIWordApiErrorDomain code:kOAIWordApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kOAIWordApiErrorDomain code:kOAIWordApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/game/word/delete"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (wordId != nil) {
        queryParams[@"wordId"] = wordId;
    }
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
                                    method: @"DELETE"
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
/// Get Word
/// Get a word by the given id.
///  @param wordId The id of the word to get. 
///
///  @param accountId The logged in user. 
///
///  @returns OAIWordzWordResponse*
///
-(NSURLSessionTask*) getWordWithWordId: (NSNumber*) wordId
    accountId: (NSNumber*) accountId
    completionHandler: (void (^)(OAIWordzWordResponse* output, NSError* error)) handler {
    // verify the required parameter 'wordId' is set
    if (wordId == nil) {
        NSParameterAssert(wordId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"wordId"] };
            NSError* error = [NSError errorWithDomain:kOAIWordApiErrorDomain code:kOAIWordApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kOAIWordApiErrorDomain code:kOAIWordApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/game/word/get"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (wordId != nil) {
        queryParams[@"wordId"] = wordId;
    }
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
                              responseType: @"OAIWordzWordResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIWordzWordResponse*)data, error);
                                }
                            }];
}

///
/// Search Words
/// Search for words by the given params.
///  @param accountId The logged in user. 
///
///  @param sortField The column to sort the search on 
///
///  @param descending The order to return the search results 
///
///  @param activeOnly Return only active results if set to true. 
///
///  @param start The record to begin the return set on. 
///
///  @param limit The number of records to return. 
///
///  @param keyword The keyword for searching words with matching definition or word text. (optional)
///
///  @returns NSArray<OAIWordzWordResponse>*
///
-(NSURLSessionTask*) getWordsWithAccountId: (NSNumber*) accountId
    sortField: (NSString*) sortField
    descending: (NSNumber*) descending
    activeOnly: (NSNumber*) activeOnly
    start: (NSNumber*) start
    limit: (NSNumber*) limit
    keyword: (NSString*) keyword
    completionHandler: (void (^)(NSArray<OAIWordzWordResponse>* output, NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kOAIWordApiErrorDomain code:kOAIWordApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'sortField' is set
    if (sortField == nil) {
        NSParameterAssert(sortField);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"sortField"] };
            NSError* error = [NSError errorWithDomain:kOAIWordApiErrorDomain code:kOAIWordApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'descending' is set
    if (descending == nil) {
        NSParameterAssert(descending);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"descending"] };
            NSError* error = [NSError errorWithDomain:kOAIWordApiErrorDomain code:kOAIWordApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'activeOnly' is set
    if (activeOnly == nil) {
        NSParameterAssert(activeOnly);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"activeOnly"] };
            NSError* error = [NSError errorWithDomain:kOAIWordApiErrorDomain code:kOAIWordApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'start' is set
    if (start == nil) {
        NSParameterAssert(start);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"start"] };
            NSError* error = [NSError errorWithDomain:kOAIWordApiErrorDomain code:kOAIWordApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'limit' is set
    if (limit == nil) {
        NSParameterAssert(limit);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"limit"] };
            NSError* error = [NSError errorWithDomain:kOAIWordApiErrorDomain code:kOAIWordApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/game/word/search"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

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
    if (activeOnly != nil) {
        queryParams[@"activeOnly"] = [activeOnly isEqual:@(YES)] ? @"true" : @"false";
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
                              responseType: @"NSArray<OAIWordzWordResponse>*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSArray<OAIWordzWordResponse>*)data, error);
                                }
                            }];
}

///
/// Update Word
/// Update a word by the given params.
///  @param wordId The id of the word to update. 
///
///  @param accountId The logged in user. 
///
///  @param ticketCount The number of tickets to reward 
///
///  @param wordText The text for the word (optional)
///
///  @param definition The definition of the word. (optional)
///
///  @param assetId The asset id of the word. (optional)
///
///  @param active If true set the word to active. (optional)
///
///  @param allocateTickets If true then scoring will give tickets. (optional)
///
///  @param ticketType The type of ticket to reward, null means default type (optional)
///
///  @param points The number of points to award for completing a mission (optional)
///
///  @returns OAIWordzWordResponse*
///
-(NSURLSessionTask*) updateWordWithWordId: (NSNumber*) wordId
    accountId: (NSNumber*) accountId
    ticketCount: (NSNumber*) ticketCount
    wordText: (NSString*) wordText
    definition: (NSString*) definition
    assetId: (NSNumber*) assetId
    active: (NSNumber*) active
    allocateTickets: (NSNumber*) allocateTickets
    ticketType: (NSString*) ticketType
    points: (NSNumber*) points
    completionHandler: (void (^)(OAIWordzWordResponse* output, NSError* error)) handler {
    // verify the required parameter 'wordId' is set
    if (wordId == nil) {
        NSParameterAssert(wordId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"wordId"] };
            NSError* error = [NSError errorWithDomain:kOAIWordApiErrorDomain code:kOAIWordApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kOAIWordApiErrorDomain code:kOAIWordApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'ticketCount' is set
    if (ticketCount == nil) {
        NSParameterAssert(ticketCount);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"ticketCount"] };
            NSError* error = [NSError errorWithDomain:kOAIWordApiErrorDomain code:kOAIWordApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/game/word/update"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (wordId != nil) {
        queryParams[@"wordId"] = wordId;
    }
    if (accountId != nil) {
        queryParams[@"accountId"] = accountId;
    }
    if (wordText != nil) {
        queryParams[@"wordText"] = wordText;
    }
    if (definition != nil) {
        queryParams[@"definition"] = definition;
    }
    if (assetId != nil) {
        queryParams[@"assetId"] = assetId;
    }
    if (active != nil) {
        queryParams[@"active"] = [active isEqual:@(YES)] ? @"true" : @"false";
    }
    if (allocateTickets != nil) {
        queryParams[@"allocateTickets"] = [allocateTickets isEqual:@(YES)] ? @"true" : @"false";
    }
    if (ticketCount != nil) {
        queryParams[@"ticketCount"] = ticketCount;
    }
    if (ticketType != nil) {
        queryParams[@"ticketType"] = ticketType;
    }
    if (points != nil) {
        queryParams[@"points"] = points;
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
                              responseType: @"OAIWordzWordResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIWordzWordResponse*)data, error);
                                }
                            }];
}



@end
