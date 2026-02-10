#import "OAIMission.h"

@implementation OAIMission

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"_id": @"id", @"active": @"active", @"valid": @"valid", @"owner": @"owner", @"missionType": @"missionType", @"title": @"title", @"_description": @"description", @"costToPlay": @"costToPlay", @"costToPlayType": @"costToPlayType", @"games": @"games", @"audiences": @"audiences", @"startDate": @"startDate", @"endDate": @"endDate", @"sequenceType": @"sequenceType", @"authorOverride": @"authorOverride", @"icon": @"icon", @"image": @"image", @"offers": @"offers", @"visibility": @"visibility", @"task": @"task", @"points": @"points", @"ticketType": @"ticketType", @"ticketCount": @"ticketCount", @"allocateTickets": @"allocateTickets", @"billableEntity": @"billableEntity", @"balance": @"balance", @"startingLimit": @"startingLimit", @"availableLimit": @"availableLimit", @"inviteCount": @"inviteCount", @"acceptedCount": @"acceptedCount", @"inviteStatus": @"inviteStatus", @"childCount": @"childCount", @"secondsBetweenLevels": @"secondsBetweenLevels", @"secondsBetweenPacks": @"secondsBetweenPacks", @"maximumLevelLength": @"maximumLevelLength", @"enableBuyBack": @"enableBuyBack", @"activePack": @"activePack", @"minimumToPlay": @"minimumToPlay", @"fixedReward": @"fixedReward", @"refunded": @"refunded", @"notificationsCreated": @"notificationsCreated", @"rewarded": @"rewarded", @"externalId": @"externalId", @"advancedReporting": @"advancedReporting", @"splitReward": @"splitReward", @"joinCode": @"joinCode", @"firstPack": @"firstPack", @"allGameLevels": @"allGameLevels", @"allPacks": @"allPacks" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"_id", @"active", @"valid", @"owner", @"missionType", @"title", @"_description", @"costToPlay", @"costToPlayType", @"games", @"audiences", @"startDate", @"endDate", @"sequenceType", @"authorOverride", @"icon", @"image", @"offers", @"visibility", @"task", @"points", @"ticketType", @"ticketCount", @"allocateTickets", @"billableEntity", @"balance", @"startingLimit", @"availableLimit", @"inviteCount", @"acceptedCount", @"inviteStatus", @"childCount", @"secondsBetweenLevels", @"secondsBetweenPacks", @"maximumLevelLength", @"enableBuyBack", @"activePack", @"minimumToPlay", @"fixedReward", @"refunded", @"notificationsCreated", @"rewarded", @"externalId", @"advancedReporting", @"splitReward", @"joinCode", @"firstPack", @"allGameLevels", @"allPacks"];
  return [optionalProperties containsObject:propertyName];
}

@end
