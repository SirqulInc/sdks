#import "OAIAudienceResponse.h"

@implementation OAIAudienceResponse

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"_id": @"id", @"name": @"name", @"latitude": @"latitude", @"longitude": @"longitude", @"radius": @"radius", @"sendSuggestion": @"sendSuggestion", @"_description": @"description", @"active": @"active", @"searchTags": @"searchTags", @"ownerId": @"ownerId", @"gender": @"gender", @"ageGroups": @"ageGroups", @"categories": @"categories", @"applications": @"applications", @"devices": @"devices", @"gameExperienceLevel": @"gameExperienceLevel", @"locations": @"locations", @"associateType": @"associateType", @"associateId": @"associateId", @"associateDescription": @"associateDescription" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"_id", @"name", @"latitude", @"longitude", @"radius", @"sendSuggestion", @"_description", @"active", @"searchTags", @"ownerId", @"gender", @"ageGroups", @"categories", @"applications", @"devices", @"gameExperienceLevel", @"locations", @"associateType", @"associateId", @"associateDescription"];
  return [optionalProperties containsObject:propertyName];
}

@end
