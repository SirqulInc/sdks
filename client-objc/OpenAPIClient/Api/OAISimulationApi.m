#import "OAISimulationApi.h"
#import "OAIQueryParamCollection.h"
#import "OAIApiClient.h"
#import "OAISirqulResponse.h"


@interface OAISimulationApi ()

@property (nonatomic, strong, readwrite) NSMutableDictionary *mutableDefaultHeaders;

@end

@implementation OAISimulationApi

NSString* kOAISimulationApiErrorDomain = @"OAISimulationApiErrorDomain";
NSInteger kOAISimulationApiMissingParamErrorCode = 234513;

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
/// Routing Simulation
/// Simulates routing requests.
///  @param data JSON string in the following format: ```json {   \"startDate\": 1474268400000,   \"endDate\": 1474268700000,   \"checkoutStops\": [     {       \"latitude\": 25.060453943481615,       \"longitude\": 121.57487118216957     }   ],   \"requests\": [     {       \"vehicles\": [         {           \"id\": \"customer1\",           \"name\": \"Customer 1\",           \"depot\": {             \"latitude\": 25.060453943481615,             \"longitude\": 121.57487118216957           },           \"startWindow\": 1474268464537         }       ],       \"items\": [         {           \"id\": 152712,           \"name\": \"Appliance Product\",           \"pickup\": {             \"latitude\": 25.060306635544144,             \"longitude\": 121.5750770690688           }         },         {           \"id\": 152711,           \"name\": \"TV product\",           \"pickup\": {             \"latitude\": 25.060126352576326,             \"longitude\": 121.57505023621624           }         }       ]     }   ],   \"featuredItems\": [],   \"floorPlan\": {     \"metersPerX\": 0.81493109028875,     \"metersPerY\": 1.8525267552262,     \"width\": 75,     \"height\": 50,     \"exclusions\": [       { \"x\": 14, \"y\": 49 }     ],     \"southwest\": {       \"x\": 0,       \"y\": 0,       \"latitude\": 25.05961539530497,       \"longitude\": 121.57487591737885     }   } } ```  
///
///  @param realTime determines whether to run the simulation and return the results in the same request 
///
///  @returns OAISirqulResponse*
///
-(NSURLSessionTask*) simulationWithData: (NSString*) data
    realTime: (NSNumber*) realTime
    completionHandler: (void (^)(OAISirqulResponse* output, NSError* error)) handler {
    // verify the required parameter 'data' is set
    if (data == nil) {
        NSParameterAssert(data);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"data"] };
            NSError* error = [NSError errorWithDomain:kOAISimulationApiErrorDomain code:kOAISimulationApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'realTime' is set
    if (realTime == nil) {
        NSParameterAssert(realTime);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"realTime"] };
            NSError* error = [NSError errorWithDomain:kOAISimulationApiErrorDomain code:kOAISimulationApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/simulation/routing"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (data != nil) {
        queryParams[@"data"] = data;
    }
    if (realTime != nil) {
        queryParams[@"realTime"] = [realTime isEqual:@(YES)] ? @"true" : @"false";
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
