#import "OAIRetailerLocationShortResponse.h"

@implementation OAIRetailerLocationShortResponse

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"retailerLocationId": @"retailerLocationId", @"name": @"name", @"contact": @"contact", @"latitude": @"latitude", @"longitude": @"longitude", @"active": @"active", @"favoriteId": @"favoriteId", @"favorite": @"favorite" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"retailerLocationId", @"name", @"contact", @"latitude", @"longitude", @"active", @"favoriteId", @"favorite"];
  return [optionalProperties containsObject:propertyName];
}

@end
