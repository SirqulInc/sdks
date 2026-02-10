#import "OAIQueueResponse.h"

@implementation OAIQueueResponse

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"queueId": @"queueId", @"name": @"name", @"host": @"host", @"port": @"port", @"username": @"username", @"password": @"password", @"virtualHost": @"virtualHost", @"workers": @"workers", @"exchanger": @"exchanger", @"exchangerType": @"exchangerType", @"handleDelivery": @"handleDelivery", @"dataMapping": @"dataMapping", @"analyticTags": @"analyticTags" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"queueId", @"name", @"host", @"port", @"username", @"password", @"virtualHost", @"workers", @"exchanger", @"exchangerType", @"handleDelivery", @"dataMapping", @"analyticTags"];
  return [optionalProperties containsObject:propertyName];
}

@end
