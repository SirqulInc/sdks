#import "OAIUserActivityResponse.h"

@implementation OAIUserActivityResponse

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"valid": @"valid", @"message": @"message", @"version": @"version", @"serializeNulls": @"serializeNulls", @"startTimeLog": @"startTimeLog", @"errorCode": @"errorCode", @"request": @"request", @"created": @"created", @"latitude": @"latitude", @"longitude": @"longitude", @"tag": @"tag", @"customId": @"customId", @"customType": @"customType", @"userId": @"userId", @"username": @"username", @"appTitle": @"appTitle", @"appId": @"appId", @"appUrl": @"appUrl", @"appDescription": @"appDescription", @"imageURL": @"imageURL", @"profileImage": @"profileImage", @"fields": @"fields", @"_id": @"id", @"customText": @"customText", @"customValue": @"customValue", @"customMessage": @"customMessage", @"returning": @"returning" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"valid", @"message", @"version", @"serializeNulls", @"startTimeLog", @"errorCode", @"request", @"created", @"latitude", @"longitude", @"tag", @"customId", @"customType", @"userId", @"username", @"appTitle", @"appId", @"appUrl", @"appDescription", @"imageURL", @"profileImage", @"fields", @"_id", @"customText", @"customValue", @"customMessage", @"returning"];
  return [optionalProperties containsObject:propertyName];
}

@end
