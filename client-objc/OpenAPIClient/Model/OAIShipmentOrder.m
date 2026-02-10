#import "OAIShipmentOrder.h"

@implementation OAIShipmentOrder

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"valid": @"valid", @"batchID": @"BatchID", @"batchSize": @"BatchSize", @"orderTrackingID": @"OrderTrackingID", @"clientRefNo": @"ClientRefNo", @"clientRefNo2": @"ClientRefNo2", @"hubCode": @"HubCode", @"accountNo": @"AccountNo", @"companyName": @"CompanyName", @"vehicleTypeName": @"VehicleTypeName", @"serviceTypeName": @"ServiceTypeName", @"serviceCode": @"ServiceCode", @"pieces": @"Pieces", @"weight": @"Weight", @"cubicFeet": @"CubicFeet", @"pickupCompany": @"PickupCompany", @"pickupContact": @"PickupContact", @"pickupPhone": @"PickupPhone", @"pickupStreet": @"PickupStreet", @"pickupStreet2": @"PickupStreet2", @"pickupCity": @"PickupCity", @"pickupState": @"PickupState", @"pickupZip": @"PickupZip", @"pickupTargetFrom": @"PickupTargetFrom", @"pickupTargetTo": @"PickupTargetTo", @"deliveryCompany": @"DeliveryCompany", @"deliveryContact": @"DeliveryContact", @"deliveryPhone": @"DeliveryPhone", @"deliveryStreet": @"DeliveryStreet", @"deliveryStreet2": @"DeliveryStreet2", @"deliveryCity": @"DeliveryCity", @"deliveryState": @"DeliveryState", @"deliveryZip": @"DeliveryZip", @"deliveryTargetFrom": @"DeliveryTargetFrom", @"deliveryTargetTo": @"DeliveryTargetTo", @"orderPackages": @"OrderPackages", @"routeID": @"RouteID", @"driverID": @"DriverID", @"pickupSequenceNo": @"PickupSequenceNo", @"deliverySequenceNo": @"DeliverySequenceNo", @"pickupETA": @"PickupETA", @"deliveryETA": @"DeliveryETA" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"valid", @"batchID", @"batchSize", @"orderTrackingID", @"clientRefNo", @"clientRefNo2", @"hubCode", @"accountNo", @"companyName", @"vehicleTypeName", @"serviceTypeName", @"serviceCode", @"pieces", @"weight", @"cubicFeet", @"pickupCompany", @"pickupContact", @"pickupPhone", @"pickupStreet", @"pickupStreet2", @"pickupCity", @"pickupState", @"pickupZip", @"pickupTargetFrom", @"pickupTargetTo", @"deliveryCompany", @"deliveryContact", @"deliveryPhone", @"deliveryStreet", @"deliveryStreet2", @"deliveryCity", @"deliveryState", @"deliveryZip", @"deliveryTargetFrom", @"deliveryTargetTo", @"orderPackages", @"routeID", @"driverID", @"pickupSequenceNo", @"deliverySequenceNo", @"pickupETA", @"deliveryETA"];
  return [optionalProperties containsObject:propertyName];
}

@end
