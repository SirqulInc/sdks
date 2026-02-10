#import "OAIDirectionResponse.h"

@implementation OAIDirectionResponse

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"action": @"action", @"bearing": @"bearing", @"bearingDifference": @"bearingDifference", @"heading": @"heading", @"distance": @"distance", @"distanceUnits": @"distanceUnits", @"distanceString": @"distanceString", @"startLatitude": @"startLatitude", @"startLongitude": @"startLongitude", @"endLatitude": @"endLatitude", @"endLongitude": @"endLongitude", @"instruction": @"instruction", @"progressStatus": @"progressStatus" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"action", @"bearing", @"bearingDifference", @"heading", @"distance", @"distanceUnits", @"distanceString", @"startLatitude", @"startLongitude", @"endLatitude", @"endLongitude", @"instruction", @"progressStatus"];
  return [optionalProperties containsObject:propertyName];
}

@end
