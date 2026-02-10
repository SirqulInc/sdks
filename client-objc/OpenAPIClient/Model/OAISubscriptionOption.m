#import "OAISubscriptionOption.h"

@implementation OAISubscriptionOption

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"_id": @"id", @"active": @"active", @"valid": @"valid", @"name": @"name", @"price": @"price", @"quantity": @"quantity", @"threshold": @"threshold", @"visible": @"visible", @"optionType": @"optionType", @"offerType": @"offerType" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"_id", @"active", @"valid", @"name", @"price", @"quantity", @"threshold", @"visible", @"optionType", @"offerType"];
  return [optionalProperties containsObject:propertyName];
}

@end
