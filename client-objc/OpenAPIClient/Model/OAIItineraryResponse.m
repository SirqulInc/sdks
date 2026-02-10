#import "OAIItineraryResponse.h"

@implementation OAIItineraryResponse

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"itineraryId": @"itineraryId", @"waypointCount": @"waypointCount", @"score": @"score", @"errorCode": @"errorCode", @"error": @"error", @"itemCount": @"itemCount", @"vehicle": @"vehicle", @"stops": @"stops", @"estimatedStartTime": @"estimatedStartTime", @"estimatedEndTime": @"estimatedEndTime", @"estimatedDuration": @"estimatedDuration", @"estimatedDistance": @"estimatedDistance", @"waitTime": @"waitTime", @"generated": @"generated", @"valid": @"valid" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"itineraryId", @"waypointCount", @"score", @"errorCode", @"error", @"itemCount", @"vehicle", @"stops", @"estimatedStartTime", @"estimatedEndTime", @"estimatedDuration", @"estimatedDistance", @"waitTime", @"generated", @"valid"];
  return [optionalProperties containsObject:propertyName];
}

@end
