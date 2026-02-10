#import "OAIAddress.h"

@implementation OAIAddress

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"streetAddress": @"streetAddress", @"streetAddress2": @"streetAddress2", @"city": @"city", @"stateCode": @"stateCode", @"state": @"state", @"postalCode": @"postalCode", @"countryCode": @"countryCode", @"country": @"country", @"display": @"display" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"streetAddress", @"streetAddress2", @"city", @"stateCode", @"state", @"postalCode", @"countryCode", @"country", @"display"];
  return [optionalProperties containsObject:propertyName];
}

@end
