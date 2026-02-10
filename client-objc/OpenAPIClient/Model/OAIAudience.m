#import "OAIAudience.h"

@implementation OAIAudience

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"_id": @"id", @"active": @"active", @"valid": @"valid", @"latitude": @"latitude", @"longitude": @"longitude", @"locationDescription": @"locationDescription", @"name": @"name", @"display": @"display", @"_description": @"description", @"owner": @"owner", @"gender": @"gender", @"ageGroups": @"ageGroups", @"gameExperienceLevel": @"gameExperienceLevel", @"deviceVersionRanges": @"deviceVersionRanges", @"categories": @"categories", @"applications": @"applications", @"radius": @"radius", @"locations": @"locations", @"sendSuggestion": @"sendSuggestion", @"startTimeOffset": @"startTimeOffset", @"endTimeOffset": @"endTimeOffset", @"target": @"target", @"associateContentName": @"associateContentName", @"polygon": @"polygon", @"associateType": @"associateType", @"associateId": @"associateId" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"_id", @"active", @"valid", @"latitude", @"longitude", @"locationDescription", @"name", @"display", @"_description", @"owner", @"gender", @"ageGroups", @"gameExperienceLevel", @"deviceVersionRanges", @"categories", @"applications", @"radius", @"locations", @"sendSuggestion", @"startTimeOffset", @"endTimeOffset", @"target", @"associateContentName", @"polygon", @"associateType", @"associateId"];
  return [optionalProperties containsObject:propertyName];
}

@end
