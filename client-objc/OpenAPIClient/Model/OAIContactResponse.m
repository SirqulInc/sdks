#import "OAIContactResponse.h"

@implementation OAIContactResponse

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"firstName": @"firstName", @"middleName": @"middleName", @"lastName": @"lastName", @"prefix": @"prefix", @"suffix": @"suffix", @"title": @"title", @"contactInfo": @"contactInfo" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"firstName", @"middleName", @"lastName", @"prefix", @"suffix", @"title", @"contactInfo"];
  return [optionalProperties containsObject:propertyName];
}

@end
