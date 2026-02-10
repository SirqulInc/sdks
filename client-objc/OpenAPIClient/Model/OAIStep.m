#import "OAIStep.h"

@implementation OAIStep

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"_id": @"id", @"active": @"active", @"valid": @"valid", @"owner": @"owner", @"deviceId": @"deviceId", @"leg": @"leg", @"distance": @"distance", @"duration": @"duration", @"startLatitude": @"startLatitude", @"startLongitude": @"startLongitude", @"startAltitude": @"startAltitude", @"startDate": @"startDate", @"endLatitude": @"endLatitude", @"endLongitude": @"endLongitude", @"endAltitude": @"endAltitude", @"endDate": @"endDate" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"_id", @"active", @"valid", @"owner", @"deviceId", @"leg", @"distance", @"duration", @"startLatitude", @"startLongitude", @"startAltitude", @"startDate", @"endLatitude", @"endLongitude", @"endAltitude", @"endDate"];
  return [optionalProperties containsObject:propertyName];
}

@end
