#import "OAIDevice.h"

@implementation OAIDevice

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"rebootTimeHour": @"rebootTimeHour", @"rebootTimeMinute": @"rebootTimeMinute", @"idleTimeoutInSecond": @"idleTimeoutInSecond", @"serialNumber": @"serialNumber", @"udid": @"udid", @"deviceType": @"deviceType", @"devicePower": @"devicePower", @"deviceInterference": @"deviceInterference", @"lastHeartbeatSent": @"lastHeartbeatSent", @"lastDown": @"lastDown", @"lastUp": @"lastUp", @"lastNotificationSent": @"lastNotificationSent", @"health": @"health" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"rebootTimeHour", @"rebootTimeMinute", @"idleTimeoutInSecond", @"serialNumber", @"udid", @"deviceType", @"devicePower", @"deviceInterference", @"lastHeartbeatSent", @"lastDown", @"lastUp", @"lastNotificationSent", @"health"];
  return [optionalProperties containsObject:propertyName];
}

@end
