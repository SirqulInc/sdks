#import "OAIRuleResponse.h"

@implementation OAIRuleResponse

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"ruleId": @"ruleId", @"title": @"title", @"_description": @"description", @"ruleTypeId": @"ruleTypeId", @"ruleTypeTitle": @"ruleTypeTitle", @"ruleTypeDescription": @"ruleTypeDescription", @"ruleValueType": @"ruleValueType", @"ruleValue": @"ruleValue" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"ruleId", @"title", @"_description", @"ruleTypeId", @"ruleTypeTitle", @"ruleTypeDescription", @"ruleValueType", @"ruleValue"];
  return [optionalProperties containsObject:propertyName];
}

@end
