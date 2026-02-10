#import "OAIAchievementTierResponse.h"

@implementation OAIAchievementTierResponse

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"achievementTierId": @"achievementTierId", @"title": @"title", @"_description": @"description", @"goalCount": @"goalCount", @"icon": @"icon", @"missionId": @"missionId", @"gameId": @"gameId", @"packId": @"packId", @"gameLevelId": @"gameLevelId", @"gameObjectId": @"gameObjectId" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"achievementTierId", @"title", @"_description", @"goalCount", @"icon", @"missionId", @"gameId", @"packId", @"gameLevelId", @"gameObjectId"];
  return [optionalProperties containsObject:propertyName];
}

@end
