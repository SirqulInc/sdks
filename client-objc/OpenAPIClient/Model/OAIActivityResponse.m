#import "OAIActivityResponse.h"

@implementation OAIActivityResponse

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"activityId": @"activityId", @"created": @"created", @"appKey": @"appKey", @"targetId": @"targetId", @"targetType": @"targetType", @"targetLegacyId": @"targetLegacyId", @"targetDescription": @"targetDescription", @"targetActive": @"targetActive", @"action": @"action", @"slaveEntityId": @"slaveEntityId" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"activityId", @"created", @"appKey", @"targetId", @"targetType", @"targetLegacyId", @"targetDescription", @"targetActive", @"action", @"slaveEntityId"];
  return [optionalProperties containsObject:propertyName];
}

@end
