#import "OAIBidResponse.h"

@implementation OAIBidResponse

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"bidId": @"bidId", @"biddableType": @"biddableType", @"biddableId": @"biddableId", @"amountPerView": @"amountPerView", @"amountPerAction": @"amountPerAction", @"currentDailyBudget": @"currentDailyBudget", @"currentBudget": @"currentBudget", @"currentBudgetExpiration": @"currentBudgetExpiration", @"currentBudgetStart": @"currentBudgetStart", @"budgetAmount": @"budgetAmount", @"budgetSchedule": @"budgetSchedule" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"bidId", @"biddableType", @"biddableId", @"amountPerView", @"amountPerAction", @"currentDailyBudget", @"currentBudget", @"currentBudgetExpiration", @"currentBudgetStart", @"budgetAmount", @"budgetSchedule"];
  return [optionalProperties containsObject:propertyName];
}

@end
