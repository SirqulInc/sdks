#import "OAIRatingResponse.h"

@implementation OAIRatingResponse

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"ratingId": @"ratingId", @"ratingValue": @"ratingValue", @"latitude": @"latitude", @"longitude": @"longitude", @"locationDescription": @"locationDescription", @"category": @"category", @"owner": @"owner" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"ratingId", @"ratingValue", @"latitude", @"longitude", @"locationDescription", @"category", @"owner"];
  return [optionalProperties containsObject:propertyName];
}

@end
