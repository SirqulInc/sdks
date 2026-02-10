#import "OAIScheduledNotificationShortResponse.h"

@implementation OAIScheduledNotificationShortResponse

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"scheduledNotificationId": @"scheduledNotificationId", @"active": @"active", @"status": @"status", @"type": @"type", @"name": @"name", @"message": @"message", @"groupingId": @"groupingId", @"scheduledDate": @"scheduledDate", @"startDate": @"startDate", @"endDate": @"endDate" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"scheduledNotificationId", @"active", @"status", @"type", @"name", @"message", @"groupingId", @"scheduledDate", @"startDate", @"endDate"];
  return [optionalProperties containsObject:propertyName];
}

@end
