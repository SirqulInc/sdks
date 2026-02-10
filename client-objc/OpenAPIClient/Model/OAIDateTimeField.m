#import "OAIDateTimeField.h"

@implementation OAIDateTimeField

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"name": @"name", @"type": @"type", @"supported": @"supported", @"minimumValue": @"minimumValue", @"maximumValue": @"maximumValue", @"durationField": @"durationField", @"leapDurationField": @"leapDurationField", @"rangeDurationField": @"rangeDurationField", @"lenient": @"lenient" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"name", @"type", @"supported", @"minimumValue", @"maximumValue", @"durationField", @"leapDurationField", @"rangeDurationField", @"lenient"];
  return [optionalProperties containsObject:propertyName];
}

@end
