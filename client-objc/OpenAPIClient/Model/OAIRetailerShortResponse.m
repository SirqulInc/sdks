#import "OAIRetailerShortResponse.h"

@implementation OAIRetailerShortResponse

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"retailerId": @"retailerId", @"name": @"name", @"facebookUrl": @"facebookUrl", @"twitterUrl": @"twitterUrl", @"active": @"active", @"contact": @"contact", @"logo": @"logo", @"picture1": @"picture1", @"picture2": @"picture2", @"latitude": @"latitude", @"longitude": @"longitude", @"visibility": @"visibility" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"retailerId", @"name", @"facebookUrl", @"twitterUrl", @"active", @"contact", @"logo", @"picture1", @"picture2", @"latitude", @"longitude", @"visibility"];
  return [optionalProperties containsObject:propertyName];
}

@end
