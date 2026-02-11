//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class ApplicationApi {
  ApplicationApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Create Application
  ///
  /// Create an application record and one placement record for that application. You can create more placements for this application by using {@link createApplicationPlacement}.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] appName (required):
  ///   The name of the application
  ///
  /// * [String] deviceId:
  ///   The unique id of the device making the request (deviceId or accountId required)
  ///
  /// * [int] accountId:
  ///   The account id of the user (deviceId or accountId required)
  ///
  /// * [String] about:
  ///   The description of the application
  ///
  /// * [String] bundleId:
  ///   The application bundle identifier (format - com.company.appName)
  ///
  /// * [int] appIconAssetId:
  ///   The application icon asset id
  ///
  /// * [int] appLogoAssetId:
  ///   The application logo asset id
  ///
  /// * [String] facebookAppId:
  ///   The Facebook application id
  ///
  /// * [String] facebookAppSecret:
  ///   The Facebook application secret
  ///
  /// * [String] googleApiKey:
  ///   This is the either the 'server key' or 'browser key' generated from google to enable Google Cloud Messaging
  ///
  /// * [bool] updateEULADate:
  ///   Determines whether to update the EULA date
  ///
  /// * [String] eulaVersion:
  ///   The EULA version
  ///
  /// * [String] landingPageUrl:
  ///   The landing page URL
  ///
  /// * [bool] showInActivities:
  ///   Determines whether to show the application in the activity feed
  ///
  /// * [String] activityDescription:
  ///   The description of the application in the activity feed
  ///
  /// * [String] inviteWelcomeText:
  ///   The text to display on the invite page
  ///
  /// * [String] invitePageUrl:
  ///   The url to the application invite page
  ///
  /// * [String] urlScheme:
  ///   The protocal the app uses to load the app via a browser
  ///
  /// * [String] platforms:
  ///   A json object with a list of supported platforms.  ```json {   \"platforms\": [     {       \"deviceId\": 1,       \"minimum\": 230,       \"maximum\": 421,       \"downloadUrl\": \"http://app.store.com/download\",       \"description\": \"description and version info\"     }   ] } ``` 
  ///
  /// * [String] downloadUrls:
  ///   Json formatted downloadUrls.  ```json {   \"ios\": \"the-url-to-app-store\",    \"android\": \"the-url-to-google-play\" } ```  
  ///
  /// * [String] categoryIds:
  ///   List of categories to apply
  ///
  /// * [String] scoringType:
  ///   The type of scoring this application will use {GAME_LEVEL, GAME_OBJECT
  ///
  /// * [int] hintCost:
  ///   The cost of hints
  ///
  /// * [int] maxScore:
  ///   The maximum score that will be possible
  ///
  /// * [double] ticketsPerPoint:
  ///   The point-to-ticket conversion ratio
  ///
  /// * [bool] hasGameData:
  ///   Determines whether the application uses services to save custom game objects
  ///
  /// * [bool] publicNotifications:
  ///   Public Notifications
  ///
  /// * [bool] useMatchingAlgorithm:
  ///   Use Matching Algorithm
  ///
  /// * [bool] globalTickets:
  ///   Determines whether earned tickets are applied across all applications
  ///
  /// * [double] buildVersion:
  ///   The current build version of the application
  ///
  /// * [double] apiVersion:
  ///   The current API version the application uses
  ///
  /// * [String] placementName:
  ///   The name of the placement
  ///
  /// * [String] placementDescription:
  ///   The description of the placement
  ///
  /// * [String] placementSize:
  ///   The ad placement size {BANNER, LEADERBOARD, SKYSCRAPER, INTERSTITIAL, CUSTOM (this is required if a placements is to be created)
  ///
  /// * [int] placementHeight:
  ///   The height of a custom ad size
  ///
  /// * [int] placementWidth:
  ///   The width of a custom ad size
  ///
  /// * [int] placementRefreshInterval:
  ///   The refresh interval in seconds
  ///
  /// * [bool] createObjectStore:
  ///   Generate a custom object store to use
  ///
  /// * [bool] publicContentApproval:
  ///   Determine whether or not public content requires admin approval before it becomes public
  ///
  /// * [bool] productionMode:
  ///   Determines whether the application uses production or sandbox services
  ///
  /// * [int] minimumSessionLength:
  ///   Minimum Session Length
  ///
  /// * [int] sessionGapLength:
  ///   Session Gap Length
  ///
  /// * [bool] localAdsEnabled:
  ///   Local Ads Enabled
  ///
  /// * [String] sqootApiKey:
  ///   Sqoot Api Key
  ///
  /// * [String] trilatProcessingType:
  ///   Determines how to process trilateration data. Possible values include: DEFAULT, FINGERPRINT
  ///
  /// * [int] maxSampleSize:
  ///   Determines what the maximum sample size during trilateration
  ///
  /// * [double] minRSSI:
  ///   Determines what the minimum acceptable RSSI value
  ///
  /// * [String] modules:
  ///   List modules allowed to be served by the server, possible values include: COMMON, MEDIA, OFFER, GAME, SOCIAL, CONSUMER_WEBSITE, ALL
  ///
  /// * [int] authorizedCount:
  ///   How many servers the license will support
  ///
  /// * [String] authorizedServers:
  ///   The list of ip addresses of servers the license will support, leave null for any server
  ///
  /// * [String] defaultTimezone:
  ///   Sets the default timezone for the app (used for leaderboards and other time specific content)
  ///
  /// * [String] smtpPass:
  ///   SMTP Pass
  ///
  /// * [String] metaData:
  ///   The application meta data. Defined by the client
  ///
  /// * [String] placementMetaData:
  ///   The ad placement meta data. Defined by the client
  ///
  /// * [bool] ipsFloor:
  ///   Create floor tables for Ips
  ///
  /// * [bool] enableAPNSBadge:
  ///   Enables setting the APNS badge value in the payload
  ///
  /// * [bool] includeInReport:
  ///   Enables using the application in session reports
  ///
  /// * [int] defaultAppFilterId:
  ///   Sets the default filter to use (if none is passed in) for certain search APIs including Album Search.
  ///
  /// * [bool] enableWelcomeEmail:
  ///   Enables whether the default welcome email will be sent for new app users
  ///
  /// * [String] appleAppId:
  ///   The Apple Application ID
  ///
  /// * [String] appleTeamId:
  ///   The Apple Team ID
  ///
  /// * [String] appleAuthKeyId:
  ///   The Apple Auth Key ID
  ///
  /// * [MultipartFile] appleAuthKey:
  ///   The Apple Auth Signin Key (p8) File
  ///
  /// * [String] appleIssuerId:
  ///   The Apple Issuer ID
  ///
  /// * [String] appStoreKeyId:
  ///   The Apple App Store Key ID
  ///
  /// * [MultipartFile] appStoreKey:
  ///   The Apple App Store Key (p8) File
  ///
  /// * [MultipartFile] googlePrivateKeyFile:
  ///   This is the private key file for your Google service account.
  ///
  /// * [String] authorizeNetApiKey:
  ///   Authorize Net Api Key
  ///
  /// * [String] authorizeNetTransactionKey:
  ///   Authorize Net Transaction Key
  ///
  /// * [String] emailSender:
  ///   Email Sender
  ///
  /// * [String] smtpUser:
  ///   SMTP User
  ///
  /// * [String] smtpHost:
  ///   SMTP Host
  ///
  /// * [String] vatomBusinessId:
  ///   Vatom Business Id
  ///
  /// * [String] vatomRestClientId:
  ///   Vatom REST Client Id
  ///
  /// * [String] vatomRestSecretKey:
  ///   Vatom Secret Key
  ///
  /// * [String] twilioAccountSID:
  ///   Twilio Account SID
  ///
  /// * [String] twilioAuthToken:
  ///   Twilio Auth Token
  ///
  /// * [String] twilioSenderPhoneNumber:
  ///   Twilio Sender Phone Number
  ///
  /// * [String] openAISecretKey:
  ///   OpenAI Secret API Key
  Future<Response> createApplicationWithHttpInfo(String appName, { String? deviceId, int? accountId, String? about, String? bundleId, int? appIconAssetId, int? appLogoAssetId, String? facebookAppId, String? facebookAppSecret, String? googleApiKey, bool? updateEULADate, String? eulaVersion, String? landingPageUrl, bool? showInActivities, String? activityDescription, String? inviteWelcomeText, String? invitePageUrl, String? urlScheme, String? platforms, String? downloadUrls, String? categoryIds, String? scoringType, int? hintCost, int? maxScore, double? ticketsPerPoint, bool? hasGameData, bool? publicNotifications, bool? useMatchingAlgorithm, bool? globalTickets, double? buildVersion, double? apiVersion, String? placementName, String? placementDescription, String? placementSize, int? placementHeight, int? placementWidth, int? placementRefreshInterval, bool? createObjectStore, bool? publicContentApproval, bool? productionMode, int? minimumSessionLength, int? sessionGapLength, bool? localAdsEnabled, String? sqootApiKey, String? trilatProcessingType, int? maxSampleSize, double? minRSSI, String? modules, int? authorizedCount, String? authorizedServers, String? defaultTimezone, String? smtpPass, String? metaData, String? placementMetaData, bool? ipsFloor, bool? enableAPNSBadge, bool? includeInReport, int? defaultAppFilterId, bool? enableWelcomeEmail, String? appleAppId, String? appleTeamId, String? appleAuthKeyId, MultipartFile? appleAuthKey, String? appleIssuerId, String? appStoreKeyId, MultipartFile? appStoreKey, MultipartFile? googlePrivateKeyFile, String? authorizeNetApiKey, String? authorizeNetTransactionKey, String? emailSender, String? smtpUser, String? smtpHost, String? vatomBusinessId, String? vatomRestClientId, String? vatomRestSecretKey, String? twilioAccountSID, String? twilioAuthToken, String? twilioSenderPhoneNumber, String? openAISecretKey, }) async {
    // ignore: prefer_const_declarations
    final path = r'/application/create';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (deviceId != null) {
      queryParams.addAll(_queryParams('', 'deviceId', deviceId));
    }
    if (accountId != null) {
      queryParams.addAll(_queryParams('', 'accountId', accountId));
    }
      queryParams.addAll(_queryParams('', 'appName', appName));
    if (about != null) {
      queryParams.addAll(_queryParams('', 'about', about));
    }
    if (bundleId != null) {
      queryParams.addAll(_queryParams('', 'bundleId', bundleId));
    }
    if (appIconAssetId != null) {
      queryParams.addAll(_queryParams('', 'appIconAssetId', appIconAssetId));
    }
    if (appLogoAssetId != null) {
      queryParams.addAll(_queryParams('', 'appLogoAssetId', appLogoAssetId));
    }
    if (facebookAppId != null) {
      queryParams.addAll(_queryParams('', 'facebookAppId', facebookAppId));
    }
    if (facebookAppSecret != null) {
      queryParams.addAll(_queryParams('', 'facebookAppSecret', facebookAppSecret));
    }
    if (googleApiKey != null) {
      queryParams.addAll(_queryParams('', 'googleApiKey', googleApiKey));
    }
    if (updateEULADate != null) {
      queryParams.addAll(_queryParams('', 'updateEULADate', updateEULADate));
    }
    if (eulaVersion != null) {
      queryParams.addAll(_queryParams('', 'eulaVersion', eulaVersion));
    }
    if (landingPageUrl != null) {
      queryParams.addAll(_queryParams('', 'landingPageUrl', landingPageUrl));
    }
    if (showInActivities != null) {
      queryParams.addAll(_queryParams('', 'showInActivities', showInActivities));
    }
    if (activityDescription != null) {
      queryParams.addAll(_queryParams('', 'activityDescription', activityDescription));
    }
    if (inviteWelcomeText != null) {
      queryParams.addAll(_queryParams('', 'inviteWelcomeText', inviteWelcomeText));
    }
    if (invitePageUrl != null) {
      queryParams.addAll(_queryParams('', 'invitePageUrl', invitePageUrl));
    }
    if (urlScheme != null) {
      queryParams.addAll(_queryParams('', 'urlScheme', urlScheme));
    }
    if (platforms != null) {
      queryParams.addAll(_queryParams('', 'platforms', platforms));
    }
    if (downloadUrls != null) {
      queryParams.addAll(_queryParams('', 'downloadUrls', downloadUrls));
    }
    if (categoryIds != null) {
      queryParams.addAll(_queryParams('', 'categoryIds', categoryIds));
    }
    if (scoringType != null) {
      queryParams.addAll(_queryParams('', 'scoringType', scoringType));
    }
    if (hintCost != null) {
      queryParams.addAll(_queryParams('', 'hintCost', hintCost));
    }
    if (maxScore != null) {
      queryParams.addAll(_queryParams('', 'maxScore', maxScore));
    }
    if (ticketsPerPoint != null) {
      queryParams.addAll(_queryParams('', 'ticketsPerPoint', ticketsPerPoint));
    }
    if (hasGameData != null) {
      queryParams.addAll(_queryParams('', 'hasGameData', hasGameData));
    }
    if (publicNotifications != null) {
      queryParams.addAll(_queryParams('', 'publicNotifications', publicNotifications));
    }
    if (useMatchingAlgorithm != null) {
      queryParams.addAll(_queryParams('', 'useMatchingAlgorithm', useMatchingAlgorithm));
    }
    if (globalTickets != null) {
      queryParams.addAll(_queryParams('', 'globalTickets', globalTickets));
    }
    if (buildVersion != null) {
      queryParams.addAll(_queryParams('', 'buildVersion', buildVersion));
    }
    if (apiVersion != null) {
      queryParams.addAll(_queryParams('', 'apiVersion', apiVersion));
    }
    if (placementName != null) {
      queryParams.addAll(_queryParams('', 'placementName', placementName));
    }
    if (placementDescription != null) {
      queryParams.addAll(_queryParams('', 'placementDescription', placementDescription));
    }
    if (placementSize != null) {
      queryParams.addAll(_queryParams('', 'placementSize', placementSize));
    }
    if (placementHeight != null) {
      queryParams.addAll(_queryParams('', 'placementHeight', placementHeight));
    }
    if (placementWidth != null) {
      queryParams.addAll(_queryParams('', 'placementWidth', placementWidth));
    }
    if (placementRefreshInterval != null) {
      queryParams.addAll(_queryParams('', 'placementRefreshInterval', placementRefreshInterval));
    }
    if (createObjectStore != null) {
      queryParams.addAll(_queryParams('', 'createObjectStore', createObjectStore));
    }
    if (publicContentApproval != null) {
      queryParams.addAll(_queryParams('', 'publicContentApproval', publicContentApproval));
    }
    if (productionMode != null) {
      queryParams.addAll(_queryParams('', 'productionMode', productionMode));
    }
    if (minimumSessionLength != null) {
      queryParams.addAll(_queryParams('', 'minimumSessionLength', minimumSessionLength));
    }
    if (sessionGapLength != null) {
      queryParams.addAll(_queryParams('', 'sessionGapLength', sessionGapLength));
    }
    if (localAdsEnabled != null) {
      queryParams.addAll(_queryParams('', 'localAdsEnabled', localAdsEnabled));
    }
    if (sqootApiKey != null) {
      queryParams.addAll(_queryParams('', 'sqootApiKey', sqootApiKey));
    }
    if (trilatProcessingType != null) {
      queryParams.addAll(_queryParams('', 'trilatProcessingType', trilatProcessingType));
    }
    if (maxSampleSize != null) {
      queryParams.addAll(_queryParams('', 'maxSampleSize', maxSampleSize));
    }
    if (minRSSI != null) {
      queryParams.addAll(_queryParams('', 'minRSSI', minRSSI));
    }
    if (modules != null) {
      queryParams.addAll(_queryParams('', 'modules', modules));
    }
    if (authorizedCount != null) {
      queryParams.addAll(_queryParams('', 'authorizedCount', authorizedCount));
    }
    if (authorizedServers != null) {
      queryParams.addAll(_queryParams('', 'authorizedServers', authorizedServers));
    }
    if (defaultTimezone != null) {
      queryParams.addAll(_queryParams('', 'defaultTimezone', defaultTimezone));
    }
    if (smtpPass != null) {
      queryParams.addAll(_queryParams('', 'smtpPass', smtpPass));
    }
    if (metaData != null) {
      queryParams.addAll(_queryParams('', 'metaData', metaData));
    }
    if (placementMetaData != null) {
      queryParams.addAll(_queryParams('', 'placementMetaData', placementMetaData));
    }
    if (ipsFloor != null) {
      queryParams.addAll(_queryParams('', 'ipsFloor', ipsFloor));
    }
    if (enableAPNSBadge != null) {
      queryParams.addAll(_queryParams('', 'enableAPNSBadge', enableAPNSBadge));
    }
    if (includeInReport != null) {
      queryParams.addAll(_queryParams('', 'includeInReport', includeInReport));
    }
    if (defaultAppFilterId != null) {
      queryParams.addAll(_queryParams('', 'defaultAppFilterId', defaultAppFilterId));
    }
    if (enableWelcomeEmail != null) {
      queryParams.addAll(_queryParams('', 'enableWelcomeEmail', enableWelcomeEmail));
    }
    if (appleAppId != null) {
      queryParams.addAll(_queryParams('', 'appleAppId', appleAppId));
    }
    if (appleTeamId != null) {
      queryParams.addAll(_queryParams('', 'appleTeamId', appleTeamId));
    }
    if (appleAuthKeyId != null) {
      queryParams.addAll(_queryParams('', 'appleAuthKeyId', appleAuthKeyId));
    }
    if (appleAuthKey != null) {
      queryParams.addAll(_queryParams('', 'appleAuthKey', appleAuthKey));
    }
    if (appleIssuerId != null) {
      queryParams.addAll(_queryParams('', 'appleIssuerId', appleIssuerId));
    }
    if (appStoreKeyId != null) {
      queryParams.addAll(_queryParams('', 'appStoreKeyId', appStoreKeyId));
    }
    if (appStoreKey != null) {
      queryParams.addAll(_queryParams('', 'appStoreKey', appStoreKey));
    }
    if (googlePrivateKeyFile != null) {
      queryParams.addAll(_queryParams('', 'googlePrivateKeyFile', googlePrivateKeyFile));
    }
    if (authorizeNetApiKey != null) {
      queryParams.addAll(_queryParams('', 'authorizeNetApiKey', authorizeNetApiKey));
    }
    if (authorizeNetTransactionKey != null) {
      queryParams.addAll(_queryParams('', 'authorizeNetTransactionKey', authorizeNetTransactionKey));
    }
    if (emailSender != null) {
      queryParams.addAll(_queryParams('', 'emailSender', emailSender));
    }
    if (smtpUser != null) {
      queryParams.addAll(_queryParams('', 'smtpUser', smtpUser));
    }
    if (smtpHost != null) {
      queryParams.addAll(_queryParams('', 'smtpHost', smtpHost));
    }
    if (vatomBusinessId != null) {
      queryParams.addAll(_queryParams('', 'vatomBusinessId', vatomBusinessId));
    }
    if (vatomRestClientId != null) {
      queryParams.addAll(_queryParams('', 'vatomRestClientId', vatomRestClientId));
    }
    if (vatomRestSecretKey != null) {
      queryParams.addAll(_queryParams('', 'vatomRestSecretKey', vatomRestSecretKey));
    }
    if (twilioAccountSID != null) {
      queryParams.addAll(_queryParams('', 'twilioAccountSID', twilioAccountSID));
    }
    if (twilioAuthToken != null) {
      queryParams.addAll(_queryParams('', 'twilioAuthToken', twilioAuthToken));
    }
    if (twilioSenderPhoneNumber != null) {
      queryParams.addAll(_queryParams('', 'twilioSenderPhoneNumber', twilioSenderPhoneNumber));
    }
    if (openAISecretKey != null) {
      queryParams.addAll(_queryParams('', 'openAISecretKey', openAISecretKey));
    }

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Create Application
  ///
  /// Create an application record and one placement record for that application. You can create more placements for this application by using {@link createApplicationPlacement}.
  ///
  /// Parameters:
  ///
  /// * [String] appName (required):
  ///   The name of the application
  ///
  /// * [String] deviceId:
  ///   The unique id of the device making the request (deviceId or accountId required)
  ///
  /// * [int] accountId:
  ///   The account id of the user (deviceId or accountId required)
  ///
  /// * [String] about:
  ///   The description of the application
  ///
  /// * [String] bundleId:
  ///   The application bundle identifier (format - com.company.appName)
  ///
  /// * [int] appIconAssetId:
  ///   The application icon asset id
  ///
  /// * [int] appLogoAssetId:
  ///   The application logo asset id
  ///
  /// * [String] facebookAppId:
  ///   The Facebook application id
  ///
  /// * [String] facebookAppSecret:
  ///   The Facebook application secret
  ///
  /// * [String] googleApiKey:
  ///   This is the either the 'server key' or 'browser key' generated from google to enable Google Cloud Messaging
  ///
  /// * [bool] updateEULADate:
  ///   Determines whether to update the EULA date
  ///
  /// * [String] eulaVersion:
  ///   The EULA version
  ///
  /// * [String] landingPageUrl:
  ///   The landing page URL
  ///
  /// * [bool] showInActivities:
  ///   Determines whether to show the application in the activity feed
  ///
  /// * [String] activityDescription:
  ///   The description of the application in the activity feed
  ///
  /// * [String] inviteWelcomeText:
  ///   The text to display on the invite page
  ///
  /// * [String] invitePageUrl:
  ///   The url to the application invite page
  ///
  /// * [String] urlScheme:
  ///   The protocal the app uses to load the app via a browser
  ///
  /// * [String] platforms:
  ///   A json object with a list of supported platforms.  ```json {   \"platforms\": [     {       \"deviceId\": 1,       \"minimum\": 230,       \"maximum\": 421,       \"downloadUrl\": \"http://app.store.com/download\",       \"description\": \"description and version info\"     }   ] } ``` 
  ///
  /// * [String] downloadUrls:
  ///   Json formatted downloadUrls.  ```json {   \"ios\": \"the-url-to-app-store\",    \"android\": \"the-url-to-google-play\" } ```  
  ///
  /// * [String] categoryIds:
  ///   List of categories to apply
  ///
  /// * [String] scoringType:
  ///   The type of scoring this application will use {GAME_LEVEL, GAME_OBJECT
  ///
  /// * [int] hintCost:
  ///   The cost of hints
  ///
  /// * [int] maxScore:
  ///   The maximum score that will be possible
  ///
  /// * [double] ticketsPerPoint:
  ///   The point-to-ticket conversion ratio
  ///
  /// * [bool] hasGameData:
  ///   Determines whether the application uses services to save custom game objects
  ///
  /// * [bool] publicNotifications:
  ///   Public Notifications
  ///
  /// * [bool] useMatchingAlgorithm:
  ///   Use Matching Algorithm
  ///
  /// * [bool] globalTickets:
  ///   Determines whether earned tickets are applied across all applications
  ///
  /// * [double] buildVersion:
  ///   The current build version of the application
  ///
  /// * [double] apiVersion:
  ///   The current API version the application uses
  ///
  /// * [String] placementName:
  ///   The name of the placement
  ///
  /// * [String] placementDescription:
  ///   The description of the placement
  ///
  /// * [String] placementSize:
  ///   The ad placement size {BANNER, LEADERBOARD, SKYSCRAPER, INTERSTITIAL, CUSTOM (this is required if a placements is to be created)
  ///
  /// * [int] placementHeight:
  ///   The height of a custom ad size
  ///
  /// * [int] placementWidth:
  ///   The width of a custom ad size
  ///
  /// * [int] placementRefreshInterval:
  ///   The refresh interval in seconds
  ///
  /// * [bool] createObjectStore:
  ///   Generate a custom object store to use
  ///
  /// * [bool] publicContentApproval:
  ///   Determine whether or not public content requires admin approval before it becomes public
  ///
  /// * [bool] productionMode:
  ///   Determines whether the application uses production or sandbox services
  ///
  /// * [int] minimumSessionLength:
  ///   Minimum Session Length
  ///
  /// * [int] sessionGapLength:
  ///   Session Gap Length
  ///
  /// * [bool] localAdsEnabled:
  ///   Local Ads Enabled
  ///
  /// * [String] sqootApiKey:
  ///   Sqoot Api Key
  ///
  /// * [String] trilatProcessingType:
  ///   Determines how to process trilateration data. Possible values include: DEFAULT, FINGERPRINT
  ///
  /// * [int] maxSampleSize:
  ///   Determines what the maximum sample size during trilateration
  ///
  /// * [double] minRSSI:
  ///   Determines what the minimum acceptable RSSI value
  ///
  /// * [String] modules:
  ///   List modules allowed to be served by the server, possible values include: COMMON, MEDIA, OFFER, GAME, SOCIAL, CONSUMER_WEBSITE, ALL
  ///
  /// * [int] authorizedCount:
  ///   How many servers the license will support
  ///
  /// * [String] authorizedServers:
  ///   The list of ip addresses of servers the license will support, leave null for any server
  ///
  /// * [String] defaultTimezone:
  ///   Sets the default timezone for the app (used for leaderboards and other time specific content)
  ///
  /// * [String] smtpPass:
  ///   SMTP Pass
  ///
  /// * [String] metaData:
  ///   The application meta data. Defined by the client
  ///
  /// * [String] placementMetaData:
  ///   The ad placement meta data. Defined by the client
  ///
  /// * [bool] ipsFloor:
  ///   Create floor tables for Ips
  ///
  /// * [bool] enableAPNSBadge:
  ///   Enables setting the APNS badge value in the payload
  ///
  /// * [bool] includeInReport:
  ///   Enables using the application in session reports
  ///
  /// * [int] defaultAppFilterId:
  ///   Sets the default filter to use (if none is passed in) for certain search APIs including Album Search.
  ///
  /// * [bool] enableWelcomeEmail:
  ///   Enables whether the default welcome email will be sent for new app users
  ///
  /// * [String] appleAppId:
  ///   The Apple Application ID
  ///
  /// * [String] appleTeamId:
  ///   The Apple Team ID
  ///
  /// * [String] appleAuthKeyId:
  ///   The Apple Auth Key ID
  ///
  /// * [MultipartFile] appleAuthKey:
  ///   The Apple Auth Signin Key (p8) File
  ///
  /// * [String] appleIssuerId:
  ///   The Apple Issuer ID
  ///
  /// * [String] appStoreKeyId:
  ///   The Apple App Store Key ID
  ///
  /// * [MultipartFile] appStoreKey:
  ///   The Apple App Store Key (p8) File
  ///
  /// * [MultipartFile] googlePrivateKeyFile:
  ///   This is the private key file for your Google service account.
  ///
  /// * [String] authorizeNetApiKey:
  ///   Authorize Net Api Key
  ///
  /// * [String] authorizeNetTransactionKey:
  ///   Authorize Net Transaction Key
  ///
  /// * [String] emailSender:
  ///   Email Sender
  ///
  /// * [String] smtpUser:
  ///   SMTP User
  ///
  /// * [String] smtpHost:
  ///   SMTP Host
  ///
  /// * [String] vatomBusinessId:
  ///   Vatom Business Id
  ///
  /// * [String] vatomRestClientId:
  ///   Vatom REST Client Id
  ///
  /// * [String] vatomRestSecretKey:
  ///   Vatom Secret Key
  ///
  /// * [String] twilioAccountSID:
  ///   Twilio Account SID
  ///
  /// * [String] twilioAuthToken:
  ///   Twilio Auth Token
  ///
  /// * [String] twilioSenderPhoneNumber:
  ///   Twilio Sender Phone Number
  ///
  /// * [String] openAISecretKey:
  ///   OpenAI Secret API Key
  Future<ApplicationResponse?> createApplication(String appName, { String? deviceId, int? accountId, String? about, String? bundleId, int? appIconAssetId, int? appLogoAssetId, String? facebookAppId, String? facebookAppSecret, String? googleApiKey, bool? updateEULADate, String? eulaVersion, String? landingPageUrl, bool? showInActivities, String? activityDescription, String? inviteWelcomeText, String? invitePageUrl, String? urlScheme, String? platforms, String? downloadUrls, String? categoryIds, String? scoringType, int? hintCost, int? maxScore, double? ticketsPerPoint, bool? hasGameData, bool? publicNotifications, bool? useMatchingAlgorithm, bool? globalTickets, double? buildVersion, double? apiVersion, String? placementName, String? placementDescription, String? placementSize, int? placementHeight, int? placementWidth, int? placementRefreshInterval, bool? createObjectStore, bool? publicContentApproval, bool? productionMode, int? minimumSessionLength, int? sessionGapLength, bool? localAdsEnabled, String? sqootApiKey, String? trilatProcessingType, int? maxSampleSize, double? minRSSI, String? modules, int? authorizedCount, String? authorizedServers, String? defaultTimezone, String? smtpPass, String? metaData, String? placementMetaData, bool? ipsFloor, bool? enableAPNSBadge, bool? includeInReport, int? defaultAppFilterId, bool? enableWelcomeEmail, String? appleAppId, String? appleTeamId, String? appleAuthKeyId, MultipartFile? appleAuthKey, String? appleIssuerId, String? appStoreKeyId, MultipartFile? appStoreKey, MultipartFile? googlePrivateKeyFile, String? authorizeNetApiKey, String? authorizeNetTransactionKey, String? emailSender, String? smtpUser, String? smtpHost, String? vatomBusinessId, String? vatomRestClientId, String? vatomRestSecretKey, String? twilioAccountSID, String? twilioAuthToken, String? twilioSenderPhoneNumber, String? openAISecretKey, }) async {
    final response = await createApplicationWithHttpInfo(appName,  deviceId: deviceId, accountId: accountId, about: about, bundleId: bundleId, appIconAssetId: appIconAssetId, appLogoAssetId: appLogoAssetId, facebookAppId: facebookAppId, facebookAppSecret: facebookAppSecret, googleApiKey: googleApiKey, updateEULADate: updateEULADate, eulaVersion: eulaVersion, landingPageUrl: landingPageUrl, showInActivities: showInActivities, activityDescription: activityDescription, inviteWelcomeText: inviteWelcomeText, invitePageUrl: invitePageUrl, urlScheme: urlScheme, platforms: platforms, downloadUrls: downloadUrls, categoryIds: categoryIds, scoringType: scoringType, hintCost: hintCost, maxScore: maxScore, ticketsPerPoint: ticketsPerPoint, hasGameData: hasGameData, publicNotifications: publicNotifications, useMatchingAlgorithm: useMatchingAlgorithm, globalTickets: globalTickets, buildVersion: buildVersion, apiVersion: apiVersion, placementName: placementName, placementDescription: placementDescription, placementSize: placementSize, placementHeight: placementHeight, placementWidth: placementWidth, placementRefreshInterval: placementRefreshInterval, createObjectStore: createObjectStore, publicContentApproval: publicContentApproval, productionMode: productionMode, minimumSessionLength: minimumSessionLength, sessionGapLength: sessionGapLength, localAdsEnabled: localAdsEnabled, sqootApiKey: sqootApiKey, trilatProcessingType: trilatProcessingType, maxSampleSize: maxSampleSize, minRSSI: minRSSI, modules: modules, authorizedCount: authorizedCount, authorizedServers: authorizedServers, defaultTimezone: defaultTimezone, smtpPass: smtpPass, metaData: metaData, placementMetaData: placementMetaData, ipsFloor: ipsFloor, enableAPNSBadge: enableAPNSBadge, includeInReport: includeInReport, defaultAppFilterId: defaultAppFilterId, enableWelcomeEmail: enableWelcomeEmail, appleAppId: appleAppId, appleTeamId: appleTeamId, appleAuthKeyId: appleAuthKeyId, appleAuthKey: appleAuthKey, appleIssuerId: appleIssuerId, appStoreKeyId: appStoreKeyId, appStoreKey: appStoreKey, googlePrivateKeyFile: googlePrivateKeyFile, authorizeNetApiKey: authorizeNetApiKey, authorizeNetTransactionKey: authorizeNetTransactionKey, emailSender: emailSender, smtpUser: smtpUser, smtpHost: smtpHost, vatomBusinessId: vatomBusinessId, vatomRestClientId: vatomRestClientId, vatomRestSecretKey: vatomRestSecretKey, twilioAccountSID: twilioAccountSID, twilioAuthToken: twilioAuthToken, twilioSenderPhoneNumber: twilioSenderPhoneNumber, openAISecretKey: openAISecretKey, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ApplicationResponse',) as ApplicationResponse;
    
    }
    return null;
  }

  /// Create Ad Placement
  ///
  /// Creates a new ad placement for an application.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] appKey (required):
  ///   The appKey of the application the ad placement is for
  ///
  /// * [String] size (required):
  ///   The ad placement size {BANNER, LEADERBOARD, SKYSCRAPER, INTERSTITIAL, CUSTOM
  ///
  /// * [String] deviceId:
  ///   The unique id of the device making the request (deviceId or accountId required)
  ///
  /// * [int] accountId:
  ///   The account id of the user (deviceId or accountId required)
  ///
  /// * [String] name:
  ///   The name of the placement
  ///
  /// * [String] description:
  ///   The description of the placement
  ///
  /// * [int] height:
  ///   The height of a custom ad size
  ///
  /// * [int] width:
  ///   The width of a custom ad size
  ///
  /// * [int] refreshInterval:
  ///   The refresh interval in seconds
  ///
  /// * [int] defaultImageId:
  ///   Default Image Id
  ///
  /// * [bool] active:
  ///   Active
  Future<Response> createApplicationPlacementWithHttpInfo(String appKey, String size, { String? deviceId, int? accountId, String? name, String? description, int? height, int? width, int? refreshInterval, int? defaultImageId, bool? active, }) async {
    // ignore: prefer_const_declarations
    final path = r'/application/placement/create';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (deviceId != null) {
      queryParams.addAll(_queryParams('', 'deviceId', deviceId));
    }
    if (accountId != null) {
      queryParams.addAll(_queryParams('', 'accountId', accountId));
    }
      queryParams.addAll(_queryParams('', 'appKey', appKey));
    if (name != null) {
      queryParams.addAll(_queryParams('', 'name', name));
    }
    if (description != null) {
      queryParams.addAll(_queryParams('', 'description', description));
    }
      queryParams.addAll(_queryParams('', 'size', size));
    if (height != null) {
      queryParams.addAll(_queryParams('', 'height', height));
    }
    if (width != null) {
      queryParams.addAll(_queryParams('', 'width', width));
    }
    if (refreshInterval != null) {
      queryParams.addAll(_queryParams('', 'refreshInterval', refreshInterval));
    }
    if (defaultImageId != null) {
      queryParams.addAll(_queryParams('', 'defaultImageId', defaultImageId));
    }
    if (active != null) {
      queryParams.addAll(_queryParams('', 'active', active));
    }

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Create Ad Placement
  ///
  /// Creates a new ad placement for an application.
  ///
  /// Parameters:
  ///
  /// * [String] appKey (required):
  ///   The appKey of the application the ad placement is for
  ///
  /// * [String] size (required):
  ///   The ad placement size {BANNER, LEADERBOARD, SKYSCRAPER, INTERSTITIAL, CUSTOM
  ///
  /// * [String] deviceId:
  ///   The unique id of the device making the request (deviceId or accountId required)
  ///
  /// * [int] accountId:
  ///   The account id of the user (deviceId or accountId required)
  ///
  /// * [String] name:
  ///   The name of the placement
  ///
  /// * [String] description:
  ///   The description of the placement
  ///
  /// * [int] height:
  ///   The height of a custom ad size
  ///
  /// * [int] width:
  ///   The width of a custom ad size
  ///
  /// * [int] refreshInterval:
  ///   The refresh interval in seconds
  ///
  /// * [int] defaultImageId:
  ///   Default Image Id
  ///
  /// * [bool] active:
  ///   Active
  Future<PlacementResponse?> createApplicationPlacement(String appKey, String size, { String? deviceId, int? accountId, String? name, String? description, int? height, int? width, int? refreshInterval, int? defaultImageId, bool? active, }) async {
    final response = await createApplicationPlacementWithHttpInfo(appKey, size,  deviceId: deviceId, accountId: accountId, name: name, description: description, height: height, width: width, refreshInterval: refreshInterval, defaultImageId: defaultImageId, active: active, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PlacementResponse',) as PlacementResponse;
    
    }
    return null;
  }

  /// Delete Application
  ///
  /// Set the deleted timestamp to current time. This effectively deletes the application since all queries should ignore any records with a deleted timestamp
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] accountId:
  ///   The account used to perform the delete, must have rights to edit the application.
  ///
  /// * [String] appKey:
  ///   The key of the application to be deleted
  Future<Response> deleteApplicationWithHttpInfo({ int? accountId, String? appKey, }) async {
    // ignore: prefer_const_declarations
    final path = r'/application/delete';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (accountId != null) {
      queryParams.addAll(_queryParams('', 'accountId', accountId));
    }
    if (appKey != null) {
      queryParams.addAll(_queryParams('', 'appKey', appKey));
    }

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Delete Application
  ///
  /// Set the deleted timestamp to current time. This effectively deletes the application since all queries should ignore any records with a deleted timestamp
  ///
  /// Parameters:
  ///
  /// * [int] accountId:
  ///   The account used to perform the delete, must have rights to edit the application.
  ///
  /// * [String] appKey:
  ///   The key of the application to be deleted
  Future<SirqulResponse?> deleteApplication({ int? accountId, String? appKey, }) async {
    final response = await deleteApplicationWithHttpInfo( accountId: accountId, appKey: appKey, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'SirqulResponse',) as SirqulResponse;
    
    }
    return null;
  }

  /// Delete Ad Placement
  ///
  /// Deletes an ad placement for an application.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] placementId (required):
  ///   The id of the placement to delete, the user must have rights to the application the ad placement is for
  ///
  /// * [String] deviceId:
  ///   The unique id of the device making the request (deviceId or accountId required)
  ///
  /// * [int] accountId:
  ///   The account id of the user (deviceId or accountId required)
  Future<Response> deleteApplicationPlacementWithHttpInfo(int placementId, { String? deviceId, int? accountId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/application/placement/delete';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (deviceId != null) {
      queryParams.addAll(_queryParams('', 'deviceId', deviceId));
    }
    if (accountId != null) {
      queryParams.addAll(_queryParams('', 'accountId', accountId));
    }
      queryParams.addAll(_queryParams('', 'placementId', placementId));

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Delete Ad Placement
  ///
  /// Deletes an ad placement for an application.
  ///
  /// Parameters:
  ///
  /// * [int] placementId (required):
  ///   The id of the placement to delete, the user must have rights to the application the ad placement is for
  ///
  /// * [String] deviceId:
  ///   The unique id of the device making the request (deviceId or accountId required)
  ///
  /// * [int] accountId:
  ///   The account id of the user (deviceId or accountId required)
  Future<PlacementResponse?> deleteApplicationPlacement(int placementId, { String? deviceId, int? accountId, }) async {
    final response = await deleteApplicationPlacementWithHttpInfo(placementId,  deviceId: deviceId, accountId: accountId, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PlacementResponse',) as PlacementResponse;
    
    }
    return null;
  }

  /// Get Application
  ///
  /// Get a specific application by appKey
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] appKey:
  ///   The key of the application
  ///
  /// * [int] applicationId:
  ///   Application Id
  Future<Response> getApplicationWithHttpInfo({ String? appKey, int? applicationId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/application/get';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (appKey != null) {
      queryParams.addAll(_queryParams('', 'appKey', appKey));
    }
    if (applicationId != null) {
      queryParams.addAll(_queryParams('', 'applicationId', applicationId));
    }

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Get Application
  ///
  /// Get a specific application by appKey
  ///
  /// Parameters:
  ///
  /// * [String] appKey:
  ///   The key of the application
  ///
  /// * [int] applicationId:
  ///   Application Id
  Future<ApplicationResponse?> getApplication({ String? appKey, int? applicationId, }) async {
    final response = await getApplicationWithHttpInfo( appKey: appKey, applicationId: applicationId, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ApplicationResponse',) as ApplicationResponse;
    
    }
    return null;
  }

  /// Get Ad Placement
  ///
  /// Get details of an ad placement
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] placementId (required):
  ///   The id of the placement
  ///
  /// * [String] deviceId:
  ///   The unique id of the device making the request (deviceId or accountId required)
  ///
  /// * [int] accountId:
  ///   The account id of the user (deviceId or accountId required)
  Future<Response> getApplicationPlacementWithHttpInfo(int placementId, { String? deviceId, int? accountId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/application/placement/get';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (deviceId != null) {
      queryParams.addAll(_queryParams('', 'deviceId', deviceId));
    }
    if (accountId != null) {
      queryParams.addAll(_queryParams('', 'accountId', accountId));
    }
      queryParams.addAll(_queryParams('', 'placementId', placementId));

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Get Ad Placement
  ///
  /// Get details of an ad placement
  ///
  /// Parameters:
  ///
  /// * [int] placementId (required):
  ///   The id of the placement
  ///
  /// * [String] deviceId:
  ///   The unique id of the device making the request (deviceId or accountId required)
  ///
  /// * [int] accountId:
  ///   The account id of the user (deviceId or accountId required)
  Future<PlacementResponse?> getApplicationPlacement(int placementId, { String? deviceId, int? accountId, }) async {
    final response = await getApplicationPlacementWithHttpInfo(placementId,  deviceId: deviceId, accountId: accountId, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PlacementResponse',) as PlacementResponse;
    
    }
    return null;
  }

  /// Get API versions
  ///
  /// Will return a comma separated list of numbers, newest first. For example: 3.0, 2.2, 2.1, 1.8
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getApplicationVersionsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/application/versions';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Get API versions
  ///
  /// Will return a comma separated list of numbers, newest first. For example: 3.0, 2.2, 2.1, 1.8
  Future<SirqulResponse?> getApplicationVersions() async {
    final response = await getApplicationVersionsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'SirqulResponse',) as SirqulResponse;
    
    }
    return null;
  }

  /// Search Application Users
  ///
  /// Get a list of users per application
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] appKey (required):
  ///   The application key
  ///
  /// * [String] q:
  ///   Q
  ///
  /// * [String] keyword:
  ///   The keyword used to search
  ///
  /// * [int] since:
  ///   Return accounts that have been active after this date (UNIX time-stamp in milliseconds)
  ///
  /// * [int] i:
  ///   the start of the index
  ///
  /// * [int] start:
  ///   The start of the pagination
  ///
  /// * [int] l:
  ///   the limit of the index
  ///
  /// * [int] limit:
  ///   The limit of the pagination
  Future<Response> getUniqueUsersByAppWithHttpInfo(String appKey, { String? q, String? keyword, int? since, int? i, int? start, int? l, int? limit, }) async {
    // ignore: prefer_const_declarations
    final path = r'/application/users';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'appKey', appKey));
    if (q != null) {
      queryParams.addAll(_queryParams('', 'q', q));
    }
    if (keyword != null) {
      queryParams.addAll(_queryParams('', 'keyword', keyword));
    }
    if (since != null) {
      queryParams.addAll(_queryParams('', 'since', since));
    }
    if (i != null) {
      queryParams.addAll(_queryParams('', '_i', i));
    }
    if (start != null) {
      queryParams.addAll(_queryParams('', 'start', start));
    }
    if (l != null) {
      queryParams.addAll(_queryParams('', '_l', l));
    }
    if (limit != null) {
      queryParams.addAll(_queryParams('', 'limit', limit));
    }

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Search Application Users
  ///
  /// Get a list of users per application
  ///
  /// Parameters:
  ///
  /// * [String] appKey (required):
  ///   The application key
  ///
  /// * [String] q:
  ///   Q
  ///
  /// * [String] keyword:
  ///   The keyword used to search
  ///
  /// * [int] since:
  ///   Return accounts that have been active after this date (UNIX time-stamp in milliseconds)
  ///
  /// * [int] i:
  ///   the start of the index
  ///
  /// * [int] start:
  ///   The start of the pagination
  ///
  /// * [int] l:
  ///   the limit of the index
  ///
  /// * [int] limit:
  ///   The limit of the pagination
  Future<AccountListResponse?> getUniqueUsersByApp(String appKey, { String? q, String? keyword, int? since, int? i, int? start, int? l, int? limit, }) async {
    final response = await getUniqueUsersByAppWithHttpInfo(appKey,  q: q, keyword: keyword, since: since, i: i, start: start, l: l, limit: limit, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'AccountListResponse',) as AccountListResponse;
    
    }
    return null;
  }

  /// List Applications
  ///
  /// List active applications matching the criteria (as a consumer)
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] accountId:
  ///   The account id of the application owner/manager
  ///
  /// * [String] q:
  ///   Q
  ///
  /// * [String] keyword:
  ///   The keyword used to search for title, about, and description fields
  ///
  /// * [String] platforms:
  ///   Deprecated, use deviceIds and deviceVersions
  ///
  /// * [String] deviceIds:
  ///   The list of targeted device ids, comma separated; possible values are retreived via /api/{version/audience/devices com.sirqul.geoapps.common.service.AudienceApi#getDevices getDevices (pass in deviceId values)
  ///
  /// * [String] deviceVersions:
  ///   The list of targeted device version ranges that are aligned  with the provided devices list (see devices param for possible values),  comma separated; examples are: 2.3-X, 0-5.1.4, 4.3.1-6.1.4 where X  is no maximum and 0 is no minimum. 
  ///
  /// * [String] categoryIds:
  ///   The list of category ids to filter the list by
  ///
  /// * [String] sortField:
  ///   The column to sort the search on, possible values include: UPDATED (default), CREATED, TITLE
  ///
  /// * [bool] hasAds:
  ///   Filter results on whether the application supports ads or not. Ignore this parameter to return all results.
  ///
  /// * [bool] publicNotifications:
  ///   Filter results on whether the application is available for public trigger notifications
  ///
  /// * [bool] filterBillable:
  ///   Determines whether to only return applications that the user has access to
  ///
  /// * [bool] filterContentAdmin:
  ///   Determines whether to only return applications that the user is a content admin of
  ///
  /// * [bool] descending:
  ///   The order to return the search results
  ///
  /// * [int] i:
  ///   the start of the index
  ///
  /// * [int] start:
  ///   The start of the pagination
  ///
  /// * [int] l:
  ///   The limit of the index
  ///
  /// * [int] limit:
  ///   The limit of the pagination
  ///
  /// * [String] applicationIds:
  ///   The list of application ids, comma separated. If provided will ignore all other params.
  ///
  /// * [bool] hasObjectStore:
  ///   Only include applications with a object store (default is false)
  ///
  /// * [bool] activeOnly:
  ///   Return only active results
  Future<Response> listApplicationsWithHttpInfo({ int? accountId, String? q, String? keyword, String? platforms, String? deviceIds, String? deviceVersions, String? categoryIds, String? sortField, bool? hasAds, bool? publicNotifications, bool? filterBillable, bool? filterContentAdmin, bool? descending, int? i, int? start, int? l, int? limit, String? applicationIds, bool? hasObjectStore, bool? activeOnly, }) async {
    // ignore: prefer_const_declarations
    final path = r'/application/list';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (accountId != null) {
      queryParams.addAll(_queryParams('', 'accountId', accountId));
    }
    if (q != null) {
      queryParams.addAll(_queryParams('', 'q', q));
    }
    if (keyword != null) {
      queryParams.addAll(_queryParams('', 'keyword', keyword));
    }
    if (platforms != null) {
      queryParams.addAll(_queryParams('', 'platforms', platforms));
    }
    if (deviceIds != null) {
      queryParams.addAll(_queryParams('', 'deviceIds', deviceIds));
    }
    if (deviceVersions != null) {
      queryParams.addAll(_queryParams('', 'deviceVersions', deviceVersions));
    }
    if (categoryIds != null) {
      queryParams.addAll(_queryParams('', 'categoryIds', categoryIds));
    }
    if (sortField != null) {
      queryParams.addAll(_queryParams('', 'sortField', sortField));
    }
    if (hasAds != null) {
      queryParams.addAll(_queryParams('', 'hasAds', hasAds));
    }
    if (publicNotifications != null) {
      queryParams.addAll(_queryParams('', 'publicNotifications', publicNotifications));
    }
    if (filterBillable != null) {
      queryParams.addAll(_queryParams('', 'filterBillable', filterBillable));
    }
    if (filterContentAdmin != null) {
      queryParams.addAll(_queryParams('', 'filterContentAdmin', filterContentAdmin));
    }
    if (descending != null) {
      queryParams.addAll(_queryParams('', 'descending', descending));
    }
    if (i != null) {
      queryParams.addAll(_queryParams('', '_i', i));
    }
    if (start != null) {
      queryParams.addAll(_queryParams('', 'start', start));
    }
    if (l != null) {
      queryParams.addAll(_queryParams('', '_l', l));
    }
    if (limit != null) {
      queryParams.addAll(_queryParams('', 'limit', limit));
    }
    if (applicationIds != null) {
      queryParams.addAll(_queryParams('', 'applicationIds', applicationIds));
    }
    if (hasObjectStore != null) {
      queryParams.addAll(_queryParams('', 'hasObjectStore', hasObjectStore));
    }
    if (activeOnly != null) {
      queryParams.addAll(_queryParams('', 'activeOnly', activeOnly));
    }

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// List Applications
  ///
  /// List active applications matching the criteria (as a consumer)
  ///
  /// Parameters:
  ///
  /// * [int] accountId:
  ///   The account id of the application owner/manager
  ///
  /// * [String] q:
  ///   Q
  ///
  /// * [String] keyword:
  ///   The keyword used to search for title, about, and description fields
  ///
  /// * [String] platforms:
  ///   Deprecated, use deviceIds and deviceVersions
  ///
  /// * [String] deviceIds:
  ///   The list of targeted device ids, comma separated; possible values are retreived via /api/{version/audience/devices com.sirqul.geoapps.common.service.AudienceApi#getDevices getDevices (pass in deviceId values)
  ///
  /// * [String] deviceVersions:
  ///   The list of targeted device version ranges that are aligned  with the provided devices list (see devices param for possible values),  comma separated; examples are: 2.3-X, 0-5.1.4, 4.3.1-6.1.4 where X  is no maximum and 0 is no minimum. 
  ///
  /// * [String] categoryIds:
  ///   The list of category ids to filter the list by
  ///
  /// * [String] sortField:
  ///   The column to sort the search on, possible values include: UPDATED (default), CREATED, TITLE
  ///
  /// * [bool] hasAds:
  ///   Filter results on whether the application supports ads or not. Ignore this parameter to return all results.
  ///
  /// * [bool] publicNotifications:
  ///   Filter results on whether the application is available for public trigger notifications
  ///
  /// * [bool] filterBillable:
  ///   Determines whether to only return applications that the user has access to
  ///
  /// * [bool] filterContentAdmin:
  ///   Determines whether to only return applications that the user is a content admin of
  ///
  /// * [bool] descending:
  ///   The order to return the search results
  ///
  /// * [int] i:
  ///   the start of the index
  ///
  /// * [int] start:
  ///   The start of the pagination
  ///
  /// * [int] l:
  ///   The limit of the index
  ///
  /// * [int] limit:
  ///   The limit of the pagination
  ///
  /// * [String] applicationIds:
  ///   The list of application ids, comma separated. If provided will ignore all other params.
  ///
  /// * [bool] hasObjectStore:
  ///   Only include applications with a object store (default is false)
  ///
  /// * [bool] activeOnly:
  ///   Return only active results
  Future<List<ApplicationShortResponse>?> listApplications({ int? accountId, String? q, String? keyword, String? platforms, String? deviceIds, String? deviceVersions, String? categoryIds, String? sortField, bool? hasAds, bool? publicNotifications, bool? filterBillable, bool? filterContentAdmin, bool? descending, int? i, int? start, int? l, int? limit, String? applicationIds, bool? hasObjectStore, bool? activeOnly, }) async {
    final response = await listApplicationsWithHttpInfo( accountId: accountId, q: q, keyword: keyword, platforms: platforms, deviceIds: deviceIds, deviceVersions: deviceVersions, categoryIds: categoryIds, sortField: sortField, hasAds: hasAds, publicNotifications: publicNotifications, filterBillable: filterBillable, filterContentAdmin: filterContentAdmin, descending: descending, i: i, start: start, l: l, limit: limit, applicationIds: applicationIds, hasObjectStore: hasObjectStore, activeOnly: activeOnly, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<ApplicationShortResponse>') as List)
        .cast<ApplicationShortResponse>()
        .toList(growable: false);

    }
    return null;
  }

  /// Search for Ad Placements
  ///
  /// Searches placements for an application.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] appKey (required):
  ///   The key of the application
  ///
  /// * [String] deviceId:
  ///   The unique id of the device making the request (deviceId or accountId required)
  ///
  /// * [int] accountId:
  ///   The account id of the user (deviceId or accountId required)
  ///
  /// * [int] start:
  ///   The start of the pagination
  ///
  /// * [int] limit:
  ///   The limit of the pagination
  Future<Response> searchApplicationPlacementWithHttpInfo(String appKey, { String? deviceId, int? accountId, int? start, int? limit, }) async {
    // ignore: prefer_const_declarations
    final path = r'/application/placement/search';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (deviceId != null) {
      queryParams.addAll(_queryParams('', 'deviceId', deviceId));
    }
    if (accountId != null) {
      queryParams.addAll(_queryParams('', 'accountId', accountId));
    }
      queryParams.addAll(_queryParams('', 'appKey', appKey));
    if (start != null) {
      queryParams.addAll(_queryParams('', 'start', start));
    }
    if (limit != null) {
      queryParams.addAll(_queryParams('', 'limit', limit));
    }

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Search for Ad Placements
  ///
  /// Searches placements for an application.
  ///
  /// Parameters:
  ///
  /// * [String] appKey (required):
  ///   The key of the application
  ///
  /// * [String] deviceId:
  ///   The unique id of the device making the request (deviceId or accountId required)
  ///
  /// * [int] accountId:
  ///   The account id of the user (deviceId or accountId required)
  ///
  /// * [int] start:
  ///   The start of the pagination
  ///
  /// * [int] limit:
  ///   The limit of the pagination
  Future<List<PlacementResponse>?> searchApplicationPlacement(String appKey, { String? deviceId, int? accountId, int? start, int? limit, }) async {
    final response = await searchApplicationPlacementWithHttpInfo(appKey,  deviceId: deviceId, accountId: accountId, start: start, limit: limit, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<PlacementResponse>') as List)
        .cast<PlacementResponse>()
        .toList(growable: false);

    }
    return null;
  }

  /// Search for Application Settings
  ///
  /// Returns a list of applications that the user has logged into before, and returns specific settings for that application and user
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] deviceId:
  ///   The device id (deviceId or accountId required)
  ///
  /// * [int] accountId:
  ///   The account id of the user (deviceId or accountId required)
  ///
  /// * [int] connectionAccountId:
  ///   The account id used to view another person's account
  ///
  /// * [String] keyword:
  ///   The string to search applications on
  ///
  /// * [String] sortField:
  ///   The column to sort the search on. Possible values include: CREATED, UPDATED, APPLICATION_TITLE
  ///
  /// * [bool] descending:
  ///   The order to return the search results
  ///
  /// * [int] start:
  ///   The start index for pagination
  ///
  /// * [int] limit:
  ///   The limit per result set for pagination
  Future<Response> searchApplicationSettingsWithHttpInfo({ String? deviceId, int? accountId, int? connectionAccountId, String? keyword, String? sortField, bool? descending, int? start, int? limit, }) async {
    // ignore: prefer_const_declarations
    final path = r'/application/settings/search';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (deviceId != null) {
      queryParams.addAll(_queryParams('', 'deviceId', deviceId));
    }
    if (accountId != null) {
      queryParams.addAll(_queryParams('', 'accountId', accountId));
    }
    if (connectionAccountId != null) {
      queryParams.addAll(_queryParams('', 'connectionAccountId', connectionAccountId));
    }
    if (keyword != null) {
      queryParams.addAll(_queryParams('', 'keyword', keyword));
    }
    if (sortField != null) {
      queryParams.addAll(_queryParams('', 'sortField', sortField));
    }
    if (descending != null) {
      queryParams.addAll(_queryParams('', 'descending', descending));
    }
    if (start != null) {
      queryParams.addAll(_queryParams('', 'start', start));
    }
    if (limit != null) {
      queryParams.addAll(_queryParams('', 'limit', limit));
    }

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Search for Application Settings
  ///
  /// Returns a list of applications that the user has logged into before, and returns specific settings for that application and user
  ///
  /// Parameters:
  ///
  /// * [String] deviceId:
  ///   The device id (deviceId or accountId required)
  ///
  /// * [int] accountId:
  ///   The account id of the user (deviceId or accountId required)
  ///
  /// * [int] connectionAccountId:
  ///   The account id used to view another person's account
  ///
  /// * [String] keyword:
  ///   The string to search applications on
  ///
  /// * [String] sortField:
  ///   The column to sort the search on. Possible values include: CREATED, UPDATED, APPLICATION_TITLE
  ///
  /// * [bool] descending:
  ///   The order to return the search results
  ///
  /// * [int] start:
  ///   The start index for pagination
  ///
  /// * [int] limit:
  ///   The limit per result set for pagination
  Future<ApplicationSettingsResponse?> searchApplicationSettings({ String? deviceId, int? accountId, int? connectionAccountId, String? keyword, String? sortField, bool? descending, int? start, int? limit, }) async {
    final response = await searchApplicationSettingsWithHttpInfo( deviceId: deviceId, accountId: accountId, connectionAccountId: connectionAccountId, keyword: keyword, sortField: sortField, descending: descending, start: start, limit: limit, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ApplicationSettingsResponse',) as ApplicationSettingsResponse;
    
    }
    return null;
  }

  /// Search Applications
  ///
  /// Search for applications matching the criteria that the logged in user has access to
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] deviceId:
  ///   The unique id of the device making the request (deviceId or accountId required)
  ///
  /// * [int] accountId:
  ///   The account id of the user (deviceId or accountId required)
  ///
  /// * [double] latitude:
  ///   The location of the device
  ///
  /// * [double] longitude:
  ///   The location of the device
  ///
  /// * [String] q:
  ///   Q
  ///
  /// * [String] keyword:
  ///   The keyword used to search
  ///
  /// * [String] qSearchFields:
  ///   The columns to applied the keyword search to
  ///
  /// * [String] sortField:
  ///   The column to sort the search on
  ///
  /// * [bool] descending:
  ///   The order to return the search results
  ///
  /// * [int] i:
  ///   the start of the index
  ///
  /// * [int] start:
  ///   The start of the pagination
  ///
  /// * [int] l:
  ///   the limit of the index
  ///
  /// * [int] limit:
  ///   The limit of the pagination
  ///
  /// * [bool] hasAds:
  ///   Filter results on whether the application supports ads or not. Ignore this parameter to return all results.
  ///
  /// * [bool] publicNotifications:
  ///   Filter results on whether the application is available for public trigger notifications
  ///
  /// * [bool] activeOnly:
  ///   Return only active results
  Future<Response> searchApplicationsWithHttpInfo({ String? deviceId, int? accountId, double? latitude, double? longitude, String? q, String? keyword, String? qSearchFields, String? sortField, bool? descending, int? i, int? start, int? l, int? limit, bool? hasAds, bool? publicNotifications, bool? activeOnly, }) async {
    // ignore: prefer_const_declarations
    final path = r'/application/search';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (deviceId != null) {
      queryParams.addAll(_queryParams('', 'deviceId', deviceId));
    }
    if (accountId != null) {
      queryParams.addAll(_queryParams('', 'accountId', accountId));
    }
    if (latitude != null) {
      queryParams.addAll(_queryParams('', 'latitude', latitude));
    }
    if (longitude != null) {
      queryParams.addAll(_queryParams('', 'longitude', longitude));
    }
    if (q != null) {
      queryParams.addAll(_queryParams('', 'q', q));
    }
    if (keyword != null) {
      queryParams.addAll(_queryParams('', 'keyword', keyword));
    }
    if (qSearchFields != null) {
      queryParams.addAll(_queryParams('', 'qSearchFields', qSearchFields));
    }
    if (sortField != null) {
      queryParams.addAll(_queryParams('', 'sortField', sortField));
    }
    if (descending != null) {
      queryParams.addAll(_queryParams('', 'descending', descending));
    }
    if (i != null) {
      queryParams.addAll(_queryParams('', '_i', i));
    }
    if (start != null) {
      queryParams.addAll(_queryParams('', 'start', start));
    }
    if (l != null) {
      queryParams.addAll(_queryParams('', '_l', l));
    }
    if (limit != null) {
      queryParams.addAll(_queryParams('', 'limit', limit));
    }
    if (hasAds != null) {
      queryParams.addAll(_queryParams('', 'hasAds', hasAds));
    }
    if (publicNotifications != null) {
      queryParams.addAll(_queryParams('', 'publicNotifications', publicNotifications));
    }
    if (activeOnly != null) {
      queryParams.addAll(_queryParams('', 'activeOnly', activeOnly));
    }

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Search Applications
  ///
  /// Search for applications matching the criteria that the logged in user has access to
  ///
  /// Parameters:
  ///
  /// * [String] deviceId:
  ///   The unique id of the device making the request (deviceId or accountId required)
  ///
  /// * [int] accountId:
  ///   The account id of the user (deviceId or accountId required)
  ///
  /// * [double] latitude:
  ///   The location of the device
  ///
  /// * [double] longitude:
  ///   The location of the device
  ///
  /// * [String] q:
  ///   Q
  ///
  /// * [String] keyword:
  ///   The keyword used to search
  ///
  /// * [String] qSearchFields:
  ///   The columns to applied the keyword search to
  ///
  /// * [String] sortField:
  ///   The column to sort the search on
  ///
  /// * [bool] descending:
  ///   The order to return the search results
  ///
  /// * [int] i:
  ///   the start of the index
  ///
  /// * [int] start:
  ///   The start of the pagination
  ///
  /// * [int] l:
  ///   the limit of the index
  ///
  /// * [int] limit:
  ///   The limit of the pagination
  ///
  /// * [bool] hasAds:
  ///   Filter results on whether the application supports ads or not. Ignore this parameter to return all results.
  ///
  /// * [bool] publicNotifications:
  ///   Filter results on whether the application is available for public trigger notifications
  ///
  /// * [bool] activeOnly:
  ///   Return only active results
  Future<List<ApplicationResponse>?> searchApplications({ String? deviceId, int? accountId, double? latitude, double? longitude, String? q, String? keyword, String? qSearchFields, String? sortField, bool? descending, int? i, int? start, int? l, int? limit, bool? hasAds, bool? publicNotifications, bool? activeOnly, }) async {
    final response = await searchApplicationsWithHttpInfo( deviceId: deviceId, accountId: accountId, latitude: latitude, longitude: longitude, q: q, keyword: keyword, qSearchFields: qSearchFields, sortField: sortField, descending: descending, i: i, start: start, l: l, limit: limit, hasAds: hasAds, publicNotifications: publicNotifications, activeOnly: activeOnly, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<ApplicationResponse>') as List)
        .cast<ApplicationResponse>()
        .toList(growable: false);

    }
    return null;
  }

  /// Update Application
  ///
  /// Update an application record
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] appKey (required):
  ///   The application key for updating an existing application
  ///
  /// * [String] appName (required):
  ///   The name of the application
  ///
  /// * [String] deviceId:
  ///   The unique id of the device making the request (deviceId or accountId required)
  ///
  /// * [int] accountId:
  ///   The account id of the user (deviceId or accountId required)
  ///
  /// * [String] about:
  ///   The description of the application
  ///
  /// * [String] bundleId:
  ///   The application bundle identifier (format - com.company.appName)
  ///
  /// * [int] appIconAssetId:
  ///   The application icon asset id
  ///
  /// * [int] appLogoAssetId:
  ///   The application logo asset id
  ///
  /// * [String] facebookAppId:
  ///   The Facebook application id
  ///
  /// * [String] facebookAppSecret:
  ///   The Facebook application secret
  ///
  /// * [String] googleApiKey:
  ///   This is the either the 'server key' or 'browser key' generated from google to enable Google Cloud Messaging
  ///
  /// * [bool] updateEULADate:
  ///   Determines whether to update the EULA date
  ///
  /// * [String] eulaVersion:
  ///   The EULA version
  ///
  /// * [String] landingPageUrl:
  ///   The landing page URL
  ///
  /// * [bool] showInActivities:
  ///   Determines whether to show the application in the activity feed
  ///
  /// * [String] activityDescription:
  ///   The description of the application in the activity feed
  ///
  /// * [String] inviteWelcomeText:
  ///   The text to display on the invite page
  ///
  /// * [String] invitePageUrl:
  ///   The url to the application invite page
  ///
  /// * [String] urlScheme:
  ///   The protocal the app uses to load the app via a browser
  ///
  /// * [String] platforms:
  ///   A json object with a list of supported platforms.  ```json {   \"platforms\": [     {       \"deviceId\": 1,       \"minimum\": 230,       \"maximum\": 421,       \"downloadUrl\": \"http://app.store.com/download\",       \"description\": \"description and version info\"     }   ] } ``` 
  ///
  /// * [String] downloadUrls:
  ///   Json formatted downloadUrls.  ```json {   \"ios\": \"the-url-to-app-store\",    \"android\": \"the-url-to-google-play\" } ```  
  ///
  /// * [String] categoryIds:
  ///   List of categories to apply
  ///
  /// * [String] scoringType:
  ///   The type of scoring this application will use {GAME_LEVEL, GAME_OBJECT
  ///
  /// * [int] hintCost:
  ///   The cost of hints
  ///
  /// * [int] maxScore:
  ///   The maximum score that will be possible
  ///
  /// * [double] ticketsPerPoint:
  ///   The point-to-ticket conversion ratio
  ///
  /// * [bool] hasGameData:
  ///   Determines whether the application uses services to save custom game objects
  ///
  /// * [bool] publicNotifications:
  ///   Public Notifications
  ///
  /// * [bool] useMatchingAlgorithm:
  ///   Use Matching Algorithm
  ///
  /// * [bool] globalTickets:
  ///   Determines whether earned tickets are applied across all applications
  ///
  /// * [double] buildVersion:
  ///   The current build version of the application
  ///
  /// * [double] apiVersion:
  ///   The current API version the application uses
  ///
  /// * [String] placementName:
  ///   The name of the placement
  ///
  /// * [String] placementDescription:
  ///   The description of the placement
  ///
  /// * [String] placementSize:
  ///   The ad placement size {BANNER, LEADERBOARD, SKYSCRAPER, INTERSTITIAL, CUSTOM (this is required if a placements is to be created)
  ///
  /// * [int] placementHeight:
  ///   The height of a custom ad size
  ///
  /// * [int] placementWidth:
  ///   The width of a custom ad size
  ///
  /// * [int] placementRefreshInterval:
  ///   The refresh interval in seconds
  ///
  /// * [bool] createObjectStore:
  ///   Generate a custom object store to use
  ///
  /// * [bool] publicContentApproval:
  ///   Determine whether or not public content requires admin approval before it becomes public
  ///
  /// * [bool] productionMode:
  ///   Determines whether the application uses production or sandbox services
  ///
  /// * [int] minimumSessionLength:
  ///   Minimum Session Length
  ///
  /// * [int] sessionGapLength:
  ///   Session Gap Length
  ///
  /// * [bool] localAdsEnabled:
  ///   Local Ads Enabled
  ///
  /// * [String] sqootApiKey:
  ///   Sqoot Api Key
  ///
  /// * [String] trilatProcessingType:
  ///   Determines how to process trilateration data. Possible values include: DEFAULT, FINGERPRINT
  ///
  /// * [int] maxSampleSize:
  ///   Determines what the maximum sample size during trilateration
  ///
  /// * [double] minRSSI:
  ///   Determines what the minimum acceptable RSSI value
  ///
  /// * [String] modules:
  ///   List modules allowed to be served by the server, possible values include: COMMON, MEDIA, OFFER, GAME, SOCIAL, CONSUMER_WEBSITE, ALL
  ///
  /// * [int] authorizedCount:
  ///   How many servers the license will support
  ///
  /// * [String] authorizedServers:
  ///   The list of ip addresses of servers the license will support, leave null for any server
  ///
  /// * [String] defaultTimezone:
  ///   Sets the default timezone for the app (used for leaderboards and other time specific content)
  ///
  /// * [String] smtpPass:
  ///   SMTP Pass
  ///
  /// * [String] metaData:
  ///   The application meta data. Defined by the client
  ///
  /// * [String] placementMetaData:
  ///   The ad placement meta data. Defined by the client
  ///
  /// * [bool] ipsFloor:
  ///   Create floor tables for Ips
  ///
  /// * [bool] enableAPNSBadge:
  ///   Enables setting the APNS badge value in the payload
  ///
  /// * [bool] includeInReport:
  ///   Enables using the application in session reports
  ///
  /// * [int] defaultAppFilterId:
  ///   Sets the default filter to use (if none is passed in) for certain search APIs including Album Search.
  ///
  /// * [bool] enableWelcomeEmail:
  ///   Enables whether the default welcome email will be sent for new app users
  ///
  /// * [String] appleAppId:
  ///   The Apple Application ID
  ///
  /// * [String] appleTeamId:
  ///   The Apple Team ID
  ///
  /// * [String] appleAuthKeyId:
  ///   The Apple Auth Key ID
  ///
  /// * [MultipartFile] appleAuthKey:
  ///   The Apple Auth Signin Key (p8) File
  ///
  /// * [String] appleIssuerId:
  ///   The Apple Issuer ID
  ///
  /// * [String] appStoreKeyId:
  ///   The Apple App Store Key ID
  ///
  /// * [MultipartFile] appStoreKey:
  ///   The Apple App Store Key (p8) File
  ///
  /// * [MultipartFile] googlePrivateKeyFile:
  ///   This is the private key file for your Google service account.
  ///
  /// * [String] authorizeNetApiKey:
  ///   Authorize Net Api Key
  ///
  /// * [String] authorizeNetTransactionKey:
  ///   Authorize Net Transaction Key
  ///
  /// * [String] emailSender:
  ///   Email Sender
  ///
  /// * [String] smtpUser:
  ///   SMTP User
  ///
  /// * [String] smtpHost:
  ///   SMTP Host
  ///
  /// * [String] vatomBusinessId:
  ///   Vatom Business Id
  ///
  /// * [String] vatomRestClientId:
  ///   Vatom REST Client Id
  ///
  /// * [String] vatomRestSecretKey:
  ///   Vatom Secret Key
  ///
  /// * [String] twilioAccountSID:
  ///   Twilio Account SID
  ///
  /// * [String] twilioAuthToken:
  ///   Twilio Auth Token
  ///
  /// * [String] twilioSenderPhoneNumber:
  ///   Twilio Sender Phone Number
  ///
  /// * [String] openAISecretKey:
  ///   OpenAI Secret API Key
  Future<Response> updateApplicationWithHttpInfo(String appKey, String appName, { String? deviceId, int? accountId, String? about, String? bundleId, int? appIconAssetId, int? appLogoAssetId, String? facebookAppId, String? facebookAppSecret, String? googleApiKey, bool? updateEULADate, String? eulaVersion, String? landingPageUrl, bool? showInActivities, String? activityDescription, String? inviteWelcomeText, String? invitePageUrl, String? urlScheme, String? platforms, String? downloadUrls, String? categoryIds, String? scoringType, int? hintCost, int? maxScore, double? ticketsPerPoint, bool? hasGameData, bool? publicNotifications, bool? useMatchingAlgorithm, bool? globalTickets, double? buildVersion, double? apiVersion, String? placementName, String? placementDescription, String? placementSize, int? placementHeight, int? placementWidth, int? placementRefreshInterval, bool? createObjectStore, bool? publicContentApproval, bool? productionMode, int? minimumSessionLength, int? sessionGapLength, bool? localAdsEnabled, String? sqootApiKey, String? trilatProcessingType, int? maxSampleSize, double? minRSSI, String? modules, int? authorizedCount, String? authorizedServers, String? defaultTimezone, String? smtpPass, String? metaData, String? placementMetaData, bool? ipsFloor, bool? enableAPNSBadge, bool? includeInReport, int? defaultAppFilterId, bool? enableWelcomeEmail, String? appleAppId, String? appleTeamId, String? appleAuthKeyId, MultipartFile? appleAuthKey, String? appleIssuerId, String? appStoreKeyId, MultipartFile? appStoreKey, MultipartFile? googlePrivateKeyFile, String? authorizeNetApiKey, String? authorizeNetTransactionKey, String? emailSender, String? smtpUser, String? smtpHost, String? vatomBusinessId, String? vatomRestClientId, String? vatomRestSecretKey, String? twilioAccountSID, String? twilioAuthToken, String? twilioSenderPhoneNumber, String? openAISecretKey, }) async {
    // ignore: prefer_const_declarations
    final path = r'/application/update';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (deviceId != null) {
      queryParams.addAll(_queryParams('', 'deviceId', deviceId));
    }
    if (accountId != null) {
      queryParams.addAll(_queryParams('', 'accountId', accountId));
    }
      queryParams.addAll(_queryParams('', 'appKey', appKey));
      queryParams.addAll(_queryParams('', 'appName', appName));
    if (about != null) {
      queryParams.addAll(_queryParams('', 'about', about));
    }
    if (bundleId != null) {
      queryParams.addAll(_queryParams('', 'bundleId', bundleId));
    }
    if (appIconAssetId != null) {
      queryParams.addAll(_queryParams('', 'appIconAssetId', appIconAssetId));
    }
    if (appLogoAssetId != null) {
      queryParams.addAll(_queryParams('', 'appLogoAssetId', appLogoAssetId));
    }
    if (facebookAppId != null) {
      queryParams.addAll(_queryParams('', 'facebookAppId', facebookAppId));
    }
    if (facebookAppSecret != null) {
      queryParams.addAll(_queryParams('', 'facebookAppSecret', facebookAppSecret));
    }
    if (googleApiKey != null) {
      queryParams.addAll(_queryParams('', 'googleApiKey', googleApiKey));
    }
    if (updateEULADate != null) {
      queryParams.addAll(_queryParams('', 'updateEULADate', updateEULADate));
    }
    if (eulaVersion != null) {
      queryParams.addAll(_queryParams('', 'eulaVersion', eulaVersion));
    }
    if (landingPageUrl != null) {
      queryParams.addAll(_queryParams('', 'landingPageUrl', landingPageUrl));
    }
    if (showInActivities != null) {
      queryParams.addAll(_queryParams('', 'showInActivities', showInActivities));
    }
    if (activityDescription != null) {
      queryParams.addAll(_queryParams('', 'activityDescription', activityDescription));
    }
    if (inviteWelcomeText != null) {
      queryParams.addAll(_queryParams('', 'inviteWelcomeText', inviteWelcomeText));
    }
    if (invitePageUrl != null) {
      queryParams.addAll(_queryParams('', 'invitePageUrl', invitePageUrl));
    }
    if (urlScheme != null) {
      queryParams.addAll(_queryParams('', 'urlScheme', urlScheme));
    }
    if (platforms != null) {
      queryParams.addAll(_queryParams('', 'platforms', platforms));
    }
    if (downloadUrls != null) {
      queryParams.addAll(_queryParams('', 'downloadUrls', downloadUrls));
    }
    if (categoryIds != null) {
      queryParams.addAll(_queryParams('', 'categoryIds', categoryIds));
    }
    if (scoringType != null) {
      queryParams.addAll(_queryParams('', 'scoringType', scoringType));
    }
    if (hintCost != null) {
      queryParams.addAll(_queryParams('', 'hintCost', hintCost));
    }
    if (maxScore != null) {
      queryParams.addAll(_queryParams('', 'maxScore', maxScore));
    }
    if (ticketsPerPoint != null) {
      queryParams.addAll(_queryParams('', 'ticketsPerPoint', ticketsPerPoint));
    }
    if (hasGameData != null) {
      queryParams.addAll(_queryParams('', 'hasGameData', hasGameData));
    }
    if (publicNotifications != null) {
      queryParams.addAll(_queryParams('', 'publicNotifications', publicNotifications));
    }
    if (useMatchingAlgorithm != null) {
      queryParams.addAll(_queryParams('', 'useMatchingAlgorithm', useMatchingAlgorithm));
    }
    if (globalTickets != null) {
      queryParams.addAll(_queryParams('', 'globalTickets', globalTickets));
    }
    if (buildVersion != null) {
      queryParams.addAll(_queryParams('', 'buildVersion', buildVersion));
    }
    if (apiVersion != null) {
      queryParams.addAll(_queryParams('', 'apiVersion', apiVersion));
    }
    if (placementName != null) {
      queryParams.addAll(_queryParams('', 'placementName', placementName));
    }
    if (placementDescription != null) {
      queryParams.addAll(_queryParams('', 'placementDescription', placementDescription));
    }
    if (placementSize != null) {
      queryParams.addAll(_queryParams('', 'placementSize', placementSize));
    }
    if (placementHeight != null) {
      queryParams.addAll(_queryParams('', 'placementHeight', placementHeight));
    }
    if (placementWidth != null) {
      queryParams.addAll(_queryParams('', 'placementWidth', placementWidth));
    }
    if (placementRefreshInterval != null) {
      queryParams.addAll(_queryParams('', 'placementRefreshInterval', placementRefreshInterval));
    }
    if (createObjectStore != null) {
      queryParams.addAll(_queryParams('', 'createObjectStore', createObjectStore));
    }
    if (publicContentApproval != null) {
      queryParams.addAll(_queryParams('', 'publicContentApproval', publicContentApproval));
    }
    if (productionMode != null) {
      queryParams.addAll(_queryParams('', 'productionMode', productionMode));
    }
    if (minimumSessionLength != null) {
      queryParams.addAll(_queryParams('', 'minimumSessionLength', minimumSessionLength));
    }
    if (sessionGapLength != null) {
      queryParams.addAll(_queryParams('', 'sessionGapLength', sessionGapLength));
    }
    if (localAdsEnabled != null) {
      queryParams.addAll(_queryParams('', 'localAdsEnabled', localAdsEnabled));
    }
    if (sqootApiKey != null) {
      queryParams.addAll(_queryParams('', 'sqootApiKey', sqootApiKey));
    }
    if (trilatProcessingType != null) {
      queryParams.addAll(_queryParams('', 'trilatProcessingType', trilatProcessingType));
    }
    if (maxSampleSize != null) {
      queryParams.addAll(_queryParams('', 'maxSampleSize', maxSampleSize));
    }
    if (minRSSI != null) {
      queryParams.addAll(_queryParams('', 'minRSSI', minRSSI));
    }
    if (modules != null) {
      queryParams.addAll(_queryParams('', 'modules', modules));
    }
    if (authorizedCount != null) {
      queryParams.addAll(_queryParams('', 'authorizedCount', authorizedCount));
    }
    if (authorizedServers != null) {
      queryParams.addAll(_queryParams('', 'authorizedServers', authorizedServers));
    }
    if (defaultTimezone != null) {
      queryParams.addAll(_queryParams('', 'defaultTimezone', defaultTimezone));
    }
    if (smtpPass != null) {
      queryParams.addAll(_queryParams('', 'smtpPass', smtpPass));
    }
    if (metaData != null) {
      queryParams.addAll(_queryParams('', 'metaData', metaData));
    }
    if (placementMetaData != null) {
      queryParams.addAll(_queryParams('', 'placementMetaData', placementMetaData));
    }
    if (ipsFloor != null) {
      queryParams.addAll(_queryParams('', 'ipsFloor', ipsFloor));
    }
    if (enableAPNSBadge != null) {
      queryParams.addAll(_queryParams('', 'enableAPNSBadge', enableAPNSBadge));
    }
    if (includeInReport != null) {
      queryParams.addAll(_queryParams('', 'includeInReport', includeInReport));
    }
    if (defaultAppFilterId != null) {
      queryParams.addAll(_queryParams('', 'defaultAppFilterId', defaultAppFilterId));
    }
    if (enableWelcomeEmail != null) {
      queryParams.addAll(_queryParams('', 'enableWelcomeEmail', enableWelcomeEmail));
    }
    if (appleAppId != null) {
      queryParams.addAll(_queryParams('', 'appleAppId', appleAppId));
    }
    if (appleTeamId != null) {
      queryParams.addAll(_queryParams('', 'appleTeamId', appleTeamId));
    }
    if (appleAuthKeyId != null) {
      queryParams.addAll(_queryParams('', 'appleAuthKeyId', appleAuthKeyId));
    }
    if (appleAuthKey != null) {
      queryParams.addAll(_queryParams('', 'appleAuthKey', appleAuthKey));
    }
    if (appleIssuerId != null) {
      queryParams.addAll(_queryParams('', 'appleIssuerId', appleIssuerId));
    }
    if (appStoreKeyId != null) {
      queryParams.addAll(_queryParams('', 'appStoreKeyId', appStoreKeyId));
    }
    if (appStoreKey != null) {
      queryParams.addAll(_queryParams('', 'appStoreKey', appStoreKey));
    }
    if (googlePrivateKeyFile != null) {
      queryParams.addAll(_queryParams('', 'googlePrivateKeyFile', googlePrivateKeyFile));
    }
    if (authorizeNetApiKey != null) {
      queryParams.addAll(_queryParams('', 'authorizeNetApiKey', authorizeNetApiKey));
    }
    if (authorizeNetTransactionKey != null) {
      queryParams.addAll(_queryParams('', 'authorizeNetTransactionKey', authorizeNetTransactionKey));
    }
    if (emailSender != null) {
      queryParams.addAll(_queryParams('', 'emailSender', emailSender));
    }
    if (smtpUser != null) {
      queryParams.addAll(_queryParams('', 'smtpUser', smtpUser));
    }
    if (smtpHost != null) {
      queryParams.addAll(_queryParams('', 'smtpHost', smtpHost));
    }
    if (vatomBusinessId != null) {
      queryParams.addAll(_queryParams('', 'vatomBusinessId', vatomBusinessId));
    }
    if (vatomRestClientId != null) {
      queryParams.addAll(_queryParams('', 'vatomRestClientId', vatomRestClientId));
    }
    if (vatomRestSecretKey != null) {
      queryParams.addAll(_queryParams('', 'vatomRestSecretKey', vatomRestSecretKey));
    }
    if (twilioAccountSID != null) {
      queryParams.addAll(_queryParams('', 'twilioAccountSID', twilioAccountSID));
    }
    if (twilioAuthToken != null) {
      queryParams.addAll(_queryParams('', 'twilioAuthToken', twilioAuthToken));
    }
    if (twilioSenderPhoneNumber != null) {
      queryParams.addAll(_queryParams('', 'twilioSenderPhoneNumber', twilioSenderPhoneNumber));
    }
    if (openAISecretKey != null) {
      queryParams.addAll(_queryParams('', 'openAISecretKey', openAISecretKey));
    }

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Update Application
  ///
  /// Update an application record
  ///
  /// Parameters:
  ///
  /// * [String] appKey (required):
  ///   The application key for updating an existing application
  ///
  /// * [String] appName (required):
  ///   The name of the application
  ///
  /// * [String] deviceId:
  ///   The unique id of the device making the request (deviceId or accountId required)
  ///
  /// * [int] accountId:
  ///   The account id of the user (deviceId or accountId required)
  ///
  /// * [String] about:
  ///   The description of the application
  ///
  /// * [String] bundleId:
  ///   The application bundle identifier (format - com.company.appName)
  ///
  /// * [int] appIconAssetId:
  ///   The application icon asset id
  ///
  /// * [int] appLogoAssetId:
  ///   The application logo asset id
  ///
  /// * [String] facebookAppId:
  ///   The Facebook application id
  ///
  /// * [String] facebookAppSecret:
  ///   The Facebook application secret
  ///
  /// * [String] googleApiKey:
  ///   This is the either the 'server key' or 'browser key' generated from google to enable Google Cloud Messaging
  ///
  /// * [bool] updateEULADate:
  ///   Determines whether to update the EULA date
  ///
  /// * [String] eulaVersion:
  ///   The EULA version
  ///
  /// * [String] landingPageUrl:
  ///   The landing page URL
  ///
  /// * [bool] showInActivities:
  ///   Determines whether to show the application in the activity feed
  ///
  /// * [String] activityDescription:
  ///   The description of the application in the activity feed
  ///
  /// * [String] inviteWelcomeText:
  ///   The text to display on the invite page
  ///
  /// * [String] invitePageUrl:
  ///   The url to the application invite page
  ///
  /// * [String] urlScheme:
  ///   The protocal the app uses to load the app via a browser
  ///
  /// * [String] platforms:
  ///   A json object with a list of supported platforms.  ```json {   \"platforms\": [     {       \"deviceId\": 1,       \"minimum\": 230,       \"maximum\": 421,       \"downloadUrl\": \"http://app.store.com/download\",       \"description\": \"description and version info\"     }   ] } ``` 
  ///
  /// * [String] downloadUrls:
  ///   Json formatted downloadUrls.  ```json {   \"ios\": \"the-url-to-app-store\",    \"android\": \"the-url-to-google-play\" } ```  
  ///
  /// * [String] categoryIds:
  ///   List of categories to apply
  ///
  /// * [String] scoringType:
  ///   The type of scoring this application will use {GAME_LEVEL, GAME_OBJECT
  ///
  /// * [int] hintCost:
  ///   The cost of hints
  ///
  /// * [int] maxScore:
  ///   The maximum score that will be possible
  ///
  /// * [double] ticketsPerPoint:
  ///   The point-to-ticket conversion ratio
  ///
  /// * [bool] hasGameData:
  ///   Determines whether the application uses services to save custom game objects
  ///
  /// * [bool] publicNotifications:
  ///   Public Notifications
  ///
  /// * [bool] useMatchingAlgorithm:
  ///   Use Matching Algorithm
  ///
  /// * [bool] globalTickets:
  ///   Determines whether earned tickets are applied across all applications
  ///
  /// * [double] buildVersion:
  ///   The current build version of the application
  ///
  /// * [double] apiVersion:
  ///   The current API version the application uses
  ///
  /// * [String] placementName:
  ///   The name of the placement
  ///
  /// * [String] placementDescription:
  ///   The description of the placement
  ///
  /// * [String] placementSize:
  ///   The ad placement size {BANNER, LEADERBOARD, SKYSCRAPER, INTERSTITIAL, CUSTOM (this is required if a placements is to be created)
  ///
  /// * [int] placementHeight:
  ///   The height of a custom ad size
  ///
  /// * [int] placementWidth:
  ///   The width of a custom ad size
  ///
  /// * [int] placementRefreshInterval:
  ///   The refresh interval in seconds
  ///
  /// * [bool] createObjectStore:
  ///   Generate a custom object store to use
  ///
  /// * [bool] publicContentApproval:
  ///   Determine whether or not public content requires admin approval before it becomes public
  ///
  /// * [bool] productionMode:
  ///   Determines whether the application uses production or sandbox services
  ///
  /// * [int] minimumSessionLength:
  ///   Minimum Session Length
  ///
  /// * [int] sessionGapLength:
  ///   Session Gap Length
  ///
  /// * [bool] localAdsEnabled:
  ///   Local Ads Enabled
  ///
  /// * [String] sqootApiKey:
  ///   Sqoot Api Key
  ///
  /// * [String] trilatProcessingType:
  ///   Determines how to process trilateration data. Possible values include: DEFAULT, FINGERPRINT
  ///
  /// * [int] maxSampleSize:
  ///   Determines what the maximum sample size during trilateration
  ///
  /// * [double] minRSSI:
  ///   Determines what the minimum acceptable RSSI value
  ///
  /// * [String] modules:
  ///   List modules allowed to be served by the server, possible values include: COMMON, MEDIA, OFFER, GAME, SOCIAL, CONSUMER_WEBSITE, ALL
  ///
  /// * [int] authorizedCount:
  ///   How many servers the license will support
  ///
  /// * [String] authorizedServers:
  ///   The list of ip addresses of servers the license will support, leave null for any server
  ///
  /// * [String] defaultTimezone:
  ///   Sets the default timezone for the app (used for leaderboards and other time specific content)
  ///
  /// * [String] smtpPass:
  ///   SMTP Pass
  ///
  /// * [String] metaData:
  ///   The application meta data. Defined by the client
  ///
  /// * [String] placementMetaData:
  ///   The ad placement meta data. Defined by the client
  ///
  /// * [bool] ipsFloor:
  ///   Create floor tables for Ips
  ///
  /// * [bool] enableAPNSBadge:
  ///   Enables setting the APNS badge value in the payload
  ///
  /// * [bool] includeInReport:
  ///   Enables using the application in session reports
  ///
  /// * [int] defaultAppFilterId:
  ///   Sets the default filter to use (if none is passed in) for certain search APIs including Album Search.
  ///
  /// * [bool] enableWelcomeEmail:
  ///   Enables whether the default welcome email will be sent for new app users
  ///
  /// * [String] appleAppId:
  ///   The Apple Application ID
  ///
  /// * [String] appleTeamId:
  ///   The Apple Team ID
  ///
  /// * [String] appleAuthKeyId:
  ///   The Apple Auth Key ID
  ///
  /// * [MultipartFile] appleAuthKey:
  ///   The Apple Auth Signin Key (p8) File
  ///
  /// * [String] appleIssuerId:
  ///   The Apple Issuer ID
  ///
  /// * [String] appStoreKeyId:
  ///   The Apple App Store Key ID
  ///
  /// * [MultipartFile] appStoreKey:
  ///   The Apple App Store Key (p8) File
  ///
  /// * [MultipartFile] googlePrivateKeyFile:
  ///   This is the private key file for your Google service account.
  ///
  /// * [String] authorizeNetApiKey:
  ///   Authorize Net Api Key
  ///
  /// * [String] authorizeNetTransactionKey:
  ///   Authorize Net Transaction Key
  ///
  /// * [String] emailSender:
  ///   Email Sender
  ///
  /// * [String] smtpUser:
  ///   SMTP User
  ///
  /// * [String] smtpHost:
  ///   SMTP Host
  ///
  /// * [String] vatomBusinessId:
  ///   Vatom Business Id
  ///
  /// * [String] vatomRestClientId:
  ///   Vatom REST Client Id
  ///
  /// * [String] vatomRestSecretKey:
  ///   Vatom Secret Key
  ///
  /// * [String] twilioAccountSID:
  ///   Twilio Account SID
  ///
  /// * [String] twilioAuthToken:
  ///   Twilio Auth Token
  ///
  /// * [String] twilioSenderPhoneNumber:
  ///   Twilio Sender Phone Number
  ///
  /// * [String] openAISecretKey:
  ///   OpenAI Secret API Key
  Future<ApplicationResponse?> updateApplication(String appKey, String appName, { String? deviceId, int? accountId, String? about, String? bundleId, int? appIconAssetId, int? appLogoAssetId, String? facebookAppId, String? facebookAppSecret, String? googleApiKey, bool? updateEULADate, String? eulaVersion, String? landingPageUrl, bool? showInActivities, String? activityDescription, String? inviteWelcomeText, String? invitePageUrl, String? urlScheme, String? platforms, String? downloadUrls, String? categoryIds, String? scoringType, int? hintCost, int? maxScore, double? ticketsPerPoint, bool? hasGameData, bool? publicNotifications, bool? useMatchingAlgorithm, bool? globalTickets, double? buildVersion, double? apiVersion, String? placementName, String? placementDescription, String? placementSize, int? placementHeight, int? placementWidth, int? placementRefreshInterval, bool? createObjectStore, bool? publicContentApproval, bool? productionMode, int? minimumSessionLength, int? sessionGapLength, bool? localAdsEnabled, String? sqootApiKey, String? trilatProcessingType, int? maxSampleSize, double? minRSSI, String? modules, int? authorizedCount, String? authorizedServers, String? defaultTimezone, String? smtpPass, String? metaData, String? placementMetaData, bool? ipsFloor, bool? enableAPNSBadge, bool? includeInReport, int? defaultAppFilterId, bool? enableWelcomeEmail, String? appleAppId, String? appleTeamId, String? appleAuthKeyId, MultipartFile? appleAuthKey, String? appleIssuerId, String? appStoreKeyId, MultipartFile? appStoreKey, MultipartFile? googlePrivateKeyFile, String? authorizeNetApiKey, String? authorizeNetTransactionKey, String? emailSender, String? smtpUser, String? smtpHost, String? vatomBusinessId, String? vatomRestClientId, String? vatomRestSecretKey, String? twilioAccountSID, String? twilioAuthToken, String? twilioSenderPhoneNumber, String? openAISecretKey, }) async {
    final response = await updateApplicationWithHttpInfo(appKey, appName,  deviceId: deviceId, accountId: accountId, about: about, bundleId: bundleId, appIconAssetId: appIconAssetId, appLogoAssetId: appLogoAssetId, facebookAppId: facebookAppId, facebookAppSecret: facebookAppSecret, googleApiKey: googleApiKey, updateEULADate: updateEULADate, eulaVersion: eulaVersion, landingPageUrl: landingPageUrl, showInActivities: showInActivities, activityDescription: activityDescription, inviteWelcomeText: inviteWelcomeText, invitePageUrl: invitePageUrl, urlScheme: urlScheme, platforms: platforms, downloadUrls: downloadUrls, categoryIds: categoryIds, scoringType: scoringType, hintCost: hintCost, maxScore: maxScore, ticketsPerPoint: ticketsPerPoint, hasGameData: hasGameData, publicNotifications: publicNotifications, useMatchingAlgorithm: useMatchingAlgorithm, globalTickets: globalTickets, buildVersion: buildVersion, apiVersion: apiVersion, placementName: placementName, placementDescription: placementDescription, placementSize: placementSize, placementHeight: placementHeight, placementWidth: placementWidth, placementRefreshInterval: placementRefreshInterval, createObjectStore: createObjectStore, publicContentApproval: publicContentApproval, productionMode: productionMode, minimumSessionLength: minimumSessionLength, sessionGapLength: sessionGapLength, localAdsEnabled: localAdsEnabled, sqootApiKey: sqootApiKey, trilatProcessingType: trilatProcessingType, maxSampleSize: maxSampleSize, minRSSI: minRSSI, modules: modules, authorizedCount: authorizedCount, authorizedServers: authorizedServers, defaultTimezone: defaultTimezone, smtpPass: smtpPass, metaData: metaData, placementMetaData: placementMetaData, ipsFloor: ipsFloor, enableAPNSBadge: enableAPNSBadge, includeInReport: includeInReport, defaultAppFilterId: defaultAppFilterId, enableWelcomeEmail: enableWelcomeEmail, appleAppId: appleAppId, appleTeamId: appleTeamId, appleAuthKeyId: appleAuthKeyId, appleAuthKey: appleAuthKey, appleIssuerId: appleIssuerId, appStoreKeyId: appStoreKeyId, appStoreKey: appStoreKey, googlePrivateKeyFile: googlePrivateKeyFile, authorizeNetApiKey: authorizeNetApiKey, authorizeNetTransactionKey: authorizeNetTransactionKey, emailSender: emailSender, smtpUser: smtpUser, smtpHost: smtpHost, vatomBusinessId: vatomBusinessId, vatomRestClientId: vatomRestClientId, vatomRestSecretKey: vatomRestSecretKey, twilioAccountSID: twilioAccountSID, twilioAuthToken: twilioAuthToken, twilioSenderPhoneNumber: twilioSenderPhoneNumber, openAISecretKey: openAISecretKey, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ApplicationResponse',) as ApplicationResponse;
    
    }
    return null;
  }

  /// Change Appliation Status
  ///
  /// Set the application's active flag to true/false. This effectively activates or deactivates the application.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] accountId (required):
  ///   The account used to perform the delete, must have rights to edit the application.
  ///
  /// * [String] appKey (required):
  ///   The key of the application to be deleted
  ///
  /// * [bool] active (required):
  ///   If true then set to active, false otherwise
  Future<Response> updateApplicationActiveWithHttpInfo(int accountId, String appKey, bool active,) async {
    // ignore: prefer_const_declarations
    final path = r'/application/active';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'accountId', accountId));
      queryParams.addAll(_queryParams('', 'appKey', appKey));
      queryParams.addAll(_queryParams('', 'active', active));

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Change Appliation Status
  ///
  /// Set the application's active flag to true/false. This effectively activates or deactivates the application.
  ///
  /// Parameters:
  ///
  /// * [int] accountId (required):
  ///   The account used to perform the delete, must have rights to edit the application.
  ///
  /// * [String] appKey (required):
  ///   The key of the application to be deleted
  ///
  /// * [bool] active (required):
  ///   If true then set to active, false otherwise
  Future<SirqulResponse?> updateApplicationActive(int accountId, String appKey, bool active,) async {
    final response = await updateApplicationActiveWithHttpInfo(accountId, appKey, active,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'SirqulResponse',) as SirqulResponse;
    
    }
    return null;
  }

  /// Update Ad Placement
  ///
  /// Updates an ad placement for an application.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] placementId (required):
  ///   The id of the placement to update, the user must have rights to the application the ad placement is for
  ///
  /// * [String] deviceId:
  ///   The unique id of the device making the request (deviceId or accountId required)
  ///
  /// * [int] accountId:
  ///   The account id of the user (deviceId or accountId required)
  ///
  /// * [String] name:
  ///   The name of the placement
  ///
  /// * [String] description:
  ///   The description of the placement
  ///
  /// * [String] size:
  ///   The ad placement size {BANNER, LEADERBOARD, SKYSCRAPER, INTERSTITIAL, CUSTOM
  ///
  /// * [int] height:
  ///   The height of a custom ad size
  ///
  /// * [int] width:
  ///   The width of a custom ad size
  ///
  /// * [int] refreshInterval:
  ///   The refresh interval in seconds
  ///
  /// * [int] defaultImageId:
  ///   Default Image Id
  ///
  /// * [bool] active:
  ///   Active
  Future<Response> updateApplicationPlacementWithHttpInfo(int placementId, { String? deviceId, int? accountId, String? name, String? description, String? size, int? height, int? width, int? refreshInterval, int? defaultImageId, bool? active, }) async {
    // ignore: prefer_const_declarations
    final path = r'/application/placement/update';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (deviceId != null) {
      queryParams.addAll(_queryParams('', 'deviceId', deviceId));
    }
    if (accountId != null) {
      queryParams.addAll(_queryParams('', 'accountId', accountId));
    }
      queryParams.addAll(_queryParams('', 'placementId', placementId));
    if (name != null) {
      queryParams.addAll(_queryParams('', 'name', name));
    }
    if (description != null) {
      queryParams.addAll(_queryParams('', 'description', description));
    }
    if (size != null) {
      queryParams.addAll(_queryParams('', 'size', size));
    }
    if (height != null) {
      queryParams.addAll(_queryParams('', 'height', height));
    }
    if (width != null) {
      queryParams.addAll(_queryParams('', 'width', width));
    }
    if (refreshInterval != null) {
      queryParams.addAll(_queryParams('', 'refreshInterval', refreshInterval));
    }
    if (defaultImageId != null) {
      queryParams.addAll(_queryParams('', 'defaultImageId', defaultImageId));
    }
    if (active != null) {
      queryParams.addAll(_queryParams('', 'active', active));
    }

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Update Ad Placement
  ///
  /// Updates an ad placement for an application.
  ///
  /// Parameters:
  ///
  /// * [int] placementId (required):
  ///   The id of the placement to update, the user must have rights to the application the ad placement is for
  ///
  /// * [String] deviceId:
  ///   The unique id of the device making the request (deviceId or accountId required)
  ///
  /// * [int] accountId:
  ///   The account id of the user (deviceId or accountId required)
  ///
  /// * [String] name:
  ///   The name of the placement
  ///
  /// * [String] description:
  ///   The description of the placement
  ///
  /// * [String] size:
  ///   The ad placement size {BANNER, LEADERBOARD, SKYSCRAPER, INTERSTITIAL, CUSTOM
  ///
  /// * [int] height:
  ///   The height of a custom ad size
  ///
  /// * [int] width:
  ///   The width of a custom ad size
  ///
  /// * [int] refreshInterval:
  ///   The refresh interval in seconds
  ///
  /// * [int] defaultImageId:
  ///   Default Image Id
  ///
  /// * [bool] active:
  ///   Active
  Future<PlacementResponse?> updateApplicationPlacement(int placementId, { String? deviceId, int? accountId, String? name, String? description, String? size, int? height, int? width, int? refreshInterval, int? defaultImageId, bool? active, }) async {
    final response = await updateApplicationPlacementWithHttpInfo(placementId,  deviceId: deviceId, accountId: accountId, name: name, description: description, size: size, height: height, width: width, refreshInterval: refreshInterval, defaultImageId: defaultImageId, active: active, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PlacementResponse',) as PlacementResponse;
    
    }
    return null;
  }

  /// Create Application Certificate
  ///
  /// Uploads a certificate for an application that the user has access to.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] appKey (required):
  ///   The key of the application
  ///
  /// * [String] deviceId:
  ///   Device Id
  ///
  /// * [int] accountId:
  ///   The account used to perform the delete, must have rights to edit the application.
  ///
  /// * [MultipartFile] certificate:
  ///   Certificate
  Future<Response> uploadApplicationCertificateWithHttpInfo(String appKey, { String? deviceId, int? accountId, MultipartFile? certificate, }) async {
    // ignore: prefer_const_declarations
    final path = r'/application/certificate/create';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (deviceId != null) {
      queryParams.addAll(_queryParams('', 'deviceId', deviceId));
    }
    if (accountId != null) {
      queryParams.addAll(_queryParams('', 'accountId', accountId));
    }
      queryParams.addAll(_queryParams('', 'appKey', appKey));
    if (certificate != null) {
      queryParams.addAll(_queryParams('', 'certificate', certificate));
    }

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Create Application Certificate
  ///
  /// Uploads a certificate for an application that the user has access to.
  ///
  /// Parameters:
  ///
  /// * [String] appKey (required):
  ///   The key of the application
  ///
  /// * [String] deviceId:
  ///   Device Id
  ///
  /// * [int] accountId:
  ///   The account used to perform the delete, must have rights to edit the application.
  ///
  /// * [MultipartFile] certificate:
  ///   Certificate
  Future<SirqulResponse?> uploadApplicationCertificate(String appKey, { String? deviceId, int? accountId, MultipartFile? certificate, }) async {
    final response = await uploadApplicationCertificateWithHttpInfo(appKey,  deviceId: deviceId, accountId: accountId, certificate: certificate, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'SirqulResponse',) as SirqulResponse;
    
    }
    return null;
  }
}
