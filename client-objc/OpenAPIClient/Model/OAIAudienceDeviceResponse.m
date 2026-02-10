#import "OAIAudienceDeviceResponse.h"

@implementation OAIAudienceDeviceResponse

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"deviceId": @"deviceId", @"active": @"active", @"name": @"name", @"display": @"display", @"minimum": @"minimum", @"maximum": @"maximum" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"deviceId", @"active", @"name", @"display", @"minimum", @"maximum"];
  return [optionalProperties containsObject:propertyName];
}

@end
