#import "OAIApplicationMiniResponse.h"

@implementation OAIApplicationMiniResponse

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"valid": @"valid", @"message": @"message", @"version": @"version", @"serializeNulls": @"serializeNulls", @"startTimeLog": @"startTimeLog", @"errorCode": @"errorCode", @"request": @"request", @"applicationId": @"applicationId", @"appKey": @"appKey", @"title": @"title", @"currentBuildVersion": @"currentBuildVersion", @"currentApiVersion": @"currentApiVersion", @"appIcon": @"appIcon", @"appLogo": @"appLogo", @"active": @"active", @"returning": @"returning" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"valid", @"message", @"version", @"serializeNulls", @"startTimeLog", @"errorCode", @"request", @"applicationId", @"appKey", @"title", @"currentBuildVersion", @"currentApiVersion", @"appIcon", @"appLogo", @"active", @"returning"];
  return [optionalProperties containsObject:propertyName];
}

@end
