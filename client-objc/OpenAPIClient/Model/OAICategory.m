#import "OAICategory.h"

@implementation OAICategory

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"_id": @"id", @"active": @"active", @"valid": @"valid", @"name": @"name", @"shortName": @"shortName", @"_description": @"description", @"type": @"type", @"application": @"application", @"parent": @"parent", @"children": @"children", @"childrenCount": @"childrenCount", @"display": @"display", @"sqootSlug": @"sqootSlug", @"asset": @"asset", @"externalId": @"externalId", @"externalType": @"externalType", @"favoriteCount": @"favoriteCount", @"root": @"root", @"tree": @"tree", @"parentName": @"parentName", @"parentId": @"parentId", @"applicationId": @"applicationId", @"secondaryType": @"secondaryType" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"_id", @"active", @"valid", @"name", @"shortName", @"_description", @"type", @"application", @"parent", @"children", @"childrenCount", @"display", @"sqootSlug", @"asset", @"externalId", @"externalType", @"favoriteCount", @"root", @"tree", @"parentName", @"parentId", @"applicationId", @"secondaryType"];
  return [optionalProperties containsObject:propertyName];
}

@end
