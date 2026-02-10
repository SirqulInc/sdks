#import "OAIRankListResponse.h"

@implementation OAIRankListResponse

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"items": @"items", @"userRank": @"userRank", @"hasMoreResults": @"hasMoreResults", @"count": @"count", @"rankType": @"rankType", @"app": @"app", @"sortField": @"sortField", @"leaderboardMode": @"leaderboardMode", @"start": @"start", @"limit": @"limit" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"items", @"userRank", @"hasMoreResults", @"count", @"rankType", @"app", @"sortField", @"leaderboardMode", @"start", @"limit"];
  return [optionalProperties containsObject:propertyName];
}

@end
