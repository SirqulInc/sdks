#import "OAITaskResponse.h"

@implementation OAITaskResponse

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"scheduledNotificationId": @"scheduledNotificationId", @"active": @"active", @"status": @"status", @"type": @"type", @"name": @"name", @"message": @"message", @"groupingId": @"groupingId", @"scheduledDate": @"scheduledDate", @"startDate": @"startDate", @"endDate": @"endDate", @"owner": @"owner", @"billableEntity": @"billableEntity", @"contentId": @"contentId", @"contentName": @"contentName", @"contentType": @"contentType", @"parentId": @"parentId", @"parentType": @"parentType", @"application": @"application", @"targetId": @"targetId", @"targetName": @"targetName", @"targetType": @"targetType", @"targetParams": @"targetParams", @"deliverEstimate": @"deliverEstimate", @"deliverCount": @"deliverCount", @"deliverTotal": @"deliverTotal", @"deliverFailed": @"deliverFailed", @"processingTime": @"processingTime", @"sendingTime": @"sendingTime", @"updated": @"updated", @"created": @"created", @"cronExpression": @"cronExpression", @"endpointURL": @"endpointURL", @"payload": @"payload", @"conditionalInput": @"conditionalInput", @"connectionAccountIds": @"connectionAccountIds", @"templateType": @"templateType", @"groupedTypes": @"groupedTypes", @"taskId": @"taskId" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"scheduledNotificationId", @"active", @"status", @"type", @"name", @"message", @"groupingId", @"scheduledDate", @"startDate", @"endDate", @"owner", @"billableEntity", @"contentId", @"contentName", @"contentType", @"parentId", @"parentType", @"application", @"targetId", @"targetName", @"targetType", @"targetParams", @"deliverEstimate", @"deliverCount", @"deliverTotal", @"deliverFailed", @"processingTime", @"sendingTime", @"updated", @"created", @"cronExpression", @"endpointURL", @"payload", @"conditionalInput", @"connectionAccountIds", @"templateType", @"groupedTypes", @"taskId"];
  return [optionalProperties containsObject:propertyName];
}

@end
