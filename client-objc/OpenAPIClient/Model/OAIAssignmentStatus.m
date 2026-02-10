#import "OAIAssignmentStatus.h"

@implementation OAIAssignmentStatus

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"_id": @"id", @"active": @"active", @"valid": @"valid", @"assignment": @"assignment", @"creator": @"creator", @"toDo": @"toDo", @"connection": @"connection", @"method": @"method", @"status": @"status", @"closure": @"closure", @"message": @"message", @"followUp": @"followUp", @"notification": @"notification" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"_id", @"active", @"valid", @"assignment", @"creator", @"toDo", @"connection", @"method", @"status", @"closure", @"message", @"followUp", @"notification"];
  return [optionalProperties containsObject:propertyName];
}

@end
