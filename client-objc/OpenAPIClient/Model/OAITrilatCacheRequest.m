#import "OAITrilatCacheRequest.h"

@implementation OAITrilatCacheRequest

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"udid": @"udid", @"sourceTime": @"sourceTime", @"minimumSampleSize": @"minimumSampleSize", @"samples": @"samples" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"udid", @"sourceTime", @"minimumSampleSize", @"samples"];
  return [optionalProperties containsObject:propertyName];
}

@end
