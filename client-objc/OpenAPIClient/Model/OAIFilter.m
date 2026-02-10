#import "OAIFilter.h"

@implementation OAIFilter

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"_id": @"id", @"active": @"active", @"valid": @"valid", @"application": @"application", @"name": @"name", @"_description": @"description", @"parent": @"parent", @"children": @"children", @"display": @"display", @"externalId": @"externalId", @"externalType": @"externalType", @"tree": @"tree" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"_id", @"active", @"valid", @"application", @"name", @"_description", @"parent", @"children", @"display", @"externalId", @"externalType", @"tree"];
  return [optionalProperties containsObject:propertyName];
}

@end
