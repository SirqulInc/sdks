#import "OAIRoutingResponse.h"

@implementation OAIRoutingResponse

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"valid": @"valid", @"message": @"message", @"version": @"version", @"serializeNulls": @"serializeNulls", @"startTimeLog": @"startTimeLog", @"errorCode": @"errorCode", @"request": @"request", @"items": @"items", @"vehicles": @"vehicles", @"drivers": @"drivers", @"config": @"config", @"error": @"error", @"debug": @"debug", @"startTime": @"startTime", @"endTime": @"endTime", @"responses": @"responses", @"orignalRequest": @"orignalRequest", @"generated": @"generated", @"itineraries": @"itineraries", @"score": @"score", @"loadSize": @"loadSize", @"runtime": @"runtime", @"earliestPickupWindow": @"earliestPickupWindow", @"latestPickupWindow": @"latestPickupWindow", @"returning": @"returning" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"valid", @"message", @"version", @"serializeNulls", @"startTimeLog", @"errorCode", @"request", @"items", @"vehicles", @"drivers", @"config", @"error", @"debug", @"startTime", @"endTime", @"responses", @"orignalRequest", @"generated", @"itineraries", @"score", @"loadSize", @"runtime", @"earliestPickupWindow", @"latestPickupWindow", @"returning"];
  return [optionalProperties containsObject:propertyName];
}

@end
