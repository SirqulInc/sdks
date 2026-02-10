#import "OAIProfileResponse.h"

@implementation OAIProfileResponse

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"valid": @"valid", @"message": @"message", @"version": @"version", @"serializeNulls": @"serializeNulls", @"startTimeLog": @"startTimeLog", @"errorCode": @"errorCode", @"request": @"request", @"loginAccountId": @"loginAccountId", @"validated": @"validated", @"appInfo": @"appInfo", @"canViewAppInfo": @"canViewAppInfo", @"canViewFriendInfo": @"canViewFriendInfo", @"canViewProfileInfo": @"canViewProfileInfo", @"flagCount": @"flagCount", @"friendInfo": @"friendInfo", @"isBlocked": @"isBlocked", @"isProfileOwner": @"isProfileOwner", @"metFlagThreshold": @"metFlagThreshold", @"profileInfo": @"profileInfo", @"trusted": @"trusted", @"following": @"following", @"friendRequested": @"friendRequested", @"friendRequestPending": @"friendRequestPending", @"blocked": @"blocked", @"flagged": @"flagged", @"profileOwner": @"profileOwner", @"friend": @"friend", @"returning": @"returning" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"valid", @"message", @"version", @"serializeNulls", @"startTimeLog", @"errorCode", @"request", @"loginAccountId", @"validated", @"appInfo", @"canViewAppInfo", @"canViewFriendInfo", @"canViewProfileInfo", @"flagCount", @"friendInfo", @"isBlocked", @"isProfileOwner", @"metFlagThreshold", @"profileInfo", @"trusted", @"following", @"friendRequested", @"friendRequestPending", @"blocked", @"flagged", @"profileOwner", @"friend", @"returning"];
  return [optionalProperties containsObject:propertyName];
}

@end
