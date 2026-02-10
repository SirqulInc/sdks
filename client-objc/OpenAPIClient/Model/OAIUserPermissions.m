#import "OAIUserPermissions.h"

@implementation OAIUserPermissions

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"_id": @"id", @"active": @"active", @"valid": @"valid", @"permissionableType": @"permissionableType", @"permissionableId": @"permissionableId", @"connectionGroup": @"connectionGroup", @"friendGroup": @"friendGroup", @"connection": @"connection", @"permissions": @"permissions", @"exclude": @"exclude", @"blocked": @"blocked", @"owner": @"owner" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"_id", @"active", @"valid", @"permissionableType", @"permissionableId", @"connectionGroup", @"friendGroup", @"connection", @"permissions", @"exclude", @"blocked", @"owner"];
  return [optionalProperties containsObject:propertyName];
}

@end
