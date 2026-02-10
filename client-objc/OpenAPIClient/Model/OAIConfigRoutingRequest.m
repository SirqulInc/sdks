#import "OAIConfigRoutingRequest.h"

@implementation OAIConfigRoutingRequest

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"debugMode": @"debugMode", @"threaded": @"threaded", @"threadType": @"threadType", @"maxRuntime": @"maxRuntime", @"numberOfMatches": @"numberOfMatches", @"maxItineraryTime": @"maxItineraryTime", @"maxStopsPerVehicle": @"maxStopsPerVehicle", @"averageCityTimePerMile": @"averageCityTimePerMile", @"averageFreewayTimePerMile": @"averageFreewayTimePerMile", @"freewayTravelDistance": @"freewayTravelDistance", @"sameStopBuffer": @"sameStopBuffer", @"orderAlgorithm": @"orderAlgorithm", @"scoreAlgorithm": @"scoreAlgorithm" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"debugMode", @"threaded", @"threadType", @"maxRuntime", @"numberOfMatches", @"maxItineraryTime", @"maxStopsPerVehicle", @"averageCityTimePerMile", @"averageFreewayTimePerMile", @"freewayTravelDistance", @"sameStopBuffer", @"orderAlgorithm", @"scoreAlgorithm"];
  return [optionalProperties containsObject:propertyName];
}

@end
