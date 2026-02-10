#import "OAIConsumerInviteResponse.h"

@implementation OAIConsumerInviteResponse

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"valid": @"valid", @"message": @"message", @"version": @"version", @"serializeNulls": @"serializeNulls", @"startTimeLog": @"startTimeLog", @"errorCode": @"errorCode", @"request": @"request", @"inviterId": @"inviterId", @"inviter": @"inviter", @"connection": @"connection", @"inviteText": @"inviteText", @"token": @"token", @"albumCoverUrl": @"albumCoverUrl", @"albumTitle": @"albumTitle", @"appName": @"appName", @"welcomeText": @"welcomeText", @"application": @"application", @"retailerLocation": @"retailerLocation", @"offer": @"offer", @"album": @"album", @"returning": @"returning" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"valid", @"message", @"version", @"serializeNulls", @"startTimeLog", @"errorCode", @"request", @"inviterId", @"inviter", @"connection", @"inviteText", @"token", @"albumCoverUrl", @"albumTitle", @"appName", @"welcomeText", @"application", @"retailerLocation", @"offer", @"album", @"returning"];
  return [optionalProperties containsObject:propertyName];
}

@end
