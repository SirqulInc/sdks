#import "OAIGameListResponse.h"

@implementation OAIGameListResponse

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"start": @"start", @"limit": @"limit", @"countTotal": @"countTotal", @"items": @"items", @"hasMoreResults": @"hasMoreResults", @"count": @"count" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"start", @"limit", @"countTotal", @"items", @"hasMoreResults", @"count"];
  return [optionalProperties containsObject:propertyName];
}

@end
