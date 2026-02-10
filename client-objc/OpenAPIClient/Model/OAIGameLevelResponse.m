#import "OAIGameLevelResponse.h"

@implementation OAIGameLevelResponse

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"action": @"action", @"gameLevelId": @"gameLevelId", @"gameType": @"gameType", @"active": @"active", @"name": @"name", @"_description": @"description", @"difficulty": @"difficulty", @"appVersion": @"appVersion", @"likesCount": @"likesCount", @"dislikesCount": @"dislikesCount", @"commentsCount": @"commentsCount", @"downloadCount": @"downloadCount", @"comments": @"comments", @"locked": @"locked", @"completed": @"completed", @"ticketsEarned": @"ticketsEarned", @"gameObjects": @"gameObjects", @"hasLiked": @"hasLiked", @"image": @"image", @"gameData": @"gameData", @"gameDataSuffix": @"gameDataSuffix", @"scores": @"scores", @"owner": @"owner", @"userPermissionsList": @"userPermissionsList", @"results": @"results", @"randomizeGameObjects": @"randomizeGameObjects", @"tickets": @"tickets", @"assignMission": @"assignMission", @"icon": @"icon", @"authorOverride": @"authorOverride", @"updatedDate": @"updatedDate", @"startDate": @"startDate", @"endDate": @"endDate", @"splashTitle": @"splashTitle", @"splashMessage": @"splashMessage", @"hasFlagged": @"hasFlagged", @"allocateTickets": @"allocateTickets", @"ticketType": @"ticketType", @"ticketCount": @"ticketCount", @"points": @"points", @"winnerMessage": @"winnerMessage", @"tutorial": @"tutorial", @"appKey": @"appKey", @"appName": @"appName", @"scoringType": @"scoringType", @"tutorialTitle": @"tutorialTitle", @"tutorialMessage": @"tutorialMessage", @"tutorialAlignment": @"tutorialAlignment", @"tutorialImage": @"tutorialImage", @"nextLevelId": @"nextLevelId", @"offer": @"offer" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"action", @"gameLevelId", @"gameType", @"active", @"name", @"_description", @"difficulty", @"appVersion", @"likesCount", @"dislikesCount", @"commentsCount", @"downloadCount", @"comments", @"locked", @"completed", @"ticketsEarned", @"gameObjects", @"hasLiked", @"image", @"gameData", @"gameDataSuffix", @"scores", @"owner", @"userPermissionsList", @"results", @"randomizeGameObjects", @"tickets", @"assignMission", @"icon", @"authorOverride", @"updatedDate", @"startDate", @"endDate", @"splashTitle", @"splashMessage", @"hasFlagged", @"allocateTickets", @"ticketType", @"ticketCount", @"points", @"winnerMessage", @"tutorial", @"appKey", @"appName", @"scoringType", @"tutorialTitle", @"tutorialMessage", @"tutorialAlignment", @"tutorialImage", @"nextLevelId", @"offer"];
  return [optionalProperties containsObject:propertyName];
}

@end
