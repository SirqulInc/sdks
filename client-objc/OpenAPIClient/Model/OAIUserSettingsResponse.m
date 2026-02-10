#import "OAIUserSettingsResponse.h"

@implementation OAIUserSettingsResponse

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"showAsZipcode": @"showAsZipcode", @"showExactLocation": @"showExactLocation", @"showOthersExactLocation": @"showOthersExactLocation", @"suggestionCount": @"suggestionCount", @"suggestionTimeFrame": @"suggestionTimeFrame", @"suggestionMethod": @"suggestionMethod", @"notifications": @"notifications", @"publicShowFriendInfo": @"publicShowFriendInfo", @"publicShowGameInfo": @"publicShowGameInfo", @"publicShowProfileInfo": @"publicShowProfileInfo", @"favoriteVisibility": @"favoriteVisibility" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"showAsZipcode", @"showExactLocation", @"showOthersExactLocation", @"suggestionCount", @"suggestionTimeFrame", @"suggestionMethod", @"notifications", @"publicShowFriendInfo", @"publicShowGameInfo", @"publicShowProfileInfo", @"favoriteVisibility"];
  return [optionalProperties containsObject:propertyName];
}

@end
