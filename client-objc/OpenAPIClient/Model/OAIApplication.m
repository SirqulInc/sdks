#import "OAIApplication.h"

@implementation OAIApplication

- (instancetype)init {
  self = [super init];
  if (self) {
    // initialize property's default value, if any
    
  }
  return self;
}


/**
 * Maps json key to property name.
 * This method is used by `JSONModel`.
 */
+ (JSONKeyMapper *)keyMapper {
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"_id": @"id", @"active": @"active", @"valid": @"valid", @"title": @"title", @"about": @"about", @"certificateUrl": @"certificateUrl", @"certificateName": @"certificateName", @"certificate": @"certificate", @"certificateLastUpdated": @"certificateLastUpdated", @"appDescription": @"appDescription", @"showInActivities": @"showInActivities", @"cssClass": @"cssClass", @"inviteWelcomeText": @"inviteWelcomeText", @"bundleId": @"bundleId", @"appType": @"appType", @"scoringType": @"scoringType", @"appKey": @"appKey", @"appRestKey": @"appRestKey", @"appTokenKey": @"appTokenKey", @"hintCost": @"hintCost", @"eulaDate": @"eulaDate", @"eulaVersion": @"eulaVersion", @"landingPageUrl": @"landingPageUrl", @"invitePageUrl": @"invitePageUrl", @"downloadUrls": @"downloadUrls", @"appName": @"appName", @"appIcon": @"appIcon", @"appLogo": @"appLogo", @"billableEntity": @"billableEntity", @"facebookAppId": @"facebookAppId", @"facebookAppSecret": @"facebookAppSecret", @"twitterAppId": @"twitterAppId", @"twitterAppSecret": @"twitterAppSecret", @"twitterCallbackURL": @"twitterCallbackURL", @"defaultImage": @"defaultImage", @"modules": @"modules", @"authorizedServers": @"authorizedServers", @"authorizedCount": @"authorizedCount", @"activeServers": @"activeServers", @"licensePeriod": @"licensePeriod", @"hasGameData": @"hasGameData", @"currentBuildVersion": @"currentBuildVersion", @"currentApiVersion": @"currentApiVersion", @"globalTickets": @"globalTickets", @"ticketsPerPoint": @"ticketsPerPoint", @"maxPointsPerScore": @"maxPointsPerScore", @"useAppCache": @"useAppCache", @"uniqueUserTag": @"uniqueUserTag", @"useMatchingAlgorithm": @"useMatchingAlgorithm", @"platforms": @"platforms", @"categories": @"categories", @"placements": @"placements", @"hasAdvertisements": @"hasAdvertisements", @"appleAppId": @"appleAppId", @"googleAppId": @"googleAppId", @"googleApiKey": @"googleApiKey", @"googleOAuthClientId": @"googleOAuthClientId", @"googleOAuthSecret": @"googleOAuthSecret", @"googleOAuthAccessToken": @"googleOAuthAccessToken", @"googleOAuthRefreshToken": @"googleOAuthRefreshToken", @"baiduApiKey": @"baiduApiKey", @"baiduSecretKey": @"baiduSecretKey", @"jpushAppKey": @"jpushAppKey", @"jpushMasterSecret": @"jpushMasterSecret", @"xgPushSecretKey": @"xgPushSecretKey", @"publicNotifications": @"publicNotifications", @"urlScheme": @"urlScheme", @"retailer": @"retailer", @"objectStoreSession": @"objectStoreSession", @"publicContentApproval": @"publicContentApproval", @"productionMode": @"productionMode", @"griplyBaseUrl": @"griplyBaseUrl", @"minimumSessionLength": @"minimumSessionLength", @"sessionGapLength": @"sessionGapLength", @"processSessionData": @"processSessionData", @"localAdsEnabled": @"localAdsEnabled", @"includeInReport": @"includeInReport", @"sqootApiKey": @"sqootApiKey", @"amqpEnabled": @"amqpEnabled", @"trilatSettings": @"trilatSettings" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"_id", @"active", @"valid", @"title", @"about", @"certificateUrl", @"certificateName", @"certificate", @"certificateLastUpdated", @"appDescription", @"showInActivities", @"cssClass", @"inviteWelcomeText", @"bundleId", @"appType", @"scoringType", @"appKey", @"appRestKey", @"appTokenKey", @"hintCost", @"eulaDate", @"eulaVersion", @"landingPageUrl", @"invitePageUrl", @"downloadUrls", @"appName", @"appIcon", @"appLogo", @"billableEntity", @"facebookAppId", @"facebookAppSecret", @"twitterAppId", @"twitterAppSecret", @"twitterCallbackURL", @"defaultImage", @"modules", @"authorizedServers", @"authorizedCount", @"activeServers", @"licensePeriod", @"hasGameData", @"currentBuildVersion", @"currentApiVersion", @"globalTickets", @"ticketsPerPoint", @"maxPointsPerScore", @"useAppCache", @"uniqueUserTag", @"useMatchingAlgorithm", @"platforms", @"categories", @"placements", @"hasAdvertisements", @"appleAppId", @"googleAppId", @"googleApiKey", @"googleOAuthClientId", @"googleOAuthSecret", @"googleOAuthAccessToken", @"googleOAuthRefreshToken", @"baiduApiKey", @"baiduSecretKey", @"jpushAppKey", @"jpushMasterSecret", @"xgPushSecretKey", @"publicNotifications", @"urlScheme", @"retailer", @"objectStoreSession", @"publicContentApproval", @"productionMode", @"griplyBaseUrl", @"minimumSessionLength", @"sessionGapLength", @"processSessionData", @"localAdsEnabled", @"includeInReport", @"sqootApiKey", @"amqpEnabled", @"trilatSettings"];
  return [optionalProperties containsObject:propertyName];
}

@end
