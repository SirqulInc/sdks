#import "OAIAccountProfileInfo.h"

@implementation OAIAccountProfileInfo

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"_id": @"id", @"created": @"created", @"updated": @"updated", @"active": @"active", @"valid": @"valid", @"account": @"account", @"gender": @"gender", @"birthday": @"birthday", @"ageGroup": @"ageGroup", @"preferredMinAge": @"preferredMinAge", @"preferredMaxAge": @"preferredMaxAge", @"preferredMinHeight": @"preferredMinHeight", @"preferredMaxHeight": @"preferredMaxHeight", @"preferredGender": @"preferredGender", @"preferredEducation": @"preferredEducation", @"preferredEducationIndex": @"preferredEducationIndex", @"preferredBodyType": @"preferredBodyType", @"preferredEthnicity": @"preferredEthnicity", @"preferredLocation": @"preferredLocation", @"preferredLocationRange": @"preferredLocationRange", @"height": @"height", @"heightIndex": @"heightIndex", @"ethnicity": @"ethnicity", @"bodyType": @"bodyType", @"maritalStatus": @"maritalStatus", @"children": @"children", @"religion": @"religion", @"education": @"education", @"educationIndex": @"educationIndex", @"smoke": @"smoke", @"drink": @"drink", @"companionship": @"companionship", @"companionshipIndex": @"companionshipIndex", @"developmentPlatforms": @"developmentPlatforms", @"matchToken": @"matchToken", @"matchString": @"matchString", @"noneZeroMatchToken": @"noneZeroMatchToken", @"preferredMaxBirthday": @"preferredMaxBirthday", @"preferredMinBirthday": @"preferredMinBirthday" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"_id", @"created", @"updated", @"active", @"valid", @"account", @"gender", @"birthday", @"ageGroup", @"preferredMinAge", @"preferredMaxAge", @"preferredMinHeight", @"preferredMaxHeight", @"preferredGender", @"preferredEducation", @"preferredEducationIndex", @"preferredBodyType", @"preferredEthnicity", @"preferredLocation", @"preferredLocationRange", @"height", @"heightIndex", @"ethnicity", @"bodyType", @"maritalStatus", @"children", @"religion", @"education", @"educationIndex", @"smoke", @"drink", @"companionship", @"companionshipIndex", @"developmentPlatforms", @"matchToken", @"matchString", @"noneZeroMatchToken", @"preferredMaxBirthday", @"preferredMinBirthday"];
  return [optionalProperties containsObject:propertyName];
}

@end
