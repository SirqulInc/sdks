#import "OAIShipmentBatch.h"

@implementation OAIShipmentBatch

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"_id": @"id", @"created": @"created", @"updated": @"updated", @"active": @"active", @"valid": @"valid", @"retailer": @"retailer", @"hub": @"hub", @"program": @"program", @"shipmentImportStatuses": @"shipmentImportStatuses", @"shipments": @"shipments", @"uploaded": @"uploaded", @"started": @"started", @"optimizationStarted": @"optimizationStarted", @"completed": @"completed", @"optimizationCompleted": @"optimizationCompleted", @"source": @"source", @"externalId": @"externalId", @"total": @"total", @"processedCount": @"processedCount", @"successCount": @"successCount", @"failedCount": @"failedCount", @"validCount": @"validCount", @"invalidCount": @"invalidCount", @"averageTravelSpeed": @"averageTravelSpeed", @"maxSeconds": @"maxSeconds", @"importStatus": @"importStatus", @"totalRoutes": @"totalRoutes", @"routesCreated": @"routesCreated", @"totalLegsRequests": @"totalLegsRequests", @"legsRequested": @"legsRequested", @"initScore": @"initScore", @"hardScore": @"hardScore", @"mediumScore": @"mediumScore", @"softScore": @"softScore" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"_id", @"created", @"updated", @"active", @"valid", @"retailer", @"hub", @"program", @"shipmentImportStatuses", @"shipments", @"uploaded", @"started", @"optimizationStarted", @"completed", @"optimizationCompleted", @"source", @"externalId", @"total", @"processedCount", @"successCount", @"failedCount", @"validCount", @"invalidCount", @"averageTravelSpeed", @"maxSeconds", @"importStatus", @"totalRoutes", @"routesCreated", @"totalLegsRequests", @"legsRequested", @"initScore", @"hardScore", @"mediumScore", @"softScore"];
  return [optionalProperties containsObject:propertyName];
}

@end
