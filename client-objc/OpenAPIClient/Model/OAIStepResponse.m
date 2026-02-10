#import "OAIStepResponse.h"

@implementation OAIStepResponse

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"leg": @"leg", @"distance": @"distance", @"duration": @"duration", @"startLat": @"startLat", @"startLng": @"startLng", @"startAlt": @"startAlt", @"startDate": @"startDate", @"endLat": @"endLat", @"endLng": @"endLng", @"endAlt": @"endAlt", @"endDate": @"endDate", @"accuracy": @"accuracy" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"leg", @"distance", @"duration", @"startLat", @"startLng", @"startAlt", @"startDate", @"endLat", @"endLng", @"endAlt", @"endDate", @"accuracy"];
  return [optionalProperties containsObject:propertyName];
}

@end
