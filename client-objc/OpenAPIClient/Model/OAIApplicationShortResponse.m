#import "OAIApplicationShortResponse.h"

@implementation OAIApplicationShortResponse

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"valid": @"valid", @"message": @"message", @"version": @"version", @"serializeNulls": @"serializeNulls", @"startTimeLog": @"startTimeLog", @"errorCode": @"errorCode", @"request": @"request", @"applicationId": @"applicationId", @"appKey": @"appKey", @"title": @"title", @"currentBuildVersion": @"currentBuildVersion", @"currentApiVersion": @"currentApiVersion", @"appIcon": @"appIcon", @"appLogo": @"appLogo", @"active": @"active", @"about": @"about", @"landingPageUrl": @"landingPageUrl", @"landingPageFullUrl": @"landingPageFullUrl", @"defaultImageFullUrl": @"defaultImageFullUrl", @"activityDescription": @"activityDescription", @"platforms": @"platforms", @"categories": @"categories", @"placementCount": @"placementCount", @"billable": @"billable", @"hasAds": @"hasAds", @"publicNotifications": @"publicNotifications", @"urlScheme": @"urlScheme", @"global": @"global", @"downloadUrls": @"downloadUrls", @"localAdsEnabled": @"localAdsEnabled", @"trilatSettings": @"trilatSettings", @"returning": @"returning" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"valid", @"message", @"version", @"serializeNulls", @"startTimeLog", @"errorCode", @"request", @"applicationId", @"appKey", @"title", @"currentBuildVersion", @"currentApiVersion", @"appIcon", @"appLogo", @"active", @"about", @"landingPageUrl", @"landingPageFullUrl", @"defaultImageFullUrl", @"activityDescription", @"platforms", @"categories", @"placementCount", @"billable", @"hasAds", @"publicNotifications", @"urlScheme", @"global", @"downloadUrls", @"localAdsEnabled", @"trilatSettings", @"returning"];
  return [optionalProperties containsObject:propertyName];
}

@end
