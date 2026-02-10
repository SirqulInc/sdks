#import "OAIMissionFormatResponse.h"

@implementation OAIMissionFormatResponse

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"missionFormatId": @"missionFormatId", @"formatType": @"formatType", @"active": @"active", @"name": @"name", @"_description": @"description", @"format": @"format", @"suffix": @"suffix" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"missionFormatId", @"formatType", @"active", @"name", @"_description", @"format", @"suffix"];
  return [optionalProperties containsObject:propertyName];
}

@end
