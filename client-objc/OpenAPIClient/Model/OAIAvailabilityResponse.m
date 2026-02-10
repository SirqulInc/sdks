#import "OAIAvailabilityResponse.h"

@implementation OAIAvailabilityResponse

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"availabilityId": @"availabilityId", @"startDate": @"startDate", @"endDate": @"endDate", @"dayOfWeek": @"dayOfWeek", @"startTime": @"startTime", @"endTime": @"endTime", @"timeZone": @"timeZone", @"deleted": @"deleted" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"availabilityId", @"startDate", @"endDate", @"dayOfWeek", @"startTime", @"endTime", @"timeZone", @"deleted"];
  return [optionalProperties containsObject:propertyName];
}

@end
