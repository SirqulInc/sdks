#import "OAIPreferredLocationResponse.h"

@implementation OAIPreferredLocationResponse

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"ownerId": @"ownerId", @"onDate": @"onDate", @"onDateMilli": @"onDateMilli", @"hour": @"hour", @"latitude": @"latitude", @"longitude": @"longitude", @"distance": @"distance", @"duration": @"duration", @"startStepId": @"startStepId", @"endStepId": @"endStepId" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"ownerId", @"onDate", @"onDateMilli", @"hour", @"latitude", @"longitude", @"distance", @"duration", @"startStepId", @"endStepId"];
  return [optionalProperties containsObject:propertyName];
}

@end
