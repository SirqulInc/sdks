#import "OAIFilterTreeResponse.h"

@implementation OAIFilterTreeResponse

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"filterId": @"filterId", @"name": @"name", @"display": @"display", @"subFilterCount": @"subFilterCount", @"parentId": @"parentId", @"_description": @"description", @"active": @"active", @"externalId": @"externalId", @"externalType": @"externalType", @"children": @"children" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"filterId", @"name", @"display", @"subFilterCount", @"parentId", @"_description", @"active", @"externalId", @"externalType", @"children"];
  return [optionalProperties containsObject:propertyName];
}

@end
