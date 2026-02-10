#import "OAIAssignmentStatusResponse.h"

@implementation OAIAssignmentStatusResponse

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"assignmentStatusId": @"assignmentStatusId", @"active": @"active", @"toDo": @"toDo", @"connection": @"connection", @"method": @"method", @"status": @"status", @"closure": @"closure", @"message": @"message", @"followUp": @"followUp", @"created": @"created", @"updated": @"updated", @"notification": @"notification" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"assignmentStatusId", @"active", @"toDo", @"connection", @"method", @"status", @"closure", @"message", @"followUp", @"created", @"updated", @"notification"];
  return [optionalProperties containsObject:propertyName];
}

@end
