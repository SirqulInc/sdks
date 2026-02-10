#import "OAIShipment.h"

@implementation OAIShipment

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"_id": @"id", @"active": @"active", @"valid": @"valid", @"name": @"name", @"owner": @"owner", @"rider": @"rider", @"pickupStop": @"pickupStop", @"dropOffStop": @"dropOffStop", @"notes": @"notes", @"noteCount": @"noteCount", @"batchId": @"batchId", @"reserved": @"reserved", @"canceled": @"canceled", @"confirmed": @"confirmed", @"route": @"route", @"polyline": @"polyline", @"replacePassenger": @"replacePassenger", @"refunded": @"refunded", @"promoCode": @"promoCode", @"quantity": @"quantity", @"pickupTimeWindow": @"pickupTimeWindow", @"dropOffTimeWindow": @"dropOffTimeWindow", @"cargoType": @"cargoType", @"serviceType": @"serviceType", @"routeId": @"routeId", @"totalVolume": @"totalVolume", @"complete": @"complete", @"contentName": @"contentName", @"riderName": @"riderName" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"_id", @"active", @"valid", @"name", @"owner", @"rider", @"pickupStop", @"dropOffStop", @"notes", @"noteCount", @"batchId", @"reserved", @"canceled", @"confirmed", @"route", @"polyline", @"replacePassenger", @"refunded", @"promoCode", @"quantity", @"pickupTimeWindow", @"dropOffTimeWindow", @"cargoType", @"serviceType", @"routeId", @"totalVolume", @"complete", @"contentName", @"riderName"];
  return [optionalProperties containsObject:propertyName];
}

@end
