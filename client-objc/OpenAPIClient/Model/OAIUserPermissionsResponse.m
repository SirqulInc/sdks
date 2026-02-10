#import "OAIUserPermissionsResponse.h"

@implementation OAIUserPermissionsResponse

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"valid": @"valid", @"message": @"message", @"version": @"version", @"serializeNulls": @"serializeNulls", @"startTimeLog": @"startTimeLog", @"errorCode": @"errorCode", @"request": @"request", @"permissions": @"permissions", @"connection": @"connection", @"connectionGroup": @"connectionGroup", @"exclude": @"exclude", @"blocked": @"blocked", @"friendGroup": @"friendGroup", @"permissionableId": @"permissionableId", @"permissionableType": @"permissionableType", @"returning": @"returning" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"valid", @"message", @"version", @"serializeNulls", @"startTimeLog", @"errorCode", @"request", @"permissions", @"connection", @"connectionGroup", @"exclude", @"blocked", @"friendGroup", @"permissionableId", @"permissionableType", @"returning"];
  return [optionalProperties containsObject:propertyName];
}

@end
