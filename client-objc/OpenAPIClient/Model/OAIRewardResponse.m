#import "OAIRewardResponse.h"

@implementation OAIRewardResponse

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"offerId": @"offerId", @"title": @"title", @"subTitle": @"subTitle", @"details": @"details", @"artwork": @"artwork", @"finePrint": @"finePrint", @"redemptionCode": @"redemptionCode", @"redemptionStatus": @"redemptionStatus", @"transactionId": @"transactionId", @"estimatedValue": @"estimatedValue" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"offerId", @"title", @"subTitle", @"details", @"artwork", @"finePrint", @"redemptionCode", @"redemptionStatus", @"transactionId", @"estimatedValue"];
  return [optionalProperties containsObject:propertyName];
}

@end
