#import "OAIRoute.h"

@implementation OAIRoute

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"_id": @"id", @"active": @"active", @"valid": @"valid", @"name": @"name", @"externalId": @"externalId", @"hub": @"hub", @"program": @"program", @"zone": @"zone", @"vehicle": @"vehicle", @"driver": @"driver", @"concierge": @"concierge", @"scheduled": @"scheduled", @"approved": @"approved", @"started": @"started", @"completed": @"completed", @"totalDistance": @"totalDistance", @"totalTime": @"totalTime", @"estimatedDistance": @"estimatedDistance", @"estimatedTime": @"estimatedTime", @"startStop": @"startStop", @"endStop": @"endStop", @"stops": @"stops", @"shipments": @"shipments", @"allShipmentsConfirmed": @"allShipmentsConfirmed", @"shipmentOrderCount": @"shipmentOrderCount", @"polyline": @"polyline", @"notes": @"notes", @"noteCount": @"noteCount", @"glympseToken": @"glympseToken", @"enableOptimization": @"enableOptimization", @"optimizedDate": @"optimizedDate", @"optimizationStarted": @"optimizationStarted", @"optimizationCompleted": @"optimizationCompleted", @"featured": @"featured", @"image": @"image", @"parent": @"parent", @"contentName": @"contentName" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"_id", @"active", @"valid", @"name", @"externalId", @"hub", @"program", @"zone", @"vehicle", @"driver", @"concierge", @"scheduled", @"approved", @"started", @"completed", @"totalDistance", @"totalTime", @"estimatedDistance", @"estimatedTime", @"startStop", @"endStop", @"stops", @"shipments", @"allShipmentsConfirmed", @"shipmentOrderCount", @"polyline", @"notes", @"noteCount", @"glympseToken", @"enableOptimization", @"optimizedDate", @"optimizationStarted", @"optimizationCompleted", @"featured", @"image", @"parent", @"contentName"];
  return [optionalProperties containsObject:propertyName];
}

@end
