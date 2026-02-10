#import "OAIAchievementProgressResponse.h"

@implementation OAIAchievementProgressResponse

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"achievementId": @"achievementId", @"achievementTierId": @"achievementTierId", @"title": @"title", @"_description": @"description", @"icon": @"icon", @"completed": @"completed", @"progressCount": @"progressCount", @"goalCount": @"goalCount", @"dateUpdated": @"dateUpdated" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"achievementId", @"achievementTierId", @"title", @"_description", @"icon", @"completed", @"progressCount", @"goalCount", @"dateUpdated"];
  return [optionalProperties containsObject:propertyName];
}

@end
