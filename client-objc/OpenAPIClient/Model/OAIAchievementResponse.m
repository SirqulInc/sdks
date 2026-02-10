#import "OAIAchievementResponse.h"

@implementation OAIAchievementResponse

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"valid": @"valid", @"message": @"message", @"version": @"version", @"serializeNulls": @"serializeNulls", @"startTimeLog": @"startTimeLog", @"errorCode": @"errorCode", @"request": @"request", @"achievementId": @"achievementId", @"title": @"title", @"_description": @"description", @"analyticsTag": @"analyticsTag", @"rankType": @"rankType", @"rankIncrement": @"rankIncrement", @"validate": @"validate", @"appName": @"appName", @"active": @"active", @"updated": @"updated", @"created": @"created", @"tierCount": @"tierCount", @"minIncrement": @"minIncrement", @"maxIncrement": @"maxIncrement", @"tiers": @"tiers", @"returning": @"returning" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"valid", @"message", @"version", @"serializeNulls", @"startTimeLog", @"errorCode", @"request", @"achievementId", @"title", @"_description", @"analyticsTag", @"rankType", @"rankIncrement", @"validate", @"appName", @"active", @"updated", @"created", @"tierCount", @"minIncrement", @"maxIncrement", @"tiers", @"returning"];
  return [optionalProperties containsObject:propertyName];
}

@end
