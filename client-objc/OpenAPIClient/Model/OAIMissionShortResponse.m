#import "OAIMissionShortResponse.h"

@implementation OAIMissionShortResponse

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"action": @"action", @"highestAppVersion": @"highestAppVersion", @"missionId": @"missionId", @"ticketsEarned": @"ticketsEarned", @"costToPlay": @"costToPlay", @"costToPlayType": @"costToPlayType", @"owner": @"owner", @"title": @"title", @"_description": @"description", @"authorOverride": @"authorOverride", @"icon": @"icon", @"image": @"image", @"sequenceType": @"sequenceType", @"updatedDate": @"updatedDate", @"startDate": @"startDate", @"endDate": @"endDate", @"missionType": @"missionType", @"active": @"active", @"balance": @"balance", @"availableLimit": @"availableLimit", @"inviteCount": @"inviteCount", @"acceptedCount": @"acceptedCount", @"childCount": @"childCount", @"enableBuyBack": @"enableBuyBack", @"minimumToPlay": @"minimumToPlay", @"rewarded": @"rewarded", @"refunded": @"refunded", @"joinCode": @"joinCode" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"action", @"highestAppVersion", @"missionId", @"ticketsEarned", @"costToPlay", @"costToPlayType", @"owner", @"title", @"_description", @"authorOverride", @"icon", @"image", @"sequenceType", @"updatedDate", @"startDate", @"endDate", @"missionType", @"active", @"balance", @"availableLimit", @"inviteCount", @"acceptedCount", @"childCount", @"enableBuyBack", @"minimumToPlay", @"rewarded", @"refunded", @"joinCode"];
  return [optionalProperties containsObject:propertyName];
}

@end
