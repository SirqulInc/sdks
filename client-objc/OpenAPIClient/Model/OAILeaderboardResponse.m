#import "OAILeaderboardResponse.h"

@implementation OAILeaderboardResponse

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"leaderboardId": @"leaderboardId", @"rankType": @"rankType", @"rankMode": @"rankMode", @"sortType": @"sortType", @"limitation": @"limitation", @"title": @"title", @"_description": @"description", @"metaData": @"metaData", @"iconAsset": @"iconAsset", @"bannerAsset": @"bannerAsset", @"active": @"active", @"application": @"application" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"leaderboardId", @"rankType", @"rankMode", @"sortType", @"limitation", @"title", @"_description", @"metaData", @"iconAsset", @"bannerAsset", @"active", @"application"];
  return [optionalProperties containsObject:propertyName];
}

@end
