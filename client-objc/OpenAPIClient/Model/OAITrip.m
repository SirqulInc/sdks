#import "OAITrip.h"

@implementation OAITrip

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"_id": @"id", @"active": @"active", @"valid": @"valid", @"owner": @"owner", @"pickupLocation": @"pickupLocation", @"pickupTime": @"pickupTime", @"dropOffLocation": @"dropOffLocation", @"dropOffTime": @"dropOffTime", @"shipments": @"shipments", @"recurrence": @"recurrence", @"timeZone": @"timeZone", @"route": @"route", @"preference": @"preference", @"notifications": @"notifications", @"matches": @"matches", @"ownerConnection": @"ownerConnection", @"originalId": @"originalId" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"_id", @"active", @"valid", @"owner", @"pickupLocation", @"pickupTime", @"dropOffLocation", @"dropOffTime", @"shipments", @"recurrence", @"timeZone", @"route", @"preference", @"notifications", @"matches", @"ownerConnection", @"originalId"];
  return [optionalProperties containsObject:propertyName];
}

@end
