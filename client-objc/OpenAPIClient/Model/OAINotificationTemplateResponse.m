#import "OAINotificationTemplateResponse.h"

@implementation OAINotificationTemplateResponse

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"notificationTemplateId": @"notificationTemplateId", @"event": @"event", @"conduit": @"conduit", @"title": @"title", @"body": @"body", @"publicBody": @"publicBody", @"application": @"application", @"updated": @"updated", @"created": @"created", @"tags": @"tags" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"notificationTemplateId", @"event", @"conduit", @"title", @"body", @"publicBody", @"application", @"updated", @"created", @"tags"];
  return [optionalProperties containsObject:propertyName];
}

@end
