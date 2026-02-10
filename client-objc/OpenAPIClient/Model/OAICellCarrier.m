#import "OAICellCarrier.h"

@implementation OAICellCarrier

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"_id": @"id", @"active": @"active", @"valid": @"valid", @"uid": @"uid", @"display": @"display", @"emailFormat": @"emailFormat", @"apiUrl": @"apiUrl", @"authUrl": @"authUrl", @"shortCode": @"shortCode", @"clientId": @"clientId", @"clientSecret": @"clientSecret" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"_id", @"active", @"valid", @"uid", @"display", @"emailFormat", @"apiUrl", @"authUrl", @"shortCode", @"clientId", @"clientSecret"];
  return [optionalProperties containsObject:propertyName];
}

@end
