#import "OAIAccountApi.h"
#import "OAIQueryParamCollection.h"
#import "OAIApiClient.h"
#import "OAIAccountLoginResponse.h"
#import "OAIAssetListResponse.h"
#import "OAIProfileInfoResponse.h"
#import "OAIProfileResponse.h"
#import "OAISirqulResponse.h"
#import "OAIUserLocationSearchResponse.h"
#import "OAIUserSettingsResponse.h"


@interface OAIAccountApi ()

@property (nonatomic, strong, readwrite) NSMutableDictionary *mutableDefaultHeaders;

@end

@implementation OAIAccountApi

NSString* kOAIAccountApiErrorDomain = @"OAIAccountApiErrorDomain";
NSInteger kOAIAccountApiMissingParamErrorCode = 234513;

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
/// Search Accounts by Location
/// Search accounts by their location. This only searches on users that have location data. Use ConnectionApi to perform a regular search on accounts.
///  @param version  
///
///  @param deviceId The device id (deviceId or accountId required) (optional)
///
///  @param accountId The account id of the user (deviceId or accountId required) (optional)
///
///  @param q Deprecated - legacy query parameter (optional)
///
///  @param keyword An optional keyword to search on, will be ignore if empty (NOT implemented yet) (optional)
///
///  @param postalCode The postal code to search on, either postalCode or the user's exact location is required (optional)
///
///  @param latitude The latitude of the user, either postalCode or the user's exact location is required (optional)
///
///  @param longitude The longitude of the user, either postalCode or the user's exact location is required (optional)
///
///  @param appKey The application key (optional)
///
///  @param range The range to search on (optional, default to @10)
///
///  @param locationLastUpdated Searches for user's that has updated their location since this date (optional)
///
///  @param gender The preferred gender (optional)
///
///  @param minAge The preferred min age (optional)
///
///  @param maxAge The preferred max age (optional)
///
///  @param companionshipIndex The preferred companionship index (optional)
///
///  @param i this is the start index of a query (optional)
///
///  @param start Start of the pagination (optional, default to @0)
///
///  @param l this is the limit index of a query (optional)
///
///  @param limit Limit of the pagination (optional, default to @100)
///
///  @param searchMode Search mode to use for index searches (e.g. CLOUDINDEX, OPENSEARCH) (optional)
///
///  @param sortField Sorting field for results (default: DISTANCE) (optional)
///
///  @param descending Whether to sort descending (default: false) (optional)
///
///  @param roles Roles to filter on (optional)
///
///  @param tags Tags to filter on (optional)
///
///  @param experience The experience to filter on (optional)
///
///  @param categoryIds The category ids to filter on (comma separated) (optional)
///
///  @param audienceIds The audience ids to filter on (comma separated) (optional)
///
///  @param audienceOperator Operator used to combine audience filters (default: AND) (optional, default to @"AND")
///
///  @param updateCurrentLocation Whether to use the given lat & long to update the user's current location (optional, default to @(NO))
///
///  @param updatePreferredSettings Whether to use the given parameters to update the user's preferred settings (optional, default to @(NO))
///
///  @param showExactLocations Determines whether to always display user exact locations (optional, default to @(YES))
///
///  @param showConnectionToSearcher Return connection of the accounts in the result to the passed in account if there exists any (optional, default to @(NO))
///
///  @param flagCountMinimum Return any results that have a minimum of the specified flag count (even ones that have met the flag threshold) (optional)
///
///  @param verifiedUserOnly Returns only verified users (optional)
///
///  @param contentAdminOnly Returns only content admin users (optional)
///
///  @returns OAIUserLocationSearchResponse*
///
-(NSURLSessionTask*) accountLocationSearchWithVersion: (NSNumber*) version
    deviceId: (NSString*) deviceId
    accountId: (NSNumber*) accountId
    q: (NSString*) q
    keyword: (NSString*) keyword
    postalCode: (NSString*) postalCode
    latitude: (NSNumber*) latitude
    longitude: (NSNumber*) longitude
    appKey: (NSString*) appKey
    range: (NSNumber*) range
    locationLastUpdated: (NSNumber*) locationLastUpdated
    gender: (NSString*) gender
    minAge: (NSNumber*) minAge
    maxAge: (NSNumber*) maxAge
    companionshipIndex: (NSNumber*) companionshipIndex
    i: (NSNumber*) i
    start: (NSNumber*) start
    l: (NSNumber*) l
    limit: (NSNumber*) limit
    searchMode: (NSString*) searchMode
    sortField: (NSString*) sortField
    descending: (NSNumber*) descending
    roles: (NSString*) roles
    tags: (NSString*) tags
    experience: (NSString*) experience
    categoryIds: (NSString*) categoryIds
    audienceIds: (NSString*) audienceIds
    audienceOperator: (NSString*) audienceOperator
    updateCurrentLocation: (NSNumber*) updateCurrentLocation
    updatePreferredSettings: (NSNumber*) updatePreferredSettings
    showExactLocations: (NSNumber*) showExactLocations
    showConnectionToSearcher: (NSNumber*) showConnectionToSearcher
    flagCountMinimum: (NSNumber*) flagCountMinimum
    verifiedUserOnly: (NSNumber*) verifiedUserOnly
    contentAdminOnly: (NSNumber*) contentAdminOnly
    completionHandler: (void (^)(OAIUserLocationSearchResponse* output, NSError* error)) handler {
    // verify the required parameter 'version' is set
    if (version == nil) {
        NSParameterAssert(version);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"version"] };
            NSError* error = [NSError errorWithDomain:kOAIAccountApiErrorDomain code:kOAIAccountApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/{version}/account/search"];

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
    if (q != nil) {
        queryParams[@"q"] = q;
    }
    if (keyword != nil) {
        queryParams[@"keyword"] = keyword;
    }
    if (postalCode != nil) {
        queryParams[@"postalCode"] = postalCode;
    }
    if (latitude != nil) {
        queryParams[@"latitude"] = latitude;
    }
    if (longitude != nil) {
        queryParams[@"longitude"] = longitude;
    }
    if (appKey != nil) {
        queryParams[@"appKey"] = appKey;
    }
    if (range != nil) {
        queryParams[@"range"] = range;
    }
    if (locationLastUpdated != nil) {
        queryParams[@"locationLastUpdated"] = locationLastUpdated;
    }
    if (gender != nil) {
        queryParams[@"gender"] = gender;
    }
    if (minAge != nil) {
        queryParams[@"minAge"] = minAge;
    }
    if (maxAge != nil) {
        queryParams[@"maxAge"] = maxAge;
    }
    if (companionshipIndex != nil) {
        queryParams[@"companionshipIndex"] = companionshipIndex;
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
    if (searchMode != nil) {
        queryParams[@"searchMode"] = searchMode;
    }
    if (sortField != nil) {
        queryParams[@"sortField"] = sortField;
    }
    if (descending != nil) {
        queryParams[@"descending"] = [descending isEqual:@(YES)] ? @"true" : @"false";
    }
    if (roles != nil) {
        queryParams[@"roles"] = roles;
    }
    if (tags != nil) {
        queryParams[@"tags"] = tags;
    }
    if (experience != nil) {
        queryParams[@"experience"] = experience;
    }
    if (categoryIds != nil) {
        queryParams[@"categoryIds"] = categoryIds;
    }
    if (audienceIds != nil) {
        queryParams[@"audienceIds"] = audienceIds;
    }
    if (audienceOperator != nil) {
        queryParams[@"audienceOperator"] = audienceOperator;
    }
    if (updateCurrentLocation != nil) {
        queryParams[@"updateCurrentLocation"] = [updateCurrentLocation isEqual:@(YES)] ? @"true" : @"false";
    }
    if (updatePreferredSettings != nil) {
        queryParams[@"updatePreferredSettings"] = [updatePreferredSettings isEqual:@(YES)] ? @"true" : @"false";
    }
    if (showExactLocations != nil) {
        queryParams[@"showExactLocations"] = [showExactLocations isEqual:@(YES)] ? @"true" : @"false";
    }
    if (showConnectionToSearcher != nil) {
        queryParams[@"showConnectionToSearcher"] = [showConnectionToSearcher isEqual:@(YES)] ? @"true" : @"false";
    }
    if (flagCountMinimum != nil) {
        queryParams[@"flagCountMinimum"] = flagCountMinimum;
    }
    if (verifiedUserOnly != nil) {
        queryParams[@"verifiedUserOnly"] = [verifiedUserOnly isEqual:@(YES)] ? @"true" : @"false";
    }
    if (contentAdminOnly != nil) {
        queryParams[@"contentAdminOnly"] = [contentAdminOnly isEqual:@(YES)] ? @"true" : @"false";
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
                              responseType: @"OAIUserLocationSearchResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIUserLocationSearchResponse*)data, error);
                                }
                            }];
}

///
/// Block Account
/// Moves or removes an account into the user's blocked group.
///  @param version  
///
///  @param accountIdBeingBlocked The id of the account to be blocked/unblocked 
///
///  @param deviceId The device id (deviceId or accountId required) (optional)
///
///  @param accountId The account id of the user (deviceId or accountId required) (optional)
///
///  @param blockFlagValue Determines whether the account is blocked or unblocked (optional, default to @(YES))
///
///  @param removeFromGroupsIfBlocked Determines whether the account is removed from all other groups if blocked (optional, default to @(NO))
///
///  @param latitude The current latitude of the user (optional)
///
///  @param longitude The current longitude of the user (optional)
///
///  @returns OAISirqulResponse*
///
-(NSURLSessionTask*) blockAccountWithVersion: (NSNumber*) version
    accountIdBeingBlocked: (NSNumber*) accountIdBeingBlocked
    deviceId: (NSString*) deviceId
    accountId: (NSNumber*) accountId
    blockFlagValue: (NSNumber*) blockFlagValue
    removeFromGroupsIfBlocked: (NSNumber*) removeFromGroupsIfBlocked
    latitude: (NSNumber*) latitude
    longitude: (NSNumber*) longitude
    completionHandler: (void (^)(OAISirqulResponse* output, NSError* error)) handler {
    // verify the required parameter 'version' is set
    if (version == nil) {
        NSParameterAssert(version);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"version"] };
            NSError* error = [NSError errorWithDomain:kOAIAccountApiErrorDomain code:kOAIAccountApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'accountIdBeingBlocked' is set
    if (accountIdBeingBlocked == nil) {
        NSParameterAssert(accountIdBeingBlocked);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountIdBeingBlocked"] };
            NSError* error = [NSError errorWithDomain:kOAIAccountApiErrorDomain code:kOAIAccountApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/{version}/account/block"];

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
    if (accountIdBeingBlocked != nil) {
        queryParams[@"accountIdBeingBlocked"] = accountIdBeingBlocked;
    }
    if (blockFlagValue != nil) {
        queryParams[@"blockFlagValue"] = [blockFlagValue isEqual:@(YES)] ? @"true" : @"false";
    }
    if (removeFromGroupsIfBlocked != nil) {
        queryParams[@"removeFromGroupsIfBlocked"] = [removeFromGroupsIfBlocked isEqual:@(YES)] ? @"true" : @"false";
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

///
/// Create Account
/// Create a new account by role.
///  @param version  
///
///  @param username The access token to authenticate with (ex: username) 
///
///  @param password The secret to authenticate with (ex: password) 
///
///  @param name The full name of the user. If this parameter is NOT empty, the following parameters will be ignored: prefixName, firstName, middleName, lastName, and suffixName (optional)
///
///  @param prefixName If the parameter 'name' is empty or not present, this field will be used to set the prefix of the user's name (optional)
///
///  @param firstName If the parameter 'name' is empty or not present, this field will be used to set the user's first name (optional)
///
///  @param middleName If the parameter 'name' is empty or not present, this field will be used to set the user's middle name (optional)
///
///  @param lastName If the parameter 'name' is empty or not present, this field will be used to set the user's last name (optional)
///
///  @param suffixName If the parameter 'name' is empty or not present, this field will be used to set the suffix of the user's name (optional)
///
///  @param title This field will be used to set the user's job title (optional)
///
///  @param deviceId The unique id of the device making the request (optional)
///
///  @param deviceIdType The type of device id (this is defined by the client), ie. MAC_ADDRESS, APPLE_UDID, etc (optional)
///
///  @param emailAddress The user's contact email address (NOT the username) (optional)
///
///  @param assetId The asset id to set the user's profile image (optional)
///
///  @param streetAddress The street address of the user's contact location (optional)
///
///  @param zipcode The zipcode of the user's contact location (optional)
///
///  @param gender The gender of the user (AudienceGender) (optional)
///
///  @param birthday The birthday date of the user in UTC milliseconds (optional)
///
///  @param homePhone The home phone number (optional)
///
///  @param cellPhone The cellular phone number (optional)
///
///  @param cellPhoneCarrier The cellular service provider (optional)
///
///  @param businessPhone The business phone number (optional)
///
///  @param role The account role (default: MEMBER) (optional)
///
///  @param platforms Comma separated list of development platforms (optional)
///
///  @param tags Search tags (optional)
///
///  @param aboutUs About us information (optional)
///
///  @param gameExperience Game experience of the user (optional)
///
///  @param categoryIds A list of category ids that represent interests and associations (optional)
///
///  @param hometown The user's hometown (optional)
///
///  @param height The user's height (optional)
///
///  @param heightIndex The user's height in a numerical value that can be used for ordering/searching (optional)
///
///  @param ethnicity The user's ethnicity (optional)
///
///  @param bodyType The user's body type (optional)
///
///  @param maritalStatus The user's marital status (optional)
///
///  @param children The user's children status (optional)
///
///  @param religion The user's religion (optional)
///
///  @param education The user's education (optional)
///
///  @param educationIndex The user's education in a numerical value that can be used for ordering/searching (optional)
///
///  @param smoke The user's smoke status (optional)
///
///  @param drink The user's drink status (optional)
///
///  @param companionship The user's companionship status (optional)
///
///  @param companionshipIndex The user's companionship index (optional)
///
///  @param preferredMinAge The preferred minimum age in the account location search (optional)
///
///  @param preferredMaxAge The preferred maximum age in the account location search (optional)
///
///  @param preferredMinHeight The preferred minimum height in the account location search (optional)
///
///  @param preferredMaxHeight The preferred maximum height in the account location search (optional)
///
///  @param preferredGender The preferred gender in the account location search (optional)
///
///  @param preferredEducation The preferred education in the account location search (optional)
///
///  @param preferredEducationIndex The preferred education in a numerical value that can be used for ordering/searching (optional)
///
///  @param preferredBodyType The preferred body type in the account location search (optional)
///
///  @param preferredEthnicity The preferred ethnicity in the account location search (optional)
///
///  @param preferredLocation The preferred location in the account location search (optional)
///
///  @param preferredLocationRange The preferred location range in the account location search (optional)
///
///  @param latitude The current latitude of the user (optional)
///
///  @param longitude The current longitude of the user (optional)
///
///  @param acceptedTerms Accepted Terms (optional)
///
///  @param inviteToken The inviteToken that the referrer used for this account to sign up (optional)
///
///  @param referralAccountId The accountId of the referrer (used if there is no inviteToken) (optional)
///
///  @param sendValidation Whether to send validation email (optional)
///
///  @param gameType Deprecated: use appKey (optional)
///
///  @param appKey The application key (optional)
///
///  @param appVersion The application version (optional)
///
///  @param responseType Returns an AccountLoginResponse if \"AccountLoginResponse\" is passed in (optional)
///
///  @param audienceIdsToAdd Comma separated list of audience ids to assign to the user (optional)
///
///  @param appBlob Application blob data (optional)
///
///  @param appEnablePush Enable push for the app (optional)
///
///  @param appEnableSMS Enable SMS for the app (optional)
///
///  @param appEnableEmail Enable email for the app (optional)
///
///  @param locationVisibility Location visibility setting (optional)
///
///  @param homeLatitude Home latitude (optional)
///
///  @param homeLongitude Home longitude (optional)
///
///  @param appNickname The nickname used in the application for this account (optional)
///
///  @param personalAudienceId Personal audience id to associate with this account (optional)
///
///  @returns OAIAccountLoginResponse*
///
-(NSURLSessionTask*) createAccountWithVersion: (NSNumber*) version
    username: (NSString*) username
    password: (NSString*) password
    name: (NSString*) name
    prefixName: (NSString*) prefixName
    firstName: (NSString*) firstName
    middleName: (NSString*) middleName
    lastName: (NSString*) lastName
    suffixName: (NSString*) suffixName
    title: (NSString*) title
    deviceId: (NSString*) deviceId
    deviceIdType: (NSString*) deviceIdType
    emailAddress: (NSString*) emailAddress
    assetId: (NSNumber*) assetId
    streetAddress: (NSString*) streetAddress
    zipcode: (NSString*) zipcode
    gender: (NSString*) gender
    birthday: (NSNumber*) birthday
    homePhone: (NSString*) homePhone
    cellPhone: (NSString*) cellPhone
    cellPhoneCarrier: (NSString*) cellPhoneCarrier
    businessPhone: (NSString*) businessPhone
    role: (NSString*) role
    platforms: (NSString*) platforms
    tags: (NSString*) tags
    aboutUs: (NSString*) aboutUs
    gameExperience: (NSString*) gameExperience
    categoryIds: (NSString*) categoryIds
    hometown: (NSString*) hometown
    height: (NSString*) height
    heightIndex: (NSNumber*) heightIndex
    ethnicity: (NSString*) ethnicity
    bodyType: (NSString*) bodyType
    maritalStatus: (NSString*) maritalStatus
    children: (NSString*) children
    religion: (NSString*) religion
    education: (NSString*) education
    educationIndex: (NSNumber*) educationIndex
    smoke: (NSString*) smoke
    drink: (NSString*) drink
    companionship: (NSString*) companionship
    companionshipIndex: (NSNumber*) companionshipIndex
    preferredMinAge: (NSNumber*) preferredMinAge
    preferredMaxAge: (NSNumber*) preferredMaxAge
    preferredMinHeight: (NSNumber*) preferredMinHeight
    preferredMaxHeight: (NSNumber*) preferredMaxHeight
    preferredGender: (NSString*) preferredGender
    preferredEducation: (NSString*) preferredEducation
    preferredEducationIndex: (NSNumber*) preferredEducationIndex
    preferredBodyType: (NSString*) preferredBodyType
    preferredEthnicity: (NSString*) preferredEthnicity
    preferredLocation: (NSString*) preferredLocation
    preferredLocationRange: (NSNumber*) preferredLocationRange
    latitude: (NSNumber*) latitude
    longitude: (NSNumber*) longitude
    acceptedTerms: (NSNumber*) acceptedTerms
    inviteToken: (NSString*) inviteToken
    referralAccountId: (NSNumber*) referralAccountId
    sendValidation: (NSNumber*) sendValidation
    gameType: (NSString*) gameType
    appKey: (NSString*) appKey
    appVersion: (NSString*) appVersion
    responseType: (NSString*) responseType
    audienceIdsToAdd: (NSString*) audienceIdsToAdd
    appBlob: (NSString*) appBlob
    appEnablePush: (NSNumber*) appEnablePush
    appEnableSMS: (NSNumber*) appEnableSMS
    appEnableEmail: (NSNumber*) appEnableEmail
    locationVisibility: (NSString*) locationVisibility
    homeLatitude: (NSNumber*) homeLatitude
    homeLongitude: (NSNumber*) homeLongitude
    appNickname: (NSString*) appNickname
    personalAudienceId: (NSNumber*) personalAudienceId
    completionHandler: (void (^)(OAIAccountLoginResponse* output, NSError* error)) handler {
    // verify the required parameter 'version' is set
    if (version == nil) {
        NSParameterAssert(version);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"version"] };
            NSError* error = [NSError errorWithDomain:kOAIAccountApiErrorDomain code:kOAIAccountApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'username' is set
    if (username == nil) {
        NSParameterAssert(username);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"username"] };
            NSError* error = [NSError errorWithDomain:kOAIAccountApiErrorDomain code:kOAIAccountApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'password' is set
    if (password == nil) {
        NSParameterAssert(password);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"password"] };
            NSError* error = [NSError errorWithDomain:kOAIAccountApiErrorDomain code:kOAIAccountApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/{version}/account/create"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (version != nil) {
        pathParams[@"version"] = version;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (name != nil) {
        queryParams[@"name"] = name;
    }
    if (prefixName != nil) {
        queryParams[@"prefixName"] = prefixName;
    }
    if (firstName != nil) {
        queryParams[@"firstName"] = firstName;
    }
    if (middleName != nil) {
        queryParams[@"middleName"] = middleName;
    }
    if (lastName != nil) {
        queryParams[@"lastName"] = lastName;
    }
    if (suffixName != nil) {
        queryParams[@"suffixName"] = suffixName;
    }
    if (title != nil) {
        queryParams[@"title"] = title;
    }
    if (deviceId != nil) {
        queryParams[@"deviceId"] = deviceId;
    }
    if (deviceIdType != nil) {
        queryParams[@"deviceIdType"] = deviceIdType;
    }
    if (username != nil) {
        queryParams[@"username"] = username;
    }
    if (password != nil) {
        queryParams[@"password"] = password;
    }
    if (emailAddress != nil) {
        queryParams[@"emailAddress"] = emailAddress;
    }
    if (assetId != nil) {
        queryParams[@"assetId"] = assetId;
    }
    if (streetAddress != nil) {
        queryParams[@"streetAddress"] = streetAddress;
    }
    if (zipcode != nil) {
        queryParams[@"zipcode"] = zipcode;
    }
    if (gender != nil) {
        queryParams[@"gender"] = gender;
    }
    if (birthday != nil) {
        queryParams[@"birthday"] = birthday;
    }
    if (homePhone != nil) {
        queryParams[@"homePhone"] = homePhone;
    }
    if (cellPhone != nil) {
        queryParams[@"cellPhone"] = cellPhone;
    }
    if (cellPhoneCarrier != nil) {
        queryParams[@"cellPhoneCarrier"] = cellPhoneCarrier;
    }
    if (businessPhone != nil) {
        queryParams[@"businessPhone"] = businessPhone;
    }
    if (role != nil) {
        queryParams[@"role"] = role;
    }
    if (platforms != nil) {
        queryParams[@"platforms"] = platforms;
    }
    if (tags != nil) {
        queryParams[@"tags"] = tags;
    }
    if (aboutUs != nil) {
        queryParams[@"aboutUs"] = aboutUs;
    }
    if (gameExperience != nil) {
        queryParams[@"gameExperience"] = gameExperience;
    }
    if (categoryIds != nil) {
        queryParams[@"categoryIds"] = categoryIds;
    }
    if (hometown != nil) {
        queryParams[@"hometown"] = hometown;
    }
    if (height != nil) {
        queryParams[@"height"] = height;
    }
    if (heightIndex != nil) {
        queryParams[@"heightIndex"] = heightIndex;
    }
    if (ethnicity != nil) {
        queryParams[@"ethnicity"] = ethnicity;
    }
    if (bodyType != nil) {
        queryParams[@"bodyType"] = bodyType;
    }
    if (maritalStatus != nil) {
        queryParams[@"maritalStatus"] = maritalStatus;
    }
    if (children != nil) {
        queryParams[@"children"] = children;
    }
    if (religion != nil) {
        queryParams[@"religion"] = religion;
    }
    if (education != nil) {
        queryParams[@"education"] = education;
    }
    if (educationIndex != nil) {
        queryParams[@"educationIndex"] = educationIndex;
    }
    if (smoke != nil) {
        queryParams[@"smoke"] = smoke;
    }
    if (drink != nil) {
        queryParams[@"drink"] = drink;
    }
    if (companionship != nil) {
        queryParams[@"companionship"] = companionship;
    }
    if (companionshipIndex != nil) {
        queryParams[@"companionshipIndex"] = companionshipIndex;
    }
    if (preferredMinAge != nil) {
        queryParams[@"preferredMinAge"] = preferredMinAge;
    }
    if (preferredMaxAge != nil) {
        queryParams[@"preferredMaxAge"] = preferredMaxAge;
    }
    if (preferredMinHeight != nil) {
        queryParams[@"preferredMinHeight"] = preferredMinHeight;
    }
    if (preferredMaxHeight != nil) {
        queryParams[@"preferredMaxHeight"] = preferredMaxHeight;
    }
    if (preferredGender != nil) {
        queryParams[@"preferredGender"] = preferredGender;
    }
    if (preferredEducation != nil) {
        queryParams[@"preferredEducation"] = preferredEducation;
    }
    if (preferredEducationIndex != nil) {
        queryParams[@"preferredEducationIndex"] = preferredEducationIndex;
    }
    if (preferredBodyType != nil) {
        queryParams[@"preferredBodyType"] = preferredBodyType;
    }
    if (preferredEthnicity != nil) {
        queryParams[@"preferredEthnicity"] = preferredEthnicity;
    }
    if (preferredLocation != nil) {
        queryParams[@"preferredLocation"] = preferredLocation;
    }
    if (preferredLocationRange != nil) {
        queryParams[@"preferredLocationRange"] = preferredLocationRange;
    }
    if (latitude != nil) {
        queryParams[@"latitude"] = latitude;
    }
    if (longitude != nil) {
        queryParams[@"longitude"] = longitude;
    }
    if (acceptedTerms != nil) {
        queryParams[@"acceptedTerms"] = [acceptedTerms isEqual:@(YES)] ? @"true" : @"false";
    }
    if (inviteToken != nil) {
        queryParams[@"inviteToken"] = inviteToken;
    }
    if (referralAccountId != nil) {
        queryParams[@"referralAccountId"] = referralAccountId;
    }
    if (sendValidation != nil) {
        queryParams[@"sendValidation"] = [sendValidation isEqual:@(YES)] ? @"true" : @"false";
    }
    if (gameType != nil) {
        queryParams[@"gameType"] = gameType;
    }
    if (appKey != nil) {
        queryParams[@"appKey"] = appKey;
    }
    if (appVersion != nil) {
        queryParams[@"appVersion"] = appVersion;
    }
    if (responseType != nil) {
        queryParams[@"responseType"] = responseType;
    }
    if (audienceIdsToAdd != nil) {
        queryParams[@"audienceIdsToAdd"] = audienceIdsToAdd;
    }
    if (appBlob != nil) {
        queryParams[@"appBlob"] = appBlob;
    }
    if (appEnablePush != nil) {
        queryParams[@"appEnablePush"] = [appEnablePush isEqual:@(YES)] ? @"true" : @"false";
    }
    if (appEnableSMS != nil) {
        queryParams[@"appEnableSMS"] = [appEnableSMS isEqual:@(YES)] ? @"true" : @"false";
    }
    if (appEnableEmail != nil) {
        queryParams[@"appEnableEmail"] = [appEnableEmail isEqual:@(YES)] ? @"true" : @"false";
    }
    if (locationVisibility != nil) {
        queryParams[@"locationVisibility"] = locationVisibility;
    }
    if (homeLatitude != nil) {
        queryParams[@"homeLatitude"] = homeLatitude;
    }
    if (homeLongitude != nil) {
        queryParams[@"homeLongitude"] = homeLongitude;
    }
    if (appNickname != nil) {
        queryParams[@"appNickname"] = appNickname;
    }
    if (personalAudienceId != nil) {
        queryParams[@"personalAudienceId"] = personalAudienceId;
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
                              responseType: @"OAIAccountLoginResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIAccountLoginResponse*)data, error);
                                }
                            }];
}

///
/// Update Account
/// Edit the user's profile information
///  @param version  
///
///  @param deviceId The device id (deviceId or accountId required) (optional)
///
///  @param accountId The account id of the user (deviceId or accountId required) (optional)
///
///  @param connectionAccountId The account id used to edit another person's account (optional)
///
///  @param role The account role to change to (optional)
///
///  @param assetId The asset id to set the user's profile image (optional)
///
///  @param name The full name of the user. If this parameter is NOT empty, the  following parameters will be ignored: prefixName, firstName, middleName,  lastName, and suffixName  (optional)
///
///  @param prefixName If the parameter 'name' is empty or not present, this field will be used to set the prefix of the user's name (optional)
///
///  @param firstName If the parameter 'name' is empty or not present, this field will be used to set the user's first name (optional)
///
///  @param middleName If the parameter 'name' is empty or not present, this field will be used to set the user's middle name (optional)
///
///  @param lastName If the parameter 'name' is empty or not present, this field will be used to set the user's last name (optional)
///
///  @param suffixName If the parameter 'name' is empty or not present, this field will be used to set the suffix of the user's name (optional)
///
///  @param title This field will be used to set the user's job title (optional)
///
///  @param gender The gender of the user AudienceGender (optional)
///
///  @param age This is deperecated, use the birthday parameter (optional)
///
///  @param birthday The birthday date of the user in UTC milliseconds (optional)
///
///  @param homePhone The home phone number (optional)
///
///  @param cellPhone The cellular phone number (optional)
///
///  @param cellPhoneCarrier The cellular service provider (optional)
///
///  @param businessPhone The business phone number (optional)
///
///  @param emailAddress The user's contact email address (NOT the username) (optional)
///
///  @param streetAddress The street address of the user's contact location (optional)
///
///  @param streetAddress2 Additional address information (such as a suite number, floor number, building name, or PO Box) (optional)
///
///  @param city The city of the user's contact location (optional)
///
///  @param state The state of the user's contact location (optional)
///
///  @param zipcode The zipcode of the user's contact location (optional)
///
///  @param country The country of the user's contact location (optional)
///
///  @param makeProfileInfoPublic Allow anyone to view the user's personal profile (optional)
///
///  @param makeGameInfoPublic Allow anyone to view the user's game/app info (optional)
///
///  @param makeFriendsInfoPublic Allow anyone to view the user's friends list (optional)
///
///  @param hometown The user's hometown (optional)
///
///  @param height The user's height (optional)
///
///  @param heightIndex The user's height in a numerical value that can be used for ordering/searching (optional)
///
///  @param ethnicity The user's ethnicity (optional)
///
///  @param bodyType The user's body type (optional)
///
///  @param maritalStatus The user's marital status (optional)
///
///  @param children The user's children status (optional)
///
///  @param religion The user's religion (optional)
///
///  @param education The user's education (optional)
///
///  @param educationIndex The user's education in a numerical value that can be used for ordering/searching (optional)
///
///  @param smoke The user's smoke status (optional)
///
///  @param drink The user's drink status (optional)
///
///  @param companionship The user's companionship status (optional)
///
///  @param companionshipIndex The user's companionship index (optional)
///
///  @param preferredMinAge The preferred minimum age in the account location search (optional)
///
///  @param preferredMaxAge The preferred maximum age in the account location search (optional)
///
///  @param preferredMinHeight The preferred minimum height in the account location search (optional)
///
///  @param preferredMaxHeight The preferred maximum height in the account location search (optional)
///
///  @param preferredGender The preferred gender in the account location search (optional)
///
///  @param preferredEducation The preferred education in the account location search (optional)
///
///  @param preferredEducationIndex The preferred education in a numerical value that can be used for ordering/searching (optional)
///
///  @param preferredBodyType The preferred body type in the account location search (optional)
///
///  @param preferredEthnicity The preferred ethnicity in the account location search (optional)
///
///  @param preferredLocation The preferred education in the account location search (optional)
///
///  @param preferredLocationRange The preferred location range in the account location search (optional)
///
///  @param platforms Platforms (optional)
///
///  @param tags Tags (optional)
///
///  @param aboutUs About Us (optional)
///
///  @param matchToken Match Token (optional)
///
///  @param gameExperience Game Experience (optional)
///
///  @param categories Deprecated use categoryIds (optional)
///
///  @param categoryIds A list of category ids that represent interests and associations (optional)
///
///  @param responseFilters A comma separated list of ProfileFilters for filtering the returned response data (optional, default to @"PROFILE,PROFILE_CONTACT")
///
///  @param showAsZipcode The user's preference if they want to be shown by zipcode on a map (optional)
///
///  @param showExactLocation The user's preference if they want to be shown by their exact location on a map (optional)
///
///  @param showOthersExactLocation The user's preference if they want to see others exact location on a map (optional)
///
///  @param acceptedTerms Accepted Terms (optional)
///
///  @param locationVisibility Location Visibility (optional)
///
///  @param appBlob App Blob (optional)
///
///  @param appEnablePush App Enable Push (optional)
///
///  @param appEnableSMS App Enable SMS (optional)
///
///  @param appEnableEmail App Enable Email (optional)
///
///  @param gameType Game Type (optional)
///
///  @param appKey The application key (optional)
///
///  @param latitude The current latitude of the user (optional)
///
///  @param longitude The current longitude of the user (optional)
///
///  @param returnProfile Return Profile (optional)
///
///  @param audienceIdsToAdd Audience Ids to add (optional)
///
///  @param audienceIdsToRemove Audience Ids to remove (optional)
///
///  @param referralAccountId The account id of the referrer (optional)
///
///  @param appNickname App nickname (optional)
///
///  @param personalAudienceId Personal Audience (optional)
///
///  @param nonGuestUsername The user's username to update with if they currently have a guest username (optional)
///
///  @returns OAIProfileInfoResponse*
///
-(NSURLSessionTask*) editAccountWithVersion: (NSNumber*) version
    deviceId: (NSString*) deviceId
    accountId: (NSNumber*) accountId
    connectionAccountId: (NSNumber*) connectionAccountId
    role: (NSString*) role
    assetId: (NSNumber*) assetId
    name: (NSString*) name
    prefixName: (NSString*) prefixName
    firstName: (NSString*) firstName
    middleName: (NSString*) middleName
    lastName: (NSString*) lastName
    suffixName: (NSString*) suffixName
    title: (NSString*) title
    gender: (NSString*) gender
    age: (NSNumber*) age
    birthday: (NSNumber*) birthday
    homePhone: (NSString*) homePhone
    cellPhone: (NSString*) cellPhone
    cellPhoneCarrier: (NSString*) cellPhoneCarrier
    businessPhone: (NSString*) businessPhone
    emailAddress: (NSString*) emailAddress
    streetAddress: (NSString*) streetAddress
    streetAddress2: (NSString*) streetAddress2
    city: (NSString*) city
    state: (NSString*) state
    zipcode: (NSString*) zipcode
    country: (NSString*) country
    makeProfileInfoPublic: (NSNumber*) makeProfileInfoPublic
    makeGameInfoPublic: (NSNumber*) makeGameInfoPublic
    makeFriendsInfoPublic: (NSNumber*) makeFriendsInfoPublic
    hometown: (NSString*) hometown
    height: (NSString*) height
    heightIndex: (NSNumber*) heightIndex
    ethnicity: (NSString*) ethnicity
    bodyType: (NSString*) bodyType
    maritalStatus: (NSString*) maritalStatus
    children: (NSString*) children
    religion: (NSString*) religion
    education: (NSString*) education
    educationIndex: (NSNumber*) educationIndex
    smoke: (NSString*) smoke
    drink: (NSString*) drink
    companionship: (NSString*) companionship
    companionshipIndex: (NSNumber*) companionshipIndex
    preferredMinAge: (NSNumber*) preferredMinAge
    preferredMaxAge: (NSNumber*) preferredMaxAge
    preferredMinHeight: (NSNumber*) preferredMinHeight
    preferredMaxHeight: (NSNumber*) preferredMaxHeight
    preferredGender: (NSString*) preferredGender
    preferredEducation: (NSString*) preferredEducation
    preferredEducationIndex: (NSNumber*) preferredEducationIndex
    preferredBodyType: (NSString*) preferredBodyType
    preferredEthnicity: (NSString*) preferredEthnicity
    preferredLocation: (NSString*) preferredLocation
    preferredLocationRange: (NSNumber*) preferredLocationRange
    platforms: (NSString*) platforms
    tags: (NSString*) tags
    aboutUs: (NSString*) aboutUs
    matchToken: (NSString*) matchToken
    gameExperience: (NSString*) gameExperience
    categories: (NSString*) categories
    categoryIds: (NSString*) categoryIds
    responseFilters: (NSString*) responseFilters
    showAsZipcode: (NSNumber*) showAsZipcode
    showExactLocation: (NSNumber*) showExactLocation
    showOthersExactLocation: (NSNumber*) showOthersExactLocation
    acceptedTerms: (NSNumber*) acceptedTerms
    locationVisibility: (NSString*) locationVisibility
    appBlob: (NSString*) appBlob
    appEnablePush: (NSNumber*) appEnablePush
    appEnableSMS: (NSNumber*) appEnableSMS
    appEnableEmail: (NSNumber*) appEnableEmail
    gameType: (NSString*) gameType
    appKey: (NSString*) appKey
    latitude: (NSNumber*) latitude
    longitude: (NSNumber*) longitude
    returnProfile: (NSNumber*) returnProfile
    audienceIdsToAdd: (NSString*) audienceIdsToAdd
    audienceIdsToRemove: (NSString*) audienceIdsToRemove
    referralAccountId: (NSNumber*) referralAccountId
    appNickname: (NSString*) appNickname
    personalAudienceId: (NSNumber*) personalAudienceId
    nonGuestUsername: (NSString*) nonGuestUsername
    completionHandler: (void (^)(OAIProfileInfoResponse* output, NSError* error)) handler {
    // verify the required parameter 'version' is set
    if (version == nil) {
        NSParameterAssert(version);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"version"] };
            NSError* error = [NSError errorWithDomain:kOAIAccountApiErrorDomain code:kOAIAccountApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/{version}/account/profile/update"];

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
    if (connectionAccountId != nil) {
        queryParams[@"connectionAccountId"] = connectionAccountId;
    }
    if (role != nil) {
        queryParams[@"role"] = role;
    }
    if (assetId != nil) {
        queryParams[@"assetId"] = assetId;
    }
    if (name != nil) {
        queryParams[@"name"] = name;
    }
    if (prefixName != nil) {
        queryParams[@"prefixName"] = prefixName;
    }
    if (firstName != nil) {
        queryParams[@"firstName"] = firstName;
    }
    if (middleName != nil) {
        queryParams[@"middleName"] = middleName;
    }
    if (lastName != nil) {
        queryParams[@"lastName"] = lastName;
    }
    if (suffixName != nil) {
        queryParams[@"suffixName"] = suffixName;
    }
    if (title != nil) {
        queryParams[@"title"] = title;
    }
    if (gender != nil) {
        queryParams[@"gender"] = gender;
    }
    if (age != nil) {
        queryParams[@"age"] = age;
    }
    if (birthday != nil) {
        queryParams[@"birthday"] = birthday;
    }
    if (homePhone != nil) {
        queryParams[@"homePhone"] = homePhone;
    }
    if (cellPhone != nil) {
        queryParams[@"cellPhone"] = cellPhone;
    }
    if (cellPhoneCarrier != nil) {
        queryParams[@"cellPhoneCarrier"] = cellPhoneCarrier;
    }
    if (businessPhone != nil) {
        queryParams[@"businessPhone"] = businessPhone;
    }
    if (emailAddress != nil) {
        queryParams[@"emailAddress"] = emailAddress;
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
    if (zipcode != nil) {
        queryParams[@"zipcode"] = zipcode;
    }
    if (country != nil) {
        queryParams[@"country"] = country;
    }
    if (makeProfileInfoPublic != nil) {
        queryParams[@"makeProfileInfoPublic"] = [makeProfileInfoPublic isEqual:@(YES)] ? @"true" : @"false";
    }
    if (makeGameInfoPublic != nil) {
        queryParams[@"makeGameInfoPublic"] = [makeGameInfoPublic isEqual:@(YES)] ? @"true" : @"false";
    }
    if (makeFriendsInfoPublic != nil) {
        queryParams[@"makeFriendsInfoPublic"] = [makeFriendsInfoPublic isEqual:@(YES)] ? @"true" : @"false";
    }
    if (hometown != nil) {
        queryParams[@"hometown"] = hometown;
    }
    if (height != nil) {
        queryParams[@"height"] = height;
    }
    if (heightIndex != nil) {
        queryParams[@"heightIndex"] = heightIndex;
    }
    if (ethnicity != nil) {
        queryParams[@"ethnicity"] = ethnicity;
    }
    if (bodyType != nil) {
        queryParams[@"bodyType"] = bodyType;
    }
    if (maritalStatus != nil) {
        queryParams[@"maritalStatus"] = maritalStatus;
    }
    if (children != nil) {
        queryParams[@"children"] = children;
    }
    if (religion != nil) {
        queryParams[@"religion"] = religion;
    }
    if (education != nil) {
        queryParams[@"education"] = education;
    }
    if (educationIndex != nil) {
        queryParams[@"educationIndex"] = educationIndex;
    }
    if (smoke != nil) {
        queryParams[@"smoke"] = smoke;
    }
    if (drink != nil) {
        queryParams[@"drink"] = drink;
    }
    if (companionship != nil) {
        queryParams[@"companionship"] = companionship;
    }
    if (companionshipIndex != nil) {
        queryParams[@"companionshipIndex"] = companionshipIndex;
    }
    if (preferredMinAge != nil) {
        queryParams[@"preferredMinAge"] = preferredMinAge;
    }
    if (preferredMaxAge != nil) {
        queryParams[@"preferredMaxAge"] = preferredMaxAge;
    }
    if (preferredMinHeight != nil) {
        queryParams[@"preferredMinHeight"] = preferredMinHeight;
    }
    if (preferredMaxHeight != nil) {
        queryParams[@"preferredMaxHeight"] = preferredMaxHeight;
    }
    if (preferredGender != nil) {
        queryParams[@"preferredGender"] = preferredGender;
    }
    if (preferredEducation != nil) {
        queryParams[@"preferredEducation"] = preferredEducation;
    }
    if (preferredEducationIndex != nil) {
        queryParams[@"preferredEducationIndex"] = preferredEducationIndex;
    }
    if (preferredBodyType != nil) {
        queryParams[@"preferredBodyType"] = preferredBodyType;
    }
    if (preferredEthnicity != nil) {
        queryParams[@"preferredEthnicity"] = preferredEthnicity;
    }
    if (preferredLocation != nil) {
        queryParams[@"preferredLocation"] = preferredLocation;
    }
    if (preferredLocationRange != nil) {
        queryParams[@"preferredLocationRange"] = preferredLocationRange;
    }
    if (platforms != nil) {
        queryParams[@"platforms"] = platforms;
    }
    if (tags != nil) {
        queryParams[@"tags"] = tags;
    }
    if (aboutUs != nil) {
        queryParams[@"aboutUs"] = aboutUs;
    }
    if (matchToken != nil) {
        queryParams[@"matchToken"] = matchToken;
    }
    if (gameExperience != nil) {
        queryParams[@"gameExperience"] = gameExperience;
    }
    if (categories != nil) {
        queryParams[@"categories"] = categories;
    }
    if (categoryIds != nil) {
        queryParams[@"categoryIds"] = categoryIds;
    }
    if (responseFilters != nil) {
        queryParams[@"responseFilters"] = responseFilters;
    }
    if (showAsZipcode != nil) {
        queryParams[@"showAsZipcode"] = [showAsZipcode isEqual:@(YES)] ? @"true" : @"false";
    }
    if (showExactLocation != nil) {
        queryParams[@"showExactLocation"] = [showExactLocation isEqual:@(YES)] ? @"true" : @"false";
    }
    if (showOthersExactLocation != nil) {
        queryParams[@"showOthersExactLocation"] = [showOthersExactLocation isEqual:@(YES)] ? @"true" : @"false";
    }
    if (acceptedTerms != nil) {
        queryParams[@"acceptedTerms"] = [acceptedTerms isEqual:@(YES)] ? @"true" : @"false";
    }
    if (locationVisibility != nil) {
        queryParams[@"locationVisibility"] = locationVisibility;
    }
    if (appBlob != nil) {
        queryParams[@"appBlob"] = appBlob;
    }
    if (appEnablePush != nil) {
        queryParams[@"appEnablePush"] = [appEnablePush isEqual:@(YES)] ? @"true" : @"false";
    }
    if (appEnableSMS != nil) {
        queryParams[@"appEnableSMS"] = [appEnableSMS isEqual:@(YES)] ? @"true" : @"false";
    }
    if (appEnableEmail != nil) {
        queryParams[@"appEnableEmail"] = [appEnableEmail isEqual:@(YES)] ? @"true" : @"false";
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
    if (returnProfile != nil) {
        queryParams[@"returnProfile"] = [returnProfile isEqual:@(YES)] ? @"true" : @"false";
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
    if (appNickname != nil) {
        queryParams[@"appNickname"] = appNickname;
    }
    if (personalAudienceId != nil) {
        queryParams[@"personalAudienceId"] = personalAudienceId;
    }
    if (nonGuestUsername != nil) {
        queryParams[@"nonGuestUsername"] = nonGuestUsername;
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
                              responseType: @"OAIProfileInfoResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIProfileInfoResponse*)data, error);
                                }
                            }];
}

///
/// Update Username and Email
/// Update account's own username and/or emailAddress
///  @param version  
///
///  @param deviceId The device id (optional)
///
///  @param accountId The account id of the user (deviceId or accountId required) (optional)
///
///  @param emailAddress the user's contact email address (NOT the username) which is also used for email validation (optional)
///
///  @param username the user's username to update with if they currently have a guest username (optional)
///
///  @returns OAISirqulResponse*
///
-(NSURLSessionTask*) editUsernameWithVersion: (NSNumber*) version
    deviceId: (NSString*) deviceId
    accountId: (NSNumber*) accountId
    emailAddress: (NSString*) emailAddress
    username: (NSString*) username
    completionHandler: (void (^)(OAISirqulResponse* output, NSError* error)) handler {
    // verify the required parameter 'version' is set
    if (version == nil) {
        NSParameterAssert(version);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"version"] };
            NSError* error = [NSError errorWithDomain:kOAIAccountApiErrorDomain code:kOAIAccountApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/{version}/account/username/update"];

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
    if (emailAddress != nil) {
        queryParams[@"emailAddress"] = emailAddress;
    }
    if (username != nil) {
        queryParams[@"username"] = username;
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
/// Get Account
/// Gets a user's account profile. Application settings and account settings will also be returned for the owner of the account.
///  @param version  
///
///  @param returnNulls Return Nulls (optional, default to @(NO))
///
///  @param deviceId The device id (deviceId or accountId required) (optional)
///
///  @param accountId The account id of the user (deviceId or accountId required) (optional)
///
///  @param connectionAccountEmail Connection Account Email (optional)
///
///  @param connectionAccountId The account id used to view another person's account (optional, default to @0)
///
///  @param responseFilters A comma separated list of ProfileFilters for filtering the returned response data (optional, default to @"PROFILE")
///
///  @param gameType Game Type (optional)
///
///  @param appKey The application key (optional)
///
///  @param purchaseType Purchase Type (optional, default to @"SIRQUL")
///
///  @param updateViewedDate Determines whether to track if a person has viewed someone's profile (optional, default to @(NO))
///
///  @param latitude Latitude used to update the user's current location (optional)
///
///  @param longitude Longitude used to update the user's current location (optional)
///
///  @returns OAIProfileResponse*
///
-(NSURLSessionTask*) getAccountWithVersion: (NSNumber*) version
    returnNulls: (NSNumber*) returnNulls
    deviceId: (NSString*) deviceId
    accountId: (NSNumber*) accountId
    connectionAccountEmail: (NSString*) connectionAccountEmail
    connectionAccountId: (NSNumber*) connectionAccountId
    responseFilters: (NSString*) responseFilters
    gameType: (NSString*) gameType
    appKey: (NSString*) appKey
    purchaseType: (NSString*) purchaseType
    updateViewedDate: (NSNumber*) updateViewedDate
    latitude: (NSNumber*) latitude
    longitude: (NSNumber*) longitude
    completionHandler: (void (^)(OAIProfileResponse* output, NSError* error)) handler {
    // verify the required parameter 'version' is set
    if (version == nil) {
        NSParameterAssert(version);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"version"] };
            NSError* error = [NSError errorWithDomain:kOAIAccountApiErrorDomain code:kOAIAccountApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/{version}/account/profile/get"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (version != nil) {
        pathParams[@"version"] = version;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (returnNulls != nil) {
        queryParams[@"returnNulls"] = [returnNulls isEqual:@(YES)] ? @"true" : @"false";
    }
    if (deviceId != nil) {
        queryParams[@"deviceId"] = deviceId;
    }
    if (accountId != nil) {
        queryParams[@"accountId"] = accountId;
    }
    if (connectionAccountEmail != nil) {
        queryParams[@"connectionAccountEmail"] = connectionAccountEmail;
    }
    if (connectionAccountId != nil) {
        queryParams[@"connectionAccountId"] = connectionAccountId;
    }
    if (responseFilters != nil) {
        queryParams[@"responseFilters"] = responseFilters;
    }
    if (gameType != nil) {
        queryParams[@"gameType"] = gameType;
    }
    if (appKey != nil) {
        queryParams[@"appKey"] = appKey;
    }
    if (purchaseType != nil) {
        queryParams[@"purchaseType"] = purchaseType;
    }
    if (updateViewedDate != nil) {
        queryParams[@"updateViewedDate"] = [updateViewedDate isEqual:@(YES)] ? @"true" : @"false";
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
                              responseType: @"OAIProfileResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIProfileResponse*)data, error);
                                }
                            }];
}

///
/// Get Profile Assets
/// Get a list of assets a person has ever uploaded. Filters the list based on parameters.
///  @param version  
///
///  @param returnNulls Determines whether to return null fields in the response (optional, default to @(NO))
///
///  @param deviceId The device id (deviceId or accountId required) (optional)
///
///  @param accountId The account id of the user (deviceId or accountId required) (optional)
///
///  @param ownerId The account id of the person the user wants to view (optional)
///
///  @param mediaTypes Comma separated list of MediaType (optional)
///
///  @param mimeTypes Comma separated list of mime types (optional)
///
///  @param sortField Determines what the returning list will be sorted by (see AssetApiMap) (optional, default to @"CREATED")
///
///  @param descending Determines whether to return the resulting list in descending or ascending order (optional, default to @(YES))
///
///  @param latitude Latitude used to update the user's current location (optional)
///
///  @param longitude Longitude used to update the user's current location (optional)
///
///  @param i _i (optional)
///
///  @param start Start of the pagination (optional, default to @0)
///
///  @param l _l (optional)
///
///  @param limit Limit of the pagination (optional, default to @0)
///
///  @returns OAIAssetListResponse*
///
-(NSURLSessionTask*) getProfileAssetsWithVersion: (NSNumber*) version
    returnNulls: (NSNumber*) returnNulls
    deviceId: (NSString*) deviceId
    accountId: (NSNumber*) accountId
    ownerId: (NSNumber*) ownerId
    mediaTypes: (NSString*) mediaTypes
    mimeTypes: (NSString*) mimeTypes
    sortField: (NSString*) sortField
    descending: (NSNumber*) descending
    latitude: (NSNumber*) latitude
    longitude: (NSNumber*) longitude
    i: (NSNumber*) i
    start: (NSNumber*) start
    l: (NSNumber*) l
    limit: (NSNumber*) limit
    completionHandler: (void (^)(OAIAssetListResponse* output, NSError* error)) handler {
    // verify the required parameter 'version' is set
    if (version == nil) {
        NSParameterAssert(version);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"version"] };
            NSError* error = [NSError errorWithDomain:kOAIAccountApiErrorDomain code:kOAIAccountApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/{version}/account/profile/assets"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (version != nil) {
        pathParams[@"version"] = version;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (returnNulls != nil) {
        queryParams[@"returnNulls"] = [returnNulls isEqual:@(YES)] ? @"true" : @"false";
    }
    if (deviceId != nil) {
        queryParams[@"deviceId"] = deviceId;
    }
    if (accountId != nil) {
        queryParams[@"accountId"] = accountId;
    }
    if (ownerId != nil) {
        queryParams[@"ownerId"] = ownerId;
    }
    if (mediaTypes != nil) {
        queryParams[@"mediaTypes"] = mediaTypes;
    }
    if (mimeTypes != nil) {
        queryParams[@"mimeTypes"] = mimeTypes;
    }
    if (sortField != nil) {
        queryParams[@"sortField"] = sortField;
    }
    if (descending != nil) {
        queryParams[@"descending"] = [descending isEqual:@(YES)] ? @"true" : @"false";
    }
    if (latitude != nil) {
        queryParams[@"latitude"] = latitude;
    }
    if (longitude != nil) {
        queryParams[@"longitude"] = longitude;
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
                              responseType: @"OAIAssetListResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIAssetListResponse*)data, error);
                                }
                            }];
}

///
/// Search Accounts
/// Gets a user's account profile and their referral List.
///  @param version  
///
///  @param accountId The account id of the user (deviceId or accountId required) (optional)
///
///  @param appKey The application key (optional)
///
///  @param retrieveType one of these option - GET_CHILDREN will get all accounts that had signed up using the current account invite link - GET_ANCESTOR will get all accounts that referred the current account and it's parents, recursively - GET_ALL will get all of the above (optional)
///
///  @param levelLimit level limit for children and ancestors of current account, starts from current account (optional)
///
///  @param ancestorLevelLimit level limit for ancestors, will override levelLimit if this is set (optional)
///
///  @param childrenLevelLimit level limit for children, will override levelLimit if this is set (optional)
///
///  @param ancestorListStart pagination start for children list (optional)
///
///  @param ancestorListLimit pagination limit for children list (optional)
///
///  @param childrenListStart pagination start for children list (optional)
///
///  @param childrenListLimit pagination limit for children list (optional)
///
///  @param childrenChildren if true, on each item in ancestor and children list, return the childrenTotalNumber and ancestorTotalNumber for that item (optional, default to @(YES))
///
///  @returns void
///
-(NSURLSessionTask*) getReferralListWithVersion: (NSNumber*) version
    accountId: (NSNumber*) accountId
    appKey: (NSString*) appKey
    retrieveType: (NSString*) retrieveType
    levelLimit: (NSNumber*) levelLimit
    ancestorLevelLimit: (NSNumber*) ancestorLevelLimit
    childrenLevelLimit: (NSNumber*) childrenLevelLimit
    ancestorListStart: (NSNumber*) ancestorListStart
    ancestorListLimit: (NSNumber*) ancestorListLimit
    childrenListStart: (NSNumber*) childrenListStart
    childrenListLimit: (NSNumber*) childrenListLimit
    childrenChildren: (NSNumber*) childrenChildren
    completionHandler: (void (^)(NSError* error)) handler {
    // verify the required parameter 'version' is set
    if (version == nil) {
        NSParameterAssert(version);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"version"] };
            NSError* error = [NSError errorWithDomain:kOAIAccountApiErrorDomain code:kOAIAccountApiMissingParamErrorCode userInfo:userInfo];
            handler(error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/{version}/account/referral/list"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (version != nil) {
        pathParams[@"version"] = version;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        queryParams[@"accountId"] = accountId;
    }
    if (appKey != nil) {
        queryParams[@"appKey"] = appKey;
    }
    if (retrieveType != nil) {
        queryParams[@"retrieveType"] = retrieveType;
    }
    if (levelLimit != nil) {
        queryParams[@"levelLimit"] = levelLimit;
    }
    if (ancestorLevelLimit != nil) {
        queryParams[@"ancestorLevelLimit"] = ancestorLevelLimit;
    }
    if (childrenLevelLimit != nil) {
        queryParams[@"childrenLevelLimit"] = childrenLevelLimit;
    }
    if (ancestorListStart != nil) {
        queryParams[@"ancestorListStart"] = ancestorListStart;
    }
    if (ancestorListLimit != nil) {
        queryParams[@"ancestorListLimit"] = ancestorListLimit;
    }
    if (childrenListStart != nil) {
        queryParams[@"childrenListStart"] = childrenListStart;
    }
    if (childrenListLimit != nil) {
        queryParams[@"childrenListLimit"] = childrenListLimit;
    }
    if (childrenChildren != nil) {
        queryParams[@"childrenChildren"] = [childrenChildren isEqual:@(YES)] ? @"true" : @"false";
    }
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[]];
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
                              responseType: nil
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler(error);
                                }
                            }];
}

///
/// Get Account Settings
/// Get the account settings for a user
///  @param version  
///
///  @param deviceId The device id (deviceId or accountId required) (optional)
///
///  @param accountId The account id of the user (deviceId or accountId required) (optional)
///
///  @param latitude The current latitude of the user (optional)
///
///  @param longitude The current longitude of the user (optional)
///
///  @returns OAIUserSettingsResponse*
///
-(NSURLSessionTask*) getSettingsWithVersion: (NSNumber*) version
    deviceId: (NSString*) deviceId
    accountId: (NSNumber*) accountId
    latitude: (NSNumber*) latitude
    longitude: (NSNumber*) longitude
    completionHandler: (void (^)(OAIUserSettingsResponse* output, NSError* error)) handler {
    // verify the required parameter 'version' is set
    if (version == nil) {
        NSParameterAssert(version);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"version"] };
            NSError* error = [NSError errorWithDomain:kOAIAccountApiErrorDomain code:kOAIAccountApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/{version}/account/settings/get"];

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
                              responseType: @"OAIUserSettingsResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIUserSettingsResponse*)data, error);
                                }
                            }];
}

///
/// Login as Account
/// A login service that supports logging in as someone else (accounts that the user manages). Intended for internal use for now.
///  @param version  
///
///  @param accessToken  
///
///  @param appKey  
///
///  @param deviceId  (optional)
///
///  @param accessTokenSecret  (optional)
///
///  @param delegatedAccountId  (optional)
///
///  @param delegatedUsername  (optional)
///
///  @param networkUID The access provider to authenticate against (default: USERNAME). Supported values: FACEBOOK, TWITTER, USERNAME, PHONE (optional, default to @"USERNAME")
///
///  @param ageRestriction Checks user's birthday to see if they meet an age requirement. If the user is under age, an error message is returned. (optional, default to @0)
///
///  @param responseFilters This determines how much of the profile should be returned, see ProfileFilters (optional, default to @"PROFILE")
///
///  @param latitude  (optional)
///
///  @param longitude  (optional)
///
///  @returns OAIProfileResponse*
///
-(NSURLSessionTask*) loginDelegateWithVersion: (NSNumber*) version
    accessToken: (NSString*) accessToken
    appKey: (NSString*) appKey
    deviceId: (NSString*) deviceId
    accessTokenSecret: (NSString*) accessTokenSecret
    delegatedAccountId: (NSNumber*) delegatedAccountId
    delegatedUsername: (NSString*) delegatedUsername
    networkUID: (NSString*) networkUID
    ageRestriction: (NSNumber*) ageRestriction
    responseFilters: (NSString*) responseFilters
    latitude: (NSNumber*) latitude
    longitude: (NSNumber*) longitude
    completionHandler: (void (^)(OAIProfileResponse* output, NSError* error)) handler {
    // verify the required parameter 'version' is set
    if (version == nil) {
        NSParameterAssert(version);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"version"] };
            NSError* error = [NSError errorWithDomain:kOAIAccountApiErrorDomain code:kOAIAccountApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'accessToken' is set
    if (accessToken == nil) {
        NSParameterAssert(accessToken);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accessToken"] };
            NSError* error = [NSError errorWithDomain:kOAIAccountApiErrorDomain code:kOAIAccountApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'appKey' is set
    if (appKey == nil) {
        NSParameterAssert(appKey);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"appKey"] };
            NSError* error = [NSError errorWithDomain:kOAIAccountApiErrorDomain code:kOAIAccountApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/{version}/account/login/delegate"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (version != nil) {
        pathParams[@"version"] = version;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (deviceId != nil) {
        queryParams[@"deviceId"] = deviceId;
    }
    if (accessToken != nil) {
        queryParams[@"accessToken"] = accessToken;
    }
    if (accessTokenSecret != nil) {
        queryParams[@"accessTokenSecret"] = accessTokenSecret;
    }
    if (delegatedAccountId != nil) {
        queryParams[@"delegatedAccountId"] = delegatedAccountId;
    }
    if (delegatedUsername != nil) {
        queryParams[@"delegatedUsername"] = delegatedUsername;
    }
    if (networkUID != nil) {
        queryParams[@"networkUID"] = networkUID;
    }
    if (appKey != nil) {
        queryParams[@"appKey"] = appKey;
    }
    if (ageRestriction != nil) {
        queryParams[@"ageRestriction"] = ageRestriction;
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
/// Login Account
/// General login service that supports various authentication methods. Currently supports Facebook, Twitter, Sirqul Username, and Sirqul Phone by default. Can also support custom networks created using the {@link ThirdPartyApi}
///  @param version  
///
///  @param accessToken The access token to authenticate with (ex: username or fb token) 
///
///  @param networkUID The access provider to authenticate against. This can be custom  networks created using the ThirdPartyApi as well. Supported values by default  include: FACEBOOK, TWITTER, USERNAME, PHONE  
///
///  @param appKey The application key 
///
///  @param deviceId The unique id of the device making the request (optional)
///
///  @param deviceIdType The type of device id (this is defined by the client), ie. MAC_ADDRESS, APPLE_UDID, etc (optional)
///
///  @param accessTokenSecret The secret to authenticate with (ex: password) (optional)
///
///  @param ageRestriction Checks user's birthday to see if they meet an age requirement. If the user is under age, an error message is returned. (optional, default to @0)
///
///  @param responseFilters This determines how much of the profile should be returned, see ProfileFilters (optional, default to @"PROFILE")
///
///  @param latitude Used to update the user's current location (optional)
///
///  @param longitude Used to update the user's current location (optional)
///
///  @param emailMatch Option to check for email if username doesn't match, also support multiple accounts (optional, default to @(NO))
///
///  @param chosenAccountId Chosen account Id sent from the app - pass in the 2nd request to choose an account from multiple accounts matching the email - use one of the account id from the previous request (optional, default to @0)
///
///  @param thirdPartyCredentialId Third-party credential Id, pass in the 2nd request to choose an account from multiple accounts matching the email - use the id from the previous call ThirdPartyCredential object (optional, default to @0)
///
///  @returns OAIProfileResponse*
///
-(NSURLSessionTask*) loginGeneralWithVersion: (NSNumber*) version
    accessToken: (NSString*) accessToken
    networkUID: (NSString*) networkUID
    appKey: (NSString*) appKey
    deviceId: (NSString*) deviceId
    deviceIdType: (NSString*) deviceIdType
    accessTokenSecret: (NSString*) accessTokenSecret
    ageRestriction: (NSNumber*) ageRestriction
    responseFilters: (NSString*) responseFilters
    latitude: (NSNumber*) latitude
    longitude: (NSNumber*) longitude
    emailMatch: (NSNumber*) emailMatch
    chosenAccountId: (NSNumber*) chosenAccountId
    thirdPartyCredentialId: (NSNumber*) thirdPartyCredentialId
    completionHandler: (void (^)(OAIProfileResponse* output, NSError* error)) handler {
    // verify the required parameter 'version' is set
    if (version == nil) {
        NSParameterAssert(version);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"version"] };
            NSError* error = [NSError errorWithDomain:kOAIAccountApiErrorDomain code:kOAIAccountApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'accessToken' is set
    if (accessToken == nil) {
        NSParameterAssert(accessToken);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accessToken"] };
            NSError* error = [NSError errorWithDomain:kOAIAccountApiErrorDomain code:kOAIAccountApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'networkUID' is set
    if (networkUID == nil) {
        NSParameterAssert(networkUID);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"networkUID"] };
            NSError* error = [NSError errorWithDomain:kOAIAccountApiErrorDomain code:kOAIAccountApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'appKey' is set
    if (appKey == nil) {
        NSParameterAssert(appKey);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"appKey"] };
            NSError* error = [NSError errorWithDomain:kOAIAccountApiErrorDomain code:kOAIAccountApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/{version}/account/login"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (version != nil) {
        pathParams[@"version"] = version;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (deviceId != nil) {
        queryParams[@"deviceId"] = deviceId;
    }
    if (deviceIdType != nil) {
        queryParams[@"deviceIdType"] = deviceIdType;
    }
    if (accessToken != nil) {
        queryParams[@"accessToken"] = accessToken;
    }
    if (accessTokenSecret != nil) {
        queryParams[@"accessTokenSecret"] = accessTokenSecret;
    }
    if (networkUID != nil) {
        queryParams[@"networkUID"] = networkUID;
    }
    if (appKey != nil) {
        queryParams[@"appKey"] = appKey;
    }
    if (ageRestriction != nil) {
        queryParams[@"ageRestriction"] = ageRestriction;
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
    if (emailMatch != nil) {
        queryParams[@"emailMatch"] = [emailMatch isEqual:@(YES)] ? @"true" : @"false";
    }
    if (chosenAccountId != nil) {
        queryParams[@"chosenAccountId"] = chosenAccountId;
    }
    if (thirdPartyCredentialId != nil) {
        queryParams[@"thirdPartyCredentialId"] = thirdPartyCredentialId;
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
/// Login Account (Username)
/// Login to system with an account
///  @param version  
///
///  @param username the user's email address they used to sign-up 
///
///  @param password the password 
///
///  @param deviceId the device id (optional)
///
///  @param latitude the current latitude of the user (optional)
///
///  @param longitude the current longitude of the user (optional)
///
///  @param app the app (optional)
///
///  @param gameType This parameter is deprecated. This is deprecated, use appKey. (optional)
///
///  @param appKey the application key (optional)
///
///  @param returnProfile the profile to return (optional)
///
///  @param responseFilters a comma separated list of ProfileFilters for filtering the returned response data (optional)
///
///  @returns OAIProfileResponse*
///
-(NSURLSessionTask*) loginUsernameWithVersion: (NSNumber*) version
    username: (NSString*) username
    password: (NSString*) password
    deviceId: (NSString*) deviceId
    latitude: (NSNumber*) latitude
    longitude: (NSNumber*) longitude
    app: (NSString*) app
    gameType: (NSString*) gameType
    appKey: (NSString*) appKey
    returnProfile: (NSNumber*) returnProfile
    responseFilters: (NSString*) responseFilters
    completionHandler: (void (^)(OAIProfileResponse* output, NSError* error)) handler {
    // verify the required parameter 'version' is set
    if (version == nil) {
        NSParameterAssert(version);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"version"] };
            NSError* error = [NSError errorWithDomain:kOAIAccountApiErrorDomain code:kOAIAccountApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'username' is set
    if (username == nil) {
        NSParameterAssert(username);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"username"] };
            NSError* error = [NSError errorWithDomain:kOAIAccountApiErrorDomain code:kOAIAccountApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'password' is set
    if (password == nil) {
        NSParameterAssert(password);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"password"] };
            NSError* error = [NSError errorWithDomain:kOAIAccountApiErrorDomain code:kOAIAccountApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/{version}/account/get"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (version != nil) {
        pathParams[@"version"] = version;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (deviceId != nil) {
        queryParams[@"deviceId"] = deviceId;
    }
    if (username != nil) {
        queryParams[@"username"] = username;
    }
    if (password != nil) {
        queryParams[@"password"] = password;
    }
    if (latitude != nil) {
        queryParams[@"latitude"] = latitude;
    }
    if (longitude != nil) {
        queryParams[@"longitude"] = longitude;
    }
    if (app != nil) {
        queryParams[@"app"] = app;
    }
    if (gameType != nil) {
        queryParams[@"gameType"] = gameType;
    }
    if (appKey != nil) {
        queryParams[@"appKey"] = appKey;
    }
    if (returnProfile != nil) {
        queryParams[@"returnProfile"] = [returnProfile isEqual:@(YES)] ? @"true" : @"false";
    }
    if (responseFilters != nil) {
        queryParams[@"responseFilters"] = responseFilters;
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
/// Logout Account
/// Cleans up the users data for logging out.
///  @param version  
///
///  @param deviceId The device id (deviceId or accountId required) (optional)
///
///  @param deviceIdType Device Id Type (optional)
///
///  @param accountId The account id of the user (deviceId or accountId required) (optional)
///
///  @param latitude The current latitude of the user (optional)
///
///  @param longitude The current longitude of the user (optional)
///
///  @returns OAISirqulResponse*
///
-(NSURLSessionTask*) logoutWithVersion: (NSNumber*) version
    deviceId: (NSString*) deviceId
    deviceIdType: (NSString*) deviceIdType
    accountId: (NSNumber*) accountId
    latitude: (NSNumber*) latitude
    longitude: (NSNumber*) longitude
    completionHandler: (void (^)(OAISirqulResponse* output, NSError* error)) handler {
    // verify the required parameter 'version' is set
    if (version == nil) {
        NSParameterAssert(version);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"version"] };
            NSError* error = [NSError errorWithDomain:kOAIAccountApiErrorDomain code:kOAIAccountApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/{version}/account/logout"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (version != nil) {
        pathParams[@"version"] = version;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (deviceId != nil) {
        queryParams[@"deviceId"] = deviceId;
    }
    if (deviceIdType != nil) {
        queryParams[@"deviceIdType"] = deviceIdType;
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
/// Merge Account
/// Merges the analytics, achievements, leaderboards of two accounts.
///  @param version  
///
///  @param mergeAccountId The id of the account to being merged 
///
///  @param appKey The application key 
///
///  @param deviceId The device id (deviceId or accountId required) (optional)
///
///  @param accountId The account id of the user (deviceId or accountId required) (optional)
///
///  @returns OAISirqulResponse*
///
-(NSURLSessionTask*) mergeAccountWithVersion: (NSNumber*) version
    mergeAccountId: (NSNumber*) mergeAccountId
    appKey: (NSString*) appKey
    deviceId: (NSString*) deviceId
    accountId: (NSNumber*) accountId
    completionHandler: (void (^)(OAISirqulResponse* output, NSError* error)) handler {
    // verify the required parameter 'version' is set
    if (version == nil) {
        NSParameterAssert(version);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"version"] };
            NSError* error = [NSError errorWithDomain:kOAIAccountApiErrorDomain code:kOAIAccountApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'mergeAccountId' is set
    if (mergeAccountId == nil) {
        NSParameterAssert(mergeAccountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"mergeAccountId"] };
            NSError* error = [NSError errorWithDomain:kOAIAccountApiErrorDomain code:kOAIAccountApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'appKey' is set
    if (appKey == nil) {
        NSParameterAssert(appKey);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"appKey"] };
            NSError* error = [NSError errorWithDomain:kOAIAccountApiErrorDomain code:kOAIAccountApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/{version}/account/merge"];

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
    if (mergeAccountId != nil) {
        queryParams[@"mergeAccountId"] = mergeAccountId;
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
/// Update Password
/// Update the account password.
///  @param version  
///
///  @param accountId The account to update 
///
///  @param oldPassword The current password, used to validate access 
///
///  @param varNewPassword The new password to set, cannot be empty 
///
///  @param confirmPassword The new password to confirm, must match newPassword 
///
///  @returns OAISirqulResponse*
///
-(NSURLSessionTask*) passwordChangeWithVersion: (NSNumber*) version
    accountId: (NSNumber*) accountId
    oldPassword: (NSString*) oldPassword
    varNewPassword: (NSString*) varNewPassword
    confirmPassword: (NSString*) confirmPassword
    completionHandler: (void (^)(OAISirqulResponse* output, NSError* error)) handler {
    // verify the required parameter 'version' is set
    if (version == nil) {
        NSParameterAssert(version);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"version"] };
            NSError* error = [NSError errorWithDomain:kOAIAccountApiErrorDomain code:kOAIAccountApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kOAIAccountApiErrorDomain code:kOAIAccountApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'oldPassword' is set
    if (oldPassword == nil) {
        NSParameterAssert(oldPassword);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"oldPassword"] };
            NSError* error = [NSError errorWithDomain:kOAIAccountApiErrorDomain code:kOAIAccountApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'varNewPassword' is set
    if (varNewPassword == nil) {
        NSParameterAssert(varNewPassword);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"varNewPassword"] };
            NSError* error = [NSError errorWithDomain:kOAIAccountApiErrorDomain code:kOAIAccountApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'confirmPassword' is set
    if (confirmPassword == nil) {
        NSParameterAssert(confirmPassword);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"confirmPassword"] };
            NSError* error = [NSError errorWithDomain:kOAIAccountApiErrorDomain code:kOAIAccountApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/{version}/account/passwordchange"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (version != nil) {
        pathParams[@"version"] = version;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        queryParams[@"accountId"] = accountId;
    }
    if (oldPassword != nil) {
        queryParams[@"oldPassword"] = oldPassword;
    }
    if (varNewPassword != nil) {
        queryParams[@"newPassword"] = varNewPassword;
    }
    if (confirmPassword != nil) {
        queryParams[@"confirmPassword"] = confirmPassword;
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
/// Reset Password
/// Reset the account password. The token must be valid and not expired. Use the RequestPasswordReset end point to request a token.
///  @param version  
///
///  @param token The token associated with the account to update, good for 24 hours 
///
///  @param password The new password to set, cannot be empty 
///
///  @param confirm The new password to confirm, must match newPassword 
///
///  @returns OAISirqulResponse*
///
-(NSURLSessionTask*) passwordResetWithVersion: (NSNumber*) version
    token: (NSString*) token
    password: (NSString*) password
    confirm: (NSString*) confirm
    completionHandler: (void (^)(OAISirqulResponse* output, NSError* error)) handler {
    // verify the required parameter 'version' is set
    if (version == nil) {
        NSParameterAssert(version);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"version"] };
            NSError* error = [NSError errorWithDomain:kOAIAccountApiErrorDomain code:kOAIAccountApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'token' is set
    if (token == nil) {
        NSParameterAssert(token);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"token"] };
            NSError* error = [NSError errorWithDomain:kOAIAccountApiErrorDomain code:kOAIAccountApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'password' is set
    if (password == nil) {
        NSParameterAssert(password);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"password"] };
            NSError* error = [NSError errorWithDomain:kOAIAccountApiErrorDomain code:kOAIAccountApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'confirm' is set
    if (confirm == nil) {
        NSParameterAssert(confirm);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"confirm"] };
            NSError* error = [NSError errorWithDomain:kOAIAccountApiErrorDomain code:kOAIAccountApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/{version}/account/passwordreset"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (version != nil) {
        pathParams[@"version"] = version;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (token != nil) {
        queryParams[@"token"] = token;
    }
    if (password != nil) {
        queryParams[@"password"] = password;
    }
    if (confirm != nil) {
        queryParams[@"confirm"] = confirm;
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
/// Request Password Reset
/// Request that an account password be reset. The account is looked up by email address and then a link is sent via email to that account with a reset token. The token is valid for 24 hours.
///  @param version  
///
///  @param email The email/username of the account 
///
///  @param from this is the sender email (optional, default to @"Sirqul")
///
///  @param domain this is the domain (like dev.sirqul.com) used to generate the password reset link (optional)
///
///  @param subUrl this is the the subUrl (like resetpassword) used to generate a password reset link (optional)
///
///  @param referer this is used to generate a password reset link (optional, default to @"http://dev.sirqul.com/resetpassword")
///
///  @returns OAISirqulResponse*
///
-(NSURLSessionTask*) requestPasswordResetWithVersion: (NSNumber*) version
    email: (NSString*) email
    from: (NSString*) from
    domain: (NSString*) domain
    subUrl: (NSString*) subUrl
    referer: (NSString*) referer
    completionHandler: (void (^)(OAISirqulResponse* output, NSError* error)) handler {
    // verify the required parameter 'version' is set
    if (version == nil) {
        NSParameterAssert(version);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"version"] };
            NSError* error = [NSError errorWithDomain:kOAIAccountApiErrorDomain code:kOAIAccountApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'email' is set
    if (email == nil) {
        NSParameterAssert(email);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"email"] };
            NSError* error = [NSError errorWithDomain:kOAIAccountApiErrorDomain code:kOAIAccountApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/{version}/account/requestpasswordreset"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (version != nil) {
        pathParams[@"version"] = version;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (email != nil) {
        queryParams[@"email"] = email;
    }
    if (from != nil) {
        queryParams[@"from"] = from;
    }
    if (domain != nil) {
        queryParams[@"domain"] = domain;
    }
    if (subUrl != nil) {
        queryParams[@"subUrl"] = subUrl;
    }
    if (referer != nil) {
        queryParams[@"referer"] = referer;
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
/// Send Validation Request
/// Send an email to validate a user's account.
///  @param version  
///
///  @param accountId The account id of the user 
///
///  @returns OAISirqulResponse*
///
-(NSURLSessionTask*) requestValidateAccountWithVersion: (NSNumber*) version
    accountId: (NSNumber*) accountId
    completionHandler: (void (^)(OAISirqulResponse* output, NSError* error)) handler {
    // verify the required parameter 'version' is set
    if (version == nil) {
        NSParameterAssert(version);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"version"] };
            NSError* error = [NSError errorWithDomain:kOAIAccountApiErrorDomain code:kOAIAccountApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kOAIAccountApiErrorDomain code:kOAIAccountApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/{version}/account/requestValidateAccount"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (version != nil) {
        pathParams[@"version"] = version;
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
/// Search Accounts
/// Search for account profiles.
///  @param version  
///
///  @param accountId The id of the account requesting 
///
///  @param appKey The application key 
///
///  @param keyword The keyword for for querying the account (optional)
///
///  @param latitude the latitude (optional)
///
///  @param longitude the longitude (optional)
///
///  @param radius the radius (optional, default to @5)
///
///  @param gender the user's gender (optional)
///
///  @param gameExperience the user's Game Experience (optional)
///
///  @param age the user's age (optional)
///
///  @param categoryIds the user's Category Ids (optional)
///
///  @param returnNulls Return Nulls (optional, default to @(YES))
///
///  @param responseFilters A comma separated list of ProfileFilters for filtering the returned response data (optional, default to @"PROFILE")
///
///  @param purchaseType A comma separated list of PurchaseType (optional, default to @"SIRQUL")
///
///  @param sortField The field to sort by (optional, default to @"id")
///
///  @param descending The order to return the results. Default is false, which will return the results in ascending order. (optional, default to @(NO))
///
///  @param start The index into the record set to start with. (optional, default to @0)
///
///  @param limit The total number of record to return. (optional, default to @20)
///
///  @param activeOnly Determines whether to return only active results. Default is false. (optional, default to @(NO))
///
///  @returns NSArray<OAIProfileResponse>*
///
-(NSURLSessionTask*) searchAccountsWithVersion: (NSNumber*) version
    accountId: (NSNumber*) accountId
    appKey: (NSString*) appKey
    keyword: (NSString*) keyword
    latitude: (NSNumber*) latitude
    longitude: (NSNumber*) longitude
    radius: (NSNumber*) radius
    gender: (NSString*) gender
    gameExperience: (NSString*) gameExperience
    age: (NSNumber*) age
    categoryIds: (NSString*) categoryIds
    returnNulls: (NSNumber*) returnNulls
    responseFilters: (NSString*) responseFilters
    purchaseType: (NSString*) purchaseType
    sortField: (NSString*) sortField
    descending: (NSNumber*) descending
    start: (NSNumber*) start
    limit: (NSNumber*) limit
    activeOnly: (NSNumber*) activeOnly
    completionHandler: (void (^)(NSArray<OAIProfileResponse>* output, NSError* error)) handler {
    // verify the required parameter 'version' is set
    if (version == nil) {
        NSParameterAssert(version);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"version"] };
            NSError* error = [NSError errorWithDomain:kOAIAccountApiErrorDomain code:kOAIAccountApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kOAIAccountApiErrorDomain code:kOAIAccountApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'appKey' is set
    if (appKey == nil) {
        NSParameterAssert(appKey);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"appKey"] };
            NSError* error = [NSError errorWithDomain:kOAIAccountApiErrorDomain code:kOAIAccountApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/{version}/account/profile/search"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (version != nil) {
        pathParams[@"version"] = version;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        queryParams[@"accountId"] = accountId;
    }
    if (appKey != nil) {
        queryParams[@"appKey"] = appKey;
    }
    if (keyword != nil) {
        queryParams[@"keyword"] = keyword;
    }
    if (latitude != nil) {
        queryParams[@"latitude"] = latitude;
    }
    if (longitude != nil) {
        queryParams[@"longitude"] = longitude;
    }
    if (radius != nil) {
        queryParams[@"radius"] = radius;
    }
    if (gender != nil) {
        queryParams[@"gender"] = gender;
    }
    if (gameExperience != nil) {
        queryParams[@"gameExperience"] = gameExperience;
    }
    if (age != nil) {
        queryParams[@"age"] = age;
    }
    if (categoryIds != nil) {
        queryParams[@"categoryIds"] = categoryIds;
    }
    if (returnNulls != nil) {
        queryParams[@"returnNulls"] = [returnNulls isEqual:@(YES)] ? @"true" : @"false";
    }
    if (responseFilters != nil) {
        queryParams[@"responseFilters"] = responseFilters;
    }
    if (purchaseType != nil) {
        queryParams[@"purchaseType"] = purchaseType;
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
                              responseType: @"NSArray<OAIProfileResponse>*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSArray<OAIProfileResponse>*)data, error);
                                }
                            }];
}

///
/// Login Account (Encrypted Username)
/// ogin with encrypted user-name and password.
///  @param version  
///
///  @param username The user's encrypted email address they used to sign-up 
///
///  @param password The encrypted password 
///
///  @param gameType The application key 
///
///  @param deviceId The device id (optional)
///
///  @param charsetName Charset Name (optional, default to @"UTF-8")
///
///  @param latitude The current latitude of the user (optional)
///
///  @param longitude The current longitude of the user (optional)
///
///  @param returnProfile Return Profile (optional, default to @(NO))
///
///  @param responseFilters A comma separated list of ProfileFilters for filtering the returned response data (optional, default to @"PROFILE")
///
///  @returns OAIProfileResponse*
///
-(NSURLSessionTask*) secureLoginWithVersion: (NSNumber*) version
    username: (NSString*) username
    password: (NSString*) password
    gameType: (NSString*) gameType
    deviceId: (NSString*) deviceId
    charsetName: (NSString*) charsetName
    latitude: (NSNumber*) latitude
    longitude: (NSNumber*) longitude
    returnProfile: (NSNumber*) returnProfile
    responseFilters: (NSString*) responseFilters
    completionHandler: (void (^)(OAIProfileResponse* output, NSError* error)) handler {
    // verify the required parameter 'version' is set
    if (version == nil) {
        NSParameterAssert(version);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"version"] };
            NSError* error = [NSError errorWithDomain:kOAIAccountApiErrorDomain code:kOAIAccountApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'username' is set
    if (username == nil) {
        NSParameterAssert(username);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"username"] };
            NSError* error = [NSError errorWithDomain:kOAIAccountApiErrorDomain code:kOAIAccountApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'password' is set
    if (password == nil) {
        NSParameterAssert(password);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"password"] };
            NSError* error = [NSError errorWithDomain:kOAIAccountApiErrorDomain code:kOAIAccountApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'gameType' is set
    if (gameType == nil) {
        NSParameterAssert(gameType);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"gameType"] };
            NSError* error = [NSError errorWithDomain:kOAIAccountApiErrorDomain code:kOAIAccountApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/{version}/account/login/validate"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (version != nil) {
        pathParams[@"version"] = version;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (deviceId != nil) {
        queryParams[@"deviceId"] = deviceId;
    }
    if (username != nil) {
        queryParams[@"username"] = username;
    }
    if (password != nil) {
        queryParams[@"password"] = password;
    }
    if (gameType != nil) {
        queryParams[@"gameType"] = gameType;
    }
    if (charsetName != nil) {
        queryParams[@"charsetName"] = charsetName;
    }
    if (latitude != nil) {
        queryParams[@"latitude"] = latitude;
    }
    if (longitude != nil) {
        queryParams[@"longitude"] = longitude;
    }
    if (returnProfile != nil) {
        queryParams[@"returnProfile"] = [returnProfile isEqual:@(YES)] ? @"true" : @"false";
    }
    if (responseFilters != nil) {
        queryParams[@"responseFilters"] = responseFilters;
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
/// Create Account (Encrypted Username)
/// Create a new account by role (with encrypted user-name and password)
///  @param version  
///
///  @param deviceId The device id 
///
///  @param username The encrypted email of the user, this is what will be used when they login 
///
///  @param password The encrypted password of the user 
///
///  @param name The full name of the user. If this parameter is not empty, the  following parameters will be ignored: prefixName, firstName, middleName,  lastName, and suffixName  (optional)
///
///  @param inviteToken the inviteToken that the referrer use for this account to sign up (optional)
///
///  @param prefixName If the parameter 'name' is empty or not present, this field will be used to set the prefix of the user's name (optional)
///
///  @param firstName If the parameter 'name' is empty or not present, this field will be used to set the user's first name (optional)
///
///  @param middleName If the parameter 'name' is empty or not present, this field will be used to set the user's middle name (optional)
///
///  @param lastName If the parameter 'name' is empty or not present, this field will be used to set the user's last name (optional)
///
///  @param suffixName If the parameter 'name' is empty or not present, this field will be used to set the suffix of the user's name (optional)
///
///  @param title Title (optional)
///
///  @param deviceIdType Device Id Type (optional)
///
///  @param emailAddress The user's contact email address (NOT the username) which is also used for email validation (optional)
///
///  @param assetId The asset id to set the user's profile image (optional)
///
///  @param address the user's address (optional)
///
///  @param zipcode The street zipcode of the user's contact location (optional)
///
///  @param gender The gender of the user AudienceGender (optional)
///
///  @param birthday The birthday date of the user in milliseconds (optional)
///
///  @param homePhone the user's home phone number (optional)
///
///  @param cellPhone the user's cell phone number (optional)
///
///  @param cellPhoneCarrier the user's Cell Phone Carrier (optional)
///
///  @param businessPhone the user's Business Phone Number (optional)
///
///  @param role The type of account being created {RETAILER, MEMBER, DEVELOPER, GUEST (optional, default to @"MEMBER")
///
///  @param platforms Comma separated list of development platforms: MAC, WINDOWS, IOS, ANDROID, WINDOWSPHONE, KINDLE, UNITY3D, COCOS2D, HTML5, FACEBOOK (optional)
///
///  @param tags Search tags (optional)
///
///  @param aboutUs About Us information (optional)
///
///  @param gameExperience Game experience level of the user {ANY, NEW, BEGINNER, INTERMEDIATE, EXPERT (optional)
///
///  @param categoryIds A list of category ids that represent interests and associations (optional)
///
///  @param hometown The user's hometown (optional)
///
///  @param height The user's height (optional)
///
///  @param heightIndex The user's height in a numerical value that can be used for ordering/searching (optional)
///
///  @param ethnicity The user's ethnicity (optional)
///
///  @param bodyType The user's body type (optional)
///
///  @param maritalStatus The user's maritial status (optional)
///
///  @param children The user's children status (optional)
///
///  @param religion The user's religion (optional)
///
///  @param education The user's education (optional)
///
///  @param educationIndex The user's education in a numerical value that can be used for ordering/searching (optional)
///
///  @param smoke The user's smoke status (optional)
///
///  @param drink The user's drink status (optional)
///
///  @param companionship The user's companionship status (optional)
///
///  @param companionshipIndex The user's companionship index (optional)
///
///  @param preferredMinAge The preferred minimum age in the account location search (optional)
///
///  @param preferredMaxAge The preferred maximum age in the account location search (optional)
///
///  @param preferredMinHeight The preferred minimum height in the account location search (optional)
///
///  @param preferredMaxHeight The preferred maximum height in the account location search (optional)
///
///  @param preferredGender The preferred gender in the account location search (optional)
///
///  @param preferredEducation The preferred education in the account location search (optional)
///
///  @param preferredEducationIndex The preferred education in a numerical value that can be used for ordering/searching (optional)
///
///  @param preferredBodyType The preferred body type in the account location search (optional)
///
///  @param preferredEthnicity The preferred ethnicity in the account location search (optional)
///
///  @param preferredLocation The preferred education in the account location search (optional)
///
///  @param preferredLocationRange The preferred location range in the account location search (optional)
///
///  @param latitude The current latitude of the user (optional)
///
///  @param longitude The current longitude of the user (optional)
///
///  @param acceptedTerms Accepted Terms (optional, default to @(YES))
///
///  @param charsetName Charset Name (optional, default to @"UTF-8")
///
///  @param gameType Game Type (optional)
///
///  @param appKey The application key (optional)
///
///  @param appVersion App Version (optional)
///
///  @param responseType Response Type (optional)
///
///  @returns OAIProfileInfoResponse*
///
-(NSURLSessionTask*) secureSignupWithVersion: (NSNumber*) version
    deviceId: (NSString*) deviceId
    username: (NSString*) username
    password: (NSString*) password
    name: (NSString*) name
    inviteToken: (NSString*) inviteToken
    prefixName: (NSString*) prefixName
    firstName: (NSString*) firstName
    middleName: (NSString*) middleName
    lastName: (NSString*) lastName
    suffixName: (NSString*) suffixName
    title: (NSString*) title
    deviceIdType: (NSString*) deviceIdType
    emailAddress: (NSString*) emailAddress
    assetId: (NSNumber*) assetId
    address: (NSString*) address
    zipcode: (NSString*) zipcode
    gender: (NSString*) gender
    birthday: (NSNumber*) birthday
    homePhone: (NSString*) homePhone
    cellPhone: (NSString*) cellPhone
    cellPhoneCarrier: (NSString*) cellPhoneCarrier
    businessPhone: (NSString*) businessPhone
    role: (NSString*) role
    platforms: (NSString*) platforms
    tags: (NSString*) tags
    aboutUs: (NSString*) aboutUs
    gameExperience: (NSString*) gameExperience
    categoryIds: (NSString*) categoryIds
    hometown: (NSString*) hometown
    height: (NSString*) height
    heightIndex: (NSNumber*) heightIndex
    ethnicity: (NSString*) ethnicity
    bodyType: (NSString*) bodyType
    maritalStatus: (NSString*) maritalStatus
    children: (NSString*) children
    religion: (NSString*) religion
    education: (NSString*) education
    educationIndex: (NSNumber*) educationIndex
    smoke: (NSString*) smoke
    drink: (NSString*) drink
    companionship: (NSString*) companionship
    companionshipIndex: (NSNumber*) companionshipIndex
    preferredMinAge: (NSNumber*) preferredMinAge
    preferredMaxAge: (NSNumber*) preferredMaxAge
    preferredMinHeight: (NSNumber*) preferredMinHeight
    preferredMaxHeight: (NSNumber*) preferredMaxHeight
    preferredGender: (NSString*) preferredGender
    preferredEducation: (NSString*) preferredEducation
    preferredEducationIndex: (NSNumber*) preferredEducationIndex
    preferredBodyType: (NSString*) preferredBodyType
    preferredEthnicity: (NSString*) preferredEthnicity
    preferredLocation: (NSString*) preferredLocation
    preferredLocationRange: (NSNumber*) preferredLocationRange
    latitude: (NSNumber*) latitude
    longitude: (NSNumber*) longitude
    acceptedTerms: (NSNumber*) acceptedTerms
    charsetName: (NSString*) charsetName
    gameType: (NSString*) gameType
    appKey: (NSString*) appKey
    appVersion: (NSString*) appVersion
    responseType: (NSString*) responseType
    completionHandler: (void (^)(OAIProfileInfoResponse* output, NSError* error)) handler {
    // verify the required parameter 'version' is set
    if (version == nil) {
        NSParameterAssert(version);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"version"] };
            NSError* error = [NSError errorWithDomain:kOAIAccountApiErrorDomain code:kOAIAccountApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'deviceId' is set
    if (deviceId == nil) {
        NSParameterAssert(deviceId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"deviceId"] };
            NSError* error = [NSError errorWithDomain:kOAIAccountApiErrorDomain code:kOAIAccountApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'username' is set
    if (username == nil) {
        NSParameterAssert(username);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"username"] };
            NSError* error = [NSError errorWithDomain:kOAIAccountApiErrorDomain code:kOAIAccountApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'password' is set
    if (password == nil) {
        NSParameterAssert(password);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"password"] };
            NSError* error = [NSError errorWithDomain:kOAIAccountApiErrorDomain code:kOAIAccountApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/{version}/account/create/validate"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (version != nil) {
        pathParams[@"version"] = version;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (name != nil) {
        queryParams[@"name"] = name;
    }
    if (inviteToken != nil) {
        queryParams[@"inviteToken"] = inviteToken;
    }
    if (prefixName != nil) {
        queryParams[@"prefixName"] = prefixName;
    }
    if (firstName != nil) {
        queryParams[@"firstName"] = firstName;
    }
    if (middleName != nil) {
        queryParams[@"middleName"] = middleName;
    }
    if (lastName != nil) {
        queryParams[@"lastName"] = lastName;
    }
    if (suffixName != nil) {
        queryParams[@"suffixName"] = suffixName;
    }
    if (title != nil) {
        queryParams[@"title"] = title;
    }
    if (deviceId != nil) {
        queryParams[@"deviceId"] = deviceId;
    }
    if (deviceIdType != nil) {
        queryParams[@"deviceIdType"] = deviceIdType;
    }
    if (username != nil) {
        queryParams[@"username"] = username;
    }
    if (password != nil) {
        queryParams[@"password"] = password;
    }
    if (emailAddress != nil) {
        queryParams[@"emailAddress"] = emailAddress;
    }
    if (assetId != nil) {
        queryParams[@"assetId"] = assetId;
    }
    if (address != nil) {
        queryParams[@"address"] = address;
    }
    if (zipcode != nil) {
        queryParams[@"zipcode"] = zipcode;
    }
    if (gender != nil) {
        queryParams[@"gender"] = gender;
    }
    if (birthday != nil) {
        queryParams[@"birthday"] = birthday;
    }
    if (homePhone != nil) {
        queryParams[@"homePhone"] = homePhone;
    }
    if (cellPhone != nil) {
        queryParams[@"cellPhone"] = cellPhone;
    }
    if (cellPhoneCarrier != nil) {
        queryParams[@"cellPhoneCarrier"] = cellPhoneCarrier;
    }
    if (businessPhone != nil) {
        queryParams[@"businessPhone"] = businessPhone;
    }
    if (role != nil) {
        queryParams[@"role"] = role;
    }
    if (platforms != nil) {
        queryParams[@"platforms"] = platforms;
    }
    if (tags != nil) {
        queryParams[@"tags"] = tags;
    }
    if (aboutUs != nil) {
        queryParams[@"aboutUs"] = aboutUs;
    }
    if (gameExperience != nil) {
        queryParams[@"gameExperience"] = gameExperience;
    }
    if (categoryIds != nil) {
        queryParams[@"categoryIds"] = categoryIds;
    }
    if (hometown != nil) {
        queryParams[@"hometown"] = hometown;
    }
    if (height != nil) {
        queryParams[@"height"] = height;
    }
    if (heightIndex != nil) {
        queryParams[@"heightIndex"] = heightIndex;
    }
    if (ethnicity != nil) {
        queryParams[@"ethnicity"] = ethnicity;
    }
    if (bodyType != nil) {
        queryParams[@"bodyType"] = bodyType;
    }
    if (maritalStatus != nil) {
        queryParams[@"maritalStatus"] = maritalStatus;
    }
    if (children != nil) {
        queryParams[@"children"] = children;
    }
    if (religion != nil) {
        queryParams[@"religion"] = religion;
    }
    if (education != nil) {
        queryParams[@"education"] = education;
    }
    if (educationIndex != nil) {
        queryParams[@"educationIndex"] = educationIndex;
    }
    if (smoke != nil) {
        queryParams[@"smoke"] = smoke;
    }
    if (drink != nil) {
        queryParams[@"drink"] = drink;
    }
    if (companionship != nil) {
        queryParams[@"companionship"] = companionship;
    }
    if (companionshipIndex != nil) {
        queryParams[@"companionshipIndex"] = companionshipIndex;
    }
    if (preferredMinAge != nil) {
        queryParams[@"preferredMinAge"] = preferredMinAge;
    }
    if (preferredMaxAge != nil) {
        queryParams[@"preferredMaxAge"] = preferredMaxAge;
    }
    if (preferredMinHeight != nil) {
        queryParams[@"preferredMinHeight"] = preferredMinHeight;
    }
    if (preferredMaxHeight != nil) {
        queryParams[@"preferredMaxHeight"] = preferredMaxHeight;
    }
    if (preferredGender != nil) {
        queryParams[@"preferredGender"] = preferredGender;
    }
    if (preferredEducation != nil) {
        queryParams[@"preferredEducation"] = preferredEducation;
    }
    if (preferredEducationIndex != nil) {
        queryParams[@"preferredEducationIndex"] = preferredEducationIndex;
    }
    if (preferredBodyType != nil) {
        queryParams[@"preferredBodyType"] = preferredBodyType;
    }
    if (preferredEthnicity != nil) {
        queryParams[@"preferredEthnicity"] = preferredEthnicity;
    }
    if (preferredLocation != nil) {
        queryParams[@"preferredLocation"] = preferredLocation;
    }
    if (preferredLocationRange != nil) {
        queryParams[@"preferredLocationRange"] = preferredLocationRange;
    }
    if (latitude != nil) {
        queryParams[@"latitude"] = latitude;
    }
    if (longitude != nil) {
        queryParams[@"longitude"] = longitude;
    }
    if (acceptedTerms != nil) {
        queryParams[@"acceptedTerms"] = [acceptedTerms isEqual:@(YES)] ? @"true" : @"false";
    }
    if (charsetName != nil) {
        queryParams[@"charsetName"] = charsetName;
    }
    if (gameType != nil) {
        queryParams[@"gameType"] = gameType;
    }
    if (appKey != nil) {
        queryParams[@"appKey"] = appKey;
    }
    if (appVersion != nil) {
        queryParams[@"appVersion"] = appVersion;
    }
    if (responseType != nil) {
        queryParams[@"responseType"] = responseType;
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
                              responseType: @"OAIProfileInfoResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIProfileInfoResponse*)data, error);
                                }
                            }];
}

///
/// Save Match Token
/// Save user's match token to be used for profile match making
///  @param version  
///
///  @param deviceId The device id (deviceId or accountId required) (optional)
///
///  @param accountId The account id of the user (deviceId or accountId required) (optional)
///
///  @param matchToken A string of numbers (optional)
///
///  @param gameType Game Type (deprecated) (optional, default to @"BOOPY")
///
///  @param appKey The application key (optional)
///
///  @param latitude The current latitude of the user (optional)
///
///  @param longitude The current longitude of the user (optional)
///
///  @returns OAISirqulResponse*
///
-(NSURLSessionTask*) setMatchTokenWithVersion: (NSNumber*) version
    deviceId: (NSString*) deviceId
    accountId: (NSNumber*) accountId
    matchToken: (NSString*) matchToken
    gameType: (NSString*) gameType
    appKey: (NSString*) appKey
    latitude: (NSNumber*) latitude
    longitude: (NSNumber*) longitude
    completionHandler: (void (^)(OAISirqulResponse* output, NSError* error)) handler {
    // verify the required parameter 'version' is set
    if (version == nil) {
        NSParameterAssert(version);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"version"] };
            NSError* error = [NSError errorWithDomain:kOAIAccountApiErrorDomain code:kOAIAccountApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/{version}/consumer/profile/matchToken"];

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
    if (matchToken != nil) {
        queryParams[@"matchToken"] = matchToken;
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

///
/// Update Account Active Status
/// Activate or deactivate an account (requires appropriate permissions).
///  @param version  
///
///  @param accountId the account id of the user (deviceId or accountId required) 
///
///  @param connectionAccountId The account id of the user you want to modify (if this is not set, then the accountId parameter will be used instead) 
///
///  @param active true will activate the user and false will deactivate 
///
///  @param deviceId the device id (deviceId or accountId required) (optional)
///
///  @param appKey the application key that the user belongs to (optional)
///
///  @returns OAISirqulResponse*
///
-(NSURLSessionTask*) updateActveStatusWithVersion: (NSNumber*) version
    accountId: (NSNumber*) accountId
    connectionAccountId: (NSNumber*) connectionAccountId
    active: (NSNumber*) active
    deviceId: (NSString*) deviceId
    appKey: (NSString*) appKey
    completionHandler: (void (^)(OAISirqulResponse* output, NSError* error)) handler {
    // verify the required parameter 'version' is set
    if (version == nil) {
        NSParameterAssert(version);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"version"] };
            NSError* error = [NSError errorWithDomain:kOAIAccountApiErrorDomain code:kOAIAccountApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kOAIAccountApiErrorDomain code:kOAIAccountApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'connectionAccountId' is set
    if (connectionAccountId == nil) {
        NSParameterAssert(connectionAccountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"connectionAccountId"] };
            NSError* error = [NSError errorWithDomain:kOAIAccountApiErrorDomain code:kOAIAccountApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'active' is set
    if (active == nil) {
        NSParameterAssert(active);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"active"] };
            NSError* error = [NSError errorWithDomain:kOAIAccountApiErrorDomain code:kOAIAccountApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/{version}/account/active/update"];

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
    if (connectionAccountId != nil) {
        queryParams[@"connectionAccountId"] = connectionAccountId;
    }
    if (appKey != nil) {
        queryParams[@"appKey"] = appKey;
    }
    if (active != nil) {
        queryParams[@"active"] = [active isEqual:@(YES)] ? @"true" : @"false";
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
/// Update Location
/// Update the account location
///  @param version  
///
///  @param deviceId The device id (deviceId or accountId required) (optional)
///
///  @param accountId The account id of the user (deviceId or accountId required) (optional)
///
///  @param latitude The current latitude of the user (optional)
///
///  @param longitude The current longitude of the user (optional)
///
///  @param clientTime The time of the update (optional)
///
///  @returns OAISirqulResponse*
///
-(NSURLSessionTask*) updateLocationWithVersion: (NSNumber*) version
    deviceId: (NSString*) deviceId
    accountId: (NSNumber*) accountId
    latitude: (NSNumber*) latitude
    longitude: (NSNumber*) longitude
    clientTime: (NSNumber*) clientTime
    completionHandler: (void (^)(OAISirqulResponse* output, NSError* error)) handler {
    // verify the required parameter 'version' is set
    if (version == nil) {
        NSParameterAssert(version);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"version"] };
            NSError* error = [NSError errorWithDomain:kOAIAccountApiErrorDomain code:kOAIAccountApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/{version}/account/location/update"];

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
    if (latitude != nil) {
        queryParams[@"latitude"] = latitude;
    }
    if (longitude != nil) {
        queryParams[@"longitude"] = longitude;
    }
    if (clientTime != nil) {
        queryParams[@"clientTime"] = clientTime;
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
/// Update Account Settings
/// Update the account settings for a user
///  @param version  
///
///  @param deviceId The device id (deviceId or accountId required) (optional)
///
///  @param accountId The account id of the user (deviceId or accountId required) (optional)
///
///  @param blockedNotifications The notifications to be blocked (optional)
///
///  @param suggestionMethod How suggestions are to be sent (APNS, MOBILE_NOTIFICATION, SMS) (optional)
///
///  @param suggestionCount How many suggestions to receive per time frame (optional)
///
///  @param suggestionTimeFrame The time frame in seconds, 3600 would be a 1 hour time frame (optional)
///
///  @param showOthersExactLocation Show Others Exact Location (optional)
///
///  @param showAsZipcode Show As Zipcode (optional)
///
///  @param showExactLocation Show Exact Location (optional)
///
///  @param favoriteVisibility Show favorites (optional)
///
///  @param latitude The current latitude of the user (optional)
///
///  @param longitude The current longitude of the user (optional)
///
///  @returns OAIUserSettingsResponse*
///
-(NSURLSessionTask*) updateSettingsWithVersion: (NSNumber*) version
    deviceId: (NSString*) deviceId
    accountId: (NSNumber*) accountId
    blockedNotifications: (NSString*) blockedNotifications
    suggestionMethod: (NSString*) suggestionMethod
    suggestionCount: (NSNumber*) suggestionCount
    suggestionTimeFrame: (NSNumber*) suggestionTimeFrame
    showOthersExactLocation: (NSNumber*) showOthersExactLocation
    showAsZipcode: (NSNumber*) showAsZipcode
    showExactLocation: (NSNumber*) showExactLocation
    favoriteVisibility: (NSString*) favoriteVisibility
    latitude: (NSNumber*) latitude
    longitude: (NSNumber*) longitude
    completionHandler: (void (^)(OAIUserSettingsResponse* output, NSError* error)) handler {
    // verify the required parameter 'version' is set
    if (version == nil) {
        NSParameterAssert(version);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"version"] };
            NSError* error = [NSError errorWithDomain:kOAIAccountApiErrorDomain code:kOAIAccountApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/{version}/account/settings/update"];

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
    if (blockedNotifications != nil) {
        queryParams[@"blockedNotifications"] = blockedNotifications;
    }
    if (suggestionMethod != nil) {
        queryParams[@"suggestionMethod"] = suggestionMethod;
    }
    if (suggestionCount != nil) {
        queryParams[@"suggestionCount"] = suggestionCount;
    }
    if (suggestionTimeFrame != nil) {
        queryParams[@"suggestionTimeFrame"] = suggestionTimeFrame;
    }
    if (showOthersExactLocation != nil) {
        queryParams[@"showOthersExactLocation"] = [showOthersExactLocation isEqual:@(YES)] ? @"true" : @"false";
    }
    if (showAsZipcode != nil) {
        queryParams[@"showAsZipcode"] = [showAsZipcode isEqual:@(YES)] ? @"true" : @"false";
    }
    if (showExactLocation != nil) {
        queryParams[@"showExactLocation"] = [showExactLocation isEqual:@(YES)] ? @"true" : @"false";
    }
    if (favoriteVisibility != nil) {
        queryParams[@"favoriteVisibility"] = favoriteVisibility;
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
                              responseType: @"OAIUserSettingsResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIUserSettingsResponse*)data, error);
                                }
                            }];
}

///
/// Save Validation Status
/// Validate the account's email address. The token must be valid and not expired. Use the RequestValidateAccount end point to request a new token.
///  @param version  
///
///  @param token The token associated with the account to update, good for 24 hours 
///
///  @returns OAIAccountLoginResponse*
///
-(NSURLSessionTask*) validateAccountSignupWithVersion: (NSNumber*) version
    token: (NSString*) token
    completionHandler: (void (^)(OAIAccountLoginResponse* output, NSError* error)) handler {
    // verify the required parameter 'version' is set
    if (version == nil) {
        NSParameterAssert(version);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"version"] };
            NSError* error = [NSError errorWithDomain:kOAIAccountApiErrorDomain code:kOAIAccountApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'token' is set
    if (token == nil) {
        NSParameterAssert(token);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"token"] };
            NSError* error = [NSError errorWithDomain:kOAIAccountApiErrorDomain code:kOAIAccountApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/{version}/account/validateAccountSignup"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (version != nil) {
        pathParams[@"version"] = version;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (token != nil) {
        queryParams[@"token"] = token;
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
                              responseType: @"OAIAccountLoginResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIAccountLoginResponse*)data, error);
                                }
                            }];
}

///
/// Validate Password Reset Token
/// Validate the password reset token. The token must be valid and not expired. Use the RequestPasswordReset end point to request a token. The user receives and email with the reset page, therefore it should be validated before bwing used to reset the password.
///  @param version  
///
///  @param token The token associated with the account to update, good for 24 hours 
///
///  @returns OAISirqulResponse*
///
-(NSURLSessionTask*) validatePasswordResetWithVersion: (NSNumber*) version
    token: (NSString*) token
    completionHandler: (void (^)(OAISirqulResponse* output, NSError* error)) handler {
    // verify the required parameter 'version' is set
    if (version == nil) {
        NSParameterAssert(version);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"version"] };
            NSError* error = [NSError errorWithDomain:kOAIAccountApiErrorDomain code:kOAIAccountApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'token' is set
    if (token == nil) {
        NSParameterAssert(token);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"token"] };
            NSError* error = [NSError errorWithDomain:kOAIAccountApiErrorDomain code:kOAIAccountApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/{version}/account/validatepasswordreset"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (version != nil) {
        pathParams[@"version"] = version;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (token != nil) {
        queryParams[@"token"] = token;
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
