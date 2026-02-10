#import "OAIConnectionGroupResponse.h"

@implementation OAIConnectionGroupResponse

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"valid": @"valid", @"message": @"message", @"version": @"version", @"serializeNulls": @"serializeNulls", @"startTimeLog": @"startTimeLog", @"errorCode": @"errorCode", @"request": @"request", @"connectionGroupId": @"connectionGroupId", @"name": @"name", @"groupType": @"groupType", @"thumbnailURL": @"thumbnailURL", @"subGroups": @"subGroups", @"_description": @"description", @"active": @"active", @"connectionCount": @"connectionCount", @"connections": @"connections", @"groupPermissions": @"groupPermissions", @"ownerId": @"ownerId", @"returning": @"returning" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"valid", @"message", @"version", @"serializeNulls", @"startTimeLog", @"errorCode", @"request", @"connectionGroupId", @"name", @"groupType", @"thumbnailURL", @"subGroups", @"_description", @"active", @"connectionCount", @"connections", @"groupPermissions", @"ownerId", @"returning"];
  return [optionalProperties containsObject:propertyName];
}

@end
