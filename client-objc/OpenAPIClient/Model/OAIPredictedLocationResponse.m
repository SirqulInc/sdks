#import "OAIPredictedLocationResponse.h"

@implementation OAIPredictedLocationResponse

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"ownerId": @"ownerId", @"onDate": @"onDate", @"onDateMilli": @"onDateMilli", @"hour": @"hour", @"latitude": @"latitude", @"longitude": @"longitude", @"distance": @"distance", @"matches": @"matches", @"averageDuration": @"averageDuration", @"weightedScore": @"weightedScore" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"ownerId", @"onDate", @"onDateMilli", @"hour", @"latitude", @"longitude", @"distance", @"matches", @"averageDuration", @"weightedScore"];
  return [optionalProperties containsObject:propertyName];
}

@end
