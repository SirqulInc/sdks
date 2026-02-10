#import "OAIMedia.h"

@implementation OAIMedia

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"mediaType": @"mediaType", @"condition": @"condition", @"isbn": @"isbn", @"asin": @"asin", @"catalogNumbers": @"catalogNumbers", @"duration": @"duration", @"author": @"author", @"releaseDate": @"releaseDate", @"availabilityDate": @"availabilityDate", @"parentalRating": @"parentalRating", @"collections": @"collections", @"collectionCount": @"collectionCount" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"mediaType", @"condition", @"isbn", @"asin", @"catalogNumbers", @"duration", @"author", @"releaseDate", @"availabilityDate", @"parentalRating", @"collections", @"collectionCount"];
  return [optionalProperties containsObject:propertyName];
}

@end
