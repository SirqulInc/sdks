#import "OAIFlag.h"

@implementation OAIFlag

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"_id": @"id", @"active": @"active", @"valid": @"valid", @"owner": @"owner", @"flagableObjectType": @"flagableObjectType", @"flagableObjectId": @"flagableObjectId", @"flagDescription": @"flagDescription", @"app": @"app" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"_id", @"active", @"valid", @"owner", @"flagableObjectType", @"flagableObjectId", @"flagDescription", @"app"];
  return [optionalProperties containsObject:propertyName];
}

@end
