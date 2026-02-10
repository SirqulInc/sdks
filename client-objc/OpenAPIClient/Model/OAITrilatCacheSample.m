#import "OAITrilatCacheSample.h"

@implementation OAITrilatCacheSample

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"avatarId": @"avatarId", @"deviceId": @"deviceId", @"rssi": @"rssi", @"filteredRssi": @"filteredRssi", @"time": @"time", @"networkName": @"networkName", @"randomizedId": @"randomizedId", @"deviceSignature": @"deviceSignature", @"alternateId": @"alternateId", @"type": @"type", @"probeType": @"probeType", @"avgRssi": @"avgRssi" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"avatarId", @"deviceId", @"rssi", @"filteredRssi", @"time", @"networkName", @"randomizedId", @"deviceSignature", @"alternateId", @"type", @"probeType", @"avgRssi"];
  return [optionalProperties containsObject:propertyName];
}

@end
