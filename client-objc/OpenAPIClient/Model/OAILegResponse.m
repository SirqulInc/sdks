#import "OAILegResponse.h"

@implementation OAILegResponse

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"valid": @"valid", @"message": @"message", @"version": @"version", @"serializeNulls": @"serializeNulls", @"startTimeLog": @"startTimeLog", @"errorCode": @"errorCode", @"request": @"request", @"appKey": @"appKey", @"distance": @"distance", @"duration": @"duration", @"startLatitude": @"startLatitude", @"startLongitude": @"startLongitude", @"startAltitude": @"startAltitude", @"startDate": @"startDate", @"endLatitude": @"endLatitude", @"endLongitude": @"endLongitude", @"endAltitude": @"endAltitude", @"endDate": @"endDate", @"created": @"created", @"tags": @"tags", @"deviceId": @"deviceId", @"accountId": @"accountId", @"deviceSignature": @"deviceSignature", @"parentAccountId": @"parentAccountId", @"steps": @"steps", @"type": @"type", @"returning": @"returning" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"valid", @"message", @"version", @"serializeNulls", @"startTimeLog", @"errorCode", @"request", @"appKey", @"distance", @"duration", @"startLatitude", @"startLongitude", @"startAltitude", @"startDate", @"endLatitude", @"endLongitude", @"endAltitude", @"endDate", @"created", @"tags", @"deviceId", @"accountId", @"deviceSignature", @"parentAccountId", @"steps", @"type", @"returning"];
  return [optionalProperties containsObject:propertyName];
}

@end
