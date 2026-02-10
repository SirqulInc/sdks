#import "OAIVehicle.h"

@implementation OAIVehicle

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"_id": @"id", @"active": @"active", @"valid": @"valid", @"name": @"name", @"_description": @"description", @"vehicleType": @"vehicleType", @"vin": @"vin", @"licensePlateNumber": @"licensePlateNumber", @"externalId": @"externalId", @"hub": @"hub", @"programs": @"programs", @"seatQuantity": @"seatQuantity", @"picture": @"picture", @"markerIcon": @"markerIcon", @"trackingColor": @"trackingColor", @"belongsTo": @"belongsTo", @"zone": @"zone", @"notes": @"notes", @"noteCount": @"noteCount", @"inUse": @"inUse", @"contentName": @"contentName" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"_id", @"active", @"valid", @"name", @"_description", @"vehicleType", @"vin", @"licensePlateNumber", @"externalId", @"hub", @"programs", @"seatQuantity", @"picture", @"markerIcon", @"trackingColor", @"belongsTo", @"zone", @"notes", @"noteCount", @"inUse", @"contentName"];
  return [optionalProperties containsObject:propertyName];
}

@end
