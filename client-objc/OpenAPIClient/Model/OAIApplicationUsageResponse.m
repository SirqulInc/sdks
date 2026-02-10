#import "OAIApplicationUsageResponse.h"

@implementation OAIApplicationUsageResponse

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"billableEntity": @"billableEntity", @"applicationId": @"applicationId", @"invoiceDate": @"invoiceDate", @"balance": @"balance", @"totalRequests": @"totalRequests", @"totalDataStorage": @"totalDataStorage", @"totalMediaStorage": @"totalMediaStorage", @"totalNotifications": @"totalNotifications", @"maxMissions": @"maxMissions", @"maxVouchers": @"maxVouchers", @"maxCoupons": @"maxCoupons", @"maxProducts": @"maxProducts", @"maxEvents": @"maxEvents", @"maxMedia": @"maxMedia", @"maxLocations": @"maxLocations" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"billableEntity", @"applicationId", @"invoiceDate", @"balance", @"totalRequests", @"totalDataStorage", @"totalMediaStorage", @"totalNotifications", @"maxMissions", @"maxVouchers", @"maxCoupons", @"maxProducts", @"maxEvents", @"maxMedia", @"maxLocations"];
  return [optionalProperties containsObject:propertyName];
}

@end
