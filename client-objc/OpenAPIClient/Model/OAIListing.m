#import "OAIListing.h"

@implementation OAIListing

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"_id": @"id", @"active": @"active", @"valid": @"valid", @"owner": @"owner", @"name": @"name", @"_description": @"description", @"start": @"start", @"end": @"end", @"locationName": @"locationName", @"locationDescription": @"locationDescription", @"participants": @"participants", @"externalId": @"externalId", @"externalGroupId": @"externalGroupId", @"filters": @"filters", @"private": @"private" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"_id", @"active", @"valid", @"owner", @"name", @"_description", @"start", @"end", @"locationName", @"locationDescription", @"participants", @"externalId", @"externalGroupId", @"filters", @"private"];
  return [optionalProperties containsObject:propertyName];
}

@end
