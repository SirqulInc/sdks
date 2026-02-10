#import "OAISubscriptionOptionResponse.h"

@implementation OAISubscriptionOptionResponse

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"_id": @"id", @"name": @"name", @"price": @"price", @"quantity": @"quantity", @"threshold": @"threshold", @"visible": @"visible", @"optionType": @"optionType" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"_id", @"name", @"price", @"quantity", @"threshold", @"visible", @"optionType"];
  return [optionalProperties containsObject:propertyName];
}

@end
