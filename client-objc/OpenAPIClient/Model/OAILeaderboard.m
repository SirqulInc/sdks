#import "OAILeaderboard.h"

@implementation OAILeaderboard

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"_id": @"id", @"rankType": @"rankType", @"rankMode": @"rankMode", @"sortType": @"sortType", @"limitation": @"limitation", @"title": @"title", @"_description": @"description", @"iconAsset": @"iconAsset", @"bannerAsset": @"bannerAsset", @"application": @"application", @"metaData": @"metaData", @"active": @"active" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"_id", @"rankType", @"rankMode", @"sortType", @"limitation", @"title", @"_description", @"iconAsset", @"bannerAsset", @"application", @"metaData", @"active"];
  return [optionalProperties containsObject:propertyName];
}

@end
