#import "OAINotificationRecipientResponse.h"

@implementation OAINotificationRecipientResponse

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"accountId": @"accountId", @"locationDisplay": @"locationDisplay", @"display": @"display", @"username": @"username", @"accountType": @"accountType", @"profileImage": @"profileImage", @"gender": @"gender", @"contactEmail": @"contactEmail", @"applicationId": @"applicationId", @"appName": @"appName", @"hasApns": @"hasApns", @"hasGcm": @"hasGcm", @"hasEmail": @"hasEmail", @"hasSms": @"hasSms" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"accountId", @"locationDisplay", @"display", @"username", @"accountType", @"profileImage", @"gender", @"contactEmail", @"applicationId", @"appName", @"hasApns", @"hasGcm", @"hasEmail", @"hasSms"];
  return [optionalProperties containsObject:propertyName];
}

@end
