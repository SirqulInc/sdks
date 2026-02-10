#import "OAILocationResponse.h"

@implementation OAILocationResponse

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"valid": @"valid", @"message": @"message", @"version": @"version", @"serializeNulls": @"serializeNulls", @"startTimeLog": @"startTimeLog", @"errorCode": @"errorCode", @"request": @"request", @"_id": @"id", @"getDistanceMiles": @"get_distance_miles", @"zip": @"zip", @"name": @"name", @"latitude": @"latitude", @"longitude": @"longitude", @"getSource": @"get_source", @"type": @"type", @"returning": @"returning" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"valid", @"message", @"version", @"serializeNulls", @"startTimeLog", @"errorCode", @"request", @"_id", @"getDistanceMiles", @"zip", @"name", @"latitude", @"longitude", @"getSource", @"type", @"returning"];
  return [optionalProperties containsObject:propertyName];
}

@end
