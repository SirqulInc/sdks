#import "OAIEmployeeResponse.h"

@implementation OAIEmployeeResponse

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"accountId": @"accountId", @"locationDisplay": @"locationDisplay", @"display": @"display", @"username": @"username", @"accountType": @"accountType", @"profileImage": @"profileImage", @"gender": @"gender", @"contactEmail": @"contactEmail", @"contact": @"contact", @"manager": @"manager", @"active": @"active", @"locations": @"locations", @"hasDelegateAccess": @"hasDelegateAccess", @"latitude": @"latitude", @"longitude": @"longitude", @"locationLastUpdated": @"locationLastUpdated", @"locationCount": @"locationCount" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"accountId", @"locationDisplay", @"display", @"username", @"accountType", @"profileImage", @"gender", @"contactEmail", @"contact", @"manager", @"active", @"locations", @"hasDelegateAccess", @"latitude", @"longitude", @"locationLastUpdated", @"locationCount"];
  return [optionalProperties containsObject:propertyName];
}

@end
