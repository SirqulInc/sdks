#import "OAIProfileInfoResponse.h"

@implementation OAIProfileInfoResponse

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"valid": @"valid", @"message": @"message", @"version": @"version", @"serializeNulls": @"serializeNulls", @"startTimeLog": @"startTimeLog", @"errorCode": @"errorCode", @"request": @"request", @"accountId": @"accountId", @"locationDisplay": @"locationDisplay", @"display": @"display", @"username": @"username", @"profileImage": @"profileImage", @"profileAvatar": @"profileAvatar", @"aboutUs": @"aboutUs", @"locale": @"locale", @"summaryTitle": @"summaryTitle", @"gender": @"gender", @"age": @"age", @"gameExperience": @"gameExperience", @"contact": @"contact", @"categories": @"categories", @"personalProfile": @"personalProfile", @"userSettings": @"userSettings", @"latitude": @"latitude", @"longitude": @"longitude", @"currentPostalCode": @"currentPostalCode", @"accountType": @"accountType", @"premiumExpiration": @"premiumExpiration", @"matchIndex": @"matchIndex", @"tags": @"tags", @"returning": @"returning" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"valid", @"message", @"version", @"serializeNulls", @"startTimeLog", @"errorCode", @"request", @"accountId", @"locationDisplay", @"display", @"username", @"profileImage", @"profileAvatar", @"aboutUs", @"locale", @"summaryTitle", @"gender", @"age", @"gameExperience", @"contact", @"categories", @"personalProfile", @"userSettings", @"latitude", @"longitude", @"currentPostalCode", @"accountType", @"premiumExpiration", @"matchIndex", @"tags", @"returning"];
  return [optionalProperties containsObject:propertyName];
}

@end
