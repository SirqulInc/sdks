#import "OAICargoType.h"

@implementation OAICargoType

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"_id": @"id", @"active": @"active", @"valid": @"valid", @"business": @"business", @"hub": @"hub", @"name": @"name", @"width": @"width", @"height": @"height", @"depth": @"depth", @"volume": @"volume", @"weight": @"weight", @"loadTime": @"loadTime", @"palletizable": @"palletizable", @"palletRatio": @"palletRatio", @"adminOnly": @"adminOnly" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"_id", @"active", @"valid", @"business", @"hub", @"name", @"width", @"height", @"depth", @"volume", @"weight", @"loadTime", @"palletizable", @"palletRatio", @"adminOnly"];
  return [optionalProperties containsObject:propertyName];
}

@end
