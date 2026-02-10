#import "OAIServiceType.h"

@implementation OAIServiceType

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"_id": @"id", @"active": @"active", @"valid": @"valid", @"business": @"business", @"hub": @"hub", @"name": @"name", @"additionalLoadTime": @"additionalLoadTime", @"pickupAddressOverride": @"pickupAddressOverride", @"dropoffAddressOverride": @"dropoffAddressOverride", @"pickupStartTimeOverride": @"pickupStartTimeOverride", @"pickupEndTimeOverride": @"pickupEndTimeOverride", @"dropoffStartTimeOverride": @"dropoffStartTimeOverride", @"dropoffEndTimeOverride": @"dropoffEndTimeOverride", @"dateOverride": @"dateOverride" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"_id", @"active", @"valid", @"business", @"hub", @"name", @"additionalLoadTime", @"pickupAddressOverride", @"dropoffAddressOverride", @"pickupStartTimeOverride", @"pickupEndTimeOverride", @"dropoffStartTimeOverride", @"dropoffEndTimeOverride", @"dateOverride"];
  return [optionalProperties containsObject:propertyName];
}

@end
