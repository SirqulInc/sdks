#import "OAIAssignmentResponse.h"

@implementation OAIAssignmentResponse

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"assignmentId": @"assignmentId", @"name": @"name", @"_description": @"description", @"active": @"active", @"created": @"created", @"updated": @"updated", @"assignee": @"assignee", @"creator": @"creator", @"lastReportedBy": @"lastReportedBy", @"location": @"location", @"currentStatus": @"currentStatus", @"currentStatusType": @"currentStatusType" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"assignmentId", @"name", @"_description", @"active", @"created", @"updated", @"assignee", @"creator", @"lastReportedBy", @"location", @"currentStatus", @"currentStatusType"];
  return [optionalProperties containsObject:propertyName];
}

@end
