#import "OAINotificationRecipientResponseListResponse.h"

@implementation OAINotificationRecipientResponseListResponse

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"items": @"items", @"count": @"count", @"startIndexAudiences": @"startIndexAudiences", @"startIndexGroups": @"startIndexGroups", @"total": @"total", @"countAudiences": @"countAudiences", @"countGroups": @"countGroups", @"hasMoreResults": @"hasMoreResults" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"items", @"count", @"startIndexAudiences", @"startIndexGroups", @"total", @"countAudiences", @"countGroups", @"hasMoreResults"];
  return [optionalProperties containsObject:propertyName];
}

@end
