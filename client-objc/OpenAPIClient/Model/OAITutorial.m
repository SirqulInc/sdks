#import "OAITutorial.h"

@implementation OAITutorial

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"_id": @"id", @"active": @"active", @"valid": @"valid", @"name": @"name", @"_description": @"description", @"alignment": @"alignment", @"image": @"image", @"orderIndex": @"orderIndex", @"tutorialObjectType": @"tutorialObjectType" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"_id", @"active", @"valid", @"name", @"_description", @"alignment", @"image", @"orderIndex", @"tutorialObjectType"];
  return [optionalProperties containsObject:propertyName];
}

@end
