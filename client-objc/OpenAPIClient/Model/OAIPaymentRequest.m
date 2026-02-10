#import "OAIPaymentRequest.h"

@implementation OAIPaymentRequest

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"appKey": @"appKey", @"clientPaymentId": @"clientPaymentId", @"minAgeYears": @"minAgeYears", @"invoice": @"invoice", @"biometrics": @"biometrics", @"orderItems": @"orderItems", @"acceptedBilling": @"acceptedBilling" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"appKey", @"clientPaymentId", @"minAgeYears", @"invoice", @"biometrics", @"orderItems", @"acceptedBilling"];
  return [optionalProperties containsObject:propertyName];
}

@end
