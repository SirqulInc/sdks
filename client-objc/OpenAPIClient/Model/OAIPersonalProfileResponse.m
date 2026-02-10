#import "OAIPersonalProfileResponse.h"

@implementation OAIPersonalProfileResponse

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"valid": @"valid", @"message": @"message", @"version": @"version", @"serializeNulls": @"serializeNulls", @"startTimeLog": @"startTimeLog", @"errorCode": @"errorCode", @"request": @"request", @"preferredGender": @"preferredGender", @"preferredEthnicity": @"preferredEthnicity", @"preferredEducation": @"preferredEducation", @"preferredEducationIndex": @"preferredEducationIndex", @"preferredBodyType": @"preferredBodyType", @"preferredMinAge": @"preferredMinAge", @"preferredMaxAge": @"preferredMaxAge", @"preferredMinHeight": @"preferredMinHeight", @"preferredMaxHeight": @"preferredMaxHeight", @"preferredLocationRange": @"preferredLocationRange", @"gender": @"gender", @"hometown": @"hometown", @"height": @"height", @"heightIndex": @"heightIndex", @"ethnicity": @"ethnicity", @"bodyType": @"bodyType", @"children": @"children", @"companionship": @"companionship", @"companionshipIndex": @"companionshipIndex", @"drink": @"drink", @"education": @"education", @"educationIndex": @"educationIndex", @"maritalStatus": @"maritalStatus", @"smoke": @"smoke", @"religion": @"religion", @"birthday": @"birthday", @"returning": @"returning" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"valid", @"message", @"version", @"serializeNulls", @"startTimeLog", @"errorCode", @"request", @"preferredGender", @"preferredEthnicity", @"preferredEducation", @"preferredEducationIndex", @"preferredBodyType", @"preferredMinAge", @"preferredMaxAge", @"preferredMinHeight", @"preferredMaxHeight", @"preferredLocationRange", @"gender", @"hometown", @"height", @"heightIndex", @"ethnicity", @"bodyType", @"children", @"companionship", @"companionshipIndex", @"drink", @"education", @"educationIndex", @"maritalStatus", @"smoke", @"religion", @"birthday", @"returning"];
  return [optionalProperties containsObject:propertyName];
}

@end
