#import "OAIProductResponse.h"

@implementation OAIProductResponse

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"brand": @"brand", @"productType": @"productType", @"condition": @"condition", @"isbn": @"isbn", @"asin": @"asin", @"catalogNumbers": @"catalogNumbers", @"department": @"department", @"features": @"features", @"minimumPrice": @"minimumPrice", @"width": @"width", @"height": @"height", @"depth": @"depth", @"weight": @"weight", @"unit": @"unit", @"studio": @"studio", @"parentalRating": @"parentalRating", @"publishDate": @"publishDate", @"availabilityDate": @"availabilityDate", @"size": @"size" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"brand", @"productType", @"condition", @"isbn", @"asin", @"catalogNumbers", @"department", @"features", @"minimumPrice", @"width", @"height", @"depth", @"weight", @"unit", @"studio", @"parentalRating", @"publishDate", @"availabilityDate", @"size"];
  return [optionalProperties containsObject:propertyName];
}

@end
