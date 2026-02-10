#import "OAIDirection.h"

@implementation OAIDirection

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"_id": @"id", @"active": @"active", @"valid": @"valid", @"distance": @"distance", @"duration": @"duration", @"endLatitude": @"endLatitude", @"endLongitude": @"endLongitude", @"startLatitude": @"startLatitude", @"startLongitude": @"startLongitude", @"instruction": @"instruction", @"polyline": @"polyline", @"progressStatus": @"progressStatus", @"highlight": @"highlight" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"_id", @"active", @"valid", @"distance", @"duration", @"endLatitude", @"endLongitude", @"startLatitude", @"startLongitude", @"instruction", @"polyline", @"progressStatus", @"highlight"];
  return [optionalProperties containsObject:propertyName];
}

@end
