#import "OAINotificationMessageResponse.h"

@implementation OAINotificationMessageResponse

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"sender": @"sender", @"event": @"event", @"notificationMessage": @"notificationMessage", @"created": @"created", @"hasRead": @"hasRead", @"contentId": @"contentId", @"contentType": @"contentType", @"contentName": @"contentName", @"parentId": @"parentId", @"parentType": @"parentType", @"actionCategory": @"actionCategory", @"thumbnailURL": @"thumbnailURL", @"coverURL": @"coverURL" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"sender", @"event", @"notificationMessage", @"created", @"hasRead", @"contentId", @"contentType", @"contentName", @"parentId", @"parentType", @"actionCategory", @"thumbnailURL", @"coverURL"];
  return [optionalProperties containsObject:propertyName];
}

@end
