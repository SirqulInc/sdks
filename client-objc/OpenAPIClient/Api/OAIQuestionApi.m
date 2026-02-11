#import "OAIQuestionApi.h"
#import "OAIQueryParamCollection.h"
#import "OAIApiClient.h"
#import "OAIQuestionResponse.h"
#import "OAISirqulResponse.h"


@interface OAIQuestionApi ()

@property (nonatomic, strong, readwrite) NSMutableDictionary *mutableDefaultHeaders;

@end

@implementation OAIQuestionApi

NSString* kOAIQuestionApiErrorDomain = @"OAIQuestionApiErrorDomain";
NSInteger kOAIQuestionApiMissingParamErrorCode = 234513;

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
/// Create Question
/// Create a question and related answers by the given params.
///  @param accountId the id of the logged in user 
///
///  @param question the text of the question 
///
///  @param answers ```json [   {     \"text\": \"1942\",     \"image\": 123,     \"videoURL\": \"http://www.here.com\",     \"correct\": true   },   {     \"text\": \"1943\",     \"image\": 124,     \"videoURL\": \"http://www.there.com\",     \"correct\": false   } ] ```  
///
///  @param active If true set the question to active. Default to false. 
///
///  @param allocateTickets If true then scoring will give tickets. Default to false. 
///
///  @param ticketCount The number of tickets to reward 
///
///  @param tags The tags of the question for search. (optional)
///
///  @param videoURL The video link for the question. (optional)
///
///  @param assetId The asset id of the question. (optional)
///
///  @param ticketType The type of ticket to reward, null means default type (optional)
///
///  @param points The number of points to award for completing a mission (optional)
///
///  @returns OAIQuestionResponse*
///
-(NSURLSessionTask*) createQuestionWithAccountId: (NSNumber*) accountId
    question: (NSString*) question
    answers: (NSString*) answers
    active: (NSNumber*) active
    allocateTickets: (NSNumber*) allocateTickets
    ticketCount: (NSNumber*) ticketCount
    tags: (NSString*) tags
    videoURL: (NSString*) videoURL
    assetId: (NSNumber*) assetId
    ticketType: (NSString*) ticketType
    points: (NSNumber*) points
    completionHandler: (void (^)(OAIQuestionResponse* output, NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kOAIQuestionApiErrorDomain code:kOAIQuestionApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'question' is set
    if (question == nil) {
        NSParameterAssert(question);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"question"] };
            NSError* error = [NSError errorWithDomain:kOAIQuestionApiErrorDomain code:kOAIQuestionApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'answers' is set
    if (answers == nil) {
        NSParameterAssert(answers);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"answers"] };
            NSError* error = [NSError errorWithDomain:kOAIQuestionApiErrorDomain code:kOAIQuestionApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'active' is set
    if (active == nil) {
        NSParameterAssert(active);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"active"] };
            NSError* error = [NSError errorWithDomain:kOAIQuestionApiErrorDomain code:kOAIQuestionApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'allocateTickets' is set
    if (allocateTickets == nil) {
        NSParameterAssert(allocateTickets);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"allocateTickets"] };
            NSError* error = [NSError errorWithDomain:kOAIQuestionApiErrorDomain code:kOAIQuestionApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'ticketCount' is set
    if (ticketCount == nil) {
        NSParameterAssert(ticketCount);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"ticketCount"] };
            NSError* error = [NSError errorWithDomain:kOAIQuestionApiErrorDomain code:kOAIQuestionApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/game/question/create"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        queryParams[@"accountId"] = accountId;
    }
    if (question != nil) {
        queryParams[@"question"] = question;
    }
    if (answers != nil) {
        queryParams[@"answers"] = answers;
    }
    if (tags != nil) {
        queryParams[@"tags"] = tags;
    }
    if (videoURL != nil) {
        queryParams[@"videoURL"] = videoURL;
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
                              responseType: @"OAIQuestionResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIQuestionResponse*)data, error);
                                }
                            }];
}

///
/// Delete Question
/// Delete a question by the given questionId. The accountId given needs to be the owner or executive to delete.
///  @param questionId the id of the question to delete 
///
///  @param accountId the id of the account that can execute this request 
///
///  @returns OAISirqulResponse*
///
-(NSURLSessionTask*) deleteQuestionWithQuestionId: (NSNumber*) questionId
    accountId: (NSNumber*) accountId
    completionHandler: (void (^)(OAISirqulResponse* output, NSError* error)) handler {
    // verify the required parameter 'questionId' is set
    if (questionId == nil) {
        NSParameterAssert(questionId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"questionId"] };
            NSError* error = [NSError errorWithDomain:kOAIQuestionApiErrorDomain code:kOAIQuestionApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kOAIQuestionApiErrorDomain code:kOAIQuestionApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/game/question/delete"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (questionId != nil) {
        queryParams[@"questionId"] = questionId;
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
/// Get Question
/// Get a question by the given id.
///  @param questionId the id of the question to get 
///
///  @param accountId the id of the account that can make this request 
///
///  @returns OAIQuestionResponse*
///
-(NSURLSessionTask*) getQuestionWithQuestionId: (NSNumber*) questionId
    accountId: (NSNumber*) accountId
    completionHandler: (void (^)(OAIQuestionResponse* output, NSError* error)) handler {
    // verify the required parameter 'questionId' is set
    if (questionId == nil) {
        NSParameterAssert(questionId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"questionId"] };
            NSError* error = [NSError errorWithDomain:kOAIQuestionApiErrorDomain code:kOAIQuestionApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kOAIQuestionApiErrorDomain code:kOAIQuestionApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/game/question/get"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (questionId != nil) {
        queryParams[@"questionId"] = questionId;
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
                              responseType: @"OAIQuestionResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIQuestionResponse*)data, error);
                                }
                            }];
}

///
/// Search Questions
/// Search for questions by the given params.
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
///  @param keyword The keyword for searching questions with matching tags or question text. (optional)
///
///  @returns NSArray<OAIQuestionResponse>*
///
-(NSURLSessionTask*) searchQuestionsWithAccountId: (NSNumber*) accountId
    sortField: (NSString*) sortField
    descending: (NSNumber*) descending
    activeOnly: (NSNumber*) activeOnly
    start: (NSNumber*) start
    limit: (NSNumber*) limit
    keyword: (NSString*) keyword
    completionHandler: (void (^)(NSArray<OAIQuestionResponse>* output, NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kOAIQuestionApiErrorDomain code:kOAIQuestionApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'sortField' is set
    if (sortField == nil) {
        NSParameterAssert(sortField);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"sortField"] };
            NSError* error = [NSError errorWithDomain:kOAIQuestionApiErrorDomain code:kOAIQuestionApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'descending' is set
    if (descending == nil) {
        NSParameterAssert(descending);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"descending"] };
            NSError* error = [NSError errorWithDomain:kOAIQuestionApiErrorDomain code:kOAIQuestionApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'activeOnly' is set
    if (activeOnly == nil) {
        NSParameterAssert(activeOnly);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"activeOnly"] };
            NSError* error = [NSError errorWithDomain:kOAIQuestionApiErrorDomain code:kOAIQuestionApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'start' is set
    if (start == nil) {
        NSParameterAssert(start);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"start"] };
            NSError* error = [NSError errorWithDomain:kOAIQuestionApiErrorDomain code:kOAIQuestionApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'limit' is set
    if (limit == nil) {
        NSParameterAssert(limit);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"limit"] };
            NSError* error = [NSError errorWithDomain:kOAIQuestionApiErrorDomain code:kOAIQuestionApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/game/question/search"];

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
                              responseType: @"NSArray<OAIQuestionResponse>*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSArray<OAIQuestionResponse>*)data, error);
                                }
                            }];
}

///
/// Update Question
/// Update a question and related answers.
///  @param questionId The id of the question to update. 
///
///  @param accountId The logged in user. 
///
///  @param ticketCount The number of tickets to reward 
///
///  @param question The text of the question. (optional)
///
///  @param answers The json representations of answers for the question. (optional)
///
///  @param tags The tags of the question for search. (optional)
///
///  @param videoURL The video link for the question. (optional)
///
///  @param assetId The asset id of the question. (optional)
///
///  @param active If true set the question to active. (optional)
///
///  @param allocateTickets If true then scoring will give tickets. (optional)
///
///  @param ticketType The type of ticket to reward, null means default type (optional)
///
///  @param points The number of points to award for completing a mission (optional)
///
///  @returns OAIQuestionResponse*
///
-(NSURLSessionTask*) updateQuestionWithQuestionId: (NSNumber*) questionId
    accountId: (NSNumber*) accountId
    ticketCount: (NSNumber*) ticketCount
    question: (NSString*) question
    answers: (NSString*) answers
    tags: (NSString*) tags
    videoURL: (NSString*) videoURL
    assetId: (NSNumber*) assetId
    active: (NSNumber*) active
    allocateTickets: (NSNumber*) allocateTickets
    ticketType: (NSString*) ticketType
    points: (NSNumber*) points
    completionHandler: (void (^)(OAIQuestionResponse* output, NSError* error)) handler {
    // verify the required parameter 'questionId' is set
    if (questionId == nil) {
        NSParameterAssert(questionId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"questionId"] };
            NSError* error = [NSError errorWithDomain:kOAIQuestionApiErrorDomain code:kOAIQuestionApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kOAIQuestionApiErrorDomain code:kOAIQuestionApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'ticketCount' is set
    if (ticketCount == nil) {
        NSParameterAssert(ticketCount);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"ticketCount"] };
            NSError* error = [NSError errorWithDomain:kOAIQuestionApiErrorDomain code:kOAIQuestionApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/game/question/update"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (questionId != nil) {
        queryParams[@"questionId"] = questionId;
    }
    if (accountId != nil) {
        queryParams[@"accountId"] = accountId;
    }
    if (question != nil) {
        queryParams[@"question"] = question;
    }
    if (answers != nil) {
        queryParams[@"answers"] = answers;
    }
    if (tags != nil) {
        queryParams[@"tags"] = tags;
    }
    if (videoURL != nil) {
        queryParams[@"videoURL"] = videoURL;
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
                              responseType: @"OAIQuestionResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIQuestionResponse*)data, error);
                                }
                            }];
}



@end
