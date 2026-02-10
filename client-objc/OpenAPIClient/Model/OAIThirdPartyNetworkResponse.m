#import "OAIThirdPartyNetworkResponse.h"

@implementation OAIThirdPartyNetworkResponse

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"updated": @"updated", @"created": @"created", @"active": @"active", @"name": @"name", @"_description": @"description", @"networkUID": @"networkUID", @"network": @"network", @"introspectionMethod": @"introspectionMethod", @"enableIntrospection": @"enableIntrospection", @"introspectionURL": @"introspectionURL", @"introspectionParams": @"introspectionParams", @"requiredRootField": @"requiredRootField" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"updated", @"created", @"active", @"name", @"_description", @"networkUID", @"network", @"introspectionMethod", @"enableIntrospection", @"introspectionURL", @"introspectionParams", @"requiredRootField"];
  return [optionalProperties containsObject:propertyName];
}

@end
