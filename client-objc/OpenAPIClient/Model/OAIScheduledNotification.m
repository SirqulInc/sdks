#import "OAIScheduledNotification.h"

@implementation OAIScheduledNotification

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"_id": @"id", @"active": @"active", @"valid": @"valid", @"owner": @"owner", @"billableEntity": @"billableEntity", @"type": @"type", @"status": @"status", @"templateType": @"templateType", @"name": @"name", @"errorMessage": @"errorMessage", @"message": @"message", @"payload": @"payload", @"contentName": @"contentName", @"contentId": @"contentId", @"contentType": @"contentType", @"parentId": @"parentId", @"parentType": @"parentType", @"application": @"application", @"connectionGroups": @"connectionGroups", @"accountIds": @"accountIds", @"audiences": @"audiences", @"report": @"report", @"reportParams": @"reportParams", @"endpointURL": @"endpointURL", @"lastActionDate": @"lastActionDate", @"scheduledDate": @"scheduledDate", @"startDate": @"startDate", @"endDate": @"endDate", @"cronExpression": @"cronExpression", @"deliverEstimate": @"deliverEstimate", @"deliverCount": @"deliverCount", @"deliverFailed": @"deliverFailed", @"deliverTotal": @"deliverTotal", @"deliverStart": @"deliverStart", @"deliverLimit": @"deliverLimit", @"processingTime": @"processingTime", @"sendingTime": @"sendingTime", @"groupingId": @"groupingId", @"conditionalInput": @"conditionalInput", @"conditionalCode": @"conditionalCode", @"publicPermissions": @"publicPermissions", @"userPermissions": @"userPermissions", @"visibility": @"visibility", @"approvalStatus": @"approvalStatus", @"contentAsset": @"contentAsset" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"_id", @"active", @"valid", @"owner", @"billableEntity", @"type", @"status", @"templateType", @"name", @"errorMessage", @"message", @"payload", @"contentName", @"contentId", @"contentType", @"parentId", @"parentType", @"application", @"connectionGroups", @"accountIds", @"audiences", @"report", @"reportParams", @"endpointURL", @"lastActionDate", @"scheduledDate", @"startDate", @"endDate", @"cronExpression", @"deliverEstimate", @"deliverCount", @"deliverFailed", @"deliverTotal", @"deliverStart", @"deliverLimit", @"processingTime", @"sendingTime", @"groupingId", @"conditionalInput", @"conditionalCode", @"publicPermissions", @"userPermissions", @"visibility", @"approvalStatus", @"contentAsset"];
  return [optionalProperties containsObject:propertyName];
}

@end
