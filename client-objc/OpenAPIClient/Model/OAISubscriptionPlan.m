#import "OAISubscriptionPlan.h"

@implementation OAISubscriptionPlan

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"_id": @"id", @"active": @"active", @"valid": @"valid", @"name": @"name", @"_description": @"description", @"options": @"options", @"price": @"price", @"promo": @"promo", @"transactionFee": @"transactionFee", @"role": @"role", @"defaultPlan": @"defaultPlan", @"visible": @"visible", @"image": @"image" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"_id", @"active", @"valid", @"name", @"_description", @"options", @"price", @"promo", @"transactionFee", @"role", @"defaultPlan", @"visible", @"image"];
  return [optionalProperties containsObject:propertyName];
}

@end
