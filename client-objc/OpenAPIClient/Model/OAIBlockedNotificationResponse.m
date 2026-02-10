#import "OAIBlockedNotificationResponse.h"

@implementation OAIBlockedNotificationResponse

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"blockedNotificationId": @"blockedNotificationId", @"created": @"created", @"event": @"event", @"conduit": @"conduit", @"customType": @"customType", @"contentType": @"contentType", @"contentId": @"contentId", @"searchTags": @"searchTags", @"blocked": @"blocked", @"deleted": @"deleted" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"blockedNotificationId", @"created", @"event", @"conduit", @"customType", @"contentType", @"contentId", @"searchTags", @"blocked", @"deleted"];
  return [optionalProperties containsObject:propertyName];
}

@end
