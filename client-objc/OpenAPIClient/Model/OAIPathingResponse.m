#import "OAIPathingResponse.h"

@implementation OAIPathingResponse

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"start": @"start", @"end": @"end", @"waypoints": @"waypoints", @"exclusions": @"exclusions", @"width": @"width", @"height": @"height", @"southwest": @"southwest", @"northeast": @"northeast", @"metersPerX": @"metersPerX", @"metersPerY": @"metersPerY", @"path": @"path", @"pathCount": @"pathCount", @"directions": @"directions", @"directionCount": @"directionCount", @"swcalibration": @"swcalibration", @"calibrationBearings": @"calibrationBearings", @"necalibration": @"necalibration" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"start", @"end", @"waypoints", @"exclusions", @"width", @"height", @"southwest", @"northeast", @"metersPerX", @"metersPerY", @"path", @"pathCount", @"directions", @"directionCount", @"swcalibration", @"calibrationBearings", @"necalibration"];
  return [optionalProperties containsObject:propertyName];
}

@end
