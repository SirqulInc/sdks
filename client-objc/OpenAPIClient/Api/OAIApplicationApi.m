#import "OAIApplicationApi.h"
#import "OAIQueryParamCollection.h"
#import "OAIApiClient.h"
#import "OAIAccountListResponse.h"
#import "OAIApplicationResponse.h"
#import "OAIApplicationSettingsResponse.h"
#import "OAIApplicationShortResponse.h"
#import "OAIPlacementResponse.h"
#import "OAISirqulResponse.h"


@interface OAIApplicationApi ()

@property (nonatomic, strong, readwrite) NSMutableDictionary *mutableDefaultHeaders;

@end

@implementation OAIApplicationApi

NSString* kOAIApplicationApiErrorDomain = @"OAIApplicationApiErrorDomain";
NSInteger kOAIApplicationApiMissingParamErrorCode = 234513;

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
/// Create Application
/// Create an application record and one placement record for that application. You can create more placements for this application by using {@link createApplicationPlacement}.
///  @param version  
///
///  @param appName The name of the application 
///
///  @param deviceId The unique id of the device making the request (deviceId or accountId required) (optional)
///
///  @param accountId The account id of the user (deviceId or accountId required) (optional)
///
///  @param about The description of the application (optional)
///
///  @param bundleId The application bundle identifier (format - com.company.appName) (optional)
///
///  @param appIconAssetId The application icon asset id (optional)
///
///  @param appLogoAssetId The application logo asset id (optional)
///
///  @param facebookAppId The Facebook application id (optional)
///
///  @param facebookAppSecret The Facebook application secret (optional)
///
///  @param googleApiKey This is the either the 'server key' or 'browser key' generated from google to enable Google Cloud Messaging (optional)
///
///  @param updateEULADate Determines whether to update the EULA date (optional)
///
///  @param eulaVersion The EULA version (optional)
///
///  @param landingPageUrl The landing page URL (optional)
///
///  @param showInActivities Determines whether to show the application in the activity feed (optional)
///
///  @param activityDescription The description of the application in the activity feed (optional)
///
///  @param inviteWelcomeText The text to display on the invite page (optional)
///
///  @param invitePageUrl The url to the application invite page (optional)
///
///  @param urlScheme The protocal the app uses to load the app via a browser (optional)
///
///  @param platforms A json object with a list of supported platforms.  ```json {   \"platforms\": [     {       \"deviceId\": 1,       \"minimum\": 230,       \"maximum\": 421,       \"downloadUrl\": \"http://app.store.com/download\",       \"description\": \"description and version info\"     }   ] } ```  (optional)
///
///  @param downloadUrls Json formatted downloadUrls.  ```json {   \"ios\": \"the-url-to-app-store\",    \"android\": \"the-url-to-google-play\" } ```   (optional)
///
///  @param categoryIds List of categories to apply (optional)
///
///  @param scoringType The type of scoring this application will use {GAME_LEVEL, GAME_OBJECT (optional, default to @"GAME_LEVEL")
///
///  @param hintCost The cost of hints (optional, default to @11)
///
///  @param maxScore The maximum score that will be possible (optional, default to @125)
///
///  @param ticketsPerPoint The point-to-ticket conversion ratio (optional, default to @0.037)
///
///  @param hasGameData Determines whether the application uses services to save custom game objects (optional, default to @(YES))
///
///  @param publicNotifications Public Notifications (optional)
///
///  @param useMatchingAlgorithm Use Matching Algorithm (optional)
///
///  @param globalTickets Determines whether earned tickets are applied across all applications (optional, default to @(NO))
///
///  @param buildVersion The current build version of the application (optional, default to @1)
///
///  @param apiVersion The current API version the application uses (optional)
///
///  @param placementName The name of the placement (optional)
///
///  @param placementDescription The description of the placement (optional)
///
///  @param placementSize The ad placement size {BANNER, LEADERBOARD, SKYSCRAPER, INTERSTITIAL, CUSTOM (this is required if a placements is to be created) (optional)
///
///  @param placementHeight The height of a custom ad size (optional)
///
///  @param placementWidth The width of a custom ad size (optional)
///
///  @param placementRefreshInterval The refresh interval in seconds (optional)
///
///  @param createObjectStore Generate a custom object store to use (optional, default to @(YES))
///
///  @param publicContentApproval Determine whether or not public content requires admin approval before it becomes public (optional, default to @(NO))
///
///  @param productionMode Determines whether the application uses production or sandbox services (optional, default to @(NO))
///
///  @param minimumSessionLength Minimum Session Length (optional)
///
///  @param sessionGapLength Session Gap Length (optional)
///
///  @param localAdsEnabled Local Ads Enabled (optional, default to @(NO))
///
///  @param sqootApiKey Sqoot Api Key (optional)
///
///  @param trilatProcessingType Determines how to process trilateration data. Possible values include: DEFAULT, FINGERPRINT (optional, default to @"FINGERPRINT")
///
///  @param maxSampleSize Determines what the maximum sample size during trilateration (optional)
///
///  @param minRSSI Determines what the minimum acceptable RSSI value (optional)
///
///  @param modules List modules allowed to be served by the server, possible values include: COMMON, MEDIA, OFFER, GAME, SOCIAL, CONSUMER_WEBSITE, ALL (optional, default to @"ALL")
///
///  @param authorizedCount How many servers the license will support (optional, default to @1)
///
///  @param authorizedServers The list of ip addresses of servers the license will support, leave null for any server (optional)
///
///  @param defaultTimezone Sets the default timezone for the app (used for leaderboards and other time specific content) (optional)
///
///  @param smtpPass SMTP Pass (optional)
///
///  @param metaData The application meta data. Defined by the client (optional)
///
///  @param placementMetaData The ad placement meta data. Defined by the client (optional)
///
///  @param ipsFloor Create floor tables for Ips (optional, default to @(NO))
///
///  @param enableAPNSBadge Enables setting the APNS badge value in the payload (optional, default to @(YES))
///
///  @param includeInReport Enables using the application in session reports (optional, default to @(YES))
///
///  @param defaultAppFilterId Sets the default filter to use (if none is passed in) for certain search APIs including Album Search. (optional)
///
///  @param enableWelcomeEmail Enables whether the default welcome email will be sent for new app users (optional)
///
///  @param appleAppId The Apple Application ID (optional)
///
///  @param appleTeamId The Apple Team ID (optional)
///
///  @param appleAuthKeyId The Apple Auth Key ID (optional)
///
///  @param appleAuthKey The Apple Auth Signin Key (p8) File (optional)
///
///  @param appleIssuerId The Apple Issuer ID (optional)
///
///  @param appStoreKeyId The Apple App Store Key ID (optional)
///
///  @param appStoreKey The Apple App Store Key (p8) File (optional)
///
///  @param googlePrivateKeyFile This is the private key file for your Google service account. (optional)
///
///  @param authorizeNetApiKey Authorize Net Api Key (optional)
///
///  @param authorizeNetTransactionKey Authorize Net Transaction Key (optional)
///
///  @param emailSender Email Sender (optional)
///
///  @param smtpUser SMTP User (optional)
///
///  @param smtpHost SMTP Host (optional)
///
///  @param vatomBusinessId Vatom Business Id (optional)
///
///  @param vatomRestClientId Vatom REST Client Id (optional)
///
///  @param vatomRestSecretKey Vatom Secret Key (optional)
///
///  @param twilioAccountSID Twilio Account SID (optional)
///
///  @param twilioAuthToken Twilio Auth Token (optional)
///
///  @param twilioSenderPhoneNumber Twilio Sender Phone Number (optional)
///
///  @param openAISecretKey OpenAI Secret API Key (optional)
///
///  @returns OAIApplicationResponse*
///
-(NSURLSessionTask*) createApplicationWithVersion: (NSNumber*) version
    appName: (NSString*) appName
    deviceId: (NSString*) deviceId
    accountId: (NSNumber*) accountId
    about: (NSString*) about
    bundleId: (NSString*) bundleId
    appIconAssetId: (NSNumber*) appIconAssetId
    appLogoAssetId: (NSNumber*) appLogoAssetId
    facebookAppId: (NSString*) facebookAppId
    facebookAppSecret: (NSString*) facebookAppSecret
    googleApiKey: (NSString*) googleApiKey
    updateEULADate: (NSNumber*) updateEULADate
    eulaVersion: (NSString*) eulaVersion
    landingPageUrl: (NSString*) landingPageUrl
    showInActivities: (NSNumber*) showInActivities
    activityDescription: (NSString*) activityDescription
    inviteWelcomeText: (NSString*) inviteWelcomeText
    invitePageUrl: (NSString*) invitePageUrl
    urlScheme: (NSString*) urlScheme
    platforms: (NSString*) platforms
    downloadUrls: (NSString*) downloadUrls
    categoryIds: (NSString*) categoryIds
    scoringType: (NSString*) scoringType
    hintCost: (NSNumber*) hintCost
    maxScore: (NSNumber*) maxScore
    ticketsPerPoint: (NSNumber*) ticketsPerPoint
    hasGameData: (NSNumber*) hasGameData
    publicNotifications: (NSNumber*) publicNotifications
    useMatchingAlgorithm: (NSNumber*) useMatchingAlgorithm
    globalTickets: (NSNumber*) globalTickets
    buildVersion: (NSNumber*) buildVersion
    apiVersion: (NSNumber*) apiVersion
    placementName: (NSString*) placementName
    placementDescription: (NSString*) placementDescription
    placementSize: (NSString*) placementSize
    placementHeight: (NSNumber*) placementHeight
    placementWidth: (NSNumber*) placementWidth
    placementRefreshInterval: (NSNumber*) placementRefreshInterval
    createObjectStore: (NSNumber*) createObjectStore
    publicContentApproval: (NSNumber*) publicContentApproval
    productionMode: (NSNumber*) productionMode
    minimumSessionLength: (NSNumber*) minimumSessionLength
    sessionGapLength: (NSNumber*) sessionGapLength
    localAdsEnabled: (NSNumber*) localAdsEnabled
    sqootApiKey: (NSString*) sqootApiKey
    trilatProcessingType: (NSString*) trilatProcessingType
    maxSampleSize: (NSNumber*) maxSampleSize
    minRSSI: (NSNumber*) minRSSI
    modules: (NSString*) modules
    authorizedCount: (NSNumber*) authorizedCount
    authorizedServers: (NSString*) authorizedServers
    defaultTimezone: (NSString*) defaultTimezone
    smtpPass: (NSString*) smtpPass
    metaData: (NSString*) metaData
    placementMetaData: (NSString*) placementMetaData
    ipsFloor: (NSNumber*) ipsFloor
    enableAPNSBadge: (NSNumber*) enableAPNSBadge
    includeInReport: (NSNumber*) includeInReport
    defaultAppFilterId: (NSNumber*) defaultAppFilterId
    enableWelcomeEmail: (NSNumber*) enableWelcomeEmail
    appleAppId: (NSString*) appleAppId
    appleTeamId: (NSString*) appleTeamId
    appleAuthKeyId: (NSString*) appleAuthKeyId
    appleAuthKey: (NSURL*) appleAuthKey
    appleIssuerId: (NSString*) appleIssuerId
    appStoreKeyId: (NSString*) appStoreKeyId
    appStoreKey: (NSURL*) appStoreKey
    googlePrivateKeyFile: (NSURL*) googlePrivateKeyFile
    authorizeNetApiKey: (NSString*) authorizeNetApiKey
    authorizeNetTransactionKey: (NSString*) authorizeNetTransactionKey
    emailSender: (NSString*) emailSender
    smtpUser: (NSString*) smtpUser
    smtpHost: (NSString*) smtpHost
    vatomBusinessId: (NSString*) vatomBusinessId
    vatomRestClientId: (NSString*) vatomRestClientId
    vatomRestSecretKey: (NSString*) vatomRestSecretKey
    twilioAccountSID: (NSString*) twilioAccountSID
    twilioAuthToken: (NSString*) twilioAuthToken
    twilioSenderPhoneNumber: (NSString*) twilioSenderPhoneNumber
    openAISecretKey: (NSString*) openAISecretKey
    completionHandler: (void (^)(OAIApplicationResponse* output, NSError* error)) handler {
    // verify the required parameter 'version' is set
    if (version == nil) {
        NSParameterAssert(version);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"version"] };
            NSError* error = [NSError errorWithDomain:kOAIApplicationApiErrorDomain code:kOAIApplicationApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'appName' is set
    if (appName == nil) {
        NSParameterAssert(appName);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"appName"] };
            NSError* error = [NSError errorWithDomain:kOAIApplicationApiErrorDomain code:kOAIApplicationApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/{version}/application/create"];

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
    if (appName != nil) {
        queryParams[@"appName"] = appName;
    }
    if (about != nil) {
        queryParams[@"about"] = about;
    }
    if (bundleId != nil) {
        queryParams[@"bundleId"] = bundleId;
    }
    if (appIconAssetId != nil) {
        queryParams[@"appIconAssetId"] = appIconAssetId;
    }
    if (appLogoAssetId != nil) {
        queryParams[@"appLogoAssetId"] = appLogoAssetId;
    }
    if (facebookAppId != nil) {
        queryParams[@"facebookAppId"] = facebookAppId;
    }
    if (facebookAppSecret != nil) {
        queryParams[@"facebookAppSecret"] = facebookAppSecret;
    }
    if (googleApiKey != nil) {
        queryParams[@"googleApiKey"] = googleApiKey;
    }
    if (updateEULADate != nil) {
        queryParams[@"updateEULADate"] = [updateEULADate isEqual:@(YES)] ? @"true" : @"false";
    }
    if (eulaVersion != nil) {
        queryParams[@"eulaVersion"] = eulaVersion;
    }
    if (landingPageUrl != nil) {
        queryParams[@"landingPageUrl"] = landingPageUrl;
    }
    if (showInActivities != nil) {
        queryParams[@"showInActivities"] = [showInActivities isEqual:@(YES)] ? @"true" : @"false";
    }
    if (activityDescription != nil) {
        queryParams[@"activityDescription"] = activityDescription;
    }
    if (inviteWelcomeText != nil) {
        queryParams[@"inviteWelcomeText"] = inviteWelcomeText;
    }
    if (invitePageUrl != nil) {
        queryParams[@"invitePageUrl"] = invitePageUrl;
    }
    if (urlScheme != nil) {
        queryParams[@"urlScheme"] = urlScheme;
    }
    if (platforms != nil) {
        queryParams[@"platforms"] = platforms;
    }
    if (downloadUrls != nil) {
        queryParams[@"downloadUrls"] = downloadUrls;
    }
    if (categoryIds != nil) {
        queryParams[@"categoryIds"] = categoryIds;
    }
    if (scoringType != nil) {
        queryParams[@"scoringType"] = scoringType;
    }
    if (hintCost != nil) {
        queryParams[@"hintCost"] = hintCost;
    }
    if (maxScore != nil) {
        queryParams[@"maxScore"] = maxScore;
    }
    if (ticketsPerPoint != nil) {
        queryParams[@"ticketsPerPoint"] = ticketsPerPoint;
    }
    if (hasGameData != nil) {
        queryParams[@"hasGameData"] = [hasGameData isEqual:@(YES)] ? @"true" : @"false";
    }
    if (publicNotifications != nil) {
        queryParams[@"publicNotifications"] = [publicNotifications isEqual:@(YES)] ? @"true" : @"false";
    }
    if (useMatchingAlgorithm != nil) {
        queryParams[@"useMatchingAlgorithm"] = [useMatchingAlgorithm isEqual:@(YES)] ? @"true" : @"false";
    }
    if (globalTickets != nil) {
        queryParams[@"globalTickets"] = [globalTickets isEqual:@(YES)] ? @"true" : @"false";
    }
    if (buildVersion != nil) {
        queryParams[@"buildVersion"] = buildVersion;
    }
    if (apiVersion != nil) {
        queryParams[@"apiVersion"] = apiVersion;
    }
    if (placementName != nil) {
        queryParams[@"placementName"] = placementName;
    }
    if (placementDescription != nil) {
        queryParams[@"placementDescription"] = placementDescription;
    }
    if (placementSize != nil) {
        queryParams[@"placementSize"] = placementSize;
    }
    if (placementHeight != nil) {
        queryParams[@"placementHeight"] = placementHeight;
    }
    if (placementWidth != nil) {
        queryParams[@"placementWidth"] = placementWidth;
    }
    if (placementRefreshInterval != nil) {
        queryParams[@"placementRefreshInterval"] = placementRefreshInterval;
    }
    if (createObjectStore != nil) {
        queryParams[@"createObjectStore"] = [createObjectStore isEqual:@(YES)] ? @"true" : @"false";
    }
    if (publicContentApproval != nil) {
        queryParams[@"publicContentApproval"] = [publicContentApproval isEqual:@(YES)] ? @"true" : @"false";
    }
    if (productionMode != nil) {
        queryParams[@"productionMode"] = [productionMode isEqual:@(YES)] ? @"true" : @"false";
    }
    if (minimumSessionLength != nil) {
        queryParams[@"minimumSessionLength"] = minimumSessionLength;
    }
    if (sessionGapLength != nil) {
        queryParams[@"sessionGapLength"] = sessionGapLength;
    }
    if (localAdsEnabled != nil) {
        queryParams[@"localAdsEnabled"] = [localAdsEnabled isEqual:@(YES)] ? @"true" : @"false";
    }
    if (sqootApiKey != nil) {
        queryParams[@"sqootApiKey"] = sqootApiKey;
    }
    if (trilatProcessingType != nil) {
        queryParams[@"trilatProcessingType"] = trilatProcessingType;
    }
    if (maxSampleSize != nil) {
        queryParams[@"maxSampleSize"] = maxSampleSize;
    }
    if (minRSSI != nil) {
        queryParams[@"minRSSI"] = minRSSI;
    }
    if (modules != nil) {
        queryParams[@"modules"] = modules;
    }
    if (authorizedCount != nil) {
        queryParams[@"authorizedCount"] = authorizedCount;
    }
    if (authorizedServers != nil) {
        queryParams[@"authorizedServers"] = authorizedServers;
    }
    if (defaultTimezone != nil) {
        queryParams[@"defaultTimezone"] = defaultTimezone;
    }
    if (smtpPass != nil) {
        queryParams[@"smtpPass"] = smtpPass;
    }
    if (metaData != nil) {
        queryParams[@"metaData"] = metaData;
    }
    if (placementMetaData != nil) {
        queryParams[@"placementMetaData"] = placementMetaData;
    }
    if (ipsFloor != nil) {
        queryParams[@"ipsFloor"] = [ipsFloor isEqual:@(YES)] ? @"true" : @"false";
    }
    if (enableAPNSBadge != nil) {
        queryParams[@"enableAPNSBadge"] = [enableAPNSBadge isEqual:@(YES)] ? @"true" : @"false";
    }
    if (includeInReport != nil) {
        queryParams[@"includeInReport"] = [includeInReport isEqual:@(YES)] ? @"true" : @"false";
    }
    if (defaultAppFilterId != nil) {
        queryParams[@"defaultAppFilterId"] = defaultAppFilterId;
    }
    if (enableWelcomeEmail != nil) {
        queryParams[@"enableWelcomeEmail"] = [enableWelcomeEmail isEqual:@(YES)] ? @"true" : @"false";
    }
    if (appleAppId != nil) {
        queryParams[@"appleAppId"] = appleAppId;
    }
    if (appleTeamId != nil) {
        queryParams[@"appleTeamId"] = appleTeamId;
    }
    if (appleAuthKeyId != nil) {
        queryParams[@"appleAuthKeyId"] = appleAuthKeyId;
    }
    if (appleAuthKey != nil) {
        queryParams[@"appleAuthKey"] = appleAuthKey;
    }
    if (appleIssuerId != nil) {
        queryParams[@"appleIssuerId"] = appleIssuerId;
    }
    if (appStoreKeyId != nil) {
        queryParams[@"appStoreKeyId"] = appStoreKeyId;
    }
    if (appStoreKey != nil) {
        queryParams[@"appStoreKey"] = appStoreKey;
    }
    if (googlePrivateKeyFile != nil) {
        queryParams[@"googlePrivateKeyFile"] = googlePrivateKeyFile;
    }
    if (authorizeNetApiKey != nil) {
        queryParams[@"authorizeNetApiKey"] = authorizeNetApiKey;
    }
    if (authorizeNetTransactionKey != nil) {
        queryParams[@"authorizeNetTransactionKey"] = authorizeNetTransactionKey;
    }
    if (emailSender != nil) {
        queryParams[@"emailSender"] = emailSender;
    }
    if (smtpUser != nil) {
        queryParams[@"smtpUser"] = smtpUser;
    }
    if (smtpHost != nil) {
        queryParams[@"smtpHost"] = smtpHost;
    }
    if (vatomBusinessId != nil) {
        queryParams[@"vatomBusinessId"] = vatomBusinessId;
    }
    if (vatomRestClientId != nil) {
        queryParams[@"vatomRestClientId"] = vatomRestClientId;
    }
    if (vatomRestSecretKey != nil) {
        queryParams[@"vatomRestSecretKey"] = vatomRestSecretKey;
    }
    if (twilioAccountSID != nil) {
        queryParams[@"twilioAccountSID"] = twilioAccountSID;
    }
    if (twilioAuthToken != nil) {
        queryParams[@"twilioAuthToken"] = twilioAuthToken;
    }
    if (twilioSenderPhoneNumber != nil) {
        queryParams[@"twilioSenderPhoneNumber"] = twilioSenderPhoneNumber;
    }
    if (openAISecretKey != nil) {
        queryParams[@"openAISecretKey"] = openAISecretKey;
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
                              responseType: @"OAIApplicationResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIApplicationResponse*)data, error);
                                }
                            }];
}

///
/// Create Ad Placement
/// Creates a new ad placement for an application.
///  @param version  
///
///  @param appKey The appKey of the application the ad placement is for 
///
///  @param size The ad placement size {BANNER, LEADERBOARD, SKYSCRAPER, INTERSTITIAL, CUSTOM 
///
///  @param deviceId The unique id of the device making the request (deviceId or accountId required) (optional)
///
///  @param accountId The account id of the user (deviceId or accountId required) (optional)
///
///  @param name The name of the placement (optional)
///
///  @param _description The description of the placement (optional)
///
///  @param height The height of a custom ad size (optional)
///
///  @param width The width of a custom ad size (optional)
///
///  @param refreshInterval The refresh interval in seconds (optional)
///
///  @param defaultImageId Default Image Id (optional)
///
///  @param active Active (optional)
///
///  @returns OAIPlacementResponse*
///
-(NSURLSessionTask*) createApplicationPlacementWithVersion: (NSNumber*) version
    appKey: (NSString*) appKey
    size: (NSString*) size
    deviceId: (NSString*) deviceId
    accountId: (NSNumber*) accountId
    name: (NSString*) name
    _description: (NSString*) _description
    height: (NSNumber*) height
    width: (NSNumber*) width
    refreshInterval: (NSNumber*) refreshInterval
    defaultImageId: (NSNumber*) defaultImageId
    active: (NSNumber*) active
    completionHandler: (void (^)(OAIPlacementResponse* output, NSError* error)) handler {
    // verify the required parameter 'version' is set
    if (version == nil) {
        NSParameterAssert(version);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"version"] };
            NSError* error = [NSError errorWithDomain:kOAIApplicationApiErrorDomain code:kOAIApplicationApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'appKey' is set
    if (appKey == nil) {
        NSParameterAssert(appKey);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"appKey"] };
            NSError* error = [NSError errorWithDomain:kOAIApplicationApiErrorDomain code:kOAIApplicationApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'size' is set
    if (size == nil) {
        NSParameterAssert(size);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"size"] };
            NSError* error = [NSError errorWithDomain:kOAIApplicationApiErrorDomain code:kOAIApplicationApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/{version}/application/placement/create"];

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
    if (_description != nil) {
        queryParams[@"description"] = _description;
    }
    if (size != nil) {
        queryParams[@"size"] = size;
    }
    if (height != nil) {
        queryParams[@"height"] = height;
    }
    if (width != nil) {
        queryParams[@"width"] = width;
    }
    if (refreshInterval != nil) {
        queryParams[@"refreshInterval"] = refreshInterval;
    }
    if (defaultImageId != nil) {
        queryParams[@"defaultImageId"] = defaultImageId;
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
                              responseType: @"OAIPlacementResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIPlacementResponse*)data, error);
                                }
                            }];
}

///
/// Delete Application
/// Set the deleted timestamp to current time. This effectively deletes the application since all queries should ignore any records with a deleted timestamp
///  @param version  
///
///  @param accountId The account used to perform the delete, must have rights to edit the application. (optional)
///
///  @param appKey The key of the application to be deleted (optional)
///
///  @returns OAISirqulResponse*
///
-(NSURLSessionTask*) deleteApplicationWithVersion: (NSNumber*) version
    accountId: (NSNumber*) accountId
    appKey: (NSString*) appKey
    completionHandler: (void (^)(OAISirqulResponse* output, NSError* error)) handler {
    // verify the required parameter 'version' is set
    if (version == nil) {
        NSParameterAssert(version);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"version"] };
            NSError* error = [NSError errorWithDomain:kOAIApplicationApiErrorDomain code:kOAIApplicationApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/{version}/application/delete"];

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
/// Delete Ad Placement
/// Deletes an ad placement for an application.
///  @param version  
///
///  @param placementId The id of the placement to delete, the user must have rights to the application the ad placement is for 
///
///  @param deviceId The unique id of the device making the request (deviceId or accountId required) (optional)
///
///  @param accountId The account id of the user (deviceId or accountId required) (optional)
///
///  @returns OAIPlacementResponse*
///
-(NSURLSessionTask*) deleteApplicationPlacementWithVersion: (NSNumber*) version
    placementId: (NSNumber*) placementId
    deviceId: (NSString*) deviceId
    accountId: (NSNumber*) accountId
    completionHandler: (void (^)(OAIPlacementResponse* output, NSError* error)) handler {
    // verify the required parameter 'version' is set
    if (version == nil) {
        NSParameterAssert(version);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"version"] };
            NSError* error = [NSError errorWithDomain:kOAIApplicationApiErrorDomain code:kOAIApplicationApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'placementId' is set
    if (placementId == nil) {
        NSParameterAssert(placementId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"placementId"] };
            NSError* error = [NSError errorWithDomain:kOAIApplicationApiErrorDomain code:kOAIApplicationApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/{version}/application/placement/delete"];

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
    if (placementId != nil) {
        queryParams[@"placementId"] = placementId;
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
                              responseType: @"OAIPlacementResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIPlacementResponse*)data, error);
                                }
                            }];
}

///
/// Get Application
/// Get a specific application by appKey
///  @param version  
///
///  @param appKey The key of the application (optional)
///
///  @param applicationId Application Id (optional)
///
///  @returns OAIApplicationResponse*
///
-(NSURLSessionTask*) getApplicationWithVersion: (NSNumber*) version
    appKey: (NSString*) appKey
    applicationId: (NSNumber*) applicationId
    completionHandler: (void (^)(OAIApplicationResponse* output, NSError* error)) handler {
    // verify the required parameter 'version' is set
    if (version == nil) {
        NSParameterAssert(version);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"version"] };
            NSError* error = [NSError errorWithDomain:kOAIApplicationApiErrorDomain code:kOAIApplicationApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/{version}/application/get"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (version != nil) {
        pathParams[@"version"] = version;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (appKey != nil) {
        queryParams[@"appKey"] = appKey;
    }
    if (applicationId != nil) {
        queryParams[@"applicationId"] = applicationId;
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
                              responseType: @"OAIApplicationResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIApplicationResponse*)data, error);
                                }
                            }];
}

///
/// Get Ad Placement
/// Get details of an ad placement
///  @param version  
///
///  @param placementId The id of the placement 
///
///  @param deviceId The unique id of the device making the request (deviceId or accountId required) (optional)
///
///  @param accountId The account id of the user (deviceId or accountId required) (optional)
///
///  @returns OAIPlacementResponse*
///
-(NSURLSessionTask*) getApplicationPlacementWithVersion: (NSNumber*) version
    placementId: (NSNumber*) placementId
    deviceId: (NSString*) deviceId
    accountId: (NSNumber*) accountId
    completionHandler: (void (^)(OAIPlacementResponse* output, NSError* error)) handler {
    // verify the required parameter 'version' is set
    if (version == nil) {
        NSParameterAssert(version);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"version"] };
            NSError* error = [NSError errorWithDomain:kOAIApplicationApiErrorDomain code:kOAIApplicationApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'placementId' is set
    if (placementId == nil) {
        NSParameterAssert(placementId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"placementId"] };
            NSError* error = [NSError errorWithDomain:kOAIApplicationApiErrorDomain code:kOAIApplicationApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/{version}/application/placement/get"];

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
    if (placementId != nil) {
        queryParams[@"placementId"] = placementId;
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
                              responseType: @"OAIPlacementResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIPlacementResponse*)data, error);
                                }
                            }];
}

///
/// Get API versions
/// Will return a comma separated list of numbers, newest first. For example: 3.0, 2.2, 2.1, 1.8
///  @param version  
///
///  @returns OAISirqulResponse*
///
-(NSURLSessionTask*) getApplicationVersionsWithVersion: (NSNumber*) version
    completionHandler: (void (^)(OAISirqulResponse* output, NSError* error)) handler {
    // verify the required parameter 'version' is set
    if (version == nil) {
        NSParameterAssert(version);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"version"] };
            NSError* error = [NSError errorWithDomain:kOAIApplicationApiErrorDomain code:kOAIApplicationApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/{version}/application/versions"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (version != nil) {
        pathParams[@"version"] = version;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
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
                              responseType: @"OAISirqulResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAISirqulResponse*)data, error);
                                }
                            }];
}

///
/// Search Application Users
/// Get a list of users per application
///  @param version  
///
///  @param appKey The application key 
///
///  @param q Q (optional)
///
///  @param keyword The keyword used to search (optional)
///
///  @param since Return accounts that have been active after this date (UNIX time-stamp in milliseconds) (optional)
///
///  @param i the start of the index (optional)
///
///  @param start The start of the pagination (optional, default to @0)
///
///  @param l the limit of the index (optional)
///
///  @param limit The limit of the pagination (optional, default to @20)
///
///  @returns OAIAccountListResponse*
///
-(NSURLSessionTask*) getUniqueUsersByAppWithVersion: (NSNumber*) version
    appKey: (NSString*) appKey
    q: (NSString*) q
    keyword: (NSString*) keyword
    since: (NSNumber*) since
    i: (NSNumber*) i
    start: (NSNumber*) start
    l: (NSNumber*) l
    limit: (NSNumber*) limit
    completionHandler: (void (^)(OAIAccountListResponse* output, NSError* error)) handler {
    // verify the required parameter 'version' is set
    if (version == nil) {
        NSParameterAssert(version);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"version"] };
            NSError* error = [NSError errorWithDomain:kOAIApplicationApiErrorDomain code:kOAIApplicationApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'appKey' is set
    if (appKey == nil) {
        NSParameterAssert(appKey);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"appKey"] };
            NSError* error = [NSError errorWithDomain:kOAIApplicationApiErrorDomain code:kOAIApplicationApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/{version}/application/users"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (version != nil) {
        pathParams[@"version"] = version;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (appKey != nil) {
        queryParams[@"appKey"] = appKey;
    }
    if (q != nil) {
        queryParams[@"q"] = q;
    }
    if (keyword != nil) {
        queryParams[@"keyword"] = keyword;
    }
    if (since != nil) {
        queryParams[@"since"] = since;
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
                              responseType: @"OAIAccountListResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIAccountListResponse*)data, error);
                                }
                            }];
}

///
/// List Applications
/// List active applications matching the criteria (as a consumer)
///  @param version  
///
///  @param accountId The account id of the application owner/manager (optional)
///
///  @param q Q (optional)
///
///  @param keyword The keyword used to search for title, about, and description fields (optional)
///
///  @param platforms Deprecated, use deviceIds and deviceVersions (optional)
///
///  @param deviceIds The list of targeted device ids, comma separated; possible values are retreived via /api/{version/audience/devices com.sirqul.geoapps.common.service.AudienceApi#getDevices getDevices (pass in deviceId values) (optional)
///
///  @param deviceVersions The list of targeted device version ranges that are aligned  with the provided devices list (see devices param for possible values),  comma separated; examples are: 2.3-X, 0-5.1.4, 4.3.1-6.1.4 where X  is no maximum and 0 is no minimum.  (optional)
///
///  @param categoryIds The list of category ids to filter the list by (optional)
///
///  @param sortField The column to sort the search on, possible values include: UPDATED (default), CREATED, TITLE (optional, default to @"UPDATED")
///
///  @param hasAds Filter results on whether the application supports ads or not. Ignore this parameter to return all results. (optional)
///
///  @param publicNotifications Filter results on whether the application is available for public trigger notifications (optional)
///
///  @param filterBillable Determines whether to only return applications that the user has access to (optional)
///
///  @param filterContentAdmin Determines whether to only return applications that the user is a content admin of (optional)
///
///  @param descending The order to return the search results (optional, default to @(YES))
///
///  @param i the start of the index (optional)
///
///  @param start The start of the pagination (optional, default to @0)
///
///  @param l The limit of the index (optional)
///
///  @param limit The limit of the pagination (optional, default to @20)
///
///  @param applicationIds The list of application ids, comma separated. If provided will ignore all other params. (optional)
///
///  @param hasObjectStore Only include applications with a object store (default is false) (optional, default to @(NO))
///
///  @param activeOnly Return only active results (optional, default to @(YES))
///
///  @returns NSArray<OAIApplicationShortResponse>*
///
-(NSURLSessionTask*) listApplicationsWithVersion: (NSNumber*) version
    accountId: (NSNumber*) accountId
    q: (NSString*) q
    keyword: (NSString*) keyword
    platforms: (NSString*) platforms
    deviceIds: (NSString*) deviceIds
    deviceVersions: (NSString*) deviceVersions
    categoryIds: (NSString*) categoryIds
    sortField: (NSString*) sortField
    hasAds: (NSNumber*) hasAds
    publicNotifications: (NSNumber*) publicNotifications
    filterBillable: (NSNumber*) filterBillable
    filterContentAdmin: (NSNumber*) filterContentAdmin
    descending: (NSNumber*) descending
    i: (NSNumber*) i
    start: (NSNumber*) start
    l: (NSNumber*) l
    limit: (NSNumber*) limit
    applicationIds: (NSString*) applicationIds
    hasObjectStore: (NSNumber*) hasObjectStore
    activeOnly: (NSNumber*) activeOnly
    completionHandler: (void (^)(NSArray<OAIApplicationShortResponse>* output, NSError* error)) handler {
    // verify the required parameter 'version' is set
    if (version == nil) {
        NSParameterAssert(version);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"version"] };
            NSError* error = [NSError errorWithDomain:kOAIApplicationApiErrorDomain code:kOAIApplicationApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/{version}/application/list"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (version != nil) {
        pathParams[@"version"] = version;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        queryParams[@"accountId"] = accountId;
    }
    if (q != nil) {
        queryParams[@"q"] = q;
    }
    if (keyword != nil) {
        queryParams[@"keyword"] = keyword;
    }
    if (platforms != nil) {
        queryParams[@"platforms"] = platforms;
    }
    if (deviceIds != nil) {
        queryParams[@"deviceIds"] = deviceIds;
    }
    if (deviceVersions != nil) {
        queryParams[@"deviceVersions"] = deviceVersions;
    }
    if (categoryIds != nil) {
        queryParams[@"categoryIds"] = categoryIds;
    }
    if (sortField != nil) {
        queryParams[@"sortField"] = sortField;
    }
    if (hasAds != nil) {
        queryParams[@"hasAds"] = [hasAds isEqual:@(YES)] ? @"true" : @"false";
    }
    if (publicNotifications != nil) {
        queryParams[@"publicNotifications"] = [publicNotifications isEqual:@(YES)] ? @"true" : @"false";
    }
    if (filterBillable != nil) {
        queryParams[@"filterBillable"] = [filterBillable isEqual:@(YES)] ? @"true" : @"false";
    }
    if (filterContentAdmin != nil) {
        queryParams[@"filterContentAdmin"] = [filterContentAdmin isEqual:@(YES)] ? @"true" : @"false";
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
    if (applicationIds != nil) {
        queryParams[@"applicationIds"] = applicationIds;
    }
    if (hasObjectStore != nil) {
        queryParams[@"hasObjectStore"] = [hasObjectStore isEqual:@(YES)] ? @"true" : @"false";
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
                              responseType: @"NSArray<OAIApplicationShortResponse>*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSArray<OAIApplicationShortResponse>*)data, error);
                                }
                            }];
}

///
/// Search for Ad Placements
/// Searches placements for an application.
///  @param version  
///
///  @param appKey The key of the application 
///
///  @param deviceId The unique id of the device making the request (deviceId or accountId required) (optional)
///
///  @param accountId The account id of the user (deviceId or accountId required) (optional)
///
///  @param start The start of the pagination (optional, default to @0)
///
///  @param limit The limit of the pagination (optional, default to @100)
///
///  @returns NSArray<OAIPlacementResponse>*
///
-(NSURLSessionTask*) searchApplicationPlacementWithVersion: (NSNumber*) version
    appKey: (NSString*) appKey
    deviceId: (NSString*) deviceId
    accountId: (NSNumber*) accountId
    start: (NSNumber*) start
    limit: (NSNumber*) limit
    completionHandler: (void (^)(NSArray<OAIPlacementResponse>* output, NSError* error)) handler {
    // verify the required parameter 'version' is set
    if (version == nil) {
        NSParameterAssert(version);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"version"] };
            NSError* error = [NSError errorWithDomain:kOAIApplicationApiErrorDomain code:kOAIApplicationApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'appKey' is set
    if (appKey == nil) {
        NSParameterAssert(appKey);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"appKey"] };
            NSError* error = [NSError errorWithDomain:kOAIApplicationApiErrorDomain code:kOAIApplicationApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/{version}/application/placement/search"];

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
                              responseType: @"NSArray<OAIPlacementResponse>*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSArray<OAIPlacementResponse>*)data, error);
                                }
                            }];
}

///
/// Search for Application Settings
/// Returns a list of applications that the user has logged into before, and returns specific settings for that application and user
///  @param version  
///
///  @param deviceId The device id (deviceId or accountId required) (optional)
///
///  @param accountId The account id of the user (deviceId or accountId required) (optional)
///
///  @param connectionAccountId The account id used to view another person's account (optional)
///
///  @param keyword The string to search applications on (optional)
///
///  @param sortField The column to sort the search on. Possible values include: CREATED, UPDATED, APPLICATION_TITLE (optional, default to @"APPLICATION_TITLE")
///
///  @param descending The order to return the search results (optional, default to @(NO))
///
///  @param start The start index for pagination (optional, default to @0)
///
///  @param limit The limit per result set for pagination (optional, default to @20)
///
///  @returns OAIApplicationSettingsResponse*
///
-(NSURLSessionTask*) searchApplicationSettingsWithVersion: (NSNumber*) version
    deviceId: (NSString*) deviceId
    accountId: (NSNumber*) accountId
    connectionAccountId: (NSNumber*) connectionAccountId
    keyword: (NSString*) keyword
    sortField: (NSString*) sortField
    descending: (NSNumber*) descending
    start: (NSNumber*) start
    limit: (NSNumber*) limit
    completionHandler: (void (^)(OAIApplicationSettingsResponse* output, NSError* error)) handler {
    // verify the required parameter 'version' is set
    if (version == nil) {
        NSParameterAssert(version);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"version"] };
            NSError* error = [NSError errorWithDomain:kOAIApplicationApiErrorDomain code:kOAIApplicationApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/{version}/application/settings/search"];

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
                              responseType: @"OAIApplicationSettingsResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIApplicationSettingsResponse*)data, error);
                                }
                            }];
}

///
/// Search Applications
/// Search for applications matching the criteria that the logged in user has access to
///  @param version  
///
///  @param deviceId The unique id of the device making the request (deviceId or accountId required) (optional)
///
///  @param accountId The account id of the user (deviceId or accountId required) (optional)
///
///  @param latitude The location of the device (optional)
///
///  @param longitude The location of the device (optional)
///
///  @param q Q (optional)
///
///  @param keyword The keyword used to search (optional)
///
///  @param qSearchFields The columns to applied the keyword search to (optional, default to @"NAME,ABOUT,BILLABLE_ENTITY_NAME")
///
///  @param sortField The column to sort the search on (optional, default to @"APPLICATION_ID")
///
///  @param descending The order to return the search results (optional, default to @(NO))
///
///  @param i the start of the index (optional)
///
///  @param start The start of the pagination (optional, default to @0)
///
///  @param l the limit of the index (optional)
///
///  @param limit The limit of the pagination (optional, default to @100)
///
///  @param hasAds Filter results on whether the application supports ads or not. Ignore this parameter to return all results. (optional)
///
///  @param publicNotifications Filter results on whether the application is available for public trigger notifications (optional)
///
///  @param activeOnly Return only active results (optional, default to @(NO))
///
///  @returns NSArray<OAIApplicationResponse>*
///
-(NSURLSessionTask*) searchApplicationsWithVersion: (NSNumber*) version
    deviceId: (NSString*) deviceId
    accountId: (NSNumber*) accountId
    latitude: (NSNumber*) latitude
    longitude: (NSNumber*) longitude
    q: (NSString*) q
    keyword: (NSString*) keyword
    qSearchFields: (NSString*) qSearchFields
    sortField: (NSString*) sortField
    descending: (NSNumber*) descending
    i: (NSNumber*) i
    start: (NSNumber*) start
    l: (NSNumber*) l
    limit: (NSNumber*) limit
    hasAds: (NSNumber*) hasAds
    publicNotifications: (NSNumber*) publicNotifications
    activeOnly: (NSNumber*) activeOnly
    completionHandler: (void (^)(NSArray<OAIApplicationResponse>* output, NSError* error)) handler {
    // verify the required parameter 'version' is set
    if (version == nil) {
        NSParameterAssert(version);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"version"] };
            NSError* error = [NSError errorWithDomain:kOAIApplicationApiErrorDomain code:kOAIApplicationApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/{version}/application/search"];

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
    if (q != nil) {
        queryParams[@"q"] = q;
    }
    if (keyword != nil) {
        queryParams[@"keyword"] = keyword;
    }
    if (qSearchFields != nil) {
        queryParams[@"qSearchFields"] = qSearchFields;
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
    if (hasAds != nil) {
        queryParams[@"hasAds"] = [hasAds isEqual:@(YES)] ? @"true" : @"false";
    }
    if (publicNotifications != nil) {
        queryParams[@"publicNotifications"] = [publicNotifications isEqual:@(YES)] ? @"true" : @"false";
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
                              responseType: @"NSArray<OAIApplicationResponse>*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSArray<OAIApplicationResponse>*)data, error);
                                }
                            }];
}

///
/// Update Application
/// Update an application record
///  @param version  
///
///  @param appKey The application key for updating an existing application 
///
///  @param appName The name of the application 
///
///  @param deviceId The unique id of the device making the request (deviceId or accountId required) (optional)
///
///  @param accountId The account id of the user (deviceId or accountId required) (optional)
///
///  @param about The description of the application (optional)
///
///  @param bundleId The application bundle identifier (format - com.company.appName) (optional)
///
///  @param appIconAssetId The application icon asset id (optional)
///
///  @param appLogoAssetId The application logo asset id (optional)
///
///  @param facebookAppId The Facebook application id (optional)
///
///  @param facebookAppSecret The Facebook application secret (optional)
///
///  @param googleApiKey This is the either the 'server key' or 'browser key' generated from google to enable Google Cloud Messaging (optional)
///
///  @param updateEULADate Determines whether to update the EULA date (optional)
///
///  @param eulaVersion The EULA version (optional)
///
///  @param landingPageUrl The landing page URL (optional)
///
///  @param showInActivities Determines whether to show the application in the activity feed (optional)
///
///  @param activityDescription The description of the application in the activity feed (optional)
///
///  @param inviteWelcomeText The text to display on the invite page (optional)
///
///  @param invitePageUrl The url to the application invite page (optional)
///
///  @param urlScheme The protocal the app uses to load the app via a browser (optional)
///
///  @param platforms A json object with a list of supported platforms.  ```json {   \"platforms\": [     {       \"deviceId\": 1,       \"minimum\": 230,       \"maximum\": 421,       \"downloadUrl\": \"http://app.store.com/download\",       \"description\": \"description and version info\"     }   ] } ```  (optional)
///
///  @param downloadUrls Json formatted downloadUrls.  ```json {   \"ios\": \"the-url-to-app-store\",    \"android\": \"the-url-to-google-play\" } ```   (optional)
///
///  @param categoryIds List of categories to apply (optional)
///
///  @param scoringType The type of scoring this application will use {GAME_LEVEL, GAME_OBJECT (optional, default to @"GAME_LEVEL")
///
///  @param hintCost The cost of hints (optional, default to @11)
///
///  @param maxScore The maximum score that will be possible (optional, default to @125)
///
///  @param ticketsPerPoint The point-to-ticket conversion ratio (optional, default to @0.037)
///
///  @param hasGameData Determines whether the application uses services to save custom game objects (optional, default to @(YES))
///
///  @param publicNotifications Public Notifications (optional)
///
///  @param useMatchingAlgorithm Use Matching Algorithm (optional)
///
///  @param globalTickets Determines whether earned tickets are applied across all applications (optional, default to @(NO))
///
///  @param buildVersion The current build version of the application (optional, default to @1)
///
///  @param apiVersion The current API version the application uses (optional)
///
///  @param placementName The name of the placement (optional)
///
///  @param placementDescription The description of the placement (optional)
///
///  @param placementSize The ad placement size {BANNER, LEADERBOARD, SKYSCRAPER, INTERSTITIAL, CUSTOM (this is required if a placements is to be created) (optional)
///
///  @param placementHeight The height of a custom ad size (optional)
///
///  @param placementWidth The width of a custom ad size (optional)
///
///  @param placementRefreshInterval The refresh interval in seconds (optional)
///
///  @param createObjectStore Generate a custom object store to use (optional, default to @(YES))
///
///  @param publicContentApproval Determine whether or not public content requires admin approval before it becomes public (optional, default to @(NO))
///
///  @param productionMode Determines whether the application uses production or sandbox services (optional, default to @(NO))
///
///  @param minimumSessionLength Minimum Session Length (optional)
///
///  @param sessionGapLength Session Gap Length (optional)
///
///  @param localAdsEnabled Local Ads Enabled (optional, default to @(NO))
///
///  @param sqootApiKey Sqoot Api Key (optional)
///
///  @param trilatProcessingType Determines how to process trilateration data. Possible values include: DEFAULT, FINGERPRINT (optional, default to @"FINGERPRINT")
///
///  @param maxSampleSize Determines what the maximum sample size during trilateration (optional)
///
///  @param minRSSI Determines what the minimum acceptable RSSI value (optional)
///
///  @param modules List modules allowed to be served by the server, possible values include: COMMON, MEDIA, OFFER, GAME, SOCIAL, CONSUMER_WEBSITE, ALL (optional, default to @"ALL")
///
///  @param authorizedCount How many servers the license will support (optional, default to @1)
///
///  @param authorizedServers The list of ip addresses of servers the license will support, leave null for any server (optional)
///
///  @param defaultTimezone Sets the default timezone for the app (used for leaderboards and other time specific content) (optional)
///
///  @param smtpPass SMTP Pass (optional)
///
///  @param metaData The application meta data. Defined by the client (optional)
///
///  @param placementMetaData The ad placement meta data. Defined by the client (optional)
///
///  @param ipsFloor Create floor tables for Ips (optional, default to @(NO))
///
///  @param enableAPNSBadge Enables setting the APNS badge value in the payload (optional, default to @(YES))
///
///  @param includeInReport Enables using the application in session reports (optional, default to @(YES))
///
///  @param defaultAppFilterId Sets the default filter to use (if none is passed in) for certain search APIs including Album Search. (optional)
///
///  @param enableWelcomeEmail Enables whether the default welcome email will be sent for new app users (optional)
///
///  @param appleAppId The Apple Application ID (optional)
///
///  @param appleTeamId The Apple Team ID (optional)
///
///  @param appleAuthKeyId The Apple Auth Key ID (optional)
///
///  @param appleAuthKey The Apple Auth Signin Key (p8) File (optional)
///
///  @param appleIssuerId The Apple Issuer ID (optional)
///
///  @param appStoreKeyId The Apple App Store Key ID (optional)
///
///  @param appStoreKey The Apple App Store Key (p8) File (optional)
///
///  @param googlePrivateKeyFile This is the private key file for your Google service account. (optional)
///
///  @param authorizeNetApiKey Authorize Net Api Key (optional)
///
///  @param authorizeNetTransactionKey Authorize Net Transaction Key (optional)
///
///  @param emailSender Email Sender (optional)
///
///  @param smtpUser SMTP User (optional)
///
///  @param smtpHost SMTP Host (optional)
///
///  @param vatomBusinessId Vatom Business Id (optional)
///
///  @param vatomRestClientId Vatom REST Client Id (optional)
///
///  @param vatomRestSecretKey Vatom Secret Key (optional)
///
///  @param twilioAccountSID Twilio Account SID (optional)
///
///  @param twilioAuthToken Twilio Auth Token (optional)
///
///  @param twilioSenderPhoneNumber Twilio Sender Phone Number (optional)
///
///  @param openAISecretKey OpenAI Secret API Key (optional)
///
///  @returns OAIApplicationResponse*
///
-(NSURLSessionTask*) updateApplicationWithVersion: (NSNumber*) version
    appKey: (NSString*) appKey
    appName: (NSString*) appName
    deviceId: (NSString*) deviceId
    accountId: (NSNumber*) accountId
    about: (NSString*) about
    bundleId: (NSString*) bundleId
    appIconAssetId: (NSNumber*) appIconAssetId
    appLogoAssetId: (NSNumber*) appLogoAssetId
    facebookAppId: (NSString*) facebookAppId
    facebookAppSecret: (NSString*) facebookAppSecret
    googleApiKey: (NSString*) googleApiKey
    updateEULADate: (NSNumber*) updateEULADate
    eulaVersion: (NSString*) eulaVersion
    landingPageUrl: (NSString*) landingPageUrl
    showInActivities: (NSNumber*) showInActivities
    activityDescription: (NSString*) activityDescription
    inviteWelcomeText: (NSString*) inviteWelcomeText
    invitePageUrl: (NSString*) invitePageUrl
    urlScheme: (NSString*) urlScheme
    platforms: (NSString*) platforms
    downloadUrls: (NSString*) downloadUrls
    categoryIds: (NSString*) categoryIds
    scoringType: (NSString*) scoringType
    hintCost: (NSNumber*) hintCost
    maxScore: (NSNumber*) maxScore
    ticketsPerPoint: (NSNumber*) ticketsPerPoint
    hasGameData: (NSNumber*) hasGameData
    publicNotifications: (NSNumber*) publicNotifications
    useMatchingAlgorithm: (NSNumber*) useMatchingAlgorithm
    globalTickets: (NSNumber*) globalTickets
    buildVersion: (NSNumber*) buildVersion
    apiVersion: (NSNumber*) apiVersion
    placementName: (NSString*) placementName
    placementDescription: (NSString*) placementDescription
    placementSize: (NSString*) placementSize
    placementHeight: (NSNumber*) placementHeight
    placementWidth: (NSNumber*) placementWidth
    placementRefreshInterval: (NSNumber*) placementRefreshInterval
    createObjectStore: (NSNumber*) createObjectStore
    publicContentApproval: (NSNumber*) publicContentApproval
    productionMode: (NSNumber*) productionMode
    minimumSessionLength: (NSNumber*) minimumSessionLength
    sessionGapLength: (NSNumber*) sessionGapLength
    localAdsEnabled: (NSNumber*) localAdsEnabled
    sqootApiKey: (NSString*) sqootApiKey
    trilatProcessingType: (NSString*) trilatProcessingType
    maxSampleSize: (NSNumber*) maxSampleSize
    minRSSI: (NSNumber*) minRSSI
    modules: (NSString*) modules
    authorizedCount: (NSNumber*) authorizedCount
    authorizedServers: (NSString*) authorizedServers
    defaultTimezone: (NSString*) defaultTimezone
    smtpPass: (NSString*) smtpPass
    metaData: (NSString*) metaData
    placementMetaData: (NSString*) placementMetaData
    ipsFloor: (NSNumber*) ipsFloor
    enableAPNSBadge: (NSNumber*) enableAPNSBadge
    includeInReport: (NSNumber*) includeInReport
    defaultAppFilterId: (NSNumber*) defaultAppFilterId
    enableWelcomeEmail: (NSNumber*) enableWelcomeEmail
    appleAppId: (NSString*) appleAppId
    appleTeamId: (NSString*) appleTeamId
    appleAuthKeyId: (NSString*) appleAuthKeyId
    appleAuthKey: (NSURL*) appleAuthKey
    appleIssuerId: (NSString*) appleIssuerId
    appStoreKeyId: (NSString*) appStoreKeyId
    appStoreKey: (NSURL*) appStoreKey
    googlePrivateKeyFile: (NSURL*) googlePrivateKeyFile
    authorizeNetApiKey: (NSString*) authorizeNetApiKey
    authorizeNetTransactionKey: (NSString*) authorizeNetTransactionKey
    emailSender: (NSString*) emailSender
    smtpUser: (NSString*) smtpUser
    smtpHost: (NSString*) smtpHost
    vatomBusinessId: (NSString*) vatomBusinessId
    vatomRestClientId: (NSString*) vatomRestClientId
    vatomRestSecretKey: (NSString*) vatomRestSecretKey
    twilioAccountSID: (NSString*) twilioAccountSID
    twilioAuthToken: (NSString*) twilioAuthToken
    twilioSenderPhoneNumber: (NSString*) twilioSenderPhoneNumber
    openAISecretKey: (NSString*) openAISecretKey
    completionHandler: (void (^)(OAIApplicationResponse* output, NSError* error)) handler {
    // verify the required parameter 'version' is set
    if (version == nil) {
        NSParameterAssert(version);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"version"] };
            NSError* error = [NSError errorWithDomain:kOAIApplicationApiErrorDomain code:kOAIApplicationApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'appKey' is set
    if (appKey == nil) {
        NSParameterAssert(appKey);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"appKey"] };
            NSError* error = [NSError errorWithDomain:kOAIApplicationApiErrorDomain code:kOAIApplicationApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'appName' is set
    if (appName == nil) {
        NSParameterAssert(appName);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"appName"] };
            NSError* error = [NSError errorWithDomain:kOAIApplicationApiErrorDomain code:kOAIApplicationApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/{version}/application/update"];

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
    if (appName != nil) {
        queryParams[@"appName"] = appName;
    }
    if (about != nil) {
        queryParams[@"about"] = about;
    }
    if (bundleId != nil) {
        queryParams[@"bundleId"] = bundleId;
    }
    if (appIconAssetId != nil) {
        queryParams[@"appIconAssetId"] = appIconAssetId;
    }
    if (appLogoAssetId != nil) {
        queryParams[@"appLogoAssetId"] = appLogoAssetId;
    }
    if (facebookAppId != nil) {
        queryParams[@"facebookAppId"] = facebookAppId;
    }
    if (facebookAppSecret != nil) {
        queryParams[@"facebookAppSecret"] = facebookAppSecret;
    }
    if (googleApiKey != nil) {
        queryParams[@"googleApiKey"] = googleApiKey;
    }
    if (updateEULADate != nil) {
        queryParams[@"updateEULADate"] = [updateEULADate isEqual:@(YES)] ? @"true" : @"false";
    }
    if (eulaVersion != nil) {
        queryParams[@"eulaVersion"] = eulaVersion;
    }
    if (landingPageUrl != nil) {
        queryParams[@"landingPageUrl"] = landingPageUrl;
    }
    if (showInActivities != nil) {
        queryParams[@"showInActivities"] = [showInActivities isEqual:@(YES)] ? @"true" : @"false";
    }
    if (activityDescription != nil) {
        queryParams[@"activityDescription"] = activityDescription;
    }
    if (inviteWelcomeText != nil) {
        queryParams[@"inviteWelcomeText"] = inviteWelcomeText;
    }
    if (invitePageUrl != nil) {
        queryParams[@"invitePageUrl"] = invitePageUrl;
    }
    if (urlScheme != nil) {
        queryParams[@"urlScheme"] = urlScheme;
    }
    if (platforms != nil) {
        queryParams[@"platforms"] = platforms;
    }
    if (downloadUrls != nil) {
        queryParams[@"downloadUrls"] = downloadUrls;
    }
    if (categoryIds != nil) {
        queryParams[@"categoryIds"] = categoryIds;
    }
    if (scoringType != nil) {
        queryParams[@"scoringType"] = scoringType;
    }
    if (hintCost != nil) {
        queryParams[@"hintCost"] = hintCost;
    }
    if (maxScore != nil) {
        queryParams[@"maxScore"] = maxScore;
    }
    if (ticketsPerPoint != nil) {
        queryParams[@"ticketsPerPoint"] = ticketsPerPoint;
    }
    if (hasGameData != nil) {
        queryParams[@"hasGameData"] = [hasGameData isEqual:@(YES)] ? @"true" : @"false";
    }
    if (publicNotifications != nil) {
        queryParams[@"publicNotifications"] = [publicNotifications isEqual:@(YES)] ? @"true" : @"false";
    }
    if (useMatchingAlgorithm != nil) {
        queryParams[@"useMatchingAlgorithm"] = [useMatchingAlgorithm isEqual:@(YES)] ? @"true" : @"false";
    }
    if (globalTickets != nil) {
        queryParams[@"globalTickets"] = [globalTickets isEqual:@(YES)] ? @"true" : @"false";
    }
    if (buildVersion != nil) {
        queryParams[@"buildVersion"] = buildVersion;
    }
    if (apiVersion != nil) {
        queryParams[@"apiVersion"] = apiVersion;
    }
    if (placementName != nil) {
        queryParams[@"placementName"] = placementName;
    }
    if (placementDescription != nil) {
        queryParams[@"placementDescription"] = placementDescription;
    }
    if (placementSize != nil) {
        queryParams[@"placementSize"] = placementSize;
    }
    if (placementHeight != nil) {
        queryParams[@"placementHeight"] = placementHeight;
    }
    if (placementWidth != nil) {
        queryParams[@"placementWidth"] = placementWidth;
    }
    if (placementRefreshInterval != nil) {
        queryParams[@"placementRefreshInterval"] = placementRefreshInterval;
    }
    if (createObjectStore != nil) {
        queryParams[@"createObjectStore"] = [createObjectStore isEqual:@(YES)] ? @"true" : @"false";
    }
    if (publicContentApproval != nil) {
        queryParams[@"publicContentApproval"] = [publicContentApproval isEqual:@(YES)] ? @"true" : @"false";
    }
    if (productionMode != nil) {
        queryParams[@"productionMode"] = [productionMode isEqual:@(YES)] ? @"true" : @"false";
    }
    if (minimumSessionLength != nil) {
        queryParams[@"minimumSessionLength"] = minimumSessionLength;
    }
    if (sessionGapLength != nil) {
        queryParams[@"sessionGapLength"] = sessionGapLength;
    }
    if (localAdsEnabled != nil) {
        queryParams[@"localAdsEnabled"] = [localAdsEnabled isEqual:@(YES)] ? @"true" : @"false";
    }
    if (sqootApiKey != nil) {
        queryParams[@"sqootApiKey"] = sqootApiKey;
    }
    if (trilatProcessingType != nil) {
        queryParams[@"trilatProcessingType"] = trilatProcessingType;
    }
    if (maxSampleSize != nil) {
        queryParams[@"maxSampleSize"] = maxSampleSize;
    }
    if (minRSSI != nil) {
        queryParams[@"minRSSI"] = minRSSI;
    }
    if (modules != nil) {
        queryParams[@"modules"] = modules;
    }
    if (authorizedCount != nil) {
        queryParams[@"authorizedCount"] = authorizedCount;
    }
    if (authorizedServers != nil) {
        queryParams[@"authorizedServers"] = authorizedServers;
    }
    if (defaultTimezone != nil) {
        queryParams[@"defaultTimezone"] = defaultTimezone;
    }
    if (smtpPass != nil) {
        queryParams[@"smtpPass"] = smtpPass;
    }
    if (metaData != nil) {
        queryParams[@"metaData"] = metaData;
    }
    if (placementMetaData != nil) {
        queryParams[@"placementMetaData"] = placementMetaData;
    }
    if (ipsFloor != nil) {
        queryParams[@"ipsFloor"] = [ipsFloor isEqual:@(YES)] ? @"true" : @"false";
    }
    if (enableAPNSBadge != nil) {
        queryParams[@"enableAPNSBadge"] = [enableAPNSBadge isEqual:@(YES)] ? @"true" : @"false";
    }
    if (includeInReport != nil) {
        queryParams[@"includeInReport"] = [includeInReport isEqual:@(YES)] ? @"true" : @"false";
    }
    if (defaultAppFilterId != nil) {
        queryParams[@"defaultAppFilterId"] = defaultAppFilterId;
    }
    if (enableWelcomeEmail != nil) {
        queryParams[@"enableWelcomeEmail"] = [enableWelcomeEmail isEqual:@(YES)] ? @"true" : @"false";
    }
    if (appleAppId != nil) {
        queryParams[@"appleAppId"] = appleAppId;
    }
    if (appleTeamId != nil) {
        queryParams[@"appleTeamId"] = appleTeamId;
    }
    if (appleAuthKeyId != nil) {
        queryParams[@"appleAuthKeyId"] = appleAuthKeyId;
    }
    if (appleAuthKey != nil) {
        queryParams[@"appleAuthKey"] = appleAuthKey;
    }
    if (appleIssuerId != nil) {
        queryParams[@"appleIssuerId"] = appleIssuerId;
    }
    if (appStoreKeyId != nil) {
        queryParams[@"appStoreKeyId"] = appStoreKeyId;
    }
    if (appStoreKey != nil) {
        queryParams[@"appStoreKey"] = appStoreKey;
    }
    if (googlePrivateKeyFile != nil) {
        queryParams[@"googlePrivateKeyFile"] = googlePrivateKeyFile;
    }
    if (authorizeNetApiKey != nil) {
        queryParams[@"authorizeNetApiKey"] = authorizeNetApiKey;
    }
    if (authorizeNetTransactionKey != nil) {
        queryParams[@"authorizeNetTransactionKey"] = authorizeNetTransactionKey;
    }
    if (emailSender != nil) {
        queryParams[@"emailSender"] = emailSender;
    }
    if (smtpUser != nil) {
        queryParams[@"smtpUser"] = smtpUser;
    }
    if (smtpHost != nil) {
        queryParams[@"smtpHost"] = smtpHost;
    }
    if (vatomBusinessId != nil) {
        queryParams[@"vatomBusinessId"] = vatomBusinessId;
    }
    if (vatomRestClientId != nil) {
        queryParams[@"vatomRestClientId"] = vatomRestClientId;
    }
    if (vatomRestSecretKey != nil) {
        queryParams[@"vatomRestSecretKey"] = vatomRestSecretKey;
    }
    if (twilioAccountSID != nil) {
        queryParams[@"twilioAccountSID"] = twilioAccountSID;
    }
    if (twilioAuthToken != nil) {
        queryParams[@"twilioAuthToken"] = twilioAuthToken;
    }
    if (twilioSenderPhoneNumber != nil) {
        queryParams[@"twilioSenderPhoneNumber"] = twilioSenderPhoneNumber;
    }
    if (openAISecretKey != nil) {
        queryParams[@"openAISecretKey"] = openAISecretKey;
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
                              responseType: @"OAIApplicationResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIApplicationResponse*)data, error);
                                }
                            }];
}

///
/// Change Appliation Status
/// Set the application's active flag to true/false. This effectively activates or deactivates the application.
///  @param version  
///
///  @param accountId The account used to perform the delete, must have rights to edit the application. 
///
///  @param appKey The key of the application to be deleted 
///
///  @param active If true then set to active, false otherwise 
///
///  @returns OAISirqulResponse*
///
-(NSURLSessionTask*) updateApplicationActiveWithVersion: (NSNumber*) version
    accountId: (NSNumber*) accountId
    appKey: (NSString*) appKey
    active: (NSNumber*) active
    completionHandler: (void (^)(OAISirqulResponse* output, NSError* error)) handler {
    // verify the required parameter 'version' is set
    if (version == nil) {
        NSParameterAssert(version);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"version"] };
            NSError* error = [NSError errorWithDomain:kOAIApplicationApiErrorDomain code:kOAIApplicationApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kOAIApplicationApiErrorDomain code:kOAIApplicationApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'appKey' is set
    if (appKey == nil) {
        NSParameterAssert(appKey);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"appKey"] };
            NSError* error = [NSError errorWithDomain:kOAIApplicationApiErrorDomain code:kOAIApplicationApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'active' is set
    if (active == nil) {
        NSParameterAssert(active);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"active"] };
            NSError* error = [NSError errorWithDomain:kOAIApplicationApiErrorDomain code:kOAIApplicationApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/{version}/application/active"];

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
/// Update Ad Placement
/// Updates an ad placement for an application.
///  @param version  
///
///  @param placementId The id of the placement to update, the user must have rights to the application the ad placement is for 
///
///  @param deviceId The unique id of the device making the request (deviceId or accountId required) (optional)
///
///  @param accountId The account id of the user (deviceId or accountId required) (optional)
///
///  @param name The name of the placement (optional)
///
///  @param _description The description of the placement (optional)
///
///  @param size The ad placement size {BANNER, LEADERBOARD, SKYSCRAPER, INTERSTITIAL, CUSTOM (optional)
///
///  @param height The height of a custom ad size (optional)
///
///  @param width The width of a custom ad size (optional)
///
///  @param refreshInterval The refresh interval in seconds (optional)
///
///  @param defaultImageId Default Image Id (optional)
///
///  @param active Active (optional)
///
///  @returns OAIPlacementResponse*
///
-(NSURLSessionTask*) updateApplicationPlacementWithVersion: (NSNumber*) version
    placementId: (NSNumber*) placementId
    deviceId: (NSString*) deviceId
    accountId: (NSNumber*) accountId
    name: (NSString*) name
    _description: (NSString*) _description
    size: (NSString*) size
    height: (NSNumber*) height
    width: (NSNumber*) width
    refreshInterval: (NSNumber*) refreshInterval
    defaultImageId: (NSNumber*) defaultImageId
    active: (NSNumber*) active
    completionHandler: (void (^)(OAIPlacementResponse* output, NSError* error)) handler {
    // verify the required parameter 'version' is set
    if (version == nil) {
        NSParameterAssert(version);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"version"] };
            NSError* error = [NSError errorWithDomain:kOAIApplicationApiErrorDomain code:kOAIApplicationApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'placementId' is set
    if (placementId == nil) {
        NSParameterAssert(placementId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"placementId"] };
            NSError* error = [NSError errorWithDomain:kOAIApplicationApiErrorDomain code:kOAIApplicationApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/{version}/application/placement/update"];

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
    if (placementId != nil) {
        queryParams[@"placementId"] = placementId;
    }
    if (name != nil) {
        queryParams[@"name"] = name;
    }
    if (_description != nil) {
        queryParams[@"description"] = _description;
    }
    if (size != nil) {
        queryParams[@"size"] = size;
    }
    if (height != nil) {
        queryParams[@"height"] = height;
    }
    if (width != nil) {
        queryParams[@"width"] = width;
    }
    if (refreshInterval != nil) {
        queryParams[@"refreshInterval"] = refreshInterval;
    }
    if (defaultImageId != nil) {
        queryParams[@"defaultImageId"] = defaultImageId;
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
                              responseType: @"OAIPlacementResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIPlacementResponse*)data, error);
                                }
                            }];
}

///
/// Create Application Certificate
/// Uploads a certificate for an application that the user has access to.
///  @param version  
///
///  @param appKey The key of the application 
///
///  @param deviceId Device Id (optional)
///
///  @param accountId The account used to perform the delete, must have rights to edit the application. (optional)
///
///  @param certificate Certificate (optional)
///
///  @returns OAISirqulResponse*
///
-(NSURLSessionTask*) uploadApplicationCertificateWithVersion: (NSNumber*) version
    appKey: (NSString*) appKey
    deviceId: (NSString*) deviceId
    accountId: (NSNumber*) accountId
    certificate: (NSURL*) certificate
    completionHandler: (void (^)(OAISirqulResponse* output, NSError* error)) handler {
    // verify the required parameter 'version' is set
    if (version == nil) {
        NSParameterAssert(version);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"version"] };
            NSError* error = [NSError errorWithDomain:kOAIApplicationApiErrorDomain code:kOAIApplicationApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'appKey' is set
    if (appKey == nil) {
        NSParameterAssert(appKey);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"appKey"] };
            NSError* error = [NSError errorWithDomain:kOAIApplicationApiErrorDomain code:kOAIApplicationApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/{version}/application/certificate/create"];

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
    if (certificate != nil) {
        queryParams[@"certificate"] = certificate;
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
