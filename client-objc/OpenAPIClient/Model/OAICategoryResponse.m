#import "OAICategoryResponse.h"

@implementation OAICategoryResponse

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"categoryId": @"categoryId", @"name": @"name", @"display": @"display", @"subCategoryCount": @"subCategoryCount", @"parentId": @"parentId", @"parentName": @"parentName", @"_description": @"description", @"active": @"active", @"asset": @"asset", @"favoriteId": @"favoriteId", @"favorite": @"favorite", @"applicationId": @"applicationId", @"type": @"type", @"externalId": @"externalId", @"externalType": @"externalType" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"categoryId", @"name", @"display", @"subCategoryCount", @"parentId", @"parentName", @"_description", @"active", @"asset", @"favoriteId", @"favorite", @"applicationId", @"type", @"externalId", @"externalType"];
  return [optionalProperties containsObject:propertyName];
}

@end
