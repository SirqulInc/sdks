#import "OAIStop.h"

@implementation OAIStop

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"_id": @"id", @"active": @"active", @"valid": @"valid", @"latitude": @"latitude", @"longitude": @"longitude", @"locationDescription": @"locationDescription", @"name": @"name", @"owner": @"owner", @"location": @"location", @"notes": @"notes", @"noteCount": @"noteCount", @"stopType": @"stopType", @"orderIndex": @"orderIndex", @"startTime": @"startTime", @"endTime": @"endTime", @"estimatedTime": @"estimatedTime", @"estimatedArrivalTime": @"estimatedArrivalTime", @"estimatedDepartureTime": @"estimatedDepartureTime", @"actualTime": @"actualTime", @"desiredTime": @"desiredTime", @"timePadding": @"timePadding", @"route": @"route", @"shipment": @"shipment", @"progressStatus": @"progressStatus", @"compareEstimatedTime": @"compareEstimatedTime", @"compareEstimatedArrivalTime": @"compareEstimatedArrivalTime", @"compareEstimiatedDepartureTime": @"compareEstimiatedDepartureTime", @"polyline": @"polyline", @"parent": @"parent", @"locationDisplay": @"locationDisplay", @"complete": @"complete", @"contentName": @"contentName", @"locationAddress": @"locationAddress" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"_id", @"active", @"valid", @"latitude", @"longitude", @"locationDescription", @"name", @"owner", @"location", @"notes", @"noteCount", @"stopType", @"orderIndex", @"startTime", @"endTime", @"estimatedTime", @"estimatedArrivalTime", @"estimatedDepartureTime", @"actualTime", @"desiredTime", @"timePadding", @"route", @"shipment", @"progressStatus", @"compareEstimatedTime", @"compareEstimatedArrivalTime", @"compareEstimiatedDepartureTime", @"polyline", @"parent", @"locationDisplay", @"complete", @"contentName", @"locationAddress"];
  return [optionalProperties containsObject:propertyName];
}

@end
