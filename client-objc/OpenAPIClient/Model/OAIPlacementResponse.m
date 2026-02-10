#import "OAIPlacementResponse.h"

@implementation OAIPlacementResponse

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"placementId": @"placementId", @"name": @"name", @"_description": @"description", @"size": @"size", @"height": @"height", @"width": @"width", @"refreshInterval": @"refreshInterval", @"appName": @"appName", @"appKey": @"appKey", @"active": @"active", @"defaultImage": @"defaultImage" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"placementId", @"name", @"_description", @"size", @"height", @"width", @"refreshInterval", @"appName", @"appKey", @"active", @"defaultImage"];
  return [optionalProperties containsObject:propertyName];
}

@end
