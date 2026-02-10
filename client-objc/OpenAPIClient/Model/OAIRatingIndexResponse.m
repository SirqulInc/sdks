#import "OAIRatingIndexResponse.h"

@implementation OAIRatingIndexResponse

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"ratingIndexId": @"ratingIndexId", @"ratingCount": @"ratingCount", @"ratingAverage": @"ratingAverage", @"value": @"value", @"display": @"display", @"ratableType": @"ratableType", @"ratableId": @"ratableId", @"category": @"category", @"ratable": @"ratable", @"secondaryType": @"secondaryType" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"ratingIndexId", @"ratingCount", @"ratingAverage", @"value", @"display", @"ratableType", @"ratableId", @"category", @"ratable", @"secondaryType"];
  return [optionalProperties containsObject:propertyName];
}

@end
