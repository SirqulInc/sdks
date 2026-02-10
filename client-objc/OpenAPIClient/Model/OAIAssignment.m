#import "OAIAssignment.h"

@implementation OAIAssignment

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"_id": @"id", @"active": @"active", @"valid": @"valid", @"name": @"name", @"_description": @"description", @"assignee": @"assignee", @"retailerLocation": @"retailerLocation", @"creator": @"creator", @"lastUpdatedBy": @"lastUpdatedBy", @"currentStatus": @"currentStatus", @"currentStatusType": @"currentStatusType", @"assets": @"assets", @"notes": @"notes", @"publicPermissions": @"publicPermissions", @"userPermissions": @"userPermissions", @"visibility": @"visibility", @"statuses": @"statuses", @"application": @"application", @"approvalStatus": @"approvalStatus", @"contentName": @"contentName", @"contentAsset": @"contentAsset", @"owner": @"owner", @"noteCount": @"noteCount" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"_id", @"active", @"valid", @"name", @"_description", @"assignee", @"retailerLocation", @"creator", @"lastUpdatedBy", @"currentStatus", @"currentStatusType", @"assets", @"notes", @"publicPermissions", @"userPermissions", @"visibility", @"statuses", @"application", @"approvalStatus", @"contentName", @"contentAsset", @"owner", @"noteCount"];
  return [optionalProperties containsObject:propertyName];
}

@end
