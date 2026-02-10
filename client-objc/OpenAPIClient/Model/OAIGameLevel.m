#import "OAIGameLevel.h"

@implementation OAIGameLevel

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"_id": @"id", @"active": @"active", @"valid": @"valid", @"varNewOwnerId": @"newOwnerId", @"gameDifficulty": @"gameDifficulty", @"name": @"name", @"image": @"image", @"icon": @"icon", @"_description": @"description", @"startDate": @"startDate", @"endDate": @"endDate", @"randomizeGameObjects": @"randomizeGameObjects", @"owner": @"owner", @"version": @"version", @"notes": @"notes", @"noteCount": @"noteCount", @"likes": @"likes", @"likeCount": @"likeCount", @"dislikeCount": @"dislikeCount", @"playCount": @"playCount", @"downloadCount": @"downloadCount", @"gameObjectCount": @"gameObjectCount", @"publicPermissions": @"publicPermissions", @"visibility": @"visibility", @"userPermissions": @"userPermissions", @"flags": @"flags", @"flagCount": @"flagCount", @"flagThreshold": @"flagThreshold", @"application": @"application", @"assignMission": @"assignMission", @"authorOverride": @"authorOverride", @"splashTitle": @"splashTitle", @"splashMessage": @"splashMessage", @"winnerMessage": @"winnerMessage", @"tutorial": @"tutorial", @"approvalStatus": @"approvalStatus", @"nextLevel": @"nextLevel", @"offer": @"offer", @"balance": @"balance", @"levelNumber": @"levelNumber", @"points": @"points", @"ticketType": @"ticketType", @"ticketCount": @"ticketCount", @"allocateTickets": @"allocateTickets", @"applicationTitle": @"applicationTitle", @"ownerUsername": @"ownerUsername", @"likableNotificationModels": @"likableNotificationModels", @"notableNotificationModels": @"notableNotificationModels", @"published": @"published", @"contentName": @"contentName", @"defaultThreshold": @"defaultThreshold", @"contentAsset": @"contentAsset", @"contentType": @"contentType" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"_id", @"active", @"valid", @"varNewOwnerId", @"gameDifficulty", @"name", @"image", @"icon", @"_description", @"startDate", @"endDate", @"randomizeGameObjects", @"owner", @"version", @"notes", @"noteCount", @"likes", @"likeCount", @"dislikeCount", @"playCount", @"downloadCount", @"gameObjectCount", @"publicPermissions", @"visibility", @"userPermissions", @"flags", @"flagCount", @"flagThreshold", @"application", @"assignMission", @"authorOverride", @"splashTitle", @"splashMessage", @"winnerMessage", @"tutorial", @"approvalStatus", @"nextLevel", @"offer", @"balance", @"levelNumber", @"points", @"ticketType", @"ticketCount", @"allocateTickets", @"applicationTitle", @"ownerUsername", @"likableNotificationModels", @"notableNotificationModels", @"published", @"contentName", @"defaultThreshold", @"contentAsset", @"contentType"];
  return [optionalProperties containsObject:propertyName];
}

@end
