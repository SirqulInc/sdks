#import "OAILoadShortResponse.h"

@implementation OAILoadShortResponse

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"_id": @"id", @"name": @"name", @"size": @"size", @"loadingTime": @"loadingTime", @"separatePayloads": @"separatePayloads", @"pickup": @"pickup", @"dropoff": @"dropoff" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"_id", @"name", @"size", @"loadingTime", @"separatePayloads", @"pickup", @"dropoff"];
  return [optionalProperties containsObject:propertyName];
}

@end
